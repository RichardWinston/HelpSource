HelpScribble project file.
8
Yrbaneq S. Xbavxbj-050Q35
0
1
Sutra3D



TRUE


1
BrowseButtons()
0
FALSE
37
1000
Scribble1000
Introduction
Introduction; K1; K2


sutradata:000010
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Introduction
\par \plain\f3\fs20 
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\tx9360\plain\f4\fs24 SUTRA reads UNITS K1 & K2 in "free format".  Input data appearing on the same line should be space- or tab-separated.  Any data that are not optional must be given values in the input file (blanks are not sufficient).  All input variables of "character" type should be enclosed in single quotation marks unless specified otherwise.
\par 
\par \pard\plain\f4\fs24 Comment lines may be placed within UNITS K1 & K2, subject to the following restrictions:
\par \pard\li1800\fi-1080\tx420\tx1080{\*\pn\pnlvlblt\pnf1\pnindent1080{\pntxtb\'b7}}\plain\f4\fs24 {\pntext\f1\'b7\tab}Comment lines must have "#" in the first column.
\par {\pntext\f1\'b7\tab}Comments lines can be placed before or after any dataset.
\par {\pntext\f1\'b7\tab}Comments lines may \plain\f4\fs24\ul not\plain\f4\fs24  be placed \plain\f4\fs24\ul within\plain\f4\fs24  a dataset (such as in the middle of a list of specified pressures).  For this purpose, datasets with letter designations (such as 2A and 2B) count as distinct datasets \endash  comment lines may be placed between them.
\par {\pntext\f1\'b7\tab}Comments lines may not be placed within any of the "restart" information that follows DATASET 3 in a UNIT K2 file being used for a "warm" restart.
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\tx9360\plain\f4\fs24 
\par Once SUTRA has read all the parameters it needs from a given line, it ignores the rest of the line.  Thus, one can append a comment (or any text) to the end of \plain\f4\fs24\ul any\plain\f4\fs24  line of input data, provided all the required parameters have first been entered on that line.  Be sure to leave at least one space or tab between the last required parameter and the beginning of the comment.
\par \pard\plain\f3\fs20 
\par }
1010
Scribble1010
List of Input Data for UNIT K1 (Main Input File)
K1


sutradata:000020
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b List of Input Data for UNIT K1 (Main Input File)
\par \plain\f3\fs20 
\par \pard\tx720\tx2610\plain\f4\fs24 \tab Model Series:   \tab SUTRA
\par \pard\tx720\tx2610\tx2880\tx4860\tx7820\tx8370\plain\f4\fs24 \tab Model Version:  \tab 2D3D.1
\par \pard\plain\f3\fs20 
\par }
1020
Scribble1020
DATASET 1:  Output Heading  (two lines)
K1; TITLE1; TITLE2


sutradata:000030
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 1:  Output Heading  (two lines)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx2880\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24  \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\tx2880\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx2880\tx3600\plain\f4\fs24 \tab TITLE1   \tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab First line of heading for the input data set.
\par 
\par \tab TITLE2   \tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab Second line of heading for the input data set.
\par 
\par \tab \tab \tab \tab The first 80 characters of each line are printed as a heading on SUTRA output.  In this dataset, the character inputs need not be enclosed in quotation marks.
\par \pard\plain\f3\fs20 
\par }
1030
Scribble1030
DATASET 2A:  Input Data Heading - Type of Transport (one line)
K1; SIMULA


sutradata:000040
Writing



FALSE
24
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 2A:  Input Data Heading - Type of Transport (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx2880\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\tx2880\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab SIMULA\tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab Two words.  The first word must be "SUTRA".  The second word indicates the type of transport, and must be either "ENERGY" or "SOLUTE".  Any additional words are ignored by SUTRA. 
\par 
\par \pard\li3600\tx720\tx3600\plain\f4\fs24 The rest of the line is not used by SUTRA and may either be left blank or may be used to note an additional label for this UNIT K1 data list.
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24\ul 
\par \pard\li3600\fi-2880\tx720\tx2160\tx3600\plain\f4\fs24\ul Examples:
\par 
\par \pard\li3600\fi-2880\tx720\tx3600\plain\f4\fs24 For energy transport simulation, one may write the following:
\par 'SUTRA ENERGY TRANSPORT'
\par 
\par For solute transport simulation, one may write the following:
\par 'SUTRA SOLUTE TRANSPORT'
\par 
\par \pard\li720\tx720\tx3600\plain\f4\fs24 In these examples, the word "TRANSPORT" is ignored by SUTRA but is included to make the input more readable.
\par \pard\plain\f4\fs24 
\par \plain\f3\fs20 
\par }
1040
Scribble1040
DATASET 2B:  Input Data Heading - Mesh Type (one line)
K1; MSHSTR; NN1; NN2; NN3


sutradata:000050
Writing



FALSE
30
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 2B:  Input Data Heading - Mesh Type (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx2880\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24  \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\tx2880\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx2880\plain\f4\fs24 \tab MSHSTR \tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab Two words.  The first word indicates the dimensionality of the mesh, and must be either "2D" or "3D".  The second word indicates the regularity of the mesh, and must be either "REGULAR" or "IRREGULAR".  Any additional words are ignored by SUTRA.
\par 
\par \tab NN1\tab Integer\tab \tab For a REGULAR mesh, the number of nodes in the first numbering direction.  \plain\f4\fs24\ul May be omitted if the mesh is IRREGULAR.
\par \plain\f4\fs24 
\par \tab NN2\tab Integer\tab \tab For a REGULAR mesh, the number of nodes in the second numbering direction.  \plain\f4\fs24\ul May be omitted if the mesh is IRREGULAR.
\par \plain\f4\fs24 
\par \tab NN3\tab Integer\tab \tab For a REGULAR, 3-D mesh, the number of nodes in the third numbering direction.  \plain\f4\fs24\ul May be omitted if the mesh is IRREGULAR and/or 2-D.\plain\f4\fs24 
\par 
\par \pard\li3600\tx720\tx2160\tx2880\tx3600\plain\f4\fs24 The rest of the line is not used by SUTRA and may either be left blank or may be used to note an additional label for this UNIT K1 data list.
\par \pard\plain\f4\fs24 
\par \pard\li720\tx720\tx2160\tx2880\plain\f4\fs24\ul Examples:
\par 
\par \plain\f4\fs24 For a 3-D, regular (logically-rectangular), 10x20x30-node mesh, one may write the following:
\par '3D REGULAR MESH'  10  20  30
\par 
\par For a 2-D, irregular mesh, one may write the following:
\par '2D IRREGULAR MESH'
\par 
\par In these examples, the word "MESH" is ignored by SUTRA but is included to make the input more readable.
\par \pard\plain\f4\fs24 
\par \plain\f3\fs20 
\par }
1050
Scribble1050
 DATASET 3:  Simulation Control Numbers (one line)
K1; NN; NE; NBI; NPBC; NUBC; NSOP; NSOU; NOBS


sutradata:000060
Writing



FALSE
25
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b  DATASET 3:  Simulation Control Numbers (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24  \tab \plain\f4\fs24\ul Type\plain\f4\fs24  \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab NN\tab Integer\tab Exact number of nodes in finite element mesh.
\par 
\par \tab NE\tab Integer\tab Exact number of elements in finite element mesh.
\par 
\par \tab NBI\tab Integer\tab Set greater than or equal to the full bandwidth of the global banded matrix. The full bandwidth is equal to one plus twice maximum difference in node numbers in the element containing the largest node number difference in the mesh. When the direct (banded Gaussian elimination) solver is used, NBI is critical to computational efficiency and should be minimized by careful numbering of the nodes (see \plain\f4\fs24\ul Figure 7.1\plain\f4\fs24 ). When an indirect solver is used, NBI determines the size of an internal SUTRA array; setting NBI larger than necessary wastes computer memory. Setting NBI too small causes SUTRA to automatically print out the correct value and stop.
\par 
\par \tab NPBC\tab Integer\tab Exact number of nodes at which pressure is a specified constant value or function of time.
\par 
\par \tab NUBC\tab Integer\tab Exact number of nodes at which temperature or concentration is a specified constant value or function of time.
\par 
\par \tab NSOP\tab Integer\tab Exact number of nodes at which a fluid source/sink is a specified constant value or function of time.
\par 
\par \tab NSOU\tab Integer\tab Exact number of nodes at which an energy or solute mass source/sink is a specified constant value or function of time.
\par 
\par \tab NOBS\tab Integer\tab Exact number of nodes at which observations will be made. Set to zero for no observations.
\par \pard\plain\f3\fs20 
\par }
1060
Scribble1060
DATASET 4:  Simulation Mode Options (one line)
K1; CUNSAT; CSSFLO; CSSTRA; CREAD; ISTORE


sutradata:000070
Writing



FALSE
28
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 4:  Simulation Mode Options (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab CUNSAT\tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab One word. Set to "UNSATURATED" for simulation of unsaturated/saturated ground-water flow. Set to "SATURATED" for simulation of \plain\f4\fs24\ul only\plain\f4\fs24  saturated flow. When UNSATURATED flow is allowed, the unsaturated flow functions \plain\f4\fs24\ul must be programmed\plain\f4\fs24  by the user in subroutine UNSAT.
\par 
\par \tab CSSFLO\tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab One word. Set to "TRANSIENT" for simulation of transient ground-water flow. Set to "STEADY" for simulation of steady-state flow. If fluid density is to change with time, then TRANSIENT flow \plain\f4\fs24\ul must\plain\f4\fs24  be selected.
\par 
\par \tab CSSTRA\tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab One word. Set to "TRANSIENT" for simulation of transient solute or energy transport. Set to "STEADY" for simulation of steady-state transport. Note that steady-state transport requires a steady-state flow field. So, if CSSTRA = 'STEADY', then, also set CSSFLO = 'STEADY'.
\par 
\par \tab CREAD\tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab One word. Set to "COLD" to read initial condition data (UNIT K2) for a "cold start" (the very first time step of a simulation or series of restarted simulations). Set to "WARM" to read initial condition data (UNIT K2) for a "warm restart" of a simulation using data that were previously stored by SUTRA on UNIT K4.
\par 
\par \tab ISTORE\tab Integer\tab To store results each ISTORE time steps on UNIT K4 for later use as initial conditions on a restart, set to +1 or greater value. To cancel storage, set to 0. This option is recommended as a backup for storage of results of intermediate time steps during long simulations. Should the execution halt unexpectedly, it may be restarted with initial conditions consisting of results of the last successfully completed time step stored on UNIT K4. When ISTORE > +1, results are always stored on UNIT K4 after the last time step of a simulation regardless of whether the step is an even multiple of ISTORE.
\par \pard\plain\f4\fs24 
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 Any extra words included in the character variables in this dataset are ignored by SUTRA.
\par 
\par \pard\li720\tx720\tx2160\tx3600\plain\f4\fs24\ul Example:
\par \plain\f4\fs24 
\par To simulate saturated, steady-state ground-water flow with transient solute or energy transport from a cold start, storing intermediate results every 10 time steps, one may write the following:
\par 
\par 'SATURATED FLOW'   'STEADY FLOW'   'TRANSIENT TRANSPORT'  'COLD START'   10
\par 
\par \pard\plain\f4\fs24 In this example, the words "FLOW", "TRANSPORT", and "START" are ignored by SUTRA but are included to make the input more readable.\plain\f3\fs20 
\par }
1070
Scribble1070
DATASET 5:  Numerical Control Parameters (one line)
K1; UP; GNUP; GNUU


sutradata:000080
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}{\f7\froman\fprq2\fcharset2 Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 5:  Numerical Control Parameters (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24  \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24  
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab UP\tab Real\tab Fractional upstream weight for stabilization of oscillations in results due to highly advective transport or unsaturated flow. UP may be given any value from 0.0 to +1.0. UP=0.0 implies no upstream weighting (Galerkin method). UP=0.5 implies 50% upstream weighting, UP=1.0 implies full (100%) upstream weighting. Recommended value is zero. 
\par 
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 WARNING: Upstream weighting increases the local effective longitudinal dispersivity of the simulation by approximately UP* (\plain\f7\fs24 D\plain\f4\fs24 L)/2 where \plain\f7\fs24 D\plain\f4\fs24 L is the local distance between element sides along the direction of flow. Note that the amount of this increase varies from place to place depending on flow direction and element size. Thus a non-zero value for UP actually changes the value of longitudinal dispersivity used by the simulation, and also broadens otherwise sharp concentration, temperature or saturation fronts.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab GNUP\tab Real\tab Pressure boundary condition, "conductance". A high value causes SUTRA simulated and specified pressure values at specified pressure nodes to be equal in all significant figures. A low value causes simulated pressure to deviate significantly from specified values. The ideal value of GNUP causes simulated and specified pressures to match in the largest six or seven significant figures only, and deviate in the rest. Trial-and-error is required to determine an ideal GNUP value for a given simulation by comparing values specified with those calculated at the appropriate nodes for different values of GNUP. An initial guess of 0.01 is suggested.
\par 
\par \tab GNUU\tab Real\tab Concentration/temperature boundary condition factor. A high value causes SUTRA simulated values and specified values at specified concentration/temperature nodes to be equal in all significant figures. A low value causes simulated values to deviate significantly from specified values. The ideal value of GNUU causes simulated and specified concentrations or temperatures to match in the largest six or seven significant figures only, and deviate in the rest. Trial-and-error is required to determine an ideal GNUU value for a given simulation by comparing specified values with those calculated at the appropriate nodes for different values of GNUU. An initial guess of 0.01 is suggested.
\par \pard\plain\f3\fs20 
\par }
1080
Scribble1080
DATASET 6:  Temporal Control and Solution Cycling Data (one line)
K1; ITMAX; DELT; TMAX; ITCYC; DTMULT; DTMAX; NPCYC; NUCYC


sutradata:000090
Writing



FALSE
38
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\tx2100\plain\f3\fs32\cf1\b DATASET 6:  Temporal Control and Solution Cycling Data (one line)
\par \pard\plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab ITMAX\tab Integer\tab Maximum allowed number of time steps in simulation.
\par 
\par \tab DELT\tab Real\tab Duration of initial time step. [s]
\par 
\par \tab TMAX\tab Real\tab Maximum allowed simulation time. [s]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 SUTRA time units are always in seconds. Other time measures are related as follows:
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\tx4410\plain\f4\fs24 \tab \tab \tab [min]   \tab = 60. [s]
\par \tab \tab \tab [h]       \tab = 60. [min]
\par \tab \tab \tab [d]       \tab = 24. [h]
\par \tab \tab \tab [week] \tab = 7. [d]
\par \tab \tab \tab [mo]   \tab = 30.4375 [d]
\par \tab \tab \tab [yr]    \tab = 365.250 [d]
\par \pard\plain\f4\fs24 
\par \pard\tx720\tx2160\tx3560\plain\f4\fs24 \tab ITCYC\tab Integer\tab \tab Number of time steps in time step change cycle.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab \tab \tab A new time step size is begun at time steps
\par \tab \tab \tab numbered: 1+ n (ITCYC).
\par 
\par \tab DTMULT\tab Real\tab Multiplier for time step change cycle. New time step size is: (DELT) (DTMULT).
\par 
\par \tab DTMAX\tab Real\tab Maximum allowed size of time step when using time step multiplier. Time step size is not allowed to increase above this value.
\par 
\par \tab NPCYC\tab Integer\tab Number of time steps in pressure solution cycle. Pressure is solved on time steps numbered:  n(NPCYC), as well as on initial time step.
\par 
\par \tab NUCYC\tab Integer\tab Number of time step in temperature/concentration solution cycle. Transport equation is solved on time steps numbered:  n(NUCYC) as well as on initial time step.
\par \pard\plain\f4\fs24 
\par \pard\li3600\plain\f4\fs24 Either NPCYC or NUCYC must be set to 1.
\par \pard\plain\f4\fs24 
\par \plain\f3\fs20 
\par }
1090
Scribble1090
DATASET 7A:  Outer (Non-linearity) Iteration Controls (one line)
K1; ITRMAX; RPMAX; RUMAX


sutradata:000100
Writing



FALSE
16
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 7A:  Outer (Non-linearity) Iteration Controls (one line)
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\tab \plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\plain\f4\fs24 \tab ITRMAX\tab Integer\tab \tab Maximum number of iterations allowed per time step to resolve non-linearities. Set to a value of +1 for non-iterative solution. Non-iterative solution may be used for saturated aquifers when density variability of the fluid is small, or for unsaturated aquifers when time steps are chosen to be small.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\plain\f4\fs24 \tab RPMAX\tab Real\tab \tab Absolute iteration convergence criterion for pressure solution. Pressure solution has converged when largest pressure change from the previous iteration's solution of any node in mesh is less then RPMAX. \plain\f4\fs24\ul May be omitted for non-iterative solution.\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \pard\li3600\fi-2880\tx2160\plain\f4\fs24 RUMAX\tab Real\tab \tab Absolute iteration convergence criterion for transport solution. Transport solution has converged when largest concentration on temperature change from the previous iteration's solution of any node in mesh is less than RUMAX. \plain\f4\fs24\ul May be omitted for non-iterative solution.
\par \plain\f4\fs24 
\par \pard\plain\f3\fs20 
\par }
1100
Scribble1100
DATASET 7B:  Matrix Solver Controls for Pressure Solution (one line)
K1; CSOLVP; ITRMXP; ITOLP; TOLP; NSAVEP


