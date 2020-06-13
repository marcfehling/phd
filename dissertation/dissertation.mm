<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Parallel hp-adaptive generic FEM codes" FOLDED="false" ID="ID_1439750016" CREATED="1562918672514" MODIFIED="1562919602372" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="4" RULE="ON_BRANCH_CREATION"/>
<node TEXT="1.) Introduction" POSITION="right" ID="ID_633932609" CREATED="1562918684868" MODIFIED="1562918712791">
<edge COLOR="#ff0000"/>
<node TEXT="REF: parallel &amp; hp paper" ID="ID_1515963365" CREATED="1562919323295" MODIFIED="1562919333728"/>
<node TEXT="FECollection etc" ID="ID_1299013075" CREATED="1562933773573" MODIFIED="1562933783897"/>
</node>
<node TEXT="2.) Algorithms for parallel hp-adaptive FEM" POSITION="left" ID="ID_544924609" CREATED="1562918692409" MODIFIED="1562919194410">
<edge COLOR="#0000ff"/>
<node TEXT="transferring data across meshes" ID="ID_265945119" CREATED="1562918826595" MODIFIED="1562918920272">
<node TEXT="prepare data on old mesh to be available on new one" ID="ID_693997076" CREATED="1562918885279" MODIFIED="1562918940815"/>
</node>
<node TEXT="2.1) enumeration of degrees of freedom" ID="ID_1458955940" CREATED="1562919012918" MODIFIED="1562919236879">
<node TEXT="Contraints? It would be easy, but&#xa;- require more memory to be allocated&#xa;- makes debugging easier, when in accordance with sequential results" ID="ID_1973802196" CREATED="1562953774463" MODIFIED="1562953821915"/>
<node TEXT="REF: parallel paper" ID="ID_1066856019" CREATED="1562919304100" MODIFIED="1562919315101"/>
</node>
<node TEXT="2.2) data transfer between processors" ID="ID_39762330" CREATED="1562918787521" MODIFIED="1562919257815">
<node TEXT="2.2.1) performing data transfer" ID="ID_1262531799" CREATED="1562919041916" MODIFIED="1562919078807">
<node TEXT="state of the art: REF parallel paper. briefly describe workflow" ID="ID_186413248" CREATED="1562933728583" MODIFIED="1562933747083"/>
<node TEXT="new p4est functionality" ID="ID_1914577498" CREATED="1562918875831" MODIFIED="1562918880892"/>
<node TEXT="Since data is transferred per cell, build buffer per cell" ID="ID_1383986070" CREATED="1562919443859" MODIFIED="1562919467535"/>
<node TEXT="via callback" ID="ID_333951754" CREATED="1562919474280" MODIFIED="1562919477074"/>
<node TEXT="Send veriable data sizes per cell via fixed size transfer" ID="ID_1275826386" CREATED="1562934455491" MODIFIED="1562934471981"/>
<node TEXT="REF: Burstedde2018" ID="ID_1454538957" CREATED="1562919671331" MODIFIED="1562919682299"/>
<node TEXT="GIT: #???, PR in p4est git repo?" ID="ID_1246916975" CREATED="1562919503820" MODIFIED="1562919745903"/>
</node>
<node TEXT="2.2.2) requirements for data transfer" ID="ID_1406328779" CREATED="1562919054185" MODIFIED="1562919064412">
<node TEXT="We need to" ID="ID_521045631" CREATED="1562918994191" MODIFIED="1562919001668"/>
<node TEXT="GIT: #???" ID="ID_277781197" CREATED="1562919514338" MODIFIED="1562919515103"/>
</node>
<node TEXT="2.2.3) Interface for others?" ID="ID_269293854" CREATED="1562919375152" MODIFIED="1562934756675">
<node TEXT="in serial case, old solution still available&#xa;in parallel case, responsibilites change, need to prepare solution accordingly" ID="ID_1386444591" CREATED="1562919399310" MODIFIED="1562919438245"/>
<node TEXT="solution transfer -&gt; 3.1" ID="ID_1429575622" CREATED="1562919392052" MODIFIED="1562934731937"/>
<node TEXT="celldatatransfer -&gt; 3.1" ID="ID_481138534" CREATED="1562919393472" MODIFIED="1562934736184"/>
<node TEXT="provide callback functions" ID="ID_1991430509" CREATED="1562919485133" MODIFIED="1562919490913"/>
<node TEXT="GIT: #???" ID="ID_1901850792" CREATED="1562919517100" MODIFIED="1562919517738"/>
</node>
</node>
<node TEXT="2.3) load balancing" ID="ID_1108252897" CREATED="1562919095178" MODIFIED="1562919102452">
<node TEXT="For parallel non-adaptive algorithms, amount of work per cell stays constant / roughly the same during assembly of the linear equation system as well as solving. We may determine load right in the beginning by assigning the same amount of cell" ID="ID_247486658" CREATED="1562919928744" MODIFIED="1562920199960"/>
<node TEXT="For parallel h-adaptive codes, amount of work still same, but number of cells and thus the total workload per processor will change. We need to assign the equal amount of cells" ID="ID_619426911" CREATED="1562919957621" MODIFIED="1562920148508"/>
<node TEXT="For parallel p-adaptive codes, the amount of work differs per cell. Combined with h-adaptive methods," ID="ID_67834787" CREATED="1562920040812" MODIFIED="1562920083786"/>
<node TEXT="Grafik: Baumstruktur. Molten Kurve. Bl&#xe4;tter werden aufgeteilt. (Referenz auf Vortrag von Burstedde??? - vllt finde ich was)" ID="ID_1366397762" CREATED="1562920201910" MODIFIED="1562920250491"/>
<node TEXT="p::d::CellWeights" ID="ID_1911553506" CREATED="1562919524679" MODIFIED="1562919534341"/>
<node TEXT="GIT: #???" ID="ID_687676976" CREATED="1562919522028" MODIFIED="1562919523807"/>
</node>
</node>
<node TEXT="3.) Dynamic hp-adaptive FEM" POSITION="right" ID="ID_1496622597" CREATED="1562918725818" MODIFIED="1562919209431">
<edge COLOR="#00ff00"/>
<node TEXT="Static methods vs Dynamic methods" ID="ID_1219620198" CREATED="1562919111110" MODIFIED="1562933468961">
<node TEXT="Time-dependent problems" ID="ID_1124761638" CREATED="1562933472507" MODIFIED="1562933484407"/>
</node>
<node TEXT="3.1) Transfer across meshes" ID="ID_483166537" CREATED="1562934393016" MODIFIED="1562934401811">
<node TEXT="3.1.1) Transfer of active fe indices" ID="ID_1660179905" CREATED="1562933489709" MODIFIED="1562934435636">
<node TEXT="sequential: old solution globally available, just store active fe index" ID="ID_826255549" CREATED="1562933505080" MODIFIED="1562933541057"/>
<node TEXT="parallel: old solution on newly assigned cells not available per se. in case of coarsening, we need data from all children on parent cell that became active. we know which cells will be coarsened, so we prepare all data for this new cell on the old mesh." ID="ID_1401630426" CREATED="1562933541393" MODIFIED="1562933705745">
<node TEXT="we need to know which fe will be assigned to it beforehand -&gt; introducing future finite elements" ID="ID_637653690" CREATED="1562933707551" MODIFIED="1562933765792"/>
</node>
<node TEXT="" ID="ID_335907926" CREATED="1562933632150" MODIFIED="1562933632150"/>
</node>
<node TEXT="3.1.2) Transfer of data" ID="ID_1171392133" CREATED="1562934412865" MODIFIED="1562934424350">
<node TEXT="SolutionTransfer" ID="ID_788891092" CREATED="1562934439066" MODIFIED="1562934445689"/>
</node>
</node>
<node TEXT="3.2) a priori estimation" ID="ID_1690872513" CREATED="1562919120178" MODIFIED="1562933847055">
<node TEXT="3.2.1) error estimation" ID="ID_1180641331" CREATED="1562933850271" MODIFIED="1562933855838">
<node TEXT="Kelly" ID="ID_1672767532" CREATED="1562934009119" MODIFIED="1562934017259"/>
</node>
<node TEXT="3.2.2) smoothness estimation" ID="ID_1534620279" CREATED="1562933856187" MODIFIED="1562933864742">
<node TEXT="maybe use this result for both threshold &amp; regularity decision" ID="ID_1153201020" CREATED="1562934089508" MODIFIED="1562934106655"/>
</node>
<node TEXT="3.2.3) error prediction" ID="ID_967886514" CREATED="1562933864957" MODIFIED="1562933871800"/>
</node>
<node TEXT="3.3) decision algorithms" ID="ID_1359868310" CREATED="1562919126715" MODIFIED="1562934002647">
<node TEXT="3.3.1) threshold" ID="ID_482575497" CREATED="1562933887133" MODIFIED="1562933907219">
<node TEXT="start with Kelly for error estimation, i.e. fixed number / fixed fraction" ID="ID_567006083" CREATED="1562934027314" MODIFIED="1562934324168"/>
<node TEXT="explain that we could do this for p as well, then move to algorithm of step-27" ID="ID_1072720884" CREATED="1562934119096" MODIFIED="1562934353978"/>
</node>
<node TEXT="3.3.2) regularity" ID="ID_553054937" CREATED="1562933893409" MODIFIED="1562933993779">
<node TEXT="coeff decay - Fourier &amp; Legendre" ID="ID_1277391006" CREATED="1562934054556" MODIFIED="1562934370065"/>
</node>
<node TEXT="3.3.3) prediction" ID="ID_671295131" CREATED="1562933993967" MODIFIED="1562933999330">
<node TEXT="Melenk" ID="ID_1110243086" CREATED="1562934376970" MODIFIED="1562934378789"/>
<node TEXT="NO: we could also refine the grid, solve the solution on it and see how  the actual error behaves in the end. this would be very resource heavy, since it involves solving the equation system multiple times. This is what Ainsworth did!" ID="ID_1157022042" CREATED="1564029676049" MODIFIED="1564032378489"/>
</node>
</node>
</node>
<node TEXT="4.) Application example: Poisson" POSITION="left" ID="ID_164271917" CREATED="1562918755317" MODIFIED="1562918779672">
<edge COLOR="#ff00ff"/>
<node TEXT="GIT: #????" ID="ID_1491629095" CREATED="1562919541021" MODIFIED="1562919548396"/>
<node TEXT="REF: step-27 &amp; step-40" ID="ID_1749906070" CREATED="1562919359015" MODIFIED="1562919363974"/>
</node>
</node>
</map>
