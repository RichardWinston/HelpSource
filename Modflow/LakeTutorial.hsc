HelpScribble project file.
8
Yrbaneq S. Xbavxbj-050Q35
0
1
Lake tutorial


1998
TRUE

D:\PROGRA~1\HELPSC~1\MODFLOW\LAKEGR~1
1
BrowseButtons()
0
FALSE
22
10
Scribble10
Contents



lake:000010
Writing



FALSE
28
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Contents
\par \plain\f4\fs20 
\par \plain\f3\fs24\b Nonspatial data\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike \tab Introduction\plain\f3\fs24\cf3 \{linkID=20\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike \tab Model Properties: Simple model\plain\f3\fs24\cf3 \{linkID=30\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike \tab Starting the model\plain\f3\fs24\cf3 \{linkID=40\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike \tab Geology Tab\plain\f3\fs24\cf3 \{linkID=50\}
\par \tab \plain\f3\fs24\cf1\strike Stresses 1 Tab\plain\f3\fs24\cf3 \{linkID=60\}
\par \tab \plain\f3\fs24\cf1\strike Stresses 2 Tab\plain\f3\fs24\cf3 \{linkID=70\}
\par \tab \plain\f3\fs24\cf1\strike Stresses 3 Tab\plain\f3\fs24\cf3 \{linkID=75\}
\par \plain\f3\fs24\cf1\strike \tab TimeTab\plain\f3\fs24\cf3 \{linkID=80\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike \tab Output Files Tab\plain\f3\fs24\cf3 \{linkID=90\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\strike \tab Solvers/Other Packages Tab\plain\f3\fs24\cf3 \{linkID=100\}\plain\f3\fs24 
\par \plain\f3\fs24\b Spatial Data
\par \plain\f3\fs24 \tab \plain\f3\fs24\cf1 Scale\plain\f3\fs24\cf3 \{linkID=110\}
\par \tab \plain\f3\fs24\cf1\strike Domain Outline\plain\f3\fs24\cf3 \{linkID=120\}
\par \tab \plain\f3\fs24\cf1\strike Recharge Layer\plain\f3\fs24\cf3 \{linkID=130\}
\par \tab \plain\f3\fs24\cf1\strike Setting other default values\plain\f3\fs24\cf3 \{linkID=140\}
\par \tab \plain\f3\fs24\cf1\strike Stream and Lake Layers Defaults\plain\f3\fs24\cf3 \{linkID=150\}\plain\f3\fs24\cf1\strike 
\par \tab Creating the Lake\plain\f3\fs24\cf3 \{linkID=160\}
\par \tab \plain\f3\fs24\cf1\strike Creating the Streams\plain\f3\fs24\cf3 \{linkID=170\}
\par \tab \plain\f3\fs24\cf1\strike Creating the Grid\plain\f3\fs24\cf3 \{linkID=180\}
\par \tab \plain\f3\fs24\cf1\strike Running the model\plain\f3\fs24\cf3 \{linkID=190\}
\par \tab \plain\f3\fs24\cf1\strike Viewing the Results\plain\f3\fs24\cf3 \{linkID=200\}\plain\f3\fs24 
\par \plain\f3\fs24\cf1\b\strike References\plain\f3\fs24\cf3\b\strike \{linkID=1000\}\plain\f3\fs24 
\par }
20
Scribble20
Introduction



lake:000020
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Introduction
\par \plain\f4\fs20 
\par \plain\f3\fs24 This tutorial illustrates how to create MODFLOW models using the Lake Package. It is based on version 2.2 of the Lake package by Greg Council (GeoTrans, May 1996). This was based on an earlier Lake package by \plain\f3\fs24\cf3\strike Cheng and Anderson (1993)\plain\f3\fs24\cf1 \{linkID=1000\}\plain\f3\fs24 .
\par 
\par You can navigate through this tutorial using the ">>" and "<<" buttons or you can use the table of contents at the beginning of the tutorial.
\par 
\par This tutorial will include a simple model  based on that presented by \plain\f3\fs24\cf3\strike Cheng and Anderson (1993)\plain\f3\fs24\cf1 \{linkID=1000\}\plain\f3\fs24  followed by a more complex model.
\par \plain\f4\fs20 
\par }
30
Scribble30
Model Properties: Simple model



lake:000030
Writing



FALSE
26
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Model Properties: Simple model
\par \plain\f5\fs24 
\par The model we will make is illustrated below in plan view and cross section. It has no-flow boundaries on all sides and a square lake that is 5000 ft. long. The model parameters are in the table below
\par 
\par \pard\tx4860\plain\f4\fs24\b Parameter\tab Assumed\tab 
\par \plain\f4\fs24 Hydraulic conductivity of the unconfined layer\tab 200 ft./day\tab 
\par Specific yield of the unconfinedlayer\tab 0.15\tab 
\par Transmissivity of the confined layer \tab 4000 ft^\plain\f4\fs24\up12 2\plain\f4\fs24 /day\tab \tab 
\par Storage coefficient of the confined layer\tab 0.0001\tab 
\par Ratio horizontal to vertical hydraulic conductivity \tab 100\tab 
\par Thickness of lakebed sediments\tab 5 ft.
\par Hydraulic conductivity of lakebed sediment\tab 0.67 ft./day\tab 
\par Hydraulic conductivity of streambed sediment\tab 0.13 ft./day\tab 
\par Thickness of streambed sediment\tab 1 ft\tab 
\par Slope of stream sediments\tab 0.0002\tab 
\par Width of stream segments\tab 30 ft.\tab 
\par Mannings's roughness coefficient\tab 0.02
\par Recharge\tab 0.0026167 ft./day
\par \plain\f5\fs24 
\par \pard\plain\f5\fs24\cf2 
\par \{bmc Lake model.bmp\}
\par 
\par \{bmc LakeModelXS.bmp\}\plain\f5\fs24 
\par }
40
Scribble40
Starting the model



lake:000040
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Starting the model
\par \plain\f4\fs24 
\par \plain\f4\fs24 Start the model by Selecting "PIEs|New MODFLOW Project"
\par 
\par This will bring up the "Edit Project Info" dialog box. On the Project tab, only the two "Project Title" lines will appear in the MODFLOW input and output.
\par 
\par \plain\f4\fs24\cf2 \{bmc Project.bmp\}
\par 
\par \plain\f4\fs24 You can get help on many of the controls in the \plain\f4\fs24 Edit Project Info dialog box by clicking on the "?" in the upper right hand corner of the window and then clicking on the control. Try clicking on the "?" and then clicking on the Project title. You should see a pop-up wind appear that looks something like this.
\par 
\par \plain\f4\fs24\cf2 \{bmc ProjectHelp.bmp\}\plain\f4\fs24 
\par }
50
Scribble50
Geology Tab



lake:000050
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Geology Tab
\par \plain\f4\fs24 
\par \plain\f4\fs24 On the Geology tab, delete one of the geologic units by selecting it and clicking the "Delete" button. Change the top aquifer from "Confined" to "Unconfined".
\par 
\par \plain\f4\fs24\cf2 \{bmc Geology.bmp\}\plain\f4\fs24 
\par }
60
Scribble60
Stresses 1 Tab



