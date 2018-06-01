HelpScribble project file.
8
Yrbaneq S. Xbavxbj-050Q35
0
1
Lake Package and MT3D Help



TRUE


1
BrowseButtons()
0
FALSE
102
15000
Scribble15000
Stresses 3 Tab




Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Stresses 3 Tab
\par \plain\f4\fs20 
\par \plain\f3\fs24\cf3\strike LAK CheckBox\plain\f3\fs24\cf1 \{linkID=15060\}
\par \plain\f3\fs24\cf3\strike Steady Stress : Lake\plain\f3\fs24\cf1 \{linkID=15070\}
\par \plain\f3\fs24\cf3\strike Number of sub-time-steps for simulating lakes in transient model\plain\f3\fs24\cf1 \{linkID=15080\}
\par \plain\f3\fs24\cf3\strike Maximum number of inflow or outflow stream segments for any lake\plain\f3\fs24\cf1 \{linkID=15090\}
\par \plain\f3\fs24\cf3\strike Maximum number of equations used to define stage discharge relationship\plain\f3\fs24\cf1 \{linkID=15100\}
\par \plain\f3\fs24\cf3\strike Method for calculating conductance of the lakebed on bottom of lake\plain\f3\fs24\cf1 \{linkID=15110\}
\par \plain\f3\fs24\cf3\strike Method for calculating conductance of the lakebed on sides of lake\plain\f3\fs24\cf1 \{linkID=15120\}
\par \plain\f3\fs24\cf3\strike Print Lake stage and budget in separate file CheckBox\plain\f3\fs24\cf1 \{linkID=15130\}
\par 
\par 
\par \plain\f3\fs24 See also:
\par \plain\f3\fs24\cf3\strike HSI GeoTrans Lake Package\plain\f3\fs24\cf1 \{linkID=15290\}\plain\f4\fs20 
\par }
15060
Scribble15060
LAK checkbox
LAK


lakenonspatialdata:000010
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b LAK checkbox
\par \plain\f4\fs20 
\par \plain\f5\fs24 Select this check box to activate the HSI GeoTrans Lake package (version 2.2).
\par 
\par See also:
\par \plain\f5\fs24\cf2\strike Choosing Stress Packages\plain\f5\fs24\cf3 \{link=Scribble190@MODFLOW.hlp\}\plain\f5\fs24 
\par \plain\f4\fs20 
\par 
\par }
15070
Scribble15070
Steady Stress : Lake
Steady Stress : Lake


lakenonspatialdata:000020
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Steady Stress : Lake
\par \plain\f3\fs20 
\par \plain\f5\fs24 Select "Steady stress (0)" to use the same stresses throughout the simulation. Parameters for later stress periods will be created but not used. 
\par 
\par Select "Time variable stress (1)" to use a different stress for each stress period.\plain\f3\fs20 
\par }
15080
Scribble15080
Number of sub-time-steps for simulating lakes in transient model
Number of sub-time-steps for simulating lakes in transient mode


lakenonspatialdata:000030
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Number of sub-time-steps for simulating lakes in transient model
\par \plain\f4\fs20 
\par \plain\f3\fs24 Because the lake stage typically changes much more rapidly than do groundwater heads, the changes in lake stage are simulated using multiple time steps within each time step used to simulate groundwater flow.\plain\f4\fs20 
\par }
15090
Scribble15090
Maximum number of inflow or outflow stream segments for any lake
Maximum number of inflow or outflow stream segments for any lake


lakenonspatialdata:000050
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Maximum number of inflow or outflow stream segments for any lake
\par 
\par \plain\f4\fs24 Set the maximum number of streams flowing either into or out of a lack in this edit box. For example if you had three inflow streams and one outflow stream, you would enter a 3. If you had two inflow streams and four outflow streams, you would enter a 4.\plain\f3\fs20 
\par \plain\f3\fs20 
\par }
15100
Scribble15100
Maximum number of equations used to define stage discharge relationship
Maximum number of equations used to define stage discharge relationship


lakenonspatialdata:000040
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Maximum number of equations used to define stage discharge relationship
\par \plain\f3\fs20 
\par \plain\f4\fs24 The outflow from a lake into a stream can be determined by one or more series of equations. These equations have the form:
\par 
\par Outflow = CONST * (STAGE - ELEV)^ EXPNT
\par 
\par The equation that is used depends on the "CUTOFF". The lake package will use the first equation for which the stage exceeds "CUTOFF". If the stage does not exceed "CUTOFF" for any equation, the dischage will be 0.
\par 
\par Set the maximum number of equations you wish to use in any outflow stream segments in this box. (You are not required to use all the equations in all the outflow stream segments but parametes will be available for you to use if you so choose.)\plain\f3\fs20 
\par 
\par }
15110
Scribble15110
Method for calculating conductance of the lakebed on bottom of lake
Method for calculating conductance of the lakebed on bottom of lake


lakenonspatialdata:000060
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}{\f6\fswiss\fcharset1 MS Sans Serif;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Method for calculating conductance of the lakebed on bottom of lake
\par \plain\f3\fs20 
\par \plain\f5\fs24 This gives you a choice of how the conductance should be calculated for the cells beneath a lake.
\par 
\par Use lakebed thickness only
\par \tab This means that the lakebed conductance will be calculated using the hydraulic conductivity of the lakebed sediments and the their thickness. This is appropriate if the lakebed sediments have a sufficiently low hydraulic conductivity that they will dominant the conductance term.
\par 
\par Use lakebed thickness and cell thickness
\par \tab This means that the lakebed conductance will be calculated using the hydraulic conductivity of the lakebed sediments and the their thickness and also the hydraulic conductivity of the cell linked to the lake and it's thickness. This is appropriate if the lakebed sediments do not have a sufficiently low hydraulic conductivity that they will dominant the conductance term.
\par 
\par  See the discussion of "VCONT" (Vertical conductance) in the MODFLOW documentation for the equations used to specify the conductance.\plain\f6\fs20 
\par \plain\f3\fs20 
\par }
15120
Scribble15120
Method for calculating conductance of the lakebed on sides of lake
Method for calculating conductance of the lakebed on sides of lake


lakenonspatialdata:000070
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Method for calculating conductance of the lakebed on sides of lake
\par \plain\f3\fs20 
\par \plain\f5\fs24 Use lakebed thickness only
\par Use cell width only
\par Use lakebed thickness and cell width
\par 
\par This gives you a choice of how the conductance should be calculated for the cells next to a lake.
\par 
\par Use lakebed thickness only
\par \tab This means that the lakebed conductance will be calculated using the hydraulic conductivity of the lakebed sediments and the their thickness. This is appropriate if the lakebed sediments have a sufficiently low hydraulic conductivity that they will dominant the conductance term.
\par 
\par Use cell width only
\par \tab This means that the hydraulic conductivity of the cell and it's width will be used to calculate the conductance. This is appropriate if the cells next to the lake are in direct connection with the lake without being separated from the lake by lake bed sediments. This was the assumption used in the original example for Chenge and Anderson (1993; Ground Water, 31: 929-933). If the lake sediments are thin, this may be appropriate even if the sediments have a low hydraulic conductivity because the large size of the cell in comparison with the lake sediments may cause the effect of the lake sediments on the conductance to be small.
\par 
\par Use lakebed thickness and cell thickness
\par \tab This means that the lakebed conductance will be calculated using the hydraulic conductivity of the lakebed sediments and the their thickness and also the hydraulic conductivity of the cell linked to the lake and it's width. This is appropriate if the lakebed sediments do not have a sufficiently low hydraulic conductivity that they will dominant the conductance term but it is large enough to have a significant effect on the conductance.
\par 
\par  See the discussion of "VCONT" (Vertical conductance) in the MODFLOW documentation for the equations used to specify the conductance.
\par \plain\f3\fs20 
\par }
15130
Scribble15130
Print Lake stage and budget in separate file CheckBox
Print Lake stage and budget in separate file


lakenonspatialdata:000080
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Print Lake stage and budget in separate file CheckBox
\par \plain\f3\fs20 
\par \plain\f5\fs24 If you check this check box, the lake stage and budget will be printed in a file with the extension "lbd".\plain\f3\fs20 
\par }
15140
Scribble15140
SPG checkbox



lakenonspatialdata:000090
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b SPG checkbox
\par \plain\f5\fs20 
\par \plain\f4\fs24 Select this check box to activate the Seepage package.
\par 
\par See also:
\par \plain\f4\fs24\cf2\strike Choosing Stress Packages\plain\f4\fs24\cf1 \{link=Scribble190@MODFLOW.hlp\}\plain\f4\fs24 
\par \plain\f5\fs20 
\par }
15150
Scribble15150
Use Alternate Export Templates



lakenonspatialdata:000100
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Use Alternate Export Templates
\par \plain\f4\fs20 
\par \plain\f5\fs24\cf3\strike Stresses 3 Tab\plain\f5\fs24\cf2 \{linkID=15000\}\plain\f5\fs24 
\par \plain\f4\fs20 
\par \plain\f5\fs24 If one of the "alternate export template" check box is checked an alternative export template is used for the specified package.  This alternative template allows you to set the value of all parameters in the layer using expressions. 
\par 
\par On the \plain\f5\fs24\cf3\strike Line Seepage Unit[i]\plain\f5\fs24\cf2 \{linkID=16120\}\plain\f5\fs24  layers, there will be one seepage boundary created in each cell in which there are objects.  The elevation will be evaluated at the block center.  
\par 
\par On the \plain\f5\fs24\cf3\strike Area Seepage Unit[i]\plain\f5\fs24\cf2 \{linkID=16130\}\plain\f5\fs24  layers, there will be one seepage boundary created in each cell in which the conductance parameter is a number (rather than $N/A) at the block center.  The elevation will be evaluated at the block center.  
\par 
\par \plain\f4\fs20 
\par }
15290
Scribble15290
HSI GeoTrans Lake Package



