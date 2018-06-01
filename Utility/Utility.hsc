HelpScribble project file.
16
_vpuneq O. dvafgba-04P935
0
2
Utility PIE



TRUE

D:\PROGRA~1\JGsoft\HELPSC~1\Utility,C:\PROGRA~1\JGsoft\HELPSC~1\Utility,D:\Program Files\JGsoft\HelpScribble\Utility
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

64
10
Scribble10
Introduction



main:000010
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Introduction\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 Argus ONE\super (TM)\nosupersub  is a Geographic Information System for numerical modeling developed by Argus Interware.  It can serve as a platform for creating graphical user-interfaces for models (for example \cf2\strike Voss and others (1997)\cf3\strike0\{linkTarget=Voss1997\}\cf0  and \cf2\strike Winston (2000)\cf3\strike0\{linkTarget=Winston2000\}\cf0 ).  It can create finite-element meshes and finite-difference grids and assign properties to nodes, elements, or cells based on GIS analyses that it performs.  It can write the input files for numerical models and graphically display the results of those models.  The functionality of Argus ONE can be extended through the use of Plug-In Extensions (PIEs).  A PIE can provide an interface for a particular model, add a command to the Argus ONE menu structure, add a GIS function that can be used by Argus ONE, import data into Argus ONE, export data from Argus ONE, or implement a method of interpolating among data.
\par This report describes a number of interpolation methods, commands, and functions that have been added to Argus ONE through the use of PIEs.  The PIEs described in this report are not specific to any particular type of model but instead may find application under a variety of circumstances.  The new interpolation methods are much faster than existing interpolation methods in Argus ONE and can also incorporate anisotropy.  The commands listed in tables 1 and 2 are useful for copying, editing, converting, or importing information.  The commands listed in table 2 are hidden; special steps must be taken before they appear in the menu structure.  The functions listed in tables 3 and 4 provide convenient methods for evaluating, converting, or storing information.  The functions in table 4 are hidden and do not appear in the Argus ONE Expression editor unless special steps are taken to reveal them but still will be accepted by Argus ONE.  The hidden commands and functions were hidden for three reasons.  (1) The hidden commands circumvent protections built into Argus ONE against users inadvertently changing or deleting information.  (2) Some of the hidden functions can not be used in the Argus ONE parameters because they either may allocate memory that must be released later by a call to another function or because they use data stored in a previous function call.  (3) The hidden functions provide specialized capabilities that are unlikely to be useful to most users although they are used extensively in the export template for the MODFLOW GUI (\cf2\strike Winston, 2000\cf3\strike0\{linkTarget=Winston2000\}\cf0 ). 
\par Some of the PIEs described in this report, such as the List and BlockList PIEs, have been used in the MODFLOW GUI (\cf2\strike Winston, 2000\cf3\strike0\{linkTarget=Winston2000\}\cf0 ) or SUTRA GUI (\cf2\strike Voss and others, 1997\cf3\strike0\{linkTarget=Voss1997\}\cf0 ) and are distributed with them.  Others have not been released previously.
\par The purpose for creating these PIEs was to meet needs within the U.S. Geological Survey (USGS).  The USGS is using Argus ONE as a graphical-user interface for its ground-water modeling programs.  Argus ONE was chosen for this purpose because it has an open architecture that allows the USGS to customize the graphical-user interfaces with less effort than would be required if they were created from scratch.  Argus ONE has numerous GIS functions that facilitate the convertion of graphical information to the numerical information required by ground-water modeling programs.  In some cases, however, Argus ONE did not have certain capabilities that would be useful to USGS scientists using the graphical-user interfaces.  For example, Argus ONE did not have a method for importing data from USGS digital elevation models.  To remedy the situation, a PIE command (described in this report) was developed that could read USGS digital elevation models and convert the data into a format that could be used by Argus ONE.  Most of the commands and functions described in this report were developed for similar reasons.  In a few cases, however, commands or functions described in this report duplicate capabilities already present in Argus ONE.  These commands and functions were a byproduct of developing other commands and functions not present in Argus ONE.  In some cases, the new functions may be faster than the corresponding functions in Argus ONE.  It would have been possible to use such functions only for internal calculations.  However, making the functions available as independent functions required almost no effort.  In specific cases, the new functions can facilitate better performance of the graphical user interface. 
\par An example of a command that partially duplicates Argus ONE functionality but also adds new functionality is the \cf2\b\strike Edit Grid\cf3\strike0\{linkID=130\}\cf0\b0  command.  In Argus ONE, the user can set the grid angle by typing a value of the grid angle, but there is no graphical way of specifying the grid angle.  With the \cf2\b\strike Edit Grid\cf3\strike0\{linkID=130\}\cf0\b0  command, the user can specify the grid angle graphically.  In Argus ONE, the user can set the position of an interior grid line by double-clicking on it or by dragging it to a new position.  However, Argus ONE does not have a similar capability for the exterior grid lines.  With the \cf2\b\strike Edit Grid\cf3\strike0\{linkID=130\}\cf0\b0  command, the user can set the positions of both interior and exterior grid lines.
\par The PIEs described in this report are written in Object Pascal using the Borland Delphi version 5 compiler.  When published, the source code will be available at \cf3\{html=<a href="http://water.usgs.gov/nrp/gwsoftware/"  target=_blank>http://water.usgs.gov/nrp/gwsoftware/</a>\}\cf0 . 
\par \pard\f1 
\par }
20
Scribble20
Installation instructions



main:000020
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Installation instructions\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 The Utility PIE may be installed by placing the dynamic link library (dll) in the Argus Interware\\ArgusPIE directory or a subdirectory of it.  In cases where the PIE has a help system, the help system files (with the extensions .hlp and .cnt) must be placed in the same directory as the dll.  Normal practice is to create a subdirectory in the ArgusPIE directory with the same name as the dll except without the dll extension and place the files there.  For example, the Utility PIE would normally be installed as "Argus Interware/ArgusPIE/Utility/Utility.dll".
\par Some of the commands or functions described in this report are now implemented in the Utility.dll whereas previously they were implemented in several different dll's.  The new versions replace and often improve upon the previous versions so the dll's containing the previous versions must be removed when installing the new versions.  The dll's that have been replaced are EditContoursPie.dll, EditDataLayer.dll, GriddedImport.dll, JoinContoursPie.dll, MoreConversions.dll, EvalAtXY.dll, and RotateCells.dll.  \b If the conflicting dll's are not removed, the Utility.dll can not be used.\b0 
\par Two of these PIEs (JoinContoursPie.dll and MoreConversions.dll) were written by the author prior to joining the USGS.  Two of them (EditContoursPie.dll, RotateCells.dll) were documented as part of version 3 of the MODFLOW GUI (\cf2\strike Winston, 1999\cf3\strike0\{linkTarget=Winston1999\}\cf0 ).  Three more (GriddedImport.dll, EvalAtXY.dll, and EditDataLayer.dll) were documented as part of version 4 of the MODFLOW GUI (\cf2\strike Winston, 2000\cf3\strike0\{linkTarget=Winston2000\}\cf0 ).  
\par \pard\f1 
\par }
30
Scribble30
Navigating



main:000030
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Navigating\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 A number of the dialog boxes described in this report display spatial data and allow the user to zoom in on or out of an area of interest or to pan to a different location.  Standardized buttons have been used for these operations.  To zoom out all the way, click the \b Zoom Extents\b0  button \cf2\f1\{bmc zoomextents.bmp\}\cf0\f2 .  To zoom in by a factor of two, click the \b Zoom In\b0  button \cf2\f1\{bmc zoomin.bmp\}\cf0\f2 .  To zoom out by a factor of two, click the \b Zoom Out\b0  button \cf2\f1\{bmc zoomout.bmp\}\cf0\f2 .  To zoom to a specified region, click the \b Zoom\b0  button \cf2\f1\{bmc zoom.bmp\}\cf0\f2  and select to region to zoom in on.  To select the region, click the mouse in one corner of the region, hold down the mouse button while moving to the opposite corner, and release the mouse button.  To pan, click the \b Pan\b0  button \cf2\f1\{bmc pan.bmp\}\cf0\f2  and then hold down the mouse button while moving the mouse to a new position.
\par \pard\f1 
\par }
40
Scribble40
Acknowledgments



main:000040
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Acknowledgments\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 I would like to thank Allen M. Shapiro and Bernard J. Stolp for their helpful reviews of this manuscript.  I would also like to thank Leonard Konikow, Clifford Voss, Alden Provost, George Z. Hornberger, Allen Shapiro, and Martha Scholl for helpful suggestions.
\par Thanks to Peter H. Dana for permission to use his map of UTM zones.
\par \pard\f1 
\par }
50
Scribble50
Interpolation Methods
QT_Nearest;QT_Mean of 5 Nearest;QT_Mean of 20 Nearest;QT_Inv Dist Sq of 5 Nearest;QT_Inv Dist Sq of 20 Nearest;QT_Nearest (Anis = 100);QT_Mean of 5 Nearest (Anis = 100);QT_Mean of 20 Nearest (Anis = 100);QT_Inv Dist Sq of 5 Nearest (Anis = 100);QT_Inv Dist Sq of 20 Nearest (Anis = 100);Modified Shepard;Modified Shepard


main:000050
Writing



FALSE
38
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\froman\fcharset0 Times New Roman;}{\f4\fswiss\fprq2\fcharset0 Helv;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Interpolation Methods\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 Several new\cf2  interpolation methods are included in Utility.dll.  The new methods have two advantages over existing interpolation methods in Argus ONE.
\par 
\par 1. They are much faster.
\par 2. They can incorporate anisotropy.
\par 
\par To test the speed of the new interpolation methods, a test case was constructed with a grid containing approximately 500 cells.  The grid had one parameter that was linked to a data layer containing approximately 900,000 points (from a digital elevation model).  When the interpolation method used for the data layer was one of the new methods, coloring the grid the first time took about 7 seconds.  If the Argus ONE window was minimized and then maximized again, recoloring the grid took about 1 second.  If the default interpolation method for the data layer was used, coloring the grid took about 1 minute regardless of whether it was being colored for the first time or was being recolored.  Other interpolation methods all took even longer.
\par There are 11 new interpretation methods as listed below.
\par 
\par QT_Nearest
\par QT_Mean of 5 Nearest
\par QT_Mean of 20 Nearest
\par QT_Inv Dist Sq of 5 Nearest
\par QT_Inv Dist Sq of 20 Nearest
\par QT_Nearest (Anis = 100)
\par QT_Mean of 5 Nearest (Anis = 100)
\par QT_Mean of 20 Nearest (Anis = 100)
\par QT_Inv Dist Sq of 5 Nearest (Anis = 100)
\par QT_Inv Dist Sq of 20 Nearest (Anis = 100)
\par Modified Shepard
\par 
\par \b QT_Nearest\b0  returns the value of the data point that is closest to the location for which a value is requested.  This is exactly equivalent to the NN2D method (except faster).  In the event that two locations are equally distant from the location for which a value is requested, an arbitrary choice between the values will be made.
\par \b QT_Mean of 5 Nearest\b0  finds the five data points that are closest to the location for which a value is requested and returns their mean value.  However, it is possible that there will be additional data points that are no further way from the desired location as the point that is the fifth most distant from it.  If that is the case, all data points that are at the same distance as the fifth most distant data point will be included in the calculation.
\par \b QT_Mean of 20 Nearest\b0  is the same as \b QT_Mean of 5 Nearest\b0  except that it uses the 20 closest points rather than the five closest points.
\par \b QT_Inv Dist Sq of 5 Nearest\b0  retrieves the five closest data points to the search location in the same way as \b QT_Mean of 5 Nearest\b0  and then calculates a weighted mean of the data points.  The weights applied to each data point are the inverses of the square of their distances from the search location.  (In the event that one or more data points lies exactly at the search location, the inverse of the distance can not be calculated so the value that is returned is the mean of the values of all the data points that lie exactly at the search location.)
\par \b QT_Inv Dist Sq of 20 Nearest\b0  is the same as \b QT_Inv Dist Sq of 5 Nearest\b0  except that it uses the 20 closest points rather than the five closest points.
\par \b QT_Nearest (Anis = 100)\b0   is the same as \b QT_Nearest \b0 except that the Y coordinates of all the data points and the search location are multiplied by 100 before performing any operations.  This would be useful for performing interpolations in cross sectional models where aquifer properties are typically much more continuous in the horizontal than in the vertical direction.
\par The remaining anisotropic methods are the same as their isotropic equivalents except that the Y coordinates are all multiplied by 100.  For instance, \b QT_Mean of 5 Nearest (Anis = 100)\b0  is the same as \b QT_Mean of 5 Nearest\b0  except that the Y coordinates of all the data points and the search location are multiplied by 100 before performing any operations.  
\par The reason for the "QT" in the name of all these interpolation methods is that the data are stored in a data structure known as a Quadtree (\cf3\strike Stephens, 1998\cf4\strike0\{linkTarget=Stephens1998\}\cf2 ).  The advantage of using a Quadtree is that it can make retrieving data of the sort required by interpolation methods much faster than would be required by a sequential search through the data.
\par \b Modified Shepard\b0  is a modification of the method presented in \cf3\strike\f1 Renka (1988)\cf4\strike0\{linkTarget=Renka\}\cf0 .  It uses a weighted mean of the data points with a specified distance of the evaluation point.  If no point is within the specified distance, it uses the closest data point.  The maximum value the method can return is the highest value in the data set plus 20% of the range of data values.  Similarly, the lowest value the method can return is the lowest value in the data set minus 20% of the range of data values.  If there are fewer than 6 points in the data set, the value that is returned is the average value of all the data points.
\par The \b Modified Shepard\b0  method works best with data sets of moderate size and fairly uniform distribution over the entire mesh or grid.  In some cases, the \b Modified Shepard\b0  method fails because of an unsatisfactory distribution of data points.  When that happens, it will beep and return a value of 0 at all locations.
\par \pard\fi700\sb100\sa100 The \b Triangle Interpolation\b0  method works by generating a \f3 unconstrained \f1 Delaunay triangulation of the points to be interpolated. \f3 If a location where a value is needed is inside one of the triangles, the value assigned to that location will be calculated by fitting a plane to the three points of the triangle and determining the height of the plane at the location of interest. Other locations will be assigned the value that would have been assigned to the closes location on the convex hull of the data points. This method was created by Renka (\cf3\strike 1996a\cf4\strike0\{linkTarget=Renka96a\}\cf0 , \cf3\strike b\cf4\strike0\{linkTarget=Renka96b\}\cf0 ). Interpolated values returned by \b\f1 Triangle Interpolation\b0  \f3 are never higher than the highest value at any data point or lower than the lowest value at any data point. 
\par \pard\sb100\sa100\cf2\f4 
\par \pard\cf0\f1 
\par }
60
Scribble60
Commands



main:000060
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Commands\cf0\b0\f1\fs24 
\par 
\par \pard\fi680\f2 The commands described here are all implemented in the file Utility.dll.  The commands appear in the Argus ONE menus.  Commands are in \b bold\b0  type to help distinguish them from the surrounding text although other items may also in bold type.  In the description of commands, a vertical bar (\b |\b0 ) is used separate menu items from submenu items.  For example, and instruction to select \b PIEs|Edit \b0 means to select the \b PIEs\b0  menu item and then to select the \b Edit \b0 submenu item from the PIEs menu.
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\cf2\strike\f1 Table 1.  Commands added to Argus ONE in Utility.dll\cf3\strike0\{linkID=70\}\cf0 
\par \cf2\strike\f2{\pntext\f3\'B7\tab}Table 2.  Hidden Commands Added to Argus ONE in Utility.dll\cf3\strike0\{linkID=80\}\cf0 
\par \cf2\strike\f1{\pntext\f3\'B7\tab}Edit...\cf3\strike0\{linkID=90\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}Import...\cf3\strike0\{linkID=170\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}Convert...\cf3\strike0\{linkID=239\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}Show Layer Dendencies\cf3\strike0\{linkID=285\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}Hidden Commands\cf3\strike0\{linkID=290\}\cf0 
\par }
70
Scribble70
Table 1.  Commands added to Argus ONE in Utility.dll



main:000070
Writing



FALSE
28
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Table 1.  Commands added to Argus ONE in Utility.dll\cf0\b0\f1\fs24 
\par 
\par \pard\fi-4820\li4820\tx4860\b\f2 Command\tab Purpose
\par \pard\fi-4820\li4820\sa80\tx4860\lang2060\b0 PIEs|Edit|\cf2\strike Edit Contours...\cf3\strike0\{linkID=100\}\cf0\tab\lang1033 Editing the exact positions of nodes on contours
\par \lang2060 PIEs|Edit|\cf2\strike DeclutterContours...\cf3\strike0\{linkID=110\}\cf0\tab\lang1033 Removing extra nodes from contours
\par \lang2060 PIEs|Edit|\cf2\strike Join Contours...\cf3\strike0\{linkID=120\}\cf0\tab\lang1033 Joining together open contours whose ends match exactly and which have exactly the same contour values
\par PIEs|Edit|\cf2\strike Edit Grid...\cf3\strike0\{linkID=130\}\cf0\tab Creating and editing grids
\par PIEs|Edit|\cf2\strike Edit Data...\cf3\strike0\{linkID=140\}\cf0\tab Editing the locations and values of data points on a data layer
\par PIEs|Edit|\cf2\strike Create Parameters in Multiple Layers...\cf3\strike0\{linkID=150\}\cf0\tab Creates identical copies of parameters in multiple layers
\par PIEs|Edit|\cf2\strike Set Multiple Parameters...\cf3\strike0\{linkID=160\}\cf0\tab Sets the value of multiple parameters in multiple layers in one step
\par PIEs|Edit|\cf2\strike Move Model...\cf3\strike0\{linkID=165\}\cf0\tab Move the positions of all the information on Domain Outline, Information TriMesh, QuadMesh, and Data layers by a user-specified distance in the X and Y directions.\cf3 
\par \cf0 PIEs|Import|\cf2\strike Import Gridded Data...\cf3\strike0\{linkID=180\}\cf0\tab Importing data points at the centers of grid blocks
\par PIEs|Import|\cf2\strike Import Points from Spreadsheet...\cf3\strike0\{linkID=190\}\cf0  \tab Importing point contours from a spreadsheet
\par PIEs|Import|\cf2\strike Import Contours from Spreadsheet...\cf3\strike0\{linkID=200\}\cf0  \tab Importing point, open, or closed contours from a spreadsheet
\par PIEs|Import|\cf2\strike Sample DEM Data...\cf3\strike0\{linkID=210\}\cf0\tab Import Digital Elevation Models into Argus ONE
\par PIEs|Import|\cf2\strike Copy Tri Mesh...\cf3\strike0\{linkID=220\}\cf0\tab Copying a finite-element mesh with triangular elements to another mesh layer
\par PIEs|Import|\cf2\strike Copy Quad Mesh...\cf3\strike0\{linkID=220\}\cf0\tab Copying a finite-element mesh with quadrilateral elements to another mesh layer
\par PIEs|Import|\cf2\strike Paste Contours on Clipboard to Multiple Layers...\cf3\strike0\{linkID=225\}\cf0\tab Putting copiles of the same contours on several layers.
\par PIEs|Convert|\cf2\strike Contours To Data...\cf3\strike0\{linkID=240\}\cf0\tab Converting contours to data points on a data layer
\par PIEs|Convert|\cf2\strike Data to Contours...\cf3\strike0\{linkID=250\}\cf0\tab Converting data points on a data layer to point contours
\par PIEs|Convert|\cf2\strike Reverse Contours on Clipboard...\cf3\strike0\{linkID=260\}\cf0\tab Reversing the order in which nodes occur in a contour
\par PIEs|Convert|\cf2\strike Mesh Objects To Contours... \cf3\strike0\{linkID=270\}\cf0\tab Creating contours along the edges of selected finite elements
\par PIEs|Convert|\cf2\strike Mesh To Contours...\cf3\strike0\{linkID=280\}\cf0  \tab Creating closed contours that duplicate the shapes of finite elements
\par \pard\fi-4820\li4820\tx4860 
\par \pard\f1 
\par }
80
Scribble80
Table 2.  Hidden Commands Added to Argus ONE in Utility.dll



main:000080
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Table 2.  Hidden Commands Added to Argus ONE in Utility.dll\cf0\b0\f1\fs24 
\par 
\par \pard\fi-3220\li3220\tx3240\tx9360\b\f2 Command\tab Purpose
\par \pard\fi-3220\li3220\sa80\tx3240\tx9360\b0 PIEs|\cf2\strike Set Parameter Locks\cf3\strike0\{linkID=300\}\cf0\tab Hidden command that locks or unlocks multiple parameters in one step
\par \pard\fi-3220\li3220\tx3240\tx9360 PIEs|\cf2\strike Delete Multiple Layers\cf3\strike0\{linkID=310\}\cf0\tab Hidden command that deletes multiple layers in one step.\f1 
\par }
90
Scribble90
Edit...



