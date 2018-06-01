HelpScribble project file.
10
Yrbaneq S. Xbavxbj-050Q35
0
1
Edit Data Layer



TRUE

D:\PROGRA~1\HELPSC~1\EDITDA~1
2
BrowseButtons()
Back()
0
FALSE

FALSE
18
10
Scribble10
Contours To Data Layer
convert


main:000010
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Contours To Data Layer\plain\f4\fs20 
\par 
\par \plain\f5\fs24 To use this procedure select \plain\f5\fs24\b Files|Import <layer name>|Contours To Data Layer\plain\f5\fs24 .
\par 
\par You will then be prompted to select the name of an \plain\f5\fs24\b Information\plain\f5\fs24  or \plain\f5\fs24\b Domain Outline\plain\f5\fs24  layer.  After you have selected it you will be prompted to select the name of a new or existing \plain\f5\fs24\b Data\plain\f5\fs24  layer.
\par 
\par The contours on the Information or Domain Outline layer will be copied to the Data layer.  A data point will be placed at the position of each vertex of the contours.  
\par 
\par \plain\f5\fs24\b Note\plain\f5\fs24 : All the data points for a contour will have the same value even if the value of the original contour is set by an expression that varies along the length of the contour.\plain\f4\fs20 
\par }
15
Scribble15
Edit Data Layer
edit;move;value;add;delete


main:000020
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf3\b Edit Data Layer\plain\f4\fs20 
\par 
\par \plain\f3\fs24 To use this procedure select \plain\f3\fs24\b Files|Import <layer name>|Edit Data Layer\plain\f3\fs24 .
\par \plain\f4\fs20 
\par \plain\f3\fs24 If there are no parameters on the \plain\f3\fs24\b Data\plain\f3\fs24  layer, you must create at least one parameter on the data layer before it can be edited.  If you attempt to edit a data layer that has not parameters, you will get an error message about the problem.
\par 
\par If there are no data points on the Data layer, will get a warning message but you will still be able to edit the data layer.  When you edit the data layer, you can do any or all of the following:
\par \pard\li160\fi-160\tx160\plain\f3\fs24\cf2 
\par \pard\li200\fi-200\tx160{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f3\fs24\cf1\strike {\pntext\f1\'b7\tab}Move a data point\plain\f3\fs24\cf2 \{linkID=20\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike {\pntext\f1\'b7\tab}Change the value or values of a data point\plain\f3\fs24\cf2 \{linkID=25\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike {\pntext\f1\'b7\tab}Add a data point\plain\f3\fs24\cf2 \{linkID=30\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike {\pntext\f1\'b7\tab}Delete a data point\plain\f3\fs24\cf2 \{linkID=35\}\plain\f3\fs24 
\par \pard\plain\f3\fs24 
\par When you are finished editing the data points click on the \plain\f3\fs24\b OK\plain\f3\fs24  button to accept the changes or the \plain\f3\fs24\b Cancel \plain\f3\fs24 button to discard them.\plain\f4\fs20 
\par }
20
Scribble20
Moving data points
move


main:000040
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Moving data points\plain\f5\fs24 
\par 
\par To move a data point you must change it's X and Y coordinates.  You can do this in two ways.  
\par 
\par 1. On the \plain\f5\fs24\cf3\b\strike Graphical\plain\f5\fs24\cf2\b \{linkID=60\}\plain\f5\fs24  tab, you can first make sure that the \plain\f5\fs24\b Select point\plain\f5\fs24  \plain\f5\fs24\cf2 \{bmc arrow.bmp\}\plain\f5\fs24  button is depressed and then click on the data point.  Then edit the X and Y coordinates in the edit boxes.
\par 
\par 2. On the \plain\f5\fs24\cf3\b\strike Table\plain\f5\fs24\cf2\b \{linkID=70\}\plain\f5\fs24  tab, locate the data point in the table of data points and edit the X and Y coordinates in the table.
\par }
25
Scribble25
Changing data point values
edit;value;parameter


main:000050
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Changing data point values\plain\f5\fs24 
\par 
\par There are two ways to change the value or values of a data point.
\par 
\par 1. On the \plain\f5\fs24\cf3\b\strike Graphical\plain\f5\fs24\cf2\b \{linkID=60\}\plain\f5\fs24  tab, you can first make sure that the \plain\f5\fs24\b Select point\plain\f5\fs24  \plain\f5\fs24\cf2 \{bmc arrow.bmp\}\plain\f5\fs24  button is depressed and then click on the data point.  Then edit the parameter values in the table.
\par 
\par 2. On the \plain\f5\fs24\cf3\b\strike Table \plain\f5\fs24\cf2\b \{linkID=70\}\plain\f5\fs24 tab, locate the data point in the table of data points and edit the parameter values in the table.
\par 
\par }
30
Scribble30
Adding data points
add