lakespatialdata:000010
Writing



FALSE
19
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b HSI GeoTrans Lake Package
\par \plain\f3\fs20 
\par \plain\f4\fs24 The \plain\f4\fs24\cf1\strike HSI GeoTrans\plain\f4\fs24\cf3 \{link=*! ExecFile("http://www.hsigeotrans.com/")\}\plain\f4\fs24  (\plain\f4\fs24\cf2\strike Council, 1998\plain\f4\fs24\cf3 \{linkID=19000\}\plain\f4\fs24 ) is based on an earlier Lake package (\plain\f4\fs24\cf2\strike Cheng and Anderson 1993, 1994; Anderson and Cheng 1993\plain\f4\fs24\cf3 \{linkID=19000\}\plain\f4\fs24 ). It was developed in conjunction with an application for a minining permit for the proposed Crandon Mine in Wisconsin.\plain\f4\fs24 
\par 
\par The purpose of the Lake package is to allow MODFLOW to include lakes whose stage changes due to inflow or outflow. In this it resembles the Reservoir package. However, in the Reservoir package, the modeller sets the stage for each stress period whereas in the Lake package the stage is calculated based on onflows and outflows.
\par 
\par Inflow to the lake can come in several forms: rainfall, runoff, stream flow and groundwater discharge. Outflow from the lake can be in the form of evapotranspiration, stream flow or groundwater recharge. The Lake package can simulate all of these.
\par 
\par In the GeoTrans Lake package as well as \plain\f4\fs24 Cheng and Anderson's Lake package, the lake volume is represented by inactive cells in the model.  Cells that lie on the interface between the lake and the aquifer system are designated as "lake cells".\plain\f4\fs24  Normally, when using this interface, you don't need to worry about that. However, if you look at the MODFLOW input files you will see that the areas where you have lakes are inactive cells. Because of this, the post processor will not plot heads or drawdowns for the lake centers but only for the cells at the edges of the lakes.
\par 
\par For documentation of the Lake package, see HSI GeoTrans \plain\f4\fs24\cf1\strike http://hsigeotrans.com/\plain\f4\fs24\cf3 \{link=*! ExecFile("http://hsigeotrans.com/")\}\plain\f4\fs24 
\par 
\par See also: 
\par \plain\f4\fs24\cf1\strike Wisconsin Department of Natural Resources\plain\f4\fs24\cf3 \{link=*! ExecFile("ftp://www.dnr.state.wi.us/Crandon/MODFLOW/MODFLOW96_98/")\}\plain\f4\fs24 
\par \plain\f4\fs24\cf1\strike Army Corps of Engineers\plain\f4\fs24\cf3 \{link=*! ExecFile("ftp://ftp.mvp.usace.army.mil/priv/Crandon/grdwatermodel/")\}\plain\f3\fs20 
\par \plain\f4\fs24\cf1\strike What is the Status of the DNR Review of the Proposed Crandon Mine?\plain\f4\fs24\cf3 \{link=*! ExecFile("http://www.dnr.state.wi.us/org/es/science/mining/mine-sta/index.htm")\}\plain\f3\fs20 
\par }
15300
Scribble15300
Lake Unit[i]



lakespatialdata:000020
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Lake Unit[i]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Use the Lake Unit layers to define the positions of lakes. Draw a closed contour in the geologic unit containing the lake bottom. The lake will be defined as present in that unit and all units above it. \plain\f3\fs20 
\par }
15310
Scribble15310
Lake Name



lakespatialdata:000030
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Lake Name
\par \plain\f3\fs20 
\par \plain\f5\fs24 Name of the lake used to identify it in the MODFLOW input and output
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15320
Scribble15320
Lake Number



lakespatialdata:000040
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Lake Number
\par \plain\f3\fs20 
\par \plain\f5\fs24 The lake number is used internally by the preprocessor to identify the lake. Each lake should have a unique number.
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15330
Scribble15330
Simulation mode



lakespatialdata:000050
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Simulation mode
\par \plain\f3\fs20 
\par \plain\f5\fs24 0 = Fixed Stage
\par 1 = Interpolated stage
\par 2 = Steady-state
\par 3 = Transient
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15340
Scribble15340
Starting Stage



lakespatialdata:000060
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b Starting Stage
\par \plain\f3\fs20 
\par \plain\f5\fs24 Lake stage at the beginning of the model
\par 
\par This is on the \plain\f5\fs24\cf2\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15350
Scribble15350
Max Iterations



lakespatialdata:000070
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Max Iterations
\par \plain\f3\fs20 
\par \plain\f5\fs24 Maximumn number of interations for stage solver.
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15360
Scribble15360
Stage Convergence Criterion



lakespatialdata:000080
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Stage Convergence Criterion
\par \plain\f3\fs20 
\par \plain\f5\fs24 Stage solver termination criterion (change in stage in 1 iteration.
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15370
Scribble15370
Maximum Lake Stage



lakespatialdata:000090
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Maximum Lake Stage
\par \plain\f3\fs20 
\par \plain\f5\fs24 Maximum lake stage
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15380
Scribble15380
Lakebed hydraulic conductivity



lakespatialdata:000100
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Lakebed hydraulic conductivity
\par \plain\f3\fs20 
\par \plain\f5\fs24 Lakebed hydraulic conductivity
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15390
Scribble15390
Lakebed top elev



lakespatialdata:000110
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Lakebed top elev
\par \plain\f3\fs20 
\par \plain\f5\fs24 Lakebed top elevation
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15400
Scribble15400
Lakebed bottom elev



lakespatialdata:000120
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Lakebed bottom elev
\par \plain\f3\fs20 
\par \plain\f5\fs24 Lakebed bottom elevation
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15410
Scribble15410
Input Stream[i]



lakespatialdata:000130
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Input Stream[i]
\par \plain\f4\fs20 
\par \plain\f3\fs24 Inflow stream segment i where i = 1, 2, 3, ....
\par 
\par See \plain\f3\fs24 MODFLOW Help for Stream Unit[i].Segment Number\plain\f3\fs24\cf3 
\par 
\par \plain\f3\fs24 This is on the \plain\f3\fs24\cf1\strike Lake Unit[i]\plain\f3\fs24\cf3 \{linkID=15300\}\plain\f3\fs24  Layer.\plain\f4\fs20 
\par }
15420
Scribble15420
Output Stream[i]



lakespatialdata:000140
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Output Stream[i]
\par \plain\f4\fs20 
\par \plain\f3\fs24 Outflow stream segment i where i = 1, 2, 3, ....
\par 
\par See \plain\f3\fs24 MODFLOW Help for Stream Unit[i].Segment Number\plain\f3\fs24\cf2 
\par 
\par \plain\f3\fs24 This is on the \plain\f3\fs24\cf3\strike Lake Unit[i]\plain\f3\fs24\cf2 \{linkID=15300\}\plain\f3\fs24  Layer.\plain\f4\fs20 
\par }
15430
Scribble15430
Eq Cutoff[i][j]