main:000090
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Edit...\cf0\b0\f1\fs24 
\par 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li200\cf2\strike Edit Contours...\cf3\strike0\{linkID=100\}
\par \cf2\strike{\pntext\f2\'B7\tab}DeclutterContours...\cf3\strike0\{linkID=110\}
\par \cf2\strike{\pntext\f2\'B7\tab}Join Contours...\cf3\strike0\{linkID=120\}
\par \cf2\strike{\pntext\f2\'B7\tab}Edit Grid...\cf3\strike0\{linkID=130\}
\par \cf2\strike{\pntext\f2\'B7\tab}Edit Data...\cf3\strike0\{linkID=140\}
\par \cf2\strike{\pntext\f2\'B7\tab}Create Parameters in Multiple Layers...\cf3\strike0\{linkID=150\}
\par \cf2\strike{\pntext\f2\'B7\tab}Set Multiple Parameters...\cf3\strike0\{linkID=160\}\cf0 
\par \cf2\strike{\pntext\f2\'B7\tab}Move Model...\cf3\strike0\{linkID=165\}\cf0 
\par }
100
Scribble100
Edit Contours...
Edit Contours...


main:000100
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Edit Contours...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\}\cf0\b0 
\par 
\par \pard\fi720\f2 The \b Edit Contours\b0  command is used to edit the positions of individual vertices in contours.  To use it, select \b PIEs|Edit...|Edit Contours\b0 ...  You will be prompted for a layer name.  Select the layer for which you wish to edit a vertex position.  All the contours from the layer will be read and displayed.  Click on any vertex, and a dialog box will appear in which you can edit the vertex position.  When you are done, click OK.  The layer will be cleared and a new set of contours will be written with the new vertex positions.
\par Users of the \b Edit Contours\b0  command should be aware of the following characteristics of the command before using it.
\par \pard\fi-360\li1440\tx720\tx1440 1.\tab The contour parameter values will be the same as they were originally; however, any parameters that were set using \i Expressions\i0  will now be specified in the contour itself.  To go back to having the contour value being set by the expression for the parameter, edit the contour and delete the parameter value.
\par \pard\fi-360\li1440 2.\tab The command does not check for contours that are illegal in Argus ONE.  A contour is illegal if it crosses another contour and "Allow Intersection" is not turned on for that layer.  A contour is also illegal if it crosses itself even if "Allow Intersection" is turned on.  Argus ONE will not accept illegal contours so illegal contours will be lost if you specify contours that are illegal.  For this reason, it is best to back-up your file before using the Edit Contours command.  If you anticipate wanting to import contours that touch, you should select "Allow Intersection" beforehand.
\par \pard\f1 
\par Up
\par }
110
Scribble110
DeclutterContours...
DeclutterContours...


main:000110
Writing



FALSE
35
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 DeclutterContours...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\}
\par \cf0\b0 
\par \pard\fi720\f2 Reducing the number of vertices in a layer can make the export process faster.  If the vertices are much more closely spaced than the grid spacing, reducing the number of vertices may have little effect on the model inputs.  To use this command, select\b  PIEs|Edit...|Declutter Contours\b0 ...  A dialog box will appear with a list of information layers.  Select the Domain Outline or Information layer in which you wish to reduce the number of vertices.  Another dialog box will appear in which you should enter the desired vertex spacing and an angle used to control which vertices are removed.  
\par 
\par If \b Delete nodes based on spacing\b0  is checked, nodes will be deleted if the combined lengths of the segments of which the node is an endpoint are less than the desired spacing.
\par If \b Delete nodes based on angle\b0  is checked, nodes will be deleted if the angle at the node position is greater than the desired angle.
\par If both are checked, both criteria must be met before a node can be deleted.
\par 
\par The effect of \b Declutter Contours\b0  is illustrated in Figure 1.  Figure 1A shows contours with very closely spaced vertices many of which have been eliminated in Figure 1B by using the \b Declutter Contours\b0  command. 
\par 
\par \cf3\{bmc declutterbefore.bmp\}\cf0 
\par \b Figure 1A.
\par \b0 
\par \cf3\{bmc declutterafter.bmp\}\cf0 
\par \b Figure 1B.
\par \b0 
\par \pard\li720\b Figure 1.  Effect of using the Declutter Contours command.  (A) Before.  (B) After.\b0 
\par \pard\fi720 
\par Warning #1. A word of warning is in order about the \b Declutter Contours\b0  command.  After removing vertices, some contours that previously did not overlap may overlap and the geometric relationships among contours may differ.  For example, in Figure 2, the -200 ft contour has been reduced to a single point that is no longer inside the -150 ft contour as it was before.  The user should check the contours for such problems after using this command.
\par 
\par \cf3\{bmc declutterbefore2.bmp\}\cf0 
\par \b Figure 2A.\b0 
\par 
\par \cf3\{bmc declutterafter2.bmp\}\cf0 
\par \b Figure 2B.\b0 
\par 
\par \pard\li720\b Figure 2.  If used improperly, the Declutter Contours command can result in contours that overlap or that no longer show correct geometric relationships.  (A) The contours before the Declutter Contours command was used.  (B) The contours after the Declutter Contours command was used.  Note that the -200 ft. contour is outside the -150 ft contour after the Declutter Contours command was used.\b0 
\par \pard\fi720 
\par \cf3\{target=Warning\}\cf0 Warning #2. Both the \cf2\b\strike Join Contours\cf3\strike0\{linkID=120\}\cf0\b0  (to be described next) and \b Declutter Contours\b0  commands first clear the layer before writing to it.  If there is an error when writing the data to the layer, this will result in loss of data.  An error might occur in the \b Declutter Contours\b0  command if some of the contours cross themselves after some vertices are removed.  Thus it is a good idea to save the Argus ONE file before running either of these PIEs.  It usually would not cause an error if contours crossed each other because the \b Declutter Contours\b0  command automatically turns on "Allow Intersection" for the information layer that it is using.  However, "Allow Intersection" is not allowed for Domain Outline layers so for them, it would cause an error.
\par \pard\f1 
\par }
120
Scribble120
Join Contours...
Join Contours...


main:000120
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Join Contours...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\}
\par \cf0\b0 
\par \pard\fi720\f2 You may sometimes wish to join contours together to make it easier to manipulate them.  To join contours together, select \b PIEs|Edit...|Join Contours\b0 ...  A dialog box will appear listing the information layers.  Select the layer in which you want to combine contours.  The contours will be read from the layer.  If any two contours have exactly the same starting or ending point and all their parameter values are the same, those contours will be combined into a single contour (Figure 3).  
\par 
\par \cf3\{bmc joincontoursbefore.bmp\}\cf0 
\par Figure 3A.
\par 
\par \cf3\{bmc joincontoursafter.bmp\}\cf0 
\par Figure 3B.
\par 
\par \pard\li720\b Figure 3. Effect of the Join Contours command (A) Before the Join Contours command is applied, there are a large number of contours that meet at their ends and that have exactly the same contour values.  Each contour has its own label.  (B) After the Join Contours command is applied, these contours have been joined together.\b0 
\par \pard\fi720 
\par If two contours have starting or ending points that are even slightly different, the contours will not be combined.  To ensure that such contours are combined, make sure the "Special|Allow Intersection" is checked.  Then move the end of one of the contours close to the end of the other.  The cursor will change to a hollow cross to indicate that it has detected another vertex.  When you release the mouse, the vertex will be placed exactly over the position of the other vertex.
\par 
\par See: \cf2\strike Warning\cf3\strike0\{linkTarget=Warning\}\cf0\f1 
\par }
130
Scribble130
Edit Grid...
Edit Grid...


main:000130
Writing



FALSE
41
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\froman\fprq2 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Edit Grid...\cf0\b0\fs20 
\par \f1\fs24 
\par \b\f2 Under \cf2 PIEs|Edit...\cf3\{linkID=90\}
\par \cf0\b0\f1 
\par \pard\fi720\f3 The \b Edit Grid\b0  command is used for creating and editing grids.  The user can move or rotate the grid, or add, delete, or move rows and columns.  The user can also subdivide rows and columns or specify the width or positions individual rows and columns.  To ensure numerical stability and accuracy during model computation, it is a good idea to make sure that the ratio between the widths of adjacent rows and columns is less than or equal to a 1.5 (\cf2\strike Anderson and Woessner, 1992\cf3\strike0\{linkTarget=AndersonWoessner\}\cf0 ).  The \b Edit Grid\b0  command can automatically adjust an existing grid or create a new one that meets this critierion.
\par To start the Edit Grid command, select \b PIEs|Edit...|Edit Grid\b0 ...  You will be prompted for the name of the grid layer whose grid you want to edit or you can choose to create a new grid layer.  You will also be prompted for the type of grid (Block-Centered or Grid-Centered).  If you decide to create a new grid layer, you can use either existing Domain Outline and Density layers or you can create new ones.  Once you have selected or created the grid layer, the main dialog box will appear.  It will have a copy of the grid (if there is one) on the grid layer you selected.  You can edit the grid in this dialog box.
\par \fs28 Moving the Grid
\par \fs24 To \b move the grid\b0 , you change the coordinates of the grid origin: the corner of the grid at column 1, row 1.  There are two ways to change the coordinates of the grid origin.
\par 1. Type the values of the X and Y coordinates of the grid origin in the appropriate edit boxes.
\par 2. Click on the \b arrow \b0 button \cf3\{bmc arrow.bmp\}\cf0 .  Next, click inside the grid.  The cursor will change to a hand pointer.  While holding the mouse button down, move to the location where you would like the grid to be.  A gray outline of the grid will move along with the mouse.  When you release the mouse button, the coordinates of the grid origin will be moved to reflect the position you specified.  
\par \fs28 Rotate the Grid
\par \fs24 There are three ways to \b rotate the grid\b0 .
\par 1. Type the angle of the grid into the edit box labeled Grid Angle.
\par 2. Rotate the knob at the bottom of the dialog box.  \cf3\{bmc knob.bmp\}\cf0 
\par 3. Click on the \b rotate \b0 button \cf3\{bmc rotate.bmp\}\cf0 .  Next, click inside the grid.  The cursor will change to a hand pointer.  While holding the mouse button down, move to the location where you would like the grid to be.  A gray outline of the grid will rotate along with the mouse.  When you release the mouse button, the angle of the grid will be changed to reflect the position you specified.  
\par \fs28 Moving Grid Lines
\par \fs24 To \b move grid lines\b0 , click on the \b move column\b0  \cf3\{bmc movecolumn.bmp\}\cf0  or \b move row\b0  \cf3\{bmc moverow.bmp\}\cf0  button.  Then move the mouse over the column or row line you wish to move.  The cursor will change to an image similar to those on the buttons when the cursor is over a column or row.  Click the mouse button and hold it down.  As you move the mouse, an image of the column or row will follow the mouse.  When you release the mouse, the column or row will be moved.  You can also move grid lines by specifying column and row positions or by specifying column and row widths as described in \cf2\strike Edit row and column widths or positions\cf3\strike0\{linkID=135\}\cf0 .
\par \fs28 Adding Grid Lines
\par \fs24 To \b add row or column grid lines\b0 , click on the \b add column\b0  \cf3\{bmc addcolumn.bmp\}\cf0  or \b add row\b0  \cf3\{bmc addrow.bmp\} \cf0 button.  Then move the mouse to where you wish to add a column or row.  When you click the mouse button and release it, a new column or row will be added at the mouse position.  As you move the mouse, an image of the new column or row boundary will follow the mouse.  You can also add grid lines by specifying column and row positions or by specifying column and row widths as described in \cf2\strike Edit row and column widths or positions\cf3\strike0\{linkID=135\}\cf0 .
\par \fs28 Changing the Width of Rows or Columns
\par \fs24 To \b change the width of rows or columns\b0 , click on the \b column width\b0  \cf3\{bmc columnwidths.bmp\}\cf0  or \b row height\b0  \cf3\{bmc rowheights.bmp\} \cf0 button.  Then move the mouse over one of the columns or rows whose width you wish to change.  Hold down the left mouse button and, if desired, move the mouse to another column or row.  When you release the mouse button, a dialog box will appear where you can enter a new width for all the selected columns or rows.  As you move the mouse with the button down, the selected columns or rows will be shown in gray.  You can also change the width of rows or columns by specifying column and row positions or by specifying column and row widths as described later in this section.
\par \fs28 Deleting Grid Lines
\par \fs24 To \b delete grid lines\b0 , click on the \b delete\b0  button \cf3\{bmc delete.bmp\}\cf0 .  Then move the mouse over one of the grid lines that you wish to delete and click the mouse button.  As you move the mouse with the button down, the selected columns or rows will be shown in gray and the cursor will change to an X.  You can also delete grid lines by specifying column and row positions or by specifying column and row widths as described later in this section.
\par \fs28 Subdividing Rows or Columns
\par \fs24 To \b subdivide rows or columns\b0 , click on the \b subdivide\b0  button \cf3\{bmc subdivide.bmp\}\cf0 .  Then move the mouse over one of the columns or rows whose width you wish to change.  Hold down the left mouse button and, if desired, move the mouse to another column or row.  When you release the mouse button, a dialog box will appear where you can enter the number of columns and rows that you wish to subdivide the selected columns or rows into.  If you enter a number greater than one for either and click the OK button, each selected columns and row will be subdivided into the number of columns and rows you specify.  As you move the mouse with the button down, the selected columns or rows will be shown in gray.  You can also subdivide rows or columns by specifying column and row positions or by specifying column and row widths as described below.
\par \fs28 Specifying Row and Column Positions
\par \fs24 To \b specify row and column positions\b0 , click on the \b Column/Row Positions\b0  button \cf3\{bmc editpositions.bmp\}\cf0 .  In the dialog box, you can increase or decrease the number of columns or rows and enter new positions for columns or rows.  The positions don't need to be in order because they will be arranged automatically.  See: \cf2\strike Edit row and column widths or positions\cf3\strike0\{linkID=135\}\cf0  for more detail.
\par \fs28 Specifying Row and Column Widths
\par \fs24 To \b specify row and column widths\b0 , click on the \b Column/Row Widths\b0  button\cf3  \{bmc editwidths.bmp\}\cf0 .  In the dialog box, you can increase or decrease the number of columns or rows and enter new widths for the columns or rows.  You can drag rows in the table to rearrange them. See: \cf2\strike Edit row and column widths or positions\cf3\strike0\{linkID=135\}\cf0  for more detail.
\par \fs28 Adjusting Row and Column Boundaries
\par \fs24 According to \cf2\strike Anderson and Woessner (1992)\cf3\strike0\{linkTarget=AndersonWoessner\}\cf0 , the maximum ratio between adjacent row or column widths should usually be less than or equal to 1.5.  They also recommend that the maximum ratio between the length and width of individual cells should be less than 10.  Numerical difficulties in solving the model equations arise less frequently in models with grids that meet these criteria.  
\par To \b adjust the row and column boundaries\b0  so that the ratio between the size of adjacent rows and columns is less than a specified value, first, enter a number greater than 1 in the grid smoothing criterion edit box.  This number represents the maximum desired ratio between the sizes of adjacent columns or rows.  Then click the \b smooth grid\b0  button \cf3\{bmc smoothgrid.bmp\}\cf0 . \cf3  \cf0 The positions of the grid lines will be changed in an attempt to satisfy the criterion.  If it doesn't succeed, the maximum ratio in the grid will be displayed in a warning message.  Clicking the button again may reduce the ratio further. 
\par \fs28 Creating Grids
\par \fs24 If there isn't a grid already, you can add row or column grid lines\cf3  \cf0 to create it as described above.  If you want to \b create a grid\b0  using information from the Domain Outline and Density layers, first set the grid angle and smoothing criterion to the desired value.  Then click on the \b Magic Wand\b0  button \cf3\{bmc wand.bmp\}\cf0 .  A dialog box will appear in which you may select the names of the Domain Outline and Density layers and the type of grid to be created.  When you have done this, the grid will be created.
\par When you click the \b OK\b0  button, your edited grid will be imported into Argus ONE.  \b However, all the cells in the grid will be active.\b0   To deactivate the cells outside the domain outline, click with the Argus ONE "Magic Wand" button inside the domain outline and choose "Deactivate".  When the operation has finished, all cells outside the Domain outline will be shaded to show they are inactive.
\par \pard\f4 
\par \pard\fi700\f3 The \b Edit Grid\b0  command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\cf4\f1 
\par \pard\cf0\f4 
\par }
135
Scribble135
Edit row and column widths or positions



main:000140
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Edit row and column widths or positions\cf0\b0\f1\fs24 
\par 
\par \f2 To specify row and column \b positions\b0 , click on the \b Column/Row Positions\b0  button \cf2\{bmc editpositions.bmp\}\cf0  in the \cf3\strike Edit Grid\cf2\strike0\{linkID=130\}\cf0  Dialog box.  
\par To specify row and column \b widths\b0 , click on the \b Column/Row Widths\b0  button\cf2  \{bmc editwidths.bmp\}\cf0  in the \cf3\strike Edit Grid\cf2\strike0\{linkID=130\}\cf0  Dialog box.  
\par 
\par In the \b Edit row and column positions\b0  dialog box, you can increase or decrease the number of columns or rows and enter new positions for columns or rows.  The positions don't need to be in order because they will be arranged automatically.  
\par 
\par In the \b Edit row and column widths\b0  dialog box, you can increase or decrease the number of columns or rows and enter new widths for the columns or rows.  You can drag rows in the table to rearrange them. 
\par 
\par In either version of the dialog box, you can copy a series of values from another application to the clipboard and then click on a \b Paste\b0  buttons to paste the series into the table below it.  Each value in the series must be separated from the next by a space, a comma, a tab character or the end of a line.  For example, if you copy the data from a spreadsheet program, the data will most likely will be properly formatted; each value in the same row will be separated from the next by a tab character. Each row will be separated from the next by the end of a line.
\par 
\par If the size of the dialog box is not suitable for your purposes, you can resize it by clicking on any of the edges or corners of the dialog box and dragging.  You can also change the relative widths of the tables containing the data values by clicking in the space between the tables and dragging.\f1 
\par }
137
Scribble137
Deactivating cells



main:000150
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\fs32 Deactivating cells\cf0\b0\f1\fs24 
\par 
\par The last step in importing a grid must be done manually.  
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200 Make the grid layer the active layer and click on the grid with the "Magic Wand" tool.
\par {\pntext\f3\'B7\tab}In the dialog box, click on the "Deactivate" button.
\par {\pntext\f3\'B7\tab}Then check to make sure that all cells whose centers are inside the grid have been deactivated properly.  
\par {\pntext\f3\'B7\tab}If an active cell should be an inactive cell or vice versa, select that cell and then select "Edit|Toggle Active". \f2 
\par \pard\f1 
\par }
140
Scribble140
Edit Data..., Import Data...
Edit Data...;Import Data...


main:000160
Writing



FALSE
25
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Edit Data..., Import Data...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\} \cf0 and \cf2\strike PIEs|Import...\cf3\strike0\{linkID=170\}
\par \cf0\b0 
\par \pard\fi720\f2 To use this procedure, select \b PIEs|Edit...|Edit Data...\b0  or \b PIEs|Import...|Import Data...\b0 
\par You must have at least one parameter on the data layer before it can be edited.  If you attempt to edit a data layer or import data to a layer that has no parameters, you will get an error message about the problem.
\par If there are no data points on the data layer that you are attempting to edit, you will get a warning message but you will still be able to edit the data layer.  When you edit the data layer, you can: move data points, change the value or values of data points, add data points, and/or delete data points.  
\par When you are finished editing the data points click on the \b OK\b0  button to accept the changes or the \b Cancel\b0  button to discard them.  The data points appear both on the \b Graphical\b0  tab and the \b Table\b0  tab.
\par The \b OK\b0  and \b Cancel\b0  buttons will both close the dialog box but if the \b OK\b0  button is clicked the changes made in the dialog box will be kept.  Otherwise they will be discarded.  Other buttons on the Graphical tab are used for navigating.  
\par You can move data points, change their values, add new data points or delete existing data points on both the \b Graphical\b0  and \b Table\b0  tab.
\par On the \b Graphical\b0  tab, you can do these tasks as follows.  To move a data point or edit its values, make sure that the \b Select point\b0  \cf3\{bmc arrow.bmp\}\cf0  button is depressed and click on the data point.  Then edit the X and Y coordinates in the edit boxes or edit the parameter values in the table.  To add a data point, first make sure that the \b Add point\b0  \cf3\{bmc add.bmp\}\cf0  button is depressed and then click at the location where you would like to add a data point.  Then edit the parameter values and X and Y coordinates and data values in the dialog box.  To delete a data point, first make sure that the \b Delete point\b0  \cf3\{bmc delete.bmp\}\cf0  button is depressed and then click on the data point you would like to delete. You can also click the \b Select points for deletion \cf3\{bmc SelectRegion.bmp\}\cf0\b0  button and then drag with the mouse to select points. When you release the mouse, the points inside the selection rectangle will be selected and you will be prompted to delete them.
\par On the \b Table\b0  tab, you can do these tasks as follows.  To move a data point, locate the data point in the table of data points and edit the X and Y coordinates in the table.  To change the values of a data point, locate the data point in the table of data points and edit the parameter values in the table.  To add a data point, increase the number of data points by clicking on the up arrow next to the control that shows the number of data points.  Then edit the parameter values and X and Y coordinates in the table.  To delete a data point, locate the data point you would like to delete and drag it to the bottom of the table.  Then decrease the number of data points by clicking on the down arrow next to the control that shows the number of data points.
\par If you have data in a spreadsheet you can copy them to the clipboard and paste them in the table on the \b Table\b0  tab by clicking on the \b Paste \cf3\b0\{bmc paste.bmp\}\cf0  button.  You can also read the data from a file by clicking the \b Open \cf3\b0\{bmc openfile.bmp\}\cf0  button.  Several file formats can be used as described below.
\par If the file or clipboard contains data for more parameters than exist on the data layer, extra columns will be created in the table.  You can drag the columns to new positions to determine which values will actually be used.
\par Data to be read from a file or pasted from the clipboard must either be in the format of an Argus ONE contour as described in the Argus ONE documentation (\cf2\strike Argus Interware, Inc., 1997\cf3\strike0\{linkTarget=Argus1997\}\cf0 , p. 104 to 108) or they must have the following format.
\par \pard\fi-360\li1440\tx720\tx1440 1.\tab Any line in the data whose first character is a "#" will be considered a comment and will be used to assign names to imported parameters.  
\par \pard\fi-360\li1440 2.\tab Each line in the data will begin a new row in the table except for comment lines.
\par 3.\tab The data may be either in a tab-delimited format or a comma/space-delimited format.  
\par 4.\tab In tab-delimited format, the data value that will appear in each cell in a row is separated from the data value in the next cell in the row by a tab character.
\par 5.\tab In comma/space-delimited format, the data value that will appear in each cell in a row is separated from the data value in the next cell in the row by one or more tab characters, commas, or spaces.  If you wish to import strings that include spaces while still using the comma/space delimited format, enclose the strings in quotation marks.  
\par \pard\fi720 Note: If you copy data from a commercial spreadsheet to the clipboard, the data will generally be in a tab-delimited format.
\par \pard\f1 
\par }
150
Scribble150
Create Parameters in Multiple Layers...
Create Parameters in Multiple Layers...


main:000170
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Create Parameters in Multiple Layers...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\}
\par \cf0\b0 
\par \pard\fi720\f2 This command allows you to add identical parameters to multiple layers in one step.  To activate this command, select \b PIEs|Edit...|Create Parameters in Multiple Layers\b0 ...  A dialog box will appear on which are listed those layers that can have parameters.  Make sure that the check box next to each layer is checked for every layer to which you wish to add the parameter.  In the bottom half of the dialog box, enter the parameter name, type, units, and value (expression).  If you click the OK button, a parameter of the type you defined will be added to each of layers you selected.  However, for any data layer, the type of the parameter will always be a real number regardless of the type that you specify because that is the only type allowed in data layers.\f1 
\par }
160
Scribble160
Set Multiple Parameters...
Set Multiple Parameters...


main:000180
Writing



FALSE
11
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Set Multiple Parameters...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\}
\par \cf0\b0 
\par \pard\fi700\f2 This command allows you to set the expressions of multiple parameters in multiple layers in one step.  To activate this command, select \b PIEs|Edit...|Set Multiple Parameters\b0 ...  A dialog box will appear with a hierarchical arrangement of layers and their parameters. If several parameters have the same root followed by a number, those parameters will be grouped together. A parameter will not appear on the list if it has been locked so that its expression can not be modified.  Make sure that the check box is checked next to every parameter whose expression you wish to change.  Set the value (expression) for the parameters in the edit box and click the OK button to set the expressions.  The expressions are not checked for correctness; the user is responsible for ensuring their validity.  In the case of complicated expressions, it may be helpful to create the expression first using the Argus ONE expression editor.  Then copy the expression to the clipboard and apply it to multiple parameters using this command.
\par 
\par The \b Set Multiple Parameters \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\cf4\f3 
\par \cf0\f1 
\par }
165
Scribble165
Move Model...
Move Model...