main:000060
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Adding data points\plain\f5\fs24 
\par 
\par There are two ways to add a data point.
\par 
\par 1. On the \plain\f5\fs24\cf3\b\strike Graphical\plain\f5\fs24\cf2\b \{linkID=60\}\plain\f5\fs24  tab, you can first make sure that the \plain\f5\fs24\b Add point\plain\f5\fs24  \plain\f5\fs24\cf2 \{bmc add.bmp\}\plain\f5\fs24  button is depressed and then click at the location where you would like to add a data point.  Then edit the parameter values and X and Y coordinates in the dialog box.
\par 
\par 2. On the \plain\f5\fs24\cf3\b\strike Table\plain\f5\fs24\cf2\b \{linkID=70\}\plain\f5\fs24  tab, increase the number of data points by clicking on the up arrow next to the control that shows the number of data points.  Then edit the parameter values and X and Y coordinates in the table.
\par 
\par }
35
Scribble35
Deleting data points
delete


main:000070
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Deleting data points\plain\f5\fs24 
\par 
\par There are two ways to delete a data point.
\par 
\par 1. On the \plain\f5\fs24\cf3\b\strike Graphical\plain\f5\fs24\cf2\b \{linkID=60\}\plain\f5\fs24  tab, you can first make sure that the \plain\f5\fs24\b Delete point\plain\f5\fs24  \plain\f5\fs24\cf2 \{bmc delete.bmp\}\plain\f5\fs24  button is depressed and then click on the data point you would like to delete.
\par 
\par 2. On the \plain\f5\fs24\cf3\b\strike Table\plain\f5\fs24\cf2\b \{linkID=70\}\plain\f5\fs24  tab, locate the data point you would like to delete and drag it to the bottom of the table.  Then decrease the number of data points by clicking on the down arrow next to the control that shows the number of data points.
\par 
\par }
40
Scribble40
Adding multiple data points at one time
add


main:000080
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Adding multiple data points at one time\plain\f5\fs24 
\par 
\par If you have data in a spreadsheet you can copy it to the clipboard and paste it in the table on the \plain\f5\fs24\cf2\b\strike Table\plain\f5\fs24\cf3\b \{linkID=70\}\plain\f5\fs24  tab by clicking on the \plain\f5\fs24\b Paste from Clipboard\plain\f5\fs24  \plain\f5\fs24\cf3 \{bmc clipboard.bmp\}\plain\f5\fs24  button.  You can also read the data from a file by clicking the \plain\f5\fs24\b Read from file\plain\f5\fs24  \plain\f5\fs24\cf3 \{bmc openfile.bmp\}\plain\f5\fs24  button.  Several \plain\f5\fs24\cf2\strike file formats\plain\f5\fs24\cf3 \{linkID=100\}\plain\f5\fs24  can be used.
\par 
\par If the file or clipboard contains data for more parameters than exist on the data layer, extra columns will be created in the table.  You can drag the columns to new positions to determine which values will actually be used.
\par }
45
Scribble45
Zooming to a specific region
zoom in


main:000120
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Zooming to a specific region\plain\f6\fs24 
\par 
\par To zoom in on a specific region on the \plain\f6\fs24\cf3\b\strike Graphical\plain\f6\fs24\cf2\b \{linkID=60\}\plain\f6\fs24  tab, click on the \plain\f6\fs24\b Zoom \plain\f6\fs24\cf2 \{bmc zoom.bmp\}\plain\f6\fs24  button and then click on one of the corners of the region you want to zoom in on.  Then depress the mouse button and drag the mouse to the opposite corner of the region you want to zoom in on and release the mouse.
\par 
\par }
50
Scribble50
Zoom out all the way
zoom out


main:000090
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Zoom out all the way\plain\f5\fs24 
\par 
\par To show all the data points on the \plain\f5\fs24\cf2\b\strike Graphical\plain\f5\fs24\cf3\b \{linkID=60\}\plain\f5\fs24  tab, click on the \plain\f5\fs24\b Zoom out all the way \plain\f5\fs24\cf3 \{bmc zoomextents.bmp\} \plain\f5\fs24 button.
\par }
52
Scribble52
Zoom in