lakespatialdata:000150
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Eq Cutoff[i][j]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Lower stage limit of rating equation j 
\par \tab where j = 1 to 5 for 
\par \tab stream segment i where i = 1, 2, 3, ....
\par 
\par The equations must be in arranged in descending order according to the Eq Cutoff. (I.e. The equation with the largest cuttoff should come first.
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15440
Scribble15440
Eq Const[i][j]



lakespatialdata:000160
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Eq Const[i][j]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Rating equation constant of rating equation j 
\par \tab where j = 1 to 5 for 
\par \tab stream segment i where i = 1, 2, 3, ....
\par 
\par The equations must be in arranged in descending order according to the \plain\f5\fs24\cf1\strike Eq Cutoff\plain\f5\fs24\cf3 \{linkID=15430\}\plain\f5\fs24 . (I.e. The equation with the largest cuttoff should come first.
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15450
Scribble15450
Eq Elev[i][j]



lakespatialdata:000170
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Eq Elev[i][j]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Rating equation reference (outfall) elevation of rating equation j 
\par \tab where j = 1 to 5 for 
\par \tab stream segment i where i = 1, 2, 3, ....
\par 
\par The equations must be in arranged in descending order according to the \plain\f5\fs24\cf3\strike Eq Cutoff\plain\f5\fs24\cf1 \{linkID=15430\}\plain\f5\fs24 . (I.e. The equation with the largest cuttoff should come first.
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15460
Scribble15460
Eq exponent[i][j]



lakespatialdata:000180
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Eq exponent[i][j]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Rating equation exponent of rating equation j 
\par \tab where j = 1 to 5 for 
\par \tab stream segment i where i = 1, 2, 3, ....
\par 
\par The equations must be in arranged in descending order according to the \plain\f5\fs24\cf3\strike Eq Cutoff\plain\f5\fs24\cf1 \{linkID=15430\}\plain\f5\fs24 . (I.e. The equation with the largest cuttoff should come first.
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15470
Scribble15470
Precipitation[i]



lakespatialdata:000190
Writing



FALSE
16
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Precipitation[i]
\par \plain\f3\fs20 
\par \plain\f4\fs24 Precipitation rate 
\par \tab for stress period i where i = 1, 2, 3, ....
\par 
\par  (The model will multiply the precipitation rate by the total area of the lake cell to get the total area flow rate.)
\par The lake area calculated by the PIE is the area perpendicular to the contact between the lake and the aquifer. For cells next to the lake, this is a vertical plane. For cells beneath the lake this is a horizontal plane. Thus, the total volume of precipitation may be higher than might be expected based on the horizontal surface area of the lake.
\par 
\par Positive values represent flow into the lake.
\par 
\par Unlike \plain\f4\fs24\cf3\strike Evapotranspiration[i]\plain\f4\fs24\cf2 \{linkID=15480\},\plain\f4\fs24  changes in lake area due to wetting and drying of lake cells do not affect the calculated volume of precipitation into the lake.
\par 
\par This is on the \plain\f4\fs24\cf3\strike Lake Unit[i]\plain\f4\fs24\cf2 \{linkID=15300\}\plain\f4\fs24  Layer.\plain\f3\fs20 
\par }
15480
Scribble15480
Evapotranspiration[i]



lakespatialdata:000200
Writing



FALSE
16
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Evapotranspiration[i]
\par \plain\f4\fs20 
\par \plain\f5\fs24 Evaporation rate
\par \tab for stress period i where i = 1, 2, 3, ....
\par 
\par  (The model will multiply the evaporation rate by the wetted area of the lake cell to get the total area flow rate.)\tab 
\par The lake area calculated by the PIE is the area perpendicular to the contact between the lake and the aquifer. For cells next to the lake, this is a vertical plane. For cells beneath the lake this is a horizontal plane. Thus, the total volume of evapotranspiration may be higher than might be expected based on the horizontal surface area of the lake.
\par 
\par Negative values represent flow out of the lake.
\par 
\par Unlike \plain\f5\fs24\cf2\strike Precipitation[i]\plain\f5\fs24\cf3 \{linkID=15470\},\plain\f5\fs24  changes in lake area due to wetting and drying of lake cells affect the calculated volume of evapotranspiration out of the lake.
\par 
\par This is on the \plain\f5\fs24\cf2\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f4\fs20 
\par }
15490
Scribble15490
Runoff[i]



lakespatialdata:000210
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Runoff[i]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Fixed lake inflow 
\par \tab for stress period i where i = 1, 2, 3, ....
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf1 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15500
Scribble15500
Dry Recharge[i]



lakespatialdata:000220
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Dry Recharge[i]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Recharge rate applied to groundwater beneath dry lake cells
\par \tab for stress period i where i = 1, 2, 3, ....
\par 
\par This is on the \plain\f5\fs24\cf1\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15510
Scribble15510
Output option[i]



lakespatialdata:000230
Writing



FALSE
18
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Output option[i]
\par \plain\f4\fs20 
\par \plain\f5\fs24 Output Options
\par \tab for stress period i where i = 1, 2, 3, ....
\par 
\par Output option, constructed as follows:
\par                 0  = no output
\par                 +1 = print cell-by-cell flows in main output file
\par                 +2 = print lake budget information in main output file
\par                 +4 = write stage to stage/budget output file
\par                 +8 = write flows (& stage) to stage/budget output file
\par 
\par Select the options you want and add their values to determine the proper value of Output Option[i].  For example, to print lake budget in main output file (2) and, write stage record to stage/budget output file (4), Output Option[i] would be 6. (= 2 + 4).
\par 
\par This is on the \plain\f5\fs24\cf2\strike Lake Unit[i]\plain\f5\fs24\cf3 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f4\fs20 
\par }
15520
Scribble15520
Stage[i]



lakespatialdata:000240
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Stage[i]
\par \plain\f3\fs20 
\par \plain\f5\fs24 Stage 
\par \tab for stress period i where i = 1, 2, 3, ....
\par \plain\f5\fs24 
\par If \plain\f5\fs24\cf3\strike ISIMMODE\plain\f5\fs24\cf2 \{linkID=15330\}\plain\f5\fs24  = 0, lake stage for the stress period
\par If \plain\f5\fs24\cf3\strike ISIMMODE\plain\f5\fs24\cf2 \{linkID=15330\}\plain\f5\fs24  = 1, final lake stage for the stress period
\par Ignored for \plain\f5\fs24\cf3\strike ISIMMODE\plain\f5\fs24\cf2 \{linkID=15330\}\plain\f5\fs24  = 2 or 3
\par 
\par This is on the \plain\f5\fs24\cf3\strike Lake Unit[i]\plain\f5\fs24\cf2 \{linkID=15300\}\plain\f5\fs24  Layer.\plain\f3\fs20 
\par }
15530
Scribble15530
Water Budget Discrepencies in the Lake Package




Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Water Budget Discrepencies in the Lake Package
\par \plain\f3\fs20 
\par \plain\f5\fs24 Version 2.2 of the Lake package apparently does not take into account all of the budget terms in the lake package when constructing the overall water budget. Because of this problem, the overall water budget may appear significantly out of balance. To calculate the correct water balance, find the water balance for the lake and combine it with the overall water balance.\plain\f3\fs20 
\par }
15540
Scribble15540
Post Processing with MODFLOW 88




Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Post Processing with MODFLOW 88
\par 
\par \plain\f6\fs24 To display results from a MODFLOW simulation in Argus ONE, you must read data from formatted head or drawdown files. MODFLOW 88, however, only produces unformatted head and drawdown files. To overcome this difficulty, use the conversion untility cnmodflw.exe to create formated files from unformatted files. To run the utility, double-click on it in File Explorer. A DOS window will open and prompt you for the names of the binary input file. This may be a binary head file or a binary drawdown file. These files will have the extensions .bhd and .bdn respectively. It will then prompt you for the name of the formatted output file. You can name the output file whatever you like but the MODFLOW PIE will expect formatted head and drawdown files to have the extension .fhd and .fdn respectively.\plain\f3\fs20 
\par }
15550
Scribble15550
MT3D BAS



mtdnonspatial:000010
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b MT3D BAS
\par \plain\f3\fs20 
\par \plain\f5\fs24\cf1\strike Use MT3D\plain\f5\fs24\cf3 \{linkID=15555\}\plain\f5\fs24\cf1\strike 
\par MT3D Heading, Line1 and MT3D Heading, Line2\plain\f5\fs24\cf3 \{linkID=15560\}
\par \plain\f5\fs24\cf1\strike CINACT\plain\f5\fs24\cf3 \{linkID=15570\}
\par \plain\f5\fs24\cf1\strike LUNIT\plain\f5\fs24\cf3 \{linkID=15580\}
\par \plain\f5\fs24\cf1\strike MUNIT\plain\f5\fs24\cf3 \{linkID=15590\}
\par \plain\f5\fs24\cf1\strike ADV\plain\f5\fs24\cf3 \{linkID=15600\}
\par \plain\f5\fs24\cf1\strike DSP\plain\f5\fs24\cf3 \{linkID=15610\}
\par \plain\f5\fs24\cf1\strike SSM\plain\f5\fs24\cf3 \{linkID=15620\}
\par \plain\f5\fs24\cf1\strike RCT\plain\f5\fs24\cf3 \{linkID=15630\}
\par \plain\f5\fs24\cf1\strike Time-varying constant concentrations\plain\f5\fs24\cf3 \{linkID=15635\}
\par \plain\f5\fs24\cf1\strike MT3D Basic Package Geologic Unit Properties\plain\f5\fs24\cf3 \{linkID=15640\}
\par \plain\f3\fs20\cf1\strike 
\par }
15555
Scribble15555
Use MT3D



mtdnonspatial:000020
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f2\fs32\cf1\b Use MT3D
\par \plain\f2\fs20 
\par \plain\f3\fs24 Check this check box to turn on MT3D.\plain\f4\fs20\cf2\strike 
\par }
15560
Scribble15560
MT3D Heading, Line1 and MT3D Heading, Line2



mtdnonspatial:000030
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b MT3D Heading, Line1 and MT3D Heading, Line2
\par \plain\f4\fs20 
\par \plain\f3\fs24 Set the text printed as the title lines in the MT3D output
\par }
15570
Scribble15570
CINACT



mtdnonspatial:000040
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b CINACT
\par \plain\f3\fs20 
\par \plain\f4\fs24 In printouts, all inactive concentration cells will be assigned a concentration equal to CINACT so that they can be distinguished from active concentration cell.\plain\f3\fs20 
\par }
15580
Scribble15580
LUNIT



mtdnonspatial:000050
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b LUNIT
\par \plain\f2\fs20 
\par \plain\f4\fs24 Length unit of model. You must use consistent units throughout the model.\plain\f3\fs20 
\par }
15590
Scribble15590
MUNIT



mtdnonspatial:000060
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b MUNIT
\par \plain\f3\fs20 
\par \plain\f4\fs24 Mass unit of model. You must use consistent units throughout the model.\plain\f3\fs20 
\par }
15600
Scribble15600
ADV



mtdnonspatial:000070
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b ADV
\par \plain\f2\fs20 
\par \plain\f3\fs24 To use the advection package, check this box.
\par }
15610
Scribble15610
DSP



mtdnonspatial:000080
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b DSP
\par \plain\f2\fs20 
\par \plain\f3\fs24 To use the dispersion package, check this box.
\par }
15620
Scribble15620
SSM



mtdnonspatial:000090
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b SSM
\par \plain\f4\fs20 
\par \plain\f3\fs24 To use the source- and sink-mixing package, check this box. It will be automatically checked in many circumstances but you must check it manually if you use prescribed heads with non-zero concentrations or time-varying constant concentrations in the model.
\par }
15630
Scribble15630
RCT



mtdnonspatial:000100
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b RCT
\par \plain\f2\fs20 
\par \plain\f3\fs24 To use the chemical reaction package, check this box.
\par }
15635
Scribble15635
Time-varying constant concentrations



mtdnonspatial:000110
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Time-varying constant concentrations
\par \plain\f2\fs20 
\par \plain\f3\fs24 MT3D has an option in the Source and Sink mixing package to use specified concentrations that vary with time. Select this check box to turn on this option.
\par }
15640
Scribble15640
MT3D Basic Geologic Unit Properties