main:000190
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Move Model...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2 PIEs|Edit...\cf3\{linkID=90\}
\par \cf0\b0 
\par \pard\fi720\f2 The \b Move Model\b0  command is used to move the positions of all the information on Domain Outline, Information TriMesh, QuadMesh, and Data layers by a user-specified distance in the X and Y directions.  To use it, select \b PIEs|Edit...|Move Model\b0 ...  A dialog box will appear with a hierarchical arrangement of layers.  Select the layers for which you wish to move the information.  Set the distance you want to move them in the edit boxes at the bottom of the dialog box.
\par Users of the \b Move Model\b0  command should be aware of the following characteristic of the command before using it.
\par \pard\fi700\tx720\tx1440\tab The contour parameter values will be the same as they were originally; however, any parameters that were set using \i Expressions\i0  will now be specified in the contour itself.  To go back to having the contour value being set by the expression for the parameter, edit the contour and delete the parameter value.
\par \pard\fi-360\li1440 
\par \pard\fi700 The \b Move Model \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\f1 
\par }
170
Scribble170
Import...



main:000200
Writing



FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Import...\cf0\b0\f1\fs24 
\par 
\par \cf2\strike Import Gridded Data...\cf3\strike0\{linkID=180\}\cf0 
\par \cf2\strike Import Points from Spreadsheet...\cf3\strike0\{linkID=190\}\cf0 
\par \cf2\strike Import Contours from Spreadsheet...\cf3\strike0\{linkID=200\}\cf0 
\par \cf2\strike Sample DEM Data...\cf3\strike0\{linkID=210\}
\par \cf2\strike Copy Tri Mesh/Copy Quad Mesh...\cf3\strike0\{linkID=220\}
\par \cf2\strike Paste Contours on Clipboard to Multiple Layers...\cf3\strike0\{linkID=225\}
\par \cf2\strike Import Data...\cf3\strike0\{linkID=140\}
\par \cf2\strike Sample Data...\cf3\strike0\{linkID=226\}
\par \cf2\strike Import Shape File...\cf3\strike0\{linkID=227\}
\par \cf2\strike Import ASCII Raster Data\cf3\strike0\{linkID=233\}\cf0 
\par }
180
Scribble180
Import Gridded Data...
Import Gridded Data...


main:000210
Writing



FALSE
25
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}{\f4\froman\fprq2 Times New Roman;}{\f5\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Import Gridded Data...\cf0\b0\f1\fs24 
\par 
\par \b\f2 Under \cf2\strike PIEs|Import...\cf3\strike0\{linkID=170\}
\par \cf0\b0\f1 
\par \pard\fi720\b\f3 Import Gridded Data\b0  is a command for Argus ONE that facilitates importing gridded data into Argus ONE.  This capability is helpful for importing data from existing finite difference models into Argus ONE.  A new data layer will be created with data points at the center of the cells in an existing grid in Argus ONE.  Each data point will have one or more associated parameters.  The PIE provides an easy method for creating these data points and for setting the values of the data points.  
\par You must create a grid in Argus ONE before you can use the \b Import Gridded Data\b0  command because the command will attempt to create data points at the center of each of the cells in the grid.  Consult the Argus ONE documentation for how to create a grid.  Once you have created a grid, select the \b PIEs|Import...|Import Gridded Data...\b0  menu item.  The main window is where the gridded data are prepared for importing into Argus ONE.  If the checkbox labeled \b Export each data set to a separate layer\b0  is checked, each data set that is imported into Argus ONE will be imported as a separate layer.  By default, they are all imported into the same layer.
\par In the edit box labeled \b Layer Name\b0  is the name of the data layer on which the data should be placed.  If there is no layer by this name, it will be created.  If it does exist, you will be given a choice of overwriting the existing data or selecting a new layer name that does not exist.  This edit box is only enabled if all the data sets will be imported into a single layer.
\par The \b Number of data sets\b0  is the number of data values associated with each new data point.  Each value will be stored in an Argus ONE parameter.  You must also assign names to the Argus ONE \b Parameter names\b0 .  Parameter names must be unique within the layer.  However, if each data set will be imported into a separate layer, enter the layer names in the table rather than parameter names.
\par There may be some cells for which you do not wish to create data points.  If these cells have one or more values that do not occur in the rest of the data, they can be ignored.  Set the number of data values and then set the values to be ignored.  If the data will all be imported to a single layer, only the first data set is checked in this way so the rest of the data sets must have valid data for all locations that are valid in the first data set.  
\par When pasting data from the clipboard, the values for individual data points must be in one of the following \b Data Format\b0 s:
\par 
\par \pard{\pntext\f5\'B7\tab}{\*\pn\pnlvlblt\pnf5\pnindent0{\pntxtb\'B7}}\fi-700\li700\b Tab-delimited\b0 : each row of the table starts on a new line.  Each data value on the line is separated from the next by a single tab.
\par \b{\pntext\f5\'B7\tab}Comma, space-delimited\b0 :  each row of the table starts on a new line.  Each data value on the line is separated by one or more commas, spaces, or tabs.
\par \b{\pntext\f5\'B7\tab}Fixed width\b0 : all data values are lined up in vertical columns.  Data values need not be separated from the preceeding and following values.
\par \pard 
\par \pard\fi720 In any of these cases, lines beginning with a "#" character will be considered comments and ignored.  If you copy data from a spreadsheet to the clipboard and paste them to the table, it should work with any of these formats.  Data that are copied to the clipboard from spreadsheets are generally in tab-delimited format.
\par In some cases, the data you want to import may have multiple lines of data in the file that all belong on the same row of the model.  If the \b Multiple data lines per grid row\b0  check box is checked, each row of the grid will be filled before going on to the next row of the grid.
\par After copying the desired data to the clipboard, click on \b Paste \b0 button to paste them in the table.  Be sure to use the right format for the data as described above.  If you specify the \b Fixed width\b0  format, another dialog box will appear in which you can preview the data and suggest how it should be broken up into individual columns.  (See \cf2\strike Preview dialog box\cf3\strike0\{linkID=185\}\cf0 .)
\par You may also read data from one or more files each containing a single two-dimensional array that you want to import.  Click the \b Open\b0  button and select the files.  If required, the number of data sets will be increased to accommodate the number of files you select.  Each parameter will be assigned the name of the file from which its data were imported.  (You can then edit those names if you wish.)  The first file to be imported will be placed in the table on the tab that is active.  As each file is read, the selected tab will be changed so that each file goes in its own table.
\par The table contains the data to be placed in the model.  Note that the numbers of the rows and columns in the table will match the numbering of the rows and columns in the grid.  For example, if in Argus ONE, the Grid direction is Negative X, the columns in Argus will be numbered from right to left instead of left to right.  However, the columns in the table will still be numbered from left to right.
\par Clicking the \b OK \b0 button will create one or more data layers with the data you have entered.
\par \pard\b\f4 
\par }
185
Scribble185
Preview dialog box



main:000220
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Preview dialog box\cf0\b0\f1\fs24 
\par 
\par The \b Preview \b0 dialog box is shown if you select the \b Fixed width\b0  data format while \cf2\strike Import Gridded Data\cf3\strike0\{linkID=180\}\cf0  and then click the \b Paste \b0 or \b Open \b0 button.
\par 
\par The purpose of the dialog box is to allow you to specify how the characters in each individual line are to be split up into data values.
\par 
\par When the dialog box first appears, the data will have been put into a table.  The data will be split into separate columns if there is a space, comma, or tab character at a particular position in all the lines in the data.  If you click on the the header for a column, the data for that column will be split in two at the position where you clicked.  If you click on the header at the line separating two columns, the data for the two columns that are split at that location, will be combined together.  Once you have finished splitting up the data, click the \b Next \b0 button.
\par 
\par When you click the \b Next \b0 button, the instructions at the top of the dialog box will change to tell you to click on column headers to deactivate them.  If you click on a column header, its caption will change to "not used" and the column will turn gray.  If you click on it again, it will turn back to white and its caption will change back to its column number.  Once you have finished deactivating columns click the \b Next \b0 button again.
\par 
\par This time when you click the \b Next \b0 button, the validity of the data will be checked.  If any problems are found, you will be told about them and the screen will revert to the form it needs to be in to deal with the problem that was found.  If no problems are found, the instructions at the top of the dialog box will change to tell you to specify the multiplier.  An edit box where you can specify the multiplier will appear.  After you have specified the multiplier, click the \b Next \b0 button again.  
\par 
\par This time when you click the \b Next \b0 button, the preview screen will disappear.  The multiplier will be multiplied by all the data values table and put into the table on the \cf2\b\strike\f2 Import Gridded Data\cf3\strike0\{linkID=180\}\cf0\b0  dialog box.\f1 
\par 
\par 
\par }
190
Scribble190
Import Points from Spreadsheet...
Import Points from Spreadsheet...


main:000230
Writing



FALSE
23
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\froman Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Import Points from Spreadsheet...\cf2\b0\fs20 
\par 
\par \cf0\b\f1\fs24 Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par \cf2\b0\f0\fs20 
\par \pard\fi700\cf0\b\f2\fs24 Import Points from Spreadsheet\b0  allows you to import point contours into Argus ONE from a spreadsheet-like format.  To use it, select \b PIEs|Import...|Import Points from Spreadsheet\b0 ...  Then select the information layer into which you wish to import point contours.  A dialog box will appear in which you can enter either 
\par 
\par \pard 1 the X and Y coordinates of the point contours and all the parameter values or
\par 2 the column and row number in an existing grid and all the parameter values.  
\par \pard\fi700 
\par Which one you specify depends on which radio button under "Coordinates" you select.  If you choose to specify the rown and column numbers, you must also select the grid layer in the combobox above the buttons. 
\par \cf2\f1 If you have a spre\cf0\f2 adsheet with this data, you can arrange the data in the spreadsheet in the same order as shown in the table and copy the data to the clipboard.  Then paste the data by clicking the \b Paste \b0 button.  The data may be either in a tab-delimited format or it can be delimited by commas and/or spaces as described in the section entitled "\cf3\strike Import Gridded Data...\cf4\strike0\{linkID=180\}\cf0 ".  Another option is for the data to be in the format of one or more Argus ONE contours.  If the data are in a text file, you can also read them from that text file by clicking the \b Open\b0  button.  \b\i Note\b0 : The file must be a text file.  
\par \pard\fi680\cf2\i0\f1 When using either the \b Paste\b0  or \b Open\b0  button, column captions can be included in the first row by starting the first row with the "#" character.\cf0\f2 
\par \pard\fi700 If the data are in a tab-delimited or comma/space-delimited format you can paste the data from the clipboard to a specific location in the table.  To do this, select the cell in the upper left corner of the area where you wish the data to appear and press Ctrl-V on the keyboard.
\par When the contours are about to be imported, the user will be prompted to either retain the existing contours or delete them.  This option is provided because two or more point contours can exist at the same location and importing new point contours can conceal the presence of existing contours at the same location.
\par Because Argus ONE interprets spaces inside string variables as separators between variables, all spaces in any of the variables will be converted to underscore characters before passing the data to Argus ONE.
\par 
\par The \b Import Points from Spreadsheet \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\cf2\f3 
\par \cf0\f2 
\par In some cases, it may be desirable to import data into a specific row of the table or parameter values.  To do this make sure the checkbox labeled \b Import into selected row\b0  is checked before attempting to paste from the clipboard or opening a file.  You select a row by selecting any editable cell in the table.  This feature is usually of value when there are time varying parameters in the layer to which the data is being imported.  For example, if the user has parameters named Stress1, Stress2, Stress3, and so forth, it is likely that in a spreadsheet, the values for these parameters would be arranged in columns.  The corresponding data in the table, however, is arranged in rows.  This option allows the user to paste the data into the table without rearranging it in the spreadsheet.\cf2\f3 
\par \pard\f0\fs20 
\par }
200
Scribble200
Import Contours from Spreadsheet...
Import Contours from Spreadsheet...


main:000240
Writing



FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Import Contours from Spreadsheet...\cf2\b0\f1\fs24 
\par 
\par \cf0\b\f2 Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par \cf2\b0\f1 
\par \pard\fi720\cf0\b\f3 Import Contours from Spreadsheet\b0  allows you to import contours into Argus ONE from a spreadsheet-like format.  To use it, select \b PIEs|Import...|Import Contours from Spreadsheet\b0 ...  Then select the information layer into which you wish to import point contours.  A dialog box will appear in which you can enter the X and Y coordinates of the contours in one table and the parameter values in a second table.  If you have a spreadsheet with this data, you can arrange the data in the spreadsheet in the same order as shown in the table and copy the data to the clipboard.  Then paste the data by clicking the \b Paste \b0 button.  The data may be either in a tab-delimited format or they can be delimited by commas and/or spaces as described in the section entitled "\cf3\strike Import Gridded Data...\cf4\strike0\{linkID=180\}\cf0 ".  Another option is for the data to be in the format of one or more Argus ONE contours.  If the data are in a text file, you can also read them from that text file by clicking the \b Open\b0  button.
\par \cf2\f2 When using either the \b Paste\b0  or \b Open\b0  button, column captions can be included in the first row by starting the first row with the "#" character.\cf0\f3 
\par If the data are in a tab-delimited or comma/space-delimited format you can paste the data from the clipboard to a specific location in the table.  To do this, select the cell in the upper left corner of the area where you wish the data to appear and press Ctrl-V on the keyboard.
\par The number of contours to be imported and the maximum number of vertices in any of the contours are set in a pair of edit boxes in the lower left corner of the \b Contour Coordinates\b0  tab of the \b Import Contours\b0  dialog box.  If data are pasted into the table, the number of contours and the maximum number of vertices per contour will be automatically updated to match the pasted data.  Similarly, on the \b Parameter Values\b0  tab, the number of columns will be adjusted to accommodate the data pasted into the table.  However, the Argus ONE layer into which the data are to be imported can only hold data for the parameters that already exist.  Therefore, the user should either insure that sufficient parameters already exist in the layer to hold the data to be imported before starting to import it or may rearrange the columns in the table by dragging them to new positions so that the correct data are imported.
\par Because Argus ONE interprets spaces inside string variables as separators between variables, all spaces in any of the variables will be converted to underscore characters before passing the data to Argus ONE.
\par \pard\fi700 
\par The \b Import Contours from Spreadsheet \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.
\par 
\par \pard\fi720 In some cases, it may be desirable to import data into a specific row of the table or parameter values.  To do this make sure the checkbox labeled \b Import into selected row\b0  is checked before attempting to paste from the clipboard or opening a file.  You select a row by selecting any editable cell in the table.  This feature is usually of value when there are time varying parameters in the layer to which the data is being imported.  For example, if the user has parameters named Stress1, Stress2, Stress3, and so forth, it is likely that in a spreadsheet, the values for these parameters would be arranged in columns.  The corresponding data in the table, however, is arranged in rows.  This option allows the user to paste the data into the table without rearranging it in the spreadsheet.\cf2\f1 
\par }
210
Scribble210
Sample DEM Data...
Sample DEM Data...


main:000250
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sample DEM Data...\cf0\b0\fs20 
\par \f1\fs24 
\par \b\f2 Under \cf2\strike PIEs|Import...\cf3\strike0\{linkID=170\}
\par \cf0\b0\f1 
\par \pard\fi720\b\f3 Sample DEM data\b0  reads Digital Elevation Models (DEMs) in the format described in the DEM data users guide (\cf2\strike U.S. Department of the Interior, U.S. Geological Survey, 1992\cf3\strike0\{linkTarget=DEM\}\cf0 ) (\cf3\{html=<a href="http://rockyweb.cr.usgs.gov/nmpstds/demstds.html" target="_blank">http://rockyweb.cr.usgs.gov/nmpstds/demstds.html</a>\}\cf0 ).  The 1:250K DEMs at \cf3\{html=<a href="http://edcwww.cr.usgs.gov/doc/edchome/ndcdb/ndcdb.html" target="_blank">http://edcwww.cr.usgs.gov/doc/edchome/ndcdb/ndcdb.html</a>\}\cf0  are in this format.  The DEMs are displayed as bitmaps in the Universal Transverse Mercator (UTM) projection.  To use it, select \b PIEs|Import...|Sample DEM data...\b0 
\par When you select \b Sample DEM data\b0 , you are first prompted for whether you wish to import just the outline of the DEM, or data relative to a grid or mesh.  If you wish to import data relative to a grid, you must specify whether the grid is "Block-Centered" or "Grid-Centered".
\par When you click the \b OK\b0  button, another dialog box will appear.  In it select \b File|Open\b0  to select a DEM file to read.  If you choose to import just the outline of the DEM into Argus ONE, you will be prompted whether you wish to read just the outline of the DEM or the full DEM.  As the file is read, it will be displayed in the dialog box.  
\par The size of the bitmap showing the DEM is determined by the size of the display area when the DEM is read.  If the size of the display area is changed, you can select \b File|Refresh\b0  to create a new bitmap at the current size.  Although the user can zoom in and out, this is accomplished by stretching the bitmap rather than by redrawing it so zooming, by itself, does not change the size of the bitmap.  To save a bitmap, select \b File|Save as BMP\b0  or \b File|Save as JPEG\b0 .  (Argus ONE can read the BMP but not the JPEG files)
\par \pard The color assigned to an elevation value depends on the range of elevations in the DEM and the \b Color Scheme\b0 .  A color bar next to the combobox in which the user selects the color scheme, illustrates the currently selected color scheme.  \cf4\f2 The \b Spectrum\b0  and \b Green to Magenta\b0  color schemes can be calculated relatively quickly whereas the others are slower.\cf0\f3 
\par \pard\fi720 If the check box labeled \b Reverse color scheme\b0  is checked, The selected color scheme will be reversed.
\par It is possible to read more than one DEM at a time.  To do so, just select multiple DEM files when you select \b File|Open\b0 .  However, if the DEMs come from zones that use different central meridians to calculate the UTM coordinates, you will be prompted to choose which central meridian you wish to use.
\par If you wish to emphasize the coastline, it is a good idea to leave the checkbox labeled \b Make locations with elevations of 0 white\b0  checked. However, for areas that have elevations below sea level, you may wish to uncheck this checkbox.
\par Some DEMs generated by ArcInfo use a special value to indicate missing data.  If you have such a DEM and you wish to ignore a value that indicates missing data, check the check box labeled \b Ignore elevations coded as\b0  and indicate the value that indicates missing data in the edit box following the check box.  The default value in the edit box is likely to be the correct value to use.
\par When determining the central meridian for calculating the UTM coordinates, all UTM zones are treated as being exactly 6 degrees wide.  This is not correct for a few zones.  The area where this is not true is from 0 to 42 degrees east north of 72 degrees north and from 0 to 12 degrees east between 56 and 64 degrees north.  Because the author is unaware of any available DEMs in this area in the format accepted by this program, no effort has been made to address this issue.
\par If you click the OK button, the data are imported into Argus ONE at blocks, nodes, or element centers.  You may choose to use either a mean value for the block node or element, the closest DEM data value to the point of interest, the highest value in the area around the point of interest, or the lowest value in the area around the point of interest.  For block-centered grids, such as the MODFLOW grid (\cf2\strike Harbaugh, Banta, Hill, and McDonald, 2000\cf3\strike0\{linkTarget=Harbaugh2000\}\cf0 ), the data are imported at the center of the block.  For grid-centered grids, such as the HST3D grid (\cf2\strike Kipp, 1997\cf3\strike0\{linkTarget=Kipp1997\}\cf0 ), the data are imported at the grid nodes.  
\par 
\par \pard\cf4\f2 If your DEM data is in the SDTS format, it can be converted to the USGS native format using the free program sdts2dem which is available from \cf3\{html=<a href="http://www.cs.arizona.edu/topovista/sdts2dem/" target="_blank">http://www.cs.arizona.edu/topovista/sdts2dem/</a>\}\cf4  .  (Thanks to Sandra Warner for pointing out sdts2dem to me and to Gregg Townsend for maintaining it.\cf0\b\f1 
\par }
220
Scribble220
Copy Tri Mesh.../Copy Quad Mesh...
Copy Tri Mesh...;Copy Quad Mesh...


main:000260
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Copy Tri Mesh.../Copy Quad Mesh...\cf2\b0\f1\fs24 
\par 
\par \cf0\b\f2 Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par \cf2\b0\f1 
\par \pard\fi720\cf0\f3 To use these commands, select \b PIEs|Import...|Copy Tri Mesh...\b0  or \b PIEs|Import...|Copy Quad\b0  \b Mesh...\b0   Then select a pair of Tri Mesh or Quad Mesh layers.  The mesh on one of the layers will be copied to the other layer.  Only the nodes and elements will be copied.  Parameters and parameter values will not be copied.\f1 
\par \pard\cf2 
\par }
225
Scribble225
Paste Contours on Clipboard to Multiple Layers...
Paste Contours on Clipboard to Multiple Layers...


main:000270
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Paste Contours on Clipboard to Multiple Layers...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2\strike PIEs|Import...\cf3\strike0\{linkID=170\}
\par \cf0\b0 
\par \tab To use this command, first copy one or more Argus ONE contours to the clipboard.  Then select \b PIEs|Import...|Paste Contours on Clipboard to Multiple Layers...\b0   In the dialog box, select the layers to which you wish to paste the contours and click the OK button.
\par }
226
Scribble226
Sample Data...
Sample Data...


main:000280
Writing