sutradata:000110
Writing



FALSE
27
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 7B:  Matrix Solver Controls for Pressure Solution (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab CSOLVP\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab Name of solver to be used to obtain the pressure solution.  Valid values are as follows:
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\tx5220\plain\f4\fs24 \tab \tab \tab 'DIRECT'  =  Banded Gaussian elimination (direct)
\par \pard\li5400\fi-5400\tx720\tx2160\tx3600\tx5220\plain\f4\fs24 \tab \tab \tab 'CG'  =  IC-Preconditioned Conjugate Gradient (CG)
\par \pard\li4140\fi-2700\tx720\tx2160\tx3600\tx5220\plain\f4\fs24      \tab \tab 'GMRES'  =  ILU-Preconditioned Generalized Minimum Residual (GMRES)
\par \pard\li5400\fi-3960\tx720\tx2160\tx3600\tx5220\plain\f4\fs24 \tab \tab 'ORTHOMIN'  =  ILU-Preconditioned ORTHOMIN
\par 
\par \pard\li3600\tx720\tx2160\tx3600\tx5220\plain\f4\fs24\ul If the DIRECT solver is used, it must be used for both the pressure and the transport solution\plain\f4\fs24 ; if either CSOLVP or CSOLVU (\plain\f4\fs24\cf2\strike DATASET 7C\plain\f4\fs24\cf3 \{linkID=1110\}\plain\f4\fs24 ) is set to 'DIRECT', then the other must also be set to 'DIRECT'.
\par 
\par \plain\f4\fs24\ul If an ITERATIVE solver is used, recommended value is 'CG'.\plain\f4\fs24   If upstream weighting is used (see \plain\f4\fs24\cf2\strike DATASET 5\plain\f4\fs24\cf3 \{linkID=1070\}\plain\f4\fs24 ) and 'CG' gives poor performance, try 'GMRES' or 'ORTHOMIN'.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24  
\par \tab ITRMXP\tab Integer\tab Maximum number of solver iterations during pressure solution.  \plain\f4\fs24\ul May be omitted if the DIRECT solver is used.\plain\f4\fs24 
\par 
\par \tab ITOLP\tab Integer\tab Type of convergence criterion to be applied to solver iterations during pressure solution.  \plain\f4\fs24\ul Recommended value is 0.\plain\f4\fs24   (For other options, see SLAP solver documentation.)  \plain\f4\fs24\ul May be omitted if the DIRECT solver is used.\plain\f4\fs24 
\par 
\par \tab TOLP\tab Real\tab Convergence tolerance for solver iterations during pressure solution.  \plain\f4\fs24\ul May be omitted if the DIRECT solver is used.\plain\f4\fs24 
\par 
\par \tab NSAVEP\tab Integer\tab For GMRES and ORTHOMIN solvers, the number of direction vectors to save and orthogonalize against during pressure solution.  \plain\f4\fs24\ul Recommended value is 10.\plain\f4\fs24   (For other options, see SLAP solver documentation.)  For CG solver, set to any integer value.  \plain\f4\fs24\ul May be omitted if the DIRECT solver is used.\plain\f4\fs24 
\par \pard\plain\f3\fs20 
\par }
1110
Scribble1110
DATASET 7C: Matrix Solver Parameters for Transport Solution (one line)
K1; CSOLVU; ITRMXU; ITOLU; TOLU; NSAVEU