mtdnonspatial:000120
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b MT3D Basic Geologic Unit Properties
\par \plain\f3\fs20 
\par \plain\f4\fs24\b DTO (Transport Step Size)\plain\f4\fs24 : Set the transport step size for any stress period using this option
\par 
\par \plain\f4\fs24\b DTO (Use calculated transport step size)\plain\f4\fs24 : To choose whether to let MT3D automatically calculate the transport step size, click in this box to toggle between Yes and No. "Yes" means MT3D will automatically calculate the transport step size.
\par 
\par \plain\f4\fs24\b Max. no. of transport steps (MXSTRN)\plain\f4\fs24 : Set the maximum number of transport steps per time step.
\par }
15650
Scribble15650
MT3D Adv1



mtdnonspatial:000130
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf3\b MT3D Adv1
\par \plain\f4\fs20 
\par \plain\f3\fs24\cf2\strike MIXELM\plain\f3\fs24\cf1 \{linkID=15660\}\plain\f3\fs24 
\par \plain\f3\fs24\cf2\strike ITRACK\plain\f3\fs24\cf1 \{linkID=15670\}
\par \plain\f3\fs24\cf2\strike PERCEL\plain\f3\fs24\cf1 \{linkID=15680\}
\par \plain\f3\fs24\cf2\strike MXPART\plain\f3\fs24\cf1 \{linkID=15690\}
\par \plain\f3\fs24\cf2\strike WD\plain\f3\fs24\cf1 \{linkID=15700\}
\par \plain\f3\fs24\cf2\strike DCEPS\plain\f3\fs24\cf1 \{linkID=15710\}
\par \plain\f3\fs24\cf2\strike NPL\plain\f3\fs24\cf1 \{linkID=15720\}
\par \plain\f3\fs24\cf2\strike NPH\plain\f3\fs24\cf1 \{linkID=15730\}\plain\f3\fs24 
\par }
15660
Scribble15660
MIXELM



mtdnonspatial:000140
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MIXELM
\par \plain\f2\fs20 
\par \plain\f3\fs24 Set the advection solution scheme. The MOC method works better than the MMOC method for cases with sharp concentration fronts but is slower and requires more memory. The hybrid method uses the MOC method near sharp concentration fronts and uses MMOC elsewhere. The choice of advection solution scheme determines which other data are required for the model. If data will not be used in a model, the edit boxes for those data will be disabled.
\par }
15670
Scribble15670
ITRACK



mtdnonspatial:000150
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b ITRACK
\par \plain\f2\fs20 
\par \plain\f3\fs24 The first order Euler particle tracking algorithm is faster but less accurate than the Runge-Kutta method especially in areas of converging or diverging flow such as sources and sinks.
\par }
15680
Scribble15680
PERCEL



mtdnonspatial:000160
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b PERCEL
\par \plain\f2\fs20 
\par \plain\f3\fs24 PERCEL is the Courant number or number of cells a particle can move in one transport step. Usually values of 0.5 to 1 are appropriate.
\par }
15690
Scribble15690
MXPART



mtdnonspatial:000170
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MXPART
\par \plain\f2\fs20 
\par \plain\f3\fs24 MXPART is the maximum number of particles used in the MOC or hybrid MOC/MMOC scheme
\par }
15700
Scribble15700
WD



mtdnonspatial:000180
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b WD
\par \plain\f2\fs20 
\par \plain\f3\fs24 WD is a concentration weighting factor between 0 and 1. 0.5 is usually a good choice. You can adjust it to achieve a better mass balance. Advection becomes more dominant as WD increases.
\par }
15710
Scribble15710
DCEPS



mtdnonspatial:000190
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b DCEPS
\par \plain\f2\fs20 
\par \plain\f3\fs24 DCEPS is the size of the concentration gradient that is considered negligible. DCEPS affects how many particles are used in each cell. (See NPL and NPH).
\par }
15720
Scribble15720
NPL



mtdnonspatial:000200
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NPL
\par \plain\f2\fs20 
\par \plain\f3\fs24 In cells in which the concentration gradient is less than DCEPS, NPL is the number of particles that will be placed in that cell.
\par }
15730
Scribble15730
NPH



mtdnonspatial:000210
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NPH
\par \plain\f2\fs20 
\par \plain\f3\fs24 In cells in which the concentration gradient is greater than DCEPS, NPH is the number of particles that will be placed in that cell.
\par }
15740
Scribble15740
MT3D Adv2



mtdnonspatial:000220
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b MT3D Adv2
\par \plain\f3\fs20 
\par \plain\f4\fs24\cf2\strike NPLANE\plain\f4\fs24\cf3 \{linkID=15750\}\plain\f4\fs24 
\par \plain\f4\fs24\cf2\strike Number of vertical planes of particles in each cell\plain\f4\fs24\cf3 \{linkID=15760\}\plain\f4\fs24 
\par \plain\f4\fs24\cf2\strike NPMIN\plain\f4\fs24\cf3 \{linkID=15770\}\plain\f4\fs24 
\par \plain\f4\fs24\cf2\strike NPMAX\plain\f4\fs24\cf3 \{linkID=15780\}\plain\f4\fs24 
\par \plain\f4\fs24\cf2\strike SRMULT\plain\f4\fs24\cf3 \{linkID=15790\}
\par \plain\f4\fs24\cf2\strike INTERP\plain\f4\fs24\cf3 \{linkID=15800\}
\par \plain\f4\fs24\cf2\strike NLSINK\plain\f4\fs24\cf3 \{linkID=15810\}
\par \plain\f4\fs24\cf2\strike Number of vertical planes of particles\plain\f4\fs24\cf3 \{linkID=15820\}
\par \plain\f4\fs24\cf2\strike NPSINK\plain\f4\fs24\cf3 \{linkID=15830\}
\par \plain\f4\fs24\cf2\strike DCHMOC\plain\f4\fs24\cf3 \{linkID=15840\}\plain\f4\fs24 
\par }
15750
Scribble15750
NPLANE



mtdnonspatial:000230
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NPLANE
\par \plain\f2\fs20 
\par \plain\f3\fs24 The initial placement of moving particles can be either random or fixed. 
\par }
15760
Scribble15760
Number of vertical planes of particles in each cell



mtdnonspatial:000240
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Number of vertical planes of particles in each cell
\par \plain\f2\fs20 
\par \plain\f3\fs24 If the fixed option is selected for NPLANE. You must specify the number of vertical planes of particles in each cell.
\par }
15770
Scribble15770
NPMIN



mtdnonspatial:000250
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NPMIN
\par \plain\f2\fs20 
\par \plain\f3\fs24 NPMIN is the minimum number of particles per cell. It can be 0 in relatively uniform flow fields. It generally doesn\rquote t need to be larger than 4. If the number of particles in a cell falls below NPMIN more particles will be added.
\par }
15780
Scribble15780
NPMAX



mtdnonspatial:000260
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NPMAX
\par \plain\f2\fs20 
\par \plain\f3\fs24 NPMAX is the maximum number of particles per cell. A value twice that of NPH is often appropriate. If the number of particles in a cell rises above NPMAX, particles will be removed.
\par }
15790
Scribble15790
SRMULT



mtdnonspatial:000270
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b SRMULT
\par \plain\f2\fs20 
\par \plain\f3\fs24 SRMULT is the multiplier for the particle number at source cells. It should be greater than or equal to 1
\par }
15800
Scribble15800
INTERP



mtdnonspatial:000280
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b INTERP
\par \plain\f2\fs20 
\par \plain\f3\fs24 There is only one choice of interpolation method in MT3D 1.5 so you never set INTERP. This field is included to facilitate incorporating future changes in MT3D
\par }
15810
Scribble15810
NLSINK



mtdnonspatial:000290
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NLSINK
\par \plain\f2\fs20 
\par \plain\f3\fs24 The initial placement of moving particles in sink cells can be either random or fixed.
\par }
15820
Scribble15820
Number of vertical planes of particles



mtdnonspatial:000300
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Number of vertical planes of particles
\par \plain\f2\fs20 
\par \plain\f3\fs24 If the fixed option is selected for NLSINK. You must specify the number of vertical planes of particles in each sink cell.
\par }
15830
Scribble15830
NPSINK



mtdnonspatial:000310
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NPSINK
\par \plain\f2\fs20 
\par \plain\f3\fs24 NPSINK is the number of particles used to approximate sink cells in the MMOC scheme.
\par }
15840
Scribble15840
DCHMOC



mtdnonspatial:000320
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DCHMOC
\par \plain\f3\fs20 
\par \plain\f4\fs24 DCHMOC is the critical relative concentration gradient for controlling the use of either the MOC or MMOC scheme in the hybrid MOC/MMOC scheme.
\par }
15845
Scribble15845
MT3D Disp



mtdnonspatial:000330
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fcharset1 GreekMathSymbols;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b MT3D Disp
\par \plain\f4\fs20 
\par \plain\f6\fs24\b MT3D Dispersion Package Geologic Unit Properties
\par \plain\f6\fs24 
\par \plain\f6\fs24\b Horz. Dispersivity Ratio (TRPT)\plain\f6\fs24 : TRPT is the ration of horizontal transverse dispersivity (\plain\f5\fs24 a\plain\f6\fs24  TH) to the longitudinal dispersivity (\plain\f5\fs24 a\plain\f6\fs24  L)
\par 
\par \plain\f6\fs24\b Vert. Dispersivity Ratio (TRPV)\plain\f6\fs24 : TRPV is the ratio of vertical transverse dispersivity (\plain\f5\fs24 a\plain\f6\fs24  TV) to the longitudinal dispersivity (\plain\f5\fs24 a\plain\f6\fs24  L). For an isotropic aquifer, TRPV can be set equal to TRPT.
\par 
\par \plain\f6\fs24\b Molecular Diffusion Coef. (DMCOEF)\plain\f6\fs24 : DMCOEF is the effective molecular diffusion coefficient (L^2/T). If molecular diffusion is considered unimportant, set DMCOEF = 0.
\par }
15850
Scribble15850
MT3D Chem



