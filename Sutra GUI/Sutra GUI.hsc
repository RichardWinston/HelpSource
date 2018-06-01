HelpScribble project file.
16
_vpuneq O. dvafgba-050Q35
0
2
SUTRA GUI



TRUE

C:\PROGRA~1\JGsoft\HELPSC~1\SUTRAG~1,D:\PROGRA~1\Jgsoft\HELPSC~1\SUTRAG~1,D:\Program Files\JGsoft\HelpScribble\Sutra GUI
1
BrowseButtons()
0
FALSE

FALSE
TRUE
16777215
0
16711680
8388736
255
TRUE
TRUE
TRUE
TRUE
150
50
600
500
TRUE
FALSE
1
FALSE
FALSE
Contents
%s Contents
Index
%s Index
Previous
Next
FALSE

387
1
Scribble1
Introduction



general:000010
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Introduction\cf2\b0\f1\fs24 
\par 
\par \pard\li720\sb120\cf0\i\f2 Note: Some sections of this document, particularly those dealing with two-dimensional models are extracted from Voss and others (1997) and are presented here with only minor modifications. 
\par \pard\fi720\sb240\i0 The numerical model is a modern tool of the hydrologist involved in practical or theoretical evaluation of subsurface flow and transport processes.  Numerical models cannot be considered as exact representations of the real world because the complexity of natural hydrogeologic systems is not easily captured in a discrete model representation.  The strongest application of numerical modeling is to test hypotheses concerning the major hydrogeologic controls on subsurface system behavior.  The most popular use of numerical models is to predict the response of subsurface systems to applied stresses.  Both of these uses often are time consuming because numerical models have complex data requirements, and it is rarely practical for hydrologists to carry out thorough analyses.  Application of numerical models and the modeling process itself can be facilitated by the development and use of graphical user interfaces (GUIs) that can manage and synthesize geospatial information and simulation control parameters, create meshes and other formatted input data for the numerical models, and display the simulation results. 
\par \pard\fi720\sb120 This report describes a GUI developed for SUTRA, a U.S. Geological Survey (USGS) two-dimensional (2D) and three-dimensional (3D) finite-element model for saturated-unsaturated, variable-density ground-water flow with solute or energy transport (\cf3\strike Voss and Provost, 2002\cf4\strike0\{linkTarget=Voss02\}\cf0 ).  This GUI for SUTRA, \b SutraGUI\b0 , was developed using commercially available software developed by Argus Interware.  The Argus Interware product, known as Argus Open Numerical Environments (Argus ONE\'99), is a model-independent, programmable system with geographic information system (GIS) functionality that includes automated gridding and meshing capabilities for synthesizing geospatial information and linking it with finite-difference and finite-element discretizations.  The programmable nature of Argus ONE allows geospatial information and simulation control parameters to be exported to ASCII files that can be read by a numerical model, which in this case is SUTRA.
\par Attributes of Argus ONE make it particularly flexible for model developers.  Argus ONE allows externally developed Plug-In Extensions (PIEs) (executable codes loaded into the memory of Argus ONE at run time) that appear as an integral part of the Argus ONE user environment.  PIEs may be developed independently by users (Argus Interware, 1997) and are similar in use to user-programmed macros for common spreadsheet and word-processing software.  For example, PIEs can be developed for purposes such as spatial interpolation, grid and mesh generation, geostatistics, and control of model pre- and post-processing.  In addition, Argus ONE allows users to import geospatial information from other GIS-type applications to provide compatibility with existing user projects.  For \b SutraGUI\b0 , the PIE provides, among other utilities, a dialog box for entry of certain input data and a means of using the 2D Argus ONE technology to generate input data for both 2D and 3D SUTRA models.
\par \b SutraGUI \b0 consists of a public domain, freely available PIE that must be used in conjunction with the Argus ONE commercial package.  Together, these codes provide a fully functioning graphical pre- and post-processor for 2D simulation, and a preprocessor for 3D simulation.  Other software provides post-processing for 3D models (\cf3\strike Souza, 1999\cf4\strike0\{linkTarget=Souza\}\cf0 ; \cf3\strike Hsieh and Winston, 2002\cf4\strike0\{linkTarget=Hsieh\}\cf0 ).  These codes significantly reduce the time and effort required to use SUTRA as a hydrologic tool.  In addition, the advanced user may apply programmable features within Argus ONE to extend or modify SutraGUI to meet the unique demands of any modeling project.  
\par This report is a description of the use of SutraGUI and is not intended as a description of the programming used to develop the PIE.  It is assumed herein that the reader has knowledge of the basic data requirements and underlying principles for using the USGS SUTRA code.  \cf3\strike Voss and Provost (2002)\cf4\strike0\{linkTarget=Voss02\}\cf0  provide thorough discussions of the principles underlying SUTRA and its application to hydrologic problems.  Moreover, it is assumed that the reader has knowledge of the general attributes and use of Argus ONE.  Information about Argus ONE can be obtained from the Argus ONE User's Guide (\cf3\strike Argus Interware, 1997\cf4\strike0\{linkTarget=ArgusInterware\}\cf0 ) and the World-Wide Web site for Argus Interware (\cf1\strike\f3\fs20 http://www.argusint.com\cf4\strike0\{link=*! ExecFile("http://www.argusint.com")\}\cf0\f2\fs24 ), from which a demonstration version and documentation may be downloaded.
\par \pard\li720\sb120\i Note: Users should familiarize themselves with the Argus ONE User's Guide (\cf3 Argus Interware, 1997\cf4\{linkTarget=ArgusInterware\}\cf0 ) before attempting to use SutraGUI.  In particular, users should be familiar with chapters 2 and 3, pages 91-162.\cf2\i0\f1 
\par }
2
Scribble2
Conventions



general:000020
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Courier New;}{\f4\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Conventions\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Menu items, dialog boxes, and other features that are part of Argus ONE rather than a plug-in extension (PIE) are shown in \i italics.\i0   Menu items, dialog boxes, and other features that are part of the \b SutraGUI\b0 , the \cf1\b\strike Utility PIE\cf3\b0\strike0\f3\fs20\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/Utility/Utility.html")\}\cf0\b\f2\fs24  \b0 (\cf4\strike Winston, 2001\cf3\strike0\{linkTarget=Winston01\}\cf0 ), \cf1\b\strike GW_Chart\cf3\b0\strike0\f3\fs20\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/GW_Chart/GW_Chart.html")\}\cf0\b\f2\fs24  \b0 (\cf4\strike Winston, 2000\cf3\strike0\{linkTarget=Winston00\}\cf0 ), or \cf1\b\strike Model Viewer\cf3\b0\strike0\f3\fs20\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/modelviewer/ModelViewer.html")\}\cf0\f2\fs24  (\cf4\strike Hsieh and Winston, 2002\cf3\strike0\{linkTarget=Hsieh\}\cf0 ) are shown in \b bold\b0 .  If there are a series of menu and submenu items that must be chosen in succession, each menu item is separated from the next by a vertical line (\b |\b0 ).  Thus choosing the \b Quit\b0  submenu item from the \b File \b0 menu is written as \b File|Quit\b0 .
\par \pard\fi700\sb120\cf2\f1 In Argus ONE, "Layers" are a series of GIS coverages or maps.  Layers can have "Parameters" that represent the type of data that is specified in the Layer.  Layer names and parameter names are shown in bold.  If part of a layer name is sometimes absent, the part that is sometimes absent is included in parentheses.  If there are two different versions of a layer name, the two different versions are separated by a slash (/) mark.  If a layer name has a number after it to designate a particular unit, the number is included in square brackets.
\par \pard\fi700 An example of a layer including all these options is \b (Top/Bottom) Sources of Solute / Energy (Unit[i])\b0 .  For two-dimensional (2D) models using solute transport, the name of this layer would be \b Sources of Solute\b0 .  In two-dimensional models using energy transport, it would be called \b Sources of Energy\b0 .  In three-dimensional (3D) models, the name of the layer is followed by \b Unit[i]\b0 , where i represents the number of the unit.  For the second unit, i=2, and the name of the unit would be followed by \b Unit2\b0 .  In the uppermost unit, there can be one such layer for the top of the unit and another for the bottom of the unit.  These two layers would be \b Top Sources of Solute Unit1\b0  and \b Bottom Sources of Solute Unit1\b0 , \cf0\f4 respectively.\f2 
\par \pard\cf2\f1 
\par }
3
Scribble3
Installation



general:000030
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Installation\cf2\b0\f1\fs24 
\par \pard\fi720\f2 
\par \cf0 Before installing \b SutraGUI\b0 , Argus ONE must be installed.  (Argus ONE  may be obtained from \cf1\strike\f3\fs20 http://www.argusint.com/\cf3\strike0\{link=*! ExecFile("http://www.argusint.com")\}\cf0\f2\fs24 .)  To install \b SutraGUI\b0  manually, download the zip file that contains \b SutraGUI\b0  and extract its contents into the Argus Interware\\ArgusPIE directory, maintaining the directory structure in the zip file.  To install \b SutraGUI\b0  with the automatic installer, download the installer and extract its contents into an empty directory.  Run Setup.exe and follow the prompts on the screen.\cf2\f1 
\par }
4
Scribble4
Basic Description of Software Use for Two-Dimensional Models



general:000040
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Basic Description of Software Use for Two-Dimensional Models\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\sa240\cf0\f2 This section provides a brief description of how the Argus ONE environment with SutraGUI is used to create and evaluate 2D numerical simulations with SUTRA.  More detail on each step may be found in subsequent sections of this report.
\par \pard\fi-360\li1080\sb120\tx1100 1.\tab After starting Argus ONE, the Argus ONE Window appears and the user begins pre-processing for SUTRA by selecting \b PIEs|New SUTRA Project\b0 .  This causes the \b SUTRA Project Information\b0  dialog box to appear.
\par 2.\tab The user then chooses the desired type of simulation problem, such as areal solute transport, cross- sectional variable-density flow with solute transport, saturated-unsaturated flow with energy transport, or other available types.  This choice determines the kinds of geospatial coverages (information layers) required for such a SUTRA simulation and automatically makes them available to the user for data entry and manipulation.
\par 3.\tab Next, the user may enter simulation control parameters (those that are not spatially-dependent in other words, 'nonspatial information', such as time-step size) in other parts of the \b SUTRA Project Information\b0  dialog box that appears on the computer screen.  Individual panes in the dialog box are selected by selecting the names of the panes on the left side of the dialog box.  Upon completing data entry or editing of these values, the user closes the dialog box and returns to the Argus ONE window. 
\par 4.\tab The user should then modify the default information in any geospatial information layer, by manually drawing closed or open contours, or points to represent the desired spatial distributions of hydrogeologic and hydrologic parameters, sources, sinks, boundary conditions, and a desired distribution of finite-element mesh density.  As an alternative to drawing, any of these spatial distributions may be directly imported from other applications that can generate text files, DXF (AutoCAD\'99 format) files, or Shape (ArcView\'99 format) files.
\par 5.\tab Next, the user creates the finite-element mesh using commands built into Argus ONE or provided by the \b SutraGUI\b0 .  Two mesh types are available, a general irregularly-connected mesh of quadrilaterals (normally provided in Argus ONE), and a "fishnet mesh" of regularly connected quadrilaterals (provided by \b SutraGUI\b0 ).  Before finally proceeding to run SUTRA, the user may modify any of the spatial or nonspatial information that has already been input.
\par 6.\tab The user then selects the \b SUTRA Mesh\b0  layer, and from the menu PIEs, proceeds to export the geospatial and nonspatial information, at which time Argus ONE writes out the standard input- data files for SUTRA to the selected directory and runs the SUTRA simulation.  When the simulation is complete, the user may choose to plot any of the simulation results within Argus ONE in a post-processing step provided by \b SutraGUI\b0  for 2D problems, or the plot is done externally for 3D problems using \b SutraPlot\b0  (\cf3\strike Souza, 1999\cf4\strike0\{linkTarget=Souza\}\cf0 ) or \b Model Viewer\b0  (\cf3\strike Hsieh and Winston, 2002\cf4\strike0\{linkTarget=Hsieh\}\cf0 ).
\par \pard\fi720\sb120 
\par \pard\fi720 The power of the GUI approach in hydrogeologic hypothesis testing and practical modeling should be apparent to any experienced modeler at this point.  The user can return to any type of spatial information already input to the SUTRA-Argus ONE environment, make major modifications to it or the finite- element mesh, re-export from Argus ONE, run SUTRA, and graphically evaluate results of new simula\-tions.  Each cycle of changing information, running SUTRA, and inspecting results, can take as little as a few minutes depending on the number of model nodes and the speed of the computer. 
\par }
5
Scribble5
Starting Argus ONE and Starting a New SUTRA Project



general:000050
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Starting Argus ONE and Starting a New SUTRA Project\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 To start Argus ONE, do any of the following:
\par \pard\fi-360\li1080\sb120\tx1100 1.\tab Double-click on the Argus ONE shortcut on the desktop.
\par 2.\tab Click on the "Start" button.  Select "Programs," then "Argus ONE," and then "Argus ONE" again.
\par 3.\tab In Windows Explorer, double-click on any existing Argus ONE project file ('filename'.mmb).
\par \pard\li720\sb120\tx1120\i 
\par \pard\fi720\i0 Argus ONE will start, load the Plug-In Extensions (PIEs), and then open either an empty generic project (options 1 or 2) or the project that was selected (option 3).  To start a new SUTRA project, select \b PIEs|New SUTRA Project\b0 .  The \b SUTRA Project Information\b0  dialog box will appear.  The user specifies nonspatial information about the project in the \b SUTRA Project Information\b0  dialog box.  When the \b OK \b0 button is clicked, the \b SUTRA Project Information \b0 dialog box will close and the layer structure for the SUTRA project will be established.  The Argus ONE layer structure is where all spatial data in the model are entered.\cf2\f1 
\par }
7
Scribble7
Accessing Online Help



general:000060
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Accessing Online Help\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The online help is the primary documentation for \b SutraGUI\b0 .  The online help for \b SutraGUI \b0 can be accessed in several ways.
\par \pard\fi-360\li1080\sb120\tx1100 1\tab Locate the file SutraGUI.hlp in the directory in which \b SutraGUI \b0 is installed and double-click on it inside Windows Explorer.
\par 2\tab Start Argus ONE, start a new SUTRA project, and select the \b PIEs|SUTRA Help\b0  menu item.
\par 3\tab In most dialog boxes provided by \b SutraGUI\b0 , there is a button labeled \b Help\b0 .  Click on such buttons to access the online help.
\par 4\tab In many dialog boxes provided by \b SutraGUI\b0 , there will be a "?" icon in the upper right-hand corner.  The online help can be accessed by clicking on the icon and then clicking on one of the controls in the dialog box.
\par \pard\fi-360\li1080\tx1100 5\tab In dialog boxes provided by \b SutraGUI\b0 , select a control and press the F1 button on the keyboard.
\par \pard\cf2\f1 
\par }
8
Scribble8
Acknowledgments



general:000070
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Acknowledgments\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The authors wish to thank Allen Shapiro, Elena Abarca, and Dorothy Tepper for their extremely helpful reviews of this document and Argus Interware for the modifications they made in Argus ONE that made this software possible.  The authors also wish to thank the numerous individuals who have participated in testing this software and providing feedback on it.\f2 
\par \pard\fi720\f1 
\par }
10
Scribble10
Basic concepts in the SutraGUI



general:000080
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Basic concepts in the SutraGUI
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The hydrogeological properties of an area and their distribution in two or three dimensions are represented in Argus ONE as a set of 2D maps.  These are referred to as "\i Information layers\i0 ."  In GIS applications, these are referred to as 'coverages'.  The specific layers created by \b SutraGUI \b0 are described in the section, "Layer Descriptions."  Associated with most layers is a set of one or more parameters.  These parameters represent the data associated with the 2D-space associated with the layer.  Each parameter has an "\i Expression\i0 " associated with it.  \i Expressions \i0 in Argus ONE provide a default (or 'background') value for a parameter that may be based on mathematical operations on data stored elsewhere in the data file.  A layer may contain one or more \i contours \i0 that represent the location of data.  A \i contour \i0 may be a single point (\i point contour\i0 ), a series of connected points (\i open contour\i0 ) or a polygon (\i closed contour\i0 ).  For each contour on a layer, the user may assign a value for each parameter.  The value of a parameter at any specific point will depend on the contours on the layer, the values assigned to the parameters for those contours, the default expression for the parameter, and the \i Interpretation \i0 method for the layer.  Interpretation methods can be \i Nearest\i0 , \i Exact\i0 , or a variety of \i Interpolation \i0 methods as described in the Argus ONE User's Guide (\cf2\strike Argus Interware, Inc., 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).
\par As an example, consider the \cf2\b\strike Hydraulic Conductivity\cf3\strike0\{linkID=1530\} \cf0\b0 layer.  In 2D models, it has three parameters: \cf2\b\strike maximum\cf3\strike0\{linkID=1540\}\cf0\b0 , \cf2\b\strike minimum\cf3\strike0\{linkID=1560\}\cf0\b0 , and \cf2\b\strike angle_of_max_to_x_axis\cf3\strike0\{linkID=1570\}\cf0\b0 .  The default \i Expressions \i0 for them are simply values, 1.0E-3, 1.0E-3, and 0, respectively.  By default, the interpretation method for the layer is \i Nearest\i0 .  If the interpretation method is changed to \i Exact\i0 , a closed contour is drawn, and the \cf2\b\strike maximum\cf3\strike0\{linkID=1540\}\cf0\b0  parameter is assigned a value of 2.0E-3.  The maximum hydraulic conductivity inside the contour will be 2.0E-3, whereas outside the contour it will be 1.0E-3.
\par Separation of the underlying physical information from the simulation model provides a powerful hydrogeologic tool.  The GIS coverages (\i Information \i0 layers) may be used interchangeably for any simulation model coupled with Argus ONE.  For example, if a \i Data \i0 layer is used to specify the distribution of hydraulic conductivity in the \b SutraGUI\b0 , the data points in that layer could be exported to a text file and then imported into a MODFLOW model created with the MODFLOW GUI (\cf2\strike Winston, 2000\cf3\strike0\{linkTarget=Winston00\}\cf0 ).
\par In addition to \i Information \i0 layers, \i Data \i0 layers may be used to store point data.  The main differences between Data layers and \i Information \i0 layers are that, in \i Data \i0 layers: (1) only point data can be used; (2) only real-number data, not integers or other data types, can be used; (3) \i Expressions \i0 cannot be used to set the value of a data point; and (4) only interpolation methods can be used on the point data in contrast with the \i Nearest \i0 and \i Exact \i0 methods.
\par The mesh for the model is stored in a \i Quad Mesh\i0  layer.  Parameters on this layer, for the most part, represent the inputs to the SUTRA model as determined by an interpretation of the \i Information \i0 and \i Data \i0 layers. \f2 
\par \pard\fi720\f0\fs20 
\par \pard 
\par \cf2\strike\f3\fs24 Nodes, Elements and Cells\cf3\strike0\{linkID=20\}\cf2 
\par \strike Two-Dimensional Domains and Meshes in the SutraGUI\cf3\strike0\{linkID=25\}\cf2 
\par \strike Three-Dimensional Domains and Meshes in the SutraGUI\cf3\strike0\{linkID=30\}\cf2 
\par \strike Assignment of Aquifer Properties \cf3\strike0\{linkID=40\}\cf2 
\par \strike Assignment of boundary conditions  in 3D meshes\cf3\strike0\{linkID=50\}
\par \cf0 
\par }
20
Scribble20
Nodes, Elements, and Cells



general:000090
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}{\f4\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nodes, Elements, and Cells
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 In SUTRA, the region to be modeled is divided up into \b\i elements\b0\i0 .  These can be either 2D quadrilaterals (fig. 1) or 3D solids with six sides ("generalized hexahedra", fig. 2).  (Strictly speaking, the elements are not hexahedra because the faces can be curved.)  The determinant of the Jacobian matrix of all elements must be positive (Voss and Provost, 2002).  For both 2D and 3D elements, this means that no node can be displaced toward the interior of the element beyond the line or plane defined by its two or three neighboring nodes in the element.  The corners of elements are \b\i nodes\b0\i0 .  2D elements have four nodes (fig. 1) and 3D elements have eight nodes (fig. 2).  The nodes are where values for pressure, saturation, and concentration or temperature of the model are calculated by SUTRA.  Each node is associated with a region termed the \b\i cell\b0\i0 .  The cell associated with any node is made up of portions of all the neighboring elements.  Each element is divided into 4 or 8 pieces depending on whether the element is 2D (fig. 1) or 3D (fig. 2).  Each piece is assigned to its corner node as part of the cell of that node.  \f2 
\par \pard\f3 
\par   \f0\fs20 
\par \cf2\f3\fs24\{bmc 2dcells.png\}
\par \cf3\b\f4 Figure \lang1024 1\lang1033 .  Nodes, elements, and cell in a two-dimensional (2D) SUTRA mesh.\b0 
\par \cf2\f3 
\par \{bmc 3dcells.bmp\}
\par \cf3\b\f4 Figure \lang1024 2\lang1033 .  Nodes, elements, and cell in a three-dimensional (3D) SUTRA mesh.\cf2\b0\f3 
\par \cf0 
\par }
25
Scribble25
Two-Dimensional Domains and Meshes in the SutraGUI



general:000100
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Two-Dimensional Domains and Meshes in the SutraGUI\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The model domain is the spatial region that is included in the model.  A SUTRA simulation may employ either a 2D or 3D domain and mesh.  For a 2D simulation, the domain is a 2D region enclosed by a single continuous boundary.  Internally, there may be holes in the 2D region and each is enclosed by a continuous boundary.  To create a mesh, this domain or region is divided into a set of contiguous finite elements.  If a 2D mesh is used, the mesh created by Argus ONE is the same as the mesh used by SUTRA.  A 2D mesh may be either an irregular mesh or a FishNet Mesh.  An irregular mesh (\cf3\strike for example, fig. 1\cf4\strike0\{linkID=20\}\cf0 ) is the type of mesh normally created by Argus ONE and is described in the Argus ONE User's Guide (Argus Interware, 1997).  A FishNet Mesh (for example, fig. 3) consists of superblocks (large contiguous quadrilaterals) that are each subdivided into a specified number of quadrilateral finite elements, four of which are connected to each internal node.  The mesh may be considered similar to a deformed finite-difference grid.  FishNet meshes are created as described in the section of this report entitled "\cf3\strike FishNet_Mesh_Layout\cf4\strike0\{linkID=1400\}\cf0 ."  
\par 
\par \cf4\{bmc FishNet.bmp\}\cf0 
\par \b Figure \lang1024 3\lang1033 .  Example of a FishNet mesh.
\par }
30
Scribble30
Three-Dimensional Domains and Meshes in the SutraGUI



general:000110
Writing



FALSE
24
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Three-Dimensional Domains and Meshes in the SutraGUI
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\f2 For 3D problems, the X and Y coordinate plane, as viewed on the computer monitor, may be oriented in any direction in space.  However, for most problems, it is recommended that X be directed east, Y north, and Z outward from the screen, representing elevation.
\par A 3D model domain is conceptualized as comprising a stack of one or more tabular units.  Each tabular unit extends across the entire domain in either a subhorizontal or subvertical direction.  Units may represent geologic units or any other geometric features.  The top of the model domain is a curved, uneven, or flat 2D surface.  A 2D surface also defines the bottom of the unit in 3D.  The bottom of each unit also is the top of the unit below it. 
\par Most often, a tabular unit will represent a hydrogeologic unit, although this is not required.  If a unit represents a hydrogeologic unit, and the hydrogeologic unit pinches out within the model domain, the portion of the unit that is outside the area of the hydrogeologic unit should be considered part of a separate hydrogeologic unit and its properties should be consistent with the other unit in those locations.
\par Often, the user may wish to represent a unit with several layers of nodes and elements.  To do so, the user needs to specify the discretization across the unit (referred to here as the 'vertical discretization' though the direction need not be vertical).  The reader is referred to the section of this report entitled "\cf2\strike Structure in Z (3D Only)\cf3\strike0\{linkID=230\}\cf0 " on page \lang1024 29\lang1033  for instructions on how to specify the vertical discretization.  The vertical discretization represents the number of layers of elements represented by the unit.
\par Argus ONE does not provide a method for creating 3D meshes.  \b SutraGUI\b0 , therefore, creates the 3D mesh in memory each time it is needed.  \b SutraGUI \b0 uses one or more 2D meshes created by Argus ONE to represent the 3D mesh. 
\par Note: At present (2003), SUTRA requires that all 3D meshes be FishNet Meshes.  In a FishNet mesh for a 3D model, the nodes must be connected in such a way that the entire mesh can be deformed into a finite-difference grid.
\par The 3D mesh is constructed by allowing layers of nodes to follow along the top of the model domain and along the bottoms of the units.  The layers of nodes that define the boundaries between the units are represented by Quad Mesh layers in Argus ONE.  Between the top and bottom of each unit lie one or more layers of elements (fig. 4) and their nodes.  Vertical Discretization controls the number of layers of elements for each unit.
\par \pard\li720\sb120\i Note: Except for the uppermost unit, each unit extends from the layer of nodes at its bottom up to but not including the layer of nodes at its top.  The uppermost unit includes the layer of nodes at its top.\i0 
\par \pard\fi720\sb120 
\par \trowd\trgaph108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \cellx4515\cellx9360\pard\intbl\cf3\f3\{bmc Fig3aSmall.bmp\}\cf0\f4\cell\cf3\f3\{bmc Fig3bSmall.bmp\}\cf0\f4\cell\row
\b\f3\fs32\trowd\trgaph108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \cellx4515\cellx9360\intbl A.\cf3\b0\fs24\cell\cf0\b\fs32 B.\cf3\b0\fs24\cell\cf0\f4\row
\pard\fi720\sb120\sa120\b\f2 Figure \lang1024 4\lang1033 .  Three-dimensional (3D) meshes in SUTRA containing two units.  The nodes marked with red cubes are nodes in Argus ONE two-dimensional meshes indicating the location of the model top and the bottoms of each of the two units.  A. Vertically aligned mesh.  B. Nonaligned mesh.\b0 
\par \pard\fi720\sb120 
\par The elevation of nodes in the 3D mesh is determined by the \cf2\b\strike Elevation Top\cf3\strike0\{linkID=2110\}\cf0\b0  and \cf2\b\strike Elevation Bottom Unit[i]\cf3\strike0\{linkID=2280\}\cf0\b0  layers.  Each such layer is used to assign the elevation of the nodes at the top or bottom of a unit.  Nodes in the interior of units are spaced equally between the corresponding nodes on the top and bottom of the unit.
\par If the user chooses a \b vertically aligned\b0  mesh (fig. 4A), only a single Argus ONE 2D quad mesh is used and is projected downwards through the 3D mesh.  Thus, this 3D mesh type consists of nodes and elements that lie directly beneath the nodes and elements in the Argus ONE mesh.  However, the elevations within a layer of nodes can vary, depending on the elevations of the model top and unit bottoms.  The 3D mesh is thus vertically extruded from the 2D mesh.
\par If a \b nonaligned \b0 mesh (fig. 4B) is selected, an Argus ONE Quad Mesh must be specified for the bottom of every unit and for the top of the mesh.  The 2D meshes on these layers must all have the same number of nodes and elements.  In addition, the numbering of the nodes and elements must be the same in each mesh.  For example, if one mesh has 10 rows and 20 columns of elements, the others must also.  If one mesh has its nodes numbered first along rows and then along columns, the others must also.  However, the (X, Y) coordinates of the nodes can vary among meshes.  Methods for creating meshes that meet these requirements are discussed in the section of this report entitled "\cf2\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0 " on page \lang1024 42\lang1033 .
\par In \b SutraGUI\b0 , the numbering of nodes and elements in the 3D mesh cannot correspond exactly to the numbering of nodes and elements in the 2D mesh created by Argus ONE.  Each node and element in the 2D mesh corresponds to several nodes and elements in the vertical dimension.  These nodes are numbered sequentially from the top to the bottom of the 3D mesh.  For example, if a mesh had 10 elements in the vertical dimension, element 1 in the 2D mesh would correspond to elements 1-10 in the 3D mesh.  Element 2 in the 2D mesh would correspond to elements 11-20 in the 3D mesh, and so on.  The menu item \b PIEs|Convert Node and Element Numbers\b0  is a command that can be used to convert node and element numbers in the Argus ONE mesh to those of the 3D mesh and vice-versa when such information is needed. \f4 
\par \pard\fi720\f2 
\par \pard\fi700\f1 
\par }
40
Scribble40
Assignment of Aquifer Properties 



general:000120
Writing



FALSE
65
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}{\f4\fnil\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Assignment of Aquifer Properties \cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Certain variables, such as porosity and permeability must be defined for all nodes or elements in a SUTRA model.  The methods for doing so in SutraGUI vary somewhat between 2D and 3D models.\f3 
\par \pard\cf2\f1 
\par \b\f4\fs32 Two-Dimensional Models\b0\f1\fs24 
\par \pard\fi720\cf0\f2 The user may define the distribution of porosity, permeability (or hydraulic conductivity), dispersivity, initial pressure (or initial head), initial concentration (or initial temperature), and thickness throughout the 2D model domain.  Spatial distributions may be defined in any way provided by Argus ONE, as explained in the Argus ONE User's Guide (\cf3\strike Argus Interware, 1997\cf4\strike0\{linkTarget=ArgusInterware\}\cf0 ).\cf2\f1 
\par \pard 
\par \b\f4\fs32 Three-Dimensional Models\b0\f1\fs24 
\par \pard\fi720\sb120\cf0\f2 The user defines the distribution of porosity, permeability (or hydraulic conductivity), dispersivity, initial pressure (or initial head), and initial concentration (or initial temperature) for each unit.  Unless the \b Sutra_Z() \b0 or \b Sutra_Layer()\b0  functions (described in the next paragraphs) are used, the properties do not vary vertically within each unit.  (Because pressure changes with elevation, the \b Sutra_Z()\b0  function is often particularly useful in defining specified pressure boundaries and the initial pressure.)
\par The \b Sutra_Z()\b0  function provided by \b SutraGUI \b0 can be used in Expressions to set the values of aquifer properties or boundary conditions based on the Z-coordinate (usually the vertical coordinate) of nodes or element centroids.  The reader is referred to the Argus ONE User's Guide (Argus Interware, 1997) for an explanation of Expressions.  The \b Sutra_Z()\b0  function is only meaningful in 3D models.
\par The \b Sutra_Layer()\b0  function returns the layer number of the current element or node in 3D models. It can be used in the same situations that \b Sutra_Z() \b0 is used.
\par \pard\li720\sb120\i Note: Because the layer number and elevations of the nodes and element centroids are not known except when the input files for SUTRA are generated, values of the \b Sutra_Z()\b0  and \b Sutra_Layer()\b0  function are never given interactively by \b SutraGUI\b0 .  Values of \b Sutra_Z()\b0  and \b Sutra_Layer()\b0  exist only during the actual creation of the SUTRA input files, in other words, during export.\i0 
\par \pard\fi720\sb120 The \b Sutra_Z()\b0  and \b Sutra_Layer()\b0  functions can be used for the source terms in boundary condition layers, for the top and bottom elevations in layers relating to solids and for any of the aquifer properties that are set by node or by element.  Table 1 is a complete listing of the layers and parameters for which the \b Sutra_Z() \b0 and \b Sutra_Layer()\b0  functions are valid.  If one of the parameters in table 1 is linked to any other parameter, including ones not in table 1, and the other parameter employs \b Sutra_Z()\b0  or\b  Sutra_Layer()\b0 , \b Sutra_Z()\b0  or\b  Sutra_Layer()\b0  will be evaluated correctly during export of the parts of the SUTRA input files related to the parameters in table 1. 
\par \pard\fi720\sb120\sa120\b Table \lang1024 1\lang1033 .  Parameters for which the Sutra_Z() and Sutra_Layer()\b0  \b functions are valid\b0 
\par \pard\li720\i Note: The reader is referred to the section of this report entitled "Conventions" for an explanation of "[i]" in layer names. \i0 
\par \pard\fi720 
\par \trowd\trgaph30\trleft-30\clbrdrt\brdrw15\brdrs \cellx4482\clbrdrt\brdrw15\brdrs \cellx8994\pard\intbl\cf2\b Layer\cell Parameters\cell\row
\trowd\trgaph30\trleft-30\cellx4482\cellx8994\pard\intbl\b0 Sources of Fluid Solids[i]\cell total_source, specific_source, concentration_of_source, temperature_of_source, top_elevation, bottom_elevation\cell\row
\intbl Sources of Fluid Points[i]\cell total_source, concentration_of_source, temperature_of_source\cell\row
\intbl Sources of Fluid Lines[i]\cell total_source, specific_source, concentration_of_source, temperature_of_source\cell\row
\intbl Sources of Fluid Sheets Vertical[i]\cell total_source, specific_source, concentration_of_source, temperature_of_source\cell\row
\intbl Sources of Fluid Sheets Slanted[i]\cell total_source, specific_source, concentration_of_source, temperature_of_source\cell\row
\intbl Sources of Solute Solids[i]\cell total_source, specific_source, top_elevation, bottom_elevation\cell\row
\intbl Sources of Solute Points[i]\cell total_source\cell\row
\intbl Sources of Solute Lines[i]\cell total_source, specific_source\cell\row
\intbl Sources of Solute Sheets Vertical[i]\cell total_source, specific_source\cell\row
\intbl Sources of Solute Sheets Slanted[i]\cell total_source, specific_source\cell\row
\intbl Sources of Energy Solids[i]\cell total_source, specific_source, top_elevation, bottom_elevation\cell\row
\intbl Sources of Energy Points[i]\cell total_source\cell\row
\intbl Sources of Energy Lines[i]\cell total_source, specific_source\cell\row
\intbl Sources of Energy Sheets Vertical[i]\cell total_source, specific_source\cell\row
\intbl Sources of Energy Sheets Slanted[i]\cell total_source, specific_source\cell\row
\intbl Specified Hydraulic Pressure Solids[i]\cell specified_pressure, concentration, temperature, top_elevation, bottom_elevation\cell\row
\intbl Specified Hydraulic Pressure Points[i]\cell specified_pressure, concentration, temperature\cell\row
\intbl Specified Hydraulic Pressure Lines[i]\cell specified_pressure, concentration, temperature\cell\row
\intbl Specified Hydraulic Pressure Sheets Vertical[i]\cell specified_pressure, concentration, temperature\cell\row
\intbl Specified Hydraulic Pressure Sheets Slanted[i]\cell specified_pressure, concentration, temperature\cell\row
\intbl Specified Hydraulic Head Solids[i]\cell specified_hydraulic_head, concentration, top_elevation, bottom_elevation\cell\row
\intbl Specified Hydraulic Head Points[i]\cell specified_hydraulic_head, concentration\cell\row
\intbl Specified Hydraulic Head Lines[i]\cell specified_hydraulic_head, concentration\cell\row
\intbl Specified Hydraulic Head Sheets Vertical[i]\cell specified_hydraulic_head, concentration\cell\row
\intbl Specified Hydraulic Head Sheets Slanted[i]\cell specified_hydraulic_head, concentration\cell\row
\intbl Specified Concentration Solids[i]\cell specified_concentration, top_elevation, bottom_elevation\cell\row
\intbl Specified Concentration Points[i]\cell specified_concentration\cell\row
\intbl Specified Concentration Lines[i]\cell specified_concentration\cell\row
\intbl Specified Concentration Sheets Vertical[i]\cell specified_concentration\cell\row
\intbl Specified Concentration Sheets Slanted[i]\cell specified_concentration\cell\row
\intbl Specified Temperature Solids[i]\cell specified_temperature, top_elevation, bottom_elevation\cell\row
\intbl Specified Temperature Points[i]\cell specified_temperature\cell\row
\intbl Specified Temperature Lines[i]\cell specified_temperature\cell\row
\intbl Specified Temperature Sheets Vertical[i]\cell specified_temperature\cell\row
\intbl Specified Temperature Sheets Slanted[i]\cell specified_temperature\cell\row
\intbl Observation Solids[i]\cell top_elevation, bottom_elevation\cell\row
\intbl Porosity Unit[i]\cell porosity\cell\row
\intbl Permeability Unit[i]\cell maximum, middle, minimum, horizontal angle, vertical angle, rotational angle\cell\row
\intbl Hydraulic Conductivity Unit[i]\cell maximum, middle, minimum, horizontal angle, vertical angle, rotational angle\cell\row
\intbl Dispersivity Unit[i]\cell longdisp_in_max_permdir, longdisp_in_mid_permdir, longdisp_in_min_permdir, trandisp_in_max_permdir, trandisp_in_mid_permdir, trandisp_in_min_permdir\cell\row
\intbl Initial Hydraulic Head Unit[i]\cell initial_hydraulic_head\cell\row
\intbl Initial Pressure Unit[i]\cell initial_pressure\cell\row
\intbl Initial Concentration Unit[i]\cell initial_concentration\cell\row
\trowd\trgaph30\trleft-30\clbrdrb\brdrw15\brdrs \cellx4482\clbrdrb\brdrw15\brdrs \cellx8994\pard\intbl Initial Temperature Unit[i]\cell initial_temperature\cell\row
\pard\fi720\f1 
\par }
50
Scribble50
Assignment of Boundary Conditions and Observations



general:000130
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Assignment of Boundary Conditions and Observations
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 There are four types of boundary conditions used in SUTRA.  These include \cf2\b\strike Sources of Fluid\cf3\strike0\{linkID=1700\}\cf0\b0 ,\b\strike  \cf2 Sources of Solute\b0  (or \b Sources of Energy\b0 )\cf3\strike0\{linkID=1770\}\cf0 , \cf2\b\strike Specified Pressure\b0  (or \b Specified Head\b0 )\cf3\strike0\{linkID=1830\}\cf0 , and \cf2\b\strike Specified Concentration\b0  (or \b Specified Temperature\b0 )\cf3\strike0\{linkID=1870\}\cf0 .  Point, open, and closed contours may be used to specify all the boundary conditions and the locations of observation points in 2D and 3D models.  In addition, 3D objects may be used to specify all the boundary conditions and the locations of observation points in 3D models.  
\par \pard\fi720 For sources of fluid and sources of solute (or sources of energy), either a total source or a specific source may be applied.  A total source is the total amount of fluid, solute, or energy to be injected or extracted from all the nodes associated with the contour.  A specific source is the amount of fluid, solute, or energy per unit length of contour or per unit area of contour to be injected or extracted from each node associated with the contour.  Because point contours have neither length nor area, point contours cannot be used for specific sources.
\par 
\par \pard\cf2\strike Total and Specific Sources\cf3\strike0\{linkID=51\}\cf0 
\par \cf2\strike Time Dependence\cf3\strike0\{linkID=52\}\cf0 
\par \cf2\strike Two-Dimensional Models\cf3\strike0\{linkID=54\}\cf0 
\par \cf2\strike Three-Dimensional Models\cf3\strike0\{linkID=55\}\cf0\f2 
\par }
51
Scribble51
Total and Specific Sources



general:000140
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Total and Specific Sources\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\f2 Either a \b total_source\b0  or \b specific_source\b0  for sources of fluid and sources of solute or energy must be defined as contour objects.  A contour may have its own value, or its value may come from a background expression. 
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb80\tx920 If a \b total_source\b0  is defined, the value \b total_source\b0  is divided among all the nodes to which the source applies.  The \b total_source\b0  is allocated to each node according to the fraction of the following that falls within the cell of that node: the total length or area of the 2D source contour (open and closed contours), or the total length or area of the 3D source object (line objects or sheet objects).
\par \pard\li900\sb80\tx900 For solids, the \b total_source\b0  is allocated to each node according to the fraction of the total volume of the cells associated with the 3D solid object represented by the node's cell.
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb80\tx920 A \b specific_source\b0  cannot be used with point sources.  
\par {\pntext\f3\'B7\tab}If a \b specific_source\b0  with a line contour is defined, the value is multiplied by the length of the line associated with a node to determine the correct amount to apply to a particular node.  
\par {\pntext\f3\'B7\tab}If a \b specific_source\b0  is defined with a closed contour, the value is multiplied by the area of the contour associated with a node to determine the correct amount to apply to a particular node.  
\par {\pntext\f3\'B7\tab}If a \b specific_source\b0  with a sheet source is defined, the value is multiplied by the area of the contour associated with a node to determine the correct amount to apply to a particular node.  
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920 If a \b specific_source\b0  with a solid source is defined, the value is multiplied by the volume of the cell associated with a node to determine the correct amount to apply to a particular node.
\par \pard 
\par }
52
Scribble52
Time Dependence



general:000150
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Time Dependence\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 Boundary conditions in SUTRA may be made time-dependent by modifying the subroutine BCTIME in SUTRA and recompiling SUTRA.  In such cases, the \b time_dependence\b0  parameter is used to signal that a particular contour specifies a time-dependent boundary condition. 
\par \pard\fi720 When BCTIME is modified to support time-dependent boundaries, it must be specified how the data for the time-dependent boundaries are to be generated.  The data may be generated within the BCTIME subroutine or BCTIME can read the data from an external file in a format specified by the user.  Because there is no standard input format for data files read by the BCTIME subroutine, \b SutraGUI \b0 cannot generate such input files.  However, users may be able to create an export template for use within Argus ONE that will generate such files for their particular case as described on p. 169-188 of the Argus ONE User's Guide (\cf3\strike Argus Interware Inc., 1997\cf4\strike0\{linkTarget=ArgusInterware\}\cf0 ).\cf2\f1 
\par }
53
Scribble53
Labeling Sources, Boundary Conditions, and Observations



general:000160
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Labeling Sources, Boundary Conditions, and Observations\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The \b comment \b0 parameter holds a string variable that is appended to the SUTRA input file as a comment for all nodes or elements affected by a particular contour.  This can be useful for diagnostic purposes or for preparing input files for use in the BCTIME subroutine.  For example, this feature may be used to individually name contours that define wells so that time-dependent pumping rates for each named well may be read by the BCTIME subroutine.  (The reader is referred to the section of this report entitled "\cf3\strike Time Dependence\cf4\strike0\{linkID=52\}\cf0 ."\cf2\f1 
\par }
54
Scribble54
Two-Dimensional Models



general:000170
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Two-Dimensional Models\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\sa120\cf0\f2 Two-dimensional (2D) models may use any of the objects defined in Argus ONE to represent boundary conditions and observations.  The objects include the following:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb60\tx920 Point contours:  these have a single vertex with an X and a Y coordinate.
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb80\tx920 Open contours:  these have multiple vertices each with an X and a Y coordinate.  Open contours do not close back on themselves, so they have a length but no area.
\par {\pntext\f3\'B7\tab}Closed contours:  these have multiple vertices, each with an X and a Y coordinate.  Closed contours close back on themselves, so they have both a length and an area.
\par \pard\fi720\sb240 In 2D models, nodes must lie exactly above point, open (line), and closed contours to be selected as boundary conditions or observations.  To specify a boundary condition with a point contour in a 2D model, the location of the point contour must correspond to the location of a node.  With open contours, the location of each segment of the contour must lie along the edges or diagonals of elements.  Nodes falling within and above a closed contour are selected as boundary conditions or observations.
\par \pard\fi720 For sources of fluid, the user must specify a \b total_source\b0  or \b specific_source\b0  and the \b concentration_of_source\b0  or \b temperature_of_source\b0  associated with the source.  For sources of solute or sources of energy, the user must specify either a \b total_source\b0  or \b specific_source\b0 .  For specified pressure or specified hydraulic head, the user must specify the \b specified_pressure\b0  or \b specified_hydraulic_head\b0  and the \b concentration\b0  or \b temperature\b0  that correspond to the incoming fluid.  For specified concentration or specified temperature, the user must specify the \b specified_concentration\b0  or \b specified_temperature\b0 .  If any of these boundary conditions are time-dependent, \b time_dependence\b0  must be set to 'true'.\cf2\f1 
\par }
55
Scribble55
Three-Dimensional Models



general:000180
Writing



FALSE
26
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Three-Dimensional Models\cf2\b0\f1\fs24 
\par 
\par \pard\keep\fi720\sb120\cf0\f2 All the boundary conditions and the locations of observation points can be set on layers similar to those used for 2D models.  These objects can only be located within the model top and within the bottom surfaces of any model unit in 3D.  As in 2D models, these objects must lie directly above nodes or must enclose nodes.
\par \pard\fi720\sb120 In addition, all boundary conditions can be set using 3D objects, which may be placed anywhere in the 3D domain of the model, within individual units or crossing several units.  By itself, Argus ONE does not define 3D objects; it only provides 2D objects.  The user can define the shape of the projection of a 3D object on the top of the model and the top and bottom elevations of the object.  Any 3D object shape can be constructed in this way using a combination of one or more such objects.
\par 3D objects are defined in SutraGUI using the Argus ONE 2D objects, but additional information must be supplied about the Z-coordinates of the objects.  This is done using the parameters defined for each information layer in Argus ONE where 3D objects are defined.  There are five types of 3D objects: points, lines, vertical sheets, slanted sheets, and solids.  The relations between the 3D objects and the corresponding 2D Argus ONE contours are shown in Table \lang1024 2\lang1033 .\f3 
\par \pard\sb120 
\par \pard\sb120\sa120\cf3\b\f2\{target=Table2\}\cf0 Table \lang1024 2\lang1033 .\b0   \b Summary of methods of specifying three-dimensional (3D) objects using two-dimensional (2D) contours
\par \trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx1714\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx4090\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx8748\pard\intbl 3D Object\cell 2D Contour-type\cell Extra information required\cell\b0\row
\trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs \cellx1714\clbrdrt\brdrw15\brdrs \cellx4090\clbrdrt\brdrw15\brdrs \cellx8748\pard\intbl Point\cell Point contour\cell Z-coordinate\cell\row
\trowd\trgaph108\trleft-108\cellx1714\cellx4090\cellx8748\pard\intbl Line\cell Point or Open contour\cell Z-coordinates of the first and last vertices of the line (a segmented polyline - need not be linear)\cell\row
\intbl Sheet (vertical)\cell Open contour\cell Z-coordinates of the first and last vertices of the line at the top and bottom of the vertical sheet (need not be planar)\cell\row
\intbl Sheet (slanted)\cell Closed contour\cell X, Y, and Z-coordinates of three, non-collinear points.  These points define a plane; the extent of the contour defines the portion of the plane that is part of the slanted sheet (must be planar).\cell\row
\trowd\trgaph108\trleft-108\clbrdrb\brdrw15\brdrs \cellx1714\clbrdrb\brdrw15\brdrs \cellx4090\clbrdrb\brdrw15\brdrs \cellx8748\pard\intbl Solid\cell Closed contour\cell A top and bottom elevation.  These may be either constants or functions of X and Y.  (For simplicity, it is best to avoid making these elevations functions of \b Sutra_Z().)  \b0\cell\row
\pard\fi720\sb120 
\par For points, lines, and sheets, a node will be selected by the 3D object as a boundary condition or observation node in a 3D model if the cell surrounding the node intersects the 3D object.  This is in contrast with 2D models, where only nodes directly above the contours themselves are selected.  Boundary conditions or observation nodes need not lie exactly above or within contours (objects) in 3D models.  For solids, a node will be selected as a boundary condition or observation node if the node is inside the solid.  For each type of 3D object, explanations that are more detailed are given in the next sections.
\par \pard\keep\fi720\sb120 The \b follow_mesh\b0  parameter can modify how certain 3D objects are evaluated when using a nonaligned 3D mesh.  The \b follow_mesh\b0  parameter is available for solids, lines, and vertical sheets.  It is not available for points or slanted sheets.  For more information, the reader is referred to the section of this report entitled "\cf4\strike The \b Follow_Mesh\b0  Parameter for Nonaligned Meshes\cf3\strike0\{linkID=100\}\cf0 " on page \lang1024 20\lang1033 .
\par \pard\fi720 
\par \pard\cf4\strike Selecting and Assigning Properties to Nodes Using Points\cf3\strike0\{linkID=60\}\cf0 
\par \cf4\strike Selecting and Assigning Properties to Nodes Using Lines\cf3\strike0\{linkID=70\}\cf0 
\par \cf4\strike Selecting and Assigning Properties to Nodes Using Sheets\cf3\strike0\{linkID=80\}\cf0 
\par \cf4\strike Selecting and Assigning Properties to Nodes Using Solids\cf3\strike0\{linkID=90\}\cf0 
\par \cf4\strike The Follow_Mesh Parameter for Nonaligned Meshes\cf3\strike0\{linkID=100\}\cf0 
\par \cf2\f1 
\par }
60
Scribble60
Selecting and Assigning Properties to Nodes Using Points



general:000190
Writing



FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Selecting and Assigning Properties to Nodes Using Points\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 For points, the 3D object will select a node as a boundary condition node if the point is inside the cell surrounding the node.  In figure 5, the red node is selected because the yellow point is inside its cell.  The value assigned to the node is the value assigned to the point.
\par \pard 
\par \cf2\{bmc PointSource.bmp\}
\par \pard\sb120\sa120\cf0\b Figure \lang1024 5\lang1033 .  Selecting a node with a point object in three dimensions.  The cell of the red node is the shaded region.\b0 
\par \pard\fi720\sb120 For SutraGUI to determine whether a point is inside the cell surrounding the node, the cell is approximated by a polyhedron.  The vertices of the polyhedron consist of 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920 the node itself (if the node is on the edge of the mesh), 
\par {\pntext\f4\'B7\tab}points at the center of the line connecting the node to its neighbors, 
\par {\pntext\f4\'B7\tab}the points at the center of the faces of the elements that include the node, and
\par {\pntext\f4\'B7\tab}the points at the centers of the elements that include the node.  \f3 
\par \pard\fi700 
\par \pard\f1 
\par }
70
Scribble70
Selecting and Assigning Properties to Nodes Using Lines



general:000200
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Selecting and Assigning Properties to Nodes Using Lines\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 For lines, the 3D object selects a node as a boundary condition or observation if the cell surrounding the node intersects the line.  In figure 6, the red nodes are selected because the yellow line intersects their cells.
\par \pard 
\par \cf2\{bmc LineSource.bmp\}
\par \pard\sb120\sa120\cf0\b Figure \lang1024 6\lang1033 .  Selecting nodes with a line object in three dimensions.\b0 
\par \pard\fi720\sb120 The values assigned to the selected nodes depend on whether the source is assigned using the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  or \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter.  If the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter is used, the value assigned to a node is the value of the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter times the fraction of the length of the source that is in the cell surrounding the node.  If the \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter is used, the value assigned to a node is the value of the \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter times the length of the source that was in the cell surrounding the node.  (If part of the line lies outside of all cells, that portion is not considered a part of the total length of the line.)  For example, suppose that the total length of a source is 500 m and that 100 m of that length lies inside the cell of one node.  If the source is a \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  with a value of 2, the value assigned to the node is 2 x (100/500) = 0.4.  If the source is a \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  with a value of 2 m^\super -1\nosupersub , the value assigned to the node is 2 x 100 = 200.  For a \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0 , even if part of the line is outside all cells, the total amount assigned to the entire line is distributed by the above method within the mesh.\f3 
\par \pard\b\f2\fs20 
\par }
80
Scribble80
Selecting and Assigning Properties to Nodes Using Sheets



general:000210
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Selecting and Assigning Properties to Nodes Using Sheets\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 For vertical sheets and slanted sheets, the 3D object selects a node as a boundary condition or observation node if the cell surrounding the node intersects the sheet.  In figure 7, the red nodes are selected because the yellow sheet intersects their cells.
\par \pard 
\par \cf2\{bmc SheetSource.bmp\}
\par \pard\sb120\sa120\cf0\b Figure \lang1024 7\lang1033 .  Selecting nodes with a sheet object in three dimensions.\b0 
\par \pard\fi720 The values assigned to the selected nodes depend on whether the source is a \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  or a \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0 .  If the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter is used, the value assigned to a node is the value of the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter times the fraction of the area of the source that is in the cell surrounding the node.  If the \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter is used, the value assigned to a node is the value of the \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter times the area of the source that is in the cell surrounding the node.  Only portions of the sheet that lie inside cells count toward the total area of the sheet.  For a \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0 , even if part of the sheet is outside all cells, the total amount assigned to the entire sheet is distributed by the above method within the mesh.
\par \pard\f1 
\par }
90
Scribble90
Selecting and Assigning Properties to Nodes Using Solids



general:000220
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Selecting and Assigning Properties to Nodes Using Solids\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 For solids, a node is selected as a boundary condition or observation node if the node itself is inside the solid.  In figure 8, the red nodes are selected because they are inside the yellow solid.
\par \pard 
\par \cf2\{bmc SolidSource.bmp\}
\par \pard\sb120\sa120\cf0\b Figure \lang1024 8\lang1033 .  Selecting nodes with a solid in three dimensions.\b0 
\par \pard\fi720 The values assigned to the selected nodes depend on whether the source is a \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  or a \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0 .  If the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter is used, the value assigned to a node is the value of the \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter times the volume of the cell surrounding the node divided by the volumes of all the cells selected by the solid.  If the \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter is used, the value assigned to a node is the value of the \cf3\b\strike specific_source\cf2\strike0\{linkID=51\}\cf0\b0  parameter times the volume of the cell surrounding the node.  For a \cf3\b\strike total_source\cf2\strike0\{linkID=51\}\cf0\b0 , even if part of the solid object is outside all cells, the total amount assigned to the entire solid is distributed by the above method within the mesh.  Note that, in contrast with line and sheet objects, the actual volume of the solid is never calculated and the allocation to nodes, though it preserves the amount of the source, is based on the volume of the cells rather than the volume of the object.
\par \f1 
\par }
100
Scribble100
The Follow_Mesh Parameter for Nonaligned Meshes



general:000230
Writing



FALSE
23
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 The Follow_Mesh Parameter for Nonaligned Meshes\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The \b follow_mesh\b0  parameter can be used to modify how certain 3D objects are interpreted for nonaligned 3D meshes.  It is only beneficial to set \b follow_mesh\b0  to 'true' for nonaligned meshes; for vertically aligned meshes, this parameter has no effect.
\par \pard\sb240\sa60\b\fs28 Lines\b0\fs24 
\par \pard\keep\fi720\sb120 If \b follow_mesh\b0  is 'true' for lines, the location of the open contour used to define the line is treated as follows.  In the uppermost Argus ONE mesh layer, all the nodes whose 2D cells intersect the contour are identified.  The contour is treated as if it was aligned with the X and Y coordinates of those nodes.  Then it is moved down along a column of nodes to a location where the Z-coordinate matches the Z-coordinate of the original line.  In the process, the X and Y coordinates are also adjusted.  This new line contour is then evaluated in the usual manner (fig. 9).  Thus, when the user specifies a line object on the model top or on any unit bottom, the object is moved up or down to the user-specified elevation along vertical columns of nodes in the mesh.
\par \pard\fi720 For nodes at the outer edge of the mesh, this process can lead to lines that lie just outside the mesh and only just touch the mesh along the edges of elements.  In such cases, the line would not select any nodes because the line would not be inside the element.  Therefore, it is best to avoid setting the \b follow_mesh\b0  parameter to 'true' for lines near the edge of the mesh.  In such cases, solids should be used instead.\cf2\f1 
\par \pard\fi700 
\par \pard\cf3\{bmc FollowMeshLine.bmp\}\cf2 
\par \pard\fi720\sb120\sa120\cf0\b\f2 Figure \lang1024 9\lang1033 .  Effect of the follow_mesh parameter with line objects.  A. An open contour in Argus ONE defining a line together with two meshes representing different levels in the three dimensional (3D) mesh.  (The "1" on the contour is the parameter value of the contour in Argus ONE.)  B. The nodes selected by the line when follow_mesh is set to 'true' and the elevation of the line is set to the elevation of the lower mesh.\b0 
\par \pard\fi720\sb120 
\par \pard\sb240\sa60\b\fs28 Vertical Sheets\b0\fs24 
\par \pard\fi720 If \b follow_mesh\b0  is 'true' for vertical sheets, the location of the open contour used to define the line is treated as follows.  In the uppermost Argus ONE mesh layer, all the nodes whose 2D cells intersect the contour are identified.  A new set of sheets is constructed that comprises the faces of all 3D elements that are in the same column of nodes as the selected nodes on the uppermost 2D mesh.  These new sheet contours are then evaluated in the usual manner (fig. 10).  As with lines, described just above, this method should not be used at the outer edge of the mesh.  Thus, when the user specifies a line object intended to represent a vertical sheet on the model top or on any unit bottom, the entire vertically oriented sheet of nodes that intersects the line is selected between the top and bottom elevations specified by the user.\cf2\f1 
\par \pard\cf3\{bmc FollowMeshSheet.bmp\}\cf2 
\par \pard\fi720\sb120\sa120\cf0\b\f2 Figure \lang1024 10\lang1033 .  Effect of the follow_mesh parameter with sheet objects.  A. An open contour in Argus ONE defining a line together with two meshes representing different levels in the three dimensional (3D) mesh.  (The "1" on the contour is the parameter value of the contour in Argus ONE.)  B. The nodes selected by the sheet when follow_mesh is set to 'true' and the elevations are set to include both meshes.\b0 
\par \pard\sb240\sa60\b\fs28 Solids\b0\fs24 
\par \pard\fi720\sb120 If \b follow_mesh\b0  is 'true' for Solids, the location of the closed contour used to define the solid is treated as follows.  When each node in the 3D mesh is tested to see whether it lies within the solid, the X and Y locations of the node tested will not be the X and Y coordinates of the node itself but rather the X and Y coordinates of the corresponding node in the uppermost 2D Argus ONE mesh (fig. 11).  (The Z-coordinate is the location of the tested node itself.)  Thus, when the user specifies a solid object intended to represent a vertical volume on the model top or on any unit bottom, the entire vertically oriented volume of nodes that intersects the line is selected between the top and bottom elevations specified by the user.\b\f3 
\par \pard\fi700\cf2\b0\f1 
\par \pard\cf3\{bmc FollowMeshSolid.bmp\}\cf2 
\par \pard\fi720\cf0\b\f2 Figure \lang1024 11\lang1033 .  Effect of the follow_mesh parameter with solid objects.  A. A closed contour in Argus ONE defining a solid together with two meshes representing different levels in the three dimensional (3D) mesh.  (The "1" on the contour is the parameter value of the contour in Argus ONE.)  B. The nodes selected by the solid when follow_mesh is set to "true" and the bottom elevation is set to below the elevation of the lower mesh and the top elevation is set above the elevation of the upper mesh.\cf2\b0\f1 
\par \pard\fi700 
\par }
140
Scribble140
Specifying Nonspatial Data



general:000240
Writing



FALSE
81
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}{\f1\froman\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specifying Nonspatial Data
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\f2 After starting a new SUTRA project, or when \b Edit Project Info\'85\b0  is selected from the Argus ONE \b PIEs \b0 menu, the \b SUTRA Project Information\b0  dialog box appears.  The \b SUTRA Project Information\b0  dialog box allows the user to choose the desired type of SUTRA application (for example, areal solute-transport model, or cross-sectional saturated-unsaturated energy-transport model, etc.) and to enter required information for the SUTRA simulation that is not spatially dependent (for example, time-step size, SUTRA output controls, etc.).  It also allows the user to edit this project information at any time from within the Argus ONE environment.  (Input of the spatially dependent information is done in geospatial information layers accessible from the standard Argus ONE window after exiting from the \b SUTRA Project Information\b0  dialog box.)  
\par The data in the \b SUTRA Project Information \b0 dialog box appears on a number of separate panes.  A list of the panes appears on the left side of the dialog box.  When the user selects one of the items from the list of panes, the corresponding pane appears on the right side of the dialog box.
\par Most of the information to be entered in the \b SUTRA Project Information \b0 dialog box is required in SUTRA input data sets, and with a few exceptions, appears in the same order as normally found in a SUTRA input data set, as described in the SUTRA documentation (\cf2\strike Voss and Provost, 2002\cf3\strike0\{linkTarget=Voss02\}\cf0 ).  The 'initial time' from the SUTRA initial conditions input data set also appears here.
\par A pane may be accessed by clicking on the pane's title, listed along the left edge of the dialog box.  Some data-entry boxes may be grayed out and inaccessible; these parameter values are fixed by the user's choice of problem type (on the \cf2\b\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0\b0  pane or \cf2\b\strike Modes, Numerical Controls\cf3\strike0\{linkID=240\}\cf0\b0  pane) and need not be altered.
\par The SUTRA input data-set number and the SUTRA parameter name are given on each pane to allow the user to easily find detailed instructions for each particular data type in the SUTRA documentation (\cf2\strike Voss and Provost, 2002\cf3\strike0\{linkTarget=Voss02\}\cf0 ).  The \b SutraGUI \b0 Help system can also be used to find out about the parameters in the \b SUTRA Project Information\b0  dialog box.  One way to access the Help system for a particular control is to select the control (such as an edit box or check box) and press the F1 button on the keyboard.  The reader is referred to the section of this report entitled "\cf2\strike Accessing Online Help\cf3\strike0\{linkID=7\}\cf0 " on page \lang1024 5\lang1033  for more information.
\par When all entry or modification of data in the \b SUTRA Project Information\b0  dialog box is complete, click on the \b OK \b0 button to accept changes, or on the \b Cancel \b0 button to ignore any changes made; in either case, the user proceeds to the Argus ONE environment.  If \b Cancel \b0 is selected during the creation of a new SUTRA project, then the creation of that new project is canceled.  Because default values are supplied for all parameters, it may not be necessary to access all of the panes in the \b SUTRA Project Information \b0 dialog box before closing it.  The default values for parameters in the \b SUTRA Project Information \b0 dialog box are listed in tables 3 and 4.
\par \tab 
\par \pard\fi720\sb120\sa120\b Table \lang1024 3\lang1033 .  Default Values for SUTRA Project Information dialog box for General Case \super (1)\nosupersub\f3 
\par \trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1260\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx3100\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4692\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6282\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx7740\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx9468\pard\intbl\f2 Variable\cell Default\cell Variable\cell Default\cell Variable\cell Default\cell\row
\b0\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1260\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx3100\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4692\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6282\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx7740\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx9468\intbl SIMULA \cell SUTRA SOLUTE TRANSPORT\cell NOBCYC\cell 0\cell NSAVEU\cell 10\cell\row
\intbl TITLE1 \cell SUTRA Model created using Argus ONE\cell K5COL & K6COL\cell Unchecked (=0)\cell COMPFL \cell 4.47e-10 \cell\row
\intbl TITLE2 \cell USGS sample Interface\cell CNODAL \cell Unchecked (=0)\cell CW \cell 1\cell\row
\intbl CUNSAT \cell Unsaturated and saturated flow \cell CELMNT \cell Unchecked (=0)\cell SIGMAW \cell\lang1030 1E-9 for solute transport; 0 for energy transport\cell\row
\lang1033\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1260\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx3100\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4692\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6282\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx7740\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx9468\intbl CSSFLO \cell Steady-state ground-water flow \cell CINCID \cell Unchecked (=0) \cell RHOW\'d8 \cell 1 \cell\row
\intbl CSSTRA \cell Steady-state solute transport\cell CVEL \cell Checked (=1) \cell URHOW\'d8\cell 0\cell\row
\intbl CREAD \cell Cold start (first time step of a simulation) (1) \cell CBUDG \cell Checked (=1)\cell DRWDU \cell 0\cell\row
\intbl UP \cell 0 \cell ISTORE \cell 9999 \cell VISC\'d8 \cell 1\cell\row
\intbl GNUP \cell 0.1 \cell Root file name\cell (empty)\cell COMPMA \cell\cf4 1.e-8\cf0\cell\row
\intbl GNUU \cell 1.0 \cell Solution type\cell Noniterative solution\cell CS \cell 0\cell\row
\intbl ITMAX \cell 1 \cell ITRMAX \cell\lang1030 1 \cell SIGMAS \cell 0\cell\row
\intbl DELT \cell 1 \cell RPMAX \cell\lang1033 0 \cell RHOS \cell 2600.0\cell\row
\intbl TMAX \cell 1.0 \cell RUMAX \cell 0 \cell ADSMOD \cell NONE\cell\row
\intbl ITCYC \cell 9999 \cell CSOLVP\cell DIRECT\cell CHI1 \cell 0\cell\row
\intbl DTMULT \cell 1.0 \cell ITRMXP\cell 300\cell CHI2 \cell 0\cell\row
\intbl DTMAX \cell 1e99 \cell ITOLP\cell 0\cell PRODF\'d8\cell 0\cell\row
\intbl NPCYC \cell\lang1030 1 \cell TOLP\cell 1E-8\cell PRODS\'d8\cell\lang1033 0\cell\row
\intbl NUCYC \cell 1 \cell NSAVEP\cell 10\cell PRODF1 \cell 0\cell\row
\intbl TSTART \cell 0 \cell CSOLVU\cell DIRECT\cell PRODS1 \cell 0\cell\row
\intbl NPRINT \cell 9999 \cell ITRMXU\cell 300\cell GRAVX\cell 0\cell\row
\intbl NCOLPR\cell 9999\cell ITOLU\cell 0\cell GRAVY \cell 0\cell\row
\intbl LCOLPR\cell 9999\cell TOLU\cell 1E-8\cell GRAVZ\cell 0\cell\row
\pard\fi720\super (1)\nosupersub  Values in mks units (also known as SI units).
\par 
\par \pard\li720\i Note: Default values are only initial suggestions, and must be checked and reset, as needed, by the user to appropriate values for the user's project.\i0 
\par \pard\fi720 
\par \pard\fi720\sb120\sa120 
\par \b Table \lang1024 4\lang1033 .  Default Values \super (1)\nosupersub  for SUTRA Project Information dialog for Special Cases\super  (2)\nosupersub\f3\fs16 
\par \trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\f2\fs20 Solute transport with variable density\cell Solute transport with constant density\cell Thermal Energy transport\cell Saturated-unsaturated flow\cell Saturated-only flow\cell\b0\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx3240\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx7920\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx10260\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\b Variable\cell Default\cell Variable\cell Default\cell Variable\cell Default\cell Variable\cell Default\cell Variable\cell\lang1030 Default\cell\b0\row
\intbl SIGMAW \cell 1.0E-9 \cell\lang1033 SIGMAW \cell 1.0E-9 \cell CW \cell\lang1030 4182.0\cell IUNSAT \cell 1\cell IUNSAT\cell 0\cell\b\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx3240\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx7920\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs \cellx10260\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\b0 RHOW0 \cell\lang1033 1000.0 \cell RHOW0 \cell 1\cell SIGMAW \cell 0.6\cell ITRMAX \cell 2\cell COMPMA\cell 1.e-8\cell\b\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs \cellx3240\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrl\brdrw15\brdrs \cellx7920\cellx9000\cellx10260\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\b0 DRWDU \cell 700.0 \cell COMPMA\cell 9.81e-5\cell RHOW0 \cell 1000.0 \cell COMPMA\cell 1.e-8\cell COMPFL\cell 4.47e-10\cell\b\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrl\brdrw15\brdrs \cellx3240\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrl\brdrw15\brdrs \cellx7920\cellx9000\cellx10260\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\b0 VISC0 \cell 0.001 \cell COMPFL\cell 4.39e-6\cell URHOW0 \cell 20 \cell COMPFL\cell 4.47e-10\cell\cell\cell\b\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs \cellx1980\cellx3240\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx7920\clbrdrb\brdrw15\brdrs \cellx9000\clbrdrb\brdrw15\brdrs \cellx10260\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\b0 COMPMA\cell 1.e-8\cell\cell\cell\lang1030 DRWDU \cell -0.375\cell\b\cell\cell\cell\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrl\brdrw15\brdrs \cellx1024\cellx1980\cellx3240\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx7920\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx10260\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\lang1033\b0 COMPFL\cell 4.47e-10\cell\cell\cell CS \cell 840.0\cell\lang1030\b\cell\cell\cell\cell\b0\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx1024\clbrdrb\brdrw15\brdrs \cellx1980\cellx3240\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx7920\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx10260\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\cell\cell\lang1033\cell\cell SIGMAS \cell 3.5 \cell\lang1030\b\cell\cell\cell\cell\b0\row
\intbl\cell\cell\lang1033\cell\cell COMPMA\cell 1.e-8\cell\lang1030\b\cell\cell\cell\cell\row
\b0\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx1024\clbrdrb\brdrw15\brdrs \cellx1980\cellx3240\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx7920\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx10260\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\intbl\cell\cell\lang1033\cell\cell COMPFL\cell 4.47e-10\cell\lang1030\b\cell\cell\cell\cell\b0\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrl\brdrw15\brdrs \cellx3240\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs \cellx7920\clbrdrt\brdrw15\brdrs \cellx9000\clbrdrt\brdrw15\brdrs \cellx10260\clbrdrt\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl\lang1033 GRAVY\lang1030\cell\lang1033 -9.81 (for 2D) 0  (for 3D)\cell\cell\cell GRAVY \cell\lang1030 -9.81 (for 2D) 0  (for 3D)\cell\b\cell\cell\cell\cell\b0\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1024\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1980\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3240\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx4320\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5580\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx6660\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx7920\clbrdrb\brdrw15\brdrs \cellx9000\clbrdrb\brdrw15\brdrs \cellx10260\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx11340\pard\intbl GRAVZ\cell -9.81 (for 3D)\cell\cell\cell GRAVZ\cell\lang1033 -9.81  (for 3D)\cell\b\cell\cell\cell\cell\b0\fs24\row
\pard 
\par \f3 
\par 
\par \pard\fi720\super\f2 (1)\nosupersub  Values in mks units (also known as SI units).
\par \super (2)\nosupersub  Only values that differ from the defaults in Table \lang1024 3\lang1033  are listed.
\par \pard\li720\sb120\i Note: Default values are only initial suggestions; the user must check and reset these to appropriate values for the user's project.
\par \i0 
\par \pard\fi720 The following sections provide detailed descriptions of the panes in the SUTRA Project Information dialog box.
\par 
\par \pard\cf2\strike About Pane\cf3\strike0\{linkID=150\}\cf0 
\par \cf2\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0 
\par \cf2\strike Headings\cf3\strike0\{linkID=220\}\cf0 
\par \cf2\strike Structure in Z (3D Only)\cf3\strike0\{linkID=230\}\cf0 
\par \cf2\strike 3D Surfaces and Objects (3D Only)\cf3\strike0\{linkID=235\}\cf0 
\par \cf2\strike Modes, Numerical Controls\cf3\strike0\{linkID=240\}\cf0 
\par \cf2\strike Temporal Controls\cf3\strike0\{linkID=250\}\cf0 
\par \cf2\strike Initial Condition Controls\cf3\strike0\{linkID=255\}\cf0 
\par \cf2\strike Output Controls\cf3\strike0\{linkID=260\}\cf0 
\par \cf2\strike Iterations for Nonlinearity\cf3\strike0\{linkID=270\}\cf0 
\par \cf2\strike Solver Controls\cf3\strike0\{linkID=280\}\cf0 
\par \cf2\strike Fluid Properties\cf3\strike0\{linkID=310\}\cf0 
\par \cf2\strike Solid Matrix, Adsorption\cf3\strike0\{linkID=320\}\cf0 
\par \cf2\strike Production, Gravity\cf3\strike0\{linkID=330\}\cf0 
\par \cf2\strike SutraGUI Configuration\cf3\strike0\{linkID=332\}\cf0 
\par \cf2\strike Problem\cf3\strike0\{linkID=335\}\cf0 
\par \cf2\strike Parameter Values - Quick Set\cf3\strike0\{linkID=340\}\cf0\f1 
\par }
150
Scribble150
About Pane



general:000250
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 About Pane
\par \cf0\b0\f1\fs24 
\par \pard\fi720 The \b About \b0 pane provides information about the current version of \b SutraGUI \b0 and information about SUTRA and Argus ONE documentation.  Clicking on a URL in the \b About \b0 pane will activate the default web browser and cause it to load the URL that was clicked. \f2 
\par }
160
Scribble160
Model Configuration



general:000260
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Model Configuration
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The \b Model Configuration \b0 pane allows the user to do the following:
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 choose the type of simulation problem to be solved with SUTRA, 
\par {\pntext\f4\'B7\tab}set up \b SutraGUI \b0 to include the appropriate geospatial information layers, and 
\par {\pntext\f4\'B7\tab}set names of layers and parameters to be appropriate for the chosen problem type. 
\par \pard\fi720\sb120 For example, an areal problem using head will include an information layer called \b Hydraulic Conductivity \b0 and refer to "Hydraulic Head" whereas a cross-sectional problem with variable-density fluid will have a layer called \b Permeability \b0 and refer to "Pressure".  An unsaturated problem will include an information layer called \b Unsaturated Properties \b0 but a saturated-only problem will not have such an information layer.
\par The SUTRA code solves general equations for flow and transport allowing much flexibility in problem type.  This is reflected in the choices available in the SUTRA Configuration pane.  Internally, the SUTRA code works with its original set of variables, pressure and permeability, but for the model setup, \b SutraGUI \b0 can translate these into the simpler quantities hydraulic head and hydraulic conductivity for ease of use.  Should the user prefer to work with the original SUTRA variables, and have access to all possible information layers for SUTRA at once, the "General" option should be selected.  Should the user prefer to configure \b SutraGUI \b0 for a certain type of problem, the "Specific" option should be selected.  This makes available a set of choices to the user in the lower portion of the window, allowing the user to specify the problem type, and the type of meshing. \f2 
\par \pard 
\par \cf2\strike\f3 Orientation of Model\cf3\strike0\{linkID=170\}\cf0 
\par \cf2\strike Flow Conditions\cf3\strike0\{linkID=180\}\cf0 
\par \cf2\strike Transport Conditions\cf3\strike0\{linkID=190\}
\par \cf2\strike Model Thickness\cf3\strike0\{linkID=200\}
\par \cf2\strike Type of Meshing\cf3\strike0\{linkID=210\}
\par \cf2\strike Inverse Modeling\cf3\strike0\{linkID=215\}
\par \cf0 
\par 
\par }
170
Scribble170
Orientation of Model



general:000270
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Orientation of Model
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 There are four possible orientations of a model:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 AREAL 
\par {\pntext\f3\'B7\tab}CROSS-SECTIONAL OR DIPPED
\par {\pntext\f3\'B7\tab}THREE-DIMENSIONAL MODEL (VERTICALLY ALIGNED)
\par {\pntext\f3\'B7\tab}THREE-DIMENSIONAL MODEL (NONALIGNED)
\par \pard\fi720\sb120 
\par \b AREAL \b0 models are 2D, perfectly horizontal models for constant-density solute transport under saturated conditions (for example, used for typical contaminant plume problems or tracking of natural tracers).
\par \b CROSS-SECTIONAL OR DIPPED\b0  models are 2D, vertical cross-sectional models, or non-horizontal models that potentially allow unsaturated conditions with variable-density solute or energy transport.  The gravity vector components in such non-horizontal models can be non-zero, in contrast with \b AREAL \b0 models, in which gravity components are always set to zero.  The gravity components for \b CROSS-SECTIONAL OR DIPPED\b0  models would be set to zero if the user is solving for hydraulic head, rather than pressure.
\par \b THREE-DIMENSIONAL MODEL (VERTICALLY ALIGNED)\b0   models are 3D models in which the X and Y coordinates of all the nodes in each layer of the mesh are at the same X and Y coordinates as the corresponding nodes in all the other layers.  
\par \pard\fi720\b THREE-DIMENSIONAL MODEL (NONALIGNED)\b0  models are 3D models in which the X and Y coordinates of all the nodes in each layer of the mesh need not be at the same X and Y coordinates as the corresponding nodes in one or more of the other layers.  However, the number of nodes and elements and their pattern of connectivity is the same for all layers, as these are for the \b VERTICALLY ALIGNED\b0  meshes.  
\par \pard 
\par \f2 
\par 
\par }
180
Scribble180
Flow Conditions



general:000280
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Flow Conditions
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The flow conditions in a model may be either \b SATURATED \b0 or \b SATURATED-UNSATURATED\b0 . 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 In \b SATURATED \b0 models, only saturated conditions are allowed. 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920 In \b SATURATED-UNSATURATED \b0 models, unsaturated conditions can potentially occur in the model.  Saturated-unsaturated conditions are used specifically for problems of unsaturated flow and transport.\f2 
\par \pard 
\par 
\par }
190
Scribble190
Transport Conditions



general:000290
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Transport Conditions
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 Transport conditions in a SutraGUI model may be any of the following:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\b SOLUTE (Variable-density fluid, using Pressure)\b0 .  This is for transport problems where solute concentrations affect fluid density.  (For example, this can be used for typical saline fluid-intrusion problems or flow near salt domes.)
\par \b{\pntext\f3\'B7\tab}SOLUTE (Constant-density fluid, using Hydraulic Head)\b0 . This is for transport problems where solute concentrations do not affect fluid density.  (For example, this can be used for typical contaminant plume problems.)
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920\b ENERGY (Variable-density fluid, using Pressure)\b0 . This is for transport problems where temperature changes are to be tracked in the subsurface and where temperature potentially affects fluid density.  (For example, it can be used for hydrothermal convection problems, tracking seasonal surface-water recharge, or aquifer energy storage.)\f2 
\par \pard 
\par }
200
Scribble200
Model Thickness



general:000300
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Model Thickness
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 Model thickness is only used for 2D models.
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 If \b USER-SPECIFIED \b0 is selected, the user must specify the model thickness in a geospatial information layer.  The thickness may be constant or variable.  If, conceptually, a thickness is not required, the user should enter a uniform thickness such as 1.
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920 If \b CYLINDRICAL \b0 is selected, model thickness is automatically set such that a radial cross-sectional flow field is obtained.  Cylindrical thickness is used for vertical cross sectional simulations only.  Thickness at each SUTRA Mesh node is automatically set to 2\u960?X, where X is the radius (the X-coordinate, must be positive or zero) of the node.  Most often, the left edge of a cylindrical model would be a vertical line at X = 0, although this is not a requirement.\f2 
\par \pard 
\par 
\par }
210
Scribble210
Type of Meshing



general:000310
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Type of Meshing
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 Two types of mesh are permitted by SutraGUI: \b FISHNET \b0 and \b IRREGULAR\b0 .
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 With \b FISHNET \b0 meshing, the mesh consists of superblocks (large contiguous quadrilaterals) each subdivided into a specified number of rows and columns of quadrilateral finite elements.  The mesh is created by \b SutraGUI \b0 and not by Argus ONE.  Detailed instructions for creating such meshes may be found in the section describing the SUTRA Model layer, "\cf2\b\strike FishNet_Mesh_Layout\cf3\b0\strike0\{linkID=1400\}\cf0 ."  
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920 With \b IRREGULAR \b0 meshing, the mesh consists of irregularly connected quadrilateral elements created by Argus ONE's quadrilateral meshing engine.  Irregular meshes, which previously could only be used with 2D models, can now be used both with 2D and 3D models.\f2 
\par \pard 
\par 
\par }
215
Scribble215
Inverse Modeling



general:000315
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\fs32 Inverse Modeling\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Supports for inverse modeling is not currently implemented in SutraGUI.  However, SutraGUI does support the generalized observations (observations at arbitrary locations and times) required for inverse modeling.  To use generalized observations, the user specifies the maximum number of observation times at any one location in \b Number of generalized observation times\b0 . 
\par The controls related to inverse modeling are hiddne pending completion of support for inverse modeling.in SutraGUI.
\par }
220
Scribble220
Headings
TITLE1;TITLE2;SIMULA


general:000320
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Headings
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\f2 On the \b Headings \b0 pane, two lines of text may be specified that will be used as the title on most SUTRA output files: "lst", "nod", "ele" and "obs".  
\par \pard\fi720 There is also a text field that may be used to record a description of the project.  However, this description is never exported to the SUTRA input files and only appears within \b SutraGUI\b0 .\f1 
\par \pard 
\par See also:
\par \cf1\strike\f3\fs20 DATASET 1:  Output Heading\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=239")\}\cf0\f2\fs24 
\par \f1 
\par 
\par }
230
Scribble230
Structure in Z (3D Only)



general:000330
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Structure in Z (3D Only)\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\f2 The \b Structure in Z\b0  pane is only available for 3D models.  It is used to control the number of model units in the Z-direction and the discretization and vertical spacing within each unit in the Z-direction.  Most often in a 3D model, each unit will be a hydrogeologic unit and the Z-direction will be the vertical direction (vertically upwards).  
\par The \b Name\b0  is provided for the convenience of the user in identifying how Units in SutraGUI relate to the aquifers being modeled.
\par The \b Z Discretization\b0  is the number of elements in the vertical direction used to simulate a particular unit.
\par The \b Element growth rate\b0  and \b Growth type\b0  control how the vertical size of elements will change within a unit.  For example if \b Growth type \b0 is \b Grow downward\b0 , each successively lower element within a unit will be the size of the one above it times the \b Element growth rate\b0 .  Of course, this does not apply to the uppermost element within a unit.  For example if the thickness of a unit is 1, the vertical discretization is 2 and the element growth rate is 1.5. The upper element within the unit will have a thickness of 0.4 and the lower one will have a thickness of 0.6 (= 0.4 * 1.5).  The element growth rate typically varies between 0.67 to 1.5.  The element growth rate only has an effect if the discretization is greater than 1.
\par The number of units can be changed either by changing the number displayed in the edit box labeled \b Number of units\b0  or by clicking on the \b Delete\b0 , \b Insert\b0 , or \b Add \b0 buttons.  Clicking the \b Add \b0 button will add one unit at the bottom of the layer structure.  Clicking the \b Delete \b0 button will delete the selected unit.  Clicking the \b Insert \b0 button will insert a unit above the selected unit.  Units can also be renamed.
\par \pard\fi720 Once the mesh has been created as described in the "\cf2\b\strike SUTRA Mesh (Top/Bottom Unit[i])\cf3\b0\strike0\{linkID=1060\}\cf0 " section of this report, the number of nodes and number of elements are displayed in a status bar at the bottom of the\b  Structure in Z\b0  pane.\f1 
\par }
235
Scribble235
3D Surfaces and Objects (3D Only)



general:000340
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 3D Surfaces and Objects (3D Only)\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\f2 The \b 3D Surfaces and Objects\b0  pane is only available for 3D models.  This pane allows the user to select the types of boundary condition, source and observation information layers that appear in the 3D project and are thus available to the user.  These information layers have two primary types in 3D: 1- 'In-Surfaces' - layers that will allow boundary conditions, sources or observations to be specified exactly within the model top or within the bottom surfaces of units, and 2- '3D Objects' - layers that will allow boundary conditions, sources or observations to be specified within certain geometric shapes (listed below) that may be placed anywhere in the 3D model domain and the space surrounding it.  Thus, the user may choose to specify boundary conditions, sources, or observations in two ways: those that occur exactly on the top or bottom surfaces of units, and those that occur (as 3D objects) anywhere in the 3D model domain.
\par '3D Objects' - Boundary conditions, sources, and observations that are not exactly located on the top or bottom surfaces of units may be specified as any of five types of 3D objects, \cf2\b\strike points\cf3\strike0\{linkID=60\}\cf0\b0 , \cf2\b\strike lines\cf3\strike0\{linkID=70\}\cf0\b0 , \cf2\b\strike vertical sheets\cf3\strike0\{linkID=80\}\cf0\b0 , \cf2\b\strike slanted sheets\cf3\strike0\{linkID=80\}\cf0\b0 , and \cf2\strike solids\cf3\strike0\{linkID=90\}\cf0  (for example, points, lines and solids may be used to represent wells).  The table on the upper half of the pane allows the user to select the number of Argus ONE layers for each type of object and each type of condition.  The table lists the type of 3D object in separate columns and the type of condition to specify in separate rows.  The user should specify the number of the Argus ONE layers to be created for each object in the appropriate cell of the table.  The layers appear in Argus ONE after \b OK \b0 is clicked.  The layers may be removed by specifying the value, '0', and the number of layers can be changed at any time.  \ul Information in removed layers is lost.
\par \pard\li720\sb120\ulnone\i Note: The reason for possibly needing multiple Argus ONE layers for the same 3D object is as follows.  Argus ONE allows the user to draw the location of a 3D object only in 2D map view.  Argus ONE does not allow contours describing objects to overlap.  If the same condition is required at various Z coordinates, but the objects overlap when seen in map view, each overlapping object must be defined in its own Argus ONE layer to avoid overlap in any layer.\i0   
\par \pard\fi720\sb120 'In-Surfaces' - The lower half of the pane concerns boundary conditions, sources, and observations that are located exactly within the top or bottom surfaces of units (for example, recharge at the top of the model, in the \cf2\b\strike Sources of Fluid Top\cf3\strike0\{linkID=1700\}\cf0\b0  layer).  The tree control in the lower half of the pane has a list of units.  Within each unit, there is a list of the Argus ONE layers that can appear on the top or bottom of the unit.  These layers allow the user to specify boundary conditions, sources, and observations on the tops or bottoms of units.  The list of layers may be displayed by clicking the plus sign next to the unit.  If the check box next to a layer name is checked, an Argus ONE layer with that name will be included in Argus ONE layer structure after \b OK \b0 button is clicked.  These layers can be removed from the Argus ONE layer structure by unchecking the check box.  Information in removed layers is lost. 
\par \pard\keep\li720\sb120\i  Note: Each unit in a 3D SUTRA model has an upper and lower surface.  Each of these surfaces need not be a horizontal plane, and may vary in elevation along the surface.  The top of each unit is exactly the same surface as the bottom of the unit above it.  Because of this, the complete list of Argus ONE layers includes only the bottoms of all units and  the top of the uppermost unit (the top of the model domain).\i0 
\par \pard\li720\i 
\par \pard\cf4\i0 See also: \cf2\strike Three-Dimensional Models\cf3\strike0\{linkID=55\}\cf0 
\par }
240
Scribble240
Modes, Numerical Controls
CUNSAT;CSSFLO;CSSTRA;CREAD;UP;GNUP;GNUU


general:000350
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\fnil Times New Roman;}{\f4\froman Times New Roman;}{\f5\fnil Courier New;}{\f6\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Modes, Numerical Controls
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The \b Modes, Numerical Controls\b0  pane contains two parts: \b Simulation Mode Options\b0 , and \b Numerical Control Parameters\b0 .
\par \pard\fi720\sb240\sa60\b\fs28 Simulation Mode Options\b0\fs24 
\par \pard\fi720\sb120 Each of the boxes in \b Simulation Mode Options\b0  allows selection of one the following:
\par \pard{\pntext\f6\'B7\tab}{\*\pn\pnlvlblt\pnf6\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 steady-state flow and steady-state transport, or steady-state flow and transient transport, or transient flow and transient transport, 
\par {\pntext\f6\'B7\tab}cold or warm start.  (If a warm start has been selected, there will also be an edit box visible in which the user may select the restart file.)  If the user has chosen either to read nor interpolation initial conditions from the restart file (\cf2\strike Initial Condition Controls\cf3\strike0\{linkID=255\} \cf0 pane), the warm start option will not be available.
\par \pard\fi720\sb120 Some options may be disabled depending on the options specified on the \cf2\b\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0\b0  pane.
\par \pard\fi720\sb240\sa60\b\fs28 Numerical Control Parameters\b0\fs24 
\par \pard\fi720\sb120 The controls in the \b Numerical Control Parameters\b0  box allow setting the upstream weight and boundary-condition factors for specified pressure, hydraulic head, concentration or temperature.  Ideal selection of the GNUP will cause the simulated pressure to match specified values of pressure at the boundaries to match to six or seven decimal places.  Ideal selection of the GNUU will do the same for temperature or concentration.  If the simulated and specified values match more closely than that, the flux at the boundary node may not be calculated with sufficient precision.  (The reader is referred to Voss and Provost, 2002, for more information.)
\par \pard\li720\sb120\i Note: The \b CheckMatchBC \b0 program distributed with \b SutraGUI \b0 may be used to judge whether these criteria have been met after running SUTRA.  (The reader is referred to Appendix B.)\i0 
\par \pard\fi720\sb120 The fractional upstream weight (UP) can be used to help control oscillations in the SUTRA transport solution.  (The reader is referred to \cf2\strike Voss and Provost, 2002\cf3\strike0\{linkTarget=Voss02\}\cf0 , for more information.)\f2 
\par \pard\cf4\f3 
\par \cf0\f4 
\par See also:
\par \cf1\strike\f5\fs20 DATASET 4:  Simulation Mode Options\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=245")\}\cf0\f4\fs24 
\par \cf1\strike\f5\fs20 DATASET 5:  Numerical Control Parameters\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=247")\}\cf0\f4\fs24 
\par }
250
Scribble250
Temporal Controls
ITMAX;DELT;TMAX;ITCYC;DTMULT;DTMAX;NPCYC;NUCYC;TSTART


general:000360
Writing



FALSE
24
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Temporal Controls
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Temporal Controls\b0  pane is only available if either flow or transport is \cf2\strike transient\cf3\strike0\{linkID=240\}\cf0 .  The controls in the \b Temporal Control and Solution Cycling Data\b0  pane determine the duration of the simulation, the size of the time steps, and the cycling of flow and transport solutions and the starting time of the simulation.
\par 
\par The \b Time Units\b0  for the model can be set to seconds, minutes, hours, days, months and years.  For the purposes of SutraGUI, a year is exactly 365.25 days and a month is on twelfth of a year.  Where a variable with units of time are specified in SutraGUI, that variable will be converted to seconds in the SUTRA input file because SUTRA only recognizes seconds as a time unit. \f2 
\par \pard 
\par \pard\fi720\b\f1 Simulation Starting Time\b0  is the elapsed time at which the initial conditions for simulation are specified.  For a cold start, this is usually 0 but it may also be set to a particular starting year (specified in the selected time units).  Argus ONE writes this value to the SUTRA input data set.
\par \pard\f2 
\par \pard\fi720\f3 The times specified in SutraGUI may be either \b ABSOLUTE\b0  or \b ELAPSED\b0 .  With Elapsed time, the the starting point of the model is considered to be time zero whereas with Absolute time, time zero is at an arbitrary time.\f2 
\par \pard 
\par \pard\fi720\f3 There are two methods of specifying the number of time steps and their lengths in SUTRA, a \b Time Cycle\b0  and a \b Time List\b0 . 
\par \pard 
\par \pard\fi720\f1 With a \b\f3 Time Cycle\b0  the total duration of the model is limited either by \b NTMAX \b0 or \b TIMEL\b0 . The user also specifies an initial time step size (\b TIMEC\b0 ).  If the user specifies a time step multiplier (\b TCMULT\b0 ) greater than 1, the time step size will increase by a factor of \b TCMULT\b0  every time a time step change cycle (\b NTCYC\b0 ) is completed until the maximum time step size (\b TCMAX\b0 ) is reached.  If the user specifies a time step multiplier (\b TCMULT\b0 ) less than 1, the time step size will decrease by a factor of \b TCMULT\b0  every time a time step change cycle (\b NTCYC\b0 ) is completed until the minimum time step size (\b TCMIN\b0 ) is reached.
\par 
\par With a \b Time List\b0 , the user specifies the number of time steps and the ending time of each time step.  (The times schedule that is exported will also include a zero as the starting time of the first time step.)  The user can specify the ending times by typing them individually into the table or by copying the times in a block from a spreadsheet program and pasting them into the table.\f2 
\par \pard 
\par \pard\fi720\f3 SUTRA does not have to calculate both the pressure solution and the temperature/concentration solution at every time step.  One or the other can be simulated less frequently.  \b NPCYC\b0  and \b NUCYC\b0  are used to control which (if either) is simulated less frequently.  However, at least one of them must be set to one.\f2 
\par \pard 
\par See also:
\par \cf1\strike\f4\fs20 DATASET 6:  Temporal Control and Solution Cycling Data\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=248")\}\cf0\f2\fs24 
\par 
\par }
255
Scribble255
Initial Condition Controls



general:000370
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Condition Controls\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\f2 The controls on the \b Initial Condition Controls\b0  pane allow users to specify how to use SUTRA restart files as initial conditions for a simulation.
\par 
\par The radio buttons under \b Read initial conditions from restart file\b0  determine how the restart file will be used.  By default, the file is not read.  The user may select to read the pressure, concentration (or energy), or both from the restart file.  When initial conditions are read from the restart file, the information in the respective Argus ONE initial conditions information layer is ignored when preparing the SUTRA input files.
\par For 3D models, the user also has the option of interpolating pressure and/or concentration (or energy) results from a simulation on a previously used mesh for use as initial conditions for a new mesh.  Finite-element basis functions (equivalent to those used in SUTRA) are used for interpolations to locations that are inside the old mesh.  For locations outside the old mesh, the average value at the four nearest nodes in the old mesh is used.  Generally, this option would be used to set the initial conditions after refining the mesh.  It may require a long execution time by \b SutraGUI\b0 .
\par \pard\fi720 For 2D models, a similar effect can be accomplished by using an Argus ONE expression to link the initial conditions to data imported into Argus ONE in the process of creating a contour map or other post-processing chart, although Argus ONE interpolation, rather than finite-element interpolation would be used in this case.
\par In 3D models, the layers \cf2\strike Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i]\cf3\strike0\{linkID=2265\}\cf0  and \cf2\strike Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i]\cf3\strike0\{linkID=2275\}\cf0  can be used to override values read or interpolated from the restart file. These layers will be created if the \b Allow pressure to be overridden\b0  or \b Allow concentration to be overridden\b0  checkboxes are checked.\f3 
\par \pard 
\par \cf1\strike\f4\fs20 DATASET 1:  Simulation Starting Time\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=277")\}\cf0\f1\fs24 
\par }
260
Scribble260
Output Controls
NPRINT;NCOLPR;LCOLPR;NOBCYC;K5COL;K6COL;CNODAL;CELMNT;CINCID;CVEL;CBUDG;ISTORE


general:000380
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil Courier New;}{\f4\fnil\fcharset0 Courier New;}{\f5\froman\fcharset0 Times New Roman;}{\f6\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Output Controls
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The controls under \b Output Controls\b0  allow control of the frequency with which output is produced and control what type of output is generated.
\par \pard\fi720 If the result of the present simulation is intended for use as an initial condition in a future simulation, the \b Save for Restart Option\b0  can be used to control the frequency with which data for the initial conditions will be stored.\f2 
\par \pard 
\par See also:
\par \pard{\pntext\f6\'B7\tab}{\*\pn\pnlvlblt\pnf6\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf1\strike\f3\fs20 DATASET 8A: Output Controls and Options for ".lst" (Main Output) File (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=25\f4 5\f3 ")\}\cf3\f5\fs24 
\par \cf1\strike\f3\fs20{\pntext\f6\'B7\tab}DATASET 8B:  Output Controls and Options for ".nod" File (Node-wise Results Listed in Columns) (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=25\f4 6\f3 ")\}\cf3\f5\fs24 
\par \cf1\strike\f3\fs20{\pntext\f6\'B7\tab}DATASET 8C:  Output Controls and Options for ".ele" File (Velocities at Element Centroids Listed in Columns) (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=25\f4 7\f3 ")\}\f5\fs24 
\par \cf1\strike\f3\fs20{\pntext\f6\'B7\tab}DATASET 8D:  Output Controls and Options for ".obs" File (Observation Node Results Listed in Columns) (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=258")\}\cf3\f5\fs24 
\par \pard\cf0\f2 
\par }
270
Scribble270
Iterations for Nonlinearity
ITRMAX;RPMAX;RUMAX


general:000390
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Iterations for Nonlinearity
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 The radio buttons on the \b Iterations for Nonlinearity\b0  pane control iterations for nonlinearities in the system, such as in nonlinear sorption, energy transport, variable-density transport, and unsaturated models.  
\par \pard\f1 
\par See also:
\par \cf1\strike\f3\fs20 DATASET 7A:  Outer (Nonlinearity) Iteration Controls (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=253")\}\cf0\f1\fs24 
\par }
280
Scribble280
Solver Controls
CSOLVP;ITRMXP;ITOLP;TOLP;NSAVEP;CSOLVU;ITRMXU;ITOLU;TOLU;NSAVEU


general:000400
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Solver Controls\cf0\b0\f1\fs24 
\par 
\par \f2 The radio buttons on the \b Solver Controls \b0 pane are used to determine the type of matrix-equation solver for the pressure (or head) and solute (or energy) solution.  They allow a choice of using a noniterative (direct) or iterative matrix-equation solver.  If an iterative solver (CG, GMRES, or ORTHOMIN) is selected, the iteration-control parameters must be entered.  \f1 
\par 
\par See also:
\par \cf1\strike\f3\fs20 DATASET 7B:  Matrix Solver Controls for Pressure Solution\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=253")\}\cf0\f1\fs24 
\par \cf1\strike\f3\fs20 DATASET 7C: Matrix Solver Parameters for Transport Solution\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=254")\}\cf0\f1\fs24 
\par }
310
Scribble310
Fluid Properties
COMPFL;CW;SIGMAW;RHOWØ;URHOWØ;DRWDU;VISCØ


general:000410
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Fluid Properties
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 On the \b Fluid Properties\b0  pane, values are entered for the properties of the fluid and for the parameters describing the linear dependence of density on concentration or temperature.\f2 
\par \pard 
\par See also:
\par \cf1\strike\f3\fs20 DATASET 9:  Fluid Properties (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=260")\}\cf0\f2\fs24 
\par }
320
Scribble320
Solid Matrix, Adsorption
COMPMA;CS;SIGMAS;RHOS;ADSMOD;CHI1;CHI2


general:000420
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Solid Matrix, Adsorption
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 Under \b Solid Matrix Properties\b0 , the user enters values for the properties of the solid matrix.
\par \pard\fi720 Under \b Adsorption Parameters\b0  the user may choose the equilibrium adsorption isotherm: \b NONE\b0 , \b LINEAR\b0 , \b LANGMUIR \b0 or \b FREUNDLICH\b0 .  Depending on the isotherm selected, zero, one, or two additional parameters defining the isotherm must be specified.\f2 
\par \pard 
\par See also:
\par \cf1\strike\f3\fs20 DATASET 10:  Solid Matrix Properties (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=261")\}\cf0\f2\fs24 
\par \cf1\strike\f3\fs20 DATASET 11:  Adsorption Parameters (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=261")\}\cf0\f2\fs24 
\par }
330
Scribble330
Production, Gravity
PRODFØ;PRODSØ;PRODF1;PRODS1;GRAVX;GRAVY;GRAVZ


general:000430
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Production, Gravity
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 Under \b Production of Energy or Solute\b0 , the user enters values for the zero-order and first-order production rates.
\par \pard\fi720 Under \b Gravity Vector\b0 , the user enters values for the X and Y components and additionally for 3D, the Z components of the gravity vector.\f2 
\par \pard 
\par See also:
\par \cf1\strike\f3\fs20 DATASET 12:  Production of Energy or Solute Mass (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=262")\}\cf0\f2\fs24 
\par \cf1\strike\f3\fs20 DATASET 13: Orientation of Coordinates to Gravity (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=262")\}\cf0\f2\fs24 
\par }
332
Scribble332
SutraGUI Configuration



general:000440
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SutraGUI Configuration\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 In the \b SUTRA Path \b0 edit box, the user specifies the full path of the SUTRA program.  A \b Browse\b0  button next to the edit box can be used to select the full path of the SUTRA program interactively.
\par \pard\fi720\b Load/Save Default Initial Values for SUTRA Project Information\b0  is for advanced users only and deals with the ".val" file.  This file contains information about all the controls in the \b SUTRA Project Information \b0 dialog box.  If the user clicks on the \b Save Val File \b0 button and uses the default file name and location, a file will be created with the extension ".val."  When any new SUTRA models are started within Argus ONE, this file is read and the same options for the SUTRA Project Information are set in the new model.  If the user clicks on the \b Save Val File \b0 button and does not use the default file name and location, the ".val" file is not used to set the defaults for all future models.  However, the file can then be opened by clicking the \b Open Val File \b0 button and selecting the file.  The file is then used to set all the defaults in the current model.
\par }
335
Scribble335
Problem



general:000450
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Problem\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 The \b Problem\b0  pane only appears if the \b SutraGUI\b0  encounters a problem reading a file.  If this pane appears, the best thing to do is to close the model \i without saving it\i0  and contact technical support at \cf1\strike rbwinst@usgs.gov\cf2\strike0\{link=*! ExecFile("mailto:rbwinst@usgs.gov")\}\cf0  (as of 2004).
\par }
340
Scribble340
Parameter Values - Quick Set



general:000460
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Parameter Values - Quick Set\cf0\b0\f1\fs24 
\par \f2 
\par \pard\fi720\sb120 The \b Parameter Values - Quick Set\b0  button at the bottom of the \b SUTRA Project Information\b0  dialog box opens a separate dialog box that is used to set the values of Argus ONE parameters quickly without entering the Argus ONE Layers dialog box.  This is convenient, particularly when the same value has to be set for a given parameter in many units in a 3D model (for example, hydraulic conductivity).  For new models (before the \b SUTRA Project Information \b0 dialog box is exited the first time by clicking \b OK\b0 ), the value that is entered is the value that will be used.  For existing models, it is necessary to click on the \b Set Now \b0 button to the left of the appropriate edit box to set the parameter value.  The \b Set Now \b0 button will appear in \b bold text \b0 indicating that it needs to be clicked in order to set the value, and after clicking, the text reverts to the normal font. 
\par \pard\li720\i Note: It is possible to use Argus ONE expressions, rather than numbers, as values in the boxes.  It is advisable to create the expression within the Argus ONE Expression editor for a parameter (found in the Layers dialog) so that the expression has correct syntax, and then copy it into the desired box of the \b Parameter Values - Quick Set \b0 pane.  Incorrect values entered in the \b Parameter Values -Quick Set \b0 pane will appear as expressions in the Layers dialog box and will give incorrect results.  The reader is referred to the Argus ONE User's Guide (Argus Interware, 1997) and Winston (2001) for methods of setting parameter Expressions.\i0\f1 
\par }
1000
Scribble1000
The Argus ONE Window and Argus ONE Layers



general:000470
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 The Argus ONE Window and Argus ONE Layers\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 Following exit from the \b SUTRA Project Information \b0 dialog box, described above, the standard Argus ONE window appears.  This window contains many controls for the user environment, and these are all described in the Argus ONE documentation.  Only controls that are specifically related to use of the interface for SUTRA simulations are described in this report.
\par At this point, there will actually be two overlaid windows, the original "Untitled" window, and a new "Untitled1" window that contains the layer structure for a SUTRA model.  The user may wish to close or minimize the original "Untitled" window so as not to confuse the two.
\par For convenience, the new "Untitled1" window may be maximized to full screen by clicking the maximize button containing an upward pointing triangle in the upper-right corner of the window.  The appearance of this button may vary depending on the operating system being used.
\par Prior to creating or importing information in geospatial information layers, the user should decide on and possibly specify the drawing size of the workspace, and the scale and units of the modeling project.  These project parameters can also be changed automatically when importing information that extends beyond the specified ranges.
\par This information can be entered from the \i Drawing Size...\i0  and \i Scale and Units...\i0  commands in the \i Special \i0 pull-down menu found along the top of the Argus ONE window.  
\par \pard\keep\li720\sb120\i Note: the view of the workspace may be exaggerated or reduced in either direction by selecting Non-uniform: in the Scale and Units dialog box.  This is often required for cross-sectional models.  Note that this also affects the shape of elements generated in an irregular mesh.\i0 
\par \pard\fi720\sb120\b SutraGUI \b0 assumes that all data are referenced to the same reference elevation or datum.  For areal problems, the datum is arbitrary.  For cross-sectional problems, the datum is given by the coordinate system selected by the user in the \i Scale and Units...\i0  commands in the \i Special \i0 pull-down menu along the top of the Argus ONE window.  For 3D problems, the X and Y coordinate plane, as viewed on the monitor, may be oriented in any direction in space.  However, for most problems, it is recommended that X be directed east, Y north, and Z outward from the screen, representing elevation.
\par \pard\fi720 The Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ) provides information on setting attributes in the dialog boxes that appear when the above commands are used.
\par }
1010
Scribble1010
Saving and Retrieving Projects



general:000480
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Saving and Retrieving Projects\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The nonspatial information for the SUTRA simulations and all information entered into the geospatial information layers in Argus ONE are saved by using the \i Save \i0 or \i Save As... \i0 command in the \i File \i0 menu along the top of the Argus ONE window.
\par The default extension for the Argus ONE saved project file names is ".mmb."
\par Starting Argus ONE and opening an existing project file containing SUTRA simulation information (by selecting \i Open \i0 in the \i File \i0 menu) will retrieve all of the nonspatial project information into the \b SUTRA Project Information \b0 dialog box and all of the geospatial information into Argus ONE layers that was entered previously.  This returns the user to the same state as when the project was saved.
\par \pard\fi720 Saving the project after exiting the \b SUTRA Project Information \b0 dialog box and saving regularly during input or edit of geospatial information is a good practice that will protect the user from the need to re-enter data in case of user errors or system problems.
\par }
1020
Scribble1020
Layers' Floater Window



general:000490
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Layers' Floater Window\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \i Layers' Floater\i0  window, which displays a list of available GIS coverages (layers) for the chosen type of SUTRA simulation, may be displayed by clicking on the Layers... button along the top of the window.  This window is referred to in the Argus documentation as the "\i Layers' Floater\i0 " (fig. 12).
\par 
\par \cf2\{bmc LayersFloater.BMP\}\cf0 
\par \b Figure \lang1024 12\lang1033 .  Layers' Floater window
\par \pard\fi720\sb120\b0 The \b Layers' Floater\b0  may be resized to show all of the available layers by dragging and stretching the window from one of the lower corners with the mouse.  The window may be moved to cover the unneeded gray area that may appear (depending on the size of Argus work area and on whether screen resolution is high enough) on a side of the Argus ONE window by holding down the mouse button on the top bar and dragging it to this location.
\par The \i Layers' Floater\i0  organizes the available coverages into groups or sublists including: SUTRA Model layers, various Geospatial Information layers, and Map or Point Data layers.  These are described in detail in the next section "\cf3\strike Specifying Spatial Data / Layer Descriptions\cf2\strike0\{linkID=1030\}\cf0 ."  The Layer List window also shows the interpretation type (as described in Argus ONE User's Guide (\cf3\strike Argus Interware, 1997\cf2\strike0\{linkTarget=ArgusInterware\}\cf0 )).
\par Opening the list allows the user to see all available layer names within any group.  To open or close groups, click on the triangle to the left of the group name.  To close an expanded list, click again on the same triangle.
\par The "eye" icon \cf2\{bmc EyeOpen.bmp\}\cf0  to the left of a layer name in the Layer List window indicates whether a layer is visible.  To toggle the visibility of a layer, click on the "eye" icon.  
\par A check mark to the left of a layer name indicates that the layer is the active layer: the layer that receives input from the user.  To make a layer active, click in the empty space where the check mark would be.  Only one layer can be active at a time.\f2 
\par \pard\fi720\f1 
\par }
1030
Scribble1030
Specifying Spatial Data / Layer Descriptions



general:000500
Writing



FALSE
22
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specifying Spatial Data / Layer Descriptions\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The arrangement of layers in the SutraGUI list of layers is different in 2D models than it is in 3D models.  The following sections describe the arrangement of layers in each.  
\par After introducing each parameter in the following sections, units are given for the parameter in square brackets; for example, for \b Permeability.maximum\b0 , the units are given as [L^\super 2\nosupersub ] representing arbitrary length-units squared.  Table \lang1024 5\lang1033  shows units used and displayed in the GUI with their meanings.
\par \pard\fi720\sb120\sa120\b Table \lang1024 5\lang1033 .  Unit Abbreviations and Unit Meaning\f2 
\par \trowd\trgaph108\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx2390\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx6300\pard\intbl\f1 Unit Abbreviations\cell Unit Meaning\cell\row
\trowd\trgaph108\clbrdrt\brdrw15\brdrs \cellx2390\clbrdrt\brdrw15\brdrs \cellx6300\pard\intbl\b0 [C]\cell any consistent concentration units\cell\row
\trowd\trgaph108\cellx2390\cellx6300\pard\intbl [degC]\cell Celsius degrees\cell\row
\intbl [degrees]\cell angle in degrees\cell\row
\intbl [E]\cell any consistent energy units\cell\row
\intbl [L]\cell length units\cell\row
\intbl [M]\cell mass units\cell\row
\intbl [s]\cell seconds (time)\cell\row
\intbl [T]\cell temperature (Celsius)\cell\row
\intbl [1]\cell unitless, like porosity\cell\row
\intbl [1,0]\cell true or false\cell\row
\trowd\trgaph108\clbrdrb\brdrw15\brdrs \cellx2390\clbrdrb\brdrw15\brdrs \cellx6300\pard\intbl x^2, y^3\cell x quantity squared, y quantity cubed\cell\f2\row
\pard\fi720\sb180\f1 Parameter names such as \b RESULTANT_FLUID_SOURCE\b0 , that are uppercase are calculated or linked to other layer parameters.  These should not be modified directly.  Modifications to such parameters can be done by changing the lowercase parameters of the layers.  Advanced users who understand the functions or references in these parameters may modify them to suit specific modeling needs.  New users should consider parameters with uppercase names as "read-only" variables.  Appendix 1, "\cf2\strike Adding and Linking New Layers\cf3\strike0\{linkID=2380\}\cf0 ," explains how to add new layers and link the information from these layers into a SUTRA project.
\par \pard\fi720 Depending on the choice of problem type made by the user in the \cf2\b\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0\b0  pane, some of the layer and parameter names and the units of the parameters will vary.  All of the possibilities are included in the descriptions that follow.
\par }
1040
Scribble1040
Two-Dimensional Models



general:000510
Writing



FALSE
75
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Two-Dimensional Models
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The arrangement of layers in 2D models (Table \lang1024 6\lang1033 ) is similar to that used in Voss and others (1997).  The Information layers for \b SutraGUI \b0 for 2D models are grouped in the Argus ONE \i Layers' Floater \i0 by general type: \b SUTRA MODEL\b0 , \b Hydrogeology\b0 , \b Hydrologic Sources\b0 , \b Hydrologic Boundaries\b0 , \b Initial Conditions\b0 , and \b Map or Point Data\b0 .  
\par \pard\sb120\sa120\b Table \lang1024 6\lang1033 .  SutraGUI Layer Structure for Two-Dimensional Models
\par \pard\sb120\f2 Layer Name
\par \b0\f1 SUTRA MODEL group 
\par \pard\li720\sb120 SUTRA Mesh
\par FishNet_Mesh_Layout
\par Domain Outline
\par Mesh Density
\par Observation
\par UCODE Pressure/Head Observation
\par UCODE Concentration/Temperature Observation
\par UCODE Observation Fluid Flow Rate at Spec H/P
\par UCODE Observation Solute/Heat Flow Rate at Spec H/P
\par \pard\sb120 Hydrogeology group 
\par \pard\li720\sb120 Thickness
\par Porosity
\par Permeability/Hydraulic Conductivity
\par Dispersivity
\par Unsaturated Properties
\par \pard\sb120 Hydrologic Sources group 
\par \pard\li720\sb120 Sources of Fluid
\par Sources of Solute/Sources of Energy
\par Hydrologic Boundaries group 
\par Specified Pressure/Specified Hydraulic Head
\par Specified Concentration/Specified Temperature
\par \pard\sb120 Initial Conditions group 
\par \pard\li720\sb120 Initial Pressure/Initial Hydraulic Head
\par Initial Concentration/Initial Temperature
\par \pard\sb120 Map or Point Data group 
\par \pard\li720\sb120 Map
\par Point Data\f2 
\par \pard\fi720\sb120\f1 
\par The Information layers within the \b Hydrogeology \b0 and \b Initial Conditions \b0 layer groups are initially assigned the interpretation method \i Nearest Contour\i0 .  The Information layers within the \b Hydrologic Sources \b0 and \b Hydrologic Boundaries \b0 layer groups are assigned the interpretation method Exact Contour.  However, the \b Unsaturated Properties \b0 layer in the \b Hydrogeology \b0 layer group is an exception and it is assigned the \i Exact Contour \i0 method. 
\par \pard\li720\sb120\i Note: Some user experimentation with the interpretation methods may be necessary to achieve the best possible spatial distribution for a given parameter.\i0 
\par \pard\fi720\sb120 Each parameter of each layer is assigned a default expression by \b SutraGUI\b0 .  The expression usually specifies a constant value of a parameter for the entire workspace that is assumed in case no other user input is provided for that parameter.  For some parameters, the default expressions are complicated and involve mathematical operations on other data in the model.  The values initially specified for parameters by \b SutraGUI \b0 are shown in Table \lang1024 7\lang1033 .
\par \pard\sb300\sa120\sl-200\slmult0\b Table \lang1024 7\lang1033 .  Default Background Values for User-Specified Layer Parameters\b0 
\par \pard\fi720\sl-200\slmult0 [$N/A is a flag for an unassigned variable.]\f2 
\par \pard\sl-200\slmult0 
\par \trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3362\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx7272\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx8863\pard\intbl\b\f1 Layer\cell Parameter\cell Value \super (1)\cell\nosupersub\row
\trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs \cellx3362\clbrdrt\brdrw15\brdrs \cellx7272\clbrdrt\brdrw15\brdrs \cellx8863\pard\intbl\b0 FishNet_Mesh_Layout\cell elements_in_x\cell $N/A\cell\row
\trowd\trgaph108\trleft-108\cellx3362\cellx7272\cellx8863\pard\intbl\cell elements_in_y\cell $N/A\cell\row
\intbl Domain Outline | unused layer1\cell element_size\cell 0\cell\row
\intbl Mesh Density | unused layer2\cell element_size\cell 0\cell\row
\intbl Observation\cell is_observed\cell 0\cell\row
\intbl Thickness\cell thickness\cell 1\cell\row
\intbl Porosity\cell porosity\cell 0.1\cell\row
\intbl Permeability or Hydraulic Conductivity\cell maximum\cell 1.0E-10 or 1.0E-3\cell\row
\intbl\cell minimum\cell 1.0E-10 or 1.0E-3\cell\row
\intbl\cell angle_of_max_to_x_axis\cell 0\cell\row
\intbl Dispersivity\cell longdisp_in_max_permdir\cell 0.5\cell\row
\intbl\cell longdisp_in_min_permdir\cell 0.5\cell\row
\intbl\cell trandisp_in_max_permdir\cell 0.5\cell\row
\intbl\cell trandisp_in_min_permdir\cell 0.5\cell\row
\intbl Unsaturated Properties\cell region\cell 0\cell\row
\intbl Sources of Fluid\cell total_source\cell $N/A\cell\row
\intbl Sources of Energy or Sources of Solute\cell specific_source\cell $N/A\cell\row
\intbl\cell concentration_of_source or temperature_of_source\cell $N/A\cell\row
\intbl\cell time_dependence\cell 0\cell\row
\intbl\cell total_source\cell $N/A\cell\row
\intbl Specified Pressure or Specified Hydraulic Head\cell specific_source\cell $N/A\cell\row
\intbl\cell time_dependence\cell 0\cell\row
\intbl\cell specified_pressure or specified_head\cell $N/A\cell\row
\intbl Specified Concentration or Specified Temperature\cell concentration or temperature\cell $N/A\cell\row
\intbl\cell time_dependence\cell 0\cell\row
\intbl\cell specified_pressure or specified_head\cell $N/A\cell\row
\intbl Initial Pressure or Initial Head\cell time_dependence\cell 0\cell\row
\intbl\cell initial_pressure or initial_head\cell 0\cell\row
\trowd\trgaph108\trleft-108\clbrdrb\brdrw15\brdrs \cellx3362\clbrdrb\brdrw15\brdrs \cellx7272\clbrdrb\brdrw15\brdrs \cellx8863\pard\intbl Initial Concentration or Initial Temperature\cell initial_concentration or initial_temperature\cell 0\cell\row
\pard\li720\sb120\super\i (1) \nosupersub Note: Default values are only initial suggestions.  These must be checked and reset, if needed, by the user to appropriate values for the user's project.\i0\f2 
\par \pard\cf2\strike\f3 
\par }
1050
Scribble1050
SUTRA Model group



general:000520
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SUTRA Model group
\par \cf0\b0\fs20 
\par \pard\fi720\b\f1\fs24 SUTRA MODEL \b0 is a group of layers that define the geometry and discretization of the SUTRA simulation model, and the locations in the model where observations of results will be made.  These include the layers \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0 , \cf2\b\strike Mesh Density\cf3\strike0\{linkID=1450\}\cf0\b0 , \cf2\b\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0\b0 , \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0 , and \cf2\b\strike Observation\cf3\strike0\{linkID=1470\}\cf0\b0 .  Not all of these layers are always present.  The \cf2\b\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0\b0  layer is included in the group only when the user-specified \cf2\strike SUTRA Interface Configuration\cf3\strike0\{linkID=210\} \cf0 specifies a FishNet Mesh, and in this case, some unneeded layers are renamed as \cf2\b\strike unused layer1\cf3\strike0\{linkID=1430\}\cf0\b0  and \cf2\b\strike unused layer2\cf3\strike0\{linkID=1450\}\cf0\b0 .    \f2 
\par }
1060
Scribble1060
SUTRA Mesh



general:000530
Writing



FALSE
44
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SUTRA Mesh
\par 
\par \pard\fi720\sb120\cf0\b0\f1\fs24 The \b SUTRA Mesh \b0 layer is the layer on which the mesh used in the model is defined.  For 2D models, the mesh on a \b SUTRA Mesh \b0 layer can be either an irregular mesh or a "FishNet" mesh.  The FishNet mesh case is described in the section of this report entitled "\cf2\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0 " on page \lang1024 42\lang1033 .
\par An irregular mesh can be generated automatically using the magic wand tool from the tool palette at the left side of the Argus ONE window as discussed in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).  The User's Guide also explains how to inspect nodal and element geometries and parameters, to move nodes, and to override (change) node or element parameter values that were automatically assigned by Argus ONE.  To generate an Irregular Mesh, make the \b SUTRA Mesh \b0 layer active, click on the magic wand tool, and then click the magic wand cursor within the area of the domain boundary.  Argus ONE then generates a mesh according to the density information contained in the \b Domain Outline \b0 layer and, if specified, in the \b Mesh Density \b0 layer.
\par If a mesh already exists in the layer, then the user is prompted to accept deletion of all existing elements before the new mesh is generated.  If the view has been rescaled by user selection of \i Non-uniform \i0 in the Argus ONE \i Scale and Units \i0 dialog box, then elongated elements are produced in an irregular mesh.  Horizontally long elements are often appropriate for cross-sectional modeling of aquifer systems.
\par In some cases, elements with very small or very large angles may be created during the meshing process.  Such elements can be found by selecting \i Edit|Select Acute Elements\i0 .  If some exist, the mesh may be manually adjusted or the meshing preferences, which control a scan for odd-shaped elements, may be changed by selecting \i Special|Preferences \i0 and changing some of the items in the dialog box.
\par In 2D models, the \b SUTRA Mesh \b0 layer contains values for all of the spatially distributed parameters required for running a SUTRA simulation, through references to and functions of the other layers.  In 3D models, the \b SUTRA Mesh \b0 layer or layers contains values of all the spatially distributed parameters except boundary conditions and observations.  Depending on SUTRA's requirements for each parameter, as specified in the documentation for the SUTRA input data sets (\cf2\strike Voss and Provost, 2002\cf3\strike0\{linkTarget=Voss02\}\cf0 ), a parameter may receive a value for each node or for each element in the mesh.  These values are derived from the various \i Information \i0 layers described in following sections.  The Argus ONE environment refers to the assignment of values in one \i Information \i0 layer to another as "linking."  The names of the parameters of the \b SUTRA Mesh \b0 layer are listed in Table \lang1024 8\lang1033 .  The full Argus ONE name of each parameter is given as "Layer.Parameter," for example, the first parameter, \b NREG\b0 , in the table is \b SUTRA Mesh.NREG\b0 .
\par The uppercase names of \b SUTRA Mesh \b0 parameters correspond exactly with variables used by the SUTRA model, and are described in the SUTRA documentation.  There is one exception to the above.  The SUTRA parameter, \b UBC\b0 , representing the concentration or temperature of any fluid that may flow into the model at a node where pressure or hydraulic head is specified, has been changed to \b pUBC \b0 in \b SutraGUI \b0 to distinguish it from the specified concentration or temperature boundary condition type, which retains its original name (\b UBC\b0 ).
\par Two of the \b SUTRA Mesh \b0 parameters, \b QIN \b0 and \b QUIN\b0 , a fluid source and energy or solute source, respectively, have additional logic associated with their values.  As noted in the description of the \b Sources of Fluid\b0  and \b Sources of Energy \b0 or \b Sources of Solute\b0  layers, to which these node-wise parameters are linked, these sources may be specified at point, line (open) or closed contours.  Depending on which type of contour is specified in the "\b Sources\b0 " layer, the resultant source value provided as a parameter in the "\b Sources\b0 " layer may require multiplication by the open contour length or closed contour area associated with the node; these multiplications are carried out automatically.
\par The \b Z \b0 parameter on the \b SUTRA Mesh \b0 layer represents the thickness of the model.
\par \pard\li720\sb120\i Note: The properties assigned to any node or element may be viewed (and modified) by double-clicking on the element of interest while the \b SUTRA Mesh \b0 layer is active.\i0 
\par \pard\fi720\sb120 
\par \pard\sb120\sa120\b Table \lang1024 8\lang1033 .  SUTRA mesh parameters used in two-dimensional (2D) simulations\b0 
\par \trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx5640\pard\intbl\lang1043\b Name\cell\row
\trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs \cellx5640\pard\intbl\cf2\b0\strike NREG\cf3\strike0\{linkID=1070\}\cf0\cell\row
\trowd\trgaph108\trleft-108\cellx5640\pard\intbl\cf2\strike Z\cf3\strike0\{linkID=1080\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl POR \cf3\strike0\{linkID=1090\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl LREG \cf3\strike0\{linkID=1100\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl PMAX \cf3\strike0\{linkID=1110\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl PMIN \cf3\strike0\{linkID=1130\}\cf0\cell\lang1030\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl ANGLE1 \cf3\strike0\{linkID=1140\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl ALMAX \cf3\strike0\{linkID=1170\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl ALMIN \cf3\strike0\{linkID=1190\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl ATMAX \cf3\strike0\{linkID=1200\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl ATMIN \cf3\strike0\{linkID=1220\}\cf0\cell\lang1033\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl QIN \cf3\strike0\{linkID=1230\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl UIN \cf3\strike0\{linkID=1250\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl time_dependent_fluid_sources \cf3\strike0\{linkID=1260\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl QUIN \cf3\strike0\{linkID=1270\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl time_dependent_energy_or_solute_sources\cf3\strike0\{linkID=1290\}\cf2\strike  \cell\row
\intbl PBC \cf3\strike0\{linkID=1300\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl pUBC \cf3\strike0\{linkID=1320\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl time_dependent_specified_head_or_pressure\cf3\strike0\{linkID=1330\}\cf2\strike  \cell\row
\intbl UBC \cf3\strike0\{linkID=1340\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl time_dependent_specified_concentration_or_temperature\cf3\strike0\{linkID=1360\}\cf2\strike  \cell\row
\intbl PVEC \cf3\strike0\{linkID=1370\}\cf0\cell\row
\intbl\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx5640\intbl UVEC \cf3\strike0\{linkID=1380\}\cf0\cell\row
\trowd\trgaph108\trleft-108\clbrdrb\brdrw15\brdrs \cellx5640\pard\intbl\cf2\strike INOB \cf3\strike0\{linkID=1390\}\cf0\cell\row
\pard 
\par 
\par }
1070
Scribble1070
NREG / NREG[i]



general:000540
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 NREG / NREG[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 14B: Node-wise Data (one line for each of NN nodes)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=264")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 0
\par \cf3\strike{\pntext\f4\'B7\tab}Unsaturated Properties\f3  (Unit[i])\f2 .region\cf2\strike0\{linkID=1680\}\cf0 
\par \pard\b Type:\b0  Node
\par 
\par \f3 For models with unsaturated flow, \b NREG \b0 represents the unsaturated flow region associated with a node.  For more detail, see \cf3\strike\f2 Unsaturated Properties\f3  (Unit[i])\f2 .region\cf2\strike0\{linkID=1680\}\cf0\f3 .\f2 
\par }
1080
Scribble1080
Z / Z[i]



general:000550
Writing



FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Z / Z[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 14B: Node-wise Data (one line for each of NN nodes)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=264")\}\f2\fs24 
\par 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b{\pntext\f4\'B7\tab}Expression:\b0  \f3 one of the following
\par \pard\li180\tx180\cf3\b\strike\f2 Thickness.thickness\cf2\strike0\{linkID=1510\}\cf0 
\par \cf3\strike Elevation\f3  Top\f2 .elevation\f3  \f2 top\cf2\strike0\{linkID=2110\}\cf0 
\par \cf3\strike Elevation Bottom Unit[i-1].elevation\f3  \f2 bottom\cf2\strike0\{linkID=2280\}\cf0\b0 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\b Type:\b0  Node
\par \pard 
\par \f3 For two-dimensional models, Z represents the model thickness at a node.
\par For three-dimensional models, Z represents the elevation of the node.\f2 
\par }
1090
Scribble1090
POR / POR[i]



general:000560
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 POR / POR[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 14B: Node-wise Data (one line for each of NN nodes)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=264")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \cf3\strike Porosity\f3  (Unit[i])\f2 .porosity\cf2\strike0\{linkID=1520\}
\par \cf0\b Type:\b0  Node
\par 
\par \b\f3 POR \b0 represents the porosity associated with a node.\f2 
\par }
1100
Scribble1100
LREG / LREG[i]



general:000570
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 LREG / LREG[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 0
\par \cf3\strike{\pntext\f4\'B7\tab}Unsaturated Properties\f3  (Unit[i])\f2 .region\cf2\strike0\{linkID=1680\}\cf0 
\par \pard\b Type:\b0  Element
\par 
\par \f3 For models with unsaturated flow, \b LREG \b0 represents the unsaturated flow region associated with an element.  For more detail, see \cf3\strike\f2 Unsaturated Properties\f3  (Unit[i])\f2 .region\cf2\strike0\{linkID=1680\}\cf0\f3 .\f2 
\par }
1110
Scribble1110
PMAX / PMAX[i]



general:000580
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 PMAX / PMAX[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \pard\tx180\cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following\f2 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf3\strike Hydraulic Conductivity.maximum\cf2\strike0\{linkID=1540\}
\par \cf3\strike{\pntext\f4\'B7\tab}Permeability.maximum\cf2\strike0\{linkID=1540\}\cf0 
\par \cf3\strike{\pntext\f4\'B7\tab}Hydraulic Conductivity Unit[i].maximum\cf2\strike0\{linkID=1540\}\cf0 
\par \cf3\strike{\pntext\f4\'B7\tab}Permeability Unit[i].maximum\cf2\strike0\{linkID=1540\}\cf0 
\par \pard\tx180\b Type:\b0  Element
\par \pard 
\par \pard\fi-160\li160\tx160\b\f3 PMAX\b0  represents the maximum permeability associated with an element.\f2 
\par \pard 
\par }
1120
Scribble1120
PMID / PMID[i]



general:000590
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 PMID / PMID[i]\cf0\b0\f1\fs24 
\par 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f1\fs24 
\par 
\par \pard\tx180\cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following\f1 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 Hydraulic Conductivity Unit[i].middle
\par {\pntext\f4\'B7\tab}Permeability Unit[i].middle
\par \pard\tx180\b Type:\b0  Element
\par \pard 
\par \b\f3 PMID \b0 represents the intermediate permeability associated with an element.\f1 
\par }
1130
Scribble1130
PMIN / PMIN[I]



general:000600
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 PMIN / PMIN[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \pard\fi-160\li160\tx160\cf0\b Expression:\b0  \f3 one of the following
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\f2  \cf3\strike Hydraulic Conductivity.minimum\cf2\strike0\{linkID=1560\}
\par \cf0{\pntext\f4\'B7\tab}Permeability.minimum
\par {\pntext\f4\'B7\tab}Hydraulic Conductivity Unit1.minimum
\par {\pntext\f4\'B7\tab}Permeability Unit1.minimum
\par \pard\b Type:\b0  Element
\par 
\par \pard\fi-160\li160\tx160\b\f3 PMIN\b0  represents the minimum permeability associated with an element.\f2 
\par \pard\cf3\strike 
\par }
1140
Scribble1140
ANGLE1 / ANGLE1_[i]



general:000610
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ANGLE1 / ANGLE1_[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 ANGLE1(L) in DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\f2  \cf3\strike Hydraulic Conductivity.angle_of_max_to_x_axis\cf2\strike0\{linkID=1570\}
\par \cf0{\pntext\f4\'B7\tab}Permeability.angle_of_max_to_x_axis
\par {\pntext\f4\'B7\tab}Hydraulic Conductivity Unit[i].horizontal angle
\par {\pntext\f4\'B7\tab}Permeability Unit1.horizontal angle
\par \pard\b Type:\b0  Element
\par 
\par \f3 For two-dimensional models, \b ANGLE1\b0  represents the angle that defines the orientation of the permeability ellipse.
\par For three-dimensional models, \b ANGLE1 \b0 represents the first angle that defines the orientation of the permeability ellipsoid.\f2 
\par }
1150
Scribble1150
ANGLE2 / ANGLE2_[i]



general:000620
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ANGLE2 / ANGLE2_[i]\cf0\b0\f1\fs24 
\par 
\par \cf1\strike\f2\fs20 ANGLE2(L) in DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f1\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following\f1  \cf4\f4 
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 Hydraulic Conductivity Unit1.vertical angle
\par {\pntext\f5\'B7\tab}Permeability Unit1.vertical angle
\par \pard\cf0\b\f1 Type:\b0  Element
\par 
\par \b\f3 ANGLE2 \b0 represents the second angle that defines the orientation of the permeability ellipsoid.\f1 
\par 
\par }
1160
Scribble1160
ANGLE3 / ANGLE3_[i]



general:000630
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ANGLE3 / ANGLE3_[i]\cf0\b0\f1\fs24 
\par 
\par \cf1\strike\f2\fs20 ANGLE3(L) in DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f1\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following\f1  
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf4\f4 Hydraulic Conductivity Unit1.rotational angle
\par {\pntext\f5\'B7\tab}Permeability Unit1.rotational angle
\par \pard\cf0\b\f1 Type:\b0  Element
\par 
\par \b\f3 ANGLE3 \b0 represents the third angle that defines the orientation of the permeability ellipsoid.\f1 
\par }
1170
Scribble1170
ALMAX / ALMAX[i]



general:000640
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ALMAX / ALMAX[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following\b\f2 
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\b0  \cf3\strike Dispersivity.longdisp_in_max_permdir\cf2\strike0\{linkID=1620\}
\par {\pntext\f5\'B7\tab}Dispersivity Unit[i].longdisp_in_max_permdir\cf0 
\par \pard\b Type:\b0  Element
\par \f4 
\par \b ALMAX \b0 defines the scaled longitudinal flow dispersivity value in the direction of maximum permeability.
\par \f2 
\par }
1180
Scribble1180
ALMID / ALMID[i]



general:000650
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ALMID / ALMID[i]\cf0\b0\f1\fs24 
\par \f0\fs20 
\par \cf1\strike\f2 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f1\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\f3  \b0\f1 Dispersivity Unit[i].longdisp_in_mid_permdir
\par \b Type:\b0  Element
\par 
\par \b\f4 ALMID \b0 defines the scaled longitudinal flow dispersivity value in the direction of intermediate permeability.
\par \f1 
\par }
1190
Scribble1190
ALMIN / ALMIN[i]



general:000660
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ALMIN / ALMIN[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following\f2  
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 Dispersivity.longdisp_in_min_permdir
\par {\pntext\f5\'B7\tab}Dispersivity Unit[i].longdisp_in_min_permdir
\par \pard\b Type:\b0  Element
\par 
\par \b\f4 ALMIN \b0 defines the scaled longitudinal flow dispersivity value in the direction of minimum permeability.\f2 
\par }
1200
Scribble1200
ATMAX / ATMAX[i]



general:000670
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ATMAX / ATMAX[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f3 one of the following
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\f2  \cf3\strike Dispersivity.trandisp_in_max_permdir\cf2\strike0\{linkID=1650\}
\par \cf0{\pntext\f5\'B7\tab} \cf3\strike Dispersivity\f3  Unit[i]\f2 .trandisp_in_max_permdir\cf2\strike0\{linkID=1650\}
\par \pard\cf0\b Type:\b0  Element
\par 
\par \b\f4 ATMAX \b0 defines the scaled transverse flow dispersivity value in the direction of maximum permeability.\f2 
\par }
1210
Scribble1210
ATMID / ATMID[i]



general:000680
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ATMID / ATMID[i]\cf0\b0\f1\fs24 
\par 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f1\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  Dispersivity Unit[i].trandisp_in_mid_permdir
\par \b Type:\b0  Element
\par 
\par \b\f3 ATMID \b0 defines the scaled transverse flow dispersivity value in the direction of intermediate permeability.\f1 
\par }
1220
Scribble1220
ATMIN / ATMIN[i]



general:000690
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\fnil Courier New;}{\f4\fnil\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 ATMIN / ATMIN[i]
\par \cf0\b0\fs20 
\par \cf2\strike\f1\fs24 DATASET 15B: Element\f2 -\f1 wise DATA (one line for each of NE elements)\cf1\f3\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\f1\fs24 
\par 
\par \cf0\b Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \f2 one of the following\cf3\f1 
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf0  \cf2\strike Dispersivity.trandisp_in_min_permdir\cf3\strike0\{linkID=1670\}
\par \cf0{\pntext\f5\'B7\tab} \cf2\strike Dispersivity\f2  Unit[i]\f1 .trandisp_in_min_permdir\cf3\strike0\{linkID=1670\}
\par \pard\cf0\b Type:\b0  Element
\par 
\par \b\f4 ATMIN \b0 defines the scaled transverse flow dispersivity value in the direction of minimum permeability.\f1 
\par }
1230
Scribble1230
QIN / QIN[i]



general:000700
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 QIN / QIN[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 QINC in DATASET 17:  Data for Fluid Source and Sinks\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=271")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  Index(NodeAboveCntr(\cf3\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0 )+1, NodeEffectiveValue(\cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 ), \cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 , \cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 *NodeEffectiveLength(\cf3\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0 ), NodeEffectiveValue(\cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 ), NodeEffectiveValue(\cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 ))
\par \b Type:\b0  Node
\par 
\par \b QIN \b0\f3 represents a fluid source at a node.  Positive values represent flow into the aquifer.\f2 
\par 
\par }
1240
Scribble1240
IS_FLUID_SOURCE[i]



general:000710
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 IS_FLUID_SOURCE[i]\cf2\b0\f1\fs24 
\par 
\par \cf0\b\f2 Layer:\b0  \cf3\strike SUTRA Mesh\cf4\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  !IsNA(\cf3\strike QIN\f3 [i]\cf4\strike0\{linkID=1230\}\cf0\f2 )
\par \b Type:\b0  Node
\par 
\par \b IS_FLUID_SOURCE[i]\b0\f3  is used internally by the SutraGUI.  Users should not try to set this parameter.\cf2\f1 
\par }
1250
Scribble1250
UIN / UIN[i]



general:000720
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 UIN / UIN[i]
\par \cf0\b0\fs20 
\par \f1\fs24 UINC in \cf1\strike\f2\fs20 DATASET 17:  Data for Fluid Source and Sinks\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=271")\}\f1\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 If(NodeAboveCntr(\cf3\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0 )=1 | NodeAboveCntr(\cf3\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0 )=2, \cf3\strike Sources of Fluid.concentration_of_source\cf2\strike0\{linkID=1730\}\cf0 , NodeEffectiveValue(\cf3\strike Sources of Fluid.QINUIN\cf2\strike0\{linkID=1760\}\cf0 )/NodeEffectiveValue(\cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 ))
\par \pard\fi-160\li160\tx160 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 If(NodeAboveCntr(\cf3\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0 )=1 | NodeAboveCntr(\cf3\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0 )=2, \cf3\strike Sources of Fluid.temperature_of_source\cf2\strike0\{linkID=1730\}\cf0 , NodeEffectiveValue(\cf3\strike Sources of Fluid.QINUIN\cf2\strike0\{linkID=1760\}\cf0 )/NodeEffectiveValue(\cf3\strike Sources of Fluid.RESULTANT_FLUID_SOURCE\cf2\strike0\{linkID=1750\}\cf0 ))
\par \pard 
\par \b Type:\b0  Node
\par \pard\fi-160\li160\tx160 
\par \b UIN \b0\f3 represents the fluid temperature or concentration of a fluid source.  Concentrations are expressed in terms of mass fraction.\f1 
\par }
1260
Scribble1260
time_dependent_fluid_sources([i])



general:000730
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependent_fluid_sources([i])
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  \cf2\strike Sources of Fluid.time_dependence\cf3\strike0\{linkID=1740\}
\par \cf0\f2 Index(NodeAboveCntr(\cf2\strike Sources of Fluid\cf3\strike0\{linkID=1700\}\cf0 )+1, NodeEffectiveValue(\cf2\strike\f1 Sources of Fluid.time_dependence\cf3\strike0\{linkID=1740\}\cf0\f2 )>0, \cf2\strike\f1 Sources of Fluid.time_dependence\cf3\strike0\{linkID=1740\}\cf0\f2 , \cf2\strike\f1 Sources of Fluid.time_dependence\cf3\strike0\{linkID=1740\}\cf0\f2 *NodeEffectiveLength(\cf2\strike Sources of Fluid\cf3\strike0\{linkID=1700\}\cf0 )>0, NodeEffectiveValue(\cf2\strike\f1 Sources of Fluid.time_dependence\cf3\strike0\{linkID=1740\}\cf0\f2 )>0, NodeEffectiveValue(\cf2\strike\f1 Sources of Fluid.time_dependence\cf3\strike0\{linkID=1740\}\cf0\f2 )>0)\f1 
\par \b Type:\b0  Node
\par 
\par \b\f3 T\f1 ime_dependent_fluid_sources([i])\b0\f3  is true if a fluid source is time-dependent.  (Users must program the subroutine BCTIME to make use of time-dependent fluid sources.)\f1 
\par 
\par }
1270
Scribble1270
QUIN / QUIN[i]



general:000740
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\fnil Courier New;}{\f4\fnil\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 QUIN / QUIN[i]
\par \cf0\b0\fs20 
\par \f1\fs24 QUINC \f2 in\f1  \cf1\strike\f3\fs20 DATASET 18:  Data for Energy or Solute Mass Sources and Sinks
\par \cf2\strike0\f1\fs24\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=273")\}\cf0\f4 
\par \cf2\f1 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par 
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent200{\pntxtb\'B7}}\fi-200\li200 Index(NodeAboveCntr(\cf3\strike Sources of Solute\cf2\strike0\{linkID=1770\}\cf0 )+1, NodeEffectiveValue(\cf3\strike Sources of Solute.RESULTANT_SOLUTE_SOURCES\cf2\strike0\{linkID=1810\}\cf0 ), \cf3\strike Sources of Solute.RESULTANT_SOLUTE_SOURCES\cf2\strike0\{linkID=1810\}\cf0 , \cf3\strike Sources of Solute.RESULTANT_SOLUTE_SOURCES\cf2\strike0\{linkID=1810\}\cf0 *NodeEffectiveLength(\cf3\strike Sources of Solute\cf2\strike0\{linkID=1770\}\cf0 ), NodeEffectiveValue(\cf3\strike Sources of Solute.RESULTANT_SOLUTE_SOURCES\cf2\strike0\{linkID=1810\}\cf0 ), NodeEffectiveValue(\cf3\strike Sources of Solute.RESULTANT_SOLUTE_SOURCES\cf2\strike0\{linkID=1810\}\cf0 )
\par \pard\fi-160\li160\tx160 
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent200{\pntxtb\'B7}}\fi-200\li200 Index(NodeAboveCntr(\cf3\strike Sources of Energy\cf2\strike0\{linkID=1770\}\cf0 )+1, NodeEffectiveValue(\cf3\strike Sources of Energy.RESULTANT_ENERGY_SOURCES\cf2\strike0\{linkID=1810\}\cf0 ), \cf3\strike Sources of Energy.RESULTANT_ENERGY_SOURCES\cf2\strike0\{linkID=1810\}\cf0 , \cf3\strike Sources of Energy.RESULTANT_ENERGY_SOURCES\cf2\strike0\{linkID=1810\}\cf0 *NodeEffectiveLength(\cf3\strike Sources of Energy\cf2\strike0\{linkID=1770\}\cf0 ), NodeEffectiveValue(\cf3\strike Sources of Energy.RESULTANT_ENERGY_SOURCES\cf2\strike0\{linkID=1810\}\cf0 ), NodeEffectiveValue(\cf3\strike Sources of Energy.RESULTANT_ENERGY_SOURCES\cf2\strike0\{linkID=1810\}\cf0 ))
\par \pard 
\par \b Type:\b0  Node
\par \pard\fi-160\li160\tx160 
\par \b QUIN \b0\f2 represents a source of solute or energy at a node.\f1 
\par }
1280
Scribble1280
IS_QUIN_SOURCE[i]



general:000750
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 IS_QUIN_SOURCE[i]\cf2\b0\f1\fs24 
\par 
\par \cf0\b\f2 Layer:\b0  \cf3\strike SUTRA Mesh\cf4\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  !IsNA(\cf3\strike QUIN\f3 [i]\cf4\strike0\{linkID=1270\}\cf0\f2 )
\par \b Type:\b0  Node
\par 
\par \b IS_QUIN_SOURCE[i]\b0\f3  is used internally by the SutraGUI.  Users should not try to set this parameter.\cf2\f1 
\par }
1290
Scribble1290
time_dependent_energy_or_solute_sources([i])



general:000760
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependent_energy_or_solute_sources([i])
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0   one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200\tx200\f2 Index(NodeAboveCntr(\cf2\strike Sources of Solute\cf3\strike0\{linkID=1770\}\cf0 )+1, NodeEffectiveValue(\cf2\strike\f1 Sources of Solute.time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 )>0, \cf2\strike\f1 Sources of Solute.time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 , \cf2\strike\f1 Sources of Solute.time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 *NodeEffectiveLength(\cf2\strike Sources of Solute\cf3\strike0\{linkID=1770\}\cf0 )>0, NodeEffectiveValue(\cf2\strike\f1 Sources of Solute.time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 )>0, NodeEffectiveValue(\cf2\strike\f1 Sources of Solute.time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 )>0)\f1 
\par \f2{\pntext\f4\'B7\tab}Index(NodeAboveCntr(\cf2\strike Sources of Energy\cf3\strike0\{linkID=1770\}\cf0 )+1, NodeEffectiveValue(\cf2\strike\f1 Sources of \f2 Energy\f1 .time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 )>0, \cf2\strike\f1 Sources of \f2 Energy\f1 .time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 , \cf2\strike\f1 Sources of \f2 Energy\f1 .time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 *NodeEffectiveLength(\cf2\strike Sources of Energy\cf3\strike0\{linkID=1770\}\cf0 )>0, NodeEffectiveValue(\cf2\strike\f1 Sources of \f2 Energy\f1 .time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 )>0, NodeEffectiveValue(\cf2\strike\f1 Sources of \f2 Energy\f1 .time_dependence\cf3\strike0\{linkID=1800\}\cf0\f2 )>0)\f1 
\par \pard\b Type:\b0  Node
\par 
\par \b\f3 time_dependent_energy_or_solute_sources([i]) \b0 is true if a energy or solute source is time-dependent.  (Users must program the subroutine BCTIME to make use of time-dependent energy or solute sources.)\f1 
\par 
\par }
1300
Scribble1300
PBC / PBC[i]



general:000770
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 PBC / PBC[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 19:  Data for Specified Pressure Nodes \cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=274")\}\f2\fs24 
\par 
\par \cf0\b Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0   one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 if(NodeAboveCntr(\cf3\strike Specified Hydraulic Head\cf2\strike0\{linkID=1830\}\cf0 ),\cf3\strike Specified Hydraulic Head.specified_hydraulic_head\cf2\strike0\{linkID=1840\}\cf0 ,$n/a)
\par {\pntext\f4\'B7\tab}if(NodeAboveCntr(\cf3\strike Specified Pressure\cf2\strike0\{linkID=1830\}\cf0 ),\cf3\strike Specified Pressure.specified_pressure\cf2\strike0\{linkID=1840\}\cf0 ,$n/a)
\par \pard\b Type:\b0  Node
\par 
\par \b PBC \b0\f3 represents a specified pressure boundary condition at a node.\f2 
\par \pard\fi-160\li160\tx160 
\par }
1310
Scribble1310
IS_PBC_SOURCE[i]



general:000780
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 IS_PBC_SOURCE[i]\cf2\b0\f1\fs24 
\par 
\par \cf0\b\f2 Layer:\b0  \cf3\strike SUTRA Mesh\cf4\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  !IsNA(\cf3\strike PBC\f3 [i]\cf4\strike0\{linkID=1300\}\cf0\f2 )
\par \b Type:\b0  Node
\par 
\par \b IS_PBC_SOURCE[i]\b0\f3  is used internally by the SutraGUI.  Users should not try to set this parameter.\cf2\f1 
\par }
1320
Scribble1320
pUBC / pUBC[i]



general:000790
Writing



FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 pUBC / pUBC[i]
\par \cf0\b0\fs20 
\par \f1\fs24 UBC in \cf1\strike\f2\fs20 DATASET 19:  Data for Specified Pressure Nodes \cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=274")\}\f1\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200\cf3\strike Specified Pressure.concentration\cf2\strike0\{linkID=1850\}\cf0 
\par \cf3\strike{\pntext\f4\'B7\tab}Specified Hydraulic Head.concentration\cf2\strike0\{linkID=1850\}\cf0 
\par \cf3\strike{\pntext\f4\'B7\tab}Specified Pressure.temperature\cf2\strike0\{linkID=1850\}\cf0 
\par \pard\b Type:\b0  Node
\par 
\par pUBC \f3 represents the temperature or concentration of fluid associated with a specified pressure boundary condition.  Concentrations are expressed in terms of mass fraction.\f1 
\par \pard\fi-160\li160\tx160 
\par }
1330
Scribble1330
time_dependent_specified_head_or_pressure([i])



general:000800
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependent_specified_head_or_pressure([i])
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200\tx200\f2 if(NodeAboveCntr(\cf2\strike Specified Hydraulic Head\cf3\strike0\{linkID=1830\}\cf0 ),\cf2\strike\f1 Specified Hydraulic Head.time_dependence\cf3\strike0\{linkID=1860\}\cf0\f2 ,0)\f1 
\par \f2{\pntext\f4\'B7\tab}if(NodeAboveCntr(\cf2\strike Specified \f1 Pressure\cf3\strike0\f2\{linkID=1830\}\cf0 ),\cf2\strike\f1 Specified Pressure.time_dependence\cf3\strike0\{linkID=1860\}\cf0\f2 ,0)\f1 
\par \pard\b Type:\b0  Node
\par 
\par \b\f3 time_dependent_specified_head_or_pressure([i]) \b0 is true if a specified pressure boundary condition is time-dependent.  (Users must program the subroutine BCTIME to make use of time-dependent specified pressure boundary conditions.)\f1 
\par 
\par }
1340
Scribble1340
UBC / UBC[i]



general:000810
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 UBC / UBC[i]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 20:  Data for Specified Concentration or Temperature Nodes\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=275")\}\f2\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 if(NodeAboveCntr(\cf3\strike Specified Concentration\cf2\strike0\{linkID=1870\}\cf0 ),\cf3\strike Specified Concentration.specified_concentration\cf2\strike0\{linkID=1880\}\cf0 ,$n/a)
\par {\pntext\f4\'B7\tab}if(NodeAboveCntr(\cf3\strike Specified Temperature\cf2\strike0\{linkID=1870\}\cf0 ),\cf3\strike Specified Temperature.specified_temperature\cf2\strike0\{linkID=1880\}\cf0 ,$n/a)
\par \pard\b Type:\b0  Node
\par 
\par \b UBC \b0\f3 is a specified concentration or temperature boundary condition.  Concentrations are expressed in terms of mass fraction.\f2 
\par \pard\fi-160\li160\tx160 
\par }
1350
Scribble1350
IS_UBC_SOURCE[i]



general:000820
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 IS_UBC_SOURCE[i]\cf2\b0\f1\fs24 
\par 
\par \cf0\b\f2 Layer:\b0  \cf3\strike SUTRA Mesh\cf4\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  !IsNA(\cf3\strike\f3 UBC[i]\cf4\strike0\{linkID=1340\}\cf0\f2 )
\par \b Type:\b0  Node
\par 
\par \b IS_UBC_SOURCE[i]\b0\f3  is used internally by the SutraGUI.  Users should not try to set this parameter.\cf2\f1 
\par }
1360
Scribble1360
time_dependent_specified_concentration_or_temperature([i])



general:000830
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}{\f4\froman\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependent_specified_concentration_or_temperature([\f1 i\f0 ]\f1 )\f0 
\par \cf0\b0\fs20 
\par \b\f2\fs24 Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0   one of the below.
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent200{\pntxtb\'B7}}\fi-200\li200\tx200\f3 if(NodeAboveCntr(\cf2\strike Specified Concentration\cf3\strike0\{linkID=1870\}\cf0 ),\cf2\strike\f2 Specified Concentration.time_dependence\cf3\strike0\{linkID=1890\}\cf0\f3 ,0)\f2 
\par \f3{\pntext\f5\'B7\tab}if(NodeAboveCntr(\cf2\strike Specified \f2 Temperature\cf3\strike0\f3\{linkID=1870\}\cf0 ),\cf2\strike\f2 Specified Temperature.time_dependence\cf3\strike0\{linkID=1890\}\cf0\f3 ,0)\f2 
\par \pard\b Type:\b0  Node
\par 
\par \b\f4 time_dependent_specified_concentration_or_temperature([i]) \b0 is true if a specified temperature or concentration boundary condition is time-dependent.  (Users must program the subroutine BCTIME to make use of time-dependent specified temperature or concentration boundary conditions.)\f2 
\par 
\par }
1370
Scribble1370
PVEC / PVEC[I]



general:000840
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 PVEC / PVEC[I]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 2:  Initial Pressure Values at Nodes\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=278")\}\f2\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200\cf3\strike Initial Hydraulic Head.initial_hydraulic_head\cf2\strike0\{linkID=1910\}\cf0 
\par \cf3\strike{\pntext\f4\'B7\tab}Initial Pressure.initial_pressure\cf2\strike0\{linkID=1910\}\cf0 
\par \pard\b Type:\b0  Node
\par 
\par PVEC \f3 represents the initial pressure at a node.\f2 
\par \pard\fi-160\li160\tx160 
\par }
1375
Scribble1375
PVEC_Override/PVEC_Override[i]




Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil Courier New;}{\f3\froman Times New Roman;}{\f4\froman\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 PVEC_Override/PVEC_Override[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\cf1\strike\f2\fs20 DATASET 2:  Initial Pressure Values at Nodes\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=278")\}\f3\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent200{\pntxtb\'B7}}\fi-200\li200\cf3\strike Initial Pressure Override Unit\f4 [i]\f3 .Initial_pressure_override\cf2\strike0\{linkID=2265\}\cf0 
\par \cf3\strike{\pntext\f5\'B7\tab}Initial Hydraulic Head Override Unit\f4 [i]\f3 .initial_hydraulic_head_override\cf2\strike0\{linkID=2265\}\cf0 
\par \pard\b Type:\b0  Node
\par 
\par PVEC_Override\f4  represents the initial pressure at a node. It overrides a value read or interpolated from the restart file.\f1 
\par }
1380
Scribble1380
UVEC / UVEC[I]



general:000850
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 UVEC / UVEC[I]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 3:  Initial Temperature or Concentration Values at Nodes\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=279")\}\f2\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf3\strike Initial Concentration.initial_concentration\cf2\strike0\{linkID=1920\}\cf0 
\par \cf3\strike{\pntext\f4\'B7\tab}Initial Temperature.initial_temperature\cf2\strike0\{linkID=1920\}
\par \pard\cf0\b Type:\b0  Node
\par 
\par \b UVEC \b0\f3 represents the initial temperature or concentration at a node.\f2 
\par 
\par }
1385
Scribble1385
UVEC_Override/UVEC_Override[i]




Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil Courier New;}{\f3\froman Times New Roman;}{\f4\froman\fcharset0 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 UVEC_Override/UVEC_Override[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\cf1\strike\f2\fs20 DATASET 3:  Initial Temperature or Concentration Values at Nodes\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=279")\}\f3\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the below.
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf3\strike Initial Concentration Override Unit\f4 [i]\f3 .initial_concentration_override\cf2\strike0\{linkID=2275\}\cf0 
\par \cf3\strike{\pntext\f5\'B7\tab}Initial Temperature Override Unit\f4 [i]\f3 .initial_temperature_override\cf2\strike0\{linkID=2275\}
\par \pard\cf0\b Type:\b0  Node
\par 
\par \b UVEC \b0\f4 represents the initial temperature or concentration at a node. It overrides a value read or interpolated from the restart file.\f1 
\par \f3 
\par 
\par \pard\fi720\f1 
\par }
1390
Scribble1390
INOB / INOB[I]



general:000860
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Courier New;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 INOB / INOB[I]
\par \cf0\b0\fs20 
\par \cf1\strike\f1 DATASET 8D:  Output Controls and Options for UNIT K7 (Observation Node Results Listed in Columns) (one line)\cf2\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=258")\}\f2\fs24 
\par \cf0\b 
\par Layer:\b0  \cf3\strike SUTRA Mesh\cf2\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  If(\cf3\strike Observation.is_observed\cf2\strike0\{linkID=1470\}\cf0 ,NodeNumber(),0)
\par \b Type:\b0  Node
\par 
\par \b INOB \b0\f3 is the node number if a node is an observation node.  Otherwise, it is 0.\f2 
\par 
\par }
1391
Scribble1391
Ucode_P_Observation



general:000861
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Ucode_P_Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\f2 DATASET 8D: \f3 OBSNAM\f2 
\par 
\par \b Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the following
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 UCODE Head Observation.Obs Name
\par {\pntext\f4\'B7\tab}UCODE Pressure Observation.Obs Name
\par \pard\b Type:\b0  Node
\par \f1 
\par }
1392
Scribble1392
Ucode_U_Observation



general:000862
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Ucode_U_Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\f2 DATASET 8D: \f3 OBSNAM\f2 
\par 
\par \b Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the following
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 UCODE Concentration Observation.Obs Name
\par {\pntext\f4\'B7\tab}UCODE Temperature Observation.Obs Name
\par \pard\b Type:\b0  Node\f1 
\par }
1393
Scribble1393
Ucode_Flux_Observation



general:000863
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Ucode_Flux_Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\f2 DATASET 8D: \f3 OBSNAM\f2 
\par 
\par \b Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the following
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 UCODE Observation Fluid Flow Rate at Spec H.Obs Name
\par {\pntext\f4\'B7\tab}UCODE Observation Fluid Flow Rate at Spec P.Obs Name
\par \pard\b Type:\b0  Node\f1 
\par }
1394
Scribble1394
Ucode_U_Flux_Observation



general:000864
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Ucode_U_Flux_Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\f2 DATASET 8D: \f3 OBSNAM\f2 
\par 
\par \b Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  one of the following
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 UCODE Observation Solute Flow Rate at Spec H.Obs Name
\par {\pntext\f4\'B7\tab}UCODE Observation Solute Flow Rate at Spec P.Obs Name
\par {\pntext\f4\'B7\tab}UCODE Observation Heat Flow Rate at Spec P.Obs Name
\par \pard\b Type:\b0  Node\f1 
\par }
1395
Scribble1395
Ucode_Sat_Observation



general:000865
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Ucode_Sat_Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\f2 DATASET 8D: \f3 OBSNAM\f2 
\par 
\par \b Layer:\b0  \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}
\par \cf0\b Expression:\b0  UCODE Saturation Observation.Obs Name
\par \b Type:\b0  Node\f1 
\par }
1400
Scribble1400
FishNet_Mesh_Layout



general:000870
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 FishNet_Mesh_Layout
\par \cf0\b0\fs20 
\par \f1\fs24 The \b FishNet_Mesh_Layout \b0 layer is included only when it is selected in the \b SUTRA Project Information \b0 dialog box.  \b SutraGUI\b0 , rather than Argus ONE, creates FishNet meshes.  A FishNet Mesh consists of superblocks (large contiguous quadrilaterals) each subdivided into a specified number of rows and columns of quadrilateral finite elements.  This layer, like the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\} \cf0\b0 layer, is a Quad-Mesh layer.  However, the elements on it must be drawn manually or imported, rather than being generated automatically by Argus ONE.  Each element of the mesh will describe one "superblock" of the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0 .  The "superblocks" describe the external and internal boundaries of the FishNet Mesh.  Each superblock element contains information describing the desired number of quadrilateral finite elements that will fill the superblock in the X and Y directions when the mesh is generated.  The use of the \b FishNet_Mesh_Layout\b0  layer is described in the section of this report entitled "\cf2\strike Creating FishNet Meshes\cf3\strike0\{linkID=2320\}\cf0 " on page \lang1024 68\lang1033 .
\par \f2 
\par Parameters on the FishNet_Mesh_Layout
\par \cf2\strike elements_in_x\cf3\strike0\{linkID=1410\}
\par \cf2\strike elements_in_y\cf3\strike0\{linkID=1420\}\cf0 
\par }
1410
Scribble1410
elements_in_x



general:000880
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 elements_in_x
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0\f2 
\par Expression:\b0  $N/A
\par 
\par \b\f1 E\f2 lements_in_x\b0\f1  specifies the number of elements in the X direction that the superblock will be split into when creating a \cf2\strike Sutra mesh\cf3\strike0\{linkID=1060\}\cf0 .\f2 
\par 
\par \f1 To determine the X and Y directions for the element, identify the two nodes with the largest X-coordinates.  Of those two, the one with the largest Y coordinate is treated as being in the upper right corner of the element.  If the nodes have the same Y-coordinate, the one with the larger X coordinate is treated as being in the upper right corner of the element.  If there is a tie for the nodes with the second and third highest X-coordinates, then the one with the higher Y-coordinate is selected as one of the two with the highest X-coordinate.\f2 
\par }
1420
Scribble1420
elements_in_y



general:000890
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 elements_in_y
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\b0 
\par \cf0\b\f2 Expression:\b0  $N/A
\par 
\par \b\f1 elements_in_y \b0 specifies the number of elements in the Y direction that the superblock will be split into when creating a \cf2\strike Sutra mesh\cf3\strike0\{linkID=1060\}\cf0 .
\par \f2 
\par \f1 To determine the X and Y directions for the element, identify the two nodes with the largest X-coordinates.  Of those two, the one with the largest Y coordinate is treated as being in the upper right corner of the element.  If the nodes have the same Y-coordinate, the one with the larger X coordinate is treated as being in the upper right corner of the element.  If there is a tie for the nodes with the second and third highest X-coordinates, then the one with the higher Y-coordinate is selected as one of the two with the highest X-coordinate.\f2 
\par }
1430
Scribble1430
Domain Outline / unused layer1



general:000900
Writing



FALSE
31
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman\fcharset0 Times New Roman;}{\f4\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Domain Outline / unused layer1
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Domain Outline \b0 is a special Argus ONE layer type used to define the maximum areal extent of the simulated region when an irregular mesh is used.  The outermost contour on the \b Domain Outline \b0 will exactly contain the entire finite-element mesh that is generated.  Any closed contours inside the outermost one will represent areas where no mesh will be generated (fig. 13).  Geospatial information coverage in other layers is required everywhere within the domain outline for the finite-element mesh, and may extend areally beyond the domain outline.  If a FishNet mesh is used, SutraGUI does not need a \b Domain Outline \b0 layer but one is still needed by Argus ONE.  In such cases, the layer is renamed \b unused layer1\b0 .
\par 
\par \pard\fi720\sb120\sa120\cf2\{bmc DomainOutline.BMP\}\cf0 
\par \pard\sb120\sa120\b Figure \lang1024 13\lang1033 .  Domain Outline; an example showing vertices on a closed contour and the mesh generated by Argus ONE showing area where no mesh was generated. \b0 
\par \pard\fi720 
\par \pard\keep\fi720\sb120 The contours in the \b Domain Outline \b0 layer contain information controlling the size of finite-elements in an irregular mesh.  The \b element_size \b0 defines the desired nominal size of elements in the discretization.  This information, in conjunction with the layer \b Mesh Density \b0 and the geometry of objects in these layers, determines the distribution and size of mesh elements.  Mesh density is strongly affected by the proximity of contours and the size of contour segments, as described in the Argus ONE User's Guide (\cf3\strike Argus Interware, 1997\cf2\strike0\{linkTarget=ArgusInterware\}\cf0 ).  (The \b Mesh Density \b0 layer is usually used to refine the discretization in select areas of the model domain and is described below.)
\par \pard\fi720\sb120 Point and open contours may be specified in the \b Domain Outline\b0  layer.  Although these do not determine the external boundaries of the mesh, they may be used to define the nominal size of elements along these objects.  Nodes and edges of elements will fall exactly along these contours when the mesh is generated.
\par \pard\li720\sb120\i Note: In 2D models, any point or contour objects that must correspond with node location, such as contours in the \cf3\b\strike Sources of Fluid\cf2\strike0\{linkID=1700\}\cf0\b0  layer, must be copied to the \b Domain Outline \b0 layer before a useful mesh can be generated.  This is not required for 3D models.\i0 
\par \pard\fi720\sb120 The procedure for creating a domain outline follows.
\par \pard\fi-360\li1080\sb120\tx1100 1.\tab After the \b Domain Outline \b0 layer has been made active, the closed contours in the \b Domain Outline \b0 layer can either be generated with the contour drawing tool in the tool palette at the left of the Argus ONE window or they can be imported from text, DXF, or ArcView Shape files.
\par 2.\tab To draw a domain-outline contour manually, first click on the closed-contour drawing tool . \cf2\{bmc DomainButton.bmp\}\cf0  To specify the contour's position and shape, click in the white work area of the window in a sequence of positions to form a nearly closed contour.  To close the contour, double-click on the last position desired, then move the mouse away from the last point.  The contour automatically closes and the \i Contour Information \i0 dialog box appears (fig. 14).
\par \pard\sb120\sa120\cf2\b\{bmc Fig26.bmp\}\cf0 
\par Figure \lang1024 14\lang1033 .  Contour Information dialog box.
\par \pard\fi720\b0 
\par \pard\fi-360\li1080\sb120\tx1100 3.\tab This dialog box is used to specify the size of quadrilateral elements.  An \cf3\b\strike element_size\cf2\strike0\{linkID=1460\}\cf0  \b0 must be specified that refers to the desired typical size of an element side (in the distance units specified for the project).  This number is typed into the data box to the right of the word, "\cf3\b\strike element_size\cf2\strike0\{linkID=1460\}\cf0\b0 " and just below the label, "Value."  In figure 14, an \cf3\b\strike element_size\cf2\strike0\{linkID=1460\}\cf0  \b0 value of 0.5 is specified.  Click the OK button to exit the dialog box, and draw additional contours if desired.
\par \pard\li720\sb120\i Note: Argus ONE User's Guide (Argus Interware, 1997) refers to \cf3\b\strike element_size\cf2\strike0\{linkID=1460\}\cf0\b0  as mesh density.
\par \pard\fi-360\li1080\sb120\tx1100\i0 4.\tab To draw an open or point contour, click and hold the mouse button down over the contour drawing tool (fig. 15) and make a selection from the menu that appears.  Click in the white work area to draw the selected type of contour.  The Contour Information dialog box will appear again when the contour is completed for entry of the \cf3\b\strike element_size\cf2\strike0\{linkID=1460\}\cf0\b0  value.  
\par \pard\sb120\sa120\cf2\b\{bmc Fig27.bmp\}\cf0 
\par Figure \lang1024 15\lang1033 .  Contour Tool.\f2\fs20 
\par \pard\fi-360\li1080\sb120\tx1100\b0\f1\fs24 5.\tab Double-clicking on any contour brings back the \i Contour Information \i0 dialog box allowing modifications to be made to the values assigned to the object.
\par \pard\fi720\sb120 More information on drawing contours and on the drawing tools may be found in the Argus ONE User's Guide (Argus Interware, 1997).
\par \pard\li720\sb120\i Note: Argus ONE requires that the \b Domain Outline \b0 and \b Mesh Density \b0 layers be present even when the model uses a FishNet Mesh.  However, these are ignored in this case.  The layers have been renamed "\b unused layer1\b0 " and "\b unused layer2\b0 " to indicate that they are not to be used.  The reader is referred to the \cf3\b\strike FishNet_Mesh_Layout\cf2\strike0\{linkID=1400\}\cf0\b0  layer description on page \lang1024 42\lang1033  for more information on creating FishNet meshes.\i0 
\par \pard\fi-360\li1440\sb120\f2 
\par \pard\f3 See also: 
\par \cf3\strike element_size\cf2\strike0\{linkID=1460\}\cf0 
\par \cf3\strike How to specify geologic units in cross-sectional models\cf2\strike0\{linkID=1440\}\cf0\f4 
\par }
1440
Scribble1440
How to specify geologic units in cross-sectional models



general:000910
Writing



FALSE
24
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 How to specify geologic units in cross-sectional models\cf0\b0\f1\fs24 
\par 
\par In two-dimensional, cross-sectional models, it may sometimes be desireable to have the boundaries between geologic units lie along element boundaries.  This is easy to do with \cf2\strike Fishnet meshes\cf3\strike0\{linkID=1400\}\cf0  but a method for creating an irregular mesh with the same constraint is less obvious.  Here is one way to do it.
\par 
\par 1. On the \cf2\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0  layer, create a closed contour that outlines one of the geologic units and assign it the \cf2\strike element_size\cf3\strike0\{linkID=1460\}\cf0  that you desire.
\par 2. Draw a closed contour around a neighboring  geologic unit but separate it from the previous geologic unit by the width of one or two elements.  Continue until you have outline each geologic unit.
\par 3. In the mesh layer, click with the magic-wand tool inside each closed contour to create a portion of the final mesh.
\par 4. Select "Special|Preferences" and change the "minimal allowed angle for elements" from 22.5 to 0 and the "Maximal allowed elements for elements" from 165 to 360.
\par 5. Use the Element drawing tool from the Argus ONE tool palette to draw additional elements connecting the separated parts of the mesh as shown below.
\par 
\par \cf3\{bmc NewElements.BMP\}\cf0 
\par 
\par 6. The manually drawn elements may not be properly shaped. For example, they may contain angles greater than 180 degrees.  Once the elements have been drawn try to move the nodes to improve the shapes of the elements.  One way to do this is to select all the nodes between the two geologic units and then select "Special|Smooth Elements" as illustrated below.  (In some cases, it helps to do this several times.)   When doing this, be sure not to select any nodes that must lie on the boundary between the geologic units or over point or open contours that must lie directly under nodes.
\par 
\par \cf3\{bmc InteriorNodes.BMP\}
\par \{bmc SmoothedElements.BMP\}\cf0 
\par 
\par 7. Next select "Special|Preferences" and change the "minimal allowed angle for elements" back to 22.5 and the "Maximal allowed elements for elements" back to 165 (or to other values that you choose).
\par 8. To find elements that are misformed, select "Edit|Select Acute Elements". If there are elements that are misformed, edit them to make them acceptable.
\par 9. Select "Special|Renumber...", check the "Optimize Bandwidth" check box and click the "OK" button.
\par 
\par }
1450
Scribble1450
Mesh Density / unused layer2



general:000920
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Mesh Density / unused layer2
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\b\f2 Mesh Density\b0  is an Argus ONE Information layer that is used by the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer to define the refinement of the finite-element mesh in an irregular mesh (in addition to the \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  information contained in the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  layer).  This layer may contain point contours (that is, points), open contours, and closed contours representing the spatial distribution of \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  desired by the user.  Each contour has a value of the element_size associated with it and together, the contours on the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  and \b Mesh Density\b0  layers (together with parameters in the Argus ONE \i Preferences \i0 dialog box regarding meshing preferences) define the \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  throughout the mesh.  If a FishNet mesh is used, \b SutraGUI \b0 does not need a \b Mesh Density\b0  layer but one is still needed by Argus ONE.  In such cases, the layer is renamed \b unused layer2\b0 .
\par When regions where increased or decreased discretization within the model domain are desired by the user, the spatial distribution of \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  may be defined in the \b Mesh Density\b0  layer.  The \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  along the domain boundary will still be based on the value and node-spacing in the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  layer.
\par \pard\fi720 When the \b Mesh Density\b0  layer is active, as with all \i Information \i0 layers, the spatial distribution of \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  may be imported from TEXT, DXF or ArcView Shape files.  Alternatively, the point, line, and closed contour tools may be used to specify the approximate size of quadrilateral elements in regions of the modeled domain.  After using one of the contour tools to draw a contour, the \i Contour Information\i0  dialog box appears where the \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  is entered; the \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  is the desired size of the quadrilateral elements in project units, prescribed at the contour just drawn.  Examples of using the \b Mesh Density\b0  layer to specify the finite-element discretization may be found in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).  If the \b Mesh Density\b0  layer contains no contours (no objects), then the \cf2\b\strike element_size\cf3\strike0\{linkID=1460\}\cf0\b0  specified for contours in the layer, \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0 , is used in creating the mesh and the \b Mesh Density\b0  layer is ignored.
\par \pard\f1 
\par }
1460
Scribble1460
element_size



general:000930
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 element_size
\par \cf0\b0\fs20 
\par \b\f1\fs24 
\par Layers:\b0  
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent200{\pntxtb\'B7}}\fi-200\li200\cf2\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}Mesh Density\cf3\strike0\{linkID=1450\}\cf0 
\par \pard\b Expression:\b0  0
\par 
\par \b Element_size\b0  is used to specify the desired size of elements on the \cf2\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0  and \cf2\strike Mesh Density\cf3\strike0\{linkID=1450\}\cf0  layers.\f2   When creating a mesh, Argus ONE will make elements whose sides are close to the length specified in \b element_size\b0 .\f1 
\par }
1470
Scribble1470
SUTRA Observations



general:000940
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SUTRA Observations
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The \b SUTRA Observations \b0 layer is an \i Information \i0 layer that contains the spatial distribution of locations at which the user desires "observation-node output" from 2D SUTRA models.  As described in the SUTRA documentation, this output provides a detailed time series of pressure, concentration, or temperature, and saturation at user-selected nodes at a user-selected time-step interval.  This type of output is used for plotting time-draw down curves or solute breakthrough curves.  \b GW_Chart\b0  (\cf2\strike Winston, 2000\cf3\strike0\{linkTarget=Winston00\}\cf0 ) can be used to prepare such charts (called 'hydrographs' in \b GW_Chart\b0 ) from the output.
\par It is possible to use point, open, or closed contours to specify where observations should be made during the SUTRA simulation.  For each contour object, the value of the contour's parameter, \b is_observed\b0 , must be set to "True" (or 1).  The frequency of the observations is specified in the \cf2\b\strike Output Controls\cf3\strike0\{linkID=260\}\cf0  \b0 pane of the \b SUTRA Project Information \b0 dialog box.
\par The \b SUTRA Observation\b0  layer uses the Exact Contour method of interpretation so that observations are only defined inside of closed contours, or directly above open and point contours.
\par Nodes in the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer falling within the selected areas or directly above the open or points contours will be marked as observation nodes for input to SUTRA.
\par \pard\fi720 For 2D models, note that for the point and open contours, nodes will fall exactly above these locations when the mesh is generated only if these contours are first copied to the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  layer.  Information about copying and pasting objects in Argus ONE can be found in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).  Alternatively, the command \b PIEs|Convert\'85|Mesh Objects to Contours\'85\b0  in the Utility PIE (\cf2\strike Winston, 2001\cf3\strike0\{linkTarget=Winston01\}\cf0 ) can be used to copy nodes into information layers.
\par 
\par \pard Parameters:
\par \cf2\strike is_observed\cf3\strike0\{linkID=1471\}\cf0\f2 
\par }
1471
Scribble1471
is_observed



general:000950
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}{\f1\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 is_observed
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer:\b0  \cf2\strike Observation\cf3\strike0\{linkID=1470\}\cf0 
\par \b Expression:\b0  0
\par 
\par Is_observed is set to 1 or True to indicate that an observation should be made at the nodes selected using the contour.
\par }
1472
Scribble1472
UCODE Head/Pressure Observation



general:000951
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 UCODE Head/Pressure Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b UCODE Head/Pressure Observation\b0  layer is an information in which the user specifies the locations of generalized pressure observations (observations at arbitrary locations and time).  Typically, the user would use point contours to represent observations at arbitrary locations and closed contours to represent a series of related observations at nodes.  In either case, the user can specify arbitrary times in the \cf2\b\strike Obs Time[i]\cf3\strike0\{linkID=1480\}\cf0\b0  parameter.  The \cf2\b\strike Obs Name \cf3\b0\strike0\{linkID=1473\}\cf0 parameter represents the name of the observation series.
\par }
1473
Scribble1473
Obs Name



general:000952
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Obs Name\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\b\f2 Layers:\b0  \cf2\strike UCODE Pressure Observation\cf3\strike0\{linkID=1472\}\cf0 , \cf2\strike UCODE Temperature Observation\cf3\strike0\{linkID=1490\}\cf0 , \cf2\strike UCODE Observation Fluid Flow Rate at Spec P\cf3\strike0\{linkID=1491\}\cf0 , \cf2\strike UCODE Observation Heat Flow Rate at Spec P\cf3\strike0\{linkID=1492\}\cf0 , \cf2\strike UCODE Saturation Observation\cf3\strike0\{linkID=1493\}\cf0 
\par \b Expression:\b0  0\f1 
\par 
\par \b Obs Name\b0  is the name of the observation. SUTRA will use this name in the output to identify the observation.
\par }
1480
Scribble1480
Obs Time[i]



general:000953
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Obs Time[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\b\f2 Layers:\b0  \cf2\strike UCODE Pressure Observation\cf3\strike0\{linkID=1472\}\cf0 , \cf2\strike UCODE Temperature Observation\cf3\strike0\{linkID=1490\}\cf0 , \cf2\strike UCODE Observation Fluid Flow Rate at Spec P\cf3\strike0\{linkID=1491\}\cf0 , \cf2\strike UCODE Observation Heat Flow Rate at Spec P\cf3\strike0\{linkID=1492\}\cf0 , \cf2\strike UCODE Saturation Observation\cf3\strike0\{linkID=1493\}\cf0 
\par \b Expression:\b0  $N/A\f1 
\par 
\par \b Obs Name\b0  is the time at which an observation takes place.  Use $N/A to indicate that there is not an observation time for this parameter.
\par }
1490
Scribble1490
UCODE Concentration/Temperature Observation



general:000954
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 UCODE Concentration/Temperature Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b UCODE Concentration/Temperature Observation\b0  layer is an information in which the user specifies the locations of generalized concentration or temperature observations (observations at arbitrary locations and time).  Typically, the user would use point contours to represent observations at arbitrary locations and closed contours to represent a series of related observations at nodes.  In either case, the user can specify arbitrary times in the \cf2\b\strike Obs Time[i]\cf3\strike0\{linkID=1480\}\cf0\b0  parameter.  The \cf2\b\strike Obs Name \cf3\b0\strike0\{linkID=1473\}\cf0 parameter represents the name of the observation series.
\par 
\par }
1491
Scribble1491
UCODE Observation Fluid Flow Rate at Spec H/P



general:000955
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 UCODE Observation Fluid Flow Rate at Spec H/P\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b UCODE Observation Fluid Flow Rate at Spec H/P\b0  layer is an information in which the user specifies the locations of generalized observations of fluid flow at specified head or pressure nodes (observations at arbitrary locations and time).  Typically, the user would use point contours to represent observations at arbitrary locations and closed contours to represent a series of related observations at nodes.  In either case, the user can specify arbitrary times in the \cf2\b\strike Obs Time[i]\cf3\strike0\{linkID=1480\}\cf0\b0  parameter.  The \cf2\b\strike Obs Name \cf3\b0\strike0\{linkID=1473\}\cf0 parameter represents the name of the observation series.
\par 
\par }
1492
Scribble1492
UCODE Observation Solute/Heat Flow Rate at Spec H/P



general:000956
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 UCODE Observation Solute/Heat Flow Rate at Spec H/P\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b UCODE Observation Solute/Heat Flow Rate at Spec H/P\b0  layer is an information in which the user specifies the locations of generalized observations of solute or heat flow at specified head or pressure nodes (observations at arbitrary locations and time).  Typically, the user would use point contours to represent observations at arbitrary locations and closed contours to represent a series of related observations at nodes.  In either case, the user can specify arbitrary times in the \cf2\b\strike Obs Time[i]\cf3\strike0\{linkID=1480\}\cf0\b0  parameter.  The \cf2\b\strike Obs Name \cf3\b0\strike0\{linkID=1473\}\cf0 parameter represents the name of the observation series.
\par }
1493
Scribble1493
UCODE Saturation Observation



general:000957
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 UCODE Saturation Observation\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b UCODE Saturation Observation\b0  layer is an information in which the user specifies the locations of generalized saturation observations (observations at arbitrary locations and time).  Typically, the user would use point contours to represent observations at arbitrary locations and closed contours to represent a series of related observations at nodes.  In either case, the user can specify arbitrary times in the \cf2\b\strike Obs Time[i]\cf3\strike0\{linkID=1480\}\cf0\b0  parameter.  The \cf2\b\strike Obs Name \cf3\b0\strike0\{linkID=1473\}\cf0 parameter represents the name of the observation series.
\par }
1499
Scribble1499
GEOSPATIAL INFORMATION LAYERS



general:000960
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}{\f1\froman\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 GEOSPATIAL INFORMATION LAYERS
\par \cf0\b0\f1\fs24 
\par \f2 The geology and hydrology of an area are stored in Argus ONE as two-dimensional maps of the various parameters. These coverages are referred to as Geospatial Information layers and the specific ones used by the Argus-SUTRA GUI are described below. Separation of the underlying physical information from the simulation model provides a powerful hydrogeologic tool. The GIS coverages, described below and prepared for SUTRA simulation, may be used interchangeably for any simulation model coupled with Argus ONE.
\par 
\par The Geospatial Information layers in the Argus-SUTRA GUI in layer groups Hydrogeology and Initial Conditions, are initially assigned the interpretation method Nearest Contour method. The layer groups Hydrologic Sources and Hydrologic Boundaries are assigned the interpretation method Exact Contour method. An exception to the groupings mentioned above is layer Unsaturated Properties in layer group Hydrogeology, which is assigned the Exact Contour method. 
\par 
\par Some user experimentation with the interpretation methods may be necessary in order to achieve the best possible spatial distribution for a given parameter.
\par 
\par The Geospatial Information layers for the Argus-SUTRA GUI are grouped below by general type: \cf2\strike Hydrogeology\cf3\strike0\{linkID=1500\}\cf0 , \cf2\strike Hydrologic Sources\cf3\strike0\{linkID=1690\}\cf0 , \cf2\strike Hydrologic Boundaries\cf3\strike0\{linkID=1820\}\cf0 , and \cf2\strike Initial Conditions\cf3\strike0\{linkID=1900\}\cf0 . Each group contains a number of layers, each layer contains one or more parameters. After introduction of each parameter in the following sections, units are given for the parameter in square brackets; for example, for Permeability.maximum, the units are given as [L^2 ] representing arbitrary length-units squared. \cf2\strike Table 5\cf3\strike0\{linkID=1030\}\cf0  shows units used and displayed in the GUI with their meanings.
\par 
\par Parameter names such as Fluid Sources.RESULTANT_FLUID_SOURCE, that are uppercase, are calculated, or linked to other layer parameters and should not be modified directly. In most cases modifications to such parameters can be done by changing the lowercase parameters of the layers. Advanced users who understand the functions or references in these parameters may modify them to suit specific modeling needs. New users should consider parameters with uppercase names as "read-only" variables. Section "\cf2\strike Adding and Linking New Layers\cf3\strike0\{linkID=2380\}\cf0 " explains how to add new layers and link the information from these layers into a SUTRA project.
\par 
\par Depending on the choice of problem type made by the user in the SUTRA Interface Configuration window, some of the layer and parameter names and the units of the parameters will be different. All of the variations are included in the descriptions that follow.
\par 
\par Each parameter of each layer is assigned a default value by the SUTRA PIE. The background value specifies a constant value of a parameter for the entire workspace that will be assumed in case no other user input is provided to that parameter. 
\par }
1500
Scribble1500
Hydrogeology



general:000970
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrogeology
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Hydrogeology \b0 group of \i Information \i0 layers contains information on the spatial distributions of physical and material properties of the entire model.
\par \pard 
\par \cf2\strike Thickness\cf3\strike0\{linkID=1510\}\cf0 
\par \cf2\strike Porosity\cf3\strike0\{linkID=1520\}
\par \cf2\strike Permeability / Hydraulic Conductivity \cf3\strike0\{linkID=1530\}\cf0 
\par \cf2\strike Permeability (Unit[i]) / Hydraulic Conductivity (Unit[i]) \cf3\strike0\{linkID=1530\}
\par \cf2\strike Dispersivity\cf3\strike0\{linkID=1610\}
\par \cf2\strike Unsaturated Properties\cf3\strike0\{linkID=1680\}\cf0\f2 
\par }
1510
Scribble1510
Thickness



general:000980
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Thickness
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 The layer \b Thickness \b0 contains information on the spatial distribution of the thickness of the 2D medium to be modeled.  The layer contains only one parameter, thickness [L], which contains the thickness value.\f1 
\par }
1520
Scribble1520
Porosity



general:000990
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Porosity
\par \cf0\b0\fs24 
\par \pard\fi720\f1 The \b Porosity \b0 layer contains information on the spatial distribution of the porosity of the porosity of the 2D region to be modeled.  The layer contains only one parameter, \b porosity \b0 [fraction], which contains the porosity value.\f2 
\par \pard 
\par See also: \cf2\strike Sutra_Z() function\cf3\strike0\{linkID=4\f3 0\f2\}\cf0 
\par 
\par }
1530
Scribble1530
Permeability / Hydraulic Conductivity 



general:001000
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Permeability / Hydraulic Conductivity 
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\f2 The layer called \b Permeability \b0 (for cases using pressure) or \b Hydraulic Conductivity \b0 (for simulations using hydraulic head) contains information on the spatial distribution of the principal values of permeability/hydraulic conductivity, and the direction of the anisotropy for the medium to be modeled.  The layer contains three parameters:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike maximum\cf3\b0\strike0\{linkID=1540\}\cf0  [L\super 2\nosupersub ] ([L/s] for hydraulic conductivity)
\par \cf2\b\strike{\pntext\f3\'B7\tab}minimum\cf3\b0\strike0\{linkID=1560\}\cf0  [L\super 2\nosupersub ] ([L/s] for hydraulic conductivity)
\par \cf2\b\strike{\pntext\f3\'B7\tab}angle_of_max_to_x_axis\cf3\b0\strike0\{linkID=1570\}\cf0  [degrees]
\par \pard\li720\sb120\tx920 
\par \pard\fi720 If the system is isotropic, the maximum and minimum values must be set equal to the desired value, and the angle may be set to any arbitrary number.  It may be convenient for isotropic systems to link the value of one of the permeability minimum or maximum parameters to the other.  The reader is referred to Appendix A, entitled "\cf2\strike Adding and Linking New Layers\cf3\strike0\{linkID=2380\}\cf0 " on page \lang1024 107\lang1033 .\f1 
\par \pard 
\par }
1540
Scribble1540
maximum



general:001010
Writing



FALSE
11
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 maximum
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Permeability (Unit[i]) / Hydraulic Conductivity (Unit[i]) \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression (Hydraulic conductivity):\b0  1e-3\cf3 
\par \cf0\b Expression (permeability):\b0  1e-10\cf3 
\par \cf0 
\par Permeability.maximum [L^2 ] (or Hydraulic Conductivity.maximum [L/s]) contains information on the spatial distribution of the maximum component of permeability (or hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the two-dimensional medium being modeled.
\par 
\par }
1550
Scribble1550
middle



general:001020
Writing



FALSE
11
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 middle\cf0\b0\f1\fs24 
\par 
\par \b Layer: \cf2\b0\strike Permeability (Unit[i]) / Hydraulic Conductivity (Unit[i]) \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression (Hydraulic conductivity):\b0  1e-3\cf3 
\par \cf0\b Expression (permeability):\b0  1e-10\cf3 
\par \cf0 
\par Permeability.middle [L^2 ] (or Hydraulic Conductivity.middle [L/s]) contains information on the spatial distribution of the intermediate component of permeability (or hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the two-dimensional medium being modeled.
\par 
\par }
1560
Scribble1560
minimum



general:001030
Writing



FALSE
11
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 minimum
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Permeability (Unit[i]) / Hydraulic Conductivity (Unit[i]) \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression (Hydraulic conductivity):\b0  1e-3\cf3 
\par \cf0\b Expression (permeability):\b0  1e-10\cf3 
\par \cf0 
\par Permeability.minimum [L^2 ] (or Hydraulic Conductivity.minimum [L/s]) contains information on the spa-tial distribution of the minimum component of permeability (or hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the two-dimensional medium being modeled.
\par 
\par }
1570
Scribble1570
angle_of_max_to_x_axis



general:001040
Writing



FALSE
11
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 angle_of_max_to_x_axis
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Permeability / Hydraulic Conductivity \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0\cf3 
\par \cf0 
\par Permeability.angle_of_max_to_x_axis (or Hydraulic Conductivity.angle_of_max_to_x_axis) [degrees] contains information on the spatial distribution of the direction of the maximum component of permeability (hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the two-dimensional medium being modeled. The angle is given in degrees measured counter-clockwise from the +X direction.
\par 
\par 
\par }
1580
Scribble1580
horizontal angle



general:001050
Writing



FALSE
10
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 horizontal angle\cf0\b0\f1\fs24 
\par 
\par \b Layer: \cf2\b0\strike Permeability Unit[i] / Hydraulic Conductivity Unit[i]  \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0\cf3 
\par \cf0 
\par Permeability Unit[i].horizontal angle (or Hydraulic Conductivity Unit[i].horizontal angle) [degrees] contains information on the spatial distribution of the direction of the maximum component of permeability (hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled. The angle is given in degrees measured counter-clockwise from the +X direction in the horizontal plane.
\par 
\par }
1590
Scribble1590
vertical angle



general:001060
Writing



FALSE
9
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 vertical angle\cf0\b0\f1\fs24 
\par 
\par \b Layer: \cf2\b0\strike Permeability Unit[i] / Hydraulic Conductivity Unit[i]  \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0\cf3 
\par \cf0 
\par Permeability Unit[i].vertical angle (or Hydraulic Conductivity Unit[i].vertical angle) [degrees] contains information on the spatial distribution of the direction of the maximum component of permeability (hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled. The angle is given in degrees measured upwards from the horizontal plane.
\par }
1600
Scribble1600
rotational angle



general:001070
Writing



FALSE
9
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 rotational angle\cf0\b0\f1\fs24 
\par 
\par \b Layer: \cf2\b0\strike Permeability Unit[i] / Hydraulic Conductivity Unit[i]  \cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0\cf3 
\par \cf0 
\par Permeability Unit[i].rotational angle (or Hydraulic Conductivity Unit[i].rotational angle) [degrees] contains information on the spatial distribution of the direction of the intermediate and minimum component of permeability (hydraulic conductivity) of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled. After the \cf2\strike horizontal angle\cf3\strike0\{linkID=1580\}\cf0  and \cf2\strike vertical angle\cf3\strike0\{linkID=1590\}\cf0  are applied, look down the vector toward the origin and rotate counterclockwise. Before any of the angles are applied, the minimum permeability direction is vertical and the intermediate permeability direction is along the Y axis. The angle is given in degrees.
\par }
1610
Scribble1610
Dispersivity



general:001080
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Dispersivity
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\f2 The \b Dispersivity \b0 layer contains information on the spatial distribution of the longitudinal and transverse dispersivities of the system to be modeled.  The layer contains four parameters: 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike longdisp_in_max_permdir\cf3\strike0\{linkID=1620\}\cf0\b0  [L] = longitudinal dispersivity for flow in the direction of maximum permeability 
\par \cf2\b\strike{\pntext\f4\'B7\tab}longdisp_in_min_permdir\cf3\strike0\{linkID=1640\}\cf0\b0  [L] = longitudinal dispersivity for flow in the direction of minimum permeability 
\par \cf2\b\strike{\pntext\f4\'B7\tab}trandisp_in_max_permdir\cf3\strike0\{linkID=1650\}\cf0\b0  [L] = transverse dispersivity in the direction of maximum permeability for flow in the direction of minimum permeability 
\par \cf2\b\strike{\pntext\f4\'B7\tab}trandisp_in_min_permdir\cf3\strike0\{linkID=1670\}\cf0\b0  [L] = transverse dispersivity in the direction of minimum permeability for flow in the direction of maximum permeability
\par \pard\fi720\sb120 The additional components of the dispersivity values in 2D models are extensions to the classical dispersion process provided by SUTRA (\cf2\strike Voss, 1984\cf3\strike0\{linkTarget=Voss84\}\cf0 ; transverse extension added in 1990 revision).  To obtain the classical dispersion model used by most other transport models, set the values of the longitudinal dispersivity parameters equal to each other, and the values of the transverse dispersivity parameters equal to each other.\f3 
\par \pard\f1 
\par 
\par }
1620
Scribble1620
longdisp_in_max_permdir



general:001090
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 longdisp_in_max_permdir
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Dispersivity (Unit[i])\cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0.5\cf3 
\par \cf0 
\par Longdisp_in_max_permdir [L] contains information on the spatial distribution of the longitudinal dispersivity for flow in the maximum permeability (or hydraulic conductivity) direction of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled.
\par 
\par See also:
\par \cf2\strike ALMAX / ALMAX[i]\cf3\strike0\{linkID=1170\}\cf0 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\cf0\f1\fs24 
\par 
\par }
1630
Scribble1630
longdisp_in_mid_permdir



general:001100
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 longdisp_in_mid_permdir\cf0\b0\f1\fs24 
\par 
\par \b Layer: \cf2\b0\strike Dispersivity Unit[i]\cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0.5\cf3 
\par \cf0 
\par Longdisp_in_mid_permdir [L] contains information on the spatial distribution of the longitudinal dispersivity for flow in the intermediate permeability (or hydraulic conductivity) direction of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled.
\par 
\par See also:
\par \cf2\strike ALMID / ALMID[i]\cf3\strike0\{linkID=1180\}\cf0 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\cf0\f1\fs24 
\par 
\par }
1640
Scribble1640
longdisp_in_min_permdir



general:001110
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 longdisp_in_min_permdir
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Dispersivity (Unit[i])\cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0.5\cf3 
\par \cf0 
\par Longdisp_in_min_permdir [L] contains information on the spatial distribution of the longitudinal dispersivity for flow in the minimum permeability (or hydraulic conductivity) direction of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled.
\par 
\par See also:
\par \cf2\strike ALMIN / ALMIN[i]\cf3\strike0\{linkID=1190\}\cf0 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\cf0\f1\fs24 
\par 
\par }
1650
Scribble1650
trandisp_in_max_permdir



general:001120
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 trandisp_in_max_permdir
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Dispersivity (Unit[i])\cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0.5\cf3 
\par \cf0 
\par Trandisp_in_max_permdir [L] contains information on the spatial distribution of the transverse dispersivity for flow in the maximum permeability (or hydraulic conductivity) direction of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled.
\par 
\par See also:
\par \cf2\strike AT1MAX / AT1MAX[i]\cf3\strike0\{linkID=1200\}\cf0 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\cf0\f1\fs24 
\par 
\par }
1660
Scribble1660
trandisp_in_mid_permdir



general:001130
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 trandisp_in_mid_permdir\cf0\b0\f1\fs24 
\par 
\par \b Layer: \cf2\b0\strike Dispersivity Unit[i]\cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0.5\cf3 
\par \cf0 
\par Trandisp_in_mid_permdir [L] contains information on the spatial distribution of the transverse dispersivity for flow in the intermediate permeability (or hydraulic conductivity) direction of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled.
\par 
\par See also:
\par \cf2\strike AT1MID/ AT1MID[i]\cf3\strike0\{linkID=1210\}\cf0 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\cf0\f1\fs24 
\par 
\par }
1670
Scribble1670
trandisp_in_min_permdir



general:001140
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 trandisp_in_min_permdir
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\b0\strike Dispersivity (Unit[i])\cf3\strike0\{linkID=1530\}
\par \cf0\b Expression:\b0  0.5\cf3 
\par \cf0 
\par Trandisp_in_min_permdir [L] contains information on the spatial distribution of the transverse dispersivity for flow in the minimum permeability (or hydraulic conductivity) direction of the hydrogeologic unit to be modeled, or for generic studies, of the medium being modeled.
\par 
\par See also:
\par \cf2\strike AT1MIN / AT1MIN[i]\cf3\strike0\{linkID=1220\}\cf0 
\par \cf1\strike\f2\fs20 DATASET 15B: Element-wise DATA (one line for each of NE elements)\cf3\strike0\{link=*! ExecFile("http://water.usgs.gov/nrp/gwsoftware/sutra/SUTRA_2_1-documentation.pdf#page=266")\}\cf0\f1\fs24 
\par 
\par }
1680
Scribble1680
Unsaturated Properties



general:001150
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}{\f1\fswiss Arial;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}{\f4\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Unsaturated Properties\f1 
\par \cf0\b0\f2\fs24 
\par \pard\fi720\sb120\f3 The \b Unsaturated Properties\b0  layer is used to specify regions that have different unsaturated flow properties.  
\par \pard\li720\sb120\i Note: Unsaturated-flow simulation with SUTRA requires some \ul user programming\ulnone  in the SUTRA subroutine UNSAT for the user to specify the unsaturated functions for each region as described in \cf2\strike Voss and Provost (2002)\cf3\strike0\{linkTarget=Voss02\}\cf0 .  The FORTRAN source code for SUTRA and a FORTRAN compiler are required to use this feature.  Because there is not a standard format for any additional information that must be read into the program for unsaturated properties, \b SutraGUI \b0 does not create input files for unsaturated flow properties.  However, users may be able to create an export template for use within Argus ONE that will generate such files for their particular case, as described on p. 169-188 of the Argus ONE User's Guide (\cf2\strike Argus Interware Inc., 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).\i0 
\par \pard\fi720\sb120 The \b Unsaturated Properties\b0  layer contains information on the spatial distribution of regions having constant unsaturated properties in the unit to be modeled, or for generic studies, in the medium to be modeled.  This layer only appears when a saturated-unsaturated problem type has been selected in the \cf2\b\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0\b0  pane of the \b SUTRA Project Information\b0  dialog box.  The layer contains only one parameter, region (an integer), which contains the identification number of the region.  Usually the \i Exact Contour\i0  method should be used to define the location of regions in this layer, in which case only closed contours should be used for specifying regions.  The \i Exact Contour\i0  method is already specified as the default selection for this layer.  After closing a contour, the user must assign its region number in the \i Contour Information\i0  dialog box.  Any number of contours may share the same region number.  Each region represents one type of material having uniform unsaturated property functions.  For example, region 1 may be fine silt, region 2 may be clay, and region 3 may be coarse sand.  Each type of material may occur in a number of places within the model domain.  The default region number is zero.  To create regions that share a boundary (such as geologic layers), turn on the option \i Special|Allow Intersection\i0  before drawing contours.  If the user wishes to have nodes and element edges occur exactly at region boundaries, then for a FishNet Mesh, these boundaries need to be defined as the edges of superblocks in a \cf2\b\strike FishNet Mesh\cf3\strike0\{linkID=1400\}\cf0\b0  layout.  For an irregular mesh, these must be defined as open contours in the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  layer.  
\par \pard\li720\sb120\i Note: The Argus ONE irregular meshing engine fills only the outermost closed contour on the \b Domain Outline \b0 layer with elements.  Any interior closed contours are left empty (fig. 14).  The recommended procedure is to define a nearly closed open contour in which the distance between the ends of the contour and the outside closed domain boundary contour is roughly the length of the side of a typical element.\f4 
\par \pard\i0\f2 
\par }
1690
Scribble1690
Hydrologic Sources



general:001160
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrologic Sources
\par \cf0\b0\fs20 
\par \cf2\strike\f1\fs24 Sources of Fluid\cf3\strike0\{linkID=1700\}
\par \cf2\strike Sources of Solute / Energy\cf3\strike0\{linkID=1770\}\cf0\f0\fs20 
\par 
\par \pard\keep\fi720\sb120\f1\fs24 The \b Hydrologic Sources\b0  group of Information layers contains information on fluxes (quantity per time) of fluid, solute, and energy entering or leaving the 2D model domain.  In these layers, \b SutraGUI \b0 allows specification of fluid sources or sinks and energy/solute sources or sinks at points, along line segments, and for delimited areas.  Sources have positive values, whereas sinks are specified with a negative number.  Sources of fluid may be either specified as a total amount of fluid per second (that is, \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0 ), or as the total amount of fluid per second per length or area of the source object (that is, \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 ).  Similarly, sources of energy/solute may be either specified as a total amount of energy/solute per second (that is, \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0 ), or as the total amount of energy/solute per second per length or per area of the source object (that is, \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 ).  
\par \pard\fi720\sb120 Point sources may be assigned only a \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0 .  These are created with the point contour drawing tool located along the left side of the Argus ONE window.  Point sources typically represent injection or withdrawal wells for fluid sources.  For irregular meshes, the points representing point sources must be copied to the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  layer to force a node in the finite element mesh to be located at each point source when the mesh is regenerated.  Alternatively, the command \b PIEs|Convert\'85|Mesh Objects to Contours\'85\b0  in the Utility PIE (\cf2\strike Winston, 2001\cf3\strike0\{linkTarget=Winston01\}\cf0 ) can be used to copy nodes into information layers as point contours.  FishNet meshes must be designed such that the nodes fall exactly at the source locations.
\par Line or curve sources may be assigned either a total_source or a \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 .  These are created with the open contour drawing tool located along the left side of the Argus ONE window.  A fluid line source may represent, for example, recharge occurring along a reach of a river or irrigation canal.  Depending on whether the user knows the total recharge along the canal reach, or the recharge per length of canal, the user should specify either total_source or \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  in the \cf2\b\strike Sources of Fluid\cf3\strike0\{linkID=1700\}\cf0\b0  layer.  The contours representing these sources must be copied to the \cf2\b\strike Domain Outline\cf3\strike0\{linkID=1430\}\cf0\b0  layer to force nodes in the finite element mesh to be located along each source contour when the mesh is regenerated.  Alternatively, the command \b PIEs|Convert\'85|Mesh Objects to Contours\'85\b0  can be used to copy nodes and the edges of elements into \i Information \i0 layers.  FishNet meshes must be organized such that the nodes fall exactly at the source locations.
\par Area sources may be assigned either a \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  or a \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 .  These are created with the closed contour drawing tool located along the left side of the Argus ONE window.  For fluid, an area source may represent, for example, ground-water recharge below a lake (\cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  could be specified for the entire lake as one object) or rainfall recharge rate (volume per area) for a particular area (\cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  could be specified in units [L/s] for the object).  For energy, an area source may represent, for example, heat production in a magma body (\cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  could be specified for the entire body as one object) or radiogenic heat production rate (energy per area) for a particular area (\cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  could be specified in units [E/sL^\super 2\nosupersub ] for the object).
\par Because contours may not cross one another in Argus ONE, only one type of object may be specified at any location.  Furthermore, SUTRA accepts only one source per location; thus two sources, for example, rainfall and a well, cannot be specified separately at the same location, and must be summed externally by the user before entering values into \b SutraGUI \b0 for 2D meshes.  
\par \pard\keep\fi720\sb120 To obtain areally distributed values affecting nodes throughout the 2D mesh, rather than exactly along contours in these layers, an expression should be used for the \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  parameter.  The reader is referred to the section of this report entitled "\cf2\strike Adding and Linking New Layers\cf3\strike0\{linkID=2380\}\cf0 " on page \lang1024 107\lang1033 .\f2 
\par \pard\f3 
\par }
1700
Scribble1700
Sources of Fluid



general:001170
Writing



FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sources of Fluid
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Sources of Fluid \b0 layer contains information on the spatial distribution of the fluid sources and sinks (such as wells and recharge from rainfall).  Additionally the layer contains information on the solute concentration or temperature of the source fluids.  The layer contains six parameters.  However, two of these (the ones with the uppercase names) are automatically calculated by \b SutraGUI \b0 from the others and must not be altered by the user.  For any given object in the layer, the user may only specify three of the remaining four parameters, because a choice must be made between \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  and \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  as described above in the section of this report entitled "\cf2\strike Total and Specific Sources\cf3\strike0\{linkID=51\}\cf0 " on page \lang1024 14\lang1033 .  When pressure has been selected as the hydraulic variable, fluid sources use units of [M/s]; when hydraulic head has been selected, units of [L^\super 3\nosupersub /s] are used.  The parameters for this layer are:
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0  \b0 [M/s] ([L^\super 3\nosupersub /s] when using hydraulic head)\b 
\par \cf2\strike{\pntext\f3\'B7\tab}specific_source\cf3\strike0\{linkID=1720\}\cf0  \b0 [(M/s)/(L, L^\super 2\nosupersub , or L^\super 3\nosupersub )] ([(L^\super 3\nosupersub /s)/(L, L^\super 2\nosupersub , or L^\super 3\nosupersub )] when using hydraulic head)\b 
\par \cf2\strike{\pntext\f3\'B7\tab}concentration_of_source\cf3\strike0\{linkID=1730\}\cf0  \b0 [C] (or \cf2\b\strike temperature_of_source\cf3\strike0\{linkID=1730\}\cf0  \b0 [\'b0C] for energy transport)\b 
\par \cf2\strike{\pntext\f3\'B7\tab}time_dependence\cf3\strike0\{linkID=1740\}\cf0  \b0 [0 or 1]
\par \cf2\b\strike{\pntext\f3\'B7\tab}RESULTANT_FLUID_SOURCE\cf3\strike0\{linkID=1750\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}QINUIN\cf3\strike0\{linkID=1760\}\cf0 
\par \pard\b0\f2 
\par 
\par \cf2\strike 
\par }
1710
Scribble1710
total_source



general:001180
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 total_source
\par \cf0\b0\f1\fs24 
\par \b Layer: \cf2\strike Sources of Fluid (Top/Bottom Unit[i])\cf3\strike0\{linkID=1700\}\cf0\b0 
\par \b\f2 Expression: \b0 $N/A\f1 
\par 
\par \b Sources of Fluid.total_source\b0  [M/s or L^3 /s], allows the user to specify the total fluid source over any object specified in the layer. 
\par 
\par If an object for which total_source is specified extends outside of the domain boundary, not all of this total will be included in the model.
\par }
1720
Scribble1720
specific_source



general:001190
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 specific_source
\par \cf0\b0\f1\fs24 
\par \b Layer: \cf2\strike Sources of Fluid (Top/Bottom Unit[i])\cf3\strike0\{linkID=1700\}\cf0\b0 
\par \b\f2 Expression: \b0 $N/A\f1 
\par 
\par \b Sources of Fluid.specific_source\b0  [(M/s or L^3 /s)/(L or L^2 )], allows the user to specify the fluid source per length of an open contour object (a curve) or per area of a closed contour object (an area) in the layer.
\par }
1730
Scribble1730
concentration_of_source or temperature_of_source



general:001200
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 concentration_of_source or temperature_of_source
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\strike Sources of Fluid (Top/Bottom Unit[i])\cf3\strike0\{linkID=1700\}\cf0\b0 
\par \b\f2 Expression: \b0 $N/A\f1 
\par 
\par \b Sources of Fluid.concentration_of_source\b0  [C] (or \b Sources of Fluid.temperature_of_source\b0  [degC]), contains the value of the concentration (or temperature) of inflowing fluid for each object in the layer.\f2   Concentrations are expressed in terms of mass fraction.\f1 
\par }
1740
Scribble1740
time_dependence



general:001210
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependence
\par \cf0\b0\f1\fs24 
\par \b Layer: \cf2\strike Sources of Fluid (Top/Bottom Unit[i])\cf3\strike0\{linkID=1700\}\cf0\b0 
\par \b\f2 Expression: \b0 0\f1 
\par 
\par \b Sources of Fluid.time_dependence\b0  [1,0], contains an indicator as to whether any of the parameters in an object will be specified as time-dependent and require user-programming in SUTRA subroutine, BCTIME. A value of 1 indicates that there is time-dependence, and a value of 0 (default) indicates that all parameters in the object do not vary with time.
\par }
1750
Scribble1750
RESULTANT_FLUID_SOURCE



general:001220
Writing



FALSE
9
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 RESULTANT_FLUID_SOURCE
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\strike Sources of Fluid (Top/Bottom Unit[i])\cf3\strike0\{linkID=1700\}\cf0\b0 
\par \b Expression: \b0 If(IsNumber(Sources of Fluid.specific_source) | IsNumber(Sources of Fluid.total_source), index(ContourType()+1, Sources of Fluid.specific_source, Sources of Fluid.total_source, If(IsNumber(Sources of Fluid.specific_source), Sources of Fluid.specific_source, Sources of Fluid.total_source/ContourLength()), If(IsNumber(Sources of Fluid.specific_source), Sources of Fluid.specific_source, Sources of Fluid.total_source/ContourArea()), If(IsNumber(Sources of Fluid.specific_source), Sources of Fluid.specific_source, Sources of Fluid.total_source/ContourArea())), $n/a)
\par 
\par \f0\fs20 Sources of Fluid.RESULTANT_FLUID_SOURCE, is calculated by Argus ONE. The UPPERCASE parameter name is intended to mark this parameter as being an internally-calculated value that should not be modified directly. This parameter contains the resulting fluid source for each object, which is automatically calculated as follows. For a point object, it contains the total_source value specified by the user. For an open or closed contour, it contains either the specific_source, if this was specified by the user, or the total_source divided by the length or area, respectively, of the contour. Thus, for non-point objects, RESULTANT_FLUID_SOURCE always contains a specific source value (i.e. total source per length or area of object).\f1\fs24 
\par }
1760
Scribble1760
QINUIN



general:001230
Writing



FALSE
38
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 QINUIN
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\strike Sources of Fluid (Top/Bottom Unit[i])\cf3\strike0\{linkID=1700\}\cf0\b0 
\par \b Expression: \b0  one of the below.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent200{\pntxtb\'B7}}\fi-200\li200 RESULTANT_FLUID_SOURCE*concentration_of_source
\par {\pntext\f4\'B7\tab}RESULTANT_FLUID_SOURCE*temperature_of_source
\par \pard\fi-160\li160\tx160 
\par \pard Sources of Fluid.QINUIN is calculated by Argus ONE. The UPPERCASE parameter name is intended to mark this parameter as being an internally-calculated value that should not be modified directly. This parameter is an intermediate value used by the \cf2\strike UIN\cf3\strike0\{linkID=1250\}\cf0  parameter of the SUTRA Mesh layer. The expression given for this parameter applies as the default value for the parameter in the entire layer. However, its actual purpose is only to correctly determine the net concentration (or temperature) of all source fluids assigned to nodes near closed contours (within one-half an element distance). Its value is the product of the fluid source and its concentration (or temperature). 
\par 
\par The value of the SUTRA Mesh layer parameter \cf2\strike UIN\cf3\strike0\{linkID=1250\}\cf0  (concentration or temperature of fluid source at a node) then is defined using the parameter in the following logic.
\par 
\par For a point or open contour object:
\par 
\par UIN = Sources of Fluid.concentration_of_source
\par 
\par Otherwise (i.e. for background and on or in closed contour objects):
\par 
\par UIN = NodeEffectiveValue(Sources of Fluid.QINUIN) / NodeEffectiveValue(Sources of Fluid.RESULTANT_FLUID_SOURCE)
\par 
\par The Argus ONE function, NodeEffectiveValue, gives an area-weighted average of its argument (see\f2  the\f1  \f3 Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 )\f1 ). For each node within one-half element of closed contours, this second relation correctly determines the net concentration of all background and closed contour sources affecting the node, while the first simply assigns the point or line-source concentration to the nodes exactly below these source types.
\par 
\par In the case where the sources affecting a node are both inflows and outflows, there is an approximation the user must be aware of, as described in the following. Because SUTRA accepts only one source and source concentration (or temperature) per node, the various sources (and sinks) affecting each node are summed by the GUI giving a net source for each node. For a positive net source (i.e. an inflow) at a node, a net concentration of the fluid mixture must also be specified to SUTRA. When all the sources summed are inflows, calculation of a net concentration value of the net source is unambiguous because the concentrations of all inflowing fluids are given by the user as usual. When all of the sources affecting a node are outflows, no concentration needs to be specified to SUTRA at that node as this value will be a simulation result, as is usual with SUTRA. However, when some of the sources in the GUI affecting a node are inflows and some affecting the same node are outflows, and the resultant net source is an inflow, then the net concentration to be applied for this net inflow is ambiguous. This is because the concentration of the outflows to be summed with the inflows will generally be unknown to the user until after the simulation is complete. In this situation, the user should guess the concentration of outflowing fluid when specifying Sources of Fluid.concentration in order to approximate the net concentration. This need to guess outflow concentration prior to running a simulation will be a limitation until the SUTRA code is revised to accept multiple independent sources at each node. Note again that a guess is required only when both inflows and outflows occur in the neighborhood of a node, and the resulting source is an inflow.
\par 
\par To specify total_source or specific_source, the user must place a numeric value for one of these in the VALUE column of the Contour Information window that appears after completion of drawing an object. The value next to the other type of source parameter, which is not being used, must be set to $n/a, the Argus ONE symbol for a value that is "Not Assigned". The value of concentration (or temperature) must be set to a numeric value replacing the $n/a that appears for each new object. To switch between the two types of source specification, the user must place the $n/a in the type not being used. Using zero rather than $n/a will not work.
\par 
\par If the user desired to spread a single source evenly over the model domain, such as a recharge from rainfall, there would be two ways this could be accomplished. A closed contour could be drawn around the entire model domain, or the background value of Sources of Fluid.specific_source in the Layers dialog could be defined, setting it to a constant. Note that the interaction of background values and objects depends on the interpolation type (see "Interpretation of Contours and Point Data" (page 45)).
\par 
\par A visually appealing way to surround the model area with a closed contour would be to copy the contour representing the domain outline to this layer and assign it a source value.
\par 
\par Setting a value of 1 or "true" for Sources of Fluid.time_dependence will cause node numbers in the input file for SUTRA created by the Argus-SUTRA GUI to be negative. This, in turn, causes SUTRA to refer to the subroutine BCTIME at the beginning of each time step to obtain the time-dependent values for each node with a negative node number.
\par 
\par BCTIME must be user programmed to obtain the desired type of time variation as described in \cf2\strike Voss (1984)\cf3\strike0\{linkTarget=Voss84\}\cf0 . The FORTRAN source code for SUTRA and a FORTRAN compiler are required to use this feature.
\par 
\par A limitation of this version of the Argus-SUTRA GUI is that the separation of nodes into groups, where each group has a different time-dependence user-programmed in BCTIME, is not possible. The is because SUTRA does not currently accept such group input. Thus, negative node numbers will have to be manually discovered by the user for the purposes of programming BCTIME after mesh generation if there is to be more than one group of time-varying fluid source nodes. This may be done by using the Search For... command found under Edit along the top of the Argus ONE window, or by exporting the SUTRA dataset for the simulation and examining the file.
\par 
\par }
1770
Scribble1770
Sources of Solute / Energy



general:001240
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sources of Solute / Energy
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 The \b Sources of Solute\b0  (or \b Sources of Energy\b0 ) layer contains information on the spatial distribution of the solute (or energy) sources and sinks (such as dissolving minerals, radiogenic heat production, or thermal conduction through a boundary).  The layer contains four parameters.  However, one of these (the one with the uppercase name) is automatically calculated by Argus ONE from the others and may not be altered by the user.  For any given object in the layer, the user may only specify two of the remaining three parameters, because a choice must be made between \cf2\b\strike total_source\cf3\strike0\{linkID=1780\}\cf0\b0  and \cf2\b\strike specific_source\cf3\strike0\{linkID=1790\}\cf0\b0  as described above in the section of this report entitled "\cf2\strike Total and Specific Sources\cf3\strike0\{linkID=51\}\cf0 " on page \lang1024 14\lang1033 .  The parameters for this layer are:
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf2\b\strike total_source\cf3\strike0\{linkID=1780\}\cf0\b0  [C/s or E/s]
\par \cf2\b\strike{\pntext\f3\'B7\tab}specific_source\cf3\strike0\{linkID=1790\}\cf0\b0  [(C/s or E/s)/(L or L 2 )]
\par \cf2\b\strike{\pntext\f3\'B7\tab}time_dependence\cf3\strike0\{linkID=1800\}\cf0\b0  [0 or 1]
\par \cf2\b\strike{\pntext\f3\'B7\tab}RESULTANT_SOLUTE/ENERGY_SOURCE\cf3\strike0\{linkID=1810\}\cf0\b0\f1 
\par }
1780
Scribble1780
total_source



general:001250
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 total_source
\par \cf2\b0\f1\fs24 
\par \b La\f2 yer: \cf3\strike Sources of Solute / Energy (Top/Bottom Unit[i])\cf4\strike0\{linkID=1770\}\cf2 
\par Expression: \b0 $N/A\f1 
\par 
\par \cf0\f3 Sources of Solute/Energy.total_source [C/s or E/s], allows the user to specify the total source over any object specified in the layer.
\par }
1790
Scribble1790
specific_source



general:001260
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 specific_source
\par \cf0\b0\f1\fs24 
\par \cf2\b\f2 La\f3 yer: \cf3\strike Sources of Solute / Energy (Top/Bottom Unit[i])\cf4\strike0\{linkID=1770\}\cf2 
\par Expression: \b0 $N/A
\par 
\par \cf0\f1 Sources of Solute/Energy.specific_source [(C/s or E/s)/(L or L 2 )], allows the user to specify the source per length of an open contour object (a curve), or the source per area of a closed contour object (an area) in the layer.
\par }
1800
Scribble1800
time_dependence



general:001270
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependence
\par \cf0\b0\f1\fs24 
\par \cf2\b\f2 La\f3 yer: \cf3\strike Sources of Solute / Energy (Top/Bottom Unit[i])\cf4\strike0\{linkID=1770\}\cf2 
\par Expression: \b0 0
\par 
\par \cf0\f1 Sources of Solute/Energy.time_dependence [1,0], contains an indicator as to whether any of the parameters in an object will be specified as time-dependent and require user-programming in SUTRA subroutine, BCTIME. A value of 1 indicates that there is time-dependence, and a value of 0 (default) indicates that all parameters in the object do not vary with time.
\par }
1810
Scribble1810
RESULTANT_SOLUTE_SOURCES or RESULTANT_ENERGY_SOURCES



general:001280
Writing



FALSE
23
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 RESULTANT_SOLUTE_SOURCES or RESULTANT_ENERGY_SOURCES
\par \cf0\b0\fs20 
\par \cf2\b\f1\fs24 La\f2 yer: \cf3\strike Sources of Solute / Energy (Top/Bottom Unit[i])\cf4\strike0\{linkID=1770\}\cf2 
\par \cf0\f3 Expression: 
\par 
\par \b0 If(IsNumber(Sources of Solute.specific_source)|IsNumber(Sources of Solute.total_source), If(IsNumber(Sources of Solute.specific_source), Sources of Solute.specific_source, If(ContourType()=3, Sources of Solute.total_source/ContourArea(), If(ContourType()=2, Sources of Solute.total_source/ContourLength(), Sources of Solute.total_source))), $n/a)
\par 
\par or 
\par 
\par If(IsNumber(Sources of Energy.specific_source)|IsNumber(Sources of Energy.total_source), If(IsNumber(Sources of Energy.specific_source), Sources of Energy.specific_source, If(ContourType()=3, Sources of Energy.total_source/ContourArea(), If(ContourType()=2, Sources of Energy.total_source/ContourLength(), Sources of Energy.total_source))), $n/a)
\par 
\par Sources of Solute/Energy.RESULTANT_SOLUTE/ENERGY_SOURCE, is calculated by Argus ONE. The UPPERCASE parameter name is intended to mark this parameter as being different from the others. This parameter contains the resulting source for each object, which is automatically calculated as follows. For a point object, it contains the total_source value specified by the user. For an open or closed contour, it contains either the specific_source, if this was specified by the user, or the total_source divided by the length or area, respectively, of the contour. Thus, for non-point objects, RESULTANT_SOLUTE/ENERGY_SOURCE always contains a specific source value (i.e. total source per length or area of object).
\par 
\par To specify \cf3\b\strike total_source\cf4\strike0\{linkID=1780\}\cf0  \b0 or \cf3\b\strike specific_source\cf4\strike0\{linkID=1790\}\cf0\b0 , the user must place a numeric value for one of these in the \b VALUE\b0  column of the Contour Information window that appears after completion of drawing an object. The value next to the other type of source parameter, which is not being used, must be set to \b $n/a\b0 . To switch between the two types of source specification, the user must place the \b $n/a\b0  in the type not being used; using zero rather than \b $n/a\b0  will not work.
\par 
\par Setting a value of 1 or "true" for \b Sources of Solute/Energy.time_dependence\b0  will cause node numbers in the input file for SUTRA created by the Argus-SUTRA GUI to be negative. This, in turn, causes SUTRA to refer to the subroutine BCTIME at the beginning of each time step to obtain the time-dependent values for each node with a negative node number.
\par 
\par BCTIME must be user programmed to obtain the desired type of time variation as described in \cf3\strike Voss (1984)\cf4\strike0\{linkTarget=Voss84\}\cf0 . The FORTRAN source code for SUTRA and a FORTRAN compiler are required to use this feature.
\par 
\par A limitation of this version of the Argus-SUTRA GUI is that the separation of nodes into groups, where each group has a different time-dependence user-programmed in BCTIME, is not possible, because SUTRA does not presently accept such group input. Thus, negative node numbers will have to be manually discovered by the user for the purposes of programming BCTIME after mesh generation if there is to be more than one group of time-varying solute/energy source nodes.
\par }
1820
Scribble1820
Hydrologic Boundaries Group Layer 



general:001290
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrologic Boundaries Group Layer 
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 The Hydrologic Boundaries group of \i Information \i0 layers contains information on the known values (or changes in values over time) of pressure, hydraulic head, solute concentration, and temperature in the hydrogeologic unit, at locations where these levels are controlled by forces external to those occurring within the model.  
\par \pard 
\par \cf2\strike Specified Pressure / Hydraulic Head\cf3\strike0\{linkID=1830\}\cf0 
\par \cf2\strike\f1 Specified Concentration / Temperature\cf3\strike0\{linkID=1870\}\cf0 
\par 
\par }
1830
Scribble1830
Specified Pressure / Hydraulic Head



general:001300
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specified Pressure / Hydraulic Head
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Specified Pressure\b0  (or \b Specified Hydraulic Head\b0 ) layer contains information on the spatial distribution of known or fixed pressures or hydraulic heads.  It also contains information on the associated concentration or temperatures of the boundary nodes and whether the boundary conditions are time dependent.  The layer contains three parameters:
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf2\b\strike specified_pressure\cf3\strike0\{linkID=1840\}\cf0\b0  [M/(Ls^\super 2\nosupersub  )] (or \cf2\b\strike specified_hydraulic_head\cf3\strike0\{linkID=1840\}\cf0\b0  [L])
\par \cf2\b\strike{\pntext\f3\'B7\tab}concentration\cf3\strike0\{linkID=1850\}\cf0\b0  [C] (or \cf2\b\strike temperature\cf3\strike0\{linkID=1850\}\cf0\b0  [\'b0C]) 
\par \cf2\b\strike{\pntext\f3\'B7\tab}time_dependence\cf3\strike0\{linkID=1860\}\cf0  \b0 [0 or 1]\f2 
\par }
1840
Scribble1840
specified_pressure or specified_hydraulic_head



general:001310
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 specified_pressure or specified_hydraulic_head
\par \cf0\b0\f1\fs24 
\par \b\f2 Layer: \cf2\strike Specified Pressure / Hydraulic Head (Top/Bottom Unit[i])\cf3\strike0\{linkID=1830\}\cf0 
\par Expression: \b0 $N/A\f1 
\par 
\par Specified Pressure.specified_pressure [M/(Ls 2 )] (or Specified Hydraulic Head.specified_hydraulic_head [L]), allows the user to specify the fluid pressure (or hydraulic head) over any object specified in the layer.
\par }
1850
Scribble1850
concentration or temperature



general:001320
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 concentration or temperature
\par \cf0\b0\f1\fs24 
\par \b\f2 Layer: \cf2\strike Specified Pressure / Hydraulic Head (Top/Bottom Unit[i])\cf3\strike0\{linkID=1830\}\cf0 
\par Expression: \b0 $N/A
\par \f1 
\par Specified Pressure.concentration [C] (or Specified Pressure.temperature [degC]), contains the value of the concentration or temperature of any fluid inflow that may occur for each object in the layer as a result of the specified pressure (or hydraulic head).\f2   Concentrations are expressed in terms of mass fraction.\f1 
\par }
1860
Scribble1860
time_dependence



general:001330
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependence
\par \cf0\b0\f1\fs24 
\par \b\f2 Layer: \cf2\strike Specified Pressure / Hydraulic Head (Top/Bottom Unit[i])\cf3\strike0\{linkID=1830\}\cf0 
\par Expression: \b0 0
\par \f1 
\par \b Specified Pressure.time_dependence \b0 (or \b Specified Hydraulic Head.time_dependence\b0 ), contains an indicator as to whether either of the parameters in an object will be specified as time-dependent and require user-programming in SUTRA subroutine, BCTIME. A value of 1 indicates that there is time-dependence, and a value of 0 (default) indicates that all parameters in the object do not vary with time.
\par 
\par The SUTRA-Argus ONE GUI allows specification of pressures (or hydraulic head) at points, along curves and for delimited areas. To specify pressure, the user must place a numeric value in the \b VALUE\b0  column of the Contour Information window that appears after completion of drawing an object. The value of \b concentration\b0  (or \b temperature\b0 ) must be set to a numeric value replacing the \b $n/a\b0  that appears for each new object; this is the concentration or temperature for any fluid that enters the model as a result of the pressure (or hydraulic head) being held constant.
\par 
\par When the Argus ONE interpretation scheme is set to its default for this layer, (\b Exact Contour method\b0 ), point, open and closed contour objects in this layer will only affect nodes in the \b SUTRA Mesh \b0 layer that occur exactly over (and within) these objects. This requires that the user copy open and point contours to the \b Domain Outline \b0 layer, and that the mesh be regenerated, to force the mesh to have nodes exactly along these contours. Some nodes naturally fall within the area delimited by closed contours, and these contours should not be copied to the \b Domain Outline \b0 layer (this would create holes in the mesh).
\par 
\par Setting a value of 1 or "true" for Specified Pressure.time_dependence (or \b Specified Hydraulic Head.time_dependence\b0 ) will cause node numbers in the input file for SUTRA created by the Argus-SUTRA GUI to be negative. This, in turn, causes SUTRA to refer to the subroutine BCTIME at the beginning of each time step to obtain the time-dependent values for each node with a negative node number. BCTIME must be user programmed to obtain the desired type of time variation as described in \cf2\strike Voss (1984)\cf3\strike0\{linkTarget=Voss84\}\cf0 .
\par 
\par A limitation of this version of the Argus-SUTRA GUI is that the separation of nodes into groups, where each group has a different time-dependence user-programmed in BCTIME, is not possible, because SUTRA does not presently accept such group input. Thus, negative node numbers will have to be manually discovered by the user for the purposes of programming BCTIME after mesh generation if there is to be more than one group of time-varying specified pressure (or hydraulic head) nodes.
\par 
\par }
1870
Scribble1870
Specified Concentration / Temperature



general:001340
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specified Concentration / Temperature
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Specified Concentration\b0  (or \b Specified Temperature\b0 ) layer contains information on the spatial distribution of known or fixed values of solute concentration (or temperature).  This specification refers not only to the fluid entering the model, but also to the exiting fluid and the fluid within the unit itself.  It also contains information on whether the boundary conditions are time dependent.  The layer contains two parameters\f2 :\f1 
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200\cf2\b\strike specified_concentration\cf3\strike0\{linkID=1880\}\cf0\b0  [C] (or \cf2\b\strike specified_temperature\cf3\strike0\{linkID=1880\}\cf0\b0  [\'b0C])
\par \cf2\b\strike{\pntext\f4\'B7\tab}time_dependence\cf3\strike0\{linkID=1890\}\cf0\b0  [0 or 1]\f3 
\par }
1880
Scribble1880
specified_concentration or specified_temperature 



general:001350
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 specified_concentration or specified_temperature 
\par \cf0\b0\f1\fs24 
\par \b\f2 Layer: \cf2\strike Specified Concentration / Temperature (Top/Bottom Unit[i])\cf3\strike0\{linkID=1870\}\cf0 
\par Expression: \b0 $N/A\f1 
\par 
\par Specified Concentration.specified_concentration [C] (or Specified Temperature.specified_temperature [degC]), allows the user to specify the solute concentration (or temperature) over any object specified in the layer.\f2   Concentrations are expressed in terms of mass fraction.\f1 
\par }
1890
Scribble1890
time_dependence



general:001360
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 time_dependence
\par \cf0\b0\fs20 
\par \b\f1\fs24 Layer: \cf2\strike Specified Concentration / Temperature (Top/Bottom Unit[i])\cf3\strike0\{linkID=1870\}\cf0 
\par Expression: \b0 0
\par 
\par \f2 Specified Concentration.time_dependence, (or Specified Temperature.time_dependence), contains an indicator as to whether either of the parameters in an object will be specified as time-dependent and require user-programming in SUTRA subroutine, BCTIME. A value of 1 indicates that there is time-dependence, and a value of 0 (default) indicates that all parameters in the object do not vary with time.
\par 
\par The SUTRA-Argus ONE GUI allows specification of concentrations (or temperatures) at points, alongcurves and for delimited areas. To specify concentration (or temperature), the user must place a numeric value in the VALUE column of the Contour Information window that appears after completion of drawing an object. The value of concentration (or temperature) must be set to a numeric value replacing the $n/a that appears for each new object; this is the value for any fluid already within the hydrogeologic unit or model and for any fluid that enters or leaves at this object.
\par 
\par When the Argus ONE interpretation scheme is set to its default for this layer, (Exact Contour method), point, open and closed contour objects in this layer will only affect nodes in the SUTRA Mesh layer that occur exactly over (and within) these objects. This requires that the user copy open and point contours to the Domain Outline layer, and that the mesh be regenerated, to force the mesh to have nodes exactly along these contours. Some nodes naturally fall within the area delimited by closed contours, and these should not be copied to the Domain Outline layer (this would create a hole in the mesh).
\par 
\par Setting a value of 1 or "true" for Specified Concentration.time_dependence (or Specified Temperature. time_dependence) will cause node numbers in the input file for SUTRA created by the Argus-SUTRA GUI to be negative. This, in turn, causes SUTRA to refer to the subroutine BCTIME at the beginning of each time step to obtain the time-dependent values for each node with a negative node number. BCTIME must be user programmed to obtain the desired type of time variation as described in \cf2\strike Voss (1984)\cf3\strike0\{linkTarget=Voss84\}\cf0 .
\par 
\par A limitation of this version of the Argus-SUTRA GUI is that the separation of nodes into groups, where each group has a different time-dependence user-programmed in BCTIME, is not possible, because SUTRA does not presently accept such group input. Thus, negative node numbers will have to be manually discovered by the user for the purposes of programming BCTIME after mesh generation if there is to be more than one group of time-varying specified concentration (or temperature) nodes.
\par }
1900
Scribble1900
Initial Conditions



general:001370
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Conditions
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Initial Conditions\b0  group of \i Information \i0 layers contains information on the spatial distribution of pressures or hydraulic heads, and solute concentrations or temperatures at the beginning of the model run, within the region being considered.  (Information in the respective layer described below is ignored when SutraGUI creates the SUTRA input files if the user has chosen to read initial conditions from a restart file or to generate initial conditions by interpolation.  Both of these options are specified on the \cf2\b\strike Initial Condition Control\cf3\strike0\{linkID=255\}\cf0\b0  pane of the \cf2\b\strike SUTRA Project Information\cf3\strike0\{linkID=140\}\cf0\b0  dialog box.)\f2 
\par \pard 
\par \cf2\strike Initial Pressure/Initial Hydraulic Head\cf3\strike0\{linkID=1910\}\cf0 
\par \cf2\strike Initial Concentration/Initial Temperature\cf3\strike0\{linkID=1920\}\cf0 
\par }
1910
Scribble1910
Initial Pressure/Initial Hydraulic Head



general:001380
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Pressure/Initial Hydraulic Head
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 The \b Initial Pressure\b0  or \b Initial Hydraulic Head\b0  layer contains information on the spatial distribution of pressure or hydraulic head at the beginning of the model run within the medium to be modeled.  The layer contains only one parameter, \b initial_pressure\b0  [M/(Ls^\super 2\nosupersub  )], (or \b initial_hydraulic_head\b0  [L]), which contains the pressure (or hydraulic head) values.  \f1 
\par \pard 
\par }
1920
Scribble1920
Initial Concentration/Initial Temperature



general:001390
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fcharset0 Times New Roman;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Concentration/Initial Temperature
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \b Initial Concentration\b0  or \b Initial Temperature\b0  layer contains information on the spatial distribution of solute concentration or fluid temperature at the beginning of the model run within the medium to be modeled.  The layer contains only one parameter, \b initial_concentration\b0  [C], or \b initial_temperature\b0  [\'b0C], which contains the concentration or temperature values.\f2   Concentrations are expressed in terms of mass fraction.\f3 
\par }
1930
Scribble1930
Map or Point Data Group Layer



general:001400
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Map or Point Data Group Layer
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 This group of layers is provided for the convenience of the user.  Bitmap images, maps, or data may be imported into these layers if desired.  If not needed, they can be ignored.
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920\cf2\b\strike Map\cf3\{linkID=1940\}\cf0\b0\strike0\f2 
\par \cf2\b\strike\f1{\pntext\f3\'B7\tab}Point Data\cf3\strike0\{linkID=1950\}\cf0\b0\f2 
\par }
1940
Scribble1940
Map



general:001410
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Map
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 The \b Map \b0 layer is a special type of Argus ONE layer that can contain an image or contours and points that cannot be modified or linked to other layers.  The image in a Maps layer can serve as the pattern upon which information in other layers is superposed.  Maps layers can be used to display point data from Argus ONE Data layers using a variety of post-processing tools provided in Argus ONE.  Such display of point data is described in the section, "\cf2\strike Displaying Data\cf3\strike0\{linkID=2330\}\cf0 ."  The post-processing display of pressure (hydraulic head), saturation, velocity vectors, and concentration (or temperature) for SUTRA simulations is generated in a Maps layer created by \b SutraGUI\b0 .  The user may create additional \i Maps \i0 layers.  The \b Map \b0 layer is provided as a convenience in \b SutraGUI\b0 .
\par One way to use Maps layers is to import scanned images into them and then draw contours on Information layers by tracing the image after rescaling image size as desired.  Objects in \i Maps \i0 layers (lines, points and other objects) can be copied from the Maps layer and pasted into Information layers where attributes associated with the geospatial information can be assigned to these objects.
\par \pard\fi720 For example, if the boundary line on a map is associated with a prescribed hydraulic head, the boundary line can be copied from the \i Maps \i0 layer to the \cf2\b\strike Specified Hydraulic Head\cf3\strike0\{linkID=1830\}\cf0\b0  layer.  Information about copying and pasting objects in Argus ONE can be found in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).
\par \pard\f2 
\par }
1950
Scribble1950
Point Data



general:001420
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Point Data
\par \cf0\b0\fs20 
\par \pard\fi720\i\f1\fs24 Data \i0 layers are a special type of Argus ONE layer that contain scattered, gridded, or meshed point-wise data that can be linked to the finite-element mesh or displayed in Maps layers.  Instructions on interpolating and contouring these data are given in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997, Supplement Version 2.5\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ), and a brief description of this is given in the section of this report entitled, "\cf2\strike Displaying Data\cf3\strike0\{linkID=2330\}\cf0 " on page \lang1024 72\lang1033 .  One \i Data \i0 layer, \b Point Data\b0 , is provided as a convenience in \i SutraGUI\i0 , and the user may create additional ones as needed.  The user cannot simply draw points in a data layer as is done in an \i Information \i0 layer.  Instead, the data must be imported.\f2 
\par }
1960
Scribble1960
Three-Dimensional Models 



general:001430
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Three-Dimensional Models \cf0\b0\f1\fs24 
\par \pard\fi720 
\par This section describes the layers used for 3D SUTRA models (\cf2\strike Table \lang1024 9\cf3\strike0\{linkID=1970\}\cf0\lang1033 ).  Most layers used in 2D are also used for 3D models, although sometimes in an altered form.  However, many layers used in 3D models are not used in 2D models.
\par }
1970
Scribble1970
SUTRA GUI layer structure (3D model)



general:001440
Writing



FALSE
69
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}{\f4\fswiss\fprq2\fcharset128 Arial Unicode MS;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SUTRA GUI layer structure (3D model)\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\sa120\cf0\b\f2 Table \lang1024 9\lang1033 .  SutraGUI Layer Structure for Three-Dimensional (3D) Models\b0 
\par \i The reader is referred to the section of this report entitled "Conventions" on page \lang1024 3\lang1033  for an explanation of "[i]" in layer names.\i0\f3 
\par \pard\b\f2 Layer Name
\par \b0 SUTRA MODEL group
\par \pard\fi1200 SUTRA Mesh (Top/Bottom Unit[i])
\par FishNet_Mesh_Layout (Top/Bottom Unit[i])
\par Unused layer1
\par Unused layer2
\par \pard 3D OBJECTS group
\par Hydrologic Sources: 3D Objects group
\par \pard\fi1200 Sources of Fluid Solids[i]
\par Sources of Fluid Points[i]
\par Sources of Fluid Lines[i]
\par Sources of Fluid Sheets Vertical[i]
\par Sources of Fluid Sheets Slanted[i]
\par Sources of Solute Solids[i]/Sources of Energy Solids[i]
\par Sources of Solute Points[i]/Sources of Energy Points[i]
\par Sources of Solute Lines[i]/Sources of Energy Lines[i]
\par Sources of Solute Sheets Vertical[i]/Sources of Energy Sheets Vertical[i]
\par Sources of Solute Sheets Slanted[i]/Sources of Energy Sheets Slanted [i]
\par \pard Hydrologic Boundaries: 3D Objects group
\par \pard\fi1200 Specified Pressure Solids[i]/ Specified Hydraulic Head Solids[i]
\par Specified Pressure Points[i]/Specified Hydraulic Head Points[i]
\par Specified Pressure Lines[i]/Specified Hydraulic Head Lines[i]
\par Specified Pressure Sheets Vertical[i]/Specified Hydraulic Head Sheets Vertical[i]
\par Specified Pressure Sheets Slanted[i]/Specified Hydraulic Head Sheets Slanted [i]
\par Specified Concentration Solids[i]/ Specified Temperature Solids[i]
\par Specified Concentration Points[i]/Specified Temperature Points[i]
\par Specified Concentration Lines[i]/Specified Temperature Lines[i]
\par Specified Concentration Sheets Vertical[i]/Specified Temperature Sheets Vertical[i]
\par Specified Concentration Sheets Slanted[i]/Specified Temperature Sheets Slanted [i]
\par \pard Observations Layers: 3D Objects group
\par \pard\fi1200 Observations Solids[i]
\par Observations Points[i]
\par Observations Lines[i]
\par Observations Sheets Vertical[i]
\par Observations Sheets Slanted[i]
\par \pard TOP group
\par \pard\fi1200 Elevation Top
\par Sources of Fluid Top
\par Sources of Solute Top
\par Specified Hydraulic Head Top/Specified Pressure Top
\par Specified Concentration Top/Specified Temperature Top
\par Observation Top
\par \pard UNIT[i] group
\par Hydrogeology Unit[i] group
\par \pard\fi1200 Porosity Unit[i]
\par Permeability Unit[i]/Hydraulic Conductivity Unit[i]
\par Dispersivity Unit[i]
\par Unsaturated Properties Unit[i]
\par Initial Conditions Unit[i] group
\par Initial Pressure Unit[i]/Initial Hydraulic Head Unit[i]
\par Initial Concentration Unit[i]/Initial Temperature Unit[i]
\par \pard BOTTOM UNIT[i] group
\par Elevation Bottom Unit[i]
\par \pard\fi1200 Sources of Fluid Bottom Unit[i]
\par Sources of Solute Bottom Unit[i]/ Sources of Energy Bottom Unit[i]
\par Specified Hydraulic Head Bottom Unit[i]/ Specified Pressure Bottom Unit[i]
\par Specified Concentration Bottom Unit[i]/ Specified Temperature Bottom Unit[i]
\par Observation Bottom Unit[i]
\par \pard Map or Point Data group
\par \pard\fi1200 Map
\par Point Data\f4 
\par \pard\fi720\sb120\sa120\cf2\f1 
\par }
1980
Scribble1980
SUTRA MODEL



general:001450
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SUTRA MODEL\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \b SUTRA MODEL\b0  is a group of layers that define the geometry and discretization of the SUTRA simulation model, and the locations in the model where observations of results will be made.  These include the layers \b SUTRA Mesh\b0  and \b FishNet_Mesh_Layout\b0 .  \b Unused layer1\b0  and \b Unused layer2\b0  are not used for 3D models but are present because they are required by Argus ONE.  The \b FishNet_Mesh_Layout\b0  layer is always included in the group because SUTRA currently requires that a FishNet Mesh be used for 3D models.  For nonaligned meshes, several \b Sutra Mesh\b0  and \b FishNet_Mesh_Layout\b0  layers appear in the \b SUTRA MODEL\b0  group. 
\par }
1990
Scribble1990
SUTRA Mesh (Top/Bottom Unit[i])



general:001460
Writing



FALSE
49
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 SUTRA Mesh (Top/Bottom Unit[i])\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\keep\fi720\sb120 The \b SUTRA Mesh (Top/Bottom Unit[i])\b0  layer is (are) the layer(s) on which the mesh used in the model is defined.  For 3D aligned meshes, there is only one such layer.  For 3D nonaligned meshes, there is one such layer at the top of the model and another at the bottom of each unit with the unit number after its name.  All 3D models must use a FishNet Mesh.  For 3D models, it must be possible to deform the FishNet Mesh into a grid bounded by a rectangle.  (This is not required for 2D models.)
\par \pard\fi720\sb120 In 3D models, the \b SUTRA Mesh\b0  layer (or layers) contains values of all the spatially distributed parameters except boundary conditions and observations.  Depending on SUTRA's requirements for each parameter, as specified in the documentation for the SUTRA input data sets (Voss and Provost, 2002), a parameter may receive a value for each node or for each element in the mesh.  These values are derived from the various Information layers described in following sections.  The Argus ONE environment refers to the assignment of values in one Information layer to another as "linking."  The names of the parameters of the SUTRA Mesh layer are listed in Table \lang1024 10\lang1033 .  The full Argus ONE name of each parameter is given as "Layer.Parameter," for example, the first parameter, \b NREG\b0 , in the table is \b SUTRA Mesh.NREG\b0 .
\par For 3D nonaligned models, the uppercase names of \b SUTRA Mesh\b0  parameters correspond exactly with variables used by the SUTRA model, and are described in the SUTRA documentation.  For 3D vertically aligned models, the uppercase names of SUTRA Mesh parameters correspond with variables used by the SUTRA model except that they have a number after them that determines to which model unit they belong.
\par There is one exception to the above.  The SUTRA parameter, \b UBC\b0 , representing the concentration or temperature of any fluid that may flow into the model at a node where pressure or hydraulic head is specified, has been changed to \b pUBC \b0 in \b SutraGUI \b0 to distinguish it from the specified concentration or temperature boundary condition type, which retains its original name (\b UBC\b0 ).
\par Two of the \b SUTRA Mesh\b0  parameters, \b QIN \b0 and \b QUIN\b0 , a fluid source and energy or solute source, respectively, have additional logic associated with their values.  As noted in the description of the \b Sources of Fluid \b0 and \b Sources of Energy \b0 or \b Sources of Solute \b0 layers, to which these node-wise parameters are linked, these sources may be specified at point, line (open) or closed contours.  Depending on which type of contour is specified in the "\b Sources\b0 " layer, the resultant source value provided as a parameter in the "\b Sources\b0 " layer may require multiplication by the open contour length or closed contour area or cell volume associated with the node; these multiplications are carried out automatically.
\par The \b Z[i] \b0 parameters on that layer represent the elevation of the i'th unit boundary.  Thus, the \b Z1 \b0 parameter represents the elevation of the top of the uppermost unit and \b Z2 \b0 represents the elevation of the bottom of the first unit.  \b Z[n+1] \b0 represents the elevation of the bottom of unit n.\f2 
\par \pard\li720\sb120\i\f1 Note: The properties assigned to any node or element may be viewed (and modified) by double-clicking on the element of interest while the SUTRA Mesh layer is active.\f2 
\par \pard\sb120\i0 
\par \pard\sb120\sa120\b\f1\fs20 Table \lang1024 10\lang1033 .  SUTRA Mesh parameters used in three-dimensional (3D) simulations
\par \trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx6027\pard\intbl\lang1043\fs24 Name\cell\row
\trowd\trgaph108\trleft-108\clbrdrt\brdrw15\brdrs \cellx6027\pard\intbl\cf2\b0\strike NREG([i])\cf3\strike0\{linkID=1070\}\cf0\cell\row
\trowd\trgaph108\trleft-108\cellx6027\pard\intbl\cf2\strike Z([i])\cf3\strike0\{linkID=1080\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl POR([i])\cf3\strike0\{linkID=1090\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl LREG([i])\cf3\strike0\{linkID=1100\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl PMAX([i])\cf3\strike0\{linkID=1110\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl PMID([i])\cf3\strike0\{linkID=1120\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl PMIN([i])\cf3\strike0\{linkID=1130\}\cf0\cell\lang1030\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ANGLE1\lang1043 (_[i])\lang1030  \cf3\strike0\{linkID=1140\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ANGLE2\lang1043 (_[i])\cf3\strike0\{linkID=1150\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ANGLE3\lang1043 (_[i])\cf3\strike0\{linkID=1160\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ALMAX\lang1043 ([i])\cf3\strike0\{linkID=1170\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ALMID\lang1043 ([i])\cf3\strike0\{linkID=1180\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ALMIN\lang1043 ([i])\cf3\strike0\{linkID=1190\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ATMAX\lang1043 ([i])\cf3\strike0\{linkID=1200\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ATMID\lang1043 ([i])\cf3\strike0\{linkID=1210\}\cf0\lang1030\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl ATMIN\lang1043 ([i])\cf3\strike0\{linkID=1220\}\cf0\lang1030\cell\lang1033\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl QIN\lang1043 ([i])\cf3\strike0\{linkID=1230\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl IS_FLUID_SOURCE[i]\cf3\strike0\{linkID=1240\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl UIN\lang1043 ([i])\cf3\strike0\{linkID=1250\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl time_dependent_fluid_sources\lang1043 ([i])\cf3\strike0\{linkID=1260\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl QUIN\lang1043 ([i])\cf3\strike0\{linkID=1270\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl IS_QUIN_SOURCE[i]\cf3\strike0\{linkID=1280\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl time_dependent_energy_or_solute_sources\lang1043 ([i])\cf3\strike0\{linkID=1290\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl PBC\lang1043 ([i])\cf3\strike0\{linkID=1300\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl IS_PBC_SOURCE[i]\cf3\strike0\{linkID=1310\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl pUBC\lang1043 ([i])\cf3\strike0\{linkID=1320\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl time_dependent_specified_head_or_pressure\lang1043 ([i])\cf3\strike0\{linkID=1330\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl UBC \cf3\strike0\{linkID=1340\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl IS_UBC_SOURCE[i]\cf3\strike0\{linkID=1350\}\cf0\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl time_dependent_specified_concentration_or_temperature\lang1043 ([i])\cf3\strike0\{linkID=1360\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl PVEC\lang1043 ([i])\cf3\strike0\{linkID=1370\}\cf0\lang1033\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\cellx6027\intbl UVEC\lang1043 ([i])\cf3\strike0\{linkID=1380\}\cf0\lang1033\cell\row
\trowd\trgaph108\trleft-108\clbrdrb\brdrw15\brdrs \cellx6027\pard\intbl\cf2\strike INOB\lang1043 ([i])\cf3\strike0\{linkID=1390\}\cf0\lang1033\cell\row
\pard\fi720 
\par }
2000
Scribble2000
FishNet_Mesh_Layout (Top/Bottom Unit[i])



general:001470
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 FishNet_Mesh_Layout (Top/Bottom Unit[i])\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b FishNet_Mesh_Layout (Top/Bottom Unit[i]) \b0 layer is always included for 3D models.  \b SutraGUI\b0 , rather than Argus ONE, creates FishNet meshes.  A FishNet Mesh consists of superblocks (large contiguous quadrilaterals) each subdivided into a specified number of rows and columns of quadrilateral finite elements.  For 3D models, it must be possible to deform the mesh into a grid bounded by a rectangle.  
\par \pard\fi720 This layer, like the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1990\}\cf0\b0  layer, is a Quad-Mesh layer.  However, the elements on it are usually drawn manually or are imported rather than being generated automatically.  Each element of the mesh will describe one "superblock" of the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1990\}\cf0\b0 .  The "superblocks" describe the external and internal boundaries of the FishNet Mesh.  Each superblock element contains information describing the desired number of quadrilateral finite elements that will fill the superblock in the X and Y directions when the mesh is generated.  The use of the \b FishNet_Mesh_Layout\b0  layer is described in the section of this report entitled "\cf2\strike Creating FishNet Meshes\cf3\strike0\{linkID=2320\}\cf0 " on page \lang1024 68\lang1033 .
\par }
2010
Scribble2010
Unused layer1



general:001480
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Unused layer1\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \b Unused layer1 \b0 is a \i Domain \i0 layer required by Argus ONE that is not used by \b SutraGUI \b0 in 3D. 
\par }
2020
Scribble2020
Unused layer2



general:001490
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Unused layer2\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \b Unused layer2 \b0 is an \i Information \i0 layer required by Argus ONE that is not used by \b SutraGUI \b0 in 3D. 
\par }
2030
Scribble2030
Hydrologic Sources: 3D Objects



general:001500
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrologic Sources: 3D Objects\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 SUTRA hydrologic sources may be specified in \b SutraGUI \b0 to be located exactly within the top and bottoms of model units, or anywhere in model space as 3D objects.  The \b Hydrologic Sources: 3D objects \b0 group of \i Information \i0 layers is used to set up source boundary conditions specified as 3D objects.  The \b Hydrologic Sources \b0 group contains information on fluxes (quantity per time) of fluid, solute, and energy entering or leaving the model.  These are described separately in the following sections.  Points, lines, sheets, and solids can all be used to specify the sources as described in the section of this report entitled "\cf3\strike Assignment of Boundary Conditions and Observations\cf4\strike0\{linkID=50\}\cf0 " on page \lang1024 13\lang1033 .  The user determines the number and type of layers in this group as described in the section of this report entitled "\cf3\strike 3D Surfaces and Objects (3D Only)\cf4\strike0\{linkID=235\}\cf0 " on page \lang1024 29\lang1033 .  (The reader also is referred to the section of this report entitled "Hydrologic Sources" on page \lang1024 59\lang1033  for sources that are to be located exactly on the model top or on bottoms of units.)
\par \pard 
\par \cf3\strike Sources of Fluid Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf4\strike0\{linkID=2040\}\cf0 
\par \cf3\strike Sources of Solutes/Energy Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf4\strike0\{linkID=2050\}\cf2\f1 
\par }
2040
Scribble2040
Sources of Fluid Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]



general:001510
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sources of Fluid Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 In addition to the parameters used to specify the geometry of the 3D object that represents a region where a source exists, the user must specify either a \cf3\b\strike total_source\cf4\strike0\{linkID=1710\}\cf0\b0  or a \cf3\b\strike specific_source\cf4\strike0\{linkID=1790\}\cf0\b0  for each contour (object).  The section of this report entitled "\cf3\strike Assignment of Boundary Conditions and Observations\cf4\strike0\{linkID=50\}\cf0 " on page \lang1024 13\lang1033  explains how these parameters are used to assign values to individual nodes.  The concentration or temperature of the source must also be specified.  (However, for fluxes out of the model, SUTRA will automatically use the concentration or temperature at the node rather than the specified value.)  The user must specify whether a boundary is a time-dependent source.  (Time-dependent sources must be programmed into SUTRA in the subroutine BCTIME as described in the SUTRA manual.  Because there is no standard method for specifying time-dependent input for SUTRA, \b SutraGUI \b0 does not generate input files for the time-dependent data.)  If desired, the user can specify a comment for a contour.  Such comments will be included in the SUTRA input file created by \b SutraGUI\b0 .  They can be used to help identify the nodes associated with particular contours, (for example, when programming subroutine BCTIME to vary sources at certain nodes or groups of nodes representing a hydrologic feature with time).
\par \pard\cf2\f1 
\par }
2050
Scribble2050
Sources of Solutes/Energy Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]



general:001520
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sources of Solutes/Energy Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 These layers are used in much the same way as the sources of fluid layers except that the \cf3\b\strike total_source\cf4\strike0\{linkID=1780\}\cf0\b0  or \cf3\b\strike specific_source\cf4\strike0\{linkID=1790\}\cf0\b0  refers to sources of solute or energy rather than sources of fluid.
\par \pard\cf2\f1 
\par }
2060
Scribble2060
Hydrologic Boundaries: 3D Objects



general:001530
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrologic Boundaries: 3D Objects\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 SUTRA hydrologic boundaries may be specified in \b SutraGUI \b0 to be located exactly within the top and bottoms of model units, or anywhere in model space as 3D objects.  The \b Hydrologic Boundaries: 3D objects \b0 group of layers is used to set up specified value boundary conditions in 3D models as 3D objects.  The boundary conditions may be either specified hydraulic head, specified pressure, specified concentration, or specified temperature.  Points, lines, sheets, and solids can all be used to specify the sources as described in the section of this report entitled "\cf3\strike Assignment of Boundary Conditions and Observations\cf4\strike0\{linkID=50\}\cf0 " on page \lang1024 13\lang1033 .  The user determines the number and type of layers in this group as described in the section of this report entitled "\cf3\strike 3D Surfaces and Objects (3D Only)\cf4\strike0\{linkID=235\}\cf0 " on page \lang1024 29\lang1033 .  (The reader also is referred to the section of this report entitled "Hydrologic Boundaries" on page \lang1024 61\lang1033  for boundary conditions that are to be located exactly on the model top or on bottoms of units.)
\par \pard 
\par \cf3\strike Specified Hydraulic Head/Pressure Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf4\strike0\{linkID=2070\}\cf0 
\par \cf3\strike Specified Concentration/Temperature Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf4\strike0\{linkID=2080\}\cf2\f1 
\par }
2070
Scribble2070
Specified Hydraulic Head/Pressure Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]



general:001540
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specified Hydraulic Head/Pressure Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 In addition to the parameters used to specify the geometry of the 3D object that represents a region where a specified head or pressure exists in the \b Specified Hydraulic Head \b0 or \b Specified Pressure \b0 layers, the user must set the specified pressure or specified hydraulic head, and concentration or temperature for each contour (object).  For specified pressure boundaries, it is often useful to use the\cf3\strike  Sutra_Z()\cf4\strike0\{linkID=40\}\cf0  function as described in the section of this report entitled "\cf3\strike Three-Dimensional Models\cf4\strike0\{linkID=40\}\cf0  " on page \lang1024 11\lang1033 .  The user must also specify whether the boundary is time-dependent.  The "\b comment\b0 " parameter can be used to identify the nodes in the SUTRA input file that are associated with a particular contour.  Such comments will be included in the SUTRA input file created by \b SutraGUI\b0 .  They can be used to help identify the nodes associated with particular contours, (for example, when programming subroutine BCTIME to vary heads or pressures at certain nodes or groups of nodes representing a hydrologic feature with time).\cf2\f1 
\par }
2080
Scribble2080
Specified Concentration/Temperature Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]



general:001550
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specified Concentration/Temperature Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The \b Specified Concentration \b0 or \b Specified Temperature \b0 layers are used in much the same way as the \cf3\strike specified hydraulic head/pressure \cf4\strike0\{linkID=2070\}\cf0 layers except that the user sets the specified concentration or temperature rather than the specified pressure or specified hydraulic head.\cf2\f1 
\par }
2090
Scribble2090
Observation Layers: 3D Objects



general:001560
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Observation Layers: 3D Objects\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 SUTRA observations may be specified in \b SutraGUI \b0 to be located exactly within the top and bottoms of model units, or anywhere in model space as 3D objects.  The \b Observation: 3D objects\b0  group of layers is used to set up observation locations in 3D models as 3D objects.  Points, lines, sheets, and solids can all be used to specify the observation locations as described in the section of this report entitled "\cf3\strike Assignment of Boundary Conditions and Observations\cf4\strike0\{linkID=50\}\cf0 "  on page \lang1024 13\lang1033 .  The user determines the number and type of layers in this group as described in the section of this report entitled "\cf3\strike 3D Surfaces and Objects (3D Only)\cf4\strike0\{linkID=235\}\cf0 " on page \lang1024 29\lang1033 .  At observation nodes, SUTRA will output a detailed record of pressure, concentration, or temperature and saturation.  This type of output is usually used for plotting time-drawdown curves or solute breakthrough curves.  GW_Chart (\cf3\strike Winston, 2000\cf4\strike0\{linkTarget=Winston00\}\cf0 ) can be used to prepare such charts as 'hydrographs'.  (The reader is referred to the section of this report entitled "Observation Top" on page \lang1024 62\lang1033  for observations that are to be located exactly on the model top or on bottoms of units.)
\par \pard\fi720 The user only needs to specify the geometry of the 3D objects used to select the boundary nodes.  No additional information is required.\cf2\f1 
\par }
2100
Scribble2100
TOP



general:001570
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 TOP\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The \b TOP \b0 group of layers is only present in 3D models.  It includes layers that are related to the top of the model.  It contains the \cf3\b\strike Elevation Top\cf4\strike0\{linkID=2110\}\cf0  \b0 layer and, depending on the user's selections, may contain \b Sources of Fluid\b0 , \b Sources of Solute / Energy\b0 , \b Specified Pressure / Hydraulic Head\b0 , \b Specified Concentration / Temperature\b0 , and \b Observation \b0 layers.  See the section of this report entitled "\cf3\strike 3D Surfaces and Objects (3D Only)\cf4\strike0\{linkID=235\}\cf0 " on page \lang1024 29\lang1033  for more information on specifying which layers should be present.
\par \pard 
\par \cf2\f1 
\par }
2110
Scribble2110
Elevation Top



general:001580
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Elevation Top\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The \b Elevation Top\b0  layer is used to specify the elevation of the top layer of nodes in the model.  It has one parameter, \b elevation top\b0  [L], which is the elevation.\cf2\f1 
\par }
2120
Scribble2120
Hydrologic Sources 



general:001590
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrologic Sources \cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 Two types of layers that represent hydrologic sources: \b Sources of Fluid Top\b0  and \b Sources of Solute Top  / Sources of Energy Top\b0 .  These \i Information \i0 layers contain information on fluxes (quantity per time) of fluid, solute, and energy entering or leaving a unit.  The section of the report entitled "\cf2\strike Hydrologic Sources: 3D Objects\cf3\strike0\{linkID=2030\}\cf0 " on page \lang1024 57\lang1033  describes how to specify sources within units.)
\par In these layers, \b SutraGUI \b0 allows specification of fluid sources or sinks and energy/solute sources or sinks at points, along line segments, and for delimited areas.  Sources have positive values, whereas sinks are specified with a negative number.  Sources of fluid may be either specified as a total amount of fluid per second (that is, \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0 ), or as the total amount of fluid per second per length or area of the source object (that is, \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 ).  Similarly, sources of energy/solute may be either specified as a total amount of energy/solute per second (that is, \cf2\b\strike total_source\cf3\strike0\{linkID=1780\}\cf0\b0 ), or as the total amount of energy/solute per second per length or per area of the source object (that is, \cf2\b\strike specific_source\cf3\b0\strike0\{linkID=1790\}\cf0 ).  For 3D models where elevations of the top may vary, the areas used are the projection of these surfaces in the X-Y plane.
\par Point sources may be assigned only a \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0 .  Point sources typically represent injection or withdrawal wells for fluid sources.  The command \b PIEs|Convert\'85|Mesh Objects to Contours\'85\b0  in the Utility PIE (\cf2\strike Winston, 2001\cf3\strike0\{linkTarget=Winston01\}\cf0 ) can be used to copy nodes into information layers as point contours.  The mesh must be organized such that the nodes fall exactly at the source locations.
\par Line or curve sources may be assigned either a \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  or a \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 .  A fluid line source may represent, for example, recharge occurring along a reach of a river or irrigation canal.  Depending on whether the user knows the total recharge along the canal reach, or the recharge per length of canal, the user should specify either \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  or \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  in the \b Sources of Fluid\b0  layer.  The command \b PIEs|Convert\'85|Mesh Objects to Contours\'85\b0  can be used to copy nodes and the edges of elements into information layers.  The mesh must be organized such that the nodes fall exactly at the source locations.
\par Area sources may be assigned either a \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  or a \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0 .  These are created with the closed contour drawing tool located along the left side of the Argus ONE window.  For fluid, an area source may represent, for example, ground-water recharge below a lake (\cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  could be specified for the entire lake as one object) or rainfall recharge rate (volume per area) for a particular area (\cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  could be specified in units [L/s] for the object).  For energy, an area source may represent, for example, heat production in a magma body (\cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  could be specified for the entire body as one object) or radiogenic heat production rate (energy per area) for a particular area (\cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  could be specified in units [E/sL^\super 2\nosupersub ] for the object).
\par Because contours may not cross one another in Argus ONE, only one type of object may be specified at any location.  Furthermore, SUTRA accepts only one source per location; thus two sources, for example, rainfall and a well, cannot be specified separately at the same location, and must be summed externally by the user before entering values into \b SutraGUI \b0 for sources specified on the top of a 3D model mesh.  (For 3D models, multiple sources can be specified at one location using 3D source objects.  \b SutraGUI \b0 will combine these into a single source before exporting the data to SUTRA.)
\par To obtain areally distributed values affecting nodes throughout the mesh, rather than exactly along contours in the top, an expression should be used for the \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  parameter.  The reader is referred to the section of this report entitled "\cf2\strike Adding a Precipitation Data Layer and Linking It to Fluid Sources Layer\cf3\strike0\{linkID=2390\}\cf0 ."
\par \pard\fi720 
\par }
2130
Scribble2130
Sources of Fluid Top



general:001600
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sources of Fluid Top\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Sources of Fluid Top \b0 layer contains information on the spatial distribution of the fluid sources and sinks (such as wells and recharge from rainfall).  These sources occur on the top of the uppermost unit.  The reader is referred to the section of this report entitled "\cf2\strike Sources of Fluid Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf3\strike0\{linkID=2040\}\cf0 " on page \lang1024 57\lang1033  for a description of how to specify sources of fluid within units.  Additionally the layer contains information on the solute concentration or temperature of the source fluids.  The layer contains six parameters.  However, two of these (the ones with the uppercase names) are automatically calculated by \b SutraGUI \b0 from the others and must not be altered by the user.  For any given object in the layer, the user may only specify three of the remaining four parameters, because a choice must be made between \cf2\b\strike total_source\cf3\strike0\{linkID=1710\}\cf0\b0  and \cf2\b\strike specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  as described above in the section of this report entitled "\cf2\strike Total and Specific Sources\cf3\strike0\{linkID=51\}\cf0 " on page \lang1024 14\lang1033 .  When pressure has been selected as the hydraulic variable, fluid sources use units of [M/s]; when hydraulic head has been selected, units of [L^\super 3\nosupersub /s] are used.  The parameters for this layer are:
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike total_source \cf3\strike0\{linkID=1710\}\cf0\b0 [M/s] ([L^\super 3\nosupersub /s] when using hydraulic head)
\par \cf2\b\strike{\pntext\f3\'B7\tab}specific_source\cf3\strike0\{linkID=1720\}\cf0\b0  [(M/s)/(L, L^\super 2\nosupersub , or L^\super 3\nosupersub )] ([(L^\super 3\nosupersub /s)/(L, L^\super 2\nosupersub , or L^\super 3\nosupersub )] when using hydraulic head)
\par \cf2\b\strike{\pntext\f3\'B7\tab}concentration_of_source\cf3\b0\strike0\{linkID=1730\}\cf0  [C] (or \cf2\b\strike temperature_of_source\cf3\strike0\{linkID=1730\}\cf0\b0  [\'b0C] for energy transport)
\par \cf2\b\strike{\pntext\f3\'B7\tab}time_dependence\cf3\b0\strike0\{linkID=1740\}\cf0  [0 or 1]
\par \cf2\b\strike{\pntext\f3\'B7\tab}RESULTANT_FLUID_SOURCE\cf3\strike0\{linkID=1750\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}QINUIN\cf3\strike0\{linkID=1760\}\cf0\f2 
\par \pard\fi720\b0\f1 
\par }
2140
Scribble2140
Sources of Solute / Energy Top



general:001610
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sources of Solute / Energy Top\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Sources of Solute Top \b0 (or \b Sources of Energy Top\b0 ) layer contains information on the spatial distribution of the solute (or energy) sources and sinks (such as dissolving minerals, radiogenic heat production, or thermal conduction through a boundary).  These sources occur at the top of the uppermost unit.  The reader is referred to the section of this report entitled "\cf2\strike Sources of Solutes/Energy Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf3\strike0\{linkID=2050\}\cf0 " on page \lang1024 58\lang1033  for a description of how to specify sources of solute or energy within units.  The layer contains four parameters.  However, one of these (the one with the uppercase name) is automatically calculated by Argus ONE from the others and may not be altered by the user.  For any given object in the layer, the user may only specify three of the remaining four parameters, because a choice must be made between total_source and specific_source as described above in the section of this report entitled "\cf2\strike Total and Specific Sources\cf3\strike0\{linkID=51\}\cf0 " on page \lang1024 14\lang1033 .  The parameters for this layer are:
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike total_source\cf3\strike0\{linkID=1780\}\cf0\b0  [C/s or E/s]
\par \cf2\b\strike{\pntext\f2\'B7\tab}specific_source\cf3\strike0\{linkID=1790\}\cf0\b0  [(C/s or E/s)/(L or L 2 )]
\par \cf2\b\strike{\pntext\f2\'B7\tab}time_dependence\cf3\strike0\{linkID=1800\}\cf0\b0  [0 or 1]
\par \cf2\b\strike{\pntext\f2\'B7\tab}RESULTANT_SOLUTE/ENERGY_SOURCE\cf3\strike0\{linkID=1810\}\cf0\b0 
\par \pard\fi720 
\par }
2150
Scribble2150
Hydrologic Boundaries 



general:001620
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrologic Boundaries \cf0\b0\f1\fs24 
\par \pard\fi720 
\par There are two types of layers representing hydrologic boundaries: \cf2\b\strike Specified Pressure / Hydraulic Head Top\cf3\strike0\{linkID=2160\}\cf0\b0 , and \cf2\b\strike Specified Concentration / Temperature Top\cf3\strike0\{linkID=2170\}\cf0\b0 .  These layers contain information on the known values (or changes in values over time) of pressure, hydraulic head, solute concentration, and temperature in the hydrogeologic unit, at locations where these levels are controlled by forces external to those occurring within the unit or generic model.  These layers appear under the \cf2\b\strike TOP\cf3\strike0\{linkID=2100\} \cf0\b0 layer and represent boundary conditions at the top surface of the model.
\par }
2160
Scribble2160
Specified Pressure Top / Hydraulic Head Top



general:001630
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specified Pressure Top / Hydraulic Head Top\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Specified Pressure Top\b0  (or \b Specified Hydraulic Head Top\b0 ) layer contains information on the spatial distribution of known or fixed pressures or hydraulic heads.  These conditions occur on the top surface of the model.  The reader is referred to the section of this report entitled "\cf2\strike Specified Hydraulic Head/Pressure Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf3\strike0\{linkID=2070\}\cf0 " on page \lang1024 58\lang1033  for a description of how to specify these boundary conditions within units.  It also contains information on the associated concentration or temperatures of the boundary nodes and time dependent boundary conditions.  The layer contains three parameters:
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike specified_pressure\cf3\strike0\{linkID=1840\}\cf0\b0  [M/(Ls\super 2\nosupersub  )] (or \cf2\b\strike specified_hydraulic_head\cf3\b0\strike0\{linkID=1840\}\cf0  [L])
\par \cf2\b\strike{\pntext\f2\'B7\tab}concentration \cf3\strike0\{linkID=1850\}\cf0\b0 [C] (or \cf2\b\strike temperature \cf3\strike0\{linkID=1850\}\cf0\b0 [\'b0C]) 
\par \cf2\b\strike{\pntext\f2\'B7\tab}time_dependence\cf3\strike0\{linkID=1860\}\cf0\b0 [0 or 1]
\par }
2170
Scribble2170
Specified Concentration Top / Temperature Top



general:001640
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Specified Concentration Top / Temperature Top\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Specified Concentration Top\b0  (or \b Specified Temperature Top\b0 ) layer contains information on the spatial distribution of known or fixed values of solute concentration (or temperature).  These conditions occur on the top surface of the model.  The reader is referred to the section of this report entitled "\cf2\strike Specified Concentration/Temperature Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]\cf3\strike0\{linkID=2080\}\cf0 " on page \lang1024 58\lang1033  for a description of how to set up specified concentration or specified temperature boundaries within units.  It also contains information on time dependent boundary conditions.  The layer contains two parameters:
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike specified_concentration \cf3\strike0\{linkID=1880\}\cf0\b0 [C] (or \cf2\b\strike specified_temperature\cf3\strike0\{linkID=1880\}\cf0\b0  [\'b0C])
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920\cf2\b\strike time_dependence\cf3\strike0\{linkID=1890\}\cf0\b0  [0 or 1]
\par }
2180
Scribble2180
Observation Top



general:001650
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Observation Top\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Observation Top \b0 layer is an \i Information \i0 layer that contains the spatial distribution of locations at which the user desires "observation-node output" from locations exactly within the top of a 3D SUTRA model.  As described in the SUTRA documentation, this output provides a detailed time series of pressure, concentration, or temperature, and saturation at user-selected nodes at a user-selected time-step interval.  This type of output is used for plotting time-drawdown curves or solute breakthrough curves.  GW_Chart (\cf2\strike Winston, 2000\cf3\strike0\{linkTarget=Winston00\}\cf0 ) can be used to prepare such charts (as 'hydrographs') from the output.  The reader is referred to the section of this report entitled "\cf2\strike Observation Layers: 3D Objects\cf3\strike0\{linkID=2090\}\cf0 " on page \lang1024 58\lang1033  for a description of how to set up observation locations within units.  
\par It is possible to use point, open, or closed contours to specify where observations should be made on the model top during the SUTRA simulation.  For each contour object, the value of the contour's parameter, \cf2\b\strike is_observed\cf3\strike0\{linkID=1471\}\cf0\b0 , must be set to "True" (or 1).  The frequency of the observations is specified in the \cf2\b\strike Output Controls\cf3\b0\strike0\{linkID=260\}\cf0  pane of the \b SUTRA Project Information \b0 dialog box.
\par The \b Observation \b0 layer uses the \i Exact Contour \i0 method of interpretation so that observations are only defined inside of closed contours, or directly above open and point contours.
\par Nodes in the top \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1990\}\cf0\b0  layer falling within the selected areas or directly above the open or points contours will be marked as observation nodes for input to SUTRA.  The command \b PIEs|Convert\'85|Mesh Objects to Contours\'85\b0  in the Utility PIE (\cf2\strike Winston, 2001\cf3\strike0\{linkTarget=Winston01\}\cf0 ) can be used to copy nodes into \i Information \i0 layers.
\par \pard\fi720 
\par }
2190
Scribble2190
UNIT[i]



general:001660
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 UNIT[i]\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The \b UNIT[i]\b0  group of layers is only present in 3D models.  It includes layers that are related to a specific unit.  Following the \b UNIT[i] \b0 layer are the \cf3\b\strike Hydrogeology Unit[i]\cf4\strike0\{linkID=2200\}\cf0\b0  and \cf3\b\strike Initial Conditions Unit[i]\cf4\strike0\{linkID=2250\}\cf0\b0  layers, which pertain to unit[i].\cf2\f1 
\par }
2200
Scribble2200
Hydrogeology Unit[i]



general:001670
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hydrogeology Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b Hydrogeology Unit[i]\b0  group of \i Information \i0 layers contains information on the physical and material properties of unit[i].
\par 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920\cf2\b\strike Porosity Unit[i)\cf3\strike0\{linkID=2210\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Permeability Unit[i] / Hydraulic Conductivity Unit[i]\cf3\strike0\{linkID=2220\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Dispersivity Unit[i]\cf3\strike0\{linkID=2230\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Unsaturated Properties Unit[i]\cf3\strike0\{linkID=2240\}\cf0\b0 
\par }
2210
Scribble2210
Porosity Unit[i)



general:001680
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Porosity Unit[i)\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b Porosity Unit[i]\b0  layer contains information on the spatial distribution of the porosity of the 3D unit to be modeled.  The layer contains only one parameter, \b porosity\b0  [fraction], which contains the porosity value.
\par }
2220
Scribble2220
Permeability Unit[i] / Hydraulic Conductivity Unit[i]



general:001690
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Permeability Unit[i] / Hydraulic Conductivity Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The layer called \b Permeability Unit[i]\b0  (for cases using pressure) or \b Hydraulic Conductivity Unit[i]\b0  (for simulations using hydraulic head), contains information on the spatial distribution of the principal values of permeability/hydraulic conductivity, and the direction of the anisotropy for the unit to be modeled, or for generic studies, for the medium to be modeled.  In 3D models, the layer contains six parameters:
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike maximum\cf3\strike0\{linkID=1540\}\cf0\b0  [L\super 2\nosupersub ] ([L/s] for hydraulic conductivity)
\par \cf2\b\strike{\pntext\f2\'B7\tab}middle\cf3\b0\strike0\{linkID=1550\}\cf0  [L\super 2\nosupersub ] ([L/s] for hydraulic conductivity)
\par \cf2\b\strike{\pntext\f2\'B7\tab}minimum\cf3\strike0\{linkID=1560\}\cf0\b0  [L\super 2\nosupersub ] ([L/s] for hydraulic conductivity)
\par \cf2\b\strike{\pntext\f2\'B7\tab}horizontal angle\cf3\strike0\{linkID=1580\}\cf0\b0  [degrees]
\par \cf2\b\strike{\pntext\f2\'B7\tab}vertical angle\cf3\strike0\{linkID=1590\}\cf0\b0  [degrees]
\par \cf2\b\strike{\pntext\f2\'B7\tab}rotational angle\cf3\strike0\{linkID=1600\}\cf0\b0  [degrees]
\par \pard\fi720\sb120 
\par \pard\fi720 If the system is isotropic, the \b maximum\b0 , \b middle\b0 , and \b minimum \b0 values must be set equal to the desired value, and the angle(s) may be set to any arbitrary number.  It may be convenient for isotropic systems to link the value of one of the permeability minimum or maximum parameters to the other.  The reader is referred to Appendix A, entitled "\cf2\strike Adding and Linking New Layers\cf3\strike0\{linkID=2380\}\cf0 " on page \lang1024 107\lang1033 .
\par }
2230
Scribble2230
Dispersivity Unit[i]



general:001700
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Dispersivity Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Dispersivity Unit[i]\b0  layer contains information on the spatial distribution of the longitudinal and transverse dispersivities of the unit to be modeled, or for generic studies, of the medium to be modeled.
\par In 3D models, the layer contains six parameters:
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920\cf2\b\strike longdisp_in_max_permdir\cf3\strike0\{linkID=1620\}\cf0\b0  [L] = longitudinal dispersivity for flow in the direction of maximum permeability 
\par \cf2\b\strike{\pntext\f2\'B7\tab}longdisp_in_mid_permdir\cf3\strike0\{linkID=1630\}\cf0\b0  [L] = longitudinal dispersivity for flow in the direction of intermediate permeability 
\par \cf2\b\strike{\pntext\f2\'B7\tab}longdisp_in_min_permdir\cf3\strike0\{linkID=1640\}\cf0\b0  [L] = longitudinal dispersivity for flow in the direction of minimum permeability 
\par \cf2\b\strike{\pntext\f2\'B7\tab}trandisp_in_max_permdir\cf3\strike0\{linkID=1650\}\cf0\b0  [L] = transverse dispersivity in the direction of maximum permeability for any flow in the mid-min plane
\par \cf2\b\strike{\pntext\f2\'B7\tab}trandisp_in_mid_permdir\cf3\strike0\{linkID=1660\}\cf0\b0  [L] = transverse dispersivity in the direction of intermediate permeability for any flow in the max-min plane
\par \cf2\b\strike{\pntext\f2\'B7\tab}trandisp_in_min_permdir\cf3\strike0\{linkID=1670\}\cf0\b0  [L] ] = transverse dispersivity in the direction of minimum permeability for any flow in the max-mid plane
\par \pard\fi720\sb120 
\par \pard\fi720 The additional components of the dispersivity values in 3D models are extensions to the classical dispersion process provided by SUTRA (\cf2\strike Voss, 1984\cf3\strike0\{linkTarget=Voss84\}\cf0 ; transverse extension added in 1990 revision, 3D extension added by \cf2\strike Voss and Provost, 2002\cf3\strike0\{linkTarget=Voss02\}\cf0 ).  To obtain the classical dispersion model used by most other transport models, set the values of all the longitudinal dispersivity parameters equal to each other, and the values of all the transverse dispersivity parameters equal to each other.  
\par }
2240
Scribble2240
Unsaturated Properties Unit[i]



general:001710
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Unsaturated Properties Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Unsaturated Properties Unit[i]\b0  layer is used to specify regions that have different unsaturated flow properties.  
\par \pard\li720\sb120\i Note: Unsaturated-flow simulation with SUTRA requires some user programming in the SUTRA subroutine UNSAT for the user to specify the unsaturated functions for each region as described in Voss and Provost (2002).  The FORTRAN source code for SUTRA and a FORTRAN compiler are required to use this feature.  Because there is not a standard format for any additional information that must be read into the program for unsaturated properties, \b SutraGUI \b0 does not create input files for unsaturated flow properties.  However, users may be able to create an export template for use within Argus ONE that will generate such files for their particular case, as described on p. 169-188 of the Argus ONE User's Guide (\cf2\strike Argus Interware Inc., 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).
\par \pard\fi720\sb120\i0 The \b Unsaturated Properties Unit[i]\b0  layer contains information on the spatial distribution of regions having constant unsaturated properties in the unit to be modeled, or for generic studies, in the medium to be modeled.  This layer only appears when a \cf2\strike saturated-unsaturated\cf3\strike0\{linkID=180\}\cf0  problem type has been selected in the \b SUTRA Project Information\b0  dialog box.  The layer contains only one parameter, \b region \b0 (an integer), which contains the identification number of the region.  Usually the \i Exact Contour\i0  method should be used to define the location of regions in this layer, in which case only closed contours should be used for specifying regions.  The \i Exact Contour \i0 method is already specified as the default selection for this layer.  After closing a contour, the user must assign its region number in the \i Contour Information \i0 dialog box.  Any number of contours may share the same region number.  Each region represents one type of material having uniform unsaturated property functions.  For example, region 1 may be fine silt, region 2 may be clay, and region 3 may be coarse sand.  Each type of material may occur in a number of places within the model domain.  The default region number is zero.  To create regions that share a boundary (such as geologic layers), turn on the option \i Special|Allow Intersection \i0 before drawing contours.  If the user wishes to have nodes and element edges occur exactly at region boundaries, then for a FishNet Mesh, these boundaries need to be defined as the edges of superblocks in a \cf2\strike FishNet Mesh layout\cf3\strike0\{linkID=2000\}\cf0 .  \f2 
\par \pard\fi720\f1 
\par }
2250
Scribble2250
Initial Conditions Unit[i]



general:001720
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Conditions Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par This group of \i Information \i0 layers contains information on the spatial distribution of pressures or hydraulic heads, and solute concentrations or temperatures at the beginning of the model run, within unit[i]. The override layers are used to override the initial values read from a restart file.
\par 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920\cf2\b\strike Initial Pressure Unit[i]/Initial Hydraulic Head Unit[i]\cf3\strike0\{linkID=2260\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i]\cf3\strike0\{linkID=2265\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Initial Concentration Unit[i]/Initial Temperature Unit[i]\cf3\strike0\{linkID=2270\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i]\cf3\strike0\{linkID=2275\}\cf0\b0 
\par }
2260
Scribble2260
Initial Pressure Unit[i]/Initial Hydraulic Head Unit[i]



general:001730
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Pressure Unit[i]/Initial Hydraulic Head Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b Initial Pressure Unit[i]\b0  or \b Initial Hydraulic Head Unit[i]\b0  layer contains information on the spatial distribution of pressure or hydraulic head at the beginning of the model run.  The layer contains only one parameter, \b initial_pressure\b0  [M/(Ls^\super 2\nosupersub  )], (or \b initial_hydraulic_head\b0  [L]), which contains the pressure (or hydraulic head) values.  (For 3D models using pressure, it is often useful to make the initial pressure a function of \cf2\b\strike Sutra_Z()\cf3\strike0\{linkID=40\}\cf0\b0 .)
\par }
2265
Scribble2265
Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i]




Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i]
\par \cf0\b0\f1\fs24 
\par Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i] defines an initial pressure or hydraulic head that overrides a value read or interpolated from the restart file.
\par \pard\fi720 
\par 
\par }
2270
Scribble2270
Initial Concentration Unit[i]/Initial Temperature Unit[i]



general:001740
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Concentration Unit[i]/Initial Temperature Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par The \b Initial Concentration Unit[i]\b0  or \b Initial Temperature Unit[i]\b0  layer contains information on the spatial distribution of solute concentration or fluid temperature at the beginning of the model run.  The layer contains only one parameter, \b initial_concentration\b0  [C], or \b initial_temperature\b0  [\'b0C], which contains the concentration or temperature values.
\par }
2275
Scribble2275
Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i]




Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i]\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i] defines an initial concentration or temperature that overrides a value read or interpolated from the restart file.
\par }
2280
Scribble2280
BOTTOM UNIT[i]



general:001750
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 BOTTOM UNIT[i]\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The \b BOTTOM UNIT[i]\b0  group of layers is only present in 3D models.  It includes layers that are related to the bottom of unit[i].  It contains the \b Elevation Bottom Unit[i]\b0  layer and may also contain \cf3\b Sources of Fluid Bottom Unit[i]\cf4\{\b0 linkID=2130\}\cf0 , \cf3\b\strike Sources of Solute Bottom Unit[i] / Energy Unit[i]\cf4\b0\strike0\{linkID=2140\}\cf0 , \cf3\b\strike Specified Pressure Bottom Unit[i] / Hydraulic Head Bottom Unit[i]\cf4\strike0\{linkID=2160\}\cf0\b0 , \cf3\b\strike Specified Concentration Bottom Unit[i] / Temperature Bottom Unit[i]\cf4\strike0\{linkID=2170\}\cf0\b0 , and \cf3\b\strike Observation Bottom Unit[i]\cf4\strike0\{linkID=2180\}\cf0\b0  layers.  These layers are equivalent to those layers described previously in the section of this report labeled "\cf3\b\strike TOP\cf4\strike0\{linkID=2100\}\cf0\b0 " on page \lang1024 59\lang1033 , but here concerning locations exactly within the bottoms of units, rather than on the top surface of the model.  
\par \pard\fi720 The \b Elevation Bottom Unit[i]\b0  layer is used to specify the elevation of the layer of nodes at the bottom of a unit in the model.  It has one parameter, \b elevation bottom unit[i]\b0  [L], which is the elevation.\cf2\f1 
\par }
2290
Scribble2290
Map or Point Data



general:001760
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Map or Point Data\cf0\b0\f1\fs24 
\par \pard\fi720 
\par This group of layers is provided for the convenience of the user.  Bitmap images, maps, or data may be imported into these layers if desired.  If not needed, these layers can be ignored.
\par 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li920\tx920\cf2\b\strike Map\cf3\strike0\{linkID=2300\}\cf0\b0 
\par \cf2\b\strike{\pntext\f2\'B7\tab}Point Data\cf3\strike0\{linkID=2310\}\cf0\b0 
\par }
2300
Scribble2300
Map



general:001770
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Map\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b Map \b0 layer is a special type of Argus ONE layer that can contain an image or contours and points that cannot be modified or linked to other layers.  The image in a Maps layer can serve as the pattern upon which information in other layers is superposed.  Maps layers can be used to display point data from Argus ONE Data layers using a variety of post-processing tools provided in Argus ONE.  Such display of point data is described in the section, "Displaying Data" on page \lang1024 72\lang1033 .  The user may create additional Maps layers.  The \b Map \b0 layer is provided as a convenience in \b SutraGUI\b0 .
\par One way to use \i Maps \i0 layers is to import scanned images into them and then draw contours on \i Information \i0 layers by tracing the image.  Objects in \i Maps \i0 layers (lines, points and other objects) can be copied from the \i Maps \i0 layer and pasted into \i Information \i0 layers where attributes associated with the geospatial information can be assigned to these objects.
\par \pard\fi720 For example, if the boundary line on a map is associated with a prescribed hydraulic head, the boundary line can be copied from the \i Maps \i0 layer to the \cf2\b\strike Specified Hydraulic Head\cf3\strike0\{linkID=2160\}\cf0\b0  layer.  Information about copying and pasting objects in Argus ONE can be found in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).
\par }
2310
Scribble2310
Point Data



general:001780
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Point Data\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \i Data \i0 layers are a special type of Argus ONE layer that contain scattered, gridded, or meshed point-wise data that can be linked to the finite-element mesh or displayed in \i Maps \i0 layers.  Instructions on interpolating and contouring these data are given in the Argus ONE User's Guide (\cf2\strike Argus Interware, 1997, Supplement Version 2.5\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ), and a brief description of this is given in the section or this report entitled, "\cf2\strike Displaying Data\cf3\strike0\{linkID=2330\}\cf0 " on page \lang1024 72\lang1033 .  One \i Data \i0 layer, \b Point Data\b0 , is provided as a convenience in \b SutraGUI\b0 , and the user may create additional ones as needed.  The user cannot simply draw points in a data layer as is done in an information layer.  Instead, the data must be imported.
\par }
2320
Scribble2320
Creating FishNet Meshes



general:001790
Writing



FALSE
43
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Creating FishNet Meshes\cf0\b0\f1\fs24 
\par \pard\fi720 
\par A FishNet Mesh (\cf2\strike for example, fig. 3 on page \lang1024 9\cf3\strike0\{linkID=25\}\cf0\lang1033 ) consists of superblocks (large contiguous quadrilaterals) that are each subdivided into a specified number of quadrilateral finite elements, four of which are connected to each internal node.  The mesh may be considered similar to a deformed finite-difference grid.  FishNet meshes are created as follows.
\par \pard\fi720\sb240\sa60\b\fs28 Prepare to Draw the Layout of the FishNet Mesh\b0\fs24 
\par \pard\fi-360\li1080\sb60\tx1100 1.\tab On the \cf2\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0  pane of the \b SUTRA Project Information\b0  dialog box, choose to use a FishNet Mesh.  (FishNet meshes are mandatory for 3D models.)
\par 2.\tab Make the \cf2\b\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0\b0  layer active.
\par \pard\fi720\sb240\sa60\b\fs28 Draw the First Superblock\b0\fs24 
\par \pard\fi-360\li1080\sb60\tx1100 3.\tab Select the element-drawing tool \cf3\{bmc ElementButton.BMP\}\cf0  at the left of the window.
\par \pard\fi-360\li1080\tx1100 4.\tab Draw an element in the white work area of the window by clicking at the desired location of each corner, proceeding either clockwise or counter-clockwise around the element (fig. 16). 
\par \pard\fi720 
\par \cf3\{bmc FishnetLayoutFig16.bmp\}\cf0 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 16\lang1033 .  Example of a completed superblock.
\par \pard\fi720\b0 
\par \pard\fi-360\li1080\sb60\tx1100 5.\tab Select the \i Arrow \i0 button \cf3\{bmc ArrowButton.bmp\}\cf0  at the left side of the window and double-click on the element.
\par 6.\tab The \i Element Information\i0  dialog box appears.  Enter the desired number of elements in the X and Y directions (for example, 10 and 15) next to the names \cf2\b\strike elements_in_x\cf3\strike0\{linkID=1410\}\cf0\b0  and \cf2\b\strike elements_in_y\cf3\strike0\{linkID=1420\}\cf0\b0  below the word "Value".  These values determine how many rows and columns of quadrilateral finite elements this superblock will be divided into when the mesh is generated.  To exit the dialog box, click OK to accept the values or Cancel to leave the values unaltered.
\par \pard\li720\sb120\i Note: To determine the X and Y directions for the element, identify the two nodes with the largest X-coordinates.  Of those two, the one with the largest Y coordinate is treated as being in the upper right corner of the element.  If the nodes have the same Y-coordinate, the one with the larger X coordinate is treated as being in the upper right corner of the element.  If the nodes with the second and third highest X-coordinates have the same X-coordinate, then the one with the higher Y-coordinate is selected as one of the two with the highest X-coordinate.
\par Note: Superblocks may contain redundant information concerning number of rows and columns of elements.  For example, each superblock in a pair of superblocks side-by-side in the X direction will have a value for \cf2\b\strike elements_in_y\cf3\strike0\{linkID=1420\}\cf0\b0 .  Because the FishNet Mesh design requires there to be the same number of rows of elements across both blocks, the user should provide each superblock with the same value for \cf2\b\strike elements_in_y\cf3\strike0\{linkID=1420\}\cf0\b0 .  \b SutraGUI \b0 is designed so that if these numbers do not agree, then the higher value is applied throughout that row or column of superblocks.\i0 
\par \pard\fi720\sb240\sa60\b\fs28 Draw Additional Superblocks\b0\fs24 
\par \pard\fi-360\li1080\sb60\tx1100 7.\tab Usually, the user will want to join at least one side of each new superblock to a previously drawn one.  To draw the next superblock, select the element tool again and move the cursor over one of the nodes of the previous superblock along the side to which the new one will be joined.  The cursor will change to a large hollow plus sign when it is over one of the nodes of the other element.  Click with the mouse at this point to begin drawing a new element that includes the node under the mouse.
\par 8.\tab If another node of a previous superblock is to be shared with the new superblock, then move the cursor over the next previously existing node and click again when the cursor becomes a hollow plus sign.
\par 9.\tab To complete the element, click at the other locations where corners of the element are desired.  Assign each element appropriate values of \cf2\b\strike elements_in_x\cf3\strike0\{linkID=1410\}\cf0\b0  and \cf2\b\strike elements_in_y\cf3\strike0\{linkID=1420\}\cf0\b0 .
\par 10.\tab Begin a new superblock according to step 8, if desired.  If no more superblocks are needed, then continue with step 11.  
\par \pard\fi720\sb240\sa60\b\fs28 Create the Mesh from the Layout of the FishNet Mesh\b0\fs24 
\par \pard\fi-360\li1080\sb60\tx1100 11.\tab Make the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer active.
\par 12.\tab Select \b PIEs|Create SUTRA FishNet Mesh\b0 .  \b SutraGUI\b0  then generates a mesh according to the specifications given in the \cf2\b\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0\b0  layer and places the mesh into the \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0  layer.
\par \pard\li720\sb120\i Note: The \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer must be empty (that is, contain no old mesh) for this choice to be available.  Old meshes must be deleted first by clicking Edit|Select All, and then pressing the delete key.
\par \pard\fi720\sb120\i0 A completed \cf2\b\strike FishNet_Mesh_Layout\cf3\strike0\{linkID=1400\}\cf0\b0  layer is shown in figure 17.  In it, \cf2\b\strike elements_in_x\cf3\strike0\{linkID=1410\}\cf0\b0  and \cf2\b\strike elements_in_y\cf3\strike0\{linkID=1410\}\cf0\b0  have both been set to 5.  The resulting mesh that appears in the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer is shown in figure 18.  Almost any arrangement of superblocks is possible.  
\par \pard\li720\sb120\i Note: although the mesh in figure 18 is suitable for a 2D model, it is not suitable for a 3D model.  This is because it cannot be deformed into a simple rectangle consisting of rows and columns of elements, where each row has the same number of elements as all other rows and each column has the same number of elements as all other columns (like a rectangular finite-difference grid containing rectangular cells).
\par 
\par \cf3\i0\f2\{bmc FIG28.bmp\}\cf0\i\f1 
\par \pard\fi720\sb120\sa120\b\i0 Figure \lang1024 17\lang1033 .  Example of FishNet Mesh showing structure of superblocks.
\par \cf3\b0\f2\{bmc FIG29.bmp\}\cf0\b\f1 
\par Figure \lang1024 18\lang1033 .  Completed FishNet Mesh, for layout shown in figure 17.
\par \pard\fi720\sb120\b0 For 3D nonaligned meshes, one 2D mesh must be created for the bottom of each unit plus an extra mesh for the top of the model; however, each mesh must have the same number and relative arrangement of nodes and elements.
\par It is possible to copy a mesh from one layer to another using the following procedure from the Utility PIE (\cf2\strike Winston, 2001\cf3\strike0\{linkTarget=Winston01\}\cf0 ):
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 Select \b PIEs|Import\'85
\par \b0{\pntext\f3\'B7\tab}Click on the \b Copy Quad Mesh\'85\b0  radio button and then click on the \b OK \b0 button.
\par {\pntext\f3\'B7\tab}Select the layers from which and to which the mesh should be copied and then click on the \b OK \b0 button.
\par \pard\fi720\sb120 Only the geometry of the mesh is copied; parameter values are not copied and must be re-entered.
\par \pard\fi720 
\par }
2330
Scribble2330
Displaying Data



general:001800
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Displaying Data\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 This section describes how the user can check the values assigned to elements and nodes.
\par 
\par \pard\fi720\cf2\strike Element Data\cf3\strike0\{linkID=2340\}\cf0 
\par \cf2\strike Node Data\cf3\strike0\{linkID=2350\}\cf0 
\par }
2340
Scribble2340
Element Data



general:001810
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Element Data
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb120\f2 It is important for the user to check whether the elementwise mesh parameters have been assigned by element as desired.  The user can double-click on an individual element to check or modify its values.  The spatial distribution of any elementwise parameter of the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer can be easily displayed as a color map, as follows.
\par When the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer is active, holding the mouse button down over the triangle next to the word "Color" above the color band along the left edge of the Argus ONE window provides a list of possible elementwise mesh parameters by which elements can be colored.  \cf2\strike Figure 26\cf3\strike0\{linkID=3000\}\cf0  on page \lang1024 88\lang1033  shows the list and a mesh colored by parameter \cf2\b\strike PMAX\cf3\strike0\{linkID=1110\}\cf0\b0 , where the closed contours are regions of constant permeability specified for the permeability.maximum layer parameter.
\par \pard\li720\sb120\i Note: It is sometimes useful to make the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer transparent, which can be done by turning off the option View|Opaque Elements.
\par 
\par \pard\li720 Note: It is sometimes useful for the user to display the spatial distribution of a new information layer or parameter added by the user.  This may be accomplished by also creating a new \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer parameter and linking its value (selected as "Type: element parameter") to the user's new information layer or parameter.\i0\f1 
\par }
2350
Scribble2350
Node Data



general:001820
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Node Data
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\sa240\f1\fs24 It is important for the user to check whether the nodewise mesh parameters have been assigned by node as desired.  The spatial distribution of any nodewise parameter of the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer can be easily displayed as a contour map, as follows.
\par \pard\fi-360\li1080\sb60\tx1100 1.\tab Activate the \cf2\b\strike Map\cf3\strike0\{linkID=2300\}\cf0  \b0 layer, or create a new map type layer and activate it.
\par \pard\fi-360\li1080\sb120\tx1100 2.\tab Hold the mouse button down over the post-processing tool at the lower right of the tools found at the upper left edge of the Argus ONE window, and select the contour drawing tool from the pull-down list \cf3\{bmc ContourToolButton.bmp\}\cf0 .
\par 3.\tab Click and drag the cursor anywhere in the workspace to form a small rectangle and release the mouse.  This opens the \i Contour Diagram \i0 dialog box.
\par 4.\tab In the "Layer:" box, select \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  (if it is not already selected).
\par 5.\tab In the "Value:" box, select the nodewise parameter of the \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  layer that should be contoured.
\par 6.\tab Click the Position tab along the top of the window and then click on "Overlay Source Data" to force the plot to exactly overlay the model domain.
\par 7.\tab Click OK, and the plot is drawn.  This creates a contour plot of the nodewise parameter of interest overlaying the mesh.  Double-clicking this plot with the arrow tool brings back the \i Contour Diagram\i0  dialog box, allowing modifications to be made to plot style.  The reader is referred to "Post-Processing Tools and Objects (p 23 s2.5) of the Argus ONE User's Guide (\cf2\strike Argus Interware, Inc., 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 )" for more information.
\par \pard\fi720\sb120 
\par \pard\li720\sb120\i Note: If the mesh or the Information layer (to which the nodewise parameter plotted is linked) is changed, this process must be repeated to display the new node-wise parameter distribution.
\par \pard\fi720\sb120\i0 Another way to display the nodewise data is to make a Data layer, such as \cf2\b\strike Point Data\cf3\strike0\{linkID=1950\}\cf0\b0 , the active layer and select \i Edit|Read Data From Layer\'85\i0   Then select the parameters in the \cf2\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0  layer that should be displayed and click on the \i OK \i0 button.  The data points can then be colored in the same way as the elements as described above in the section entitled "\cf2\strike Element Data\cf3\strike0\{linkID=2340\}\cf0 ."  Again, note that the data points will not be automatically updated if the node values change.\f2 
\par \pard\fi720 
\par \pard\f3 
\par }
2360
Scribble2360
Exporting SUTRA input files and Running SUTRA



general:001830
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Exporting SUTRA input files and Running SUTRA\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 Once a SUTRA model has been prepared, the next steps are to export the SUTRA input files and run SUTRA.  To export the input files for SUTRA, make \cf2\b\strike SUTRA Mesh\cf3\strike0\{linkID=1060\}\cf0\b0  (or \cf2\b\strike Sutra Mesh Top\cf3\strike0\{linkID=1990\}\cf0\b0  or \cf2\b\strike SUTRA Mesh Bottom Unit[i])\cf3\strike0\{linkID=1990\}\cf0\b0  the active layer.  Then select \b PIEs|Run Sutra\'85\b0  from the menu.  The \b Run SUTRA\b0  dialog box will appear (fig. 19).  
\par \cf3\{bmc RunSutraFig19.BMP\}\cf0 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 19\lang1033 .  The Run SUTRA dialog box.
\par \pard\fi720\sb120\b0 The \b Run SUTRA\b0  dialog box provides several options that the user can select.  First, there is the "root file name for simulation."  This is the part of the file name before the extension that will be used to create all of the file names for the input and output files for SUTRA.  For example if the root file name is "A_Name," the main SUTRA input file would be "A_Name.inp" and the name of the node output file would be "A_Name.nod."  
\par Next is a pair of radio buttons.  Depending on which one is selected, \b SutraGUI \b0 will either only create the SUTRA input files or will create the SUTRA input files and then run SUTRA.  
\par \pard\keep\fi720\sb120 Next there are three radio buttons that can be used to control how much error checking will be done during the export of the SUTRA input files.  The first choice (Show all warnings) is selected by default.  The user also can choose either to show only warnings that would cause an invalid SUTRA input file to be created or to show no warnings.  
\par \pard\fi720\sb120 Next, there is a check box that, if checked, indicates that an external calibration program such as UCODE (Poeter and Hill, 1998) or PEST (Doherty, 1994) is running Argus ONE.  If the calibrate checkbox is checked, several changes will be made to the batch file that SutraGUI creates to run SUTRA.  First, a "wait" option will be included after SUTRA.  This will cause the operating system to wait until after SUTRA has finished running before processing the next line of the batch file.  Second, a new line will be added to the batch file after the one that starts SUTRA.  This will call the program "WaitForMe" described in Winston (1999).  The external program that is running Argus ONE should also call WaitForMe just after sending the commands to Argus ONE to start creating the SUTRA input file.  When WaitForMe is run a second time, the first and second copies of WaitForMe will close, which will signal the calibration program that it can now read the results from SUTRA.  The third change made to the batch file if the "Calibrate" checkbox is checked is that the "pause" command will not be included at the end of the batch file.
\par Below the calibrate check box, there is the \b SUTRA Path\b0  edit box in which the user specifies the full path of the SUTRA program.  A "Browse" button next to the edit box can be used to select the full path of the SUTRA program interactively.
\par Below the \b SUTRA Path\b0  edit box, there is a checkbox labeled \b Save temporary files for reuse by SutraGUI\b0 .  If this checkbox is checked, certain temporary files created by \b SutraGUI \b0 will be saved for reuse the next time the SUTRA input files are created.  The temporary files that are saved contain the input data for certain data sets in SUTRA.  If those data sets have not changed since the last time the SUTRA input files were generated, the user can save time by not exporting those data sets again.  However, the data sets must still be present in the SUTRA input file.  To solve this problem, \b SutraGUI \b0 creates a separate temporary file (saved in the working directory for the project) for each data set and then combines them in the final SUTRA input file.  If the checkbox to save the temporary files is checked, the temporary files are not deleted after the final input file is generated and can be reused the next time the SUTRA input files are generated.  If the \b Save temporary files\b0  checkbox is not checked, and only some data sets should be exported, \b SutraGUI \b0 will disassemble the prior versions of the input files (that must be located in the working directory for the project) to create a temporary file for each data set.  Those files that are not replaced during the export process will then be incorporated into the new input file.
\par After the \b Save temporary files\b0  checkbox, there is a group of checkboxes with the names of data sets in the SUTRA input file.  In order to save some execution time for \b SutraGUI \b0 export, if some of the data sets can remain the same as they were when they were last exported, the user can uncheck the corresponding checkbox and the data sets will not be exported again.  Only those data sets that can require a substantial amount of time to export have corresponding checkboxes.  The other data sets are always exported.  The \b None \b0 and \b All \b0 buttons beneath the checkboxes will cause none or all of the checkboxes to become checked, respectively.
\par Finally, on the separate \b Memory options\b0  tab, there is a set of options that affect memory usage during export of the SUTRA input files in 3D models.  During the export process, \b SutraGUI \b0 must determine the polyhedron around each node that represents the cell of that node.  This can be a computationally intensive and time-consuming process.  However, in large models, the amount of memory required to store the polyhedrons can be prohibitive.  The \b SutraGUI \b0 has several options for dealing with this situation.  In almost all cases, the best choice is the default choice, which is to recalculate the polyhedrons each time they are needed.  For some small models, a better choice may be to calculate the polyhedrons once and them keep them in memory.  However, for larger models, the computer may start to use virtual memory, which tends to be slow.  When the computer is using virtual memory, some items that would normally be in physical memory are stored on the hard drive and then read back into physical memory when needed.  Another option provided by the \b SutraGUI \b0 is to save the polyhedrons to a file on the disk.  This allows the polyhedrons to be read from the disk file during a future run.  However, it is usually faster to compute the polyhedrons than to read them from disk so this option will not be advantageous in most circumstances.
\par \pard\fi720 
\par }
2370
Scribble2370
Evaluating Model Results



general:001840
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Evaluating Model Results\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120\b SutraGUI \b0 can display model results only from 2D SUTRA models, but can do this in a variety of ways within Argus ONE.  Results from 2D and 3D SUTRA models can be displayed in both Model Viewer (\cf2\strike Hsieh and Winston, 2002\cf3\strike0\{linkTarget=Hsieh\}\cf0 ), which provides 3D color visualizations, or SutraPlot (\cf2\strike Souza, 1999\cf3\strike0\{linkTarget=Souza\}\cf0 ), which mainly provides 2D views slicing through the 3D results.
\par To display 2D SUTRA results in \b SutraGUI\b0 , select \b PIEs|SUTRA 2D Post Proc\'85\b0   Then select the node or element file to display the results from it.  A dialog box will appear in which the user can select the data sets to plot.  Any data set that is set to \b YES \b0 will be plotted.  By default, no data sets are plotted.  If a particular data set is absent from the output file, it is shown in the dialog box as an uppercase \b NO\b0 .  If the data set is present but has not been selected, it is shown in the dialog box as a lowercase \b no\b0 .  Clicking on a column heading will change all the data sets labeled \b no \b0 in that column to \b YES\b0 .  After data sets have been selected, the user clicks the \b OK \b0 button to create Argus ONE Data layers containing data points with the data and an Argus ONE Map containing contour maps of the data.  The data in the Data layers may be used to create other sorts of post-processing charts as described in the Argus ONE User's Guide (\cf2\strike Argus Interware, Inc., 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ).
\par \pard\fi720 
\par }
2380
Scribble2380
Adding And Linking New Layers



general:001850
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Adding And Linking New Layers\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Two examples are presented below that demonstrate a few aspects of adding and linking new layers.  The first example involves creation of an areal fluid source from a precipitation map and the second involves defining the thickness of the aquifer from top and bottom elevations.\cf2\f1 
\par \pard 
\par \cf3\strike Adding a Precipitation Data Layer and Linking \f2 i\f1 t to Fluid Sources Layer\cf4\strike0\{linkID=2390\}\cf2 
\par \cf3\strike Calculating a Thickness from Two New Layers or Two New Parameters\cf4\strike0\{linkID=2400\}\cf2 
\par }
2390
Scribble2390
Adding a Precipitation Data Layer and Linking it to a Fluid Sources Layer



general:001860
Writing



FALSE
26
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Adding a Precipitation Data Layer and Linking it to a Fluid Sources Layer\cf2\b0\f1\fs24 
\par 
\par \pard\fi-360\li1080\sb60\tx1100\cf0\f2 1.\tab Start a 2D SUTRA model.
\par 2.\tab Bring up the \i Layers' Floater\i0  by clicking on the \i Layers... \i0 button along the top of the Argus ONE window.
\par 3.\tab Click on the \i Layers \i0 button at the top of the \i Layers' Floater\i0  window.  This brings up the \i Layers \i0 dialog box.
\par 4.\tab To create the new layer (that will contain the areal distribution of rainfall), use the down arrow to position the highlighted layer to \cf3\b\strike Sources of Fluid\cf4\strike0\{linkID=1700\}\cf0\b0 , and click on button \i New \i0 below the label "Layer" (not below the label "Parameter, which would add a parameter to layer \cf3\b\strike Sources of Fluid\cf4\strike0\{linkID=1700\}\cf0\b0 ).
\par 5.\tab Set the layer name by typing "Rainfall" to replace the default layer name, "New Layer."
\par 6.\tab Change the \i Type \i0 to \i Data \i0 (from the default of \i Information\i0 ) by clicking on the word "Information," which will bring up a menu of choices.
\par 7.\tab For the \b Rainfall \b0 layer to be useful, data will need to be imported into it.  The reader is referred to the Argus User's Guide (Argus Interware, 1997) for information on importing data.  Close the Layers dialog box, import data into \b Rainfall\b0 , and then reopen the Layers dialog box.  A number of parameters may be associated with the imported data; assume that the first parameter contains the rainfall amounts in units [m/year].
\par 8.\tab To link the imported information, click on the \cf3\b\strike Sources of Fluid\cf4\strike0\{linkID=1700\}\cf0\b0  layer to highlight it.
\par 9.\tab In the parameter listing area, highlight the line containing \cf3\b\strike specific_source\cf4\strike0\{linkID=1720\}\cf0\b0 , then find the button labeled "\i f\sub x\nosupersub\i0 ",  below the label "Value".  Click this button to show the \i Expression Editor\i0 .
\par 10.\tab In the \i Expression Editor\i0 , scroll the left scroll bar until an entry for the \b Rainfall \b0 layer can be seen.
\par 11.\tab Click on \b Rainfall\b0 .  The parameter names imported into the layer will then appear in the box to the right.
\par 12.\tab The first parameter, "Imported Parameter 1" contains the rainfall values for this example.  Double-click on the entry in the right-hand box, and the parameter name will appear in the expression box at the top of the \i Expression Editor\i0 .
\par 13.\tab To convert the value to [m/s] append the expression "/(365.25*86400)" to divide the rainfall by the number of seconds in a year.  To indicate that only 25% of the rainfall becomes ground-water recharge, click to the left of the parameter name and type "0.25*."  The final expression should be 
\par 
\par \pard\fi-360\li1080\sb60\qc\tx1100 "0.25*Imported Parameter 1/(365.25*86400)."
\par \pard\fi-360\li1080\sb60\tx1100 
\par 14.\tab Click \i OK \i0 button.
\par 15.\tab If the user plans to add point or contour objects to the \cf3\b\strike Sources of Fluid\cf4\strike0\{linkID=1700\}\cf0\b0  layer in addition to the recharge from rainfall, the interpretation method listed at the bottom of the \i Layers \i0 dialog box must be set to \i Exact Contour\i0  method.  (This is the default interpretation method for the layer.)  Any other interpretation method will cause the objects to override the distributed rainfall source everywhere in the layer.
\par 16.\tab In the \i Layers \i0 dialog box click \i Done\i0 .  The default value of the parameter \cf3\b\strike Sources of Fluid.specific_source\cf4\strike0\{linkID=1720\}\cf0\b0  is now set to the recharge calculated from the rainfall distribution.
\par \pard\fi-700\li700\sb60\f3 
\par \pard\cf2\f1 
\par }
2400
Scribble2400
Calculating a Thickness from Two New Layers or Two New Parameters



general:001870
Writing



FALSE
46
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Calculating a Thickness from Two New Layers or Two New Parameters\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 In the following dual example, it is shown how, for a 2D model, thickness may be calculated in two ways.  In the first, the two new layers that are added are the elevations for the top and bottom of the aquifer.  These layers are then linked to the thickness layer, which calculates the aquifer thickness.  In the second example, two new parameters are instead added to the \b Thickness \b0 layer in a 2D model.  The first example follows:\f3 
\par \pard\fi-360\li1080\sb60\tx1100\f2 1.\tab Start a 2D SUTRA model.
\par 2.\tab Bring up the \i Layers' Floater\i0  by clicking on the \i Layers...\i0  button along the top of the Argus ONE window.
\par 3.\tab Click on the \i Layers \i0 button at the top of the \i Layers' Floater\i0 .
\par 4.\tab In the \i Layers \i0 dialog box, use the down arrow to position the highlighted layer to be \b Thickness\b0 , and click on button \i New \i0 below the label Layer (not below the label Parameter, which would add a parameter to layer \b Thickness\b0 ).
\par 5.\tab Set the new layer name by typing "Top" to replace the default layer name, "New Layer."  This layer will be used to set the elevation of the top of the aquifer.  The default interpretation type is \i Nearest Contour\i0 .
\par 6.\tab Add a second new layer and name it "Bottom."
\par 7.\tab Click on the \b Thickness \b0 layer line to highlight it.
\par 8.\tab In the parameter listing area, click the button labeled \i fx \i0 to show the \i Expression Editor\i0 .
\par 9.\tab In the \i Expression Editor\i0 , scroll the left scroll bar until an entry for layer \b Top \b0 can be seen.
\par 10.\tab Click on entry "Top."  That entry will then appear in the box to the right.
\par 11.\tab A list of parameters of this layer appears in the right-hand box.  In this case, there is only one parameter, "Top."  Double-click on the entry in the right-hand box, and the layer (and implicitly for single parameter layers, the parameter "Top" in layer \b Top\b0 ) name will appear in the expression box at the top of the \i Expression \i0 dialog box.
\par \pard\cf2\f1 
\par \cf3\{bmc ExpressionEditor.BMP\}\cf2 
\par \pard\fi720\sb120\sa120\cf0\b\f2 Figure \lang1024 34\lang1033 .  Constructing an Equation in the Expression Dialog, example
\par \pard\fi-360\li1080\sb60\tx1100\b0 12.\tab Insert a minus sign after "Top" (The reader is referred to figure 34).
\par 13.\tab Repeat step 10  to add layer \b Bottom \b0 to the expression.  The expression "Top-Bottom" should now be in the upper box.
\par 14.\tab Click \i OK\i0 .
\par 15.\tab If the user plans to add point or contour objects to the \b Thickness \b0 layer in addition to the thickness calculated from top and bottom elevations, the interpretation method listed a the bottom of the \i Layers \i0 dialog box must be set to \i Exact Contour \i0 method.  Any other interpretation method will cause the objects to override the calculated thickness everywhere in the layer.
\par 16.\tab In the Layers dialog box click \i Done\i0 .\f3 
\par \pard\fi720\li1080\sb120\tx1440 
\par \pard\fi720\sb120\f2 From now on, elevations of objects in layer \b Bottom \b0 will be subtracted from elevations in layer \b Top \b0 to calculate values for layer \b Thickness\b0 .
\par \pard\li720\sb120\i Note: Objects with specified thickness value drawn directly into layer Thickness would override the calculation.
\par \pard\fi720\sb120\i0 
\par The Argus ONE User's Guide (\cf4\strike Argus Interware, 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ) provides details of adding \i Information \i0 layers and linking \i Information \i0 layers to each other using mathematical expressions.
\par In the second example, thickness may be calculated from "Top" and "Bottom" information contained in a single layer.  In this case, it would be necessary to add two parameters to the \b Thickness \b0 layer as follows.\f3 
\par \pard\fi-360\li1080\sb60\tx1100\f2 1.\tab Bring up the \i Layers' Floater\i0  by clicking on the \i Layers...\i0  button along the top of the Argus ONE window.
\par 2.\tab Click on the button \i Layers \i0 at the top of the \i Layers' Floater\i0 .
\par 3.\tab In the \i Layers \i0 dialog box, use the down arrow to position the highlighted layer to be \b Thickness\b0 , and click on button \i New \i0 below the label Parameter twice (not below the label \i Layer\i0 , which would add a new layer).  Each click creates a new parameter.
\par 4.\tab Set the first parameter name by typing "Top" to replace the default parameter name after clicking on "New Parameter."  This parameter will be used to set the elevation of the top of the aquifer.
\par 5.\tab Set the second parameter name by typing "Bottom" to replace the second default parameter name after clicking on "New Parameter 1."  This parameter will be used to set the elevation of the bottom of the aquifer.
\par 6.\tab In the parameter listing area, click on the line containing parameter \i thickness \i0 in the list found on the lower part of the dialog box.  Then click on the \i fx \i0 button.
\par 7.\tab In the \i Expression Editor\i0 , scroll the left scroll bar until an entry for layer "Thickness" is visible and click on it.  Click on entry "Top."  That entry will then appear in the box to the right.
\par 8.\tab A list of parameters of this layer appears in the right-hand box.  In this case, there are three parameters.  Double-click on the "Top" entry in the right-hand box, and the parameter "Top" will appear in the expression box at the top of the \i Expression Editor\i0 .
\par 9.\tab Insert a minus sign after "Top."
\par 10.\tab Repeat step 8 to add parameter "Bottom" to the expression.  The expression "Top - Bottom" should now be in the upper box.
\par 11.\tab Click \i OK\i0 .
\par 12.\tab In the \i Layers \i0 dialog box, click \i Done\i0 .\f3 
\par \pard\li720\sb60\tx720 
\par \pard\fi720\sb120\f2 From now on, elevations of objects in parameter "Bottom" will be subtracted from elevations in parameter "Top" to calculate values for parameter "Thickness."  This method somewhat restricts the flexibility of the distributions possible for "Top" and "Bottom" as they are defined as parameters of the same graphic objects.  For the previous example, where new layers were defined, the contours of "Top" and "Bottom" could, in effect, cross one another.
\par \pard\fi720 
\par }
2410
Scribble2410
The CheckMatchBC program



general:001880
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 The CheckMatchBC program\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb120 The \b CheckMatchBC \b0 program is used to compare the values of specified pressure and concentration boundaries as specified in the SUTRA input file as compared to the actual values calculated for such boundaries by SUTRA.  Ideal selection of the GNUP and GNUU in Dataset 5 cause the simulated and specified values to match from six to eight decimal places.  If the simulated and specified values match more closely than that, the flux at the boundary node may not be calculated with sufficient precision.
\par To run the program, double-click on it in Windows Explorer, click on the \b Select Files\b0  button and select the input (*.inp) and node (*.nod) file for a SUTRA model.  The program will display the maximum and minimum relative differences for pressure and concentration along with the node numbers at which these occur, the specified value, the calculated value, and the number of digits that match.  The relative difference is calculated as follows:
\par 
\par \pard\fi720 Rel. Dif. = Abs[(specified value - calculated value)/(specified value + calculated value)],
\par 
\par \pard where
\par \pard\fi720 Rel. Dif. = relative difference
\par Abs = absolute value
\par }
2420
Scribble2420
Summary and Conclusions



general:001890
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Summary and Conclusions\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \b SutraGUI \b0 is a graphical user-interface for SUTRA.  It supports two-dimensional (2D) and three-dimensional (3D) simulations.  \b SutraGUI \b0 is based on a commercial package, Argus ONE\'99 (\cf2\strike Argus Interware, Inc., 1997\cf3\strike0\{linkTarget=ArgusInterware\}\cf0 ), which provides 2D Geographic Information System and meshing support.  For 2D models, the new version of \b SutraGUI \b0 described in this report is much the same as the previous version (\cf2\strike Voss and others, 1997\cf3\strike0\{linkTarget=Voss97\}\cf0 ).  For 3D models, the model domain is divided into a stack of tabular units and these units are used to assign aquifer properties, boundary conditions, and initial conditions to different, vertically separate parts of the model.  In addition, 3D objects are used to assign boundary conditions.  Three-dimensional objects are defined by associating elevations with 2D objects built into Argus ONE.  Another feature of this version of \b SutraGUI \b0 is a comprehensive Help system.
\par }
2430
Scribble2430
References Cited



general:001900
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 References Cited\cf2\b0\f1\fs24 
\par \f2 
\par \pard\fi-720\li720\cf3\{target=ArgusInterware\}\cf0 Argus Interware, Inc., 1997, User's Guide Argus ONE\super TM\nosupersub , Argus Open Numerical Environments - A GIS modeling system, version 4.0: Jericho, NY, Argus Holdings, Limited, 506 p.
\par \pard\fi720 Doherty, J., 1994, PEST: Model-Independent Parameter Estimation.  Corinda, Australia.  Watermark Computing. 
\par \pard\fi-720\li720\cf3\{target=Hsieh\}\cf0 Hsieh, P.A., and Winston, R.B., 2002, User's Guide to Model Viewer, a Program for Three-Dimensional Visualization of Ground-Water Model Results: U.S. Geological Survey Open-File Report 02-106, 18 p.
\par Poeter, E.P. and Hill, M.C., 1998, Documentation of UCODE, a computer code for universal inverse modeling: U.S. Geological Survey Water-Resources Investigations Report 98-4080, 116 p.
\par \cf3\{target=Souza\}\cf0 Souza, W.R., 1999, A graphical post-processor (SutraPLOT) for SUTRA, the U.S. Geological Survey ground-water flow and solute or energy transport simulation model. U.S. Geological Survey Open-File Report 99-220, 46 p.
\par \cf3\{target=Voss84\}\cf0 Voss, C.I., 1984, A finite-element simulation model for saturated-unsaturated, fluid-density-dependent ground-water flow with energy transport or chemically-reactive single-species solute transport: U.S. Geological Survey Water-Resources Investigations Report 84-4369, (rev 1990), 409 p.
\par \cf3\{target=Voss97\}\cf0 Voss, C.I., Boldt, David, and Shapiro, A.M., 1997, A graphical-user interface for the U.S. Geological Survey's SUTRA code using Argus ONE (for simulation of variable-density saturated-unsaturated ground-water flow with solute or energy transport): U.S. Geological Survey Open-File Report 97-421, 105 p. 
\par \cf3\{target=Voss02\}\cf0 Voss, C. I., and Provost, A.M., 2002 (Version of June 2, 2008), SUTRA, A model for saturated-unsaturated variable-density ground-water flow with solute or energy transport, U.S. Geological Survey Water-Resources Investigations Report 02-4231, 270 p.
\par \cf3\{target=Winston00\}\cf0 Winston, R.B., 2000, Graphical User Interface for MODFLOW, Version 4: U.S. Geological Survey Open-File Report 00-315, 27 p. 
\par \cf3\{target=Winston01\}\cf0 Winston, R. B., 2001, Programs for Simplifying the Analysis of Geographic Information in U.S. Geological Survey Ground-Water Models: U.S. Geological Survey Open-File Report 01-392, 67 p.\f3 
\par \pard\cf2\f1 
\par 
\par }
2440
Scribble2440
Example Applications of SutraGUI



examples:000010
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example Applications of SutraGUI
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 This section provides the user the opportunity to begin using SutraGUI quickly for a few applications without reading any other parts of this report.  In-depth details and discussions of the various steps, windows, and dialog boxes encountered below may be found in other parts of this report.  The following step-by-step examples should be followed in sequence.\f0\fs20 
\par }
2450
Scribble2450
Areal Ground-Water Flow Model



examples:000020
Writing



FALSE
46
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\fnil Times New Roman;}{\f4\froman\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal Ground-Water Flow Model
\par \cf0\b0\fs20 
\par \pard\fi720\sb120\f1\fs24 This example shows how to create an areal steady-state ground-water-flow model (ignoring solute transport), run SUTRA, display simulation results, and save the project for use in subsequent step-by-step examples.
\par \pard\fi720 Assume that there are four lakes, one at each corner of a closed alluvial valley.  The lakes control the hydraulic head at each corner, and no flow crosses the bedrock sides of the valley.  A hydraulic head value will be specified where each lake exists.  Assume that three of the lakes are at the same elevation, which is somewhat higher than the fourth lake.\f2 
\par \pard 
\par \pard\sb240\sa60\cf2\f3 Entry of Hydrogeologic Data
\par \pard\cf3\strike\f2 Areal flow model: step 1\cf4\strike0\{linkID=2460\}\cf0 
\par \cf3\strike Areal flow model: step 2\cf4\strike0\{linkID=2470\}\cf0 
\par \cf3\strike Areal flow model: step 3\cf4\strike0\{linkID=2480\}
\par \cf3\strike Areal flow model: step 4\cf4\strike0\{linkID=2490\}
\par \cf3\strike Areal flow model: step 5\cf4\strike0\{linkID=2500\}
\par \cf3\strike Areal flow model: step 6\cf4\strike0\{linkID=2510\}
\par \cf3\strike Areal flow model: step \f4 7\cf4\strike0\f2\{linkID=2520\}
\par \cf3\strike Areal flow model: step \f4 8\cf4\strike0\f2\{linkID=2530\}
\par \cf3\strike Areal flow model: step 9\cf4\strike0\{linkID=2540\}
\par \cf3\strike Areal flow model: step 6\cf4\strike0\{linkID=2510\}
\par \cf0 Mesh Generation\cf4 
\par \cf3\strike Areal flow model: step 10\cf4\strike0\{linkID=2550\}
\par \cf3\strike Areal flow model: step 11\cf4\strike0\{linkID=2560\}
\par \cf3\strike Areal flow model: step 12\cf4\strike0\{linkID=2570\}
\par \cf3\strike Areal flow model: step 13\cf4\strike0\{linkID=2580\}
\par \cf3\strike Areal flow model: step 14\cf4\strike0\{linkID=2590\}
\par \cf3\strike Areal flow model: step 15\cf4\strike0\{linkID=2600\}
\par 
\par \cf0 Running SUTRA\cf4 
\par \cf3\strike Areal flow model: step 16\cf4\strike0\{linkID=2610\}
\par \cf3\strike Areal flow model: step 17\cf4\strike0\{linkID=2620\}
\par \cf3\strike Areal flow model: step 18\cf4\strike0\{linkID=2630\}
\par \cf3\strike Areal flow model: step 19\cf4\strike0\{linkID=2640\}
\par \cf3\strike Areal flow model: step 20\cf4\strike0\{linkID=2650\}
\par 
\par \cf0 Visualizing \f4 R\f2 esults\cf4 
\par \cf3\strike Areal flow model: step 21\cf4\strike0\{linkID=2660\}
\par \cf3\strike Areal flow model: step 2\f4 2\cf4\strike0\f2\{linkID=2670\}
\par \cf3\strike Areal flow model: step 23\cf4\strike0\{linkID=2680\}
\par \cf3\strike Areal flow model: step 24\cf4\strike0\{linkID=2690\}
\par \cf3\strike Areal flow model: step 25\cf4\strike0\{linkID=2700\}
\par \cf3\strike Areal flow model: step 26\cf4\strike0\{linkID=2710\}
\par \cf3\strike Areal flow model: step 2\f4 7\cf4\strike0\f2\{linkID=2720\}
\par 
\par \cf0 
\par 
\par \cf3\strike\f0\fs20 
\par }
2460
Scribble2460
Areal flow model: step 1



examples:000030
Writing



FALSE
6
{\rtf1\ansi\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 1
\par \cf0\b0\fs20 
\par \cf2\f1\fs24 Double-click on the Argus ONE icon. \cf3\{bmc ArgusIcon.BMP\}\cf2  This opens Argus ONE. \cf0\f0\fs20 
\par }
2470
Scribble2470
Areal flow model: step 2



examples:000040
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 2
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 From the \b PIEs \b0 menu found along the top of the window, select \b New SUTRA Project...\b0   This brings up the \cf2\b\strike Model Configuration\cf3\strike0\{linkID=160\}\cf0\b0  pane of the \cf2\b\strike SUTRA Project Information\cf3\strike0\{linkID=140\}\cf0\b0  dialog box.
\par \pard\f0\fs20 
\par }
2480
Scribble2480
Areal flow model: step 3



examples:000050
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 3
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb60\f2 The \cf2\b\strike Model Configuration\cf3\b0\strike0\{linkID=160\}\cf0  pane is where the type of problem to be simulated is chosen.  To select the default type of \b AREAL\b0 , click on \b OK\b0 .  This sets up a problem of areal flow with constant-density solute transport using an irregular finite-element mesh.
\par \pard\fi720\sb120 The other panes allow the user to specify values for the SUTRA simulation that are not spatially variable; that is, those that may have only a single value, such as "time step."  These may be inspected on the various panes by clicking on the list of panes on the left.  Rather than making changes here now, accept the default values by clicking \b OK\b0 .  This brings up a new Argus ONE window, called "untitled1."
\par Default values are given in \cf2\strike Table \lang1024 3\lang1033  and Table \lang1024 4\cf3\strike0\{linkID=140\}\cf0\lang1033 .  The default values set up simulation of steady-state ground-water flow (and solute transport of a non-reactive solute) in a sandy-type aquifer.\f3 
\par \pard\fi700\f0\fs20 
\par }
2490
Scribble2490
Areal flow model: step 4



examples:000060
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 4
\par 
\par \pard\fi720\sb60\cf0\b0\f1\fs24 The Argus ONE window is where the model will be designed, run, and evaluated.  It contains many layers in a stack; each layer will hold either model or mesh information.  Additionally, another window, the Layers' Floater can be shown by clicking on the Layers button \cf2\{bmc LayersButton.bmp\}\cf0 .  It allows users to see which layers are available.  This window may be resized to display the full layer names.
\par The Layers' Floater shows which layers are available for the particular problem type (AREAL) chosen in step 3.  It allows the user to control which of the layers will be visible (those with the open eye \cf2\{bmc EyeOpen.bmp\}\cf0 ) and which layer is active and thus available for input from the screen.  Clicking on an "eye" toggles the layer visibility.  (The icon changes to a closed eye \cf2\{bmc EyeClosed.bmp\}\cf0 .)  Clicking to the left of an "eye" makes the layer active and puts a check mark next to it.
\par \pard\cf1\b\f2 
\par \cf0\b0 
\par \f0\fs20 
\par }
2500
Scribble2500
Areal flow model: step 5



examples:000070
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 5
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 One way to begin a modeling project is to enter hydrogeologic information for the area into the appropriate geospatial Information layers provided in \b SutraGUI\b0 .  The layers listed in the Layers' Floater (for example, \cf2\b\strike Porosity\cf3\strike0\{linkID=2210\}\cf0\b0 , and \cf2\b\strike Hydraulic Conductivity\cf3\strike0\{linkID=2220\}\cf0\b0 ) have already been assigned default values by the interface (these values are shown in \cf2\strike Table \lang1024 7\cf3\strike0\{linkID=1040\}\cf0\lang1033 .)  Rather than modify any of these values, in this step-by-step example, the defaults will be accepted.  A situation will be considered in which only boundary conditions need be assigned to make a model.\f1 
\par }
2510
Scribble2510
Areal flow model: step 6



examples:000080
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 6\cf0\b0\f1\fs24 
\par \pard\fi720 
\par To enter the lakes into the model, activate the \i Specified Hydraulic Head \i0 layer by clicking to the left of its "eye" in the \i Layers' Floater \i0 window.  A check mark should appear where the dialog box was clicked indicating that the layer is now the active layer.
\par }
2520
Scribble2520
Areal flow model: step 7



examples:000090
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 7
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb60\f2 Draw a lake by first activating the contour-drawing tool \cf2\{bmc ContourToolButton.bmp\}\cf0 .  Then move the cursor into the white workspace and click at three locations, creating the first vertices of a closed contour.  Try to create a lake similar to one of the four shown in figure 20.  Then, double-click on the location desired for the last vertex.  The \i Contour Information \i0 dialog box appears.
\par \cf2\f1\{bmc fig1.bmp\}\cf0\f2 
\par \b\f3 Figure \lang1024 20\lang1033 .  Lakes in Areal Ground-Water-Flow Step-by-Step Example.\b0\f2 
\par \f3 
\par \pard\f1 
\par }
2530
Scribble2530
Areal flow model: step 8



examples:000100
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 8
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The specified head value and concentration of water potentially entering the aquifer from the lake must be specified in the dialog box.  This is done by clicking next to \b specified_hydraulic_head\b0  (below \i Value\i0 ) and entering the head, then clicking next to concentration and entering a concentration, and finally clicking \i OK\i0 .  For the first lake, specify 10.0 for the head, and enter 0.0 for the concentration.  For this step-by-step example, all the lakes contain no solute.  The other parameters in the \i Contour Information \i0 dialog box can be ignored for the time being.\f2 
\par }
2540
Scribble2540
Areal flow model: step 9



examples:000110
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 9
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 Draw the other three lakes by clicking to create small closed regions similar to the ones shown in figure 20.  For each lake, double-click on the last vertex to close the shoreline.  This brings up the \i Contour Information \i0 dialog box for each lake.  For two of the remaining lakes, enter 10.0 for the head, and for the last lake, enter 0.0 for the head.  For all lakes, enter 0.0 for the concentration.
\par \pard\fi720 This completes entry of hydrogeologic data for simulating ground-water flow in this system.\f2 
\par }
2550
Scribble2550
Areal flow model: step 10



examples:000120
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 10
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Now draw the model boundary.  Make the \b Domain Outline \b0 layer active by clicking to the left of its "eye" in the \i Layers' Floater\i0 .  This makes the \b Domain Outline \b0 layer active, although the \b Specified Hydraulic Head \b0 layer remains visible.  The purpose of the \b Domain Outline \b0 layer is to contain model boundary locations.  The model boundary will follow the valley walls and the corners will be placed at the center of the lakes.\f2 
\par }
2560
Scribble2560
Areal flow model: step 11



examples:000130
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 11
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Draw a model boundary by first activating the \b Domain-Outline-drawing tool\b0  \cf2\{bmc DomainButton.bmp\}\cf0 .  Then move the cursor into the white workspace and click in the center of one of the lakes.  Proceeding around the workspace, click at the center of each lake.  Try to create a domain outline that looks like the one shown in figure 21.  Then, double-click at the center of the last lake to close the model domain contour.\f2 
\par \pard 
\par \cf2\f3\{bmc fig2.bmp\}
\par \pard\fi720\sb120\sa120\cf0\b\f1 Figure \lang1024 21\lang1033 .  Model boundary in areal ground-water-flow step-by-step example.
\par \pard\b0\f3 
\par }
2570
Scribble2570
Areal flow model: step 12



examples:000140
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 12
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The \i Contour Information \i0 dialog box appears.  In it, specify the desired typical size of finite elements to be created by the mesh generator is specified.  Type 0.5 in the space below the label, \i Value\i0 .  This sets the desired width of an element to 0.5 in the units shown in the rulers around the periphery of the workspace.  The result should look similar to the model boundary shown in \cf2\strike figure 21\cf3\strike0\{linkID=2560\}\cf2\strike Areal flow model: step 11\cf3\strike0\{linkID=2560\}\cf0 .  Click \i OK \i0 to exit the dialog box.\f2 
\par }
2580
Scribble2580
Areal flow model: step 13



examples:000150
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 13
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Next, the finite-element mesh will be created.  Activate the \b SUTRA Mesh \b0 layer by clicking to the left of its "eye" in the \i Layers' Floater\i0 .\f2 
\par }
2590
Scribble2590
Areal flow model: step 14



examples:000160
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 14
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Click on the 'magic wand' \cf2\{bmc MagicWand.bmp\}\cf0  and then click the magic-wand cursor inside the model boundary just drawn.  An irregular finite-element mesh containing elements with a size of about 0.5 is generated and displayed.  Figure 22 shows the type of mesh that may be expected.
\par 
\par \cf2\f2\{bmc fig3.bmp\}\cf0\f1 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 22\lang1033 .  SUTRA mesh in areal ground-water-flow step-by-step example.
\par \pard\fi720\b0\f2 
\par }
2600
Scribble2600
Areal flow model: step 15



examples:000170
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 15
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb60\f2 The bandwidth of a newly generated irregular mesh always needs to be reduced.  Select the \i Special|Renumber...  \i0 This brings up the \i Renumber \i0 dialog box.  Click on \i Optimize Bandwidth \i0 and then \i OK\i0 .  The mesh numbering is then optimized for the matrix solver currently used by SUTRA.
\par \pard\fi720 The entry of data and preparation of the mesh for simulating ground-water flow in this system is now completed.\f1 
\par }
2610
Scribble2610
Areal flow model: step 16



examples:000180
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 16
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Save the project so far by selecting \i File|Save As...  \i0 menu item.  Select the desired directory and type in the desired name (for example, "Areal-F" for areal flow model) and then click on \i Save\i0 .  A project file called Areal-F.mmb is created in the directory chosen by the user, and the window name becomes the same, as shown in \cf2\strike figure 22\cf3\strike0\{linkID=2590\}\cf0 .\f2 
\par }
2620
Scribble2620
Areal flow model: step 17



examples:000190
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 17
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 The model information now needs to be exported from Argus ONE creating input files that SUTRA requires, and the simulation can then be run.  (Note: the \b SUTRA Mesh \b0 layer must be active to export.)  Select \b PIEs|Run SUTRA.  \b0 The \b Run SUTRA \b0 dialog box appears.\f2 
\par }
2630
Scribble2630
Areal flow model: step 18



examples:000200
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 18
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 This dialog box allows the user to choose only creation of SUTRA input files, or creation of files and running of SUTRA (the default).  Click \b OK \b0 to proceed.  An \b Enter export file name \b0 dialog box appears.\f2 
\par }
2640
Scribble2640
Areal flow model: step 19



examples:000210
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 19
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 Select the directory into which the SUTRA input files will be placed by Argus ONE.  Then select the name of the files by typing in the space next to File Name (for example, "Areal-F.inp").  The files created will all begin with the name entered here and the suffixes will be appended (for example, Areal-F.inp, Areal-F.ics).  
\par \pard\li720\i Note: the \b Save as type \b0 box can be ignored.
\par }
2650
Scribble2650
Areal flow model: step 20



examples:000220
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 20
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Click on the \b Save \b0 button and the export takes place while the barber pole is visible, and then the SUTRA simulation is run while the DOS window is visible.  If requested, hit any key to exit the DOS window.  Now, the completed SUTRA simulation has created (at least four) output files (Areal-F.lst, Areal-F.rst, Areal-F.nod, and Areal-F.ele) in the directory that was selected.\f2 
\par }
2660
Scribble2660
Areal flow model: step 21



examples:000230
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 21
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 To display the results, select \b PIEs|SUTRA 2D Post Proc...  \b0 An Open File dialog box appears in which the user can select the "nod" or "ele" files produced by the model.\f2 
\par }
2670
Scribble2670
Areal flow model: step 22



examples:000240
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 22
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Find the directory selected above for the SUTRA files and double-click the appropriate nod or ele file (Areal-F.nod or Areal-F.ele).  This brings up the \b Select SUTRA results to display \b0 dialog box.\f2 
\par }
2680
Scribble2680
Areal flow model: step 23



examples:000250
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 23
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 This dialog box contains a list of all results available from the SUTRA simulation for visualization.  Because the simulation was for steady-state conditions, only one time step appears.  Click on the \b no \b0 below Pressure to change it to \b YES \b0 (this selects a contour map of head).  Also, select a velocity vector map by changing the no below Velocity to \b YES\b0 .  Then click on \b OK \b0 and the plots of velocity vectors and head contours (similar to that in figure 23) are created.
\par \cf2\f2\{bmc fig4.bmp\}\cf0\f3 
\par \pard\fi720\sb120\sa120\b\f1 Figure \lang1024 23\lang1033 .  Head and vector plot in areal ground-water-flow step-by-step example.
\par \pard\b0\f2 
\par }
2690
Scribble2690
Areal flow model: step 24



examples:000260
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 24
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Because the \b SUTRA Mesh \b0 layer was active, the mesh hides the plots.  To make them visible, activate the \b SUTRA Post Processing Charts \b0 layer (click left of the "eye" for that layer in the \i Layers' Floater\i0 ).\f2 
\par }
2700
Scribble2700
Areal flow model: step 25



examples:000270
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 25
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 The plot appears, but the window is too cluttered because the mesh is also visible.  Make the mesh invisible by clicking on the 'eye' next to \b SUTRA Mesh \b0 in the \i Layers' Floater\i0 .\f2 
\par \pard\fi720\f3 
\par }
2710
Scribble2710
Areal flow model: step 26



examples:000280
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 26
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Save the current state of the project by selecting \i File|Save.\i0\f2 
\par }
2720
Scribble2720
Areal flow model: step 27



examples:000290
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal flow model: step 27
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 The Argus ONE application may now be closed by selecting \i File|Quit\i0 .  When the project is reopened, it will be in the same state as when it was closed. 
\par \pard\fi720 Ground water flows into the aquifer from three of the lakes and exits at the fourth lake.  Hydraulic head in the aquifer decreases near the outflow lake.\f2 
\par }
2730
Scribble2730
Areal Solute Transport Model



examples:000300
Writing



FALSE
22
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal Solute Transport Model
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 This step-by-step example continues the basic \cf2\strike areal steady-state ground-water-flow model\cf3\strike0\{linkID=2450\}\cf0  and considers steady-state solute transport that occurs in the steady-state flow field.  Then SUTRA is run, simulation results are displayed, the display is modified, and the project is saved for use in subsequent examples.
\par \pard 
\par \cf2\strike Areal transport model: step 1\cf3\strike0\{linkID=2740\}
\par \cf2\strike Areal transport model: step 2\cf3\strike0\{linkID=2750\}
\par \cf2\strike Areal transport model: step 3\cf3\strike0\{linkID=2760\}
\par \cf2\strike Areal transport model: step 4\cf3\strike0\{linkID=2770\}
\par \cf2\strike Areal transport model: step 5\cf3\strike0\{linkID=2780\}
\par \cf2\strike\f1 Areal transport model: step 6\cf3\strike0\{linkID=2790\}\cf0 
\par \cf2\strike Areal transport model: step 7\cf3\strike0\{linkID=2800\}\cf0 
\par \cf2\strike Areal transport model: step 8\cf3\strike0\{linkID=2810\}
\par \cf2\strike Areal transport model: step 9\cf3\strike0\{linkID=2820\}
\par \cf2\strike Areal transport model: step 10\cf3\strike0\{linkID=2830\}
\par \cf2\strike Areal transport model: step 11\cf3\strike0\{linkID=2840\}
\par \cf2\strike Areal transport model: step 12\cf3\strike0\{linkID=2850\}
\par \cf2\strike Areal transport model: step 14\cf3\strike0\{linkID=2870\}
\par \cf2\strike Areal transport model: step 15\cf3\strike0\{linkID=2880\}\cf0 
\par \cf2\strike Areal transport model: step 16\cf3\strike0\{linkID=2890\}\cf0 
\par }
2740
Scribble2740
Areal transport model: step 1



examples:000310
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 1
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 Double-click on the Argus ONE icon to open Argus ONE.\f2 
\par \pard\f3 
\par 
\par 
\par }
2750
Scribble2750
Areal transport model: step 2



examples:000320
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 2
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb60\f2 Select \i File|Open...\i0 , to bring back the project that was saved in the previous step-by-step example.  In the \i Choose file to open:\i0  dialog box that appears, move to the appropriate directory and double-click on the ".mmb" project file that was saved in the above example (for example, Areal-F.mmb).  This returns the user environment to the same state as when the project was previously saved (\cf2\strike fig. 23\cf3\strike0\{linkID=2680\}\cf0 ).
\par \pard\fi720\sb120 
\par \pard\fi720 Assume that the lake in the corner diagonally opposite the lake with the lowest water level contains a solute with a concentration of 100 units.  The other lakes have no solute, as was previously entered.  This information will be treated as the concentration of fluid that enters the aquifer from the lake, and is associated with the specified head boundary condition at the lake.\f3 
\par \pard\f2 
\par }
2760
Scribble2760
Areal transport model: step 3



examples:000330
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 3
\par \cf0\b0\f1\fs24 
\par \pard\fi720\sb60\f2 To input this information, activate the \b Specified Hydraulic Head \b0 layer.  This brings to the top the layer in which the lakes were entered.
\par \pard 
\par }
2770
Scribble2770
Areal transport model: step 4



examples:000340
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 4
\par \cf0\b0\fs20 
\par \pard\fi720\sb60\f1\fs24 Next, select the lake diagonally across from the low-head lake by double-clicking on it.  This brings up the \i Contour Information\i0  dialog box.  Double-click next to concentration (below \i Value\i0 ) and type in 100 to enter the concentration of fluid from the lake that may flow into the aquifer.  Note that the \b specified_hydraulic_head\b0  is still set to 10.  Click \i OK \i0 to exit the dialog box.  This is the only modification required before exporting the data from Argus ONE and rerunning the simulation.\f2 
\par \pard\f1 
\par }
2780
Scribble2780
Areal transport model: step 5



examples:000350
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 5\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 To export and run, activate the \b SUTRA Mesh \b0 layer again.  Select \b PIEs|Run SUTRA\b0 .\cf2\f1 
\par }
2790
Scribble2790
Areal transport model: step 6



examples:000360
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 6\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Click \b OK \b0 in the \b Run SUTRA \b0 dialog box, select the directory into which the SUTRA input files will be placed, and select the name of the new files that will run a solute transport simulation (for example, "Areal-T").  Ignore the \b Save as type \b0 box.  Click on \b Save \b0 to export and run.\cf2\f1 
\par }
2800
Scribble2800
Areal transport model: step 7



examples:000370
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 7\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 If needed, press any key to exit the DOS window in which the SUTRA code was run.\cf2\f1 
\par }
2810
Scribble2810
Areal transport model: step 8



examples:000380
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 8\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 This time, results for concentration and velocity will be plotted.  First, the old plots of heads and velocities will be removed.  Activate the \b SUTRA 2D Post Processing Charts \b0 layer and select \i Edit|Select All.  \i0 (If \i Select All \i0 is disabled, everything is already selected.)  Then press the delete key to remove both plots. \cf2\f1 
\par }
2820
Scribble2820
Areal transport model: step 9



examples:000390
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 9\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 To display the new results, select \b PIEs|SUTRA 2D Post Proc...  \b0 The \b Open File: \b0 dialog box appears.\cf2\f1 
\par }
2830
Scribble2830
Areal transport model: step 10



examples:000400
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 10\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Find the directory selected above for the SUTRA files and double-click the appropriate "inp" file (for example, Areal-T.inp).  This brings up the \b Select SUTRA results to display \b0 dialog box.\cf2\f1 
\par }
2840
Scribble2840
Areal transport model: step 11



examples:000410
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 11\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Click on the \b no \b0 below \b Concentration \b0 to change it to \b YES \b0 (this selects a contour map of concentration).  Also, select a velocity vector map again by changing the \b no \b0 below \b Velocity \b0 to \b YES\b0 .  Then click on \b OK\b0 .  \b SutraGUI \b0 will prompt the user to either overwrite the previously imported data or create new layers.  Choose to overwrite the existing data.  The user must make that choice for each of the three layers whose data are being overwritten.  Once that is done, the plots are created.\cf2\f1 
\par }
2850
Scribble2850
Areal transport model: step 12



examples:000420
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 12\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 The plot is too cluttered because the mesh is visible.  Make the mesh invisible by clicking on its "eye."  A plot of velocity vectors and concentration contours (similar to that shown in figure 24 but with fewer contours) will be shown.
\par \pard\fi720 The steady-state solute plume from the lake containing solute fills the central portion of the aquifer, but due to dispersion, is somewhat diluted before it discharges to the low-head lake.  The distribution of no-solute waters from the side lakes also is apparent, and these waters increase in solute concentration due to dispersion from the plume before discharging.
\par 
\par \cf3\f1\{bmc Areal_T Results.BMP\}
\par \cf0\b\f2 Figure \lang1024 24\lang1033 .  Concentrations and velocities in areal solute transport step-by-step example.
\par }
2860
Scribble2860
Areal transport model: step 13



examples:000430
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 13\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Each plot may be edited.  For example, the contours may be made denser as follows.  Double-click on the contour plot to bring up the \i Contour Diagram \i0 dialog box.  Note that there are two plots visible and each has separate controls.  The dialog box for the wrong one may appear if the wrong plot on the screen was double-clicked.  The plot frames are visible on the screen and the user should click on a spot bounded by only one frame, the one desired.  This may require some experimentation.  If the wrong dialog box appears (that is, the \i Vector Diagram \i0 dialog box), click on \i Cancel \i0 in the dialog box and try again.  Clicking on the color scale for the concentration diagram will probably select the concentration diagram.\cf2\f1 
\par }
2870
Scribble2870
Areal transport model: step 14



examples:000440
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 14\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 To make contours thicker, select \i 3 Points \i0 near the bottom of the dialog box.  To plot more contours, change the numbers in the box.  For example, set Minimum to 1.0, set Maximum to 100.0, and set Delta to 1.0.  Click on \i OK \i0 and the plot is drawn.  The plume is displayed in nearly solid color.  (The smoothness of the color scale shown depends on the type of graphics available on the computer, and on the number of colors and resolution selected in the operating system.)\cf2\f1 
\par }
2880
Scribble2880
Areal transport model: step 15



examples:000450
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 15\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Save the current state of the project by selecting \i File|Save As... \i0 and choose a new project name (for example, Areal-T.mmb) to distinguish this from the previous model of only ground-water flow.\cf2\f1 
\par }
2890
Scribble2890
Areal transport model: step 16



examples:000460
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal transport model: step 16\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The Argus ONE application may now be closed or continue with \cf3\strike step 2 \cf4\strike0\{linkID=2920\}\cf0 of the following step-by-step example.\cf2\f1 
\par }
2900
Scribble2900
Areal Solute Transport Model with Barrier



examples:000470
Writing



FALSE
21
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal Solute Transport Model with Barrier\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 This step-by-step example continues the areal steady-state transport model and considers the change that occurs in steady-state solute transport observed above if there is a low-conductivity barrier within the aquifer.  The barrier is added, its discretization is evaluated visually, the information is exported, the simulation is run, and the results are displayed.  Finally, the barrier's properties are changed and the simulation is run again.
\par \pard 
\par \cf3\strike Areal solute transport model with barrier: step 1\cf4\strike0\{linkID=2910\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 2\cf4\strike0\{linkID=2920\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 3\cf4\strike0\{linkID=2930\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 4\cf4\strike0\{linkID=2940\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 5\cf4\strike0\{linkID=2950\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 6\cf4\strike0\{linkID=2960\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 7\cf4\strike0\{linkID=2970\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 8\cf4\strike0\{linkID=2980\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 9\cf4\strike0\{linkID=2990\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 10\cf4\strike0\{linkID=3000\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 11\cf4\strike0\{linkID=3010\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 12\cf4\strike0\{linkID=3020\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 13\cf4\strike0\{linkID=3030\}\cf0 
\par \cf3\strike Areal solute transport model with barrier: step 14\cf4\strike0\{linkID=3040\}\cf2\f1 
\par }
2910
Scribble2910
Areal solute transport model with barrier: step 1



examples:000480
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 1\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Start Argus ONE, and open the ".mmb" project file that was saved in the above example (for example, Areal-T.mmb).  Note that this may also be done by double-clicking the ".mmb" project file name in any 'file manager' window.\cf2\f1 
\par }
2920
Scribble2920
Areal solute transport model with barrier: step 2



examples:000490
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 2\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Activate the \b Hydraulic Conductivity \b0 layer.  A low-conductivity region will be created that extends partway across the aquifer.\cf2\f1 
\par }
2930
Scribble2930
Areal solute transport model with barrier: step 3



examples:000500
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 3\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Hide the \b SUTRA Post Processing Charts \b0 layer to simplify the workspace.\cf2\f1 
\par }
2940
Scribble2940
Areal solute transport model with barrier: step 4



examples:000510
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 4\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 With the closed-contour drawing tool, create a closed contour that extends across one side and partway across the model domain (fig. 25), partly blocking the outflow lake.  After closing the contour, enter the value 0.0001 for the \b maximum \b0 and \b minimum \b0 values of hydraulic conductivity, and click \i OK \i0 in the \i Contour Information\i0  dialog box.  (Any contour object or region in the \b Hydraulic Conductivity \b0 layer has three parameters that contain the spatial distributions of maximum and minimum conductivity components and the angle of the maximum direction to the X-direction in the workspace.  Thus, conductivity may be set to be anisotropic.)  This decreases the conductivity of the region by ten times relative to the background value (0.001) used for conductivity.
\par 
\par \cf3\f1\{bmc Areal_B Barrier.BMP\}\cf0\f2 
\par \b Figure \lang1024 25\lang1033 .  Low-conductivity barrier in areal solute transport step-by-step example.\cf2\f1 
\par }
2950
Scribble2950
Areal solute transport model with barrier: step 5



examples:000520
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 5
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Because the conductivity distribution includes a specific 'object' of low value, the interpretation method that Argus ONE uses by default for assigning values throughout the workspace must be changed.  (The default method is intended for interpreting contour maps of conductivity.)  To change the method, click on the Layers button in the \i Layers' Floater\i0 .  This brings up the \i Layers \i0 dialog box.\f2 
\par }
2960
Scribble2960
Areal solute transport model with barrier: step 6



examples:000530
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 6
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 In the \i Layers \i0 dialog box, many attributes of available layers may be changed and new layers may be added or existing ones deleted.  Select the \b Hydraulic Conductivity \b0 layer in the top half of the dialog box by clicking on the line in which it is found.  If it is already highlighted then it is not necessary to click on it.  (Note that the default values of the layer's parameters are shown in the bottom half of the dialog box.)\f2 
\par }
2970
Scribble2970
Areal solute transport model with barrier: step 7



examples:000540
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 7
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 At the bottom of the dialog box, \i Nearest Contour \i0 method appears as the interpretation method for this layer.  Hold the mouse button down over this box and select \i Exact Contour \i0 method instead.  Then click \i Done\i0 .\f2 
\par }
2980
Scribble2980
Areal solute transport model with barrier: step 8



examples:000550
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 8
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 To visually determine whether the barrier shape is discretized sufficiently by the current mesh, make the \b SUTRA Mesh \b0 layer active.\f1 
\par }
2990
Scribble2990
Areal solute transport model with barrier: step 9



examples:000560
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 9
\par \cf0\b0\fs20 
\par \pard\fi720\f1\fs24 Hold down the mouse button over the triangle next to the word Color along the tool palette on the left edge of the window.  A list of parameters of the \b SUTRA Mesh\b0  layer appears that vary by element (rather than by node).  Select \b PMAX \b0 (the maximum component of hydraulic conductivity.  The reader is referred to \cf2\strike Table \lang1024 8\cf3\strike0\{linkID=1060\}\cf0\lang1033 , "SUTRA mesh parameters used in two-dimensional (2D) simulations" and section 7.1 of the SUTRA documentation (Voss and Provost, 2002) for more information about PMAX.\f2 
\par }
3000
Scribble3000
Areal solute transport model with barrier: step 10



examples:000570
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 10
\par \cf0\b0\f1\fs24 
\par \pard\fi720\f2 The elements are colored according to maximum conductivity value (The reader is referred to figure 26 for an example).  The barrier may now be examined to determine whether it was sufficiently discretized.  For example, the user may wish to avoid having high-conductivity 'holes' through the barrier because elements are too large.  If adjustments are needed, it is suggested that, for simplicity, the barrier be widened rather than refining the mesh at this point.  Try adjusting the shape of the barrier by activating the \b Hydraulic Conductivity \b0 layer, clicking on one of its vertices, and dragging it to a new position.  Note that the zonation shown in the mesh layer adjusts automatically to the new barrier shape.
\par 
\par \cf2\f3\{bmc Areal_B Elements.BMP\}\cf0\f2 
\par \b Figure \lang1024 26\lang1033 .  Mesh representation of low-conductivity barrier, areal solute transport step-by-step example.\b0\f1 
\par }
3010
Scribble3010
Areal solute transport model with barrier: step 11



examples:000580
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 11\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 When the barrier is satisfactory, the project may be exported (use a new name for SUTRA files, for example, Areal-B) and run.  Activate the \b SUTRA Mesh \b0 layer, export, and run as before.\cf2\f1 
\par }
3020
Scribble3020
Areal solute transport model with barrier: step 12



examples:000590
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 12\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Display the new steady-state concentration contours and velocity field to evaluate the effect of the barrier.\cf2\f1 
\par }
3030
Scribble3030
Areal solute transport model with barrier: step 13



examples:000600
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 13\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Evaluate the effect of further reducing the conductivity of the barrier by ten times by activating the \b Hydraulic Conductivity \b0 layer, double-clicking on the contour, and adjusting the \b maximum \b0 and \b minimum \b0 values in the Contour Information dialog box.  Then re-export, re-run and display the results.\cf2\f1 
\par }
3040
Scribble3040
Areal solute transport model with barrier: step 14



examples:000610
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal solute transport model with barrier: step 14\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Save the revised project as a new project file (for example, Areal-B.mmb).
\par \pard\cf2\f1 
\par }
3050
Scribble3050
Areal Model with Transient Solute Transport



examples:000620
Writing



FALSE
29
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal Model with Transient Solute Transport\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Rather than evaluating only the steady state of the solute plume, as in the previous step-by-step examples, its evolution over time is simulated and displayed in two ways in the following example.\f3 
\par \pard\cf2\f1 
\par \cf3\strike Areal model with transient solute transport: step 1\cf4\strike0\{linkID=3060\}\cf2 
\par \cf3\strike Areal model with transient solute transport: step 2\cf4\strike0\{linkID=3070\}\cf2 
\par \cf3\strike Areal model with transient solute transport: step 3\cf4\strike0\{linkID=3080\}
\par \cf3\strike Areal model with transient solute transport: step 4\cf4\strike0\{linkID=3090\}
\par \cf3\strike Areal model with transient solute transport: step 5\cf4\strike0\{linkID=3100\}
\par \cf3\strike Areal model with transient solute transport: step 6\cf4\strike0\{linkID=3110\}
\par \cf3\strike Areal model with transient solute transport: step 7\cf4\strike0\{linkID=3120\}
\par \cf3\strike Areal model with transient solute transport: step 8\cf4\strike0\{linkID=3130\}
\par \cf3\strike Areal model with transient solute transport: step 9\cf4\strike0\{linkID=3140\}
\par \cf3\strike Areal model with transient solute transport: step 10\cf4\strike0\{linkID=3150\}
\par \cf3\strike Areal model with transient solute transport: step 11\cf4\strike0\{linkID=3160\}
\par \cf3\strike Areal model with transient solute transport: step 12\cf4\strike0\{linkID=3170\}
\par \cf3\strike Areal model with transient solute transport: step 13\cf4\strike0\{linkID=3180\}
\par \cf3\strike Areal model with transient solute transport: step 14\cf4\strike0\{linkID=3190\}
\par \cf3\strike Areal model with transient solute transport: step 15\cf4\strike0\{linkID=3200\}
\par \cf3\strike Areal model with transient solute transport: step 16\cf4\strike0\{linkID=3210\}
\par \cf3\strike Areal model with transient solute transport: step 17\cf4\strike0\{linkID=3220\}
\par \cf3\strike Areal model with transient solute transport: step 18\cf4\strike0\{linkID=3230\}
\par \cf3\strike Areal model with transient solute transport: step 19\cf4\strike0\{linkID=3240\}
\par \cf3\strike Areal model with transient solute transport: step 20\cf4\strike0\{linkID=3250\}
\par \cf3\strike Areal model with transient solute transport: step 21\cf4\strike0\{linkID=3260\}
\par \cf3\strike Areal model with transient solute transport: step 22\cf4\strike0\{linkID=3270\}\cf2 
\par }
3060
Scribble3060
Areal model with transient solute transport: step 1



examples:000630
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 1\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Select \i File|Open... \i0 to restore one of the projects modeling transport or if Argus ONE was not closed after the last example, continue to the next step.\cf2\f1 
\par }
3070
Scribble3070
Areal model with transient solute transport: step 2



examples:000640
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 2\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 To make the most recent steady-state transport simulation into a transient simulation, the \b SUTRA Project Information \b0 must be modified.  Bring up this dialog box by using \b PIEs|Edit Project Info...\cf2\f1 
\par }
3080
Scribble3080
Areal model with transient solute transport: step 3



examples:000650
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 3\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 In the \b SUTRA Project Information \b0 dialog box, parameters that are not spatially dependent in the SUTRA code may be modified.  They are all assigned default values initially.  Select the pane named \b Modes, Numerical Controls.\cf2\b0\f1 
\par }
3090
Scribble3090
Areal model with transient solute transport: step 4



examples:000660
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 4\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Hold the mouse button down over the entry that says \b Steady-state ground-water flow: Steady-state solute transport\b0 , and select \b Steady-state ground-water flow: Transient solute transport \b0 instead.  Also, set the \b Hydraulic Head Boundary Condition factor\b0 , \b GNUP \b0 to 1.0E-3 to provide a good match of specified and calculated heads.\cf2\f1 
\par }
3100
Scribble3100
Areal model with transient solute transport: step 5



examples:000670
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 5\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select the \b Temporal Controls \b0 pane to adjust the time steps for the simulation.  Set the number of time steps to run to 50 (\b ITMAX \b0 = 50) and the time-step size in seconds to 100 (\b DELT \b0 = 100).  In order that the simulation not stop because of the maximum allowed simulation time, set \b TMAX \b0 = 1.E99.
\par \pard 
\par }
3110
Scribble3110
Areal model with transient solute transport: step 6



examples:000680
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 6\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Select the \b Output Controls \b0 pane to adjust the frequency of output to every 5 time steps by setting \b NCOLPR\b0 =5.\cf2\f1 
\par }
3120
Scribble3120
Areal model with transient solute transport: step 7



examples:000690
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 7\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Click \b OK \b0 to exit the dialog box.  Save the project (for example, to Areal-tr.mmb).\cf2\f1 
\par }
3130
Scribble3130
Areal model with transient solute transport: step 8



examples:000700
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 8\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Set the active layer to \b SUTRA Mesh\b0 , export the project (for example, to filename prefix Areal-tr), and run the simulation.\cf2\f1 
\par }
3140
Scribble3140
Areal model with transient solute transport: step 9



examples:000710
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 9\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Inspect transient transport results by using \b PIEs|SUTRA 2D Post Proc... \b0 and select the nod file (for example, Areal-tr. nod) just created.  Results for time-steps 5,10, 20 and 40 will be viewed.\cf2\f1 
\par }
3150
Scribble3150
Areal model with transient solute transport: step 10



examples:000720
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 10\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 The \b Select SUTRA results to display \b0 dialog box appears.
\par \pard\fi720\sb120 Because the simulation used steady-state flow, velocity may only be plotted for the first time step (a no is available to toggle to \b YES \b0 only for \b Time Step \b0 1 under \b Velocity\b0 ).  Although it appears that \b Pressure \b0 is also available to plot for all time steps, the pressures are all the same because the flow is at steady state.  \b Concentration \b0 for any time step may be viewed.
\par \pard\fi720 To view results for \b Time Step \b0 5, toggle the \b no \b0 to \b YES \b0 for \b Velocity \b0 and \b Concentration \b0 in the appropriate line of the dialog box, and click on \b OK\b0 .\cf2\f1 
\par }
3160
Scribble3160
Areal model with transient solute transport: step 11



examples:000730
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 11\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 When prompted, choose to overwrite the old plot and data.  Then activate the \b SUTRA Post Processing Charts \b0 layer, and make the \b SUTRA Mesh \b0 layer invisible.  This produces a viewable plot of concentrations after time step 5, and steady-state velocities.
\par \pard\cf2\f1 
\par }
3170
Scribble3170
Areal model with transient solute transport: step 12



examples:000740
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 12\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Because the velocities and concentrations come from different time steps, they are not automatically overlain.  To change this, first move one of the charts to the edge of the visible area by clicking on it and dragging it to the desired position.  Then double-click on the other chart and go to the \i Position \i0 tab.  On it, make sure that the \i Overlay Source Data \i0 button is checked.  Then go to the other chart and do the same to it.\cf2\f1 
\par }
3180
Scribble3180
Areal model with transient solute transport: step 13



examples:000750
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 13\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Because results for a few time steps will be viewed sequentially, it is advisable to use the same concentration contour levels each time.  To pick these levels and adjust the contour plot, double-click on the chart to bring up the \i Contour Diagram \i0 dialog box.\cf2\f1 
\par }
3190
Scribble3190
Areal model with transient solute transport: step 14



examples:000760
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 14\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Set the \i Minimum \i0 value to 1.0, the \i Maximum \i0 to 100.0, and the \i Delta \i0 to 1.0.  When the user clicks \i OK\i0 , the plot is redrawn.  Note the position of the leading edge and bulk of the plume for comparison with a later simulation time.
\par \pard\cf2\f1 
\par }
3200
Scribble3200
Areal model with transient solute transport: step 15



examples:000770
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 15\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Now view results for \b Time Step 10\b0 , by again by selecting \b PIEs|SUTRA 2D Post Proc...  \b0 Re-select the nod file created for this simulation.  In the \b Select SUTRA results to display \b0 dialog box, toggle the \b no \b0 to \b YES \b0 for \b Concentration \b0 in the line for \b Time Step 10\b0 , and click on \b OK\b0 .  Choose to overwrite the data in the layers for the data and plots.
\par \pard\cf2\f1 
\par }
3210
Scribble3210
Areal model with transient solute transport: step 16



examples:000780
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 16\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 The new plot appears.  Reset the contour levels, as was done for time step 5, and note that the leading edge and bulk of the plume have progressed downstream.
\par \pard\cf2\f1 
\par }
3220
Scribble3220
Areal model with transient solute transport: step 17



examples:000790
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 17\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 The plot may be printed to a printer or file at this point, by selecting \b File|Print...\b0 , and modifying the \b Print \b0 dialog box that appears.
\par \pard\cf2\f1 
\par }
3230
Scribble3230
Areal model with transient solute transport: step 18



examples:000800
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 18\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Repeat steps \cf3\strike 15 \cf4\strike0\{linkID=3200\}\cf0 through \cf3\strike 17 \cf4\strike0\{linkID=3220\}\cf0 to view results for time step 20, and then once again for time step 40.  Save the project.
\par \pard\cf2\f1 
\par }
3240
Scribble3240
Areal model with transient solute transport: step 19



examples:000810
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 19\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Finally, the progression of the plume may instead be viewed for all time steps at once.  First, make all layers invisible except the \b SUTRA Post Processing Charts \b0 layer, by clicking on the \i Show: None \i0 button at the top of the \i Layers' Floater\i0 .
\par \pard\cf2\f1 
\par }
3250
Scribble3250
Areal model with transient solute transport: step 20



examples:000820
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 20\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select \b PIEs|SUTRA 2D Post Proc... \b0 and then reselect the nod file (for example, Areal-tr.nod).  
\par \pard\cf2\f1 
\par }
3260
Scribble3260
Areal model with transient solute transport: step 21



examples:000830
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 21\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the \b Select SUTRA results to display \b0 dialog box, click on the word \b Concentration \b0 along the top of the window; this makes each \b no \b0 in the column into a \b YES \b0 and selects plots of all the available concentration results.  Then click \b OK\b0 .
\par \pard\cf2\f1 
\par }
3270
Scribble3270
Areal model with transient solute transport: step 22



examples:000840
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport: step 22\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Click \b OK \b0 again to allow the layer to be cleared when so prompted, and the new plots appear.  If these appear small, then they may be zoomed into view by clicking on the zoom tool at the lower left corner of the window \cf3\{bmc ArgusZoomButton.bmp\}\cf0 .  Then click and drag a box around the group of small plots to increase their size.  This type of plot can provide a good preview of the concentration results for all of the time steps selected for output in the SUTRA simulation.  Save the project.
\par \pard\cf2\f1 
\par }
3280
Scribble3280
Areal Model with Transient Solute Transport and Observations



examples:000850
Writing



FALSE
23
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal Model with Transient Solute Transport and Observations\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 In some cases, a graph of head or concentration plotted against time at some particular location is required.  This example shows how to create such a plot using \b GW_Chart \b0 (\cf3\strike Winston, 2000\cf4\strike0\{linkTarget=Winston00\}\cf0 ).
\par \pard\cf2\f1 
\par \cf3\strike Areal model with transient solute transport and observations: step 1\cf4\strike0\{linkID=3290\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 2\cf4\strike0\{linkID=3300\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 3\cf4\strike0\{linkID=3310\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 4\cf4\strike0\{linkID=3320\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 5\cf4\strike0\{linkID=3330\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 6\cf4\strike0\{linkID=3340\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 7\cf4\strike0\{linkID=3350\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 8\cf4\strike0\{linkID=3360\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 9\cf4\strike0\{linkID=3370\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 10\cf4\strike0\{linkID=3380\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 11\cf4\strike0\{linkID=3390\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 12\cf4\strike0\{linkID=3400\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 13\cf4\strike0\{linkID=3410\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 14\cf4\strike0\{linkID=3420\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 15\cf4\strike0\{linkID=3430\}\cf2 
\par \cf3\strike Areal model with transient solute transport and observations: step 16\cf4\strike0\{linkID=3440\}\cf2 
\par }
3290
Scribble3290
Areal model with transient solute transport and observations: step 1



examples:000860
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 1\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Using \b File|Open...\b0 , restore the projects modeling transient solute transport.  Alternatively, if Argus ONE was not closed after the last example, continue to the next step.
\par \pard\cf2\f1 
\par }
3300
Scribble3300
Areal model with transient solute transport and observations: step 2



examples:000870
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 2\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Make the \b Observation \b0 layer the active layer.
\par \pard\cf2\f1 
\par }
3310
Scribble3310
Areal model with transient solute transport and observations: step 3



examples:000880
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 3\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Create a point contour somewhere in the middle of the solute plume and assign the \b is_observed \b0 parameter a value of 1 or True.
\par \pard\cf2\f1 
\par }
3320
Scribble3320
Areal model with transient solute transport and observations: step 4



examples:000890
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 4\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Copy the contour to the clipboard and paste it on the \b Domain Outline \b0 layer.
\par \pard\cf2\f1 
\par }
3330
Scribble3330
Areal model with transient solute transport and observations: step 5



examples:000900
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 5\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Double-click on the contour pasted on the \b Domain Outline \b0 layer and assign it a value of 0.
\par \pard\cf2\f1 
\par }
3340
Scribble3340
Areal model with transient solute transport and observations: step 6



examples:000910
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 6\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Make the \b SUTRA Mesh \b0 layer the active layer, click on the \i Magic Wand \i0 tool, and then click inside the domain outline.
\par \pard\cf2\f1 
\par }
3350
Scribble3350
Areal model with transient solute transport and observations: step 7



examples:000920
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 7\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the dialog box, choose \i Delete All\i0 .  A new mesh will be created including a node exactly at the position of the contour pasted into the \b Domain Outline \b0 layer.
\par \pard\cf2\f1 
\par }
3360
Scribble3360
Areal model with transient solute transport and observations: step 8



examples:000930
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 8\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select \b PIEs|Edit Project Info\'85 \b0 and go to the \b Output Controls \b0 pane.  Change \b NOBCYC \b0 to 1 and click the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
3370
Scribble3370
Areal model with transient solute transport and observations: step 9



examples:000940
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 9\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select \i Special|Renumber \i0 and choose to optimize the bandwidth.
\par \pard\cf2\f1 
\par }
3380
Scribble3380
Areal model with transient solute transport and observations: step 10



examples:000950
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 10\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Run SUTRA and save the project.
\par \pard\cf2\f1 
\par }
3390
Scribble3390
Areal model with transient solute transport and observations: step 11



examples:000960
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 11\cf2\b0\f1\fs24 
\par 
\par \pard\sb60\cf0\f2 Start \b GW_Chart \cf3\{bmc GW_ChartIcon.BMP\}\cf0\b0  (\cf4\strike Winston, 2000\cf3\strike0\{linkTarget=Winston00\}\cf0 ).\f3 
\par \pard\cf2\f1 
\par }
3400
Scribble3400
Areal model with transient solute transport and observations: step 12



examples:000970
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 12\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select \b Chart Type|Hydrographs\b0 .
\par \pard\cf2\f1 
\par }
3410
Scribble3410
Areal model with transient solute transport and observations: step 13



examples:000980
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 13\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the group of radio buttons labeled \b Data\b0 , choose \b SUTRA\b0 .\f3 
\par \pard\sb60\f2 
\par \pard\cf2\f1 
\par }
3420
Scribble3420
Areal model with transient solute transport and observations: step 14



examples:000990
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 14\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Click on the \b Read \b0 button and select the observation file (with the extension .obs) for the model.
\par \pard\cf2\f1 
\par }
3430
Scribble3430
Areal model with transient solute transport and observations: step 15



examples:001000
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 15\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the group of radio buttons labeled \b SUTRA Data\b0 , choose the one labeled \b Concentration\b0 .
\par \pard\cf2\f1 
\par }
3440
Scribble3440
Areal model with transient solute transport and observations: step 16



examples:001010
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Areal model with transient solute transport and observations: step 16\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the upper left is a table with a list of the observation node numbers.  In the column labeled \b Plot\b0 , change the \b No \b0 to \b Yes \b0 and then click somewhere outside the cell.  A plot of concentration vs. time should appear.
\par \pard\cf2\f1 
\par }
3450
Scribble3450
Henry Seawater-Intrusion Problem with Variable-Density Flow



examples:001020
Writing



FALSE
52
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry Seawater-Intrusion Problem with Variable-Density Flow\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 This step-by-step example reproduces a classic simulation example for testing variable-density transport codes that is presented as an example simulation in the SUTRA documentation (\cf3\strike Voss, 1984\cf4\strike0\{linkTarget=Voss84\}\cf0 , section 6.5, page 196).  It involves creating a rectangular cross-sectional model domain containing a FishNet Mesh, and applying boundary conditions exactly along the two vertical edges of the domain.  Along one edge, a total fluid inflow is specified and \b SutraGUI \b0 is allowed to distribute the value of fluid sources along the edge.  Along the other edge, the user creates a specified pressure condition in a single object that linearly increases with depth representing hydrostatic seawater.  The user should read the above-mentioned section of the SUTRA documentation for background on this problem before beginning. 
\par \pard\cf2\f1 
\par \cf3\strike Henry seawater-intrusion problem: step 1\cf4\strike0\{linkID=3460\}\cf2 
\par \cf3\strike Henry seawater-intrusion problem: step 2\cf4\strike0\{linkID=3470\}\cf2 
\par \cf3\strike Henry seawater-intrusion problem: step 3\cf4\strike0\{linkID=3480\}\cf2 
\par \cf3\strike Henry seawater-intrusion problem: step 4\cf4\strike0\{linkID=3490\}
\par \cf3\strike Henry seawater-intrusion problem: step 5\cf4\strike0\{linkID=3500\}
\par \cf3\strike Henry seawater-intrusion problem: step 6\cf4\strike0\{linkID=3510\}
\par \cf3\strike Henry seawater-intrusion problem: step 7\cf4\strike0\{linkID=3520\}
\par \cf3\strike Henry seawater-intrusion problem: step 8\cf4\strike0\{linkID=3530\}
\par \cf3\strike Henry seawater-intrusion problem: step 9\cf4\strike0\{linkID=3540\}
\par \cf3\strike Henry seawater-intrusion problem: step 10\cf4\strike0\{linkID=3550\}
\par \cf3\strike Henry seawater-intrusion problem: step 11\cf4\strike0\{linkID=3560\}
\par \cf3\strike Henry seawater-intrusion problem: step 12\cf4\strike0\{linkID=3570\}
\par \cf3\strike Henry seawater-intrusion problem: step 13\cf4\strike0\{linkID=3580\}
\par \cf3\strike Henry seawater-intrusion problem: step 14\cf4\strike0\{linkID=3590\}
\par \cf3\strike Henry seawater-intrusion problem: step 15\cf4\strike0\{linkID=3600\}
\par \cf3\strike Henry seawater-intrusion problem: step 16\cf4\strike0\{linkID=3610\}
\par \cf3\strike Henry seawater-intrusion problem: step 17\cf4\strike0\{linkID=3620\}
\par \cf3\strike Henry seawater-intrusion problem: step 18\cf4\strike0\{linkID=3630\}
\par \cf3\strike Henry seawater-intrusion problem: step 19\cf4\strike0\{linkID=3640\}
\par \cf3\strike Henry seawater-intrusion problem: step 20\cf4\strike0\{linkID=3650\}
\par \cf3\strike Henry seawater-intrusion problem: step 21\cf4\strike0\{linkID=3660\}
\par \cf3\strike Henry seawater-intrusion problem: step 22\cf4\strike0\{linkID=3670\}
\par \cf3\strike Henry seawater-intrusion problem: step 23\cf4\strike0\{linkID=3680\}
\par \cf3\strike Henry seawater-intrusion problem: step 24\cf4\strike0\{linkID=3690\}
\par \cf3\strike Henry seawater-intrusion problem: step 25\cf4\strike0\{linkID=3700\}
\par \cf3\strike Henry seawater-intrusion problem: step 26\cf4\strike0\{linkID=3710\}
\par \cf3\strike Henry seawater-intrusion problem: step 27\cf4\strike0\{linkID=3720\}
\par \cf3\strike Henry seawater-intrusion problem: step 28\cf4\strike0\{linkID=3730\}
\par \cf3\strike Henry seawater-intrusion problem: step 29\cf4\strike0\{linkID=3740\}
\par \cf3\strike Henry seawater-intrusion problem: step 30\cf4\strike0\{linkID=3750\}
\par \cf3\strike Henry seawater-intrusion problem: step 31\cf4\strike0\{linkID=3760\}
\par \cf3\strike Henry seawater-intrusion problem: step 32\cf4\strike0\{linkID=3770\}
\par \cf3\strike Henry seawater-intrusion problem: step 33\cf4\strike0\{linkID=3780\}
\par \cf3\strike Henry seawater-intrusion problem: step 34\cf4\strike0\{linkID=3790\}
\par \cf3\strike Henry seawater-intrusion problem: step 35\cf4\strike0\{linkID=3800\}
\par \cf3\strike Henry seawater-intrusion problem: step 35\cf4\strike0\{linkID=3800\}
\par \cf3\strike Henry seawater-intrusion problem: step 36\cf4\strike0\{linkID=3810\}
\par \cf3\strike Henry seawater-intrusion problem: step 37\cf4\strike0\{linkID=3820\}
\par \cf3\strike Henry seawater-intrusion problem: step 38\cf4\strike0\{linkID=3830\}
\par \cf3\strike Henry seawater-intrusion problem: step 39\cf4\strike0\{linkID=3840\}
\par \cf3\strike Henry seawater-intrusion problem: step 40\cf4\strike0\{linkID=3850\}
\par 
\par 
\par 
\par \cf2 
\par }
3460
Scribble3460
Henry seawater-intrusion problem: step 1



examples:001030
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 1\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Start Argus ONE.  In the \b SUTRA Project Information \b0 dialog box, select a cross-sectional orientation with saturated flow, solute transport with variable-density fluid, using pressure, user-specified model thickness, and a FishNet Mesh.
\par \pard\cf2\f1 
\par }
3470
Scribble3470
Henry seawater-intrusion problem: step 2



examples:001040
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 2\cf2\b0\f1\fs24 
\par \f2 
\par \pard\fi720\sb60\cf0 In the \b SUTRA Project Information \b0 dialog box, a number of changes to the initial default values are required to match the Henry problem.
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 On the \b Headings \b0 pane, set \b TITLE1 \b0 to "Henry Problem from SUTRA Documentation."  Clear \b TITLE2\b0 .
\par {\pntext\f4\'B7\tab}On the \b Modes, Numerical Controls \b0 pane, select  \b Transient ground-water flow: Transient solute transport 
\par \b0{\pntext\f4\'B7\tab}On the \b Temporal Controls \b0 pane, set \b ITMAX\b0 =100, \b DELT \b0 = 60, and \b TMAX \b0 = 1.E9
\par {\pntext\f4\'B7\tab}On the \b Output Controls \b0 pane, set \b NPRINT\b0 =50
\par {\pntext\f4\'B7\tab}On the Fluid Properties pane, set \b SIGMAW\b0 =18.8571E-6, and \b VISC\'d8 \b0 = 1.E-3, 
\par {\pntext\f4\'B7\tab}On the \b Production, Gravity \b0 pane, set \b GRAVY \b0 = -9.8
\par \pard\fi720 Then click \b OK\b0 .\f3 
\par \pard\cf2\f1 
\par }
3480
Scribble3480
Henry seawater-intrusion problem: step 3



examples:001050
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 3\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the Argus ONE window, select \i Special|Drawing Size... \i0 and set the size as follows:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 Horizontal Extent: = 4
\par {\pntext\f3\'B7\tab}Vertical Extent: = 3
\par {\pntext\f3\'B7\tab}Horizontal Origin: = -1
\par {\pntext\f3\'B7\tab}Vertical Origin: = -1
\par \pard\cf2\f1 
\par }
3490
Scribble3490
Henry seawater-intrusion problem: step 4



examples:001060
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 4\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 The workspace shrinks because of the reduced drawing size.  Resize it using the zoom tool and resize the window if necessary.
\par \pard 
\par \f3 
\par \cf2\f1 
\par }
3500
Scribble3500
Henry seawater-intrusion problem: step 5



examples:001070
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 5\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The next steps create the 2 by 1 model domain by first approximating the shape and then editing to make it exact.
\par 
\par \pard\fi720\sb60 Activate the \b FishNet_Mesh_Layout \b0 layer.
\par \pard\cf2\f1 
\par }
3510
Scribble3510
Henry seawater-intrusion problem: step 6



examples:001080
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 6\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Click on the \i Element drawing tool \cf3\{bmc ElementButton.BMP\}\cf0\i0 .\f3 
\par \pard\f2 
\par }
3520
Scribble3520
Henry seawater-intrusion problem: step 7



examples:001090
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 7\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 While holding down the shift key on the keyboard, place four vertices at about (0,0), (0,1), (2,1) and (2,0).  The shift key causes lines to be drawn horizontally and vertically.
\par \pard\cf2\f1 
\par }
3530
Scribble3530
Henry seawater-intrusion problem: step 8



examples:001100
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 8\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Choose the \i Arrow \i0 button \cf3\{bmc ArrowButton.bmp\}\cf0  and double-click on the element.  This brings up the \i Element Information \i0 dialog box.  Set elements_in_x=20 and elements_in_y=10.  Click OK.\f3 
\par \pard\cf2\f1 
\par }
3540
Scribble3540
Henry seawater-intrusion problem: step 9



examples:001110
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 9\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Click outside the element to deselect it.  Then double-click on the lower left node.  In the \i Node Information \i0 dialog box, set \i Position X \i0 to 0 and \i Position Y \i0 to 0.  Double-click on each node in turn and adjust their positions so that their coordinates are (0, 0), (2, 0), (2, 1), and (0, 1) and then save the file.
\par \pard\cf2\f1 
\par }
3550
Scribble3550
Henry seawater-intrusion problem: step 10



examples:001120
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 10\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The next steps create a line source exactly along the left vertical edge of the domain representing inflow of fresh water to the cross section.  The total inflow across this boundary (0.066) and the solute concentration of inflowing freshwater (0.0) are specified.
\par 
\par \pard\fi720 Select \b PIEs|Convert\'85.  \b0 In the dialog box that appears, select (\b Mesh Objects to Contours\'85\b0 ).  Click the \b OK \b0 button.\cf2\f1 
\par }
3560
Scribble3560
Henry seawater-intrusion problem: step 11



examples:001130
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 11\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, choose the \b FishNet_Mesh_Layout \b0 layer and click the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
3570
Scribble3570
Henry seawater-intrusion problem: step 12



examples:001140
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 12\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, choose the \b Sources of Fluid \b0 layer and click the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
3580
Scribble3580
Henry seawater-intrusion problem: step 13



examples:001150
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 13\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, click on the left side of the rectangle that represents the element in the \b FishNet_Mesh_Layout \b0 layer and click the \b OK \b0 button.\f3 
\par \pard\cf2\f1 
\par }
3590
Scribble3590
Henry seawater-intrusion problem: step 14



examples:001160
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 14\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 When prompted to turn "Allow Intersection" on, click the \b No \b0 button.
\par \pard\cf2\f1 
\par }
3600
Scribble3600
Henry seawater-intrusion problem: step 15



examples:001170
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 15\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Activate the \b Sources of Fluid \b0 layer and double-click on the open contour just imported in to it to bring up its \i Contour Information \i0 dialog box.
\par \pard\cf2\f1 
\par }
3610
Scribble3610
Henry seawater-intrusion problem: step 16



examples:001180
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}{\f4\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 16\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 The user may specify either a total source value for the open contour object, or a source per length of the object.  Only one of these may have a value, and the other \b must \b0 be set to $N/A, meaning 'undefined'.  Set:
\par \pard{\pntext\f4\'B7\tab}{\*\pn\pnlvlblt\pnf4\pnindent0{\pntxtb\'B7}}\fi-200\li920\sb120\tx920 total_source = 0.066
\par {\pntext\f4\'B7\tab}specific_source = $N/A
\par {\pntext\f4\'B7\tab}concentration_of_source = 0.0
\par \pard\fi720 and click OK.  Save the project.\f3 
\par \pard\cf2\f1 
\par }
3620
Scribble3620
Henry seawater-intrusion problem: step 17



examples:001190
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 17\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The following steps create a background value for the \b Specified Pressure \b0 layer that represents the pressure of seawater under hydrostatic conditions.  This background value provides a pressure everywhere in the workspace.  Sea level is set at elevation y=1 and pressure increases below this point.  The density of seawater is given by the linear fluid density expression used by SUTRA, (1000. + 700. * 0.0357), gravity is 9.8, and depth is given by (1. - y).
\par 
\par \pard\fi720\sb60 Open the \i Layers \i0 dialog box either by clicking the appropriate tool button along the top of the window or the \i Layers... \i0 button in the \i Layers' Floater\i0 .\f3 
\par \pard\cf2\f1 
\par }
3630
Scribble3630
Henry seawater-intrusion problem: step 18



examples:001200
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 18\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the upper window, click on the \b Specified Pressure \b0 layer to select it.
\par \pard\cf2\f1 
\par }
3640
Scribble3640
Henry seawater-intrusion problem: step 19



examples:001210
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 19\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the lower window, hold the mouse button down over the \i Value \i0 column of \b specified_pressure \b0 and click the \i fx \i0 button.
\par \pard\cf2\f1 
\par }
3650
Scribble3650
Henry seawater-intrusion problem: step 20



examples:001220
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 20\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the \i Expression Editor \i0 that appears, type the following equation:
\par \pard\fi720\sb120 (1000. + 700. * 0.0357) * 9.8 * (1. - Y())
\par Then click \i OK\i0 .
\par 
\par \pard\li720\i Note: Y() is an Argus ONE function and may be automatically inserted by clicking on Mathematical (under Functions) in the lower left list, and then clicking on Y in the lower right list.\i0\f3 
\par \pard\cf2\f1 
\par }
3660
Scribble3660
Henry seawater-intrusion problem: step 21



examples:001230
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 21\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Click on \b concentration \b0 in the \i Layer Parameters \i0 (lower half of the dialog box).  Then click in the \i Value \i0 column and click the \i fx \i0 button.
\par \pard\cf2\f1 
\par }
3670
Scribble3670
Henry seawater-intrusion problem: step 22



examples:001240
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 22\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the \i Expression Editor\i0 , set the value to 0.0357, and click \i OK\i0 .  Click \i Done \i0 in the \i Layers \i0 dialog box.  Save the project.
\par \pard\cf2\f1 
\par }
3680
Scribble3680
Henry seawater-intrusion problem: step 23



examples:001250
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 23\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Activate the \b Specified Pressure \b0 layer and move the cursor up and down in the workspace to observe the varying background pressure value just specified.  (The value is shown in the lower left margin of the window.)  Note that zero occurs along the top edge of the model domain and pressure increases with depth.
\par \pard\cf2\f1 
\par }
3690
Scribble3690
Henry seawater-intrusion problem: step 24



examples:001260
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 24\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 The next steps create a specified pressure boundary condition exactly along the right vertical edge of the superblock by copying the edge from the \b FishNet_Mesh_Layout \b0 layer and modifying the object's values.
\par 
\par \pard\fi720 Select \b PIEs|Convert\'85.  \b0 In the dialog box that appears, select (\b Mesh Objects to Contours\'85\b0 ).  Click the \b OK \b0 button.\cf2\f1 
\par }
3700
Scribble3700
Henry seawater-intrusion problem: step 25



examples:001270
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 25\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, choose the \b FishNet_Mesh_Layout \b0 layer and click the \b OK \b0 button.\f3 
\par \pard\cf2\f1 
\par }
3710
Scribble3710
Henry seawater-intrusion problem: step 26



examples:001280
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 26\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, choose the \b Specified Pressure \b0 layer and click the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
3720
Scribble3720
Henry seawater-intrusion problem: step 27



examples:001290
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Henry seawater-intrusion problem: step 27\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, click on the right side of the rectangle that represents the element in the \b FishNet_Mesh_Layout \b0 layer and click the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
3730
Scribble3730
Henry seawater-intrusion problem: step 28



examples:001300
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 28\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 When prompted to turn "\i Allow Intersection\i0 " on, click the \b No \b0 button.
\par \pard\cf2\f1 
\par }
3740
Scribble3740
Henry seawater-intrusion problem: step 29



examples:001310
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 29\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Double-click on the newly imported object to bring up its \i Contour Information \i0 dialog box.  The values shown in the dialog box should be based on the expressions specified for \b specified_pressure \b0 and \b concentration\b0 .  Click \b OK\b0 .  Save the project.
\par \pard\cf2\f1 
\par }
3750
Scribble3750
Henry seawater-intrusion problem: step 30



examples:001320
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 30\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 When this domain is meshed, nodes falling exactly along this object will be automatically assigned specified pressure values varying with depth and seawater concentration to create the desired boundary condition.  In the next steps, the initial default parameter values for various layers will be set to the values required for the Henry problem.
\par 
\par \pard\fi720 Bring up the \i Layers \i0 dialog box.\cf2\f1 
\par }
3760
Scribble3760
Henry seawater-intrusion problem: step 31



examples:001330
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 31\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Highlight the \b Porosity \b0 layer in the upper window.  In the lower window, reset the initial default value of 0.1 to 0.35 by bringing up the \i Expression editor \i0 for the \b porosity \b0 parameter.
\par \pard\cf2\f1 
\par }
3770
Scribble3770
Henry seawater-intrusion problem: step 32



examples:001340
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 32\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Highlight the \b Permeability \b0 layer in the upper window.  In the lower window, select \b maximum \b0 and set its default value to 1.020408E-9.
\par \pard\cf2\f1 
\par }
3780
Scribble3780
Henry seawater-intrusion problem: step 33



examples:001350
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 33\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select the \b minimum \b0 parameter and set its value to that of \b maximum\b0 .  To do this, in the \i Expression Editor\i0 , select \b Permeability \b0 from the lower left list, then double-click \b maximum \b0 in the lower right list.  The parameter \b maximum \b0 then appears in the upper expression window.  Click \i OK \i0 to exit it.
\par \pard\cf2\f1 
\par }
3790
Scribble3790
Henry seawater-intrusion problem: step 34



examples:001360
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 34\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Highlight the \b Dispersivity \b0 layer in the upper window and set all four dispersivity parameters to zero (0.0).
\par \pard\cf2\f1 
\par }
3800
Scribble3800
Henry seawater-intrusion problem: step 35



examples:001370
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 35\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Click \i Done \i0 to exit the \i Layers \i0 dialog box.  Save the project.
\par \pard\fi720\sb120 
\par \pard\fi720 This completes entry of information for the Henry problem.  Next, the mesh is created and numbering optimized.\cf2\f1 
\par }
3810
Scribble3810
Henry seawater-intrusion problem: step 36



examples:001380
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 36\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Activate the \b SUTRA Mesh \b0 layer.
\par \pard\cf2\f1 
\par }
3820
Scribble3820
Henry seawater-intrusion problem: step 37



examples:001390
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 37\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Select \b PIEs|Create SUTRA FishNet Mesh\b0 .  This creates the FishNet Mesh.  (Compare this with the mesh shown on page 197 of the SUTRA documentation: \cf3\strike Voss and Provost, 2002\cf4\strike0\{linkTarget=Voss02\}\cf0 )  The bandwidth does not need to be optimized with a FishNet Mesh.  \cf2\f1 
\par }
3830
Scribble3830
Henry seawater-intrusion problem: step 38



examples:001400
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 38\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Inspect the values assigned to nodes and elements in the mesh by double-clicking the node or element of interest.  Note the distribution of inflow (\b QIN\b0 ) along the left-hand boundary nodes, where the upper and lower nodes are assigned half the inflow of the others along the boundary to correctly create a uniform inflow.  Note also the distribution of specified pressure (\b PBC\b0 ) along the right-hand boundary nodes is equivalent to the pressure of a hydrostatic column of seawater.\cf2\f1 
\par }
3840
Scribble3840
Henry seawater-intrusion problem: step 39



examples:001410
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 39\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb120\cf0\f2 Finally, the simulation is run, and results plotted.
\par 
\par \pard\fi720 Export and run SUTRA.\cf2\f1 
\par }
3850
Scribble3850
Henry seawater-intrusion problem: step 40



examples:001420
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Henry seawater-intrusion problem: step 40\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Select \b PIEs|SUTRA 2D Post Proc... \b0 and plot concentration and velocity for time step 100.  To plot each 10% of seawater concentration, set \i Minimum\i0 : to 0.00357, \i Maximum\i0 : to 0.0357, and \i Delta\i0 : to 0.00357 in the \i Contour Diagram \i0 dialog box.  The contours can be made somewhat smoother by changing the contouring algorithm from "Linear" to "Algorithm 626 (use layer triangulation)."  Then, to compare with the results found in the SUTRA documentation (Voss and Provost, 2002, fig. 6.11 on page 156), plot each 25% by setting both \i Minimum\i0 : and \i Delta\i0 : to 0.008925.  Save the project.
\par \pard\fi720\sb120 
\par The user may wish to continue by experimenting with various aspects of this problem.  For example, the mesh size may be halved in each direction, a low conductivity barrier or high conductivity channel may be added, or parameters such as dispersivity and diffusion coefficient may be changed and the simulation rerun and results displayed.\f3 
\par \pard\cf2\f1 
\par }
3860
Scribble3860
Example Three-Dimensional Model



examples:001430
Writing



FALSE
30
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example Three-Dimensional Model\cf2\b0\f1\fs24 
\par 
\par \cf0\f2 This step-by-step example shows how to create a simple 3D steady state ground-water flow and transport model, runs SUTRA, and display simulation results.
\par \pard\fi680\cf2\f1 
\par \pard\cf3\strike Example three-dimensional model: step 1\cf4\strike0\{linkID=3870\}\cf2 
\par \cf3\strike Example three-dimensional model: step 2\cf4\strike0\{linkID=3880\}\cf2 
\par \cf3\strike Example three-dimensional model: step 3\cf4\strike0\{linkID=3890\}\cf2 
\par \cf3\strike Example three-dimensional model: step 4\cf4\strike0\{linkID=3900\}\cf2 
\par \cf3\strike Example three-dimensional model: step 5\cf4\strike0\{linkID=3910\}\cf2 
\par \cf3\strike Example three-dimensional model: step 6\cf4\strike0\{linkID=3920\}\cf2 
\par \cf3\strike Example three-dimensional model: step 7\cf4\strike0\{linkID=3930\}\cf2 
\par \cf3\strike Example three-dimensional model: step 8\cf4\strike0\{linkID=3940\}\cf2 
\par \cf3\strike Example three-dimensional model: step 9\cf4\strike0\{linkID=3950\}\cf2 
\par \cf3\strike Example three-dimensional model: step 10\cf4\strike0\{linkID=3960\}\cf2 
\par \cf3\strike Example three-dimensional model: step 11\cf4\strike0\{linkID=3970\}\cf2 
\par \cf3\strike Example three-dimensional model: step 12\cf4\strike0\{linkID=3980\}\cf2 
\par \cf3\strike Example three-dimensional model: step 13\cf4\strike0\{linkID=3990\}\cf2 
\par \cf3\strike Example three-dimensional model: step 14\cf4\strike0\{linkID=4000\}\cf2 
\par \cf3\strike Example three-dimensional model: step 15\cf4\strike0\{linkID=4010\}\cf2 
\par \cf3\strike Example three-dimensional model: step 16\cf4\strike0\{linkID=4020\}\cf2 
\par \cf3\strike Example three-dimensional model: step 17\cf4\strike0\{linkID=4030\}\cf2 
\par \cf3\strike Example three-dimensional model: step 18\cf4\strike0\{linkID=4040\}\cf2 
\par \cf3\strike Example three-dimensional model: step 19\cf4\strike0\{linkID=4050\}\cf2 
\par \cf3\strike Example three-dimensional model: step 20\cf4\strike0\{linkID=4060\}\cf2 
\par \cf3\strike Example three-dimensional model: step 21\cf4\strike0\{linkID=4070\}\cf2 
\par \cf3\strike Example three-dimensional model: step 22\cf4\strike0\{linkID=4080\}\cf2 
\par \cf3\strike Example three-dimensional model: step 23\cf4\strike0\{linkID=4090\}\cf2 
\par }
3870
Scribble3870
Example three-dimensional model: step 1



examples:001440
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 1\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Start Argus ONE and start a new SUTRA project.  In the \b SUTRA Project Information \b0 dialog box, change the number of dimensions to 3 and select a vertically aligned 3D model.  Select \b SOLUTE (constant-density fluid, using Hydraulic Head)\b0 .\cf2\f1 
\par }
3880
Scribble3880
Example three-dimensional model: step 2



examples:001450
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 2\cf2\b0\f1\fs24 
\par \f2 
\par \pard\fi720\sb60\cf0 On the \b Structure in Z \b0 pane, change the \b Z discretization \b0 (not \b Number of Units\b0 ) to 10.  Then click the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
3890
Scribble3890
Example three-dimensional model: step 3



examples:001460
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 3\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Make the \b FishNet_Mesh_Layout \b0 layer the active layer and draw one element on it.  Click on the arrow button \cf3\{bmc ArrowButton.bmp\}\cf0 , double-click on the element and assign \b elements_in_x \b0 and \b elements_in_y \b0 each a value of 10.\f3 
\par \pard\cf2\f1 
\par }
3900
Scribble3900
Example three-dimensional model: step 4



examples:001470
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 4\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Make the \b SUTRA Mesh \b0 layer the active layer and select \b PIEs|Create SUTRA FishNet Mesh\b0 .  This creates a mesh with 10 rows and 10 columns.\f3 
\par \pard\cf2\f1 
\par }
3910
Scribble3910
Example three-dimensional model: step 5



examples:001480
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 5\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Make the \b Elevation Top \b0 layer the active layer.  Click on the \i Layers \i0 button or select \i View|Layers\'85  \i0 Click on the \i fx \i0 button for the \b elevation top \b0 parameter and change the expression for the parameter to 10.  Click the \i OK \i0 button to close the \i Expression Editor \i0 and then click the \i Done \i0 button.\f3 
\par \pard\cf2\f1 
\par }
3920
Scribble3920
Example three-dimensional model: step 6



examples:001490
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 6\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 This step will set up a low hydraulic conductivity zone reaching from the top of the model to near the bottom.  Make the \b Hydraulic Conductivity Unit1 \b0 layer the active layer.  Click on the \i Layers \i0 button or select \i View|Layers\'85  \i0 Change the evaluation method for the layer from \i Nearest \i0 to \i Exact\i0 .  Click on the \i fx \i0 button for the \b maximum \b0 parameter and change the expression for the parameter to 
\par \i If((ContourArea()>0)&(Sutra_Z()>3), 1e-7, 1e-3). 
\par \i0  (When using a digital version of this documentation, the user can select the expression in this document, copy it to the clipboard and paste in the \i Expression Editor\i0 .  Use Ctrl-V to paste.)  Click the \i OK \i0 button to close the \i Expression Editor\i0 .  Click on the \i fx \i0 button for the middle parameter and change the expression for the parameter to maximum by clicking on \b Hydraulic Conductivity Unit1 \b0 in the lower left window and then by double-clicking on \b maximum \b0 in the lower right window, and finally click on \i OK\i0 .  Set the Expression for the \b minimum \b0 parameter to \b maximum \b0 in the same way and then click the \i Done \i0 button.
\par \pard\fi720\sb120 This expression has several parts.  First, there is the \i If \i0 function: \i If(Condition, True_Value, False_Value).  \i0 The \i If \i0 function can be found below Mathematical in the expression editor.  For this example, if \i (ContourArea()>0)&(Sutra_Z()>3)\i0  evaluates to True, the hydraulic conductivity will be set to 1e-7 (the \i True_Value\i0 ).  Otherwise, it will be set to 1e-3 (the \i False _Value\i0 ).  The Condition, in this case, has two parts:\i  (ContourArea()>0)\i0  and \i (Sutra_Z()>3)\i0 .  Both must evaluate to True for the entire condition to evaluate to True.  When using the \i Exact \i0 interpretation method, \i ContourArea() \i0 is greater than 0 only inside closed contours.  (Using the \i Nearest \i0 method, it would be 'true' everywhere in a layer on which there was at least one closed contour, so the \i Exact \i0 method must be used.)  In the \i Expression Editor\i0 , the \i ContourArea() \i0 function can be found under \i Contour\i0 .  \cf3\b\strike Sutra_Z()\cf4\strike0\{linkID=40\}\cf0\b0  is the elevation of a node or element in the 3D mesh.  In the \i Expression Editor\i0 , the \cf3\b\strike Sutra_Z()\cf4\strike0\{linkID=40\}\cf0\b0  function can be found under \i PIEs\i0 .  Thus, this condition will only be 'true' inside closed contours on the \b Hydraulic Conductivity Unit1 \b0 layer for elements whose centers have an elevation higher than 3.  The top elevation of the model was set to 10 and the bottom elevation is, by default, 0.  The vertical discretization was set to 10 elements.  Thus, if a closed contour is drawn on the \b Hydraulic Conductivity Unit1 \b0 layer and it uses the default values for the \b maximum\b0 , \b middle\b0 , and \b minimum \b0 parameters, a low hydraulic conductivity zone that reaches down to an elevation of 3 will be defined.\f3 
\par \pard\cf2\f1 
\par }
3930
Scribble3930
Example three-dimensional model: step 7



examples:001500
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 7\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Draw a closed contour on Hydraulic Conductivity Unit1 layer similar to that shown in figure 27.  It should encompass several columns of cells from the northern to the southern ends of the model but should not reach all the way to the east and west edges of the model.  Use the default values for all parameters in the model, so simply click OK to exit the Contour Information dialog box that appears when the contour is closed.
\par 
\par \cf3\f1\{bmc 3D Hydraulic conductivity.BMP\}
\par \pard\fi720\sb120\sa120\cf0\b\f2 Figure \lang1024 27\lang1033 .  Low hydraulic conductivity zone in three-dimensional example.
\par \pard\fi720\sb60\b0\f3 
\par \pard\cf2\f1 
\par }
3940
Scribble3940
Example three-dimensional model: step 8



examples:001510
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 8\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Next, the dispersivities for the model are set to 0.3.  The same methods as before can be used to set the \i Expressions \i0 but, in this case, a simpler method is used to set them all at once.
\par \pard\fi720\sb120 Select \b PIEs|Edit\'85.  \b0 In the dialog box, select \b Set Multiple Parameters \b0 and click the \b OK \b0 button.  A dialog box will appear with a list of all the group layers.  Next to each layer is an empty check box.  If the group layer has one or more layers controlled by it, it will also have a box with a + or - sign in it.  Click the box with the + sign next to \b Hydrogeology Unit1 \b0 to expand the list of layers in that group.  The + sign will change to a - sign and the group of layers will expand to show all the layers underneath \b Hydrogeology Unit1\b0 .  Next to each of the layers, there is an empty check box.  Any of the layers that have parameters that can be set will also have another box with either a + sign or a - sign.  Click on the + sign next to \b Dispersivity Unit1 \b0 to show the parameters for that layer.  Click in the empty check box for one of the parameters.  Note that the check boxes for \b Dispersivity Unit1 \b0 and \b Hydrogeology Unit1 \b0 change from empty to gray.  This indicates that some, but not all, of the check boxes beneath those units are checked.  Click on the check box for \b Dispersivity Unit1\b0 .  Note that all of the check boxes for the parameters under \b Dispersivity Unit1 \b0 become checked. 
\par When the \b OK \b0 button is clicked, the expression for all the parameters whose check boxes are checked are changed to the value shown in the \b Value \b0 edit box.  Change the value in the \b Value \b0 edit box to 0.3 and click the \b OK \b0 button.\f3 
\par \pard\fi720\cf2\f1 
\par }
3950
Scribble3950
Example three-dimensional model: step 9



examples:001520
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 9\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 Next, the boundary conditions are set.  On the right side of the model near the top, there will be a specified head boundary with a head of 10.  On the left side, there will be three specified head boundaries with heads of 11.  One of those boundaries will have a solute concentration of 100.  The rest will all have concentrations of 0. 
\par \cf3\f1\{bmc 3DSpecifiedHeads.BMP\}\cf0\f2 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 28\lang1033 .  Specified hydraulic heads in three-dimensional example.
\par \pard\fi720\sb120\b0 Make the Specified Hydraulic Head Solids1 layer the active layer.  On it, draw four closed contours similar to the ones in figure 28.  For all the contours, assign top_elevation a value of 11 and bottom_elevation a value of 9.5.  For the three contours on the left, assign specified_hydraulic_head values of 11.  For the contour on the right, assign specified_hydraulic_head a value of 10.  For the middle contour on the left, assign concentration a value of 100.  For the rest, assign concentration a value of 0.
\par \pard\li720\sb120\i Note: If several contours are selected, the Contour Information dialog box will have a "Set All" button.  If this button is clicked all the parameters that have a check mark next to their name will be set to the values displayed in the Contour Information dialog box for all the selected contours. An individual parameter can have the check mark next to its name removed by clicking the check mark.  The "None" and "All" buttons can also be used to remove or restore check marks.
\par \pard\cf2\i0\f1 
\par }
3960
Scribble3960
Example three-dimensional model: step 10



examples:001530
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 10\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 To set the initial conditions, make \b Initial Hydraulic Head Unit1 \b0 the active layer.  Click on the \i Layers \i0 button or select \i View|Layers\'85  \i0 Click on the \i fx \i0 button for the \b initial_hydraulic_head \b0 parameter and change the expression for the parameter to 10.5.  Click the \i OK \i0 button to close the expression editor and then click the \i Done \i0 button.\f3 
\par \pard\cf2\f1 
\par }
3970
Scribble3970
Example three-dimensional model: step 11



examples:001540
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 11\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 To run the model, make \b SUTRA Mesh \b0 the active layer and select \b PIEs|Run SUTRA\b0 .  Select a root name for the files to be created.  Click the \b OK \b0 button to export the SUTRA input files and begin running SUTRA.  After the SUTRA input files have been created, a DOS window opens and SUTRA runs in it.
\par \pard\cf2\f1 
\par }
3980
Scribble3980
Example three-dimensional model: step 12



examples:001550
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 12\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 After SUTRA has finished running, start \b Model Viewer \b0 (\cf3\strike Hsieh and Winston, 2002\cf4\strike0\{linkTarget=Hsieh\}\cf0 ).
\par \pard\cf2\f1 
\par }
3990
Scribble3990
Example three-dimensional model: step 13



examples:001560
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 13\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In \b Model Viewer\b0 , select \b File|New \b0 to start a new \b Model Viewer \b0 project.  Change the type of model to \b SUTRA \b0 and click on the \b OK \b0 button.\f3 
\par \pard\cf2\f1 
\par }
4000
Scribble4000
Example three-dimensional model: step 14



examples:001570
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 14\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 In the next dialog box, click on the \b nod \b0 radio button and then click on the \b Browse \b0 button next to it.  Select the "nod" file for the project created by SUTRA.  Then click on the \b Browse \b0 button next to \b Please specify the "ele" file \b0 and select the "ele" file for the project created by SUTRA.  Finally click on the \b Browse \b0 button next to \b Please specify the "inp" file \b0 and select the "inp" file for the project used by SUTRA.  Finally, click on the \b OK \b0 button.\cf2\f1 
\par }
4010
Scribble4010
Example three-dimensional model: step 15



examples:001580
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 15\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\b\f2 Model Viewer \b0 will prompt the user to convert the ASCII files to binary ones.  \b Model Viewer \b0 can read binary files faster than ASCII files; once the conversion is made, using binary files is faster.  (The ASCII files are not destroyed when the data in them are converted to binary format.  Instead, a new file is created with the required information.)  If the user chooses to create a binary file, the extension ".bin" should be used as part of the file name.  Using that extension will make it easier to later find the file for use in \b Model Viewer\b0 .  After making a choice (\b No \b0 is suggested for a file as small as this model), click on the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
4020
Scribble4020
Example three-dimensional model: step 16



examples:001590
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 16\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 In the next dialog box, change the data type to \b Concentration \b0 and click on the \b OK \b0 button.
\par \pard\cf2\f1 
\par }
4030
Scribble4030
Example three-dimensional model: step 17



examples:001600
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 17\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 After a short wait, \b Model Viewer \b0 shows an empty box from the top.  From the \b Model Viewer \b0 menu, select \b Show|Isosurfaces\b0 .  \b Model Viewer \b0 then displays isosurfaces of equal concentration (fig. 29).  An isosurface is the 3D equivalent of a contour line.  It is a surface through locations where some quantity has equal values.  In this case, it is a set of surfaces through locations where the concentrations are the same. 
\par \cf3\f1\{bmc Sutra3DExample.bmp\}\cf0\f2 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 29\lang1033 .  Isosurfaces generated by Model Viewer.\f3\fs20 
\par \pard\sb60\b0\fs24 
\par \pard\cf2\f1 
\par }
4040
Scribble4040
Example three-dimensional model: step 18



examples:001610
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 18\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Hold down the left mouse button and move the mouse.  Notice how the image rotates in response to the mouse movements.\f3 
\par \pard\cf2\f1 
\par }
4050
Scribble4050
Example three-dimensional model: step 19



examples:001620
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 19\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Release the left mouse button, hold down the right mouse button, and move the mouse up and down.  Notice how the magnification of the image changes in response to the mouse movements.
\par \pard\cf2\f1 
\par }
4060
Scribble4060
Example three-dimensional model: step 20



examples:001630
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 20\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Release the right mouse button, and hold down the left mouse button and the Shift button on the keyboard.  Move the mouse.  Notice how the position of the image changes in response to the mouse movements.
\par \pard\cf2\f1 
\par }
4070
Scribble4070
Example three-dimensional model: step 21



examples:001640
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 21\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\sb60\cf0\f2 Release the Shift button, and hold down the left mouse button and the Ctrl button on the keyboard.  Move the mouse.  Notice how the image moves laterally in response to the mouse movements.
\par \pard\cf2\f1 
\par }
4080
Scribble4080
Example three-dimensional model: step 22



examples:001650
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 22\cf2\b0\f1\fs24 
\par \f2 
\par \pard\fi720\cf0 Select \b Show|None \b0 and then \b Show|Model Features\b0 .  In the dialog box that appears, click on \b spec. pressure \b0 and then click on the \b Show --> \b0 button.  Then click on the up arrow next to \b Size \b0 a few times.  Click on the \b Done \b0 button.  This has hidden the isosurfaces and shown the locations of nodes that are specified pressure boundaries (fig. 30).  (Isosurfaces and boundary nodes can be viewed simultaneously.  Hiding the isosurfaces, however, makes the image less cluttered.)
\par \cf3\f1\{bmc Sutra3DExample2.bmp\}\cf0\f2 
\par \b Figure \lang1024 30\lang1033 .  Specified pressure boundaries as seen in Model Viewer.\cf2\f1 
\par }
4090
Scribble4090
Example three-dimensional model: step 23



examples:001660
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example three-dimensional model: step 23\cf2\b0\f1\fs24 
\par 
\par \pard\fi720\cf0\f2 The user may make changes in the model and see how they affect the results displayed in \b Model Viewer\b0 .  However, if \b Model Viewer \b0 has the input or output files for the SUTRA model open, it will not be possible to run SUTRA because the files will be locked by \b Model Viewer\b0 .  Therefore, \b Model Viewer \b0 should be closed before trying to run SUTRA.
\par }
4100
Scribble4100
Nonaligned 3D Model



examples:001670
Writing



FALSE
21
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model\cf0\b0\f1\fs24 
\par \pard\fi720 
\par This example is similar to the previous example except that the mesh is not aligned vertically.  It shows how to create such a mesh and assign aquifer properties of boundary conditions to it.  Use of the \b follow_mesh \b0 parameter is illustrated in assigning boundary conditions.
\par 
\par \pard\cf2\strike Nonaligned 3D Model: step 1\cf3\strike0\{linkID=4110\}\cf0 
\par \cf2\strike Nonaligned 3D Model: step 2\cf3\strike0\{linkID=4120\}
\par \cf2\strike Nonaligned 3D Model: step 3\cf3\strike0\{linkID=4130\}
\par \cf2\strike Nonaligned 3D Model: step 4\cf3\strike0\{linkID=4140\}
\par \cf2\strike Nonaligned 3D Model: step 5\cf3\strike0\{linkID=4150\}
\par \cf2\strike Nonaligned 3D Model: step 6\cf3\strike0\{linkID=4160\}
\par \cf2\strike Nonaligned 3D Model: step 7\cf3\strike0\{linkID=4170\}
\par \cf2\strike Nonaligned 3D Model: step 8\cf3\strike0\{linkID=4180\}
\par \cf2\strike Nonaligned 3D Model: step 9\cf3\strike0\{linkID=4190\}
\par \cf2\strike Nonaligned 3D Model: step 10\cf3\strike0\{linkID=4200\}
\par \cf2\strike Nonaligned 3D Model: step 11\cf3\strike0\{linkID=4210\}
\par \cf2\strike Nonaligned 3D Model: step 12\cf3\strike0\{linkID=4220\}
\par \cf2\strike Nonaligned 3D Model: step 13\cf3\strike0\{linkID=4230\}\cf0 
\par 
\par }
4110
Scribble4110
Nonaligned 3D Model: step 1



examples:001680
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 1\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Start Argus ONE and start a new SUTRA project.  In the SUTRA Project Information dialog box, change the number of dimensions to 3 and select a nonaligned 3D model.  Select \b SOLUTE (constant-density fluid, using Hydraulic Head).\b0 
\par }
4120
Scribble4120
Nonaligned 3D Model: step 2



examples:001690
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 2\cf0\b0\f1\fs24 
\par \pard\fi720 
\par On the \b Structure in Z \b0 pane, change the \b Z discretization \b0 to 10.  Then click the \b OK \b0 button.
\par }
4130
Scribble4130
Nonaligned 3D Model: step 3



examples:001700
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 3\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Make the \b FishNet_Mesh_Layout Top \b0 layer the active layer and draw one element on it.  Click on the arrow button \cf2\{bmc ArrowButton.bmp\}\cf0 , double-click on the element and assign both \b elements_in_x \b0 and \b elements_in_y \b0 a value of 20.
\par }
4140
Scribble4140
Nonaligned 3D Model: step 4



examples:001710
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 4\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Make the \b FishNet_Mesh_Layout Bottom Unit1 \b0 layer the active layer and draw one element on it.  Make its width smaller than the element in \b FishNet_Mesh_Layout Top\b0 .  Click on the arrow button, double-click on the element and assign both \b elements_in_x \b0 and \b elements_in_y \b0 a value of 20.
\par }
4150
Scribble4150
Nonaligned 3D Model: step 5



examples:001720
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 5\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Make the \b SUTRA Mesh Top \b0 layer the active layer and select \b PIEs|Create SUTRA FishNet Mesh\b0 .  This creates a mesh with 20 rows and 20 columns.  Repeat this step with the \b SUTRA Mesh Bottom Unit1 \b0 layer.
\par }
4160
Scribble4160
Nonaligned 3D Model: step 6



examples:001730
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 6\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Make the \b Elevation Top \b0 layer the active layer.  Click on the \i Layers \i0 button or select \i View|Layers\'85  \i0 Click on the \i fx \i0 button for the \b elevation top \b0 parameter and change the expression for the parameter to 10.  Click the \i OK \i0 button to close the \i Expression Editor \i0 and then click the \i Done \i0 button.
\par }
4170
Scribble4170
Nonaligned 3D Model: step 7



examples:001740
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 7\cf0\b0\f1\fs24 
\par \pard\fi720 
\par This step will set up a low hydraulic conductivity zone from the top of the model to near the model's bottom.  Make the \b Hydraulic Conductivity Unit1 \b0 layer the active layer.  Click on the \i Layers \i0 button or select \i View|Layers\'85  \i0 Change the evaluation method for the layer from \i Nearest \i0 to \i Exact\i0 .  Click on the \i fx \i0 button for the \b maximum \b0 parameter and change the expression for the parameter to 
\par \i If((ContourArea()>0)&(Sutra_Z()>3), 1e-7, 1e-3)\i0 .  
\par Click the \i OK \i0 button to close the \i Expression Editor\i0 .  Click on the \i fx \i0 button for the \b middle \b0 parameter and change the expression for the parameter to \b maximum\b0 .  Do the same with the \b minimum \b0 parameter and then click the \i Done \i0 button.
\par }
4180
Scribble4180
Nonaligned 3D Model: step 8



examples:001750
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 8\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Draw a closed contour on \b Hydraulic Conductivity Unit1 \b0 layer similar to that shown in figure 31.  It should encompass several columns of cells from the northern to the southern ends of the model but should not reach all the way to the east and west edges of the model.  Use the default values for all parameters in the model, so simply click \i OK \i0 to exit the \i Contour Information \i0 dialog box that appears when the contour is closed
\par \cf2\{bmc HydraulicConductivity3D.bmp\}\cf0 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 31\lang1033 .  Specified hydraulic heads in nonaligned, three-dimensional example.
\par \pard\fi720\b0 .
\par }
4190
Scribble4190
Nonaligned 3D Model: step 9



examples:001760
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 9\cf0\b0\f1\fs24 
\par \pard\fi720 
\par \pard\fi720\sb60 Next, the dispersivities for the model are set to 0.3.  The same methods as before can be used to set the \i Expressions \i0 but, in for demonstration purposes, another method is used to set them.
\par \pard\fi720 Select \b PIEs|Edit Project Info\'85.  \b0 At the bottom of the \b SUTRA Project Information \b0 dialog box, click on the \b Parameter Values - Quick Set \b0 button.  A dialog box will appear with a list of some model parameters.  At the bottom, type in the value 0.3 into each box for \b dispersivity\b0 ; there are six boxes to fill in.  The \b Set Now \b0 buttons to the left become \b bold \b0 indicating that the value has changed.  To actually set the values just entered, click each \b Set Now \b0 button or click \b Set All \b0 at the bottom of the dialog box.  When each button is clicked, the expression for each parameter whose value is referred to is changed to the value just entered in the edit box.  Click \b Done \b0 to exit the dialog box and then \b OK \b0 or \b Cancel \b0 to exit the \b SUTRA Project Information \b0 dialog box.  
\par }
4200
Scribble4200
Nonaligned 3D Model: step 10



examples:001770
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 10\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Next, the boundary conditions are set.  On the right side of the model extending from the top to the bottom of the model, there will be a specified head boundary with a head of 10.  On the left side, there will be three specified head boundaries with heads of 11.  One of those boundaries will have a solute concentration of 100.  The rest will all have concentrations of 0.  The \b follow_mesh  \b0 parameter will be used to make sure the boundary on the right only applies to all the nodes on the edge of the model.  
\par 
\par \cf2\{bmc SpecifiedHead3D.BMP\}\cf0 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 32\lang1033 .  Specified hydraulic heads in nonaligned, three-dimensional (3D) example.
\par \pard\fi720\b0 
\par \pard\fi720\sb120 Make the \b Specified Hydraulic Head Solids1 \b0 layer the active layer.  On it, draw contours similar to the ones in figure 32.  For all the contours, assign \b top_elevation \b0 a value of 11 and \b bottom_elevation \b0 a value of 9.5.  For the three contours on the left, assign \b specified_hydraulic_head \b0 values of 11 and \b bottom_elevation \b0 a value of 9.5.  For the contour on the right, assign \b specified_hydraulic_head \b0 a value of 10, \b bottom_elevation \b0 a value of -1, and \b follow_mesh \b0 to 1 or True.  For the middle contour on the left, assign \b concentration \b0 a value of 100.  For the rest, assign \b concentration \b0 a value of 0.\f2 
\par \pard\fi720\f1 
\par }
4210
Scribble4210
Nonaligned 3D Model: step 11



examples:001780
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 11\cf0\b0\f1\fs24 
\par \pard\fi720 
\par To set the initial conditions, make \b Initial Hydraulic Head Unit1 \b0 the active layer.  Click on the \i Layers \i0 button or select \i View|Layers\'85  \i0 Click on the \i fx \i0 button for the \b initial_hydraulic_head \b0 parameter and change the \i Expression \i0 for the parameter to 10.5.  Click the \i OK \i0 button to close the \i Expression Editor \i0 and then click the \i Done \i0 button.
\par }
4220
Scribble4220
Nonaligned 3D Model: step 12



examples:001790
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 12\cf0\b0\f1\fs24 
\par \pard\fi720 
\par To run the model, make \b SUTRA Mesh Top \b0 or \b SUTRA Mesh Bottom Unit1 \b0 the active layer and select \b PIEs|Run SUTRA\b0 .  Select a root name for the files to be created.  Click the \b OK \b0 button to export the SUTRA input files and begin running SUTRA.  After the SUTRA input files have been created, a DOS window opens and SUTRA runs in it.
\par }
4230
Scribble4230
Nonaligned 3D Model: step 13



examples:001800
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Nonaligned 3D Model: step 13\cf0\b0\f1\fs24 
\par \pard\fi720 
\par Use Model Viewer to view the results of the model as in the previous example.  Model Viewer was used to create figure 33, which shows isosurfaces of concentration along with the locations of specified pressure boundaries.
\par 
\par \cf2\{bmc 3DExampleConcentrations.bmp\}\cf0 
\par \pard\fi720\sb120\sa120\b Figure \lang1024 33\lang1033 .  Isosurfaces and boundary conditions displayed by Model Viewer.\f2\fs20 
\par \pard\fi720\b0\f1\fs24 
\par }
0
0
0
546
1 Introduction
2 Introduction=Scribble1
2 Conventions=Scribble2
2 Installation=Scribble3
2 Basic Description of Software Use for Two-Dimensional Models=Scribble4
2 Starting Argus ONE and Starting a New SUTRA Project=Scribble5
2 Accessing Online Help=Scribble7
2 Acknowledgments=Scribble8
1 Basic concepts in the SUTRA GUI
2 Basic concepts in the SutraGUI=Scribble10
2 Nodes, Elements and Cells=Scribble20
2 Two-Dimensional Domains and Meshes in the SutraGUI=Scribble25
2 Three-Dimensional Domains and Meshes in the SutraGUI=Scribble30
2 Assignment of Aquifer Properties=Scribble40
2 Assignment of Boundary Conditions and Observations=Scribble50
2 Total and Specific Sources=Scribble51
2 Time Dependence=Scribble52
2 Labeling Sources, Boundary Conditions, and Observations=Scribble53
2 Two-Dimensional Models=Scribble54
2 Three-Dimensional Models=Scribble55
2 Selecting and Assigning Properties to Nodes Using Points=Scribble60
2 Selecting and Assigning Properties to Nodes Using Lines=Scribble70
2 Selecting and Assigning Properties to Nodes Using Sheets=Scribble80
2 Selecting and Assigning Properties to Nodes Using Solids=Scribble90
2 The Follow_Mesh Parameter for Nonaligned Meshes=Scribble100
1 Specifying Nonspatial Data
2 Specifying Nonspatial Data=Scribble140
2 About Pane=Scribble150
2 Model Configuration=Scribble160
2 Model Configuration
3 Orientation of Model=Scribble170
3 Flow Conditions=Scribble180
3 Transport Conditions=Scribble190
3 Model Thickness=Scribble200
3 Type of Meshing=Scribble210
2 Headings=Scribble220
2 Structure in Z (3D Only)=Scribble230
2 3D Surfaces and Objects (3D Only)=Scribble235
2 Modes, Numerical Controls=Scribble240
2 Temporal Controls=Scribble250
2 Initial Condition Controls=Scribble255
2 Output Controls=Scribble260
2 Iterations for Non-linearity=Scribble270
2 Solver Controls=Scribble280
2 Fluid Properties=Scribble310
2 Solid Matrix, Adsorption=Scribble320
2 Production, Gravity=Scribble330
2 SutraGUI Configuration=Scribble332
2 Problem=Scribble335
2 Parameter Values - Quick Set=Scribble340
1 The Argus ONE Window and Argus ONE Layers
2 The Argus ONE Window and Argus ONE Layers=Scribble1000
2 Saving and Retrieving Projects=Scribble1010
2 Layers' Floater Window=Scribble1020
1 Specifying Spatial Data / Layer Descriptions
2 Specifying Spatial Data / Layer Descriptions=Scribble1030
2 Two-Dimensional Models
3 Two-Dimensional Models=Scribble1040
3 SUTRA GUI layer structure (3D model)=Scribble1970
3 SUTRA Model group=Scribble1050
3 SUTRA Mesh
4 SUTRA Mesh=Scribble1060
4 Parameters
5 NREG / NREG[i]=Scribble1070
5 Z / Z[i]=Scribble1080
5 POR / POR[i]=Scribble1090
5 LREG / LREG[i]=Scribble1100
5 PMAX / PMAX[i]=Scribble1110
5 PMID / PMID[i]=Scribble1120
5 PMIN / PMIN[I]=Scribble1130
5 ANGLE1 / ANGLE1_[i]=Scribble1140
5 ANGLE2 / ANGLE2_[i]=Scribble1150
5 ANGLE3 / ANGLE3_[i]=Scribble1160
5 ALMAX / ALMAX[i]=Scribble1170
5 ALMID / ALMID[i]=Scribble1180
5 ALMIN / ALMIN[i]=Scribble1190
5 ATMAX / ATMAX[i]=Scribble1200
5 ATMID / ATMID[i]=Scribble1210
5 ATMIN / ATMIN[i]=Scribble1220
5 QIN / QIN[i]=Scribble1230
5 IS_FLUID_SOURCE[i]=Scribble1240
5 UIN / UIN[i]=Scribble1250
5 time_dependent_fluid_sources([i])=Scribble1260
5 QUIN / QUIN[i]=Scribble1270
5 IS_QUIN_SOURCE[i]=Scribble1280
5 time_dependent_energy_or_solute_sources([i])=Scribble1290
5 PBC / PBC[i]=Scribble1300
5 IS_PBC_SOURCE[i]=Scribble1310
5 pUBC / pUBC[i]=Scribble1320
5 time_dependent_specified_head_or_pressure([i])=Scribble1330
5 UBC / UBC[i]=Scribble1340
5 IS_UBC_SOURCE[i]=Scribble1350
5 time_dependent_specified_concentration_or_temperature([i])=Scribble1360
5 PVEC / PVEC[I]=Scribble1370
5 PVEC_Override/PVEC_Override[i]=Scribble1375
5 UVEC / UVEC[I]=Scribble1380
5 UVEC_Override/UVEC_Override[i]=Scribble1385
5 INOB / INOB[I]=Scribble1390
5 Ucode_P_Observation=Scribble1391
5 Ucode_U_Observation=Scribble1392
5 Ucode_Flux_Observation=Scribble1393
5 Ucode_U_Flux_Observation=Scribble1394
5 Ucode_Sat_Observation=Scribble1395
3 FishNet_Mesh_Layout
4 FishNet_Mesh_Layout=Scribble1400
4 elements_in_x=Scribble1410
4 elements_in_y=Scribble1420
3 Domain Outline / unused layer1
4 Domain Outline / unused layer1=Scribble1430
4 element_size=Scribble1460
4 How to specify geologic units in cross-sectional models=Scribble1440
3 Mesh Density / unused layer2
4 Mesh Density / unused layer2=Scribble1450
4 element_size=Scribble1460
3 SUTRA Observation (Top/Bottom Unit[i])
4 SUTRA Observations=Scribble1470
4 is_observed=Scribble1471
3 UCODE Head/Pressure Observation
4 UCODE Head/Pressure Observation=Scribble1472
4 parameters
5 Obs Name=Scribble1473
5 Obs Time[i]=Scribble1480
3 UCODE Concentration/Temperature Observation
4 UCODE Concentration/Temperature Observation=Scribble1490
4 parameters
5 Obs Name=Scribble1473
5 Obs Time[i]=Scribble1480
3 UCODE Observation Fluid Flow Rate at Spec H/P
4 UCODE Observation Fluid Flow Rate at Spec H/P=Scribble1491
4 parameters
5 Obs Name=Scribble1473
5 Obs Time[i]=Scribble1480
3 UCODE Observation Solute/Heat Flow Rate at Spec H/P
4 UCODE Observation Solute/Heat Flow Rate at Spec H/P=Scribble1492
4 parameters
5 Obs Name=Scribble1473
5 Obs Time[i]=Scribble1480
3 UCODE Saturation Observation
4 UCODE Saturation Observation=Scribble1493
4 parameters
5 Obs Name=Scribble1473
5 Obs Time[i]=Scribble1480
3 GEOSPATIAL INFORMATION LAYERS
4 GEOSPATIAL INFORMATION LAYERS=Scribble1499
3 Hydrogeology
4 Hydrogeology=Scribble1500
4 Thickness=Scribble1510
4 Porosity=Scribble1520
4 Permeability / Hydraulic Conductivity
5 Permeability / Hydraulic Conductivity=Scribble1530
5 parameters
6 maximum=Scribble1540
6 middle=Scribble1550
6 minimum=Scribble1560
6 angle_of_max_to_x_axis=Scribble1570
6 horizontal angle=Scribble1580
6 vertical angle=Scribble1590
6 rotational angle=Scribble1600
4 Dispersivity
5 Dispersivity=Scribble1610
5 parameters
6 longdisp_in_max_permdir=Scribble1620
6 longdisp_in_mid_permdir=Scribble1630
6 longdisp_in_min_permdir=Scribble1640
6 trandisp_in_max_permdir=Scribble1650
6 trandisp_in_mid_permdir=Scribble1660
6 trandisp_in_min_permdir=Scribble1670
4 Unsaturated Properties
5 Unsaturated Properties=Scribble1680
3 Hydrologic Sources Group Layer
4 Hydrologic Sources Group Layer=Scribble1690
4 Sources of Fluid
5 Sources of Fluid=Scribble1700
5 total_source=Scribble1710
5 specific_source=Scribble1720
5 concentration_of_source or temperature_of_source=Scribble1730
5 time_dependence=Scribble1740
5 RESULTANT_FLUID_SOURCE=Scribble1750
5 QINUIN=Scribble1760
4 Sources of Solute / Energy
5 Sources of Solute / Energy=Scribble1770
5 total_source=Scribble1780
5 specific_source=Scribble1790
5 time_dependence=Scribble1800
5 RESULTANT_SOLUTE_SOURCES or RESULTANT_ENERGY_SOURCES=Scribble1810
3 Hydrologic Boundaries Group Layer
4 Hydrologic Boundaries Group Layer=Scribble1820
4 Specified Pressure / Hydraulic Head
5 Specified Pressure / Hydraulic Head=Scribble1830
5 specified_pressure or specified_hydraulic_head=Scribble1840
5 concentration or temperature=Scribble1850
5 time_dependence=Scribble1860
4 Specified Concentration / Temperature
5 Specified Concentration / Temperature=Scribble1870
5 specified_concentration or specified_temperature=Scribble1880
5 time_dependence=Scribble1890
3 Initial Conditions
4 Initial Conditions=Scribble1900
4 Initial Pressure/Initial Hydraulic Head
5 Initial Pressure/Initial Hydraulic Head=Scribble1910
4 Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i]
5 Initial Pressure Override Unit[i]/Initial Hydraulic Head Override Unit[i]=Scribble2265
4 Initial Concentration/Initial Temperature
5 Initial Concentration/Initial Temperature=Scribble1920
4 Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i]
5 Initial Concentration Override Unit[i]/Initial Temperature Override Unit[i]=Scribble2275
3 Map or Point Data Group Layer
4 Map or Point Data Group Layer=Scribble1930
4 Map
5 Map=Scribble1940
4 Point Data
5 Point Data=Scribble1950
2 Three-Dimensional Models
3 Three-Dimensional Models=Scribble1960
3 SUTRA GUI layer structure (3D model)=Scribble1970
3 SUTRA MODEL
4 SUTRA MODEL=Scribble1980
3 SUTRA Mesh (Top/Bottom Unit[i])
4 SUTRA Mesh (Top/Bottom Unit[i])=Scribble1990
4 Parameters
5 NREG / NREG[i]=Scribble1070
5 Z / Z[i]=Scribble1080
5 POR / POR[i]=Scribble1090
5 LREG / LREG[i]=Scribble1100
5 PMAX / PMAX[i]=Scribble1110
5 PMID / PMID[i]=Scribble1120
5 PMIN / PMIN[I]=Scribble1130
5 ANGLE1 / ANGLE1_[i]=Scribble1140
5 ANGLE2 / ANGLE2_[i]=Scribble1150
5 ANGLE3 / ANGLE3_[i]=Scribble1160
5 ALMAX / ALMAX[i]=Scribble1170
5 ALMID / ALMID[i]=Scribble1180
5 ALMIN / ALMIN[i]=Scribble1190
5 ATMAX / ATMAX[i]=Scribble1200
5 ATMID / ATMID[i]=Scribble1210
5 ATMIN / ATMIN[i]=Scribble1220
5 QIN / QIN[i]=Scribble1230
5 IS_FLUID_SOURCE[i]=Scribble1240
5 UIN / UIN[i]=Scribble1250
5 time_dependent_fluid_sources([i])=Scribble1260
5 QUIN / QUIN[i]=Scribble1270
5 IS_QUIN_SOURCE[i]=Scribble1280
5 time_dependent_energy_or_solute_sources([i])=Scribble1290
5 PBC / PBC[i]=Scribble1300
5 IS_PBC_SOURCE[i]=Scribble1310
5 pUBC / pUBC[i]=Scribble1320
5 time_dependent_specified_head_or_pressure([i])=Scribble1330
5 UBC / UBC[i]=Scribble1340
5 IS_UBC_SOURCE[i]=Scribble1350
5 time_dependent_specified_concentration_or_temperature([i])=Scribble1360
5 PVEC / PVEC[I]=Scribble1370
5 UVEC / UVEC[I]=Scribble1380
5 INOB / INOB[I]=Scribble1390
3 FishNet_Mesh_Layout (Top/Bottom Unit[i])
4 FishNet_Mesh_Layout (Top/Bottom Unit[i])=Scribble2000
4 Parameters
5 elements_in_x=Scribble1410
5 elements_in_y=Scribble1420
3 Unused layer1
4 Unused layer1=Scribble2010
3 Unused layer2
4 Unused layer2=Scribble2020
3 Hydrologic Sources: 3D Objects
4 Hydrologic Sources: 3D Objects=Scribble2030
4 Sources of Fluid Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]=Scribble2040
4 Sources of Solutes/Energy Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]=Scribble2050
3 Hydrologic Boundaries: 3D Objects
4 Hydrologic Boundaries: 3D Objects=Scribble2060
4 Specified Hydraulic Head/Pressure Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]=Scribble2070
4 Specified Concentration/Temperature Solids[i]/Points[i]/Lines[i]/Sheets Vertical[i]/Sheets Slanted[i]=Scribble2080
3 Observation Layers: 3D Objects
4 Observation Layers: 3D Objects=Scribble2090
3 TOP
4 TOP=Scribble2100
4 Elevation Top=Scribble2110
4 Hydrologic Sources
5 Hydrologic Sources =Scribble2120
5 Sources of Fluid Top
6 Sources of Fluid Top=Scribble2130
6 total_source=Scribble1710
6 specific_source=Scribble1720
6 concentration_of_source or temperature_of_source=Scribble1730
6 time_dependence=Scribble1740
6 RESULTANT_FLUID_SOURCE=Scribble1750
6 QINUIN=Scribble1760
5 Sources of Solute / Energy Top
6 Sources of Solute / Energy Top=Scribble2140
6 total_source=Scribble1780
6 specific_source=Scribble1790
6 time_dependence=Scribble1800
6 RESULTANT_SOLUTE_SOURCES or RESULTANT_ENERGY_SOURCES=Scribble1810
4 Hydrologic Boundaries
5 Hydrologic Boundaries=Scribble2150
5 Specified Pressure Top / Hydraulic Head Top
6 Specified Pressure Top / Hydraulic Head Top=Scribble2160
6 specified_pressure or specified_hydraulic_head=Scribble1840
6 concentration or temperature=Scribble1850
6 time_dependence=Scribble1860
5 Specified Concentration Top / Temperature Top
6 Specified Concentration Top / Temperature Top=Scribble2170
6 specified_concentration or specified_temperature =Scribble1880
6 time_dependence=Scribble1890
5 Observation Top
6 Observation Top=Scribble2180
3 UNIT[i]
4 UNIT[i]=Scribble2190
4 Hydrogeology Unit[i]
5 Hydrogeology Unit[i]=Scribble2200
5 Porosity Unit[i)=Scribble2210
5 Permeability Unit[i] / Hydraulic Conductivity Unit[i]
6 Permeability Unit[i] / Hydraulic Conductivity Unit[i]=Scribble2220
6 maximum=Scribble1540
6 middle=Scribble1550
6 minimum=Scribble1560
6 horizontal angle=Scribble1580
6 vertical angle=Scribble1590
6 rotational angle=Scribble1600
5 Dispersivity Unit[i]
6 Dispersivity Unit[i]=Scribble2230
6 longdisp_in_max_permdir=Scribble1620
6 longdisp_in_mid_permdir=Scribble1630
6 longdisp_in_min_permdir=Scribble1640
6 trandisp_in_max_permdir=Scribble1650
6 trandisp_in_mid_permdir=Scribble1660
6 trandisp_in_min_permdir=Scribble1670
5 Unsaturated Properties Unit[i]
6 Unsaturated Properties Unit[i]=Scribble2240
4 Initial Conditions Unit[i]
5 Initial Conditions Unit[i]=Scribble2250
5 Initial Pressure Unit[i]/Initial Hydraulic Head Unit[i]=Scribble2260
5 Initial Concentration Unit[i]/Initial Temperature Unit[i]=Scribble2270
5 BOTTOM UNIT[i]=Scribble2280
3 BOTTOM UNIT[i]
4 BOTTOM UNIT[i]=Scribble2280
3 Map or Point Data
4 Map or Point Data=Scribble2290
4 Map=Scribble2300
4 Point Data=Scribble2310
1 Creating FishNet Meshes
2 Creating FishNet Meshes=Scribble2320
1 Exporting SUTRA input files and Running SUTRA
2 Exporting SUTRA input files and Running SUTRA=Scribble2360
2 Evaluating Model Results=Scribble2370
1 Displaying Data
2 Displaying Data=Scribble2330
2 Element Data=Scribble2340
2 Node Data=Scribble2350
1 Adding And Linking New Layers
2 Adding And Linking New Layers=Scribble2380
2 Adding a Precipitation Data Layer and Linking It to Fluid Sources Layer=Scribble2390
2 Calculating a Thickness from Two New Layers or Two New Parameters=Scribble2400
1 The CheckMatchBC program
2 The CheckMatchBC program=Scribble2410
1 Summary and Conclusions
2 Summary and Conclusions=Scribble2420
1 References Cited
2 References Cited=Scribble2430
1 Example Applications of SutraGUI
2 Example Applications of SutraGUI=Scribble2440
2 Areal Ground-Water Flow Model
3 Areal Ground-Water Flow Model=Scribble2450
3 Areal flow model: step 1=Scribble2460
3 Areal flow model: step 2=Scribble2470
3 Areal flow model: step 3=Scribble2480
3 Areal flow model: step 4=Scribble2490
3 Areal flow model: step 5=Scribble2500
3 Areal flow model: step 6=Scribble2510
3 Areal flow model: step 7=Scribble2520
3 Areal flow model: step 8=Scribble2530
3 Areal flow model: step 9=Scribble2540
3 Areal flow model: step 10=Scribble2550
3 Areal flow model: step 11=Scribble2560
3 Areal flow model: step 12=Scribble2570
3 Areal flow model: step 13=Scribble2580
3 Areal flow model: step 14=Scribble2590
3 Areal flow model: step 15=Scribble2600
3 Areal flow model: step 16=Scribble2610
3 Areal flow model: step 17=Scribble2620
3 Areal flow model: step 18=Scribble2630
3 Areal flow model: step 19=Scribble2640
3 Areal flow model: step 20=Scribble2650
3 Areal flow model: step 21=Scribble2660
3 Areal flow model: step 22=Scribble2670
3 Areal flow model: step 23=Scribble2680
3 Areal flow model: step 24=Scribble2690
3 Areal flow model: step 25=Scribble2700
3 Areal flow model: step 26=Scribble2710
3 Areal flow model: step 27=Scribble2720
2 Areal Solute Transport Model
3 Areal Solute Transport Model=Scribble2730
3 Areal transport model: step 1=Scribble2740
3 Areal transport model: step 2=Scribble2750
3 Areal transport model: step 3=Scribble2760
3 Areal transport model: step 4=Scribble2770
3 Areal transport model: step 5=Scribble2780
3 Areal transport model: step 6=Scribble2790
3 Areal transport model: step 7=Scribble2800
3 Areal transport model: step 8=Scribble2810
3 Areal transport model: step 9=Scribble2820
3 Areal transport model: step 10=Scribble2830
3 Areal transport model: step 11=Scribble2840
3 Areal transport model: step 12=Scribble2850
3 Areal transport model: step 13=Scribble2860
3 Areal transport model: step 14=Scribble2870
3 Areal transport model: step 15=Scribble2880
3 Areal transport model: step 16=Scribble2890
2 Areal Solute Transport Model with Barrier
3 Areal Solute Transport Model with Barrier=Scribble2900
3 Areal solute transport model with barrier: step 1=Scribble2910
3 Areal solute transport model with barrier: step 2=Scribble2920
3 Areal solute transport model with barrier: step 3=Scribble2930
3 Areal solute transport model with barrier: step 4=Scribble2940
3 Areal solute transport model with barrier: step 5=Scribble2950
3 Areal solute transport model with barrier: step 6=Scribble2960
3 Areal solute transport model with barrier: step 7=Scribble2970
3 Areal solute transport model with barrier: step 8=Scribble2980
3 Areal solute transport model with barrier: step 9=Scribble2990
3 Areal solute transport model with barrier: step 10=Scribble3000
3 Areal solute transport model with barrier: step 11=Scribble3010
3 Areal solute transport model with barrier: step 12=Scribble3020
3 Areal solute transport model with barrier: step 13=Scribble3030
3 Areal solute transport model with barrier: step 14=Scribble3040
2 Areal Model with Transient Solute Transport
3 Areal Model with Transient Solute Transport=Scribble3050
3 Areal model with transient solute transport: step 1=Scribble3060
3 Areal model with transient solute transport: step 2=Scribble3070
3 Areal model with transient solute transport: step 3=Scribble3080
3 Areal model with transient solute transport: step 4=Scribble3090
3 Areal model with transient solute transport: step 5=Scribble3100
3 Areal model with transient solute transport: step 6=Scribble3110
3 Areal model with transient solute transport: step 7=Scribble3120
3 Areal model with transient solute transport: step 8=Scribble3130
3 Areal model with transient solute transport: step 9=Scribble3140
3 Areal model with transient solute transport: step 10=Scribble3150
3 Areal model with transient solute transport: step 11=Scribble3160
3 Areal model with transient solute transport: step 12=Scribble3170
3 Areal model with transient solute transport: step 13=Scribble3180
3 Areal model with transient solute transport: step 14=Scribble3190
3 Areal model with transient solute transport: step 15=Scribble3200
3 Areal model with transient solute transport: step 16=Scribble3210
3 Areal model with transient solute transport: step 17=Scribble3220
3 Areal model with transient solute transport: step 18=Scribble3230
3 Areal model with transient solute transport: step 19=Scribble3240
3 Areal model with transient solute transport: step 20=Scribble3250
3 Areal model with transient solute transport: step 21=Scribble3260
3 Areal model with transient solute transport: step 22=Scribble3270
2 Areal Model with Transient Solute Transport and Observations
3 Areal Model with Transient Solute Transport and Observations=Scribble3280
3 Areal model with transient solute transport and observations: step 1=Scribble3290
3 Areal model with transient solute transport and observations: step 2=Scribble3300
3 Areal model with transient solute transport and observations: step 3=Scribble3310
3 Areal model with transient solute transport and observations: step 4=Scribble3320
3 Areal model with transient solute transport and observations: step 5=Scribble3330
3 Areal model with transient solute transport and observations: step 6=Scribble3340
3 Areal model with transient solute transport and observations: step 7=Scribble3350
3 Areal model with transient solute transport and observations: step 8=Scribble3360
3 Areal model with transient solute transport and observations: step 9=Scribble3370
3 Areal model with transient solute transport and observations: step 10=Scribble3380
3 Areal model with transient solute transport and observations: step 11=Scribble3390
3 Areal model with transient solute transport and observations: step 12=Scribble3400
3 Areal model with transient solute transport and observations: step 13=Scribble3410
3 Areal model with transient solute transport and observations: step 14=Scribble3420
3 Areal model with transient solute transport and observations: step 15=Scribble3430
3 Areal model with transient solute transport and observations: step 16=Scribble3440
2 Henry Seawater-Intrusion Problem with Variable-Density Flow
3 Henry Seawater-Intrusion Problem with Variable-Density Flow=Scribble3450
3 Henry seawater-intrusion problem: step 1=Scribble3460
3 Henry seawater-intrusion problem: step 2=Scribble3470
3 Henry seawater-intrusion problem: step 3=Scribble3480
3 Henry seawater-intrusion problem: step 4=Scribble3490
3 Henry seawater-intrusion problem: step 5=Scribble3500
3 Henry seawater-intrusion problem: step 6=Scribble3510
3 Henry seawater-intrusion problem: step 7=Scribble3520
3 Henry seawater-intrusion problem: step 8=Scribble3530
3 Henry seawater-intrusion problem: step 9=Scribble3540
3 Henry seawater-intrusion problem: step 10=Scribble3550
3 Henry seawater-intrusion problem: step 11=Scribble3560
3 Henry seawater-intrusion problem: step 12=Scribble3570
3 Henry seawater-intrusion problem: step 13=Scribble3580
3 Henry seawater-intrusion problem: step 14=Scribble3590
3 Henry seawater-intrusion problem: step 15=Scribble3600
3 Henry seawater-intrusion problem: step 16=Scribble3610
3 Henry seawater-intrusion problem: step 17=Scribble3620
3 Henry seawater-intrusion problem: step 18=Scribble3630
3 Henry seawater-intrusion problem: step 19=Scribble3640
3 Henry seawater-intrusion problem: step 20=Scribble3650
3 Henry seawater-intrusion problem: step 21=Scribble3660
3 Henry seawater-intrusion problem: step 22=Scribble3670
3 Henry seawater-intrusion problem: step 23=Scribble3680
3 Henry seawater-intrusion problem: step 24=Scribble3690
3 Henry seawater-intrusion problem: step 25=Scribble3700
3 Henry seawater-intrusion problem: step 26=Scribble3710
3 Henry seawater-intrusion problem: step 27=Scribble3720
3 Henry seawater-intrusion problem: step 28=Scribble3730
3 Henry seawater-intrusion problem: step 29=Scribble3740
3 Henry seawater-intrusion problem: step 30=Scribble3750
3 Henry seawater-intrusion problem: step 31=Scribble3760
3 Henry seawater-intrusion problem: step 32=Scribble3770
3 Henry seawater-intrusion problem: step 33=Scribble3780
3 Henry seawater-intrusion problem: step 34=Scribble3790
3 Henry seawater-intrusion problem: step 35=Scribble3800
3 Henry seawater-intrusion problem: step 36=Scribble3810
3 Henry seawater-intrusion problem: step 37=Scribble3820
3 Henry seawater-intrusion problem: step 38=Scribble3830
3 Henry seawater-intrusion problem: step 39=Scribble3840
3 Henry seawater-intrusion problem: step 40=Scribble3850
2 Example Three-Dimensional Model
3 Example Three-Dimensional Model=Scribble3860
3 Example three-dimensional model: step 1=Scribble3870
3 Example three-dimensional model: step 2=Scribble3880
3 Example three-dimensional model: step 3=Scribble3890
3 Example three-dimensional model: step 4=Scribble3900
3 Example three-dimensional model: step 5=Scribble3910
3 Example three-dimensional model: step 6=Scribble3920
3 Example three-dimensional model: step 7=Scribble3930
3 Example three-dimensional model: step 8=Scribble3940
3 Example three-dimensional model: step 9=Scribble3950
3 Example three-dimensional model: step 10=Scribble3960
3 Example three-dimensional model: step 11=Scribble3970
3 Example three-dimensional model: step 12=Scribble3980
3 Example three-dimensional model: step 13=Scribble3990
3 Example three-dimensional model: step 14=Scribble4000
3 Example three-dimensional model: step 15=Scribble4010
3 Example three-dimensional model: step 16=Scribble4020
3 Example three-dimensional model: step 17=Scribble4030
3 Example three-dimensional model: step 18=Scribble4040
3 Example three-dimensional model: step 19=Scribble4050
3 Example three-dimensional model: step 20=Scribble4060
3 Example three-dimensional model: step 21=Scribble4070
3 Example three-dimensional model: step 22=Scribble4080
3 Example three-dimensional model: step 23=Scribble4090
2 Nonaligned 3D Model
3 Nonaligned 3D Model=Scribble4100
3 Nonaligned 3D Model: step 1=Scribble4110
3 Nonaligned 3D Model: step 2=Scribble4120
3 Nonaligned 3D Model: step 3=Scribble4130
3 Nonaligned 3D Model: step 4=Scribble4140
3 Nonaligned 3D Model: step 5=Scribble4150
3 Nonaligned 3D Model: step 6=Scribble4160
3 Nonaligned 3D Model: step 7=Scribble4170
3 Nonaligned 3D Model: step 8=Scribble4180
3 Nonaligned 3D Model: step 9=Scribble4190
3 Nonaligned 3D Model: step 10=Scribble4200
3 Nonaligned 3D Model: step 11=Scribble4210
3 Nonaligned 3D Model: step 12=Scribble4220
3 Nonaligned 3D Model: step 13=Scribble4230
16
*InternetLink
16711680
Courier New
0
10
1
....
0
0
0
0
0
0
*ParagraphTitle
-2147483640
Arial
0
11
1
B...
0
0
0
0
0
0
*PopupLink
0
Arial
0
8
1
....
0
0
0
0
0
0
*PopupTopicTitle
16711680
Arial
0
10
1
B...
0
0
0
0
0
0
*TopicText
-16777208
Times New Roman
0
12
0
....
0
0
36
-36
0
0
*TopicTitle
16711680
Arial
0
16
1
B...
0
0
0
0
0
0
__C++SourceCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
__DFMCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
__JScriptCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
__SQLCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
__VBCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
__VBScriptCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
__XMLCode
0
Courier New
0
10
0
....
0
0
0
0
0
0
Bullets
-16777208
Times New Roman
0
12
0
....
0
1
36
10
0
1
46
List
-16777208
Times New Roman
0
12
0
....
0
0
36
18
0
1
55
Note
-16777208
Times New Roman
0
12
0
.I..
0
0
36
0
0
0
