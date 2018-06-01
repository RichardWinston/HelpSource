HelpScribble project file.
10
Yrbaneq S. Xbavxbj-050Q35
0
1




TRUE

D:\PROGRA~1\HELPSC~1\JOINCO~1
1
BrowseButtons()
0
FALSE
D:\Program Files\HelpScribble\JoinContours\
FALSE
2
10
Scribble10
Join Contours



thesequence:000010
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Join Contours
\par \plain\f4\fs20\cf0 
\par \plain\f3\fs24 The JoinContoursPie.dll provides a method for combining multiple contours into a single contour and to reduce the number of vertices in contours. 
\par 
\par You may sometimes wish to join contours together to make it easier to manipulate them. To join contours together, select "Join Contours" from the "File|Import" menu on any information layer. A dialog box will appear listing the information layers. Select the layer in which you want to combine contours. The PIE will read the contours from the layer. If any two contours have exactly the same starting or ending point and all their parameter values are the same, those contours will be combined into a single contour. Here is an illustration of the effect of the Join Contours method. The first illustration shows the situation before joining contours. There are numerous short contours with parameter values of -70 and -80 . In the second illustration, those numerous contours have been combined into a much smaller number of contours. 
\par 
\par \pard\qc\plain\f3\fs24\cf2 \{bmc joincontoursbefore.bmp\}
\par \plain\f3\fs24\cf0\b Before "Join Contours" applied\plain\f3\fs24\cf0 
\par \plain\f3\fs24\cf2 
\par \{bmc joincontoursafter.bmp\}
\par \plain\f3\fs24\cf0\b After "Join Contours" applied\plain\f3\fs24\cf0 
\par \pard\plain\f3\fs24\cf0 
\par If two contours have starting or ending points that are even slightly different, the contours will not be combined. To ensure that such contours are combined, make sure the "Special|Allow Intersection" is checked. Then move the end of one of the contours close to the end of the other. The cursor will change to a hollow cross to indicate that it has detected another vertex. When you release the mouse, the vertex will be placed exactly over the position of the other vertex. 
\par 
\par }
20
Scribble20
Declutter Contours



thesequence:000020
Writing



FALSE
27
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf2\b Declutter Contours
\par \plain\f3\fs20\cf0 
\par \plain\f4\fs24\cf0 Reducing the number of vertices in a layer can make the export process faster. If the vertices are much more closely spaced than the grid spacing, reducing the number of vertices may have little effect on the model inputs. To reduce the number of vertices in the contours in a layer first turn "Allow Intersection" on for that layer. Then select "Declutter Contours" from the "File|Import" menu. A dialog box will appear with a list of information layers. Select the information layer in which you wish to reduce the number of vertices. Another dialog box will appear in which you should enter the desired vertex spacing. 
\par 
\par \pard\qc\plain\f4\fs24\cf1 \{bmc declutterdialog.bmp\}\plain\f4\fs24\cf0 
\par \pard\plain\f4\fs24\cf0 
\par 
\par When you click OK the contours on the layer will be processed so that vertices that are closer together than the desired spacing will be eliminated if the "Delete nodes based on spacing" check box is checked. However, if the "Delete Node based on angle" check box is checked, nodes will only be deleted if the angle at the node exceeds the limit you specify. The effects of "Declutter Contours" is illustrated below. The first diagram shows contours with very closely spaced vertices. In the second illustration, many of the vertices have been eliminated. 
\par 
\par \pard\qc\plain\f4\fs24\cf1 \{bmc declutterbefore.bmp\}\plain\f4\fs24\cf0 
\par \plain\f4\fs24\cf0\b Before "Declutter Contours" applied\plain\f4\fs24\cf0 
\par 
\par \plain\f4\fs24\cf1 \{bmc declutterafter.bmp\}\plain\f4\fs24\cf0 
\par \plain\f4\fs24\cf0\b After "Declutter Contours" applied\plain\f4\fs24\cf0 
\par \pard\plain\f4\fs24\cf0 
\par A word of warning about the "Declutter Contours" method. After removing vertices, some contours that previously did not overlap may overlap and the geometric relationships among contours may differ. For example, in the illustrations below, the -200 ft contour has been reduced to a single point that is no longer inside the -150 ft contour as it was before. 
\par 
\par \pard\qc\plain\f4\fs24\cf1 \{bmc declutterbefore2.bmp\}\plain\f4\fs24\cf0 
\par \plain\f4\fs24\cf0\b Before "Declutter Contours" applied
\par 
\par \plain\f4\fs24\cf1 \{bmc declutterafter2.bmp\}\plain\f4\fs24\cf0 
\par \plain\f4\fs24\cf0\b After "Declutter Contours" applied\plain\f4\fs24\cf0 
\par \pard\plain\f4\fs24\cf0 
\par Both the Join Contours and Declutter methods first clear the layer before writing to it. If there is an error when writing the data to the layer, this will result in loss of data. An error might occur in the Declutter PIE if "Allow Intersection" is turned off and some of the contours cross each other after some vertices are removed. Thus it is a good idea to save your file before running either of these PIEs. 
\par }
0
0
0
2
1 Join Contours=Scribble10
1 Declutter Contours=Scribble20
6
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
0
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
0
Arial
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