mtdnonspatial:000340
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b MT3D Chem
\par \plain\f4\fs20 
\par \plain\f3\fs24\cf1\strike ISOTHM\plain\f3\fs24\cf3 \{linkID=15860\}\plain\f3\fs24\cf1 
\par \plain\f3\fs24\cf1\strike IREACT\plain\f3\fs24\cf3 \{linkID=15870\}\plain\f3\fs24\cf1\strike 
\par MT3D Chemical Reaction Package Geologic Unit Properties\plain\f3\fs24\cf3 \{linkID=15880\}\plain\f3\fs24 
\par 
\par }
15860
Scribble15860
ISOTHM



mtdnonspatial:000350
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b ISOTHM
\par \plain\f2\fs20 
\par \plain\f3\fs24 ISOTHM is used to indicate which (if any) sorption type will be simulated. The choice of ISOTHM affects the meaning of SP1 and SP2.
\par }
15870
Scribble15870
IREACT



mtdnonspatial:000360
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IREACT
\par \plain\f2\fs20 
\par \plain\f3\fs24 IREACT is used to indicated whether a first order chemical reaction is to be simulated (radioactive decay or biodegradation). RC1 and RC2 are only used if a first order reaction is simulated.
\par }
15880
Scribble15880
MT3D Chemical Reaction Package Geologic Unit Properties



mtdnonspatial:000370
Writing



FALSE
28
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fcharset1 GreekMathSymbols;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b MT3D Chemical ReactionPackage Geologic Unit Properties
\par \plain\f4\fs20 
\par \plain\f3\fs24\b Bulk Density (RHOB)\plain\f3\fs24 : RHOB is the bulk density of the porous medium: M/L^3
\par 
\par \plain\f3\fs24\b 1'st Sorption Const. (SP1)\plain\f3\fs24 :
\par \pard\li280\plain\f3\fs24 SP1 is the first sorption constant.
\par 
\par For linear sorption, SP1 is the distribution coefficient (Kd) (L^3/M)
\par 
\par For Freundlich sorption, SP1 is the Freundlich sorption equilibrium constant (Kf) with units that depend on the Freundlich exponent \plain\f5\fs24 a\plain\f3\fs24  .
\par 
\par For Langmuir sorption, SP1 is the Langmuir sorption equilibrium constant (Kl) ) (L^3/M).
\par 
\par \pard\plain\f3\fs24\b 2'nd Sorption Const. (SP2)\plain\f3\fs24 :
\par \pard\li240\plain\f3\fs24 SP2 is the second sorption constant.
\par 
\par For linear sorption, SP2 is not used
\par 
\par For Freundlich sorption, SP2 is the Freundlich exponent a .
\par 
\par For Langmuir sorption, SP2 is total concentration of sorption sites available(S) (M/M).
\par 
\par \pard\plain\f3\fs24\b Rate Const. Disolved (RC1)\plain\f3\fs24 : RC1 is the first-order rate constant for the dissolved phase (1/T).
\par 
\par \plain\f3\fs24\b Rate Const. Sorbed (RC2)\plain\f3\fs24 : RC2 is the first-order rate constant for the sorbed phase (1/T). For radioactive decay RC1 should generally equal RC2. For some types of biodegradation RC1 may differ from RC2.\plain\f3\fs24 
\par }
15910
Scribble15910
MT3D Out



mtdnonspatial:000380
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b MT3D Out
\par \plain\f3\fs20 
\par \plain\f4\fs24\cf3\strike Print out Contents of Flow-Transport Link File for Checking\plain\f4\fs24\cf2 \{linkID=15920\}\plain\f4\fs24 
\par \plain\f4\fs24\cf3\strike Printout format\plain\f4\fs24\cf2 \{linkID=15930\}\plain\f4\fs24 
\par \plain\f4\fs24\cf3\strike Numeric format\plain\f4\fs24\cf2 \{linkID=15940\}\plain\f4\fs24 
\par \plain\f4\fs24\cf3\strike IFMTCH, IFMTRF, IFMTDP, IFMTNP\plain\f4\fs24\cf2 \{linkID=15950\}\plain\f4\fs24 
\par \plain\f4\fs24\cf3\strike CHKMAS\plain\f4\fs24\cf2 \{linkID=15960\}\plain\f4\fs24 
\par \plain\f4\fs24\cf3\strike SAVUCN\plain\f4\fs24\cf2 \{linkID=15970\}
\par \plain\f4\fs24\cf3\strike Results printed (NPRS), N\plain\f4\fs24\cf2 \{linkID=15980\}
\par \plain\f4\fs24\cf3\strike Printout times (TIMPRS)\plain\f4\fs24\cf2 \{linkID=15990\}
\par \plain\f4\fs24 
\par }
15920
Scribble15920
Print out Contents of Flow-Transport Link File for Checking



mtdnonspatial:000390
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Print out Contents of Flow-Transport Link File for Checking
\par \plain\f2\fs20 
\par \plain\f3\fs24 The "Flow-Transport Link File" is a binary file created by MODFLOW when the LKMT package is used. It lists the flows for each time step between each cell and its neighbors and boundary condition flows. If this check box is checked, the contents of the Flow-Transport Link File will be printed in the MT3D output.
\par }
15930
Scribble15930
Printout format



mtdnonspatial:000400
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Printout format
\par \plain\f2\fs20 
\par \plain\f3\fs24 MT3D allows you to print the results in "wrap" or "strip" form. In wrap form, all the data for each row in the model will be printed before moving on to the next row. Thus you might have several lines of text in a table that are all from the same model row. In strip form, the model data are printed in a series of tables each of which will have 10-15 columns of data. This means that data for a single model row will not be split over several rows in the same table making it somewhat easier for humans to read. If the model output will be read by another computer program, wrap, rather than strip form might be better. Note that although you can change the format of the output, you can not change the format in which the input data are printed on the output file.
\par }
15940
Scribble15940
Numeric format



mtdnonspatial:000410
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Numeric format
\par \plain\f2\fs20 
\par \plain\f3\fs24 The output from MT3D can be printed in a variety of Fortran formats. Fortran formats can be read as followed:
\par 
\par The first number represents how many numbers will be printed on each line of the output file. Thus 11G10.3 will have 11 digits per line. The letter For G is used to distinguish between the fixed and general formats. In fixed format, there will be a fixed number of digits to the right of the decimal point whereas the general format will put as many significant digits as possible within the available space. The number following F or G is the width of the field in which the number will be printed. 11G10.3 will be printed in 10 spaces. The number after the decimal point is the number of digits that will be printed to the right of the decimal point. Thus 15F7.1 will have one digit to the right of the decimal point.
\par }
15950
Scribble15950
IFMTCH, IFMTRF, IFMTDP, IFMTNP



mtdnonspatial:000420
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IFMTCH, IFMTRF, IFMTDP, IFMTNP
\par \plain\f2\fs20 
\par \plain\f3\fs24 IFMTCH, IFMTRF, IFMTDP, and IFMTNP are used to specify whether or not the concentrations, retardation factors, dispersion coefficients and number of particles per cell should be printed in the MT3D output file. If you choose to print one or more of these items, the corresponding "Numeric format" drop-down list will be enabled so that you can specify the format in which it will be printed. All of these items will be printed in strip or wrap form depending on your choice of "Printout format". 
\par }
15960
Scribble15960
CHKMAS



mtdnonspatial:000430
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b CHKMAS
\par \plain\f2\fs20 
\par \plain\f3\fs24 If the CHKMAS checkbox is checked, a one-line summary of mass balance information for each transport step will be saved in MT3D.MAS for checking purposes. The mass balance can help you evaluate the accuracy of you simulation results. However, MT3D is not entirely based on mass conservation so large mass balance errors in the initial time steps may occur without this indicating a problem with the model. See section 4.7 of the MT3D documentation. Although, no Zheng gives no specific values for acceptable mass balance errors, in his last example, errors range from -12.7% for the first time step to a minimum of -2.8% on the last time step.
\par }
15970
Scribble15970
SAVUCN



mtdnonspatial:000440
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Galleria;}{\f4\fswiss\fcharset1 GreekMathSymbols;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b SAVUCN
\par \plain\f2\fs20 
\par \plain\f5\fs24 If SAVUCN is checked, the concentration in each cell for specific time steps (as specified with NPRS and TIMPRS) will be saved in a file named MT3D.UCN and the grid configuration will be saved in MT3D.CNF. Both these files are required for debugging. (The CNF extension may not be visible in Windows Explorer\plain\f4\fs24 \'d4\plain\f5\fs24  because that extension is now used for other purposes by Windows 95. However, the file may still be used.)
\par }
15980
Scribble15980
Results printed (NPRS), N



mtdnonspatial:000450
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Results printed (NPRS), N
\par \plain\f3\fs20 
\par \plain\f4\fs24 NPRS is used to indicate at what model times model results should be printed to file. If you choose to print model results, you can designate the times by the transport step or by elapsed time using the NPRS drop down list. If you select "Each N'th transport timestep within each flow timestep", the results will be printed every time the transport step is an even multiple of N. If you select "Specified times", the times entered will TIMPRS will determine at which transport steps results will be printed.
\par }
15990
Scribble15990
Printout times (TIMPRS)



mtdnonspatial:000460
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Printout times (TIMPRS)
\par \plain\f4\fs20 
\par \plain\f5\fs24 
\par If in "Results printed (NPRS)" you select "Specified times", TIMPRS will be a list of the model times at which output will be generated. Modify the list via Printout time. 
\par 
\par The times listed in TIMPRS need not be in order. They will be sorted automatically when you click the OK button.
\par 
\par You can edit a value in TIMPRS directly in the table. To insert a new value before the selected value, click the \plain\f5\fs24\b Insert \plain\f5\fs24 button on the dialog box. To delete the selected value, click the \plain\f5\fs24\b Delete\plain\f5\fs24  button on the dialog box. You can add additional times by clicking on the \plain\f5\fs24\b Add\plain\f5\fs24  button.
\par }
15995
Scribble15995
MT3D