FALSE
23
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Sample Data...\cf2\b0\f1\fs24 
\par 
\par \cf0\b Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par \cf2\b0 
\par The Sample Data command is useful for importing very large data sets into Argus ONE.  It reduces the amount of data that is actually imported to a more manageable size thus minimizing the work that Argus needs to do.  However, if you change your mesh or grid, you may wish to reimport the data to better match your model configuration.
\par 
\par To use this command, select \b PIEs|Import...|Sample Data...\b0   In the dialog box, click the \b Read File\b0  button and choose how you want the data to be processed and select a text file containg the data.  The file must consist of a series of lines each of which describes one data point.  In each line, the first number represents the X coordinate of the data point.  The next number represents the Y coordinate of the data point and each number after that represents a parameter value at that location.  Each number must be separated from the next by either a single comma, one or more spaces, one or more tab characters, or some combination of these.  The data values will not be imported directly into Argus ONE.  Instead data will be plotted at one of the following locations.
\par 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 The center of a block
\par {\pntext\f2\'B7\tab}The nodal point of a block (block corner)
\par {\pntext\f2\'B7\tab}The location of a node in a mesh
\par {\pntext\f2\'B7\tab}The center of an element in a mesh
\par \pard 
\par At each location you can choose to import one of the following
\par 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 The data value of the data point closest to the selected location
\par {\pntext\f2\'B7\tab}The average of the data values of the data points in the region surrounding the selected location
\par {\pntext\f2\'B7\tab}The highest data value of the data points in the region surrounding the selected location
\par {\pntext\f2\'B7\tab}The lowest data value of the data points in the region surrounding the selected location
\par \pard\tx200 
\par }
227
Scribble227
Import Shape File...
Shape File; UTM


main:000290
Writing



FALSE
26
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Import Shape File...\cf2\b0\f1\fs24 
\par 
\par \cf0\b Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par 
\par \cf2\b0 This command can be accessed in two ways: \b PIEs|Import...|Import Shape...\b0  or \b File|Import| (layer name)...|Import Shape File... (Additional Options)\b0 .
\par 
\par There is a separate command named \b File|Import  (layer name)...|Import Shapefile...\b0  that is provided by a PIE made by Argus Interware.  The two commands do similar things but by different mechanisms.  The main differences are shown in the table below
\par 
\par \pard\tx8780\tx9980\tab USGS PIE\tab Argus Interware PIE
\par Import from Shape files generated by Arc 9\tab Yes\tab No
\par When importing to existing layers, user can choose which attribute to assign to which parameter\tab Yes\tab No
\par \pard 
\par Shape files can be imported into Maps layers, Imformation layers and Data layers.  They can not be imported directly into Domain Outline layers but if they are imported into an Information layer or Maps layer, they can be copied to the clipboard and pasted in an Domain Outline layer.
\par 
\par The data in Data layers consists of an array of real numbers each associated with an X,Y location.  Integers, strings, and booleans are not allowed.  Expressions are not allowed either.  Accessing data from data layers tends to be much faster than if the same information was in an Information layer.
\par 
\par Information layers allow the full range of data types (Real, Integer, String, Boolean) and also allows Expressions.
\par 
\par Maps layers have geometry but no data values.
\par 
\par Shapes can be imported either into a new or an existing layer.  If the layer is a new layer, its name must be different from the name of any existing layer.
\par 
\par Next: \cf3\strike Import Shape... (Coordinate Conversions)\cf4\strike0\{linkID=228\}\cf2 
\par }
228
Scribble228
Import Shape File... (Coordinate Conversions)
Shape File; UTM


main:000300
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil Courier New;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Import Shape File... (Coordinate Conversions)\cf2\b0\f1\fs24 
\par 
\par \cf0\b Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par 
\par \cf2\b0 Most Shape files will have their X,Y coordinates in a rectangular coordinate system ready to use in Argus ONE.  Some, however, will use longitude and latitude as their X,Y coordinates.  With these, it is best to convert them to a recatangular coordinate system such as the Universal Transverse Mercator (UTM) coordinate system.  
\par 
\par If you choose to convert the coordinates, you will need to pick the UTM zone to use for the conversion.  The first data point in the shape file will be used to pick a default zone.  Ten other randomly selected points from the shape file will be plotted on the world map.  If your data are from several different zones, you will need to pick which zone is most appropriate to use for your data.
\par 
\par If you choose to convert the coordinates you will also need to pick an ellipsoid that describes the shape of the earth.  Each ellipsoid has a slightly different equatorial and polar diameter.  Different people or groups at different times have come up with slightly different values for these parameters.  The coordinates will be slightly different depending on which ellipsoid is chosen.  In different areas, mapping agencies have chosen different ellipsoids to describe the shape of the earth and the data from these agencies will differ accordingly.  You should determine what ellipsoid is commonly used in your area of interest and use that ellipsoid.  In the United States, the Clarke (1866) ellipsoid is generally used.
\par 
\par For more information about UTM coordinates, see \cf3\strike Snyder (1987)\cf4\strike0\{linkTarget=Snyder1987\}\cf2 .  The following web site may also be helpful. 
\par \cf4\f2\fs20\{html=<a href="http://www.colorado.edu/geography/gcraft/notes/coordsys/coordsys_f.html" target="_blank">http://www.colorado.edu/geography/gcraft/notes/coordsys/coordsys_f.html</a>\}\cf2\f1\fs24 
\par 
\par (Thanks to Peter H. Dana for permission to use his map of UTM zones.)
\par 
\par Previous: \cf3\strike Import Shape File...\cf4\strike0\{linkID=227\}
\par \cf2 Next: \cf3\strike Import Shape File... (Sample Data)\cf4\strike0\{linkID=229\}\cf2 
\par }
229
Scribble229
Import Shape File... (Sample Data)
Shape File


main:000310
Writing



FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Import Shape File... (Sample Data)\cf2\b0\f1\fs24 
\par 
\par \cf0\b Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par \cf2\b0 
\par If you are importing data to a data layer and you have already created a mesh or grid, you may wish to sample the data.  This is most useful if you are attempting to import a very large number of closely spaced data points such as in a digital elevation model.
\par 
\par If you choose to sample the data, you must choose a mesh or grid layer with an existing mesh or grid.  If you choose a grid layer, you also need to state whether it is a block-centered grid (as in MODFLOW) or a grid-centered grid (as in HST3D).  Once you choose the layer, you also need to decide how to sample the data, you can choose to use 
\par \pard{\pntext\f2\'B7\tab}{\*\pn\pnlvlblt\pnf2\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 the value of the closest point to the sampling point, 
\par {\pntext\f2\'B7\tab}the highest value in the region around the sampling point, 
\par {\pntext\f2\'B7\tab}the lowest value in the region around the sampling point, or 
\par {\pntext\f2\'B7\tab}the average value in the region around the sampling point.
\par \pard 
\par Previous: \cf3\strike Import Shape File... (Coordinate Conversions)\cf4\strike0\{linkID=228\}\cf2 
\par Next: \cf3\strike Import Shape File... (Select Fields)\cf4\strike0\{linkID=230\}\cf2 
\par }
230
Scribble230
Import Shape File... (Select Fields)
Shape File


main:000320
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Import Shape File... (Select Fields)\cf2\b0\f1\fs24 
\par 
\par \cf0\b Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par \cf2\b0 
\par The final step before importing the shape file is to select the fields to insert.  Only the fields that are compatible with the layer into which the data are to be imported will be displayed here.  For instance, if you are importing into a data layer, only real number and integer data will be displayed.  The first column in the table displays the attributes of the shapes.  The second column shows check boxes that determine whether or not the data from a field will be imported.  The final column is the parameter in the layer to which the data will be imported.  The third column is only used if you are importing into an existing Information layer.
\par 
\par If the "Import Line Offsets" checkbox is checked, than at each point on a shape, the values that will be imported are the differences in the X and Y coordinates of between the following and preceding points divided by the distance between those points.  These values can be useful for determining the orientation of the shape at that location.
\par 
\par Previous: \cf3\strike Import Shape File... (Sample Data)\cf4\strike0\{linkID=229\}\cf2 
\par }
233
Scribble233
Import ASCII Raster Data



main:000330
Writing



FALSE
44
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil Courier New;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Import ASCII Raster Data\cf2\b0\f1\fs24 
\par 
\par \cf0\b Under \cf3\strike PIEs|Import...\cf4\strike0\{linkID=170\}
\par 
\par \cf2\b0 AASCII Raster Data is a format used by ESRII products to transfer raster data to external programs.  Descriptions of the format can be found at 
\par \cf4\f2\fs20\{html=<a href="http://webhelp.esri.com/arcgisdesktop/9.1/index.cfm?ID=3109&TopicName=ExportToASCII&rand=762&pid=3105" target="_blank">http://webhelp.esri.com/arcgisdesktop/9.1/index.cfm?ID=3109&TopicName=ExportToASCII&rand=762&pid=3105</a>\}\cf2\f1\fs24 , and \cf4\f2\fs20 
\par \cf2\strike http://en.wikipedia.org/wiki/ESRI_grid\cf4\strike0\{link=*! ExecFile("http://en.wikipedia.org/wiki/ESRI_grid")\}\cf2\f1\fs24 
\par 
\par \b Data Layer Name and Parameter Name\b0 
\par The data layer name is the name of the data layer in Argus ONE to which the data will be imported.
\par The parameter name is the name of the parameter on that layer to which the data will be imported.
\par 
\par \b Grid or Mesh Layer Name
\par \b0 The data will be imported at grid or mesh nodes or at element centes.  The user must specify the grid or mesh layer to use when imporing.
\par 
\par \b Data to import\b0 
\par Unless "All" is selected, the data will be processed when importing so that at most one value per grid cell, element, or node will be imported. If "All" is selected, all the points in the raster except those marked as not having a value will be imported. Importing all the points can take a long time.  
\par 
\par For grids, the user can choose to import one of the following:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 Closest value to block nodal point
\par {\pntext\f3\'B7\tab}Mean value in block
\par {\pntext\f3\'B7\tab}Highest value in block
\par {\pntext\f3\'B7\tab}Lowest value in block
\par {\pntext\f3\'B7\tab}All
\par \pard 
\par For finite element meshes, the user can import one of the following:
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\tx200 Closest value to node
\par {\pntext\f3\'B7\tab}Mean value in cell around node
\par {\pntext\f3\'B7\tab}Highest value in cell around node
\par {\pntext\f3\'B7\tab}Lowest value in cell around node
\par {\pntext\f3\'B7\tab}Closest value to element center
\par {\pntext\f3\'B7\tab}Mean value in element
\par {\pntext\f3\'B7\tab}Highest value in element
\par {\pntext\f3\'B7\tab}Lowest value in element
\par {\pntext\f3\'B7\tab}All
\par \pard 
\par \b Grid Type\b0 
\par If a grid is used to specify where to import data, the user must specify what type of grid it is.  It can be a block-centered grid such as in MODFLOW where the nodes are at the cell centers or it can be a node centered grid where the nodes are at the cell corners.
\par 
\par \b File Name\b0 
\par This is the name of the file from which data will be imported.  The user can click the "Browse" button to select the file from which to import data.
\par }
239
Scribble239
Convert...



main:000340
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Convert...\cf0\b0\f1\fs24 
\par 
\par \cf2\strike Contours To Data...\cf3\strike0\{linkID=240\}\cf0 
\par \cf2\strike Data to Contours...\cf3\strike0\{linkID=250\}\cf0 
\par \cf2\strike Reverse Contours on Clipboard...\cf3\strike0\{linkID=260\}\cf0 
\par \cf2\strike Mesh Objects To Contours...\cf3\strike0\{linkID=270\}\cf0 
\par \cf2\strike Mesh To Contours...\cf3\strike0\{linkID=280\}\cf0 
\par }
240
Scribble240
Contours To Data...
Contours To Data...


main:000350
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman Times New Roman;}{\f3\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Contours To Data...\cf0\b0\fs20 
\par 
\par \b\f1\fs24 Under \cf2\strike PIEs|Convert...\cf3\strike0\{linkID=239\}
\par \cf0\b0\f2 
\par \pard\fi700\f3 To use this procedure, select \b PIEs|Convert...|Contours To Data...\b0   You will then be prompted to select the name of an Information or Domain Outline layer.  After you have selected it you will be prompted to select the name of a new or existing data layer.
\par The contours on the Information or Domain Outline layer will be copied to the data layer.  A data point will be placed at the position of each vertex of the contours.  
\par All the data points for a contour will have the same value even if the value of the original contour is set by an expression that varies along the length of the contour.\f0\fs20 
\par }
250
Scribble250
Data to Contours...
Data to Contours...


main:000360
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Data to Contours...\cf2\b0\fs20 
\par 
\par \cf0\b\f1\fs24 Under \cf3\strike PIEs|Convert...\cf4\strike0\{linkID=239\}
\par \cf2\b0\f0\fs20 
\par \pard\fi720\cf0\b\f2\fs24 Data to Contours\b0  converts data points on a data layer to point contours on an information layer.  To use it, select \b PIEs|Convert...|Data to Contours...\b0   Then select the data layer whose data points you wish to convert.
\par When the contours are about to be imported, the user will be prompted to either retain the existing contours or delete them.  This option is provided because two or more point contours can exist at the same location and importing new point contours can conceal the presence of existing contours at the same location.
\par If there are a large number of data points to be converted to contours on an information layer, this command will go faster if "Allow Intersection" is turned on.  The command will prompt you to turn "Allow Intersection" on if that will speed things up.
\par 
\par The \b Data to Contours \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\cf2\f0\fs20 
\par }
260
Scribble260
Reverse Contours on Clipboard...
Reverse Contours on Clipboard...


main:000370
Writing



FALSE
8
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Reverse Contours on Clipboard...\cf2\b0\fs20 
\par 
\par \cf0\b\f1\fs24 Under \cf3\strike PIEs|Convert...\cf4\strike0\{linkID=239\}
\par \cf2\b0\f0\fs20 
\par \pard\fi720\cf0\b\f2\fs24 Reverse Contours on Clipboard\b0  reverses the order of the vertices in a contour.  To use it, cut one or more contours to the clipboard.  Then select \b PIEs|Convert...|Reverse Contours on Clipboard...\b0   Select the layer in which you wish the contours to be placed and click the OK button.  The same warnings that apply to \cf3\b\strike Edit Contours\cf4\strike0\{linkID=100\}\cf0  \b0 also apply to \b Reverse Contours on Clipboard\b0 .\cf2\f0\fs20 
\par }
270
Scribble270
Mesh Objects To Contours...
Mesh Objects To Contours...


main:000380
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Mesh Objects To Contours...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2\strike PIEs|Convert...\cf3\strike0\{linkID=239\}
\par \cf0\b0 
\par \pard\fi720\b\f2 Mesh Objects To Contours\b0  allows you to select nodes or edges of elements and import them into Argus ONE as contours on information layers.  To use it, select \b PIEs|Convert...|Mesh Objects To Contours...\b0   Then select the mesh layer from which you wish to import data followed by an information, map, or domain outline layer into which you wish to import data.  A dialog box will appear in which you can select nodes or sides of elements.  If the \b arrow\b0  button \cf3\{bmc arrow.bmp\}\cf0  is depressed, you can select nodes or sides by clicking on them with the mouse.  If the \b lasso\b0  button \cf3\{bmc LassoButton.bmp\}\cf0  is depressed, you can select nodes by encircling them with the mouse button depressed.  In either case, if the shift button is depressed when you click down with the mouse, the selected nodes or sides will be added to removed from the list of selected nodes or sides rather than replacing them.
\par When you click on the \b OK\b0  button, the contours will be created.  Contours can not branch so if the selected items allow a contour to go in several directions at a node, an arbitrary decision will be made as to which way the contour should go.
\par 
\par The \b Mesh Objects To Contours \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\cf4\f3\fs20 
\par \cf0\f1\fs24 
\par }
280
Scribble280
Mesh To Contours...
Mesh Objects To Contours...


main:000390
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Mesh Objects To Contours...\cf0\b0\f1\fs24 
\par 
\par \b Under \cf2\strike PIEs|Convert...\cf3\strike0\{linkID=239\}
\par \cf0\b0 
\par \pard\fi700\b\f2 Mesh to Contours\b0  converts each element in a triangular or quadrilateral finite-element mesh to a closed contour on an information layer.  To use it, select \b PIEs|Convert...|Mesh to Contours...\b0   \b These contours should not be used to assign properties to nodes where two or more contours intersect!\b0   Attempting to do so may produce unpredictable results because the system must determine arbitrarily which of the contours to use in assigning properties to such nodes.
\par 
\par \pard\fi720 The \b Mesh To Contours \b0 command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.\cf4\f3\fs20 
\par \cf0\f1\fs24 
\par \pard\fi700 
\par }
285
Scribble285
Show Layer Dependencies Command
Show Layer Dendencies Command


main:000400
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Show Layer Dependencies Command\cf2\b0\f1\fs24 
\par 
\par \pard\fi540\b PIEs|Show Layer Dependencies\b0  shows which parameters depend on any particular layer or parameter.  
\par 
\par Select a layer or parameter in the tree control on the left.  A list of parameters that appear to depend on that that layer or parameter will be shown in the list on the upper right.  If you select one of the parameters from the list, its expression will be shown on the box on the lower right with the layer or parameter name highlighted.
\par 
\par The command is not infallible; if the name of one layer or parameter, is part of the name of another layer, the command may produce incorrect results.  For example.  If one layer is named "Data" and another layer is named "My_Data", an expression that uses "My_Data" will be incorrectly identified as depending on the "Data" layer.
\par 
\par In addition, the command only detects parameters that are directly dependent on the selected layer or parameter but not those that are indirectly dependent on it.  For example suppose layer "A" depends has "B" as its Expression and layer "B" has "C" as its expression.  If you select layer C, the command will detect that B depends on C but will not detect that A is indirectly dependent on C.
\par }
290
Scribble290
Hidden Commands



main:000410
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Hidden Commands\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 Some of the commands described in this report have been "hidden".  They do not normally appear in the Argus ONE menu structure.  This was done because these commands circumvent protections built into Argus ONE to prevent users from inadvertently changing or deleting information that usually should not be changed or deleted. 
\par It is possible to make the hidden commands described in this report visible.  To do so, create a text file in the same directory as the Utility.dll PIE whose command you want to reveal.  Name the file Utility.ini.  Make the first line of the file "Show".  The next time you start Argus ONE, the hidden commands in that PIE will be visible in the menu structure.  To hide the functions again, delete the Utility.ini file or change its first line to something other than "Show."  "Show" is case insensitive.
\par 
\par \pard\cf2\strike Set Parameter Locks\cf3\strike0\{linkID=300\}\cf0 
\par \cf2\strike Delete Multiple Layers\cf3\strike0\{linkID=310\}\cf0\f1 
\par }
300
Scribble300
Set Parameter Locks...
Set Parameter Locks...


main:000420
Writing



FALSE
10
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fswiss\fprq2\fcharset0 Univers Condensed;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Set Parameter Locks...\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\b\f2 Set Parameter Locks\b0  is hidden because if an option for a parameter is locked, it generally means that users should not make ill-considered changes to it.  
\par \b Set Parameter Locks\b0  can be used to lock or unlock multiple parameters at one time.  Once the command has been revealed as described above, it can be activated by selecting \b PIEs|Set Parameter Locks...\b0   A dialog box will appear with a hierarchical arrangement of layers and parameters.  The user should select the parameters for which something should be locked or unlocked.  The checkboxes at the bottom of the dialog box will be unchecked for all parameter locks which are not set for all the selected parameters.  Similarly, the checkboxes will be checked for all parameter locks which are set for all the selected parameters.  The checkboxes will be gray if some of the selected parameters have the related feature locked and others do not.  After selecting the parameters to change, the user should check or uncheck the check boxes to make the desired changes to the parameters.  When the user clicks the OK button all the selected parameters will have their locks changed as the user specifies using the checkboxes.  If any of the checkboxes is in a gray state, that lock will not be changed for any of the selected parameters.
\par \b\i\f3\fs28 
\par \b0\i0\f2\fs24 The \b Set Parameter Locks\b0  command is not compatible with the Student version of Argus ONE because it uses call-back functions in Argus ONE that were only added after the Student version was created.
\par \pard\f1 
\par }
310
Scribble310
Delete Multiple Layers...
Delete Multiple Layers...


main:000430
Writing



FALSE
7
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Delete Multiple Layers...\cf0\b0\f1\fs24 
\par \pard\fi720\b\f2 
\par Delete Multiple Layers\b0  is hidden because it allows layers that have been locked to prevent deletion to be deleted easily.  Because deleting locked layers without proper consideration can destroy large amounts of data and make a model unusable, this command is somewhat dangerous.
\par Once the \b Delete Multiple Layers\b0  command has been revealed as described at the beginning of this section, it can be activated by selecting \b PIEs|Delete Multiple Layers...\b0   A dialog box will appear with a series of check boxes with layer names next to them.  The user must select the layers to delete by checking the check boxes.  If the user then clicks the OK button, the user will be warned that the layers will be deleted and given a chance to change the decision to delete.  If the user still chooses to delete the layers, they will be deleted.\f1 
\par }
320
Scribble320
Functions



main:000440
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fnil\fcharset2 Symbol;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Functions\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 Functions in Argus ONE can be accessed through the expression editor.  The Argus ONE documentation describes how to show the expression editor.  When the expression editor is visible, there is a list of function categories followed by a list of layers.  Under the list of function categories, one of the categories is \b PIEs\b0 .  All of the functions described in this document are found under the \b PIEs\b0  category.
\par 
\par \pard{\pntext\f3\'B7\tab}{\*\pn\pnlvlblt\pnf3\pnindent0{\pntxtb\'B7}}\fi-200\li200\cf2\strike\f1 Table 3.  Functions added to Argus ONE\cf3\strike0\{linkID=330\}\cf0 
\par \cf2\strike{\pntext\f3\'B7\tab}Table 4.  Hidden Functions Added to Argus ONE\cf3\strike0\{linkID=340\}
\par \cf2\strike{\pntext\f3\'B7\tab}Utility_CheckVersion\cf3\strike0\{linkID=350\}
\par \cf2\strike{\pntext\f3\'B7\tab}EvalRealAtXY, EvalIntegerAtXY, EvalBooleanAtXY, and EvalStringAtXY\cf3\strike0\{linkID=360\}
\par \cf2\strike{\pntext\f3\'B7\tab}Rotated X, and Rotated Y\cf3\strike0\{linkID=370\}\cf0 
\par }
330
Scribble330
Table 3.  Functions added to Argus ONE



main:000450
Writing



FALSE
82
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Table 3.  Functions added to Argus ONE\cf0\b0\f1\fs24 
\par 
\par \trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3780\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl\b\f2 Function(arguments)\cell File\cell Result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs \cellx3780\clbrdrt\brdrw15\brdrs \cellx5760\clbrdrt\brdrw15\brdrs \cellx9245\pard\intbl\cf2\b0\strike Utility_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cf3\strike0\{linkID=350\}\cf0\cell Utility.dll\cell Returns True if the version number of the Utility PIE is greater than or equal to the version number passed in the arguments\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\pard\intbl\cf2\strike EvalRealAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])\cf3\strike0\{linkID=360\}\cf0\cell Utility.dll\cell A real number based on the evaluation of "Expression_As_Quoted_String" evaluated at (X,Y)\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl EvalIntegerAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])\cf3\strike0\{linkID=360\}\cf0\cell Utility.dll\cell An integer based on the evaluation of "Expression_As_Quoted_String" evaluated at (X,Y)\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl EvalBooleanAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])\cf3\strike0\{linkID=360\}\cf0\cell Utility.dll\cell A Boolean based on the evaluation of "Expression_As_Quoted_String" evaluated at (X,Y)\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl EvalStringAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])\cf3\strike0\{linkID=360\}\cf0\cell Utility.dll\cell A string based on the evaluation of "Expression_As_Quoted_String" evaluated at (X,Y)\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl Rotated X('X', 'Y', 'GridAngle')\cf3\strike0\{linkID=370\}\cf0\cell Utility.dll\cell A row/column position converted to an X coordinate\cell\row
\cf2\strike\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl Rotated Y('X', 'Y', 'GridAngle')\cf3\strike0\{linkID=370\}\cf0\cell Utility.dll\cell A row/column position converted to an Y coordinate\cell\row
\intbl GetMyDirectory()\cell GetMyDirectory.dll\cell The name of the directory in which the PIE is installed\cell\row
\intbl RF_Get_Value_From_File(Key, Default_Value, [FileName])\cell ReadFileValue.dll\cell A value from a file associated with "Key" or if "Key" is not found, the Default_Value\cell\row
\intbl RF_Clear_Files()\cell ReadFileValue.dll\cell Attempts to clear a file and returns True if the function succeeds\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3780\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl RF_Save_Files()\cell ReadFileValue.dll\cell Attempts to save a file and returns True if the function succeeds\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\pard\intbl RF_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cell ReadFileValue.dll\cell Returns True if the version number of the ReadFile PIE is greater than or equal to the version number passed in the arguments\cell\row
\intbl Sec2Day(Number)\cell Utility.dll\cell Converts number from seconds to days and returns the result\cell\row
\intbl Day2Sec(Number)\cell Utility.dll\cell Converts Number from days to seconds and returns the result\cell\row
\intbl K2F(Number)\cell Utility.dll\cell Converts Number from degrees Kelvin to degrees Fahrenheit and returns the result\cell\row
\intbl F2K(Number)\cell Utility.dll\cell Converts Number from degrees Fahrenheit to degrees Kelvin and returns the result\cell\row
\intbl J2BTU(Number)\cell Utility.dll\cell Converts Number from Joules to British Thermal Units (BTU) and returns the result\cell\row
\intbl BTU2J(Number)\cell Utility.dll\cell Converts Number from BTU to Joules and returns the result\cell\row
\intbl sq_m2sq_ft(Number)\cell Utility.dll\cell Converts Number from square meters to square feet and returns the result\cell\row
\intbl sq_ft2sq_m(Number)\cell Utility.dll\cell Converts Number from square feet to square meters and returns the result\cell\row
\intbl cu_m2cu_ft(Number)\cell Utility.dll\cell Converts Number from cubic meters to cubic feet and returns the result\cell\row
\intbl cu_ft2cu_m(Number)\cell Utility.dll\cell Converts Number from cubic feet to cubic meters and returns the result\cell\row
\intbl m_s2ft_day(Number)\cell Utility.dll\cell Converts Number from meter-seconds to feet-days and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3780\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl ft_day2m_s(Number)\cell Utility.dll\cell Converts Number from feet-days to meter-seconds and returns the result\cell\row
\pard\tx3888\tx5868\tx9353 
\par \trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\pard\intbl Pa2psi(Number)\cell Utility.dll\cell Converts Number from Pascals to pounds per square inch (psi) and returns the result\cell\row
\intbl psi2Pa(Number)\cell Utility.dll\cell Converts Number from psi to Pascals and returns the result\cell\row
\intbl m_per_s2ft_per_day(Number)\cell Utility.dll\cell Converts Number from meters per second to feet per day and returns the result\cell\row
\intbl ft_per_day2m_per_s(Number)\cell Utility.dll\cell Converts Number from feet per day to meters per second and returns the result\cell\row
\intbl sq_m_per_s2sq_ft_per_day(Number)\cell Utility.dll\cell Converts Number from square meters per second to square feet per day or from cubic meters per meter-second to cubic feet per foot-day and returns the result\cell\row
\intbl sq_ft_per_day2sq_m_per_s(Number)\cell Utility.dll\cell Converts Number from square feet per day to square meters per second and returns the result\cell\row
\intbl cu_m_per_s2cu_ft_per_day(Number)\cell Utility.dll\cell Converts Number from cubic meters per second to cubic feet per day and returns the result\cell\row
\intbl cu_ft_per_day2cu_m_per_s(Number)\cell Utility.dll\cell Converts Number from cubic feet per day to cubic meters per second and returns the result\cell\row
\intbl l_per_s2cu_ft_per_day(Number)\cell Utility.dll\cell Converts Number from liters per second to cubic feet per day and returns the result\cell\row
\intbl cu_ft_per_day2l_per_s(Number)\cell Utility.dll\cell Converts Number from cubic feet per day to liters per second and returns the result\cell\row
\intbl kg_per_s2lb_per_day(Number)\cell Utility.dll\cell Converts Number from kilograms per second to pounds per day and returns the result\cell\row
\intbl lb_per_day2kg_per_s(Number)\cell Utility.dll\cell Converts Number from pounds per day to kilograms per second and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3780\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl Pa_per_s2psi_per_day(Number)\cell Utility.dll\cell Converts Number from Pascals per second to psi per day and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\pard\intbl psi_per_day2Pa_per_s(Number)\cell Utility.dll\cell Converts Number from psi per day to Pascals per second and returns the result\cell\row
\intbl kg_per_cu_m2lb_per_cu_ft(Number)\cell Utility.dll\cell Converts Number from kilograms per cubic meter to pounds per cubic foot and returns the result\cell\row
\intbl lb_per_cu_ft2kg_per_cu_m(Number)\cell Utility.dll\cell Converts Number from pounds per cubic foot to kilograms per cubic meter and returns the result\cell\row
\intbl W_per_cu_m2BTU_per_hr_cu_ft (Number)\cell Utility.dll\cell Converts Number from Watts per cubic meter to BTU per hour-cubic foot and returns the result\cell\row
\intbl BTU_per_hr_cu_ft2W_per_cu_m (Number)\cell Utility.dll\cell Converts Number from BTU per hour-cubic foot to Watts per cubic meter and returns the result\cell\row
\intbl J_per_kg2BTU_per_lb(Number)\cell Utility.dll\cell Converts Number from Joules per kilogram to BTU per pound and returns the result\cell\row
\intbl BTU_per_lb2J_per_kg(Number)\cell Utility.dll\cell Converts Number from BTU per pound to Joules per kilogram and returns the result\cell\row
\intbl J_per_kg2ft_lb_f_per_lb_m(Number)\cell Utility.dll\cell Converts Number from Joules per kilogram to foot-pound force per pound mass and returns the result\cell\row
\intbl ft_lb_f_per_lb_m2J_per_kg(Number)\cell Utility.dll\cell Converts Number from foot-pound force per pound mass to Joules per kilogram and returns the result\cell\row
\intbl cu_m_per_kg2cu_ft_per_lb(Number)\cell Utility.dll\cell Converts Number from cubic meter per kilogram to cubic foot per pound and returns the result\cell\row
\intbl cu_ft_per_lb2cu_m_per_kg(Number)\cell Utility.dll\cell Converts Number from cubic foot per pound to cubic meter per kilogram and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3780\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl cu_m_per_sq_m_s2cu_ft_per_sq_ft_day (Number)\cell Utility.dll\cell Converts Number from cubic meter per square meter-second to cubic foot per square foot-day and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\pard\intbl cu_ft_per_sq_ft_day2cu_m_per_sq_m_s (Number)\cell Utility.dll\cell Converts Number from cubic foot per square foot-day to cubic meter per square meter-second and returns the result\cell\row
\intbl W_per_sq_m2BTU_per_hr_sq_ft (Number)\cell Utility.dll\cell Converts Number from Watts per square meter to BTU per hour-square foot and returns the result\cell\row
\intbl BTU_per_hr_sq_ft2W_per_sq_m (Number)\cell Utility.dll\cell Converts Number from BTU per hour-square foot to Watts per square meter and returns the result\cell\row
\intbl kg_per_sq_m_s2lb_per_sq_ft_day (Number)\cell Utility.dll\cell Converts Number from kilogram per square meter-second to pound per square foot-day and returns the result\cell\row
\intbl lb_per_sq_ft_day2kg_per_sq_m_s (Number)\cell Utility.dll\cell Converts Number from pound per square foot-day to kilogram per square meter-second and returns the result\cell\row
\intbl kg_per_m_s2cP(Number)\cell Utility.dll\cell Converts Number from kilogram per meter-second to centipoises and returns the result\cell\row
\intbl cP2kg_per_m_s(Number)\cell Utility.dll\cell Converts Number from centipoises to kilogram per meter-second and returns the result\cell\row
\intbl J_per_kg_m2BTU_per_lb_ft (Number)\cell Utility.dll\cell Converts Number from Joules per kilogram-meter to BTU per pound-foot and returns the result\cell\row
\intbl BTU_per_lb_ft2J_per_kg_m (Number)\cell Utility.dll\cell Converts Number from BTU per pound-foot to Joules per kilogram-meter and returns the result\cell\row
\lang1043\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl W_per_m_deg_C2BTU_per_ft_hr_ \lang1033 deg_F (Number)\cell Utility.dll\cell Converts Number from Watts per meter-degree Celsius to BTU per foot-hour-degree Fahrenheit and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3780\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl BTU_per_ft_hr_deg_F2W_per_m_ deg_C (Number)\cell Utility.dll\cell Converts Number from BTU per foot-hour-degree Fahrenheit to Watts per meter-degree Celsius and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\pard\intbl W_per_sq_m_deg_C2BTU_per_hr_ sq_ft_deg_F (Number)\cell Utility.dll\cell Converts Number from Watts per square meter-degree Celsius to BTU per square foot-hour-degree Fahrenheit and returns the result\cell\row
\intbl BTU_per_hr_sq_ft_deg_F2W_per_ sq_m_deg_C (Number)\cell Utility.dll\cell Converts Number from BTU per square foot-hour-degree Fahrenheit to Watts per square meter-degree Celsius and returns the result\cell\row
\intbl J_per_kg_deg_C2BTU_per_lb_deg_F (Number)\cell Utility.dll\cell Converts Number from Joules per kilogram-degree Celsius to BTU per pound-degree Fahrenheit and returns the result\cell\row
\lang1043\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3780\cellx5760\cellx9245\intbl BTU_per_lb_deg_F2J_per_kg_deg_C (Number)\cell\lang1033 Utility.dll\cell Converts Number from BTU per pound-degree Fahrenheit to Joules per kilogram-degree Celsius and returns the result\cell\row
\intbl J_per_cu_m_deg_C2BTU_per_cu_ft _deg_F (Number)\cell Utility.dll\cell Converts Number from Joules per cubic meter-degree Celsius to BTU per cubic foot-degree Fahrenheit and returns the result\cell\row
\intbl BTU_per_cu_ft_deg_F2J_per_cu_m_ deg_C (Number)\cell Utility.dll\cell Converts Number from BTU per cubic foot -degree Fahrenheit to Joules per cubic meter-degree Celsius and returns the result\cell\row
\intbl cu_m_per_s_m_Pa2cu_ft_per_day_lb _sq_in (Number)\cell Utility.dll\cell Converts Number from cubic meter per second-meter-Pascal to cubic foot per day-point-square inch and returns the result\cell\row
\intbl cu_ft_per_day_lb_sq_in2cu_m_per_s _m_Pa (Number)\cell Utility.dll\cell Converts Number from cubic foot per day-point-square inch to cubic meter per second-meter-Pascal and returns the result\cell\row
\intbl m_per_sq_sec2ft_per_sq_day (Number)\cell Utility.dll\cell Converts Number from meter per square second to foot per square day-point-square inch and returns the result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3780\clbrdrb\brdrw15\brdrs \cellx5760\clbrdrb\brdrw15\brdrs \cellx9245\pard\intbl ft_per_sq_day2m_per_sq_sec (Number)\cell Utility.dll\cell Converts Number from foot per square day to meter per square second and returns the result\cell\row
\intbl U_Rand()\cell Utility.dll\cell Returns a pseudo-random number in the range 0 \ul <\ulnone  x < 1.  This is similar to the Argus function Rand().  However, it works in some cases where the Rand function does not.\cell\row
\intbl U_RandNormal([Mean, Standard_Deviation])\cell Utility.dll\cell Returns a random number from a Gaussian distribution with a mean value equal to Mean and a standard deviation equal to Standard_Deviation.  If the optional parameters are not supplied, it uses a mean of zero and a standard deviation of 1.  If the supplied standard deviation is less than or equal to zero, it uses a standard deviation of 1. Thanks to Peter J. Acklam (pjacklam@online.no, http://home.online.no/~pjacklam/notes/invnorm/) for developing the algorithm and Greg McCormick for implementing the algorithm in Delphi.\cell\row
\intbl\cell\cell\cell\row
\pard 
\par \b 
\par }
340
Scribble340
Table 4.  Hidden Functions Added to Argus ONE



main:000460
Writing



FALSE
123
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\froman\fprq2\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Table 4.  Hidden Functions Added to Argus ONE\cf0\b0\f1\fs24 
\par 
\par \trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx3960\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx5670\clbrdrt\brdrw15\brdrs\clbrdrb\brdrw15\brdrs \cellx9360\pard\intbl\b Function(arguments)\cell File\cell Result\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs \cellx3960\clbrdrt\brdrw15\brdrs \cellx5670\clbrdrt\brdrw15\brdrs \cellx9360\pard\intbl\b0 IsOK(Message, [HideCancel])\cell OkCancel.dll\cell Displays a dialog box with a message and several buttons Returns True or False depending on which button the user pushes\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3960\cellx5670\cellx9360\pard\intbl ok_Add_Radio_Choice(Message, [Message] , [Message] , [Message] , [Message])\cell OkCancel.dll\cell Adds up to five radio button to a dialog box and returns True if it succeeds\cell\row
\intbl ok_Get_Radio_Choice(Message, [Choices_Height], [Width], [Question_Height])\cell OkCancel.dll\cell Returns the index of the radio button that the user selects with the first radio button given an index of zero. If the user clicks the Cancel button, -1 is returned.\cell\row
\intbl ok_Radio_Free()\cell OkCancel.dll\cell Returns True if the dialog box with the radio buttons has been destroyed\cell\row
\intbl ok_UserFloat(Message, Response, [Minimum], [Maximum])\cell OkCancel.dll\cell Displays a dialog box on which a user may enter a real number, the result is the real number that the user enters\cell\row
\intbl ok_UserInteger(Message, Response, [Minimum], [Maximum])\cell OkCancel.dll\cell Displays a dialog box on which a user may enter an integer, the result is the integer that the user enters\cell\row
\intbl ok_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cell OkCancel.dll\cell Returns True if the version number of the OkCancle PIE is greater than or equal to the version number passed in the arguments\cell\row
\intbl ProgressBarInitialize(Number, [Show_Cancel])\cell ProgressBar.dll\cell Attempts to create a dialog box with a progress bar and returns True if it succeeds\cell\row
\intbl ProgressBarFree()\cell ProgressBar.dll\cell Attempts to destroy the dialog box with the progress bar and returns True if it succeeds\cell\row
\intbl ProgressBarMax(Number)\cell ProgressBar.dll\cell Attempts to set the maximum value of the progress bar and returns True if the Abort button has not been pressed and the function succeeds\cell\row
\intbl ProgressBarAdvance()\cell ProgressBar.dll\cell Attempts to advance the progress bar by one and returns True if the Abort button has not been pressed and the function succeeds\cell\row
\intbl ProgressBarSetMessage(Message)\cell ProgressBar.dll\cell Attempts to display a message with the progress bar and returns True if the Abort button has not been pressed and the function succeeds\cell\row
\intbl ProgressBarAddLine(Message)\cell ProgressBar.dll\cell Attempts to add a line to the memo-box beneath the progress bar and returns True if the Abort button has not been pressed and the function succeeds\cell\row
\intbl ProgressBarSaveToFile(File_Name)\cell ProgressBar.dll\cell Attempts to save the lines in the memo box and returns the number of lines in the file it saves\cell\row
\intbl ProgressBarCheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cell ProgressBar.dll\cell Returns True if the version number of the ProgressBar PIE is greater than or equal to the version number passed in the arguments\cell\row
\intbl Join_Files(First_File, Second_File, Result_File)\cell JoinFiles.dll\cell Attempts to concatenate two files and returns True if the function succeeds\cell\row
\intbl Delete_File(File_Name)\cell JoinFiles.dll\cell Attempts to delete a file and returns True if the function succeeds\cell\row
\intbl Rename_File(Old_File_Name, New_File_Name)\cell JoinFiles.dll\cell Attempts to rename a file and returns True if the function succeeds\cell\row
\intbl Split_File('Input_File, First_File, Search_String, Second_File [, Search_String, Third_File] [, Search_String, Fourth_File]\'85[, Search_String, Thirtieth_File])\cell JoinFiles.dll\cell Attempts to split a file into 2 to 30 separate files and returns True if the function succeeds\cell\row
\intbl Int2Str(Number)\cell JoinFiles.dll\cell Returns the base 36 representation of Number\cell\row
\intbl JF_CopyLines(Old_File_Name, New_File_Name, Line_Count, [Is_Local_File])\cell JoinFiles.dll\cell Copies Line_Count from Old_File_Name to a new file named New_File_Name and returns True if it succeeds.\cell\row
\intbl JF_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cell JoinFiles.dll\cell Returns True if the version number of the JoinFile PIE is greater than or equal to the version number passed in the arguments\cell\row
\intbl L_Initialize()\cell List.dll\cell True (obsolete function)\cell\row
\intbl L_CreateNewList()\cell List.dll\cell Creates a list and returns the number of the list that was created\cell\row
\intbl L_SetListSize(ListIndex, Size)\cell List.dll\cell Sets the size of a list and returns True if the function succeeds\cell\row
\intbl L_GetListSize(ListIndex)\cell List.dll\cell Returns the number of items in the list\cell\row
\intbl L_FreeAList(ListIndex)\cell List.dll\cell Attempts to remove all items from a list and returns True if the function succeeds\cell\row
\intbl L_AddToList(ListIndex, Value)\cell List.dll\cell Adds a value to a list and returns the position of Value in the list if the function succeeds\cell\row
\intbl L_GetFromList(ListIndex, Index)\cell List.dll\cell Returns the item indicated by ListIndex and Index\cell\row
\intbl L_SetListItem(ListIndex, Index, Value)\cell List.dll\cell Attempts to set the value of an item in a list and returns True if the function succeeds\cell\row
\lang1030\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3960\cellx5670\cellx9360\intbl L_DeleteListItem(ListIndex, Index)\cell\lang1033 List.dll\cell Attempts to remove an item from a list and returns True if the function succeeds\cell\row
\intbl L_SortList(ListIndex)\cell List.dll\cell Sorts a list in ascending order and returns True if the function succeeds\cell\row
\intbl L_EliminateDuplicates(ListIndex)\cell List.dll\cell Eliminates duplicate values from a sorted list and returns True if the function succeeds\cell\row
\intbl L_IndexOf(ListIndex, Value)\cell List.dll\cell Returns the position of Value in the sorted list of the position of the first copy of highest number less than Value in the sorted list if Value is not in the sorted list\cell\row
\intbl L_UnsortedIndexOf(ListIndex, Value)\cell List.dll\cell Returns the position of the first copy of Value in the list  Returns -1 if Value is not in the list\cell\row
\intbl L_CreateNew3DList(Maximum_X, Maximum_Y, Maximum_Z)\cell List.dll\cell Creates a 3D list and returns the number of the 3D list that was created\cell\row
\intbl L_FreeA3DList(ListIndex)\cell List.dll\cell Attempts to destroy a 3D list and returns True if the function succeeds\cell\row
\intbl L_GetFrom3DList(ListIndex, X_Index, Y_Index, Z_Index)\cell List.dll\cell Returns the item indicated by ListIndex X_Index, Y_Index, and Z_Index\cell\row
\intbl L_GetFromOneBased3DList(ListIndex, X_Index, Y_Index, Z_Index)\cell List.dll\cell Returns the item indicated by ListIndex X_Index, Y_Index, and Z_Index\cell\row
\intbl L_Set3DListItem(ListIndex, X_Index, Y_Index, Z_Index, Value)\cell List.dll\cell Sets the value indicated by ListIndex X_Index, Y_Index, and Z_Index and returns True if the function succeeds\cell\row
\intbl L_SetOneBased3DListItem(ListIndex, X_Index, Y_Index, Z_Index, Value)\cell List.dll\cell Sets the value indicated by ListIndex X_Index, Y_Index, and Z_Index and returns True if the function succeeds\cell\row
\intbl L_ResetA3DList(ListIndex)\cell List.dll\cell Sets all members of the 3D list indicated by ListIndex to 0 and returns True if the function succeeds\cell\row
\intbl L_Add3DLists(FirstListIndex, SecondListIndex, ResultListIndex)\cell List.dll\cell Adds the corresponding members of two 3D lists and returns True if the function succeeds\cell\row
\intbl L_Subtract3DLists(FirstListIndex, SecondListIndex, ResultListIndex)\cell List.dll\cell Subtracts the corresponding members of one 3D list from those of another 3D list and returns True if the function succeeds\cell\row
\intbl L_Multiply3DLists(FirstListIndex, SecondListIndex, ResultListIndex)\cell List.dll\cell Multiplies the corresponding members of two 3D lists and returns True if the function succeeds\cell\row
\intbl L_Divide3DLists(FirstListIndex, SecondListIndex, ResultListIndex)\cell List.dll\cell Divides the corresponding members of one 3D list by those of another 3D list and returns True if the function succeeds\cell\row
\intbl L_Multipy3DByConstant(ListIndex, ResultListIndex, Value)\cell List.dll\cell Multiplies the members of a 3D list by a constant and returns True if the function succeeds\cell\row
\intbl L_Invert3DListMembers(ListIndex, ResultListIndex)\cell List.dll\cell Inverts the members of a 3D list and returns True if the function succeeds\cell\row
\intbl L_IsSingPrecUniform(ListIndex)\cell List.dll\cell Returns True if all the members of a list are the same after being converted to single precision\cell\row
\intbl L_GetErrorCount()\cell List.dll\cell Returns the number of errors\cell\row
\intbl L_FreeAllLists()\cell List.dll\cell Attempts to destroy all lists, 3D lists, and named lists and returns True if the function succeeds\cell\row
\intbl L_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cell List.dll\cell Returns True if the version number of the List PIE is greater than or equal to the version number passed in the arguments\cell\row
\intbl L_AddToNamedList(Name, Number)\cell List.dll\cell Adds Number to the list of real numbers named "Name".  If such a list does not yet exist, it is created. Returns the number of items in the list\cell\row
\intbl L_GetFromNamedList(Name, Position)\cell List.dll\cell Returns the item at position in the list named "Name".\cell\row
\intbl L_GetNamedListCount(Name)\cell List.dll\cell Returns the number of items in the list named "Name".\cell\row
\intbl L_FreeNamedList(Name)\cell List.dll\cell Destroys the list named "Name"\cell\row
\intbl L_GetNumberOfNamedLists()\cell List.dll\cell Returns the number of named lists.\cell\row
\intbl L_GetNameOfList(ListIndex)\cell List.dll\cell Returns the name of the list whose position in the list of named list is ListIndex\cell\row
\intbl L_FreeNamedLists()\cell List.dll\cell Destroys all named lists. Returns true if successful.\cell\row
\intbl BL_InitializeGridInformation (Grid_Layer_Name_as_String, [GridType])\cell BlockList.dll\cell Attempts to read grid information from Argus ONE and returns 1 if the function succeeds\cell\row
\intbl BL_AddVertexLayer (Information_Layer_Name_as_String)\cell BlockList.dll\cell Attempts to read contour information from Argus ONE and returns True if the function succeeds\cell\row
\intbl BL_ReInitializeVertexList()\cell BlockList.dll\cell Attempts to delete all contour information that has been read from Argus ONE and returns True if the function succeeds\cell\row
\intbl BL_GetCountOfCellLists()\cell BlockList.dll\cell Returns the number of lists of cells currently in memory\cell\row
\intbl BL_GetCountOfACellList(ListIndex)\cell BlockList.dll\cell Returns the number of cells in a list of cells\cell\row
\intbl BL_GetCellRow(ListIndex, Index)\cell BlockList.dll\cell Returns the row number of a cell\cell\row
\intbl BL_GetCellColumn(ListIndex, Index)\cell BlockList.dll\cell Returns the column number of a cell\cell\row
\intbl BL_GetVertexCount(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the number of vertices of a contour in a cell\cell\row
\intbl BL_GetVertexXPos(ListIndex, CellIndex, VertexIndex)\cell BlockList.dll\cell Returns the X-coordinate of a vertex\cell\row
\intbl BL_GetVertexYPos(ListIndex, CellIndex, VertexIndex)\cell BlockList.dll\cell Returns the Y-coordinate of a vertex\cell\row
\intbl BL_SegmentCount(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the number of segments of a contour in a cell\cell\row
\intbl BL_SegmentFirstX(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the X-coordinate of the first vertex of a segment\cell\row
\intbl BL_SegmentFirstY(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the Y-coordinate of the first vertex of a segment\cell\row
\intbl BL_SegmentSecondX(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the X-coordinate of the second vertex of a segment\cell\row
\intbl BL_SegmentSecondY(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the Y-coordinate of the second vertex of a segment\cell\row
\intbl BL_SegmentLengthX(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the length of a segment in the X-direction\cell\row
\intbl BL_SegmentLengthY(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the length of a segment in the Y-direction\cell\row
\intbl BL_SegmentLength(ListIndex, CellIndex, SegmentIndex)\cell BlockList.dll\cell Returns the length of a segment\cell\row
\intbl BL_SumSegmentsX(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the sum of the lengths in the X-direction of all the segments in a cell\cell\row
\intbl BL_SumSegmentsY(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the sum of the lengths in the Y-direction of all the segments in a cell\cell\row
\intbl BL_SumSegmentLengths(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the sum of the lengths of all the segments in a cell\cell\row
\intbl BL_GetCountOfCombinedCellList()\cell BlockList.dll\cell Returns the number of cells intersected by any contour\cell\row
\intbl BL_GetCellRowFromCombinedList (CellIndex)\cell BlockList.dll\cell Returns the row number of a cell intersected by any contour\cell\row
\intbl BL_GetCellColumnFromCombinedList (CellIndex)\cell BlockList.dll\cell Returns the column number of a cell intersected by any contour\cell\row
\intbl BL_GetCountOfCrossRowLists()\cell BlockList.dll\cell Returns the number of lists of cells in which a contour crosses the Y-coordinate of the cell node\cell\row
\intbl BL_GetCountOfCrossColumnLists()\cell BlockList.dll\cell Returns the number of cells in a list of cells in which a contour crosses the X-coordinate of the cell node\cell\row
\intbl BL_GetCountOfACrossRowList (ListIndex)\cell BlockList.dll\cell Returns the number of cells in a list of cells in which a contour crosses the Y-coordinate of the cell node\cell\row
\intbl BL_GetCountOfACrossColumnList (ListIndex)\cell BlockList.dll\cell Returns the number of cells in a list of cells in which a contour crosses the X-coordinate of the cell node\cell\row
\intbl BL_GetCrossRowRow(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the row number of a cell in a list of cells in which a contour crosses the Y-coordinate of the cell node\cell\row
\intbl BL_GetCrossColumnRow(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the row number of a cell in a list of cells in which a contour crosses the X-coordinate of the cell node\cell\row
\intbl BL_GetCrossRowColumn(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the column number of a cell in a list of cells in which a contour crosses the Y-coordinate of the cell node\cell\row
\intbl BL_GetCrossColumnColumn (ListIndex, CellIndex)\cell BlockList.dll\cell Returns the column number of a cell in a list of cells in which a contour crosses the X-coordinate of the cell node\cell\row
\intbl BL_GetCrossRowNeighborColumn (ListIndex, CellIndex)\cell BlockList.dll\cell Returns the column number of the neighbor of a cell in a list of cells in which a contour crosses the Y-coordinate of the cell node\cell\row
\intbl BL_GetCrossColumnNeighborRow (ListIndex, CellIndex)\cell BlockList.dll\cell Returns the row number of the neighbor of a cell in a list of cells in which a contour crosses the X-coordinate of the cell node\cell\row
\intbl BL_GetCrossRowCompositeY (ListIndex, CellIndex)\cell BlockList.dll\cell Returns a total difference in Y-coordinate of segments in one or more cells\cell\row
\intbl BL_GetCrossColumnCompositeX (ListIndex, CellIndex)\cell BlockList.dll\cell Returns a total difference in X-coordinate of segments in one or more cells\cell\row
\intbl BL_GetSumCrossRowCompositeY (ListIndex)\cell BlockList.dll\cell Returns the sum of the BL_GetCrossRowCompositeY's for all the cells in the list that cross the Y-coordinate of the cell node\cell\row
\intbl BL_GetSumCrossColumnCompositeX (ListIndex)\cell BlockList.dll\cell Returns the sum of the BL_GetCrossColumnCompositeX's for all the cells in the list that cross the X-coordinate of the cell node\cell\row
\intbl BL_GetCrossRowCompositeLength (ListIndex, CellIndex)\cell BlockList.dll\cell Returns the length of the contour associated with a cell in the list that crosses the Y-coordinate of the cell node\cell\row
\intbl BL_GetCrossColumnCompositeLength (ListIndex, CellIndex)\cell BlockList.dll\cell Returns the length of the contour associated with a cell in the list that crosses the X-coordinate of the cell node\cell\row
\intbl BL_GetRowBoundary(Row)\cell BlockList.dll\cell Returns the position of the Row boundary indicated by Row\cell\row
\intbl BL_GetColumnBoundary(Column)\cell BlockList.dll\cell Returns the position of the Column boundary indicated by Column\cell\row
\lang2060\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \cellx3960\cellx5670\cellx9360\intbl BL_PointInsideContour (ListIndex, X, Y)\cell\lang1033 BlockList.dll\cell Returns True if (X, Y) is inside the contour indicated by ListIndex\cell\row
\intbl BL_GetRowNodePosition(Row)\cell BlockList.dll\cell Returns the Y position of the node of the Row indicated by "Row"\cell\row
\intbl BL_GetColumnNodePosition(Column)\cell BlockList.dll\cell Returns the X position of the node of the Column indicated by "Column"\cell\row
\intbl BL_GetRowBoundaryCount()\cell BlockList.dll\cell Returns the number of row boundaries in the grid\cell\row
\intbl BL_GetColumnBoundaryCount()\cell BlockList.dll\cell Returns the number of column boundaries in the grid\cell\row
\intbl BL_GetRowNodeCount()\cell BlockList.dll\cell Returns the number of row nodes in the grid\cell\row
\intbl BL_GetColumnNodeCount()\cell BlockList.dll\cell Returns the number of column nodes in the grid\cell\row
\intbl BL_GetCellArea(Column, Row)\cell BlockList.dll\cell Returns the area of the cell indicated by Column, Row\cell\row
\intbl BL_FractionOfLine(ListIndex, CellIndex)\cell BlockList.dll\cell Returns the fraction of the total length of the contour inside the cell indicated by CellIndex\cell\row
\intbl BL_FreeVertexList()\cell BlockList.dll\cell Attempts to free all memory associated with a list of verticies and returns True if the function succeeds\cell\row
\intbl BL_FreeAllBlockLists()\cell BlockList.dll\cell Attempts to free all memory allocated by the BlockList PIE and returns True if the function succeeds\cell\row
\intbl BL_GetErrorCount()\cell BlockList.dll\cell Returns the number of errors\cell\row
\trowd\trgaph108\trleft-108\trbrdrt\brdrs\brdrw10 \trbrdrb\brdrs\brdrw10 \clbrdrb\brdrw15\brdrs \cellx3960\clbrdrb\brdrw15\brdrs \cellx5670\clbrdrb\brdrw15\brdrs \cellx9360\pard\intbl BL_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit)\cell BlockList.dll\cell Returns True if the version number of the BlockList PIE is greater than or equal to the version number passed in the arguments\cell\row
\pard 
\par 
\par \f2 
\par }
350
Scribble350
Utility_CheckVersion



main:000470
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Utility_CheckVersion\cf0\b0\f1\fs24 
\par 
\par \pard\fi680\f2 Utility_CheckVersion(First_Digit, Second_Digit, Third_Digit, Fourth_Digit) returns True if the version number of the Utility dynamic link library is greater than or equal to the version number passed in the arguments.  To check the version number of the dynamic link library right-click on Utility.dll, select "Properties", and go to the version information tab.\f1 
\par }
360
Scribble360
EvalRealAtXY, EvalIntegerAtXY, EvalBooleanAtXY, and EvalStringAtXY



main:000480
Writing



FALSE
12
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 EvalRealAtXY, EvalIntegerAtXY, EvalBooleanAtXY, and EvalStringAtXY\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\f2 EvalRealAtXY, EvalIntegerAtXY, EvalBooleanAtXY, and EvalStringAtXY allow an expression to be evaluated at a specified X, Y location.  The four functions return a real number, integer, Boolean, and string respectively.  The expression is passed to the function as a quoted string.  It is up to the user to make sure that the expression is correctly formatted and that the value returned by the function is compatible with the type of the parameter to which it is assigned.  If desired, the user may specify the layer on which the expression should be evaluated.  The formats of the commands are as follows:
\par 
\par \pard\fi-720\li720 EvalRealAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])
\par EvalIntegerAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])
\par EvalBooleanAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])
\par EvalStringAtXY(X, Y, "Expression_As_Quoted_String", ["Layer_Name_As_Quoted_String"])
\par \pard\f1 
\par }
370
Scribble370
Rotated X, and Rotated Y



main:000490
Writing



FALSE
9
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Rotated X, and Rotated Y\cf0\b0\f1\fs24 
\par 
\par \pard\fi720\b\f2 Rotated X\b0 , and \b Rotated Y\b0  are functions that can take row or column positions provided by Argus ONE along with the grid angle and convert them to (X, Y) coordinates.  This could be done entirely by an export template, but using a PIE can make the export template simpler and easier to understand and perhaps faster too.  
\par \b Rotated X \b0 has three arguments: X, Y, and GridAngle.  X is a column position.  Y is a row position.  GridAngle is the angle of the grid.  \b Rotated X \b0 returns the X-coordinate of the point defined by the intersection of the row and column positions.  \b Rotated Y \b0 is just like \b Rotated X \b0 except that it returns the Y-Coordinate.  
\par The \cf2\strike first export template\cf3\strike0\{linkID=380\}\cf0  uses \b Rotated X \b0 and \b Rotated Y\b0  to export the row and column numbers or each cell in a grid followed by the X and Y coordinates of the four corners of the cell.  The template can be used to reproducing the grid in other programs.  Users may modify the template to meet their specific requirements.
\par The \cf2\strike second export template\cf3\strike0\{linkID=390\}\cf0  uses \b Rotated X \b0 and \b Rotated Y\b0  to export a contour that surrounds a single cell.  The contour can be used as a domain outline in models that define a subgrid in a single cell.\f1 
\par }
380
Scribble380
Export Template 1 Using Rotated X, and Rotated Y



main:000500
Writing



FALSE
47
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fswiss\fprq2\fcharset0 Arial;}{\f3\froman\fprq2\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Export Template 1 Using Rotated X, and Rotated Y\cf0\b0\f1\fs24 
\par 
\par \f2\fs18 # 
\par # Export template to export the row and column numbers
\par #  and the locations of the four corners of each block.
\par \lang2058 # 
\par Define Variable: X [Real]
\par Define Variable: Y [Real]
\par \lang1033 # 
\par Redirect output to: $BaseName$
\par \tab Start a new line
\par \tab\tab Export expression: "Row Number"; [G0]
\par \tab\tab Export expression: "Column Number"; [G0]
\par \tab\tab Export expression: "X-coord 1"; [G0]
\par \tab\tab Export expression: "Y-coord 1"; [G0]
\par \tab\tab Export expression: "X-coord 2"; [G0]
\par \tab\tab\lang2060 Export expression: "Y-coord 2"; [G0]
\par \tab\tab Export expression: "X-coord 3"; [G0]
\par \tab\tab Export expression: "Y-coord 3"; [G0]
\par \tab\tab Export expression: "X-coord 4"; [G0]
\par \tab\tab Export expression: "Y-coord 4"; [G0]
\par \tab\lang1033 End line
\par \tab Loop for: Blocks
\par \tab\tab Start a new line
\par \tab\tab\tab Export expression: Row(); [G0]
\par \tab\tab\tab Export expression: Column(); [G0]
\par \tab\tab\tab\lang2058 Set Variable: X:= NthColumnPos(Column()-1)
\par \tab\tab\tab\lang1033 Set Variable: Y:= NthRowPos(Row()-1)
\par \tab\tab\tab Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\lang2058 Set Variable: X:= NthColumnPos(Column())
\par \tab\tab\tab\lang1033 Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab Set Variable: Y:= NthRowPos(Row())
\par \tab\tab\tab Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\lang2058 Set Variable: X:= NthColumnPos(Column()-1)
\par \tab\tab\tab\lang1033 Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab End line
\par \tab End loop
\par End file
\par \pard\fi720\f3\fs24 
\par 
\par }
390
Scribble390
Export Template 2 Using Rotated X, and Rotated Y



main:000510
Writing



FALSE
69
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fswiss\fprq2\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Export Template 2 Using Rotated X, and Rotated Y\cf0\b0\f1\fs24 
\par 
\par \f2 #\f3\fs18  
\par # This template uses the OkCancel and Utility PIEs
\par # to export a contour that surrounds a single cell.
\par # The contour can be used as a domain outline for a
\par # model that defines a subgrid within that cell.
\par # 
\par Define Variable: RowToUse [Integer]
\par Define Variable: ColumnToUse [Integer]
\par Define Variable: X [Real]
\par Define Variable: Y [Real]
\par Redirect output to: $BaseName$
\par \tab Set Variable: RowToUse:= OK_UserInteger("What row do you want to use?", 1, 1, NumRows())
\par \tab Set Variable: ColumnToUse:= OK_UserInteger("What column do you want to use?", 1, 1, NumColumns())
\par \tab Start a new line
\par \tab\tab Export expression: "## Name:" [G0]
\par \tab End line
\par \tab Start a new line
\par \tab\tab\lang2060 Export expression: "## Icon:"; [G0]
\par \tab\tab Export expression: 0 [G0]
\par \tab\lang1033 End line
\par \tab Start a new line
\par \tab\tab Export expression: "# Points Count"; [G0]
\par \tab\tab Export expression: "Value" [G0]
\par \tab End line
\par \tab Start a new line
\par \tab\tab\lang2060 Export expression: 5 [G0]
\par \tab\lang1033 End line
\par \tab Start a new line
\par \tab\tab\lang2060 Export expression: "# X pos"; [G0]
\par \tab\tab Export expression: "Y pos" [G0]
\par \tab\lang1033 End line
\par \tab Loop for: Blocks
\par \tab\tab If: (Row()=RowToUse)&(Column()=ColumnToUse)
\par \tab\tab\tab Start a new line
\par \tab\tab\tab\tab\lang2058 Set Variable: X:= NthColumnPos(Column()-1)
\par \tab\tab\tab\tab\lang1033 Set Variable: Y:= NthRowPos(Row()-1)
\par \tab\tab\tab\tab Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab End line
\par \tab\tab\tab Start a new line
\par \tab\tab\tab\tab\lang2058 Set Variable: X:= NthColumnPos(Column())
\par \tab\tab\tab\tab\lang1033 Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab End line
\par \tab\tab\tab Start a new line
\par \tab\tab\tab\tab Set Variable: Y:= NthRowPos(Row())
\par \tab\tab\tab\tab Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab End line
\par \tab\tab\tab Start a new line
\par \tab\tab\tab\tab\lang2058 Set Variable: X:= NthColumnPos(Column()-1)
\par \tab\tab\tab\tab\lang1033 Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab End line
\par \tab\tab\tab Start a new line
\par \tab\tab\tab\tab Set Variable: Y:= NthRowPos(Row()-1)
\par \tab\tab\tab\tab Export expression: Rotated X(X, Y, GridAngle()); [G0]
\par \tab\tab\tab\tab Export expression: Rotated Y(X, Y, GridAngle()); [G0]
\par \tab\tab\tab End line
\par \tab\tab End if
\par \tab End loop
\par End file
\par \f1\fs24 
\par 
\par }
400
Scribble400
Example 1: Importing a MODFLOW Grid, Introduction



main:000520
Writing



FALSE
24
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Example 1: Importing a MODFLOW Grid, Introduction\cf0\b0\f1\fs24 
\par 
\par The widths of the rows and columns for a grid in MODFLOW are stored in two arrays DELR and DELC.  In MODFLOW-96, these are in the input file for the BCF package.  In MODFLOW-2000, they are in the discretization file.  Here is an example of the two arrays.
\par 
\par \f2\fs20         11     1000.  (22F4.0)                   7         DELR
\par  20. 20. 30. 20.  5. 10.  5. 10.  5.  4.  3.  3.  1.  1.  3.  3.  4.  3.  2.  2.  3.  3.
\par         11     1000.  (27F4.0)                   7         DELC
\par   4.  4.  4.  1.  1.  1.  1.  2.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.
\par   3.  3.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4. 20. 20. 16.\f1\fs24 
\par 
\par DELR represents the widths of the columns.  DELC represents the heights of the rows.  In this case there are 22 columns and 54 rows.
\par 
\par The first line of each array starts with the number 11.  This tells the program which file contains the array.  Usually the array will be immediately after the header line but it is possible it will be in a different file.  If so, you will need to figure out what file it is in.
\par 
\par Next comes the number 1000.  This number is the multiplier; every number in the array needs to multiplied by this number.
\par 
\par Next comes the format of the numbers enclosed in parentheses.  In the case of DELR, the format is "22F4.0".  This means that each number will take up 4 characters on the line and that there will be 22 numbers on the line.
\par 
\par We can ignore the remainder of the line.
\par 
\par \cf2\b\strike Next\cf3\strike0\{linkID=410\}\cf0\b0 
\par }
410
Scribble410
Example 1: Importing a MODFLOW Grid, Step 1



main:000530
Writing



FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 1: Importing a MODFLOW Grid, Step 1\cf0\b0\f1\fs24 
\par 
\par First, start a new MODFLOW project and then select \cf2\b\strike PIEs|Edit...|Edit Grid...\cf3\strike0\{linkID=130\}\cf0 
\par 
\par \b0 Next, choose the MODFLOW FD Grid layer and say that it is a block-centered grid.
\par 
\par Next, Copy the numbers from the DELR array to the clipboard and \f2 click on the \b Column/Row Widths\b0  button\cf3  \{bmc editwidths.bmp\}\cf0 .  The numbers you need to copy are in the second line in the data shown below.  In the \cf2\strike Edit row and column widths dialog box\cf3\strike0\{linkID=135\}\cf0 , click on the \b Paste\b0  button on the left.  Then set the multiplier for the column widths to 1000.  Repeat the process with DELC except you should paste it in the table on the right.  Finally click the \b OK \b0 button.
\par 
\par \f3\fs20         11     1000.  (22F4.0)                   7         DELR
\par  20. 20. 30. 20.  5. 10.  5. 10.  5.  4.  3.  3.  1.  1.  3.  3.  4.  3.  2.  2.  3.  3.
\par         11     1000.  (27F4.0)                   7         DELC
\par   4.  4.  4.  1.  1.  1.  1.  2.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.  3.
\par   3.  3.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4.  4. 20. 20. 16.\f1\fs24 
\par 
\par \cf2\b\strike Next\cf3\strike0\{linkID=420\}\cf0\b0 
\par }
420
Scribble420
Example 1: Importing a MODFLOW Grid, Step 2



main:000540
Writing



FALSE
6
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 1: Importing a MODFLOW Grid, Step 2\cf0\b0\f1\fs24 
\par 
\par The grid will appear in the main window for the \cf2\b Edit Grid\cf3\{linkID=130\}\cf0\b0  command.  The coordinates of the origin of the grid and the grid angle are not included in the MODFLOW input files so you will need to get that information from elsewhere such as a report written about the model.  When you have set the grid origin and angle, click the OK button to finish importing the grid.
\par }
430
Scribble430
Example 2: Importing MODFLOW Array Data, Step 1



main:000550
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Example 2: Importing MODFLOW Array Data, Step 1\cf0\b0\f1\fs24 
\par 
\par This example imports data from the model described in \cf2\strike example 1\cf3\strike0\{linkID=400\}\cf0 .  You need to reproduce the grid used in the example 1 before you can follow the steps of this example.  Once you have done that come back here.
\par 
\par We will start by importing the IBOUND array.  The IBOUND array determines which cells in the model are inactive cells, active cells, or perscribed head cells.  Values of 0 represent inactive cells. Positive values represent active cells.  Negative values represent prescribed head cells.  To see the IBOUND array we will import click on the link below and it will appear in a separate window.
\par 
\par \cf2\strike IBOUND array to import\cf3\strike0\{linkID=460>data\}\cf0 
\par 
\par The first line of the array is different.  It tells MODFLOW where and how to read the array.  The first number (1 in this case) tells the unit number of the file from which it should read the data.  Unit numbers are associated with file names in the "name file" used by MODFLOW.
\par 
\par The second number (also 1 in this case) is the multiplier.  It is a value by which all the numbers in the array are multiplied after the array is read.
\par 
\par Following that is the input format which in this case is "(22I3)".  Which means to read 22 integer numbers in a line each of which will occupy 3 characters in the line.  
\par 
\par The last number in the line specifies the format in which the array should be printed in the output.  We can ignore that number as well as the comments on the remainder of the line.
\par 
\par Finally, we get to the array itself.  In this case, many values that should be zero are represented by blanks.  
\par }
440
Scribble440
Example 2: Importing MODFLOW Array Data, Step 2



main:000560
Writing



FALSE
13
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: Importing MODFLOW Array Data, Step 2\cf0\b0\f1\fs24 
\par 
\par Select PIEs|Import|\cf2\strike Import Gridded Data...\cf3\strike0\{linkID=180\}\cf0 .  The \cf2\strike IBOUND array\cf3\strike0\{linkID=460>data\}\cf0  for this example has fields with a fixed width so choose the \b Fixed width\b0  data type.  Copy the array to the clipboard except for the first line.  Then click on the \b Paste \b0 button.  A \b Preview\b0  window will appear.  Most of the data is already split up properly but it still needs a little work.  
\par For example, the first column and the second column are made up entirely of blanks so they haven't been separated from each other. Click on the column heading in column 1 to split it into two columns.  Do the same with the last column.  If you make a mistake, click in the header area on the line separating two cells to rejoin them.  When you are done, click the \b Next\b0  button.
\par 
\par The last column is not really part of the IBOUND array.  It was just used to label rows. Click on the column header for the last column to indicate that it should not be used.  When you are done, click the \b Next\b0  button.
\par 
\par An edit box will now appear in which you can edit the multiplier for the array. Enter the multiplier (in this case one) and click the \b Finish button\b0 .  This will take you back to the \cf2\strike Import Gridded Data\cf3\strike0\{linkID=180\}\cf0  dialog box.  Set the number of values to ignore to 1 and set the value to ignore to 0 so you will only import data where there are active cells or constant head cells.  Change the parameter name to IBOUND.
\par 
\par 
\par }
450
Scribble450
Example 2: Importing MODFLOW Array Data, Step 3



main:000570
Writing



FALSE
14
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: Importing MODFLOW Array Data, Step 3\cf0\b0\f1\fs24 
\par 
\par Next we will try to import the \cf2\strike initial heads\cf3\strike0\{linkID=470>data\}\cf0 .  
\par 
\par Change the \b Number of data sets \b0 to 2.  A new blank table will appear.  Copy the \cf2\strike initial heads\cf3\strike0\{linkID=470>data\}\cf0   to the clipboard.  and click the Paste button. again.  You will go through much the same process to import this array as with with the IBOUND array. The first two characters in each line  will need to be skipped.
\par 
\par Repeat the process again with the \cf2\strike Hydraulic Conductivity\cf3\strike0\{linkID=480>data\}\cf0  array.  Be sure to note that the \b Multiplier \b0 is 19.00 in the main MODDFLOW input file.
\par 
\par Repeat the process with the \cf2\strike Bottom Layer 1\cf3\strike0\{linkID=490>data\}\cf0  array, the \cf2\strike Storativity\cf3\strike0\{linkID=500>data\} \cf0 array and the \cf2\strike Top Layer 1\cf3\strike0\{linkID=490>data\}\cf0  array.  the \cf2\strike Bottom Layer 1\cf3\strike0\{linkID=490>data\}\cf0  array, has lines that don't go far enough so the Preview window will ask if you want to add new columns.
\par 
\par 
\par }
460
Scribble460
Example 2: IBOUND Array



