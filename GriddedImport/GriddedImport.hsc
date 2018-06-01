HelpScribble project file.
10
Yrbaneq S. Xbavxbj-050Q35
0
1
Import gridded data



TRUE

D:\PROGRA~1\HELPSC~1\GRIDDE~1
1
BrowseButtons()
0
FALSE

FALSE
16
10
Scribble10
Import gridded Data



general:000010
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf3\b Import gridded Data\plain\f3\fs24 
\par 
\par GriddedImport.dll is a Plug-In Extension (PIE) for Argus ONE that facilitates importing gridded data into Argus ONE.  This capability is helpful for importing data from existing finite difference models into Argus ONE.  The PIE will create a new data layer with data points at the center of the cells in an existing grid in Argus ONE.  Each data point will have one or more associated parameters.  The PIE provides an easy method for creating these data points and for setting the values of the data points.
\par 
\par Next: \plain\f3\fs24\cf1\strike Starting to import data\plain\f3\fs24\cf2 \{linkID=20\}\plain\f3\fs24 
\par }
20
Scribble20
Starting to import data



general:000020
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf3\b Starting to import data\plain\f3\fs24 
\par 
\par You must create a grid in Argus ONE before you can use the Gridded data import PIE because the PIE will attempt to create data points at the center of each of the cells in the grid.  Consult the Argus ONE documentation for how to create a grid.  Once you have created a grid, you can select the \plain\f3\fs24\b PIEs|Import gridded data\plain\f3\fs24  menu item.
\par 
\par Next: \plain\f3\fs24\cf2\strike Gridded data main window\plain\f3\fs24\cf1 \{linkID=30\}\plain\f3\fs24 
\par }
30
Scribble30
Gridded data main window



general:000030
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Gridded data main window\plain\f5\fs24 
\par 
\par The main window is where the gridded data is prepared for importing into Argus ONE. 
\par Click on any of the controls in the image below to see what it does.
\par 
\par \plain\f5\fs24\cf2 \{bmc MainWindow.shg\}\plain\f5\fs24 
\par }
40
Scribble40
Layer Name



general:000040
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Layer Name\plain\f3\fs24 
\par 
\par The layer name is the name of the data layer on which the data should be placed.  If there is no layer by this name, it will be created.  If it does exist, you will be given a choice of overwriting the existing data or selecting a new layer name that does not exist.
\par }
50
Scribble50
Number of data sets



general:000050
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Number of data sets\plain\f3\fs24 
\par 
\par Each new data points may have one or more data values associated with it.  Each value will be stored in an Argus ONE parameter.  Set the number of values that you want each data point to have here.
\par }
60
Scribble60
Parameter names



general:000060
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Parameter names\plain\f3\fs24 
\par 
\par Each data point may have one or more data values that are stored in Argus ONE parameters.  Set the names of the parameters here.  The parameter names must be unique.
\par }
70
Scribble70
Number of values to ignore



general:000070
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Number of values to ignore\plain\f3\fs24 
\par 
\par There may be some cells for which you do not wish to create data points.  If these cells have one or more values that do not occur in the rest of the data, the PIE can ignore those data points.  Only the first data set is checked in this way so the rest of the data sets must have valid data for all locations that are valid in the first data set.  Set the number of data values to ignore here. 
\par }
80
Scribble80
Values to ignore



general:000080
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Values to ignore\plain\f3\fs24 
\par 
\par There may be some cells for which you do not wish to create data points.  If these cells have one or more values that do not occur in the rest of the data, the PIE can ignore those data points.  Only the first data set is checked in this way so the rest of the data sets must have valid data for all locations that are valid in the first data set.  Set the value or values that should be ignored here.
\par }
90
Scribble90
Data Format



