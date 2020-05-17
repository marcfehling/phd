#!/usr/bin/env python

import sys
import os

import numpy as np
import vtk
from vtk.util.numpy_support import vtk_to_numpy


# User input
assert len(sys.argv) == 2, "Please provide a .vtu or .pvtu file!"
filename = sys.argv[1]
filestem, fileext = os.path.splitext(filename)



# Import VTK for numpy
#   see: https://perso.univ-rennes1.fr/pierre.navaro/read-vtk-with-python.html

# Read the file
if fileext == ".vtu":
  reader = vtk.vtkXMLUnstructuredGridReader()
elif fileext == ".pvtu":
  reader = vtk.vtkXMLPUnstructuredGridReader()
else:
  assert False, "Please provide a .vtu or .pvtu file!"
reader.SetFileName(filename)
reader.Update()
data = reader.GetOutput()


# Points
points = data.GetPoints()
npoints = points.GetNumberOfPoints()
print("Number of points:", npoints)
x = vtk_to_numpy(points.GetData())


# Quadrilateral cells
cells = vtk_to_numpy(data.GetCells().GetData())
ncells = cells.size//5  # number of quadrilateral cells
print("Number of cells:", ncells)
quads = np.take(cells,[n for n in range(cells.size) if n%5 != 0]).reshape(ncells,4)


# Field values
n_arrays = reader.GetNumberOfPointArrays()
for i in range(n_arrays):
  print(i, reader.GetPointArrayName(i))

pointdata = vtk_to_numpy(data.GetPointData().GetArray(
  int(input("Choose point array: "))
))
print("Number of data points:", pointdata.size)



# Write out data for patch plots with pgfplots.
# Use '_data.dat' as data table and '_quad.dat' as patch table.
#   see: Package PGFPLOTS manual '4.16.3 Patch Plots'
#
# table = np.hstack( (x[:,:2], np.array([pointdata]).transpose()) )
# np.savetxt(filestem + "_data.dat", table,
#            comments='', header="x y c", newline="\\\\\n")
# np.savetxt(filestem + "_quads.dat", quads,
#            comments='', newline="\\\\\n")



# Plot numpy quadmesh in matplotlib
#   see: https://stackoverflow.com/questions/52202014/how-can-i-plot-2d-fem-results-using-matplotlib

import matplotlib.pyplot as plt
import matplotlib.collections

def quatplot(y,z, quatrangles, pointvalues, ax=None, **kwargs):
  if not ax: ax=plt.gca()
  yz = np.c_[y,z]
  verts= yz[quatrangles]
  pc = matplotlib.collections.PolyCollection(verts, **kwargs)
  
  pointvalues_sorted = pointvalues[quatrangles]
  for values in pointvalues_sorted: # verify that all values are the same
    assert(np.count_nonzero(values == values[0]) == len(values))
  cellvalues = np.array([values[0] for values in pointvalues_sorted])
  pc.set_array(cellvalues)
  
  ax.add_collection(pc)
  ax.autoscale()
  return pc



fig, ax = plt.subplots()
ax.axis('off')
ax.set_aspect('equal')

pc = quatplot(x[:,0], x[:,1], quads, pointdata, ax=ax,
              edgecolor="black", linewidth=0.01,
              cmap="Paired")
              # cmap="OrRd")
plt.margins(0,0) # remove whitespace
# pc.set_clim(2,7) # colormap limits
plt.savefig(filestem + ".pdf", bbox_inches='tight', pad_inches = 0)