main:000580
Writing



FALSE
63
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: IBOUND Array\cf0\b0\f1\fs24 
\par 
\par Next: \cf2\strike Initial Head Array\cf3\strike0\{linkID=470\}\cf0 
\par 
\par \f2\fs20          1         1(22I3)                       3            IBOUND-1
\par                                                                      1
\par                                                1  1                  2
\par                                                1  1                  3
\par                                             1  1  1                  4
\par                                    1  1     1  1  1                  5
\par                                    1  1     1  1  1                  6
\par                                       1     1  1  1                  7
\par                                 1  1  1  1  1  1  1                  8
\par                                 1  1  1  1  1  1  1  1  1  1  1      9
\par                                 1  1  1  1  1  1  1  1  1  1  1     10
\par                                 1  1  1  1  1  1  1  1  1  1  1     11
\par                                 1  1  1  1  1  1  1  1  1  1  1     12
\par                              1  1  1  1  1  1  1  1  1  1  1  1     13
\par                              1  1  1  1  1  1  1  1  1  1  1  1     14
\par                              1  1  1  1  1  1  1  1  1  1  1        15
\par                              1  1  1  1  1  1  1  1  1  1  1        16
\par                              1  1  1  1  1  1  1  1  1  1  1        17
\par                              1  1  1  1  1  1  1  1  1  1  1        18
\par                           1  1  1  1  1  1  1  1  1  1  1  1        19
\par                           1  1  1  1  1  1  1  1  1  1  1  1        20
\par                           1  1  1  1  1  1  1  1  1  1  1  1        21
\par                           1  1  1  1  1  1  1  1  1  1  1  1  1     22
\par                           1  1  1  1  1  1  1  1  1  1  1  1  1     23
\par                           1  1  1  1  1  1  1  1  1  1  1  1  1     24
\par                           1  1  1  1  1  1  1  1  1  1  1  1  1     25
\par                           1  1  1  1  1  1  1  1  1  1  1  1        26
\par                        1  1  1  1  1  1  1  1  1  1  1  1  1        27
\par                        1  1  1  1  1  1  1  1  1  1  1  1  1        28
\par                        1  1  1  1  1  1  1  1  1  1  1  1  1        29
\par                        1  1  1  1  1  1  1  1  1  1  1  1           30
\par                        1  1  1  1  1  1  1  1  1  1  1  1           31
\par                        1  1  1  1  1  1  1  1  1  1  1  1           32
\par                        1  1  1  1  1  1  1  1  1  1  1  1  1  1     33
\par                     1  1  1  1  1  1  1  1  1  1  1  1  1  1  1     34
\par                     1  1  1  1  1  1  1  1  1  1  1  1  1  1        35
\par                     1  1  1  1  1  1  1  1  1  1  1  1  1           36
\par                     1  1  1  1  1  1  1  1  1  1  1  1              37
\par                     1  1  1  1  1  1  1  1  1  1  1                 38
\par                     1  1  1  1  1  1  1  1  1  1  1                 39
\par                  1  1  1  1  1  1  1  1  1  1  1  1                 40
\par                  1  1  1  1  1  1  1  1  1  1                       41
\par                  1  1  1  1  1  1  1  1  1                          42
\par            1     1  1  1  1  1  1                                   43
\par            1  1  1  1  1  1  1  1                                   44
\par            1  1  1  1  1  1  1  1                                   45
\par            1  1  1  1  1  1  1  1  1  1  1                          46
\par            1  1  1  1  1  1  1  1  1  1  1                          47
\par            1  1  1  1  1  1  1  1  1  1  1                          48
\par            1  1  1  1  1  1  1  1  1  1  1                          49
\par            1  1  1  1  1  1  1  1  1  1  1  1  1  1  1              50
\par            1  1  1  1  1  1  1  1  1  1  1  1  1  1  1              51
\par         1  1  1  1  1  1  1  1  1  1  1                             52
\par      1  1  1  1  1  1                                               53
\par                                                                     54
\par \f1\fs24 
\par }
470
Scribble470
Example 2: Initial Head Array