sutradata:000120
Writing



FALSE
27
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 7C: Matrix Solver Parameters for Transport Solution (one line)
\par \plain\f3\fs20 
\par \plain\f4\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f6\fs24 \tab \plain\f6\fs24\ul Variable\plain\f6\fs24 \tab \plain\f6\fs24\ul Type\plain\f6\fs24 \tab \plain\f6\fs24\ul Description\plain\f6\fs24 
\par \pard\plain\f6\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f6\fs24 \tab CSOLVU\tab \plain\f6\fs24\cf2\ul Character\plain\f6\fs24\cf3 \{linkID=1360\}\plain\f6\fs24 \tab Name of solver to be used to obtain the transport solution.  Valid values are as follows:
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\tx5220\plain\f6\fs24 \tab \tab \tab 'DIRECT'  =  Banded Gaussian elimination (direct)
\par \pard\li5400\fi-5400\tx720\tx2160\tx3600\tx5220\plain\f6\fs24 \tab \tab \tab 'CG'  =  IC-Preconditioned Conjugate Gradient (CG)
\par \pard\li4140\fi-2700\tx720\tx2160\tx3600\tx5220\plain\f6\fs24      \tab \tab 'GMRES'  =  ILU-Preconditioned Generalized Minimum Residual (GMRES)
\par \pard\li5400\fi-3960\tx720\tx2160\tx3600\tx5220\plain\f6\fs24 \tab \tab 'ORTHOMIN'  =  ILU-Preconditioned ORTHOMIN
\par \tab \tab 
\par \pard\li3600\tx720\tx2160\tx3600\tx5220\plain\f6\fs24\ul If the DIRECT solver is used, it must be used for both the pressure and the transport solution\plain\f6\fs24 ; if either CSOLVU or CSOLVP (\plain\f6\fs24\cf2\strike DATASET 7B\plain\f6\fs24\cf3 \{linkID=1100\}\plain\f6\fs24 ) is set to 'DIRECT', then the other must also be set to 'DIRECT'.
\par 
\par \plain\f6\fs24\ul If an ITERATIVE solver is used, recommended values are 'GMRES' and 'ORTHOMIN'.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f6\fs24  
\par \tab ITRMXU\tab Integer\tab Maximum number of solver iterations during transport solution.  \plain\f6\fs24\ul May be omitted if the DIRECT solver is used.\plain\f6\fs24 
\par 
\par \tab ITOLU\tab Integer\tab Type of convergence criterion to be applied to solver iterations during transport solution.  \plain\f6\fs24\ul Recommended value is 0.\plain\f6\fs24   (For other options, see SLAP solver documentation.)  \plain\f6\fs24\ul May be omitted if the DIRECT solver is used.\plain\f6\fs24 
\par 
\par \tab TOLU\tab Real\tab Convergence tolerance for solver iterations during transport solution.  \plain\f6\fs24\ul May be omitted if the DIRECT solver is used.\plain\f6\fs24 
\par 
\par \tab NSAVEU\tab Integer\tab For GMRES and ORTHOMIN solvers, the number of direction vectors to save and orthogonalize against during transport solution.  \plain\f6\fs24\ul Recommended value is 10.\plain\f6\fs24   (For other options, see SLAP solver documentation.)  For CG solver, set to any integer value.  \plain\f6\fs24\ul May be omitted if the DIRECT solver is used.\plain\f6\fs24 
\par \pard\plain\f3\fs20 
\par }
1120
Scribble1120
DATASET 8A:  Output Controls and Options for UNIT K3 (Main Ouput File) (one line)
K1; NPRINT; CNODAL;  CELMNT; CINCID; CVEL; CBUDG;


sutradata:000130
Writing



FALSE
21
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 8A:  Output Controls and Options for UNIT K3 (Main Ouput File) (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab NPRINT\tab Integer\tab Printed output is produced on time steps numbered: n(NPRINT), as well as on first and last time step.
\par 
\par \tab CNODAL\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab A value of 'N' cancels printout of node coordinates, nodewise element thicknesses, and nodewise porosities. Set to 'Y' for full printout.
\par 
\par \tab CELMNT\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab A value of 'N' cancels printout of elementwise permeabilities \tab and elementwise dispersivities. Set to 'Y' for full printout.
\par 
\par \tab CINCID\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab A value of 'N' cancels printout of node incidences and pinch node incidences in elements. Set to 'Y' for full printout.
\par \tab 
\par \tab CVEL\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab Set to a value of 'Y' to calculate and print fluid velocities at element centroids each time printed output is produced. Note that for non-steady state flow, velocities are based on results and pressures of the previous time step or iteration and not on the newest values. Set to 'N' to cancel option.
\par 
\par \tab CBUDG\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab Set to a value of 'Y' to calculate and print a fluid mass budget and energy or solute mass budget each time printed output is produced. A value of 'N' cancels the option.
\par \pard\plain\f3\fs20 
\par }
1130
Scribble1130
DATASET 8B:  Output Controls and Options for UNIT K5 (Nodewise Results Listed in Columns) (one line)
K1; NCOLPR; K5COL; 


sutradata:000140
Writing



FALSE
29
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 8B:  Output Controls and Options for UNIT K5 (Nodewise Results Listed in Columns) (one line)
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab NCOLPR\tab Integer\tab Printed output of nodewise solution data is produced on time step multiples of NCOLPR, as well as on first and last time step.
\par 
\par \pard\li5040\fi-5040\tx720\tx2160\tx3600\plain\f4\fs24 \tab K5COL\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab List of names of variables to be printed in columns in UNIT \plain\f4\fs24\b K5\plain\f4\fs24 .  The ordering of columns corresponds to the ordering of variable names in the list.  Valid names are as follows:
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 'N'  =  node number (\plain\f4\fs24\ul if used\plain\f4\fs24 , it must appear \plain\f4\fs24\ul first\plain\f4\fs24  in list)
\par 'X'  =  X-coordinate of node
\par 'Y'  =  Y-coordinate of node
\par 'Z'  =  Z-coordinate of node (\plain\f4\fs24\ul 3-D only\plain\f4\fs24 )
\par 'P'  =  pressure (or head)
\par 'U'  =  concentration or temperature
\par 'S'  =  saturation
\par '-'  =  end of list (any names following '-' are ignored)
\par 
\par \plain\f4\fs24\ul The symbol '-' (a single dash) must be used at the end of the list.
\par \plain\f4\fs24 
\par \pard\li3600\fi-2880\tx720\tx2160\tx3600\plain\f4\fs24\ul Example:
\par \plain\f4\fs24 
\par \pard\li720\tx720\tx2160\tx3600\plain\f4\fs24 To output the 3-D node coordinates, pressure, and solute concentration in columns in UNIT K5 every 5 time steps, write the following:
\par \pard\li1800\fi-1080\tx720\tx990\tx1080\tx2160\tx3600\plain\f4\fs24 5\tab 'X'  'Y'  'Z'  'P'  'U'  '-'
\par \pard\li720\tx720\tx2160\tx3600\plain\f4\fs24 
\par \pard\plain\f3\fs20 
\par }
1140
Scribble1140
DATASET 8C:  Output Controls and Options for UNIT K6 (Velocities at Element Centroids Listed in Columns) (one line)
K1; LCOLPR; K6COL


sutradata:000150
Writing



FALSE
28
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 8C:  Output Controls and Options for UNIT K6 (Velocities at Element Centroids Listed in Columns) (one line)
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab LCOLPR\tab Integer\tab Printed output of elementwise solution data is produced on time step multiples of LCOLPR, as well as on first and last time step.
\par 
\par \pard\li5040\fi-5040\tx720\tx2160\tx3600\plain\f4\fs24 \tab K6COL\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab List of names of variables to be printed in columns in UNIT \plain\f4\fs24\b K6\plain\f4\fs24 .  The ordering of columns corresponds to the ordering of variable names in the list.  Valid names are as follows:
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 'E'  =  element number (\plain\f4\fs24\ul if used\plain\f4\fs24 , it must appear \plain\f4\fs24\ul first\plain\f4\fs24  in list)
\par 'X'  =  X-coordinate of element centroid
\par 'Y'  =  Y-coordinate of element centroid
\par 'Z'  =  Z-coordinate of element centroid (\plain\f4\fs24\ul 3-D only\plain\f4\fs24 )
\par 'VX'  =  X-component of fluid velocity
\par 'VY'  =  Y-component of fluid velocity
\par 'VZ'  =  Z-component of fluid velocity
\par '-'  =  end of list (any names following '-' are ignored)
\par 
\par \plain\f4\fs24\ul The symbol '-' (a single dash) must be used at the end of the list.
\par \plain\f4\fs24 
\par \pard\li3600\fi-2880\tx720\tx2160\tx3600\plain\f4\fs24\ul Example:
\par \plain\f4\fs24 
\par \pard\li720\tx720\tx2160\tx3600\plain\f4\fs24 To output the 3-D element centroid coordinates and velocity components in columns in UNIT K6 every 10 time steps, write the following:
\par \pard\li1800\fi-1080\tx720\tx1080\tx2160\tx3600\plain\f4\fs24 10\tab 'X'  'Y'  'Z'  'VX'  'VY'  'VZ'  '-'
\par \pard\plain\f3\fs20 
\par }
1150
Scribble1150
DATASET 8D:  Output Controls and Options for UNIT K7 (Observation Node Results Listed in Columns) (one line)
K1; NOBCYC; INOB;


sutradata:000160
Writing