main:000100
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Zoom in\plain\f5\fs24 
\par 
\par To zoom in by a factor of two on the \plain\f5\fs24\cf3\b\strike Graphical\plain\f5\fs24\cf2\b \{linkID=60\}\plain\f5\fs24  tab, click the \plain\f5\fs24\b Zoom in\plain\f5\fs24  \plain\f5\fs24\cf2 \{bmc zoomin.bmp\}\plain\f5\fs24  button.
\par }
54
Scribble54
Zoom out



main:000110
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Zoom out\plain\f5\fs24 
\par 
\par To zoom out by a factor of two on the \plain\f5\fs24\cf2\b\strike Graphical\plain\f5\fs24\cf3\b \{linkID=60\}\plain\f5\fs24  tab, click the \plain\f5\fs24\b Zoom out\plain\f5\fs24  \plain\f5\fs24\cf3 \{bmc zoomout.bmp\}\plain\f5\fs24  button.
\par }
55
Scribble55
Panning
pan


main:000130
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Panning\plain\f5\fs24 
\par 
\par After you have zoomed in on a location on the \plain\f5\fs24\cf3\b\strike Graphical\plain\f5\fs24\cf2\b \{linkID=60\}\plain\f5\fs24  tab, you may want to view to a different location without changing the magnification.  To do so, first click on the \plain\f5\fs24\b Pan\plain\f5\fs24  \plain\f5\fs24\cf2 \{bmc pan.bmp\}\plain\f5\fs24  button. Then click on a location and while keeping the mouse button depressed, move the mouse to somewhere else and release the mouse button.
\par }
60
Scribble60
Graphical tab
Graphical


main:000030
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Graphical tab\plain\f5\fs24 
\par 
\par There are several buttons on the \plain\f5\fs24\b Graphical\plain\f5\fs24  tab.  The \plain\f5\fs24\b OK\plain\f5\fs24  and \plain\f5\fs24\b Cancel\plain\f5\fs24  buttons will both close the dialog box but if the OK button is clicked the changes made in the dialog box will be kept.  Otherwise they will be discarded.
\par 
\par To see what each button does click on its picture below.
\par 
\par \plain\f5\fs24\cf2\strike \{bmc arrow.bmp\}\plain\f5\fs24\cf3 \{linkID=65\}\plain\f5\fs24\cf2\strike \{bmc zoomextents.bmp\}\plain\f5\fs24\cf3 \{linkID=50\}\plain\f5\fs24\cf2\strike \{bmc zoomin.bmp\}\plain\f5\fs24\cf3 \{linkID=52\}\plain\f5\fs24\cf2\strike \{bmc zoomout.bmp\}\plain\f5\fs24\cf3 \{linkID=54\}\plain\f5\fs24\cf2\strike \{bmc zoom.bmp\}\plain\f5\fs24\cf3 \{linkID=45\}\plain\f5\fs24\cf2\strike \{bmc pan.bmp\}\plain\f5\fs24\cf3 \{linkID=55\}\plain\f5\fs24\cf2\strike \{bmc add.bmp\}\plain\f5\fs24\cf3 \{linkID=30\}\plain\f5\fs24\cf2\strike \{bmc delete.bmp\}\plain\f5\fs24\cf3 \{linkID=35\}
\par 
\par \plain\f5\fs24 Note that as you move the cursor over the data buttons, the X and Y coordinates of the cursor location will be shown in the status bar.
\par }
65
Scribble65
Editting data points
edit


main:000140
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Editting data points\plain\f3\fs24 
\par 
\par When you click on the \plain\f3\fs24\b Select Point\plain\f3\fs24  \plain\f3\fs24\cf1 \{bmc arrow.bmp\}\plain\f3\fs24  button, you can then click on an existing data point and \plain\f3\fs24\cf3\strike move it\plain\f3\fs24\cf1 \{linkID=20\}\plain\f3\fs24  and/or \plain\f3\fs24\cf3\strike change it's parameter values\plain\f3\fs24\cf1 \{linkID=25\}\plain\f3\fs24 .
\par }
70
Scribble70
Table tab
Table