lake:000060
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Stresses 1 Tab
\par \plain\f4\fs24 
\par \plain\f4\fs24 We don't need to do anything on the "Wetting" tab so go to the Stresses 1 tab. On the Stresses 1 tab, check the "Recharge" check box.
\par 
\par \plain\f4\fs24\cf2 \{bmc stress.bmp\}\plain\f4\fs24 
\par }
70
Scribble70
Stresses 2 Tab



lake:000070
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Stresses 2 Tab
\par \plain\f4\fs24 
\par \plain\f4\fs24 On the Stresses 2  tab and select the Stream package. Change the model units in the Stream package to ft. Check the "Calculate Stage" check box
\par \plain\f4\fs24\cf2 
\par \{bmc Stream.BMP\}\plain\f4\fs24 
\par }
75
Scribble75
Stresses 3 Tab



lake:000075
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Stresses 3 Tab
\par \plain\f3\fs20 
\par \plain\f4\fs24 On the Stresses 3  tab and select the Lake package. Then change the "maximum number of inflow or outflow stream segments for any lake" to 1. 
\par 
\par \plain\f4\fs24\cf2 \{bmc Lake.bmp\}\plain\f4\fs24 
\par }
80
Scribble80
TimeTab



lake:000080
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b TimeTab
\par \plain\f4\fs24 
\par \plain\f4\fs24 On the Time tab, change the time units to days.
\par 
\par \plain\f4\fs24\cf2 \{bmc Time.bmp\}\plain\f4\fs24 
\par }
90
Scribble90
Output Files Tab