mtdspatial:000005
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b MT3D
\par \plain\f3\fs20 
\par \plain\f5\fs24 MT3D (\plain\f5\fs24\cf3\strike Zheng, 1990\plain\f5\fs24\cf1 \{linkID=19000\}\plain\f5\fs24 ) is a solute transport program. It differs from MOC3D in a number of ways.  The most significant difference is probably that MT3D can use \plain\f5\fs24\cf3\strike different methods\plain\f5\fs24\cf1 \{linkID=15660\}\plain\f5\fs24  than MOC3D for solving the transport equations.
\par 
\par See also: 
\par \plain\f5\fs24\cf2\strike http://hydro.geo.ua.edu/mt3d/mt3dhome.htm\plain\f5\fs24\cf1 \{link=*! ExecFile("http://hydro.geo.ua.edu/mt3d/mt3dhome.htm")\}
\par \plain\f5\fs24\cf2\strike http://hydro.geo.ua.edu/mt3d/mt3d150d.htm\plain\f5\fs24\cf1 \{link=*! ExecFile("http://hydro.geo.ua.edu/mt3d/mt3d150d.htm")\}\plain\f5\fs24 
\par }
16000
Scribble16000
MT3D Domain Outline



mtdspatial:000010
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b MT3D Domain Outline
\par \plain\f4\fs24 
\par \plain\f4\fs24 
\par The MT3D model is not required to include the entire region modeled by MODFLOW model. To specify what region should be included in the MT3D model, outline the area with to be modeled on the MT3D Domain Outline layer with a closed contour. Assign a value other than 0 to the contour or else create an expression that links the MT3D Domain Outline to MODFLOW Domain Outline. You can also set the value of ICBUND Unit[i] or Active MT3D Cell Unit[i] of individual cells on the MODFLOW FD Grid layer. (However, any cells that are inactive MODFLOW cells will also be treated as inactive MT3D cells by MT3D.)
\par 
\par As with the MODFLOW Domain Outline, all areas outside the MT3D Domain Outline, will not be part of the model unless individual cells are set on the MODFLOW FD Grid layer. Unlike, the MT3D Domain Outline, the MT3D Domain Outline has no effect on the grid cell size. Use "Added MT3D Inactive Area Unit[i]" to inactivate an area within the MT3D Domain Outline for one particular geologic unit.
\par 
\par You should not change this layer to a data layer.
\par \plain\f3\fs20 
\par }
16010
Scribble16010
Added MT3D Inactive Area Unit[i]



mtdspatial:000020
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Added MT3D Inactive Area Unit[i]
\par \plain\f3\fs20 
\par \plain\f4\fs24 To inactivate part of a layer in an MT3D model, outline the area on the "Added MT3D Inactive Area Unit[i]" layer with a closed contour and assign the contour a value of 0. By default, the "Added MT3D Inactive Area Unit[i]" layer is linked to the "Added Inactive Area Unit[i]" layer. Thus if no contours are placed on the layer and the MT3D Domain Outline is the same as the MODFLOW Domain Outline, the layer will have the same active area as the MODFLOW model.
\par 
\par You should not change this layer to a data layer.\plain\f3\fs20 
\par }
16020
Scribble16020
MT3D Porosity Unit[i]



mtdspatial:000030
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b MT3D Porosity Unit[i]
\par \plain\f3\fs20 
\par \plain\f4\fs24 The MT3D Porosity Unit[i] is used to assign the porosity of an individual layer. You can use closed contours to assign values to zone or you can change the interpolation method from the Exact Contour method to the Interpolation method and assign point contours. In the latter case, the value assigned to any particular cell will be determined by interpolation among the points assigned to the MT3D Porosity Unit[i] layer. You may convert these layer to data layers.\plain\f3\fs20 
\par }
16030
Scribble16030
MT3D Observations Unit[i]



mtdspatial:000040
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b MT3D Observations Unit[i]
\par \plain\f3\fs20 
\par \plain\f4\fs24 MT3D Observations Unit[i] is used to specify the location of observation cells. Any cell that intersects a point or open contour or whose center is inside a closed contour will be treated as an observation cell. The concentration will be saved in the file MT3D.OBS at every transport step.
\par 
\par You should not change this layer to a data layer.\plain\f3\fs20 
\par }
16040
Scribble16040
MT3D Point Constant Concentration Unit[i]



mtdspatial:000050
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MT3D Point Constant Concentration Unit[i]
\par \plain\f2\fs20 
\par \plain\f3\fs20 
\par \plain\f4\fs24 MT3D Point Constant Concentration Unit[i] is used to specify constant concentration point sources. If any Point Contours are on a MT3D Point Constant Concentration Unit[i] layer, the cell will be designated as a constant concentration cell with a concentration equal to the mass divided by the cell volume. If the unit has a vertical discretization greater than 1, the mass will be divided among all the cells in the geologic unit that contain the point contour. If a cell contains more than one point object, the one that is closest to the center of the cell will be used in setting the concentration of the cell.
\par 
\par You should not change this layer to a data layer.\plain\f3\fs20 
\par }
16050
Scribble16050
MT3D Area Constant Concentration Unit[i]



mtdspatial:000060
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman Special G1;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MT3D Area Constant Concentration Unit[i]
\par \plain\f4\fs20 
\par \plain\f5\fs24 MT3D Area Constant Concentration Unit[i] is used to specify constant concentration sources that extend over several cells. Cells whose centers are enclosed by a closed contour on an MT3D Area Constant Concentration Unit[i] layer will be designated as a constant concentration cells with a concentration equal to the concentration specified on the MT3D Area Constant Concentration Unit[i] layer. Values specified on an MT3D Area Constant Concentration Unit[i] layer will be overridden by values specified on an MT3D Point Constant Concentration Unit[i] layer.
\par 
\par If desired, you may change this layer to a data layer. However, if you do, the entire layer will be made up of constant concentration cells.\plain\f3\fs20 
\par }
16060
Scribble16060
MT3D Point Time Varying Constant Concentration Unit[i]



mtdspatial:000070
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MT3D Point Time Varying Constant Concentration Unit[i]
\par \plain\f2\fs20 
\par \plain\f4\fs24 In the earlier version of MT3D, (version 1.1), constant concentration cells retained the same concentration throughout the duration of the model. Version 1.5 of MT3D introduces a new type of boundary condition called "time-varying constant-concentration". A better name might be "time-varying specified-concentration" because the concentration does not remain constant. Instead, the user is allowed to change the specified concentration in each stress period. A cell that has been designated as a "time-varying constant-concentration" cell can not revert back to a normal, active-cell. If no concentration is specified for a particular stress period, the time-varying constant-concentration cell will be treated as a constant concentration cell with a concentration equal to that for the previous stress period.
\par 
\par The MT3D Point Time Varying Constant Concentration Unit[i] is used to specify time varying constant concentration along a vertical line in a geologic unit. The concentration applied to a cell will be calculated from the mass specified in the Mass parameter, the top and bottom of the geologic unit and the values of the Top Elevation and Bottom Elevation parameters of an MT3D Point Time Varying Constant Concentration contour. The mass will be allocated according to the following formula
\par 
\par Mass fraction = (length of overlap between current layer thickness and vertical extent of the source) / (vertical extent of the source).
\par 
\par You should not change this layer to a data layer.\plain\f3\fs20 
\par }
16070
Scribble16070
MT3D Area Time Varying Constant Concentration Unit[i]



mtdspatial:000080
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f2\fs32\cf2\b MT3D Area Time Varying Constant Concentration Unit[i]
\par \plain\f2\fs20 
\par \plain\f3\fs20 
\par \plain\f4\fs24 See \plain\f4\fs24\cf3\strike MT3D Point Time Varying Constant Concentration Unit[i]\plain\f4\fs24\cf1 \{linkID=16060\}\plain\f4\fs24  for a discussion of time varying constant concentration cells.
\par 
\par Any cells whose centers are enclosed in a closed contour on an MT3D Area Time Varying Constant Concentration Unit[i] layer will be treated as time varying constant concentration cells with a concentration equal to the concentration specified on the . MT3D Area Time Varying Constant Concentration Unit[i] layer. Values assigned on an MT3D Area Time Varying Constant Concentration Unit[i] layer are overridden by those assigned on an MT3D Point Time Varying Constant Concentration Unit[i] layer.
\par 
\par If desired, you may change this layer to a data layer.\plain\f3\fs20 
\par }
16080
Scribble16080
MT3D Point Initial Concentration Unit[i]



mtdspatial:000090
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MT3D Point Initial Concentration Unit[i]
\par \plain\f2\fs20 
\par \plain\f4\fs24 MT3D Point Initial Concentration Unit[i] is used to specify point sources that do not maintain a constant concentration. If any Point Contours are on a MT3D Point Initial Concentration Unit[i] layer, the initial concentration of the cell will be set equal to the mass divided by the cell volume. If the unit has a vertical discretization greater than 1, the mass will be divided among all the cells in the geologic unit that contain the point contour. If a cell contains more than one point object, the one that is closest to the center of the cell will be used in setting the concentration of the cell. Values specified on an MT3D Point Initial Concentration Unit[i] layer will be overridden by values specified on an MT3D Point Constant Concentration Unit[i] layer or MT3D Area Constant Concentration Unit[i] layer.
\par 
\par You should not change this layer to a data layer.\plain\f3\fs20 
\par }
16090
Scribble16090
MT3D Area Initial Concentration Unit[i]