general:000090
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fprq2 Times New Roman;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf1\b Data Format\plain\f4\fs24 
\par 
\par When pasting data from the clipboard, the values for individual data points must be in one of the following formats:
\par 
\par \pard\li200\fi-200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs24\b {\pntext\f1\'b7\tab}Tab-delimited\plain\f4\fs24 : each row of the table starts on a new line.  Each data value on the line is separated from the next by a single tab.\plain\f4\fs24\b 
\par {\pntext\f1\'b7\tab}Comma, space-delimited\plain\f4\fs24 :  each row of the table starts on a new line.  Each data value on the line is separated by one or more commas, spaces, or tabs.\plain\f4\fs24\b 
\par \pard\plain\f4\fs24 
\par In either case, lines \plain\f3\fs24 beginning \plain\f4\fs24 with a "#" character will be considered comments and ignored.
\par 
\par Note: if you copy data from a spreadsheet to the clipboard and paste it to the table, it should work with either format.
\par }
95
Scribble95
Multiple data lines per grid row



general:000100
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Multiple data lines per grid row\plain\f4\fs24 
\par 
\par In some cases, the data you want to import may have multiple lines of data in the file that all belong on the same row of the model.  If this check box is checked, each row of the grid will be filled before going on to the next row of the grid. 
\par }
100
Scribble100
Paste from clipboard



general:000110
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf3\b Paste from clipboard\plain\f3\fs24 
\par 
\par After you copied the data that you want to use to the clipboard, click on this button to paste it in the table.  Be sure to use the right \plain\f3\fs24\cf2\strike format\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24  for the data.
\par }
105
Scribble105
Read data from files



general:000111
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fprq2 Times New Roman;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b Read data from files\plain\f4\fs24 
\par 
\par Click this button to open one or more files each containing a single matrix that you want to import.  If required, the \plain\f4\fs24\cf1\strike number of data sets\plain\f4\fs24\cf2 \{linkID=50\}\plain\f4\fs24  will be increased to \plain\f3\fs24 accommodate\plain\f4\fs24  the number of files you select.  Each \plain\f4\fs24\cf1\strike parameter\plain\f4\fs24\cf2 \{linkID=60\}\plain\f4\fs24  will be assigned the name of the file from which its data was imported.  (You can then edit those names if you wish.)  The first file to be imported will be placed in the \plain\f4\fs24\cf1\strike table\plain\f4\fs24\cf2 \{linkID=110\}\plain\f4\fs24  on the tab that is active.  As each file is read, the selected tab will be changed so that each file goes in it's own table.
\par }
110
Scribble110
Table



general:000120
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Table\plain\f3\fs24 
\par 
\par This table contains the data to be placed in the model.  Note that the numbers of the rows and columns in the table will match the numbering of the rows and columns in the grid.  For example, if in Argus ONE, the \plain\f3\fs24\b Grid direction\plain\f3\fs24  is \plain\f3\fs24\b Negative X\plain\f3\fs24 , the columns in Argus will be numbered from right to left instead of left to right.  However, the columns in the table will still be numbered from left to right.
\par }
120
Scribble120
Help button



general:000130
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Help button\plain\f3\fs24 
\par 
\par Clicking the help button will show this help file.
\par }
130
Scribble130
Cancel button



general:000140
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Cancel button\plain\f3\fs24 
\par 
\par Clicking the Cancel button will close the dialog box without doing anything.
\par }
140
Scribble140
OK button



general:000150
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b OK button\plain\f3\fs24 
\par 
\par Clicking the OK button will create a data layer with the data you have entered.
\par }
0
0
0
16
1 Import gridded Data=Scribble10
1 Starting to import data=Scribble20
1 Gridded data main window=Scribble30
1 Layer Name=Scribble40
1 Number of data sets=Scribble50
1 Parameter names=Scribble60
1 Number of values to ignore=Scribble70
1 Values to ignore=Scribble80
1 Data Format=Scribble90
1 Multiple data lines per grid row=Scribble95
1 Paste from clipboard=Scribble100
1 Read data from files=Scribble105
1 Table=Scribble110
1 Help button=Scribble120
1 Cancel button=Scribble130
1 OK button=Scribble140
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