lake:000090
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Output Files Tab
\par \plain\f4\fs24 
\par \plain\f4\fs24 On the Output Files tab, change the "Root name" to a name of your choice. All the MODFLOW input and output file will have this name plus an extension that reflects the type of file that it is. Make sure that you choose "Formatted text file" for the type of head and drawdown files if you wish to view the heads or drawdowns in Argus ONE.
\par 
\par \plain\f4\fs24\cf2 \{bmc OutputTab.bmp\}\plain\f4\fs24 
\par }
100
Scribble100
Solvers/Other Packages Tab



lake:000100
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Solvers/Other Packages Tab
\par \plain\f4\fs24 
\par \plain\f4\fs24 Finally change to the Solvers/Other Packages tab. Change RCLOSE to 1000 and change the maximum number of outer iterations to 400.  Click the OK to create the model layer structure. You can return to the Edit Project Info dialog box by selecting "PIEs|Edit Project Info".
\par 
\par \plain\f4\fs24\cf2 \{bmc PCG.bmp\}\plain\f4\fs24 
\par }
110
Scribble110
Scale



lake:000110
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Scale
\par \plain\f4\fs24 
\par Our model will be 13000 feet long and 800 feet wide so we will need a much larger model area. One way to do this is to select "Special|Scale and Units" and change the scale to 1000. You may also wish to change the label of the units to "Feet".
\par 
\par \plain\f4\fs24\cf2 \{bmc scale.bmp\}\plain\f4\fs24 
\par }
120
Scribble120
Domain Outline



lake:000120
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Domain Outline
\par \plain\f4\fs24 
\par \plain\f4\fs24 If you are not already on it, switch to the "MODFLOW Domain Outline" layer. and draw the outline of the modeled area. To this, select the tool indicated in the illustration below and draw the boundary around an area 13000 feet long and 8000 feet wide. When you are finished, double click and a dialog box will appear. Enter a 500 in it. This will make the default grid size of the model area 500 ft. (You can refine the grid density in the "MODFLOW Grid Density" layer.)
\par 
\par \plain\f4\fs24\cf2 \{bmc DomainOutline.bmp\}
\par 
\par \{bmc DomainOutlineDialog.bmp\}\plain\f4\fs24 
\par }
130
Scribble130
Recharge Layer



lake:000130
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Recharge Layer
\par \plain\f5\fs24 
\par \plain\f5\fs24 We will have a constant recharge rate over the entire area. This makes it simple to specify the recharge rate. We just go to the Recharge layer. Select "View|Layers..." to bring up the Layers Dialog box. Find "Recharge" in the list of layers in the top half of the dialog box. The parameters associated with the Recharge layer will be displayed in the bottom half of the dialog box. Select "Stress1" which is the recharge rate in stress period 1. Click the Fx button that is displayed when you select that parameter. This will bring up the expression editor. Enter a value of \plain\f3\fs24 0.0026167 and click the OK button. On the \plain\f3\fs24\cf3\strike Stresses 1 Tab\plain\f3\fs24\cf1 \{linkID=60\}\plain\f3\fs24  we selected the recharge to be to the top layer so the "Elevation" parameter on the Recharge layer will be ignored.\plain\f5\fs24 
\par 
\par \plain\f5\fs24\cf1 \{bmc Recharge1.bmp\}\plain\f5\fs24 
\par 
\par \plain\f5\fs24\cf1 \{bmc Recharge2.bmp\}\plain\f5\fs24 
\par }
140
Scribble140
Setting other default values



lake:000140
Writing