mtdspatial:000100
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MT3D Area Initial Concentration Unit[i]
\par \plain\f2\fs20 
\par \plain\f4\fs24 MT3D Area Initial Concentration Unit[i] is used to specify initial concentrations that are not specified elsewhere. Cells whose centers are enclosed by a closed contour on an MT3D Area Initial Concentration Unit[i] layer will be assigned an initial concentration equal to the concentration specified on the MT3D Area Initial Concentration Unit[i] layer. Values specified on an MT3D Area Initial Concentration Unit[i] layer will be overridden by values specified on an MT3D Point Constant Concentration Unit[i] layer, MT3D Area Constant Concentration Unit[i] layer, or MT3D Point Initial Concentration Unit[i] layer.
\par 
\par By default the Exact contour method is used to assign values on MT3D Area Initial Concentration Unit[i] layers. However, you can interpolate among point sources instead by changing to the interpolation method and using point contours or by changing an MT3D Area Initial Concentration Unit[i] layer from an information layer to a data layer and importing data points.\plain\f3\fs20 
\par }
16100
Scribble16100
MT3D Postproccesing




Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MT3D Postproccesing
\par \plain\f2\fs20 
\par \plain\f4\fs24 To view the results of an MT3D simulation, select "MT3D Post Proc\'85" from the PIE menu. This will start the MT3D Import Utility. Argus ONE will pass required information to import utility so you do not need to enter the information manually. You can select the sort of file from which you wish to import data and whether a logarithmic transformation will be applied to the data. By default, data will be imported from an MT3D concentration file. However, you can also import data from a MODFLOW binary head file or binary drawdown file. However, you must first run MT3D before importing data from the MODFLOW binary output files because the import utility uses the grid configuration file created by MT3D.
\par 
\par Once you have selected the type of data and whether or not a logarithmic transformation will be applied. Click the Import Data button. Then select the data source (a concentration file: MT3D.UCN; a binary head file: Rootname.BHD; or binary drawdown file: Rootname.BDN). Next select the grid configuration file (MT3D.CNF). You must next select the type of data to import to Argus ONE. You can import data along a single row, column or layer or from the water table. Then select the time or times for which you wish to import data. If they do not already exist, Argus ONE will create two new layers named MT3D Data and MT3D Post Processing Charts. If "MT3D Post Processing Charts" already exists, a warning message will appear telling you that it already exists and giving you the choice of adding the chart to the existing charts or replacing the existing chart. The data that are imported will overwrite the existing data unless you change the name of the MT3D Data layer before importing the new data. Finally, you can choose whether to create a contour map, color map, 3D chart or cross section.
\par 
\par If a concentration is zero or negative and a logarithmic transformation has been applied, the concentrations will be assigned a value equal to one tenth the minimum absolute value of the concentration for that data set before applying the logarithmic transformation. The logarithmic transformations are calculated using base 10 logs rather than natural logs. Although a logarithmic transformation can be applied to head and drawdown data as well, this is not recommended because it is unlikely to make the data easier to understand.
\par 
\par You can run the MT3D Import Utility without calling it from Argus ONE. If you do, you can use it to create Surfer Grid or Dat files.
\par \plain\f3\fs20 
\par }
16110
Scribble16110
Seepage Package



seepagespatialdata:000010
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f6\fs32\cf1\b Seepage Package
\par \plain\f6\fs20 
\par \plain\f5\fs24 The Seepage Package (\plain\f5\fs24\cf3\strike Batelaan, 1999; Batellan and De Smedt, 1998\plain\f5\fs24\cf2 \{linkID=19000\}\plain\f5\fs24 ) is used for simulating seepage by designating cells that convert between active cells and constant head cells depending on the head in the cell. 
\par 
\par The package calculates the flux into and out of the cell for each time step. If the flux into the cell is greater than the flux out of the cell, the head in the cell is calculated. If the head would be greater than a reference elevation, the cell is treated as a constant head cell with a head equal to the reference elevation. If the flux out of the cell is greater than the flux into the cell or if the head in the cell would be less than the reference elevation, the cell is treated as an active cell. 
\par 
\par The Seepage package is adapted from the Drain Package. You could do essentially what the seepage package does using the drain package by setting the conductance in the drain cell to a high value. However, if you set the conductance to too high a value in the drain package, you run into problems with rounding errors in your model. Also, if the conductance isn't high enough, the head in the drain cell can be significantly higher than the reference elevation. You can use the seepage package to avoid those problems if you want a constant head whenever the head would rise above a reference elevation.
\par 
\par See also:
\par \plain\f4\fs24\cf1\strike http://homepages.vub.ac.be/~batelaan/seepmes.html\plain\f4\fs24\cf2 \{link=*! ExecFile("http://homepages.vub.ac.be/~batelaan/seepmes.html")\}\plain\f6\fs20 
\par }
16120
Scribble16120
Line Seepage Unit[i]



seepagespatialdata:000020
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Line Seepage Unit[i]
\par \plain\f4\fs20 
\par \plain\f5\fs24 The Line Seepage Unit[i] layers are used to define seepage boundaries with open contours.  Only open contours should be used on Line Seepage Unit[i] layers.  These layers can have up to two parameters.
\par 
\par \plain\f5\fs24\cf1\strike Elevation\plain\f5\fs24\cf3 \{linkID=16140\}\plain\f5\fs24 
\par \plain\f5\fs24\cf1\strike On or Off Stress[i]\plain\f5\fs24\cf3 \{linkID=16150\}\plain\f5\fs24 
\par \plain\f4\fs20 
\par }
16130
Scribble16130
Area Seepage Unit[i]



seepagespatialdata:000030
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f5\fs32\cf1\b Area Seepage Unit[i]
\par \plain\f5\fs20 
\par \plain\f4\fs24 The Area Seepage Unit[i] layers are used to define seepage boundaries with closed contours or by setting the default value of the conductance parameter.  Only closed contours should be used on Area Seepage Unit[i] layers.  These layers can have up to two parameters.
\par 
\par \plain\f4\fs24\cf3\strike Elevation\plain\f4\fs24\cf2 \{linkID=16140\}\plain\f4\fs24 
\par \plain\f4\fs24\cf3\strike On or Off Stress[i]\plain\f4\fs24\cf2 \{linkID=16150\}\plain\f4\fs24 
\par \plain\f5\fs20 
\par 
\par }
16140
Scribble16140
Elevation



seepagespatialdata:000040
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b Elevation
\par \plain\f5\fs20 
\par \plain\f4\fs24 Layers: \plain\f4\fs24\cf2\strike Line Seepage Unit[i]\plain\f4\fs24\cf1 \{linkID=16120\}\plain\f4\fs24 , \plain\f4\fs24\cf2\strike Area Seepage Unit[i]\plain\f4\fs24\cf1 \{linkID=16130\}\plain\f4\fs24 
\par Default Expression: 0 (\plain\f4\fs24 Line Seepage Unit[i]) or $N/A (Area Seepage Unit[i])\plain\f4\fs24 
\par MODFLOW Package: Seepage
\par MODFLOW parameters:  Elevation (Data Set 3a)
\par \plain\f4\fs24 
\par \plain\f4\fs24\b Elevation\plain\f4\fs24  is the \plain\f4\fs24\cf2\strike reference elevation\plain\f4\fs24\cf1 \{linkID=16110\}\plain\f4\fs24 .\plain\f4\fs20 
\par \plain\f4\fs24 
\par If a geologic has a \plain\f4\fs24\cf2\strike vertical discretization\plain\f4\fs24\cf1 \{link=Scribble70@MODFLOW.hlp\}\plain\f4\fs24  greater than 1, \plain\f4\fs24\b Elevation\plain\f4\fs24  is used to help calculate which MODFLOW layer should contain the seepage cell.  The elevation of the seepage boundary is compared with the \plain\f4\fs24\cf2\strike top\plain\f4\fs24\cf1 \{link=Scribble2070@MODFLOW.hlp\}\plain\f4\fs24  and \plain\f4\fs24\cf2\strike bottom\plain\f4\fs24\cf1 \{link=Scribble2080@MODFLOW.hlp\}\plain\f4\fs24  elevations of the unit in each cell containing the seepage boundary to determine the proper layer.  \plain\f4\fs20 
\par 
\par \plain\f4\fs24 If an expression is used to set \plain\f4\fs24\b Elevation \plain\f4\fs24 and  a contour is used to define the location of the boundary, that expression is only evaluated at the first node in the contour.\plain\f4\fs20 
\par 
\par \plain\f4\fs24 See also : 
\par \plain\f4\fs24\cf2\strike On or Off Stress[i]\plain\f4\fs24\cf1 \{linkID=16150\}\plain\f4\fs20 
\par \plain\f4\fs24\cf2\strike Q. How are expressions evaluated with open contours used to define boundary conditions?\plain\f4\fs24\cf1 \{link=Scribble7440@MODFLOW.hlp\}
\par \plain\f4\fs24\cf2\strike Use Alternate Export Templates\plain\f4\fs24\cf1 \{linkID=15150\}\plain\f4\fs24 
\par \plain\f5\fs20 
\par 
\par }
16150
Scribble16150
On or Off Stress[i]