main:000590
Writing



FALSE
66
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\fs32 Example 2: Initial Head Array\cf0\b0\f1\fs24 
\par 
\par Please note the "2X" in the format for this array.  That means to skip the first two columns.  
\par 
\par Next: \cf2\strike Hydraulic Conductivity Array\cf3\strike0\{linkID=480\}
\par \cf0 Back \cf2\strike IBOUND Array\cf3\strike0\{linkID=460\}
\par \cf0\f2\fs20 
\par \fs16          1         1 (2X,22F6.2)                 6
\par  1                                                                                                                                   1
\par  2                                                                                           20.31 20.32                             2
\par  3                                                                                           20.30 20.34                             3
\par  4                                                                                     20.07 20.25 20.37                             4
\par  5                                                                    8.19 10.51       20.05 20.24 20.39                             5
\par  6                                                                    8.68 11.68       20.00 20.24 20.42                             6
\par  7                                                                         14.34       19.94 20.25 20.47                             7
\par  8                                                             19.93 18.95 18.32 19.01 19.84 20.27 20.56                             8
\par  9                                                             19.93 19.67 19.78 19.89 20.15 20.45 20.82 21.77 22.98 24.90 28.54     9
\par 10                                                             20.40 20.42 20.49 20.52 20.62 20.81 21.10 21.77 22.84 24.51 27.18    10
\par 11                                                             20.84 20.87 20.91 20.93 20.99 21.10 21.24 21.73 22.66 23.90 25.33    11
\par 12                                                             21.23 21.17 21.20 21.21 21.24 21.30 21.40 21.81 22.51 23.73 25.60    12
\par 13                                                       21.58 21.50 21.42 21.42 21.42 21.44 21.47 21.56 21.88 22.41 23.46 24.77    13
\par 14                                                       21.66 21.63 21.61 21.61 21.61 21.62 21.65 21.75 22.18 22.88 24.12 26.34    14
\par 15                                                       21.77 21.77 21.77 21.78 21.78 21.79 21.83 21.99 22.46 22.98 23.53          15
\par 16                                                       21.88 21.91 21.92 21.92 21.92 21.94 21.98 22.19 22.71 23.35 24.13          16
\par 17                                                       21.98 22.01 22.02 22.03 22.04 22.06 22.12 22.33 23.23 24.35 25.29          17
\par 18                                                       22.03 22.07 22.10 22.12 22.13 22.16 22.24 22.47 23.58 24.82 25.27          18
\par 19                                                 22.03 22.05 22.10 22.14 22.17 22.19 22.24 22.32 22.57 23.80 25.08 25.58          19
\par 20                                                 22.03 22.03 22.08 22.15 22.20 22.23 22.30 22.40 22.67 24.06 25.49 25.76          20
\par 21                                                 22.02 22.00 22.02 22.13 22.22 22.27 22.36 22.48 22.76 24.58 26.78 28.45          21
\par 22                                                 22.02 21.93 21.89 22.11 22.24 22.30 22.43 22.59 22.82 25.42 28.71 31.29 35.93    22
\par 23                                                 22.09 21.90 21.53 22.10 22.30 22.38 22.53 22.70 22.91 26.94 31.40 35.09 42.89    23
\par 24                                                 22.28 22.19 22.17 22.37 22.49 22.55 22.66 22.81 23.03 27.31 32.87 38.03 51.44    24
\par 25                                                 22.54 22.48 22.51 22.61 22.69 22.73 22.81 22.94 23.14 27.67 34.08 40.40 56.92    25
\par 26                                                 22.84 22.74 22.78 22.83 22.89 22.92 22.97 23.08 23.24 27.98 34.80 43.43          26
\par 27                                           23.49 23.19 23.00 23.00 23.03 23.07 23.09 23.13 23.21 23.35 27.61 35.36 43.26          27
\par 28                                           23.53 23.42 23.27 23.20 23.21 23.23 23.24 23.27 23.33 23.44 26.91 33.07 39.57          28
\par 29                                           23.58 23.50 23.43 23.37 23.36 23.37 23.38 23.40 23.44 23.52 25.50 29.62 36.36          29
\par 30                                           23.66 23.59 23.55 23.52 23.51 23.52 23.52 23.53 23.55 23.60 23.69 23.73                30
\par 31                                           23.78 23.72 23.70 23.68 23.67 23.68 23.68 23.68 23.70 23.70 23.73 92.00                31
\par 32                                           23.91 23.87 23.87 23.86 23.86 23.86 23.86 23.87 23.87 23.82 90.00133.00                32
\par 33                                           24.05 24.03 24.03 24.04 24.05 24.07 24.07 24.08 24.10 28.00 95.00300.00400.00600.00    33
\par 34                                     24.33 24.21 24.18 24.19 24.22 24.25 24.27 24.28 24.31 24.34 30.00 99.00300.00400.00600.00    34
\par 35                                     24.38 24.34 24.32 24.34 24.38 24.42 24.47 24.49 24.54 24.61 30.00 99.00300.00400.00          35
\par 36                                     24.45 24.47 24.44 24.46 24.51 24.58 24.65 24.70 24.80 25.06 30.00 99.00250.00                36
\par 37                                     24.51 24.55 24.52 24.55 24.60 24.67 24.75 24.80 24.93 25.24 30.00 99.00                      37
\par 38                                     24.54 24.56 24.57 24.60 24.64 24.71 24.76 24.79 24.87 25.00 30.00                            38
\par 39                                     24.56 24.56 24.59 24.62 24.66 24.71 24.75 24.77 24.81 24.88 30.00                            39
\par 40                               24.54 24.56 24.57 24.60 24.63 24.67 24.71 24.74 24.75 24.77 24.82 30.00                            40
\par 41                               24.53 24.55 24.56 24.60 24.63 24.67 24.71 24.73 24.74 24.75                                        41
\par 42                               24.52 24.54 24.55 24.59 24.62 24.66 24.70 24.72 24.72                                              42
\par 43                   24.38       24.50 24.52 24.53 24.57 24.60 24.63                                                                43
\par 44                   24.38 24.44 24.48 24.50 24.51 24.54 24.57 24.60                                                                44
\par 45                   24.37 24.43 24.46 24.48 24.48 24.50 24.54 24.55                                                                45
\par 46                   24.37 24.42 24.44 24.45 24.44 24.46 24.49 24.50 24.49 24.49 24.49                                              46
\par 47                   24.36 24.40 24.42 24.43 24.42 24.43 24.44 24.45 24.45 24.46 24.46                                              47
\par 48                   24.34 24.38 24.40 24.42 24.42 24.42 24.42 24.43 24.43 24.44 24.44                                              48
\par 49                   24.32 24.36 24.38 24.41 24.42 24.42 24.42 24.42 24.42 24.43 24.43                                              49
\par 50                   24.30 24.34 24.36 24.39 24.41 24.41 24.42 24.42 24.42 24.43 24.43 24.55 24.37 24.27 24.24                      50
\par 51                   24.28 24.31 24.33 24.37 24.41 24.41 24.41 24.41 24.41 24.41 24.41 24.38 24.31 24.26 24.24                      51
\par 52             24.18 24.21 24.21 24.22 24.21 24.21 24.13 24.11 24.11 24.10 24.10                                                    52
\par 53       24.16 24.16 24.12 24.05 24.05 24.05                                                                                        53
\par 54                                                                                                                                  54
\par 
\par }
480
Scribble480
Example 2: Hydraulic Conductivity Array