FALSE
24
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Setting other default values
\par \plain\f4\fs24 
\par \plain\f4\fs24 Now would be a good time to set the default values for other layers too. Go to the "Elevation Top Unit1" layer and set it's default value to 50 using the same technique you used in the \plain\f4\fs24\cf2\strike Recharge Layer\plain\f4\fs24\cf3 \{linkID=130\}\plain\f4\fs24 .
\par 
\par Set Elevation Bottom Unit1 to 20. 
\par 
\par For Elevation Top Unit2, we'll do something a little different. Bring up the expression editor as you did before but this time find Elevation Bottom Unit1 in the list of layers. Double click on it. That will put a list of parameters for that layer in the window in the lower right hand corner of the dialog box. For Elevation Top Unit2, there is only one layer. Double click on it to put it in the window at the top of the dialog box and then click the OK button.
\par 
\par \plain\f4\fs24\cf3 \{bmc Expression.bmp\}\plain\f4\fs24 
\par 
\par The default value for Elevation Bottom Unit2 is already 0 so we won't change it.
\par 
\par We will set the initial head for both units 1 and 2 to 50. The layers to do that are  "Initial Head Unit1" and "Initial Head Unit2"
\par 
\par For both units we will set the hydraulic conductivity to 200. We do that with the Kx parameter of the "Hydraulic Cond Unit1" and "Hydraulic Cond Unit2" layers.
\par 
\par We will set the ratio of the horizontal to vertical hydraulic conductivity to 100 by using an expression for the Kz parameter of the "Hydraulic Cond Unit1" and "Hydraulic Cond Unit2" layers. The expression will be Kx/100.
\par 
\par \plain\f4\fs24\cf3 \{bmc Expression2.bmp\}\plain\f4\fs24 
\par 
\par We are using a steady state model so the specific storage and specific yield can be ignored. We can also ignore the wetting threshhold because we aren't using the wetting option.
\par }
150
Scribble150
Stream and Lake Layers Defaults



lake:000150
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Stream and Lake Layers Defaults
\par \plain\f4\fs24 
\par \plain\f4\fs24 There are quite a few variables on the stream layer. We can set a few defaults here. Set the Streambed hydraulic conductivy to 100. Set the slope to .0002. Set the Manning's roughness to .02.
\par 
\par \plain\f4\fs24\cf2 \{bmc streamDefaults.bmp\}
\par 
\par \plain\f4\fs24 On the Lake layer set the "Stage Convergence Criterion" to 0.01. Set the "Lakebed hydraulic conductivity" to 100. Set the "Lakebed bottom elev" to "Elevation Bottom Unit1". Set Precipitation1 to 'Recharge.Stress1" (This means the Stress1 parameter of the Recharge layer.) Set the Evapotranspiration1 "-Precipitation1 * 0.8" (This means that the evaporation is 80% of the precipitation. The minus sign indicates that evaporation is removing water from the lake.)\plain\f4\fs24 
\par }
160
Scribble160
Creating the Lake



lake:000160
Writing



FALSE
16
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Creating the Lake
\par \plain\f4\fs24 
\par \plain\f4\fs24 Now make the "Lake Unit1" layer the active layer. You can do this by clicking to the far left in the layers floater next to "Lake Unit1"
\par 
\par \plain\f4\fs24\cf2 \{bmc LayersFloater.bmp\}\plain\f4\fs24 
\par 
\par Select the Closed contour tool and draw a square lake that is 5000 feet long on each side. (See Illustration in \plain\f4\fs24\cf3\strike Model Properties: Simple model\plain\f4\fs24\cf2 \{linkID=30\}\plain\f4\fs24 )
\par 
\par \plain\f4\fs24\cf2 \{bmc Lake1.bmp\}\plain\f4\fs24 
\par 
\par When you are done, double-click and a dialog box will appear. Enter the parameters as shown below.
\par 
\par \plain\f4\fs24\cf2 \{bmc Lake2.bmp\}\plain\f4\fs24 
\par }
170
Scribble170
Creating the Streams



lake:000170
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Creating the Streams
\par \plain\f4\fs24 
\par Now change to the Stream Unit1 layer and create two streams using the open contour tool as shown below. It is important that you start the lines defining the streams at the northern end of each stream. The direction in which you draw the stream determines the direction in which the stream flows. \plain\f4\fs24\cf3 
\par 
\par \{bmc Stream3.bmp\}
\par 
\par \plain\f4\fs24 When you have finished drawing each stream, enter values for the streams as shown below. The first illustration is for ther northern stream. The second illustration is for the southern stream. You can leave "Downstream Stage" and "Downstream Width" equal to $N/A. This means that the value for "Upstream Stage" and "Upstream Width" should be used all along the stream. You should use different values for "Upstream top elevation1" and "Downstream top elevation1" to indicate that the elevation should be interpolated from the upstream to the downstream end. The bottom elevation is also interpolated because you enter different values for "Upstream bottom elevation1" and "Downstream bottom elevation1".\plain\f4\fs24\cf3 
\par 
\par \{bmc Stream1.bmp\}\{bmc Stream2.bmp\}
\par 
\par \plain\f4\fs24 When you \plain\f4\fs24\cf2\strike created the Lake\plain\f4\fs24\cf3 \{linkID=160\}\plain\f4\fs24 , you set the value of "Input Stream1" to 1. This means that the stream that you assigned a segment number of 1 will flow into the lake. (It should be the northern stream.) Similarly the southern stream flows out of the lake because you assigned "2" to "Output Stream1" when you \plain\f4\fs24\cf2\strike created the Lake\plain\f4\fs24\cf3 \{linkID=160\}\plain\f4\fs24 .
\par }
180
Scribble180
Creating the Grid