FALSE
21
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b DATASET 8D:  Output Controls and Options for UNIT K7 (Observation Node Results Listed in Columns) (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\li3600\fi-3600\tx2160\plain\f4\fs24\b\ul O M I T\plain\f4\fs24\b  when there are \plain\f4\fs24\cf1\b\strike no observation nodes\plain\f4\fs24\cf2\b \{linkID=1050\}\plain\f4\fs24\b 
\par \pard\plain\f4\fs24 
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab NOBCYC\tab Integer\tab Printed output of observation node data is produced on time step multiples of NOBCYC, as well as on first and last time step.
\par 
\par \tab INOB\tab Integer\tab List of node numbers of observation nodes. Enter a value of zero as an extra observation node number following the last real observation node to indicate the end of the list.
\par \tab 
\par \pard\li3600\fi-2880\tx720\tx2160\tx3600\plain\f4\fs24\ul Example:
\par \plain\f4\fs24 
\par \pard\li720\tx720\tx2160\tx3600\plain\f4\fs24 To output pressures/heads, concentrations/temperatures, and saturations at nodes 1, 22, 333, and 4444 in columns in UNIT K7 every 100 time steps, write the following:
\par 100  1  22  333  4444  0
\par \pard\plain\f3\fs20 
\par }
1160
Scribble1160
DATASET 9:  Fluid Properties (one line)
K1; COMPFL; CW; SIGMAW; RHOWØ; URHOWØ; DRWDU; VISCØ;


sutradata:000170
Writing