main:000600
Writing



FALSE
66
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: Hydraulic Conductivity Array\cf0\b0\f1\fs24 
\par 
\par Please note the "3X" in the format for this array.  That means to skip the first three columns.  Also note that the multiplier is \b 19.0\b0 .\b 
\par \b0 
\par Next: \cf2\strike Bottom of Layer 1 Array\cf3\strike0\{linkID=490\}
\par \cf0 Back: \cf2\strike Initial Head Array\cf3\strike0\{linkID=470\}
\par \cf0 
\par \f2\fs20         11     19.00 (3X,22F6.2)                 0   HYDRAULIC CONDUCTIVITY (THICKNESS IS 700 m)
\par   1                                                                                                                                   1
\par   2                                                                                            4.00  4.00                             2
\par   3                                                                                            4.00  4.00                             3
\par   4                                                                                      4.00  4.00  4.00                             4
\par   5                                                                    6.00  6.00        4.00  4.00  4.00                             5
\par   6                                                                    6.00  6.00        4.00  4.00  4.00                             6
\par   7                                                                          6.00        4.00  4.00  4.00                             7
\par   8                                                              0.50  7.00  6.00  8.00 10.00 10.00  4.00                             8
\par   9                                                              0.50  4.00  9.00 10.00 10.00 10.00  5.00  1.50  0.70  0.20  0.10     9
\par  10                                                              0.50  5.00 12.00 12.00 10.00  8.00  8.00  1.50  0.70  0.40  0.40    10
\par  11                                                              0.50  7.50 15.00 20.00 15.00 15.00  8.00  1.50  0.70  0.40  0.40    11
\par  12                                                              0.50  7.50 20.00 20.00 20.00 20.00  8.00  1.50  0.70  0.40  0.40    12
\par  13                                                        1.00  5.00  7.50 20.00 20.00 20.00 20.00  7.50  1.50  0.70  0.40  0.40    13
\par  14                                                        1.00  5.00  7.50 20.00 20.00 20.00 20.00  6.00  1.50  0.70  0.40  0.40    14
\par  15                                                        1.00  5.00  7.50 20.00 20.00 20.00 20.00  5.00  1.50  0.50  0.20          15
\par  16                                                        1.00  5.00 10.00 20.00 20.00 20.00 20.00  5.00  1.50  0.50  0.20          16
\par  17                                                        1.00  7.50 15.00 20.00 20.00 20.00 20.00  5.00  0.50  0.20  0.10          17
\par  18                                                        1.00 10.00 20.00 20.00 20.00 20.00 20.00  5.00  0.50  0.20  0.20          18
\par  19                                                  1.00  1.00 10.00 25.00 25.00 25.00 22.50 22.50  5.00  0.50  0.20  0.10          19
\par  20                                                  0.50 10.00 20.00 25.00 25.00 25.00 25.00 22.50  5.00  0.50  0.20  0.10          20
\par  21                                                  0.50 10.00 25.00 25.00 25.00 25.00 25.00 22.50  5.00  0.40  0.20  0.10          21
\par  22                                                  0.50 10.00 30.00 30.00 30.00 30.00 25.00 25.00 15.00  0.30  0.30  0.20  0.10    22
\par  23                                                  0.50 12.50 30.00 30.00 30.00 30.00 25.00 25.00 15.00  0.30  0.30  0.20  0.10    23
\par  24                                                  0.50 12.50 40.00 40.00 40.00 40.00 40.00 25.00 15.00  0.30  0.30  0.20  0.10    24
\par  25                                                  0.50 12.50 40.00 40.00 40.00 40.00 40.00 25.00 15.00  0.30  0.30  0.20  0.10    25
\par  26                                                  0.50 12.50 40.00 40.00 40.00 40.00 40.00 30.00 15.00  0.20  0.20  0.10          26
\par  27                                            0.50  1.00 10.00 40.00 40.00 40.00 40.00 40.00 30.00 15.00  0.20  0.10  0.10          27
\par  28                                            0.50 10.00 10.00 40.00 40.00 40.00 40.00 40.00 30.00 15.00  0.20  0.10  0.10          28
\par  29                                            0.50 20.00 30.00 40.00 40.00 40.00 40.00 40.00 30.00 15.00  0.20  0.10  0.10          29
\par  30                                            0.50 20.00 30.00 40.00 40.00 40.00 40.00 04.00 02.00 01.00 0.20  0.20                 30
\par  31                                            0.50 20.00 30.00 40.00 40.00 40.00 40.00 00.11  0.18 0.09  0.20   0.50                31
\par  32                                            0.50 20.00 30.00 30.00 30.00 30.00 30.00 00.11 0.020 0.09   0.50  0.50                32
\par  33                                            0.50 20.00 30.00 30.00 30.00 30.00 30.00 00.11 0.020 0.09   0.50  0.50  0.50  0.50    33
\par  34                                      0.50  1.00 20.00 30.00 30.00 30.00 30.00 30.00 00.11 0.020 0.09   0.50  0.50  0.50  0.50    34
\par  35                                      0.50  1.00 20.00 30.00 30.00 30.00 30.00 30.00 00.01 0.020 0.09   0.50  0.50  0.50          35
\par  36                                      0.50  1.00 20.00 30.00 30.00 25.00 25.00 25.00 00.01 0.020 0.09   0.50  0.50                36
\par  37                                      0.50 20.00 25.00 30.00 30.00 25.00 25.00 20.00 00.01 0.020 0.09   0.50                      37
\par  38                                      0.50 30.00 30.00 30.00 30.00 25.00 25.00 20.00 00.01 0.020 0.09                             38
\par  39                                      0.50 30.00 30.00 30.00 25.00 25.00 20.00 20.00 00.01 0.020 0.09                             39
\par  40                                0.50  1.00 30.00 30.00 30.00 20.00 20.00 20.00 20.00 00.01 0.020 0.09                             40
\par  41                                0.50  1.00 30.00 30.00 30.00 20.00 20.00 20.00 20.00 00.01                                        41
\par  42                                0.50  1.00 30.00 30.00 30.00 20.00 20.00 20.00 20.00                                              42
\par  43                    0.20        0.50  1.00 30.00 30.00 25.00 20.00                                                                43
\par  44                    0.20  0.20  0.50  1.00 30.00 30.00 25.00 10.00                                                                44
\par  45                    0.20  0.20  0.50  1.00 30.00 30.00 25.00 10.00                                                                45
\par  46                    0.20  0.20  0.50  1.00 30.00 30.00 25.00 20.00 20.00 20.00 20.00                                              46
\par  47                    0.20  0.20  0.50  1.00 30.00 30.00 25.00 20.00 20.00 20.00 20.00                                              47
\par  48                    0.20  0.20  0.50  1.00 30.00 25.00 25.00 20.00 20.00 20.00 20.00                                              48
\par  49                    0.20  0.20  0.50  0.50 20.00 20.00 20.00 20.00 20.00 20.00 20.00                                              49
\par  50                    0.20  0.20  0.50  0.50 20.00 20.00 20.00 20.00 20.00 20.00 20.00  1.00  1.00  1.00  1.00                      50
\par  51                    0.20  0.20  0.50  0.50 10.00 10.00 10.00 10.00 10.00 10.00 10.00  1.00  1.00  1.00  1.00                      51
\par  52              0.20  0.20  0.20  0.50  0.50  1.00  1.00  1.00  1.00  1.00  1.00                                                    52
\par  53        0.20  0.20  0.20  0.20  0.50  0.50                                                                                        53
\par  54                                                                                                                                  54
\par \f1\fs24 
\par }
490
Scribble490
Example 2: Bottom Layer 1 Array



main:000610
Writing