lake:000180
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Creating the Grid
\par \plain\f4\fs24 
\par Now lets create the grid for the model. You could have done this earlier if you wanted to.
\par 
\par Go to the MODFLOW FD Grid layer and select the "magic wand" tool as illustrated below. Click anywhere within the domain outline and the grid will be created.
\par 
\par \plain\f4\fs24\cf2 \{bmc Grid.bmp\}\plain\f4\fs24 
\par }
190
Scribble190
Running the model



lake:000190
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Running the model
\par \plain\f4\fs24 
\par If you are not already on the MODFLOW FD Grid layer, make it the active layer and select "PIEs|Run MODFLOW". This will bring up the "Run Model" dialog box. Check to make sure that the path and file name for the modelling program you wish to run is correct. If it isn't type the correct path andfile name or click the browse button next to it to locate the modelling program on your computer. You are not required to export all the input files for the model so long as correct versions of those files already exist in the directory in which you will create the input files and run the model. Select the input files you wish to create and make sure there are check boxes next to their names. You can either create the input files and run the model or just create the input files. Use the radio buttons at the top of the dialog box to choose which you wish to do. Then click the OK button to start exporting the model input files and run the model (if you have choosen to run it).
\par 
\par \plain\f4\fs24\cf2 \{bmc Run.bmp\}\plain\f4\fs24 
\par }
200
Scribble200
Viewing the Results



lake:000200
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Viewing the Results
\par \plain\f5\fs24 
\par When the model has finished running, you can view the results in Argus ONE. Select "PIEs|MODFLOW PostProcessing". This will bring up the MODFLOW Select Data Set dialog box. Select MODFLOW (Head and Drawdown) and click Select Data Set. Select the type of file for which you wish to view the results. If you ran MODFLOW, you can import either heads or drawdowns. If you ran MOC3D. you can import, heads, drawdowns, concentrations, or velocities. Select the file containing the heads.  This will bring up the MODFLOW Post-Processing dialog box. You must also choose the model layer that you want to plot. Click the OK button and the data will be imported into Argus ONE. (You may have to make the layer visible to see the plot.)
\par 
\par \plain\f5\fs24\cf2 \{bmc PostProc.bmp\}\plain\f5\fs24 
\par \plain\f5\fs24\cf2 \{bmc PostProc1.bmp\}
\par \{bmc PostProc2.bmp\}\plain\f5\fs24 
\par }
1000
Scribble1000
References



lake:000210
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b References
\par \plain\f4\fs24 
\par \plain\f4\fs24 Cheng, Xiangxue, and Anderson, Mary P. 1993. Numerical simulation of ground-water interaction with lakes allowing for fluctuating Lake Levels. Ground Water, 31(6): 929-933. 
\par }
0
0
0
24
1 Contents=Scribble10
1 Non Spatial Data
2 Introduction=Scribble20
2 Model Properties: Simple model=Scribble30
2 Starting the model=Scribble40
2 Geology Tab=Scribble50
2 Stresses/Solvers Tab=Scribble60
2 Stream/Lake Tab=Scribble70
2 TimeTab=Scribble80
2 Output Tab=Scribble90
2 PCG2 Tab=Scribble100
1 Spatial Data
2 Scale=Scribble110
2 Domain Outline=Scribble120
2 Recharge Layer=Scribble130
2 Setting other default values=Scribble140
2 Stream and Lake Layers Defaults=Scribble150
2 Creating the Lake=Scribble160
2 Creating the Streams=Scribble170
2 Creating the Grid=Scribble180
2 Running the model=Scribble190
2 Viewing the Results=Scribble200
1 References
2 References=Scribble1000
7
*InternetLink
16711680
Courier New
0
10
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
B...
0
0
0
0
0
0
*TopicText
-2147483640
Arial
0
10
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
B...
0
0
0
0
0
0
<new macro>
0
Arial
0
10
....
0
0
0
0
0
0