seepagespatialdata:000050
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b On or Off Stress[i]
\par \plain\f5\fs20 
\par \plain\f4\fs24 Layer: \plain\f4\fs24\cf2\strike Line Seepage Unit[i]\plain\f4\fs24\cf1 \{linkID=16120\}\plain\f4\fs24 , \plain\f4\fs24\cf2\strike Area Seepage Unit[i]\plain\f4\fs24\cf1 \{linkID=16130\}\plain\f4\fs24 
\par Default Expression: 1
\par MODFLOW Package: Seepage
\par MODFLOW parameters:  \plain\f4\fs24 Elevation\plain\f4\fs24  (Data Set 3a)
\par \plain\f4\fs24 
\par The On or Off Stress[i] parameters is used to determine whether the seepage boundary is active in Stress Period[i].  However, if \plain\f4\fs24\cf2\strike steady\plain\f4\fs24\cf1 \{link=Scribble200@MODFLOW.hlp\}\plain\f4\fs24  stress has been chosen for the seepage package on the Stresses tab of the Edit Project Info dialog box, only On or Off Stress1 will be used for the entire duration of the model.  The other On or Off Stress[i] parameters will be ignored.\plain\f4\fs20 
\par \plain\f4\fs24 
\par If On or Off Stress[i] is set to 1, the seepage boundary will be "On" and the MODFLOW Elevation value will be set to the value of the Argus ONE \plain\f4\fs24\cf2\strike Elevation\plain\f4\fs24\cf1 \{linkID=16140\}\plain\f4\fs24  parameter.  If On or Off Stress[i] is 0, the drain will be "Off" and the MODFLOW Elevation value will be set to 1.e49\plain\f4\fs20 
\par 
\par \plain\f4\fs24 See Also:
\par \plain\f4\fs24\cf2\strike Elevation\plain\f4\fs24\cf1 \{linkID=16140\}\plain\f4\fs24\cf2\strike 
\par Use Alternate Export Templates\plain\f4\fs24\cf1 \{linkID=15150\}\plain\f5\fs20 
\par }
19000
Scribble19000
Customized PIE References




Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b Customized PIE References
\par \plain\f4\fs20 
\par \plain\f3\fs24 Anderson, M.P. and Cheng, X. 1993. Long- and short-term transience in a groundwter/lake system in Wisconsin, USA. Journal of Hydrology, 145:1-18.
\par 
\par Batellan, O., 1999. MODFLOW SEEPAGE (SPG) Package Version 2.0.
\par Vrije Universiteit Brussel. 80 p.
\par 
\par Batellan, O., and De Smedt, F., 1998. An adapted DRAIN package for SEEPAGE problems. MODFLOW '98 Proceedings, Volume II, p. Colorado School of Mines, Golden Colorado, 555-562
\par 
\par Cheng, X. and Anderson, M.P., 1993. Numerical simulation of ground-water interaction with lakes allowing for  fluctuating lake levels. Ground Water v. 31:6 pp. 929-933.
\par 
\par Cheng, X., and Anderson, M.P., 1994. Simulating the influence of lake position on groundwater fluxes. Water Resources Reseach 30(7): 2041-2049.
\par 
\par Council, G.W. 1998. A Lake Pakage for MODFLOW. MODFLOW '98 Proceedings, Volume II, p. Colorado School of Mines, Golden Colorado, 675-682
\par 
\par Zheng, C., 1990. MT3D, A Modular Three-Dimensional Transport Model, S.S. Papadopulos and Associates, Bethesda, Md.
\par 
\par See also:
\par \plain\f3\fs24\cf1\strike References\plain\f3\fs24\cf3 \{link=Scribble7100@MODFLOW.hlp\}\plain\f3\fs24 
\par }
19010
Scribble19010
About the Customized PIE




Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\froman\fprq2 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b About the Customized PIE
\par \plain\f3\fs20 
\par \plain\f4\fs24 This customized version of the MODFLOW PIE was developed to illustrate how users could add provide extra features to the MODFLOW PIE while at the same time retaining compatibility with future changes made to the MODFLOW PIE by the USGS.  This customized PIE supports two additional non-standard MODFLOW packages (\plain\f4\fs24\cf3\strike Lake\plain\f4\fs24\cf2 \{linkID=15290\}\plain\f4\fs24  and \plain\f4\fs24\cf3\strike Seepage\plain\f4\fs24\cf2 \{linkID=16110\}\plain\f4\fs24 ), an additional MODFLOW-related program (\plain\f4\fs24\cf3\strike MT3D\plain\f4\fs24\cf2 \{linkID=15995\}\plain\f4\fs24 ), and MODFLOW-88.  These items were \plain\f5\fs24 chosen \plain\f4\fs24 for this demonstration because they are freely available on the \plain\f5\fs24 Internet \plain\f4\fs24 and because they supply useful functionality.  However, that does not mean that they are necessarily free of bugs or other problems or that they are in the public domain.  The authors of these programs or their employers may retain copyright \plain\f5\fs24 privileges \plain\f4\fs24 even if they distribute their programs freely.
\par 
\par 
\par }
0
0
0
128
:INCLUDE MODFLOW.cnt
1 Help for Customized Version
2 About the Customized PIE
3 About the Customized PIE=Scribble19010
2 Edit Project Info
3 Stresses 3 tab
4 LAK CheckBox=Scribble15060
4 Steady Stress : Lake=Scribble15070
4 Number of sub-time-steps for simulating lakes in transient mode=Scribble15080
4 Maximum number of equations used to define stage discharge relationship=Scribble15100
4 Maximum number of inflow or outflow stream segments for any lake=Scribble15090
4 Method for calculating conductance of the lakebed on bottom of lake=Scribble15110
4 Method for calculating conductance of the lakebed on sides of lake=Scribble15120
4 Print Lake stage and budget in separate file CheckBox=Scribble15130
4 SPG checkbox=Scribble15140
4 Use Alternate Export Templates=Scribble15150
3 MT3D
4 MT3D BAS
5 MT3D BAS=Scribble15550
5 Use MT3D=Scribble15555
5 MT3D Heading, Line1 and MT3D Heading, Line2=Scribble15560
5 CINACT=Scribble15570
5 LUNIT=Scribble15580
5 MUNIT=Scribble15590
5 ADV=Scribble15600
5 DSP=Scribble15610
5 SSM=Scribble15620
5 RCT=Scribble15630
5 Time-varying constant concentrations=Scribble15635
5 MT3D Basic Geologic Unit Properties=Scribble15640
4 MT3D Adv1
5 MT3D Adv1=Scribble15650
5 MIXELM=Scribble15660
5 ITRACK=Scribble15670
5 PERCEL=Scribble15680
5 MXPART=Scribble15690
5 WD=Scribble15700
5 DCEPS=Scribble15710
5 NPL=Scribble15720
5 NPH=Scribble15730
4 MT3D Adv2
5 MT3D Adv2=Scribble15740
5 NPLANE=Scribble15750
5 Number of vertical planes of particles in each cell=Scribble15760
5 NPMIN=Scribble15770
5 NPMAX=Scribble15780
5 SRMULT=Scribble15790
5 INTERP=Scribble15800
5 NLSINK=Scribble15810
5 Number of vertical planes of particles=Scribble15820
5 NPSINK=Scribble15830
5 DCHMOC=Scribble15840
4 MT3D Chem
5 MT3D Chem=Scribble15850
5 ISOTHM=Scribble15860
5 IREACT=Scribble15870
5 MT3D Chemical Reaction Package Geologic Unit Properties=Scribble15880
4 MT3D Disp
5 MT3D Disp=Scribble15845
4 MT3D Out
5 MT3D Out=Scribble15910
5 Print out Contents of Flow-Transport Link File for Checking=Scribble15920
5 Printout format=Scribble15930
5 Numeric format=Scribble15940
5 IFMTCH, IFMTRF, IFMTDP, IFMTNP=Scribble15950
5 CHKMAS=Scribble15960
5 SAVUCN=Scribble15970
5 Results printed (NPRS), N=Scribble15980
5 Printout times (TIMPRS)=Scribble15990
2 Spatial Data
3 Lake Package
4 HSI GeoTrans Lake Package=Scribble15290
4 Lake Unit[i]=Scribble15300
4 Lake parameters
5 Lake Name=Scribble15310
5 Lake Number=Scribble15320
5 Simulation mode=Scribble15330
5 Starting Stage=Scribble15340
5 Max Iterations=Scribble15350
5 Stage Convergence Criterion=Scribble15360
5 Maximum Lake Stage=Scribble15370
5 Lakebed hydraulic conductivity=Scribble15380
5 Lakebed top elev=Scribble15390
5 Lakebed bottom elev=Scribble15400
4 Lake Stream parameters
5 Input Stream[i]=Scribble15410
5 Output Stream[i]=Scribble15420
5 Eq Cutoff[i][j]=Scribble15430
5 Eq Const[i][j]=Scribble15440
5 Eq Elev[i][j]=Scribble15450
5 Eq exponent[i][j]=Scribble15460
4 Lake Temporal parameters
5 Precipitation[i]=Scribble15470
5 Evapotranspiration[i]=Scribble15480
5 Runoff[i]=Scribble15490
5 Dry Recharge[i]=Scribble15500
5 Output option[i]=Scribble15510
5 Stage[i]=Scribble15520
3 Seepage Package
4 Seepage Package=Scribble16110
4 Line Seepage Unit[i]
5 Line Seepage Unit[i]=Scribble16120
5 parameters
6 Elevation=Scribble16140
6 On or Off Stress[i]=Scribble16150
4 Area Seepage Unit[i]
5 Area Seepage Unit[i]=Scribble16130
5 Area Seepage Unit[i]=Scribble16130
5 Elevation=Scribble16140
5 On or Off Stress[i]=Scribble16150
3 MT3D Layers
4 MT3D Domain Outline=Scribble16000
4 Added MT3D Inactive Area Unit[i]=Scribble16010
4 MT3D Porosity Unit[i]=Scribble16020
4 MT3D Observations Unit[i]=Scribble16030
4 MT3D Point Constant Concentration Unit[i]=Scribble16040
4 MT3D Area Constant Concentration Unit[i]=Scribble16050
4 MT3D Point Time Varying Constant Concentration Unit[i]=Scribble16060
4 MT3D Area Time Varying Constant Concentration Unit[i]=Scribble16070
4 MT3D Point Initial Concentration Unit[i]=Scribble16080
4 MT3D Area Initial Concentration Unit[i]=Scribble16090
2 Water Budget Problems
3 Water Budget Discrepencies in the Lake Package=Scribble15530
2 PostProcessing
3 Post Processing with MODFLOW 88=Scribble15540
3 MT3D Postproccesing=Scribble16100
2 References
3 References=Scribble19000
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