FALSE
66
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: Bottom Layer 1 Array\cf0\b0\f1\fs24 
\par 
\par Please note the "2X" in the format for this array.  That means to skip the first two columns.  
\par 
\par Next: \cf2\strike Storativity Array\cf3\strike0\{linkID=500\}\cf0  
\par Back: \cf2\strike Hydraulic Conductivity Array\cf3\strike0\{linkID=480\}\cf0 
\par 
\par \f2\fs20         11       1.0 (3X,22F6.0)                    BOTTOMS  10    11    12    13    14    15    16    17    18    19    20    21    22
\par   1
\par   2                                                                                           -900. -900.
\par   3                                                                                           -900. -900.
\par   4                                                                                     -900. -900. -900.
\par   5                                                                   -900. -900.       -900. -900. -900.
\par   6                                                                   -900. -900.       -900. -900. -900.
\par   7                                                                         -900.       -900. -900. -900.
\par   8                                                             -900. -900. -900. -900. -900. -900. -900.
\par   9                                                             -900. -900. -900. -900. -900. -700. -679. -429. -338. -258. -412.
\par  10                                                             -900. -900. -900. -900. -900. -700. -679. -572. -412. -419. -352.
\par  11                                                             -900. -900. -900. -900. -700. -679. -620. -584. -497. -487. -458.
\par  12                                                             -900. -900. -900. -900. -900. -700. -679. -611. -470. -522. -376.
\par  13                                                       -900. -900. -900. -900. -900. -900. -700. -678. -589. -379. -444. -297.
\par  14                                                       -900. -900. -900. -900. -900. -900. -700. -678. -498. -551. -400. -385.
\par  15                                                       -900. -900. -900. -900. -900. -700. -678. -542. -475. -386. -269.
\par  16                                                       -900. -900. -900. -900. -900. -700. -678. -611. -459. -452. -459.
\par  17                                                       -900. -900. -900. -900. -900. -700. -678. -601. -381. -363. -400.
\par  18                                                       -900. -900. -900. -900. -700. -678. -553. -446. -410. -411. -422.
\par  19                                                 -900. -900. -900. -900. -900. -700. -678. -600. -511. -420. -348. -390.
\par  20                                                 -900. -900. -900. -700. -678. -650. -580. -571. -450. -450. -395. -300.
\par  21                                                 -900. -900. -700. -678. -660. -660. -603. -541. -397. -505. -373. -314.
\par  22                                                 -900. -900. -700. -678. -663. -652. -587. -570. -470. -338. -370. -315. -339.
\par  23                                                 -900. -900. -700. -678. -659. -637. -579. -549. -421. -379. -246. -259. -187.
\par  24                                                 -900. -900. -700. -678. -636. -590. -566. -450. -373. -323. -344. -305. -220.
\par  25                                                 -900. -900. -700. -677. -612. -550. -600. -481. -411. -295. -252. -400. -370.
\par  26                                                 -900. -700. -677. -635. -593. -576. -511. -490. -411. -305. -253. -331.
\par  27                                           -900. -900. -700. -677. -648. -610. -580. -489. -531. -351. -310. -136. -170.
\par  28                                           -900. -900. -900. -700. -677. -628. -580. -525. -474. -474. -182. -161. -149.
\par  29                                           -900. -900. -900. -700. -677. -570. -529. -554. -495. -355. -347. -248. -160.
\par  30                                           -900. -900. -700. -676. -603. -560. -534. -511. -438. -429. -310. -158.
\par  31                                           -900. -900. -700. -676. -579. -580. -549. -466. -427. -423. -372. -117.
\par  32                                           -900. -900. -900. -900. -900. -900. -900. -900. -700. -676.  -92.    1.
\par  33                                           -900. -900. -900. -900. -900. -900. -900. -700. -676. -127.  -41.  -11.   -8.   31.
\par  34                                     -900. -900. -900. -900. -900. -900. -900. -900. -700. -676.  -29.   68.   75. -186.  -67.
\par  35                                     -900. -900. -900. -900. -900. -900. -900. -900. -700. -675.  -57.  -60. -138.  -94.
\par  36                                     -900. -900. -900. -900. -900. -900. -900. -900. -700. -675. -212.  -90.  -30.
\par  37                                     -900. -900. -900. -900. -900. -900. -900. -900. -700. -675. -198.  -80.
\par  38                                     -900. -900. -900. -900. -900. -900. -900. -900. -700. -675. -173.
\par  39                                     -900. -900. -900. -900. -900. -900. -900. -900. -700. -675.  -38.
\par  40                               -900. -900. -900. -900. -900. -900. -900. -900. -900. -700. -675.    0.
\par  41                               -900. -900. -900. -900. -900. -900. -900. -900. -700. -675. -100.
\par  42                               -900. -900. -900. -900. -900. -900. -700. -675. -380. -700.
\par  43                   -900.       -900. -900. -900. -900. -700. -675. -700.
\par  44                   -900. -900. -900. -900. -900. -700. -675. -488.
\par  45                   -900. -900. -900. -900. -700. -675. -546. -520.
\par  46                   -900. -900. -900. -700. -676. -539. -501. -470. -460. -461. -450.
\par  47                   -900. -900. -900. -700. -676. -536. -530. -488. -483. -451. -447.
\par  48                   -900. -900. -900. -700. -676. -501. -482. -490. -481. -440. -440.
\par  49                   -900. -900. -900. -900. -900. -900. -900. -700. -676. -454. -451.
\par  50                   -900. -900. -900. -900. -900. -900. -900. -700. -676. -400. -406. -410. -410. -360. -359.
\par  51                   -900. -900. -900. -900. -900. -900. -900. -900. -900. -900. -700. -676. -380. -350. -289.
\par  52             -900. -900. -900. -900. -700. -676. -660. -620. -580. -540. -500. -460. -420.
\par  53       -900. -900. -900. -700. -676. -660. -700. -700. -700. -700. -700. -700.
\par  54
\par \f1\fs24 
\par }
500
Scribble500
Example 2: Storativity Array



main:000620
Writing



FALSE
74
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: Storativity Array\cf0\b0\f1\fs24 
\par 
\par Please note the "3X" in the format for this array.  That means to skip the first three columns.  Also note that the multiplier is \b 0.010\b0 .
\par 
\par Next: \cf2\strike Top Layer 1Array\cf3\strike0\{linkID=510\}\cf0  
\par Back: \cf2\strike Bottom Layer 1 Array\cf3\strike0\{linkID=490\}
\par \cf0 
\par \f2\fs20         11     0.010 (3X,22F5.2)                 7    STORATIVITY SF2
\par   1   1.   2.   3.   4.   5.   6.   7.   8.   9.   0.   1.   2.   3.   4.   5.   6.   7.   8.   9.   0.   1.   2.      1
\par   2                                                                            3.6  3.6                                2
\par   3                                                                            3.6  3.6                                3
\par   4                                                                       3.6  3.6  3.6                                4
\par   5                                                        3.6  3.6       3.6  3.6  3.6                                5
\par   6                                                        3.6  3.6       3.6  3.6  3.6                                6
\par   7                                                             3.6       3.6  3.6  3.6                                7
\par   8                                                   3.6  3.6  3.6  3.6  3.6  3.6  3.6                                8
\par   9                                                   3.6  3.6  3.6  3.6  3.6  3.6 5.00 2.60 2.60 2.60 2.60            9
\par  10                                                   3.6  3.6  3.6  3.6  3.6  3.6 5.30 2.60 2.60 2.60 2.60           10
\par  11                                                   3.6  3.6  3.6  3.6  3.6  3.6  3.6 5.30 2.60 2.60 2.60           11
\par  12                                                   3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6           12
\par  13                                              3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.60 2.60 2.60 2.60           13
\par  14                                              3.6  3.6  3.6  3.6  3.6  3.6  3.6 5.30 2.60 2.60 2.60 2.60           14
\par  15                                              3.6  3.6  3.6  3.6  3.6  3.6  3.6 5.30 2.60 2.60 2.60                15
\par  16                                              3.6  3.6  3.6  3.6  3.6  3.6 5.30 5.30 2.60 2.60 2.60                16
\par  17                                              3.6  3.6  3.6  3.6  3.6 2.50 5.30 5.30 2.60 2.60 2.60                17
\par  18                                              3.6  3.6  3.6  3.6  3.6 5.30 5.30 5.30 2.60 2.60 2.60                18
\par  19                                         3.6  3.6  3.6  3.6 6.00 6.00 6.00 6.00 6.00 2.60 2.60 2.60                19
\par  20                                         3.6  3.6  3.6 2.60 6.00 6.00 6.00 6.00 6.00 2.60 2.60 2.60                20
\par  21                                         3.6  3.6  3.6  3.6 8.60 8.60 8.60 8.60 8.60 3.60 3.60 3.60                21
\par  22                                         3.6  3.6  3.6  3.6 8.60 8.60 8.60 8.60 3.60 3.60 3.60 3.60  3.6           22
\par  23                                         3.6  3.6  3.6 8.60 8.60 8.60 8.60 3.60 3.60 3.60 3.60 3.60  3.6           23
\par  24                                         3.6  3.6  3.6 8.60 8.60 8.60 8.60 3.60 3.60 3.60 3.60 3.60  3.6           24
\par  25                                         3.6  3.6  3.6 8.60 8.60 8.60 8.60 3.60 3.60 3.60 3.60 3.60  3.6           25
\par  26                                         3.6  3.6  3.6 8.60 8.60 8.60 8.60 3.60 3.60 3.60 3.60 3.60                26
\par  27                                    3.6  3.6  3.6  3.6 8.60 8.60 8.60 8.60 3.60 3.60 3.60 3.60 3.60                27
\par  28                                    3.6  3.6  3.6  3.6  3.6  3.6 8.60 8.60 3.60 3.60 3.60 3.60 3.60                28
\par  29                                    3.6  3.6  3.6  3.6 5.60 5.60 5.60 5.60 3.60 3.60 3.60 3.60 3.60                29
\par  30                                    3.6  3.6  3.6  3.6 5.60 5.60 5.60 5.60 3.60 3.60 3.60 3.60                     30
\par  31                                    3.6  3.6  3.6  3.6 5.60 5.60 5.60 5.60 3.60 3.60 3.60 3.6                      31
\par  32                                    3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 3.60 3.6  3.6                      32
\par  33                                    3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.60 1.8  1.8  1.8  1.8  1.8            33
\par 
\par 
\par 
\par 
\par 
\par 
\par 
\par 
\par  34                               3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.60 1.8  1.8  1.8  1.8  1.8            34
\par  35                               3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.60 1.8  1.8  1.8  1.8                 35
\par  36                               3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.60 1.8  1.8  1.8                      36
\par  37                               3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.80 1.8  1.8                           37
\par  38                               3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 1.8                                38
\par  39                               3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 1.8                                39
\par  40                          3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 2.60 1.8                                40
\par  41                          3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 3.60                                         41
\par  42                          3.6  3.6  3.6  3.6  3.6 4.80 3.70 3.70 3.70                                              42
\par  43                3.6       3.6  3.6  3.6  3.6 7.00 7.00                                                             43
\par  44                3.6  3.6  3.6  3.6  3.6  3.6 8.00 8.00                                                             44
\par  45                3.6  3.6  3.6  3.6  3.6  9.0 8.00 8.00                                                             45
\par  46                3.6  3.6  3.6  3.6  9.0  9.0 8.00 8.00 8.00 7.00 6.00                                              46
\par  47                3.6  3.6  3.6  3.6  9.0  9.0 8.00 8.00 8.00 7.00 6.00                                              47
\par  48                3.6  3.6  3.6  3.6  3.6  9.0 8.00 8.00 8.00 7.00 6.00                                              48
\par  49                3.6  3.6  3.6  3.6  3.6 2.50 3.20 3.20 7.00 7.00 6.00                                              49
\par  50                3.6  3.6  3.6  3.6  3.6  3.6  3.6 3.20  3.6  3.6  3.6 4.40 4.40 4.40 4.40                          50
\par  51                3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6  3.6 4.40 4.40 4.40 4.40                          51
\par  52           3.6  3.6  3.6  3.6  3.6  3.6 4.40 4.40 4.40 4.40 4.40                                                   52
\par  53      3.6  3.6  3.6 4.40 4.40 2.50                                                                                 53
\par  54                                                                                                                   54
\par \f1\fs24 
\par }
510
Scribble510
Example 2: Top Layer 1 Array



main:000630
Writing



FALSE
64
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil Arial;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset0 Courier;}}
{\colortbl ;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 Example 2: Top Layer 1 Array\cf0\b0\f1\fs24 
\par 
\par Please note the "3X" in the format for this array.  That means to skip the first three columns.
\par 
\par Back: \cf2\strike Storativity Array\cf3\strike0\{linkID=500\}\cf0 
\par 
\par \f2\fs20         11       1.0 (3X,22F6.0)                 0          TOPS
\par   1
\par   2                                                                                           -200. -200.
\par   3                                                                                           -200. -200.
\par   4                                                                                     -200. -200. -200.
\par   5                                                                   -200. -200.       -200. -200. -200.
\par   6                                                                   -200. -200.       -200. -200. -200.
\par   7                                                                         -200.       -200. -200. -200.
\par   8                                                             -200. -200. -200. -200. -200. -200. -200.
\par   9                                                             -200. -200. -200. -200. -200.    0.   21.  271.  362.  442.  288.
\par  10                                                             -200. -200. -200. -200. -200.    0.   21.  128.  288.  281.  348.
\par  11                                                             -200. -200. -200. -200.    0.   21.   80.  116.  203.  213.  242.
\par  12                                                             -200. -200. -200. -200. -200.    0.   21.   89.  230.  178.  324.
\par  13                                                       -200. -200. -200. -200. -200. -200.    0.   22.  111.  321.  256.  403.
\par  14                                                       -200. -200. -200. -200. -200. -200.    0.   22.  202.  149.  300.  315.
\par  15                                                       -200. -200. -200. -200. -200.    0.   22.  158.  225.  314.  431.
\par  16                                                       -200. -200. -200. -200. -200.    0.   22.   89.  241.  248.  241.
\par  17                                                       -200. -200. -200. -200. -200.    0.  22.0   99.  319.  337.  300.
\par  18                                                       -200. -200. -200. -200.    0.   22.  147.  254.  290.  289.  278.
\par  19                                                 -200. -200. -200. -200. -200.    0.   22.  100.  189.  280.  352.  310.
\par  20                                                 -200. -200. -200.    0.   22.   50.  120.  129.  250.  250.  305.  400.
\par  21                                                 -200. -200.    0.   22.   40.   40.   97.  159.  303.  195.  327.  386.
\par  22                                                 -200. -200.    0.   22.   37.   48.  113.  130.  230.  362.  330.  385.  361.
\par  23                                                 -200. -200.    0.   22.   41.   63.  121.  151.  279.  321.  454.  441.  513.
\par  24                                                 -200. -200.    0.   22.   64.  110.  134.  250.  327.  377.  356.  395.  480.
\par  25                                                 -200. -200.    0.   23.   88.  150.  100.  219.  289.  405.  448.  300.  330.
\par  26                                                 -200.    0.   23.   65.  107.  124.  189.  210.  289.  395.  447.  369.
\par  27                                           -200. -200.    0.   23.   52.   90.  120.  211.  169.  349.  390.  564.  530.
\par  28                                           -200. -200. -200.    0.   23.   72.  120.  175.  226.  226.  518.  539.  551.
\par  29                                           -200. -200. -200.    0.   23.  130.  171.  146.  205.  345.  353.  452.  540.
\par  30                                           -200. -200.    0.   24.   97.  140.  166.  189.  262.  271.  390.  542.
\par  31                                           -200. -200.    0.   24.  121.  120.  151.  234.  273.  277.  328.  583.
\par  32                                           -200. -200. -200. -200. -200. -200. -200. -200.    0.   24.  608.  701.
\par  33                                           -200. -200. -200. -200. -200. -200. -200.    0.   24.  573.  659.  689.  692.  731.
\par  34                                     -200. -200. -200. -200. -200. -200. -200. -200.    0.   24.  671.  768.  775.  514.  633.
\par  35                                     -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  643.  640.  562.  606.
\par  36                                     -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  488.  610.  670.
\par  37                                     -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  502.  620.
\par  38                                     -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  527.
\par  39                                     -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  662.
\par  40                               -200. -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  700.
\par  41                               -200. -200. -200. -200. -200. -200. -200. -200.    0.   25.  600.
\par  42                               -200. -200. -200. -200. -200. -200.    0.   25.  320.    0.
\par  43                   -200.       -200. -200. -200. -200.    0.   25.    0.
\par  44                   -200. -200. -200. -200. -200.    0.   25.  212.
\par  45                   -200. -200. -200. -200.    0.   25.  154.  180.
\par  46                   -200. -200. -200.    0.   24.  161.  199.  230.  240.  239.  250.
\par  47                   -200. -200. -200.    0.   24.  164.  170.  212.  217.  249.  253.
\par  48                   -200. -200. -200.    0.   24.  199.  218.  210.  219.  260.  260.
\par  49                   -200. -200. -200. -200. -200. -200. -200.    0.   24.  246.  249.
\par  50                   -200. -200. -200. -200. -200. -200. -200.    0.   24.  300.  294.  290.  290.  340.  341.
\par  51                   -200. -200. -200. -200. -200. -200. -200. -200. -200. -200.    0.   24.  320.  350.  411.
\par  52             -200. -200. -200. -200.    0.   24.   40.   80.  120.  160.  200.  240.  280.
\par  53       -200. -200. -200.    0.   24.   40.    0.    0.    0.    0.    0.    0.
\par  54\f1\fs24 
\par }
520
Scribble520
References



main:000640
Writing



FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\froman Times New Roman;}{\f2\froman\fprq2\fcharset0 Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}{\f4\froman\fcharset0 AdvTT5843c571;}}
{\colortbl ;\red0\green0\blue255;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs32 References
\par \pard\li720\cf0\b0\fs20 
\par \pard\fi-720\li720\cf2\f1\fs24\{target=AndersonWoessner\}\cf0\f2 Anderson, M.P., and Woessner, W.W., 1992, Applied groundwater modeling, simulation of flow and advective transport: San Diego, California, Academic Press, 381 p.
\par \cf2\{target=Argus1997\}\cf0 Argus Interware, Inc., 1997, User's guide Argus ONE\super TM\nosupersub , Argus Open Numerical Environments - A GIS modeling system, version 4.0: Jericho, NY, Argus Holdings, Limited, 506 p.
\par \cf2\{target=Harbaugh2000\}\cf0 Harbaugh, A.W., Banta, E.R., Hill, M.C., and McDonald, M.G., 2000, MODFLOW-2000, the U.S. Geological Survey modular ground-water model - User's guide to modularization concepts and the ground-water flow process: U.S. Geological Survey Open-File Report 00-92, 191 p.
\par \cf2\{target=Kipp1997\}\cf0 Kipp, K.L., Jr., 1997, Guide to the revised heat and solute transport simulator, HST3D - version 2: U.S. Geological Survey Water-Resources Investigations Report 97-4157, 149 p.
\par \cf2\{target=Poeter1998\}\cf0 Poeter, E.P., and Hill, M.C., 1998, Documentation of UCODE, a computer code for universal inverse modeling: U.S. Geological Survey Water-Resources Investigations Report 98-4080, 116 p.
\par \pard\fi-700\li700\cf2\f3\{target=Renka\}\cf3 Renka R. J., 1988, Algorithm 660: QSHEP2D: Quadratic Shepard method for bivariate interpolation of scattered data. ACM Trans. Math. Software 14: 149-150.
\par \cf2\{target=Renka96a\}\cf3 Renka, R.J.,1996a, ALGORITHM 751. TRIPACK\emdash Constrained two-dimensional Delaunay triangulation package: ACM Transactions on Mathematical Software, v. 22, no. 1, p. 1\endash 8.
\par \cf2\{target=Renka96b\}\cf3 Renka, R.J.,1996b, ALGORITHM 752. SRFPACK\emdash Software for scattered data fitting with a constrained surface under tension: ACM Transactions on Mathematical Software, v. 22, no. 1, p. 9\endash 17.
\par \cf2\{target=Snyder1987\}\cf3 Snyder, J.P., 1987, Map Projections-A Working Manual, U.S. Geological Survey Professional Paper 1395, 383 p.\cf0\f4\fs20 
\par \pard\fi-720\li720\cf2\f2\fs24\{target=Stephens1998\}\cf0 Stephens, Rod, 1998, Ready-to-run Delphi 3.0 algorithms: Wiley, New York, 398 p.
\par \cf2\{target=DEM\}\cf0 U.S. Department of the Interior, U.S. Geological Survey, 1992, Standards for digital elevation models: Reston, Va., 102 p.
\par \cf2\{target=Voss1997\}\cf0 Voss, C.I., Boldt, David, and Shapiro, A.M., 1997, A graphical-user interface for the U.S. Geological Survey SUTRA code using Argus ONE: U.S. Geological Survey, Open-File Report 97-421, 106 p.
\par \cf2\{target=Winston1999\}\cf0 Winston, R.B., 1999, Upgrade to MODFLOW-GUI: Addition of MODPATH, ZONEBDGT, and additional MODFLOW packages to the U.S. Geological Survey MODFLOW-96 graphical-user interface: U.S. Geological Survey Open-File Report 99-184, 63 p.
\par \cf2\{target=Winston2000\}\cf0 ______ 2000, Graphical user interface for MODFLOW: Version 4: U.S. Geological Survey Open-File Report 00-315, 27 p.
\par \pard\f1 
\par }
1
data="",(0,0,850,900),0,,,0
0
0
76
1 Introduction=Scribble10
1 Installation instructions=Scribble20
1 Navigating=Scribble30
1 Acknowledgments=Scribble40
1 Interpolation Methods
2 Interpolation Methods=Scribble50
1 Commands
2 Commands=Scribble60
2 Table 1.  Commands added to Argus ONE in Utility.dll=Scribble70
2 Table 2.  Hidden Commands Added to Argus ONE in Utility.dll=Scribble80
2 Edit
3 Edit=Scribble90
3 Edit Contours=Scribble100
3 DeclutterContours=Scribble110
3 Join Contours=Scribble120
3 Edit Grid=Scribble130
3 Edit Data=Scribble140
3 Create Parameters in Multiple Layers=Scribble150
3 Set Multiple Parameters=Scribble160
3 Move Model=Scribble165
2 Import
3 Import=Scribble170
3 Import Gridded Data=Scribble180
3 Import Points from Spreadsheet=Scribble190
3 Import Contours from Spreadsheet=Scribble200
3 Sample DEM Data=Scribble210
3 Copy Tri Mesh/Copy Quad Mesh=Scribble220
3 Paste Contours on Clipboard to Multiple Layers=Scribble225
3 Import Data...=Scribble140
3 Sample Data...=Scribble226
3 Import Shape File...
4 Import Shape File...=Scribble227
4 Import Shape File... (Coordinate Conversions)=Scribble228
4 Import Shape File... (Sample Data)=Scribble229
4 Import Shape File... (Select Fields)=Scribble230
3 Import ASCII Raster Data=Scribble233
2 Convert
3 Convert=Scribble239
3 Contours To Data=Scribble240
3 Data to Contours=Scribble250
3 Reverse Contours on Clipboard=Scribble260
3 Mesh Objects To Contours=Scribble270
3 Mesh To Contours=Scribble280
2 Miscellaneous
3 Show Layer Dependencies=Scribble285
2 Hidden Commands
3 Hidden Commands=Scribble290
3 Set Parameter Locks=Scribble300
3 Delete Multiple Layers=Scribble310
1 Functions
2 Functions=Scribble320
2 Table 3.  Functions added to Argus ONE=Scribble330
2 Table 4.  Hidden Functions Added to Argus ONE=Scribble340
2 Utility_CheckVersion=Scribble350
2 EvalRealAtXY, EvalIntegerAtXY, EvalBooleanAtXY, and EvalStringAtXY=Scribble360
2 Rotated X, and Rotated Y=Scribble370
2 Export Template 1 Using Rotated X, and Rotated Y=Scribble380
2 Export Template 2 Using Rotated X, and Rotated Y=Scribble390
1 Examples
2 Example 1: Importing a MODFLOW Grid
3 Example 1: Importing a MODFLOW Grid, Introduction=Scribble400
3 Example 1: Importing a MODFLOW Grid, Step 1=Scribble410
3 Example 1: Importing a MODFLOW Grid, Step 2=Scribble420
2 Example 2: Importing MODFLOW Array Data, Step 1
3 Example 2: Importing MODFLOW Array Data, Step 1=Scribble430
3 Example 2: Importing MODFLOW Array Data, Step 2=Scribble440
3 Example 2: Importing MODFLOW Array Data, Step 3=Scribble450
3 Arrays
4 Example 2: IBOUND Array=Scribble460
4 Example 2: Initial Head Array=Scribble470
4 Example 2: Hydraulic Conductivity Array=Scribble480
4 Example 2: Bottom Layer 1 Array=Scribble490
4 Example 2: Storativity Array=Scribble500
4 Example 2: Top Layer 1 Array=Scribble510
1 References
2 References=Scribble520
6
*InternetLink
-2147483640
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
-2147483640
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
-2147483640
Times New Roman
0
12
0
....
0
0
0
0
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