FALSE
26
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman\fprq2 Times New Roman;}{\f7\froman\fprq2\fcharset2 Symbol;}{\f8\fnil\fprq2\fcharset2 Wingdings;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 9:  Fluid Properties (one line)
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f6\fs24 \tab \plain\f6\fs24\ul Variable\plain\f6\fs24 \tab \plain\f6\fs24\ul Type\plain\f6\fs24 \tab \plain\f6\fs24\ul Description\plain\f6\fs24 
\par \pard\plain\f6\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f6\fs24 \tab COMPFL\tab Real\tab Fluid compressibility, \plain\f7\fs24 b=(1/r)(r/r)\plain\f6\fs24 . \plain\f7\fs24 \'bd\plain\f6\fs24 M/(L\plain\f8\fs24 \'9e\plain\f6\fs24 s\plain\f6\fs16\up12 2\plain\f6\fs24 )\plain\f7\fs24 \'bd\plain\f6\fs16\up12 -1\plain\f6\fs24 . Note, specific pressure storativity is: S\plain\f6\fs16\dn4 op\plain\f6\fs24  = (1-\plain\f7\fs24 e\plain\f6\fs24 )\plain\f7\fs24 a\plain\f6\fs24  + \plain\f7\fs24 eb\plain\f6\fs24 
\par 
\par \tab CW\tab Real\tab Fluid specific heat, c\plain\f6\fs16\dn4 w\plain\f6\fs24 . [E/(M\plain\f8\fs24 \'9e\plain\f6\fs24 \'baC)]
\par \tab \tab \tab (May be left blank for solute transport simulation.)
\par 
\par 
\par \tab SIGMAW\tab Real\tab Fluid diffusivity, \plain\f7\fs24 s\plain\f6\fs16\dn4 w\plain\f6\fs24 .
\par \tab \tab \tab For energy transport represents fluid thermal conductivity, \plain\f7\fs24 l\plain\f6\fs16\dn4 w\plain\f6\fs24 .  [E/(L\plain\f8\fs24 \'9e\plain\f6\fs24 \'baC\plain\f8\fs24 \'9e\plain\f6\fs24 s)]. For solute transport represents molecular diffusivity of solute in pure fluid, D\plain\f6\fs16\dn4 m\plain\f6\fs24  [L\plain\f6\fs16\up12 2\plain\f6\fs24 /s].  May be decreased from pure value to account for tortuosity of fluid paths.
\par 
\par \tab RHOW\'d8\tab Real\tab Density of fluid at base concentration or temperature.  [M/L\plain\f6\fs16\dn4 3\plain\f6\fs24 ].
\par 
\par \tab URHOW\'d8\tab Real\tab Base value of solute concentration (as mass fraction) or temperature of fluid at which base fluid density, RHOW\'d8 is specified.  [M\plain\f6\fs16\dn4 s\plain\f6\fs24 /M] or [\'baC].
\par 
\par \tab DRWDU\tab Real\tab Fluid coefficient of density change with concentration (fraction) or temperature: \plain\f7\fs24 r\plain\f6\fs24  = RHOW\'d8 + DRWDU (U-URHOW\'d8).  [M\plain\f6\fs16\up12 2\plain\f6\fs24 /(L\plain\f6\fs16\up12 3\plain\f8\fs24 \'9e\plain\f6\fs24 M\plain\f6\fs16\dn4 s\plain\f6\fs24 )] or [M/(L\plain\f6\fs16\up12 3\plain\f8\fs24 \'9e\plain\f6\fs24 \'baC)]
\par 
\par \tab VISC\'d8\tab Real\tab For solute transport: fluid viscosity, \plain\f7\fs24 m\plain\f6\fs24 , [M/L\plain\f8\fs24 \'9e\plain\f6\fs24 s].  For energy transport, this value is a scale factor.  It multiplies the viscosity which is calculated internally in units of [kg/m\plain\f8\fs24 \'9e\plain\f6\fs24 s]. VISC\'d8 may be used for energy transport to convert units of [kg/m\plain\f8\fs24 \'9e\plain\f6\fs24 s] to desired units of viscosity.
\par \pard\plain\f3\fs20 
\par }
1170
Scribble1170
DATASET 10:  Solid Matrix Properties (one line)
K1; COMPMA; CS; SIGMAS; RHOS


sutradata:000180
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2\fcharset2 Symbol;}{\f7\froman\fcharset1 Times New Roman;}{\f8\fnil\fprq2\fcharset2 Wingdings;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 10:  Solid Matrix Properties (one line)
\par \plain\f3\fs20 
\par \plain\f7\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab COMPMA\tab Real\tab Solid matrix compressibility, \plain\f6\fs24 a\plain\f4\fs24 =(1-\plain\f6\fs24 e\plain\f4\fs24 )\plain\f4\fs16\up12 -1\plain\f4\fs24  \plain\f6\fs24 e\plain\f4\fs24 /p.
\par \tab \tab \tab [M/(L\plain\f8\fs24 \'9e\plain\f4\fs24 s\plain\f4\fs16\up12 2\plain\f4\fs24 )]\plain\f4\fs16\up12 -1\plain\f4\fs24 
\par 
\par \tab CS\tab Real\tab Solid grain specific heat, c\plain\f4\fs16\dn4 s\plain\f4\fs24 . [E/(M\plain\f8\fs24 \'9e\plain\f4\fs24 \'baC)] (May be left blank for solute transport simulation.)
\par 
\par \tab SIGMAS\tab Real\tab Solid grain diffusivity, \plain\f6\fs24 s\plain\f4\fs16\dn4 s\plain\f4\fs24 .  
\par \tab \tab \tab For energy transport represents thermal conductivity of a solid grain. [E/(L\plain\f8\fs24 \'9e\plain\f4\fs24 \'b0C\plain\f8\fs24 \'9e\plain\f4\fs24 s)] (May be 
\par \tab \tab \tab left blank for solute transport simulation.)
\par 
\par \tab RHOS\tab Real\tab Density of a solid grain, \plain\f6\fs24 r\plain\f4\fs16\dn4 s\plain\f4\fs24 .  [M/L\plain\f4\fs16\up12 3\plain\f4\fs24 ]
\par \pard\plain\f4\fs24 
\par 
\par \plain\f3\fs20 
\par }
1180
Scribble1180
DATASET 11:  Adsorption Parameters (one line)
K1; ADSMOD; CHI1; CHI2


sutradata:000190
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\froman\fprq2 Times New Roman;}{\f6\fswiss\fprq2 System;}{\f7\froman\fprq2\fcharset2 Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 11:  Adsorption Parameters (one line)
\par \plain\f3\fs20 
\par \plain\f4\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f5\fs24 \tab \plain\f5\fs24\ul Variable\plain\f5\fs24  \tab \plain\f5\fs24\ul Type\plain\f5\fs24 \tab \plain\f5\fs24\ul Description\plain\f5\fs24 
\par \pard\plain\f5\fs24 \tab 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f5\fs24 \tab ADSMOD\tab \plain\f5\fs24\cf2\ul Character\plain\f5\fs24\cf3 \{linkID=1360\}\plain\f5\fs24 \tab For no sorption or for energy transport simulation, set to 'NONE' and leave rest of line blank.
\par 
\par \tab \tab \tab For linear sorption model, set to 'LINEAR'.
\par 
\par \tab \tab \tab For Freundlich sorption model, set to 'FREUNDLICH'.
\par 
\par \tab \tab \tab For Langmuir sorption model, set to 'LANGMUIR'.
\par 
\par \tab CHI1\tab Real\tab Value of linear, Freundlich or Langmuir distribution coefficient, depending on sorption model chosen in ADSMOD, \plain\f7\fs24 c\plain\f5\fs16\dn4 1\plain\f5\fs24 . \plain\f7\fs24 \'bd\plain\f5\fs24 /M\plain\f5\fs21\dn6 G\plain\f7\fs24 \'bd\plain\f5\fs24 .
\par 
\par \tab CHI2\tab Real\tab Value of Freundlich or Langmuir coefficient, depending on sorption model chosen in ADSMOD. Set to any real value for linear sorption. \plain\f7\fs24 c\plain\f5\fs16\dn4 2\plain\f5\fs24 . \plain\f7\fs24 \'bd\plain\f5\fs24 1\plain\f7\fs24 \'bd\plain\f5\fs24  for Freundlich. \plain\f7\fs24 \'bd\plain\f5\fs24 /M\plain\f5\fs16\dn4 s\plain\f7\fs24 \'bd\plain\f5\fs24  for Langmuir.
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\plain\f5\fs24 
\par \pard\plain\f3\fs20 
\par }
1190
Scribble1190
DATASET 12:  Production of Energy or Solute Mass (one line)
K1; PRODF0; PRODS0; PRODF1; PRODS1


sutradata:000200
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f6\fs32\cf1\b DATASET 12:  Production of Energy or Solute Mass (one line)
\par \plain\f6\fs20 
\par \plain\f3\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24  \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab PRODF\'d8\tab Real\tab Zero-order rate of production in the fluid . [(E/M)/s] for energy production, [(M\plain\f4\fs16\dn4 s\plain\f4\fs24 /M)/s] for solute mass production.
\par \tab 
\par \tab PRODS\'d8\tab Real\tab Zero-order rate of production in the immobile phase, . [(E/M\plain\f4\fs21\dn6 G\plain\f4\fs24 )/s] for energy production, [(M\plain\f4\fs16\dn4 s\plain\f4\fs24 /M\plain\f4\fs16\dn4 G\plain\f4\fs24 )/s] for adsorbate mass production.
\par 
\par \tab PRODF1\tab Real\tab First-order rate of solute mass production in the fluid, . [s\plain\f4\fs16\up12 -1\plain\f4\fs24 ]. Set to any real value for energy transport.
\par 
\par \tab PRODS1\tab Real\tab First-order rate of adsorbate mass production in the immobile phase, .  [s\plain\f4\fs16\up12 -1\plain\f4\fs24 ]. Set to any real value for energy transport.
\par \pard\plain\f6\fs20 
\par }
1200
Scribble1200
DATASET 13: Orientation of Coordinates to Gravity (one line)
K1; GRAVX; GRAVY; GRAVZ


sutradata:000210
Writing



FALSE
16
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fprq2 Times New Roman;}{\f6\froman\fprq2\fcharset2 Symbol;}{\f7\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 13: Orientation of Coordinates to Gravity (one line)
\par \plain\f3\fs20 
\par \plain\f7\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f5\fs24 \tab \plain\f5\fs24\ul Variable\plain\f5\fs24 \tab \plain\f5\fs24\ul Type\plain\f5\fs24 \tab \plain\f5\fs24\ul Description\plain\f5\fs24 
\par \pard\plain\f5\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f5\fs24 \tab GRAVX\tab Real\tab Component of gravity vector in +x direction. [L\plain\f5\fs16\up12 2\plain\f5\fs24 /s] GRAVX = -\plain\f6\fs24 \'bd\'bd\plain\f5\fs24  (ELEVATION/x), where \plain\f6\fs24 \'bd\'bd\plain\f5\fs24  is the total acceleration due to gravity in [L\plain\f5\fs16\up12 2\plain\f5\fs24 /s].
\par 
\par \tab GRAVY\tab Real\tab Component of gravity vector in +y direction. [L\plain\f5\fs16\up12 2\plain\f5\fs24 /s] GRAVY= -\plain\f6\fs24 \'bd\'bd\plain\f5\fs24  (ELEVATION/y), where \plain\f6\fs24 \'bd\'bd\plain\f5\fs24  is the total acceleration due to gravity in [L\plain\f5\fs16\up12 2\plain\f5\fs24 /s].
\par 
\par \tab GRAVZ\tab Real\tab Component of gravity vector in +z direction. [L\plain\f5\fs16\up12 2\plain\f5\fs24 /s] GRAVY= -\plain\f6\fs24 \'bd\'bd\plain\f5\fs24  (ELEVATION/y), where \plain\f6\fs24 \'bd\'bd\plain\f5\fs24  is the total acceleration due to gravity in [L\plain\f5\fs16\up12 2\plain\f5\fs24 /s]. \plain\f5\fs24\ul Set to any real value for 2-D problems.\plain\f5\fs24 
\par \pard\plain\f5\fs24 
\par \plain\f3\fs20 
\par }
1210
Scribble1210
DATASET 14A: Scale Factor for Nodewise Data (one line)
K1; SCALX; SCALY; SCALZ; PORFAC


sutradata:000220
Writing



FALSE
21
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 14A: Scale Factor for Nodewise Data (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab \tab \plain\f4\fs24\cf3\ul Character\plain\f4\fs24\cf2 \{linkID=1360\}\plain\f4\fs24 \tab Line must begin with the word 'NODE'.
\par 
\par \tab SCALX\tab Real\tab The scaled x-coordinates of nodes in \plain\f4\fs24\cf3\strike DATASET 14B\plain\f4\fs24\cf2 \{linkID=1220\}\plain\f4\fs24  are multiplied by SCALX in SUTRA. May be used to change from map to field scales, or from English to SI units. A value of 1.0 gives no scaling.
\par 
\par \tab SCALY\tab Real\tab The scaled y-coordinates of nodes in \plain\f4\fs24\cf3\strike DATASET 14B\plain\f4\fs24\cf2 \{linkID=1220\}\plain\f4\fs24  are multiplied by SCALY in SUTRA. May be used to change from map to field scales, or from English to SI units. A value of 1.0 gives no scaling.
\par 
\par \tab SCALZ\tab Real\tab For \plain\f4\fs24\ul 3-D\plain\f4\fs24  problems, the scaled \plain\f4\fs24\ul z-coordinates\plain\f4\fs24  of nodes in \plain\f4\fs24\cf3\strike DATASET 14B\plain\f4\fs24\cf2 \{linkID=1220\}\plain\f4\fs24  are multiplied by SCALZ in SUTRA. May be used to change from map to field scales, or from English to SI units. A value of 1.0 gives no scaling.
\par 
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 For \plain\f4\fs24\ul 2-D\plain\f4\fs24  problems, the scaled element (mesh) \plain\f4\fs24\ul thicknesses\plain\f4\fs24  at nodes in \plain\f4\fs24\cf3\strike DATASET 14B\plain\f4\fs24\cf2 \{linkID=1220\}\plain\f4\fs24  are multiplied by SCALZ in SUTRA. May be used to easily change entire mesh thickness or to convert English to SI units. A value of 1.0 gives no scaling.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab PORFAC\tab Real\tab The scaled nodewise porosities of \plain\f4\fs24\cf3\strike DATASET 14B\plain\f4\fs24\cf2 \{linkID=1220\}\plain\f4\fs24  are multiplied by PORFAC in SUTRA. May be used to easily assign a constant porosity value to all nodes by setting PORFAC=porosity, and all POR(II)=1.0 in \plain\f4\fs24\cf3\strike DATASET 14B\plain\f4\fs24\cf2 \{linkID=1220\}\plain\f4\fs24 .
\par \pard\plain\f3\fs20 
\par }
1220
Scribble1220
DATASET 14B: Nodewise Data (one line for each of NN nodes)
K1; II; NREG(II); X(II); Y(II); Z(II); POR(II)


sutradata:000230
Writing



FALSE
25
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fprq2\fcharset2 Symbol;}{\f6\froman\fcharset1 Times New Roman;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 14B: Nodewise Data (one line for each of NN nodes)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab II\tab Integer\tab Number of node to which data on this line refers,\~i.
\par 
\par \tab NREG(II)\tab Integer\tab Unsaturated flow property region number to which node II belongs. \plain\f4\fs24\ul Set to any integer value when flow simulation is saturated only.\plain\f4\fs24  The node region number is usually the same as the region number of the elements it appears in. When the node is to be at the boundary of two regions, it may be assigned to either region.
\par 
\par \tab X(II)\tab Real\tab Scaled x-coordinate of node II, x\plain\f4\fs16\dn4 i\plain\f4\fs24 . [L]
\par 
\par \tab Y(II)\tab Real\tab Scaled y-coordinate of node II, y\plain\f4\fs16\dn4 i\plain\f4\fs24 . [L]
\par 
\par \tab Z(II)\tab Real\tab For \plain\f4\fs24\ul 3-D\plain\f4\fs24  problems, scaled \plain\f4\fs24\ul z-coordinate\plain\f4\fs24  of node II, z\plain\f4\fs16\dn4 i\plain\f4\fs24 . [L]
\par 
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 For \plain\f4\fs24\ul 2-D\plain\f4\fs24  problems, scaled \plain\f4\fs24\ul thickness\plain\f4\fs24  of mesh at node II. [L]
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab \tab \tab In order to simulate radial cross-sections, set Z(II) = (2\plain\f5\fs24 p\plain\f4\fs24 )(radius\plain\f4\fs16\dn4 i\plain\f4\fs24 ), where radius\plain\f4\fs16\dn4 i\plain\f4\fs24  is the radial distance from the vertical center axis to node I.  (Formerly this variable was called \plain\f4\fs24\b THICK\plain\f4\fs24 .)
\par 
\par \tab POR(II)\tab Real\tab Scaled porosity value at node II, \plain\f5\fs24 e\plain\f4\fs16\dn4 i\plain\f4\fs24 . [1]
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\plain\f4\fs24 
\par \pard\plain\f3\fs20 
\par }
1230
Scribble1230
DATASET 15A: Scale Factors for Elementwise Data (one line)
K1; PMAXFA; PMIDFA; PMINFA; ANG1FA; ANG2FA; ANG3FA;  ALMAXF; ALMIDF; ALMINF; AT1MXF; AT1MDF; AT1MNF; AT2MXF; AT2MDF; AT2MNF


sutradata:000240
Writing



FALSE
42
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 15A: Scale Factors for Elementwise Data (one line)
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab \tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab Line must begin with the word 'ELEMENT'.
\par 
\par \tab PMAXFA\tab Real\tab The scaled maximum permeability values, PMAX, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by PMAXFA in SUTRA. May be used to convert units or to aid in assignment of maximum permeability values in elements.
\par 
\par \tab PMIDFA\tab Real\tab The scaled "middle" permeability values, PMID, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by PMIDFA in SUTRA. May be used to convert units or to aid in assignment of maximum permeability values in elements. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab PMINFA\tab Real\tab The scaled minimum permeability values, PMIN, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by PMINFA in SUTRA. May be used to convert units or to aid assignment of minimum permeability values in elements.
\par 
\par \tab ANG1FA\tab Real\tab The scaled angles ANGLE1 in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by ANG1FA in SUTRA. For 2-D problems, may be used to easily assign a uniform direction of anisotropy by setting ANG1FA=angle, and all ANGLE1(L)=1.0 in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24 .
\par 
\par \tab ANG2FA\tab Real\tab The scaled angles ANGLE2 in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by ANG2FA in SUTRA. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab ANG3FA\tab Real\tab The scaled angles ANGLE3 in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by ANG3FA in SUTRA. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab ALMAXF\tab Real\tab The scaled longitudinal dispersivities in the maximum permeability direction, ALMAX, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by ALMAXF in SUTRA.  May be used to convert units or to aid in assignment of dispersivities.
\par 
\par \tab ALMIDF\tab Real\tab The scaled longitudinal dispersivities in the "middle" permeability direction, ALMAX, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by ALMAXF in SUTRA.  May be used to convert units or to aid in assignment of dispersivities. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab ALMINF\tab Real\tab The scaled longitudinal dispersivities in the minimum permeability direction, ALMIN, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by ALMINF in SUTRA.  May be used to convert units or to aid in assignment of dispersivities.
\par 
\par \tab AT1MXF\tab Real\tab The scaled first transverse dispersivities in the maximum permeability direction, AT1MAX, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by AT1MXF in SUTRA.  May be used to convert units or to aid in assignment of dispersivity.
\par 
\par \tab AT1MDF\tab Real\tab The scaled first transverse dispersivities in the "middle" permeability direction, AT1MID, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by AT1MDF in SUTRA.  May be used to convert units or to aid in assignment of dispersivity. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab AT1MNF\tab Real\tab The scaled first transverse dispersivities in the minimum permeability direction, AT1MIN, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by AT1MNF in SUTRA.  May be used to convert units or to aid in assignment of dispersivity.
\par 
\par \tab AT2MXF\tab Real\tab The scaled second transverse dispersivities in the maximum permeability direction, AT2MAX, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by AT2MXF in SUTRA.  May be used to convert units or to aid in assignment of dispersivity. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab AT2MDF\tab Real\tab The scaled second transverse dispersivities in the "middle" permeability direction, AT2MID, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by AT2MDF in SUTRA.  May be used to convert units or to aid in assignment of dispersivity. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \tab AT2MNF\tab Real\tab The scaled second transverse dispersivities in the minimum permeability direction, AT2MIN, in \plain\f4\fs24\cf2\strike DATASET 15B\plain\f4\fs24\cf3 \{linkID=1240\}\plain\f4\fs24  are multiplied by AT2MNF in SUTRA.  May be used to convert units or to aid in assignment of dispersivity. \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \plain\f3\fs20 
\par }
1240
Scribble1240
DATASET 15B: Elementwise DATA (one line for each of NE elements)
K1; L; LREG(L); PMAX(L); PMID(L); PMIN(L); ANGLE1(L); ANGLE2(L); ANGLE3(L); ALMAX(L); ALMID(L); ALMIN(L); AT1MAX(L); AT1MID(L); AT1MIN(L); AT2MAX(L); AT2MID(L); AT2MIN(L)


sutradata:000250
Writing



FALSE
56
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2\fcharset2 Symbol;}{\f7\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 15B: Elementwise DATA (one line for each of NE elements)
\par \plain\f3\fs20 
\par \plain\f7\fs24 File: K1;
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 \tab 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab L\tab Integer\tab Number of element to which data on this line refers.
\par 
\par \tab LREG(L)\tab Integer\tab Unsaturated flow property region number to which this element belongs.  \plain\f4\fs24\ul Set to any integer value when flow simulation is saturated only.
\par \plain\f4\fs24 
\par \tab PMAX(L)\tab Real\tab Scaled maximum permeability value of element L, k\plain\f4\fs16\dn4 max\plain\f4\fs24 (L). [L\plain\f4\fs16\up12 2\plain\f4\fs24 ]
\par 
\par \tab PMID(L)\tab Real\tab Scaled "middle" permeability value of element L, k\plain\f4\fs16\dn4 mid\plain\f4\fs24 (L). [L\plain\f4\fs16\up12 2\plain\f4\fs24 ]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 Isotropic permeability requires:  PMID(L)=PMAX(L). \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab PMIN(L)\tab Real\tab Scaled minimum permeability value of element L, k\plain\f4\fs16\dn4 min\plain\f4\fs24 (L). [L\plain\f4\fs16\up12 2\plain\f4\fs24 ]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 Isotropic permeability requires:  PMIN(L)=PMAX(L).
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab ANGLE1(L)\tab Real\tab Angle within the x,y-plane, measured counterclockwise from +x-direction to maximum permeability direction in element L, \plain\f6\fs24 q\plain\f4\fs16\dn4 L\plain\f4\fs24 . [\'b0]
\par \tab \tab \tab In \plain\f4\fs24\ul 3-D\plain\f4\fs24 , this is the "yaw" of the principal permeability axes relative to the x, y, and z coordinate axes; arbitrary if PMID(L)=PMAX(L), ALMID(L)=ALMAX(L), AT1MID(L)=AT1MAX(L), and AT2MID(L)=AT2MAX(L).
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 In \plain\f4\fs24\ul 2-D\plain\f4\fs24 , arbitrary if PMIN(L)=PMAX(L) and ALMIN(L)=ALMAX(L), and AT1MIN(L)=AT1MAX(L).
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab ANGLE2(L)\tab Real\tab Angle measured (after ANGLE1 has been applied) upward from x,y-plane to maximum permeability direction in element L, \plain\f6\fs24 q\plain\f4\fs16\dn4 L\plain\f4\fs24 . [\'b0]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 In 3-D, this is the "pitch" of the principal permeability axes relative to the x, y, and z coordinate axes; arbitrary if PMIN(L)=PMAX(L), ALMIN(L)=ALMAX(L), AT1MIN(L)=AT1MAX(L), and AT2MIN(L)=AT2MAX(L). \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab ANGLE3(L)\tab Real\tab Angle about the axis of maximum permeability, measured (after ANGLE1 and ANGLE2 have been applied) looking down the positive half of the axis toward the origin, and counterclockwise from the horizontal to the "middle" permeability direction in element L, \plain\f6\fs24 q\plain\f4\fs16\dn4 L\plain\f4\fs24 . [\'b0]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 In 3-D, this is the "roll" of the principal permeability axes relative to the x, y, and z coordinate axes; arbitrary if PMIN(L)=PMID(L), ALMIN(L)=ALMID(L), AT1MIN(L)=AT1MID(L), and AT2MIN(L)=AT2MID(L). \plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par 
\par If the permeability ellipsoid is initially oriented with the maximum, "middle", and minimum permeability axes aligned in the X-, Y-, and Z-directions, respectively, then the "yaw, pitch, and roll" convention is equivalent to rotating the ellipsoid by ANGLE3 about the x-axis, by ANGLE2 about the y-axis, and by ANGLE1 about the z-axis, in that order.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab ALMAX(L)\tab Real\tab Scaled longitudinal flow dispersivity value of element L for flow in the direction of maximum permeability PMAX(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 L\plain\f4\fs21\dn6 max\plain\f4\fs24 (L). [L]
\par 
\par \tab ALMID(L)\tab Real\tab Scaled longitudinal flow dispersivity value of element L for flow in the direction of "middle" permeability PMID(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 L\plain\f4\fs21\dn6 mid\plain\f4\fs24 (L). [L]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24\b\ul Omit for 2-D problems.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab ALMIN(L)\tab Real\tab Scaled longitudinal dispersivity value of element L for flow in the direction of minimum permeability PMIN(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 L\plain\f4\fs21\dn6 min\plain\f4\fs24 (L). [L]
\par 
\par \tab AT1MAX(L)\tab Real\tab Scaled first transverse dispersivity value of element L for flow in the direction of maximum permeability PMAX(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 T1\plain\f4\fs21\dn6 max\plain\f4\fs24  (L). [L]
\par 
\par \tab AT1MID(L)\tab Real\tab Scaled first transverse dispersivity value of element L for flow in the direction of "middle" permeability PMID(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 T1\plain\f4\fs21\dn6 mid\plain\f4\fs24  (L). [L]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab AT1MIN(L)\tab Real\tab Scaled first transverse dispersivity value of element L for flow in the direction of minimum permeability PMIN(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 T1\plain\f4\fs21\dn6 min\plain\f4\fs24 (L). [L]
\par 
\par \tab AT2MAX(L)\tab Real\tab Scaled second transverse dispersivity value of element L for flow in the direction of maximum permeability PMAX(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 T2\plain\f4\fs21\dn6 max\plain\f4\fs24  (L). [L]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab AT2MID(L)\tab Real\tab Scaled second transverse dispersivity value of element L for flow in the direction of "middle" permeability PMID(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 T2\plain\f4\fs21\dn6 mid\plain\f4\fs24  (L). [L]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24\b\ul Omit for 2-D problems.
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par \tab AT2MIN(L)\tab Real\tab Scaled second transverse dispersivity value of element L for flow in the direction of minimum permeability PMIN(L), \plain\f6\fs24 a\plain\f4\fs16\dn4 T2\plain\f4\fs21\dn6 min\plain\f4\fs24 (L). [L]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24\b\ul Omit for 2-D problems.\plain\f4\fs24 
\par \pard\plain\f3\fs20 
\par }
1250
Scribble1250
DATASET 16:  NO LONGER USED



sutradata:000260
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 16:  NO LONGER USED
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par 
\par \plain\f3\fs20 
\par }
1260
Scribble1260
DATASET 17:  Data for Fluid Source and Sinks
K1; IQCP; QINC; UINC


sutradata:000270
Writing



FALSE
26
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2\fcharset2 Symbol;}{\f7\froman\fcharset1 Times New Roman;}{\f8\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 17:  Data for Fluid Source and Sinks
\par 
\par \plain\f7\fs24 File: K1;
\par 
\par \plain\f7\fs24 (one line for each of NSOP fluid source nodes as specified in DATASET 3, plus one \plain\f8\fs24 line)\plain\f7\fs24 
\par 
\par \plain\f4\fs24\b\ul O M I T\plain\f4\fs24\b  when there are no fluid source nodes
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\plain\f4\fs24 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 \tab 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab IQCP\tab Integer\tab Number of node to which source/sink data on this line refers. Specifying the node number with a \plain\f4\fs24\ul negative sign\plain\f4\fs24  indicates to SUTRA that the source flow rate or concentration or temperature of the source fluid vary in a specified manner with time. Information regarding a time-dependent source node \plain\f4\fs24\ul must be programmed\plain\f4\fs24  by the user in Subroutine BCTIME.
\par 
\par \tab QINC\tab Real\tab Fluid source (or sink) which is a specified constant value at node IQCP, Q\plain\f4\fs16\dn4 IN\plain\f4\fs24 . \plain\f6\fs24 \'bd\plain\f4\fs24 M/s\plain\f6\fs24 \'bd\plain\f4\fs24  
\par \tab \tab \tab A positive value is a source of fluid to the aquifer. May be omitted if this value is specified as time-dependent in Subroutine BCTIME (IQCP<0). Sources are allocated by cell as shown in \plain\f4\fs24\ul Figure 7.2\plain\f4\fs24  for equal-sized elements. For unequal-sized elements, sources are allocated in proportion to the cell length, area or volume over which the source fluid enters the system.
\par 
\par \tab UINC\tab Real\tab Temperature or solute concentration (mass fraction) of fluid entering the aquifer which is a specified constant value for a fluid source at node IQCP, U\plain\f4\fs16\dn4 IN\plain\f4\fs24 . \plain\f6\fs24 \'bd\'b0\plain\f4\fs24 C\plain\f6\fs24 \'bd\plain\f4\fs24  or \plain\f6\fs24 \'bd\plain\f4\fs24 M\plain\f4\fs16\dn4 s\plain\f4\fs24 /M\plain\f6\fs24 \'bd\plain\f4\fs24  
\par \tab \tab \tab May be omitted if this value is specified as time-dependent in Subroutine BCTIME (IQCP<0) or if QINC\plain\f6\fs24 \'a3\plain\f4\fs24 0.
\par 
\par \plain\f4\fs24\ul Last line:
\par \plain\f4\fs24 
\par \tab \tab Integer\tab Placed immediately following all NSOP fluid source node lines. Line must begin with the integer 0.
\par \pard\plain\f4\fs24 
\par \plain\f3\fs20 
\par }
1270
Scribble1270
DATASET 18:  Data for Energy or Solute Mass Sources and Sinks
K1; IQCU; QUINC


sutradata:000280
Writing



FALSE
24
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2\fcharset2 Symbol;}{\f7\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 18:  Data for Energy or Solute Mass Sources and Sinks
\par \plain\f3\fs20 
\par \plain\f7\fs24 File: K1;
\par 
\par \pard\li4320\fi-4320\plain\f4\fs24 (one line for each NSOU energy or solute source nodes as specified in DATASET 3, \plain\f4\fs24\ul plus\plain\f4\fs24  one line)
\par \pard\plain\f4\fs24 
\par \plain\f4\fs24\b\ul O M I T\plain\f4\fs24\b  when there are no energy or solute source nodes
\par \plain\f4\fs24 
\par 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab IQCU\tab Integer\tab Number of node to which source/sink data on this line refers.
\par \tab \tab \tab Specifying the node number with a \plain\f4\fs24\i negative sign\plain\f4\fs24  indicates to SUTRA that the source rate varies in a specified manner with time.  All information regarding a time-dependent source node \plain\f4\fs24\ul must be programmed\plain\f4\fs24  by the user in Subroutine BCTIME.
\par \tab \tab \tab Sources are allocated by cell as shown in Figure 7.2 for equal-sized elements.  For unequal-sized elements, sources are allocated in proportion to the cell length, area or volume over which the source energy or solute mass enters the system.
\par 
\par \tab QUINC\tab Real\tab Source (or sink) which is a specified constant value at node IQCU, \plain\f6\fs24 y\plain\f4\fs16\dn4 IN\plain\f4\fs24 . \plain\f6\fs24 \'bd\plain\f4\fs24 E/s\plain\f6\fs24 \'bd\plain\f4\fs24  for energy transport, \plain\f6\fs24 \'bd\plain\f4\fs24 M\plain\f4\fs16\dn4 s\plain\f4\fs24 /s\plain\f6\fs24 \'bd\plain\f4\fs24  for solute transport. A positive value is a source to the aquifer. May be omitted if IQCU is negative, and this value is specified as time-dependent in Subroutine BCTIME.
\par 
\par \plain\f4\fs24\ul Last line:
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab \tab Integer\tab Placed immediately following all NSOU energy or solute mass source node lines. Line must begin with the integer 0.
\par \pard\plain\f3\fs20 
\par }
1280
Scribble1280
DATASET 19:  Data for Specified Pressure Nodes 
K1; IPBC; PBC; UBC; 


sutradata:000290
Writing



FALSE
28
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fprq2 Times New Roman;}{\f6\fnil\fprq2\fcharset2 Wingdings;}{\f7\froman\fprq2\fcharset2 Symbol;}{\f8\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 19:  Data for Specified Pressure Nodes 
\par \plain\f3\fs20 
\par \plain\f8\fs24 File: K1;
\par 
\par \pard\li5040\fi-5040\plain\f5\fs24 (one line for each of NPBC specified pressure nodes as indicated in DATASET 3, \plain\f5\fs24\ul plus\plain\f5\fs24  one line)
\par \pard\plain\f5\fs24 
\par \plain\f5\fs24\b\ul O M I T \plain\f5\fs24\b when there are no specified pressure nodes
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\plain\f5\fs24 
\par \pard\plain\f5\fs24 
\par \pard\tx720\tx2160\tx3600\plain\f5\fs24 \tab \plain\f5\fs24\ul Variable\plain\f5\fs24 \tab \plain\f5\fs24\ul Type\plain\f5\fs24 \tab \plain\f5\fs24\ul Description\plain\f5\fs24 
\par \pard\plain\f5\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f5\fs24 \tab \plain\f5\fs24\ul Lines 1 to NPBC:
\par \plain\f5\fs24 
\par \tab IPBC\tab Integer\tab Number of node to which specified pressure data on this line refers. Specifying the node number with a \plain\f5\fs24\ul negative sign\plain\f5\fs24  indicates to SUTRA that the specified pressure value or inflow concentration or temperature at this node vary in a specified manner with time. Information regarding a time-dependent specified pressure node \plain\f5\fs24\ul must be programmed\plain\f5\fs24  by the user in Subroutine BCTIME.
\par 
\par \tab PBC\tab Real\tab Pressure value which is a specified constant at node IPBC. \plain\f7\fs24 \'bd\plain\f5\fs24 M/(L\plain\f6\fs24 \'9e\plain\f5\fs24 s\plain\f5\fs16\up12 2\plain\f5\fs24 )\plain\f7\fs24 \'bd\plain\f5\fs24  
\par \tab \tab \tab May be omitted if this value is specified as time-dependent in Subroutine BCTIME.
\par 
\par \tab UBC\tab Real\tab Temperature or solute concentration of any external fluid which enters the aquifer at node IPBC. UBC is a specified constant value. [\plain\f7\fs24 \'b0\plain\f5\fs24 C] or \plain\f7\fs24 \'bd\plain\f5\fs24 M\plain\f5\fs16\dn4 s\plain\f5\fs24 /M\plain\f7\fs24 \'bd\plain\f5\fs24  
\par \tab \tab \tab May be omitted if this value is specified as time-dependent in Subroutine BCTIME. 
\par 
\par \tab \plain\f5\fs24\ul Last line:
\par \plain\f5\fs24 
\par \tab \tab Integer\tab Placed immediately following all NPBC specified pressure lines. Line must begin with the integer 0.
\par \pard\plain\f3\fs20 
\par }
1290
Scribble1290
DATASET 20:  Data for Specified Concentration or Temperature Nodes
K1; IUBC; UBC


sutradata:000300
Writing



FALSE
25
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}{\f7\froman\fprq2\fcharset2 Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 20:  Data for Specified Concentration or Temperature Nodes
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par \pard\li4320\plain\f6\fs24 
\par \pard\plain\f4\fs24 (one line for each of NUBC specified concentration or temperature nodes indicated in DATASET 3, \plain\f4\fs24\ul plus\plain\f4\fs24  one line)
\par 
\par \plain\f4\fs24\b\ul O M I T\plain\f4\fs24\b  when there are no specified concentration or temperature nodes
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24 \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Lines 1 to NUBC:
\par \plain\f4\fs24 
\par \tab IUBC\tab Integer\tab Number of node to which specified concentration or temperature data on this line refers. Specifying the node number with a \plain\f4\fs24\ul negative sign\plain\f4\fs24  indicates to SUTRA that the specified value at this node varies in a specified manner with time. This time-dependence \plain\f4\fs24\ul must be programmed\plain\f4\fs24  by the user in Subroutine BCTIME.
\par 
\par \tab UBC\tab Real\tab Temperature or solute concentration value which is a specified constant at node IUBC. \plain\f7\fs24 \'bd\'b0\plain\f4\fs24 C\plain\f7\fs24 \'bd\plain\f4\fs24  or [M\plain\f4\fs16\dn4 s\plain\f4\fs24 /M] 
\par \tab \tab \tab May be omitted if IUBC is negative and this value is specified as time-dependent in Subroutine BCTIME.
\par 
\par \tab \plain\f4\fs24\ul Last line:
\par \plain\f4\fs24 
\par \tab \tab Integer\tab Placed immediately following all NUBC specified temperature or concentration lines.  Line must begin with the integer 0.
\par \pard\plain\f3\fs20 
\par }
1300
Scribble1300
DATASET 21:  NO LONGER USED



sutradata:000310
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 21:  NO LONGER USED
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K1;
\par \pard\li4320\plain\f5\fs24 
\par \pard\plain\f3\fs20 
\par }
1310
Scribble1310
DATASET 22:  Element Incidence Data 
K1; INCIDENCE; LL; IIN


sutradata:000320
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 22:  Element Incidence Data 
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K1;
\par \pard\li4320\plain\f6\fs24 
\par \pard\li5760\fi-5760\plain\f4\fs24 (one line, \plain\f4\fs24\ul plus\plain\f4\fs24  one line for each of NE elements)
\par \pard\plain\f4\fs24 
\par 
\par \pard\tx720\tx2160\tx3600\tx4860\tx7820\tx8370\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24  \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \tab \plain\f4\fs24\ul Line 1:
\par \plain\f4\fs24 
\par \pard\li3600\fi-2880\tx2160\plain\f4\fs24 \tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab Line must begin with the word 'INCIDENCE'.
\par 
\par \plain\f4\fs24\ul Lines 2 to NE+1:
\par \plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab LL\tab Integer\tab Number of element to which data on this line refers.
\par \tab 
\par \tab IIN\tab Integer\tab Node incidence list; list of corner node numbers in element LL, beginning at any node.  For 2-D problems, the four nodes are listed in an order counterclockwise about the element.  For 3-D problems, the eight nodes are listed \plain\f4\fs24\b XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX (?)\plain\f4\fs24 
\par \pard\plain\f3\fs20 
\par }
1320
Scribble1320
List of Input Data for UNIT K2 (Initial Conditions File)
K2


sutradata:000330
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fprq2 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b List of Input Data for UNIT K2 (Initial Conditions File)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K2;
\par \pard\li4320\plain\f6\fs24 
\par \pard\plain\f5\fs24 \tab Model Series:  \tab SUTRA
\par \tab Model Version\tab 2D3D.1
\par 
\par 
\par The data in UNIT K2 need be created by the user only for "cold starts" of SUTRA simulation (i.e., for the very first time step of a given simulation or series of restarted simulations).
\par 
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\plain\f5\fs24 SUTRA will optionally store final results of a simulation in a form directly useable as UNIT K2 for later restarts.  The restart options are controlled by CREAD and ISTORE in DATASET 4 of UNIT K1 data.
\par \pard\plain\f5\fs24 
\par \pard\li4320\plain\f6\fs24 
\par \pard\plain\f3\fs20 
\par }
1330
Scribble1330
DATASET 1:  Simulation Starting Time (one line)
K2; TSTART


sutradata:000340
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fprq2 Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 1:  Simulation Starting Time (one line)
\par \plain\f3\fs20 
\par \plain\f6\fs24 File: K2;
\par \pard\li4320\plain\f6\fs24 
\par \pard\tx720\tx2160\tx3600\plain\f5\fs24 \tab \plain\f5\fs24\ul Variable\plain\f5\fs24 \tab \plain\f5\fs24\ul Type\plain\f5\fs24 \tab \plain\f5\fs24\ul Description\plain\f5\fs24 
\par \pard\plain\f5\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f5\fs24 \tab TSTART\tab Real\tab Elapsed time at which the initial conditions for simulation specified in UNIT K2 are given. [s] 
\par \tab \tab \tab This sets the simulation clock starting time. Usually set to a value of zero for a "cold start".
\par \pard\plain\f3\fs20 
\par }
1340
Scribble1340
DATASET 2:  Initial Pressure Values at Nodes 
K2; CPUNI; PVEC


sutradata:000350
Writing



FALSE
26
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\froman\fcharset1 Times New Roman;}{\f6\fswiss\fprq2 System;}{\f7\fnil\fprq2\fcharset2 Wingdings;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 2:  Initial Pressure Values at Nodes 
\par \plain\f3\fs20 
\par \plain\f5\fs24 File: K2;
\par \pard\li4320\plain\f5\fs24 
\par \pard\li4680\fi-4680\plain\f4\fs24 (two lines; second line can be broken up over multiple lines)
\par \pard\plain\f4\fs24 
\par \pard\tx720\tx2160\tx3600\tx4860\tx7820\tx8370\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24  \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \tab \plain\f4\fs24\ul Line 1:
\par \plain\f4\fs24 
\par \pard\li3600\fi-2880\tx2160\plain\f4\fs24 CPUNI\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab One word.  Set to 'UNIFORM' to specify a uniform pressure for all nodes.  Set to 'NONUNIFORM' to specify a separate pressure for each node.
\par 
\par \plain\f4\fs24\ul Line 2:
\par \plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab PVEC\tab Real\tab For UNIFORM pressure specification, a \plain\f4\fs24\ul single\plain\f4\fs24  value of initial (starting) pressure to be applied at all NN nodes at time TSTART. [M/(L\plain\f7\fs24 \'9e\plain\f4\fs24 s\plain\f4\fs21\up16 2\plain\f4\fs24 )]
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 If the steady-state flow option in DATASET 4 of UNIT 5 has been chosen, PVEC may be set to any real value.
\par 
\par For NONUNIFORM pressure specification, a \plain\f4\fs24\ul list\plain\f4\fs24  of values of initial (starting) pressures at time TSTART, one value for each of NN nodes, in \plain\f4\fs24\ul exact\plain\f4\fs24  order of node numbers. [M/(L\plain\f7\fs24 \'9e\plain\f4\fs24 s\plain\f4\fs21\up16 2\plain\f4\fs24 )]
\par If the steady-state flow option in \plain\f4\fs24\cf2\strike DATASET 4\plain\f4\fs24\cf3 \{linkID=1060\}\plain\f4\fs24  of UNIT K1 has been chosen, PVEC may be set to any real values.
\par 
\par Initial hydrostatic or natural pressures in a cross-section may be obtained by running a single steady-flow time step with the \plain\f4\fs24\ul store \plain\f4\fs24 option. Then the natural pressures are calculated and stored on UNIT K4, and may be copied to the "cold start" UNIT K2 file without change in format, as initial conditions for a transient run.
\par \pard\plain\f4\fs24 
\par \plain\f3\fs20 
\par }
1350
Scribble1350
DATASET 3:  Initial Temperature or Concentration Values at Nodes 
K2; CUUNI; UVEC


sutradata:000360
Writing



FALSE
21
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 Times New Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2\fcharset2 Symbol;}{\f7\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DATASET 3:  Initial Temperature or Concentration Values at Nodes 
\par \plain\f3\fs20 
\par \plain\f7\fs24 File: K2;
\par \pard\li4320\plain\f7\fs24 
\par \pard\li6840\fi-6840\plain\f4\fs24 (two lines; second line can be broken up over multiple lines)
\par \pard\tx720\tx1440\tx2880\tx4860\tx7820\tx8370\plain\f4\fs24 \tab 
\par \pard\tx720\tx2160\tx3600\plain\f4\fs24 \tab \plain\f4\fs24\ul Variable\plain\f4\fs24 \tab \plain\f4\fs24\ul Type\plain\f4\fs24  \tab \plain\f4\fs24\ul Description\plain\f4\fs24 
\par \pard\plain\f4\fs24 
\par \pard\li720\plain\f4\fs24\ul Line 1:
\par \pard\plain\f4\fs24 
\par \pard\li3600\fi-2880\tx2160\plain\f4\fs24 CUUNI\tab \plain\f4\fs24\cf2\ul Character\plain\f4\fs24\cf3 \{linkID=1360\}\plain\f4\fs24 \tab One word.  Set to 'UNIFORM' to specify a uniform temperature to solute concentration for all nodes.  Set to 'NONUNIFORM' to specify a separate value for each node.
\par 
\par \plain\f4\fs24\ul Line 2:
\par \plain\f4\fs24 
\par \pard\li3600\fi-3600\tx720\tx2160\tx3600\plain\f4\fs24 \tab UVEC\tab Real\tab For UNIFORM temperature or solute concentration specification, a \plain\f4\fs24\ul single\plain\f4\fs24  initial (starting) value to be applied at all NN nodes at time TSTART. [\plain\f6\fs24 \'b0\plain\f4\fs24 C] or [M\plain\f4\fs21\dn6 s\plain\f4\fs24 /M] 
\par \pard\li3600\tx720\tx2160\tx3600\plain\f4\fs24 
\par For NONUNIFORM temperature or solute concentration specification, a \plain\f4\fs24\ul list\plain\f4\fs24  of initial (starting) at time TSTART, one value for each of NN nodes, in \plain\f4\fs24\ul exact\plain\f4\fs24  order of node numbers. [\plain\f6\fs24 \'b0\plain\f4\fs24 C] or [M\plain\f4\fs21\dn6 s\plain\f4\fs24 /M]
\par \pard\plain\f3\fs20 
\par }
1360
Scribble1360
Character




Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman\fprq2 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Character
\par \plain\f3\fs20 
\par \pard\tx720\tx2880\tx4860\tx7820\tx8370\tx9360\plain\f5\fs24 All input variables of "character" type should be enclosed in single quotation marks unless specified otherwise.
\par \pard\plain\f3\fs20 
\par }
0
0
0
38
1 Introduction=Scribble1000
1 K1;
2 List of Input Data for UNIT K1 (Main Input File)=Scribble1010
2 DATASET 1:  Output Heading  (two lines)=Scribble1020
2 DATASET 2A:  Input Data Heading - Type of Transport (one line)=Scribble1030
2 DATASET 2B:  Input Data Heading - Mesh Type (one line)=Scribble1040
2  DATASET 3:  Simulation Control Numbers (one line)=Scribble1050
2 DATASET 4:  Simulation Mode Options (one line)=Scribble1060
2 DATASET 5:  Numerical Control Parameters (one line)=Scribble1070
2 DATASET 6:  Temporal Control and Solution Cycling Data (one line)=Scribble1080
2 DATASET 7A:  Outer (Non-linearity) Iteration Controls (one line)=Scribble10000
2 DATASET 7B:  Matrix Solver Controls for Pressure Solution (one line)=Scribble1100
2 DATASET 7C: Matrix Solver Parameters for Transport Solution (one line)=Scribble1110
2 DATASET 8A:  Output Controls and Options for UNIT K3 (Main Ouput File) (one line)=Scribble1120
2 DATASET 8B:  Output Controls and Options for UNIT K5 (Nodewise Results Listed in Columns) (one line)=Scribble1130
2 DATASET 8C:  Output Controls and Options for UNIT K6 (Velocities at Element Centroids Listed in Columns) (one line)=Scribble1140
2 DATASET 8D:  Output Controls and Options for UNIT K7 (Observation Node Results Listed in Columns) (one line)=Scribble1150
2 DATASET 9:  Fluid Properties (one line)=Scribble1160
2 DATASET 10:  Solid Matrix Properties (one line)=Scribble1170
2 DATASET 11:  Adsorption Parameters (one line)=Scribble1180
2 DATASET 12:  Production of Energy or Solute Mass (one line)=Scribble10100
2 DATASET 13: Orientation of Coordinates to Gravity (one line)=Scribble1200
2 DATASET 14A: Scale Factor for Nodewise Data (one line)=Scribble1210
2 DATASET 14B: Nodewise Data (one line for each of NN nodes)=Scribble1220
2 DATASET 15A: Scale Factors for Elementwise Data (one line)=Scribble1230
2 DATASET 15B: Elementwise DATA (one line for each of NE elements)=Scribble1240
2 DATASET 16:  NO LONGER USED=Scribble1250
2 DATASET 17:  Data for Fluid Source and Sinks=Scribble1260
2 DATASET 18:  Data for Energy or Solute Mass Sources and Sinks=Scribble1270
2 DATASET 19:  Data for Specified Pressure Nodes =Scribble1280
2 DATASET 20:  Data for Specified Concentration or Temperature Nodes=Scribble10200
2 DATASET 21:  NO LONGER USED=Scribble1300
2 DATASET 22:  Element Incidence Data =Scribble1310
1 K2
2 List of Input Data for UNIT K2 (Initial Conditions File)=Scribble1320
2 DATASET 1:  Simulation Starting Time (one line)=Scribble1330
2 DATASET 2:  Initial Pressure Values at Nodes =Scribble1340
2 DATASET 3:  Initial Temperature or Concentration Values at Nodes =Scribble1350
6
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