main:000035
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf3\b Table tab\plain\f3\fs24 
\par 
\par The \plain\f3\fs24\b OK\plain\f3\fs24  and \plain\f3\fs24\b Cancel\plain\f3\fs24  buttons will both close the dialog box but if the OK button is clicked the changes made in the dialog box will be kept.  Otherwise they will be discarded.  
\par 
\par You can \plain\f3\fs24\cf1\strike move\plain\f3\fs24\cf2 \{linkID=20\}\plain\f3\fs24  data points or \plain\f3\fs24\cf1\strike change the parameter values\plain\f3\fs24\cf2 \{linkID=25\}\plain\f3\fs24  of a data point by editing the values in the table.
\par 
\par If you have data for multiple data points in a spreadsheet or file, you can \plain\f3\fs24\cf1\strike import\plain\f3\fs24\cf2 \{linkID=40\}\plain\f3\fs24  it into the table. 
\par 
\par You can \plain\f3\fs24\cf1\strike add\plain\f3\fs24\cf2 \{linkID=30\}\plain\f3\fs24  or \plain\f3\fs24\cf1\strike delete\plain\f3\fs24\cf2 \{linkID=35\}\plain\f3\fs24  data points by changing the number of data points in the edit box in the lower left corner of the tab.  If you delete data points in this way, the last data point in the table will be deleted.  If you want to delete a different data point, first drag it to the end of the table.
\par 
\par You can \plain\f3\fs24\cf1\strike rearrange the data\plain\f3\fs24\cf2 \{linkID=75\}\plain\f3\fs24  in the table too.
\par }
75
Scribble75
Rearranging data



main:000160
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}{\f6\fswiss Helv;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Rearranging data\plain\f3\fs24 
\par 
\par You can rearrange the data in the table on the \plain\f3\fs24\cf2\strike Table tab\plain\f3\fs24\cf3 \{linkID=70\}\plain\f3\fs24  by clicking on the center of the label above the row or column you wish to move and then dragging it to its new position.  You can also resize columns by clicking on the boundary to the left of a column in the label area of the table and dragging the boundary to resize the column to the left of the boundary.
\par }
80
Scribble80
About tab
About


main:000170
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b About tab\plain\f3\fs24 
\par 
\par The \plain\f3\fs24\b About\plain\f3\fs24  tab shows the contact information for the PIE developer and the version number of the PIE.
\par }
100
Scribble100
File Format
file;format


main:000165
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b File Format\plain\f3\fs24 
\par 
\par \plain\f3\fs24\cf0 Data to be read from a file or pasted from the clipboard must either be in the format of an Argus ONE contour as described in the Argus ONE documentation (p. 104 to 108) or it must have the following format.
\par 
\par 1. \plain\f3\fs24 Any line in the data whose first character is a "#" will be considered a comment and will be used to assign names to imported parameters.  
\par 2. Each line in the data will begin a new row in the table except for comment lines.
\par 3. The data may be either in a \plain\f3\fs24\b tab-delimited\plain\f3\fs24  format or a \plain\f3\fs24\b comma/space-delimited\plain\f3\fs24  format.  
\par 4. In \plain\f3\fs24\b tab-delimited\plain\f3\fs24  format, the data that will appear in each cell in a row is separated from the data in the next cell in the row by a tab character.
\par 5. In \plain\f3\fs24\b comma/space-delimited\plain\f3\fs24  format, the data that will appear in each cell in a row is separated from the data in the next cell in the row by one or more tab characters, commas, or spaces. If you wish to import strings that include spaces while still using the comma/space delimited format, enclose the strings in quotation marks.  
\par 
\par Note: If you copy data from a commercial spreadsheet to the clipboard, the data will generally be in a \plain\f3\fs24\b tab-delimited\plain\f3\fs24  format.
\par }
0
0
0
25
1 Contours To Data Layer
2 Contours To Data Layer=Scribble10
1 Edit Data Layer
2 Edit Data Layer=Scribble15
2 Editing data points
3 Editting data points=Scribble65
3 Moving data points=Scribble20
3 Changing data point values=Scribble25
3 Adding data points=Scribble30
3 Deleting data points=Scribble35
3 Adding multiple data points at one time=Scribble40
3 File Format=Scribble100
2 Graphical tab
3 Graphical tab=Scribble60
3 Navigating
4 Zooming out all the way=Scribble50
4 Zoom in=Scribble52
4 Zoom out=Scribble54
4 Zooming to a specific region=Scribble45
4 Panning=Scribble55
2 Table tab
3 Table tab=Scribble70
3 Rearranging data=Scribble75
2 About tab
3 About tab=Scribble80
6
*InternetLink
-2147483640
Times New Roman
0
12
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
