HelpScribble project file.
8
Yrbaneq S. Xbavxbj-050Q35
0
1
MOC3D Input instructions



TRUE


1
BrowseButtons()
0
FALSE
92
10
Scribble10
MODFLOW Name File



general:000010
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b MODFLOW Name File
\par \plain\f3\fs20 
\par \plain\f4\fs24 Transport simulation is activated by including a record in the \plain\f5\fs24\i MODFLOW \plain\f4\fs24 name file using the file type (Ftype) \ldblquote CONC\rdblquote  to link to the transport name file. The transport name file specifies the files to be used when simulating solute transport in conjunction with a simulation of ground-water flow using \plain\f5\fs24\i MODFLOW\plain\f4\fs24 . The transport name file works in the same way as the \plain\f5\fs24\i MODFLOW \plain\f4\fs24 name file.\plain\f3\fs20 
\par }
20
Scribble20
MODFLOW Source and Sink Packages



general:000020
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Italic;}{\f5\froman Times-Roman;}{\f6\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MODFLOW Source and Sink Packages
\par \plain\f2\fs20 
\par \plain\f5\fs24 Except for recharge, concentrations associated with fluid sources ( \plain\f6\fs24 \'a2 \plain\f4\fs24\i C \plain\f5\fs24 ) are read as auxiliary parameters in the \plain\f4\fs24\i MODFLOW \plain\f5\fs24 source package. The source concentration is read from a new column appended to the end of each line of the data file describing a fluid sink/source (see documentation for revised \plain\f4\fs24\i MODFLOW \plain\f5\fs24 model; Harbaugh and McDonald, 1996a and 1996b). For example, concentrations associated with well nodes should be appended to the line in the WEL Package where the well\rquote s location and pumping rate are defined. These concentrations will be read if the auxiliary parameter \ldblquote CONCENTRATION\rdblquote  (or \ldblquote CONC\rdblquote ) appears on the first line of the well input data file. The concentration in recharge is defined separately, as described in following section \ldblquote Source Concentration in Recharge File.\rdblquote 
\par 
\par To simulate solute transport the \plain\f4\fs24\i MODFLOW \plain\f5\fs24 option enabling storage of cell-by-cell flow rates for each fluid source or sink is required in all fluid packages except recharge. The key word "CBCALLOCATE\rdblquote  (or \ldblquote CBC\rdblquote ) must appear on the first line of each input data file for a fluid package (see Harbaugh and McDonald, 1996a and 1996b).\plain\f3\fs20 
\par }
30
Scribble30
MOC3D Input Data Files



general:000030
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b MOC3D Input Data Files
\par \plain\f2\fs20 
\par \plain\f4\fs24 All input variables are read using free formats, except as specifically indicated. In free format, variables are separated by one or more spaces or by a comma and optionally one or more spaces. Blank spaces are not read as zeros.\plain\f3\fs20 
\par }
40
Scribble40
MOC3D Transport Name File (CONC)



general:000040
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}{\f7\froman Times-Italic;}{\f8\fmodern Courier-Bold;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b MOC3D Transport Name File (CONC)
\par \plain\f3\fs20 
\par \plain\f4\fs24 FOR EACH SIMULATION:
\par \plain\f8\fs24\b 1\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike FTYPE\plain\f5\fs24\cf1 \{linkID=50\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike NUNIT\plain\f5\fs24\cf1 \{linkID=60\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike FNAME\plain\f5\fs24\cf1 \{linkID=70\}\plain\f5\fs24 
\par 
\par \plain\f4\fs24 The name file consists of records defining the names and units numbers of the files. Each "record" consists of a separate line of data. There must be a record for the listing file and for the main \plain\f7\fs24\i MOC3D \plain\f4\fs24 input file. The listing (or output) file ("CLST") must be the first record. The other files may be in any order. Each record can be no more than 79 characters.\plain\f3\fs20 
\par }
50
Scribble50
FTYPE



general:000050
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss Arial;}{\f4\froman Times-BoldItalic;}{\f5\fmodern Courier;}{\f6\froman Times-Roman;}{\f7\froman Times-Italic;}{\f8\fswiss\fcharset1 Arial;}{\f9\fswiss\fprq2 System;}{\f10\fmodern Courier-Bold;}{\f11\fswiss Arial;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f8\fs32\cf3\b FTYPE
\par \plain\f8\fs20 
\par \plain\f5\fs24 FTYPE \plain\f6\fs24 The file type, which may be one of the following character strings:
\par 
\par \pard\li580\fi-300\plain\f11\fs24 CLST \plain\f7\fs24\i MOC3D \plain\f6\fs24 listing file (separate from the \plain\f7\fs24\i MODFLOW \plain\f6\fs24 listing file) \plain\f7\fs24\i [required].
\par \plain\f11\fs24 MOC or MOCIMP \plain\f6\fs24 Main \plain\f7\fs24\i MOC3D \plain\f6\fs24 input data file \plain\f7\fs24\i [required]. \plain\f6\fs24 Specifying \plain\f4\fs24\b\i MOC \plain\f6\fs24 indicates dispersion calculations will be explicit (as described by Konikow and others, 1996) and specifying \plain\f4\fs24\b\i MOCIMP \plain\f6\fs24 indicates dispersion calculations will be implicit (as described in this report).
\par \plain\f11\fs24 CRCH \plain\f6\fs24 Concentrations in recharge \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 CNCA \plain\f6\fs24 Separate output file containing concentration data in ASCII (text-only) format. Frequency and format of printing controlled by NPNTCL and ICONFM \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 CNCB \plain\f6\fs24 Separate output file containing concentration data in binary format \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 VELA \plain\f6\fs24 Separate output file with velocity data in ASCII format. Frequency and format of printing controlled by NPNTVL and IVELFM \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 VELB \plain\f6\fs24 Separate output file with velocity data in binary format \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 PRTA \plain\f6\fs24 Separate output file with particle locations printed in ASCII format. Frequency and format of printing controlled by NPNTPL \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 PRTB \plain\f6\fs24 Separate output file with particle locations printed in binary format \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 OBS \plain\f6\fs24 Observation wells input file \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 DATA \plain\f6\fs24 For formatted files such as those required by the OBS package and for array data separate from the main \plain\f7\fs24\i MOC3D \plain\f6\fs24 input data file \plain\f7\fs24\i [optional].
\par \plain\f11\fs24 DATA(BINARY) \plain\f6\fs24 For formatted input/output files \plain\f7\fs24\i [optional].
\par \pard\li560\fi-280\plain\f3\fs25 AGE\plain\f10\fs25\b  \plain\f6\fs24 Ground-water age simulation input file \plain\f7\fs24\i [optional].
\par \plain\f3\fs25 DP\plain\f10\fs25\b  \plain\f6\fs24 Double porosity input file \plain\f7\fs24\i [optional].
\par \plain\f3\fs25 DK\plain\f10\fs25\b  \plain\f6\fs24 Simple reactions (decay, zero-order growth, retardation) input file \plain\f7\fs24\i [optional].\plain\f8\fs20 
\par }
60
Scribble60
NUNIT



general:000060
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\froman Times-Italic;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b NUNIT
\par \plain\f2\fs20 
\par \plain\f4\fs24 NUNIT \plain\f5\fs24 The FORTRAN unit number used to read from and write to files. Any legal unit number other than 97, 98, and 99 (which are reserved by \plain\f6\fs24\i MODFLOW\plain\f5\fs24 ) can be used provided that it is not previously specified in the \plain\f6\fs24\i MODFLOW \plain\f5\fs24 name file.\plain\f3\fs20 
\par }
70
Scribble70
FNAME



general:000070
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b FNAME
\par \plain\f2\fs20 
\par \plain\f4\fs24 FNAME \plain\f5\fs24 The name of the file.\plain\f3\fs20 
\par }
80
Scribble80
Main MOC3D Package Input (MOC)



general:000080
Writing



FALSE
79
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier-Bold;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fmodern Courier;}{\f8\fnil Symbol;}{\f9\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Main MOC3D Package Input (MOC)
\par \plain\f3\fs20 
\par \plain\f5\fs24 Input for the method-of-characteristics (\plain\f9\fs24\i MOC3D\plain\f5\fs24 ) solute-transport package is read from the unit specified in the transport name file. The input consists of 18 separate records or data sets, as described in detail below. These data are used to specify information about the transport subgrid, physical and chemical transport parameters, numerical solution variables, and output formats. Output file controls for the \plain\f9\fs24\i MOC3D \plain\f5\fs24 package are specified in the transport name file, described previously.
\par 
\par \plain\f5\fs24\b FOR EACH SIMULATION:\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main1\}\plain\f4\fs24\b 1\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike HEDMOC\plain\f7\fs24\cf2 \{linkID=100\}\plain\f7\fs24  \plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main2\}\plain\f4\fs24\b 2\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike HEDMOC\plain\f7\fs24\cf2 \{linkID=100\}\plain\f7\fs24  (continued)
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main3\}\plain\f4\fs24\b 3\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike ISLAY1\plain\f7\fs24\cf2 \{linkID=110\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ISLAY2\plain\f7\fs24\cf2 \{linkID=120\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ISROW1\plain\f7\fs24\cf2 \{linkID=130\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ISROW2\plain\f7\fs24\cf2 \{linkID=140\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ISCOL1\plain\f7\fs24\cf2 \{linkID=150\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ISCOL2\plain\f7\fs24\cf2 \{linkID=160\}\plain\f7\fs24   (See: \plain\f7\fs24\cf3\strike Notes on Transport Subgrid\plain\f7\fs24\cf2 \{linkID=170\}\plain\f7\fs24 )
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main4\}\plain\f4\fs24\b 4\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike NODISP\plain\f7\fs24\cf2 \{linkID=180\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike DECAY\plain\f7\fs24\cf2 \{linkID=190\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike DIFFUS\plain\f7\fs24\cf2 \{linkID=200\}\plain\f7\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main5\}\plain\f4\fs24\b 5\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike NPMAX\plain\f7\fs24\cf2 \{linkID=210\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike NPTPND\plain\f7\fs24\cf2 \{linkID=220\}\plain\f7\fs24 
\par \plain\f4\fs24\b 
\par \plain\f5\fs24\b IF \plain\f9\fs24\cf3\b\strike NPTPND\plain\f9\fs24\cf2\b \{linkID=220\}\plain\f9\fs24\b  \plain\f5\fs24\b IS NEGATIVE IN SIGN:\plain\f5\fs24 
\par 
\par \plain\f4\fs24\cf2\b \{target=Main6\}\plain\f4\fs24\b 6\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike PNEWL\plain\f7\fs24\cf2 \{linkID=230\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike PNEWR\plain\f7\fs24\cf2 \{linkID=240\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike PNEWC\plain\f7\fs24\cf2 \{linkID=250\}\plain\f7\fs24  (See: \plain\f7\fs24\cf3\strike Notes on initial particle coordinates\plain\f7\fs24\cf2 \{linkID=260\}\plain\f7\fs24 )
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main7\}\plain\f4\fs24\b 7\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike CELDIS\plain\f7\fs24\cf2 \{linkID=270\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike FZERO\plain\f7\fs24\cf2 \{linkID=271\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike INTRPL\plain\f7\fs24\cf2 \{linkID=272\}\plain\f7\fs24 
\par \plain\f4\fs24\b 
\par \plain\f5\fs24\b FOR EACH SIMULATION (only if \plain\f9\fs24\b MOCIMP \plain\f5\fs24\b is specified in Transport Name File):
\par \plain\f5\fs24 
\par \plain\f4\fs24\cf2\b \{target=Main7.1\}\plain\f4\fs24\b 7.1 \plain\f7\fs24 Data: \plain\f7\fs24\cf3\strike FDTMTH\plain\f7\fs24\cf2 \{linkID=280\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike NCXIT\plain\f7\fs24\cf2 \{linkID=290\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike IDIREC\plain\f7\fs24\cf2 \{linkID=300\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike EPSSLV\plain\f7\fs24\cf2 \{linkID=310\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike MAXIT\plain\f7\fs24\cf2 \{linkID=320\} \plain\f7\fs24 (See: \plain\f7\fs24\cf3\strike Notes on default values for data set 7.1\plain\f7\fs24\cf2 \{linkID=330\}\plain\f7\fs24 .)\plain\f7\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main8\}\plain\f4\fs24\b 8\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike NPNTCL\plain\f7\fs24\cf2 \{linkID=360\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ICONFM\plain\f7\fs24\cf2 \{linkID=370\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike NPNTVL\plain\f7\fs24\cf2 \{linkID=380\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike IVELFM\plain\f7\fs24\cf2 \{linkID=390\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike NPNTDL\plain\f7\fs24\cf2 \{linkID=400\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike IDSPFM\plain\f7\fs24\cf2 \{linkID=410\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike NPNTPL\plain\f7\fs24\cf2 \{linkID=420\}\plain\f7\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main9\}\plain\f4\fs24\b 9\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike CNOFLO\plain\f7\fs24\cf2 \{linkID=440\}\plain\f5\fs24 
\par 
\par \plain\f5\fs24\b FOR EACH LAYER OF THE TRANSPORT SUBGRID:\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main10\}\plain\f4\fs24\b 10\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike CINT\plain\f7\fs24\cf2 \{linkID=450\}\plain\f7\fs24 (NSCOL,NSROW)\plain\f5\fs24 
\par \plain\f7\fs24 Module: U2DREL \plain\f5\fs18 *
\par \plain\f5\fs24 
\par \plain\f5\fs24\b FOR EACH SIMULATION, ONLY IF TRANSPORT SUBGRID DIMENSIONS ARE SMALLER THAN FLOW GRID DIMENSIONS:\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main11\}\plain\f4\fs24\b 11\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike CINFL\plain\f7\fs24\cf2 \{linkID=460\}\plain\f7\fs24 (ICINFL)\plain\f5\fs24 
\par \plain\f7\fs24 Module: U1DREL \plain\f5\fs18 *
\par \plain\f5\fs24 
\par \plain\f5\fs24\b FOR EACH SIMULATION\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main12\}\plain\f4\fs24\b 12\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike NZONES\plain\f7\fs24\cf2 \{linkID=470\}\plain\f5\fs24 
\par 
\par \plain\f5\fs24\b \tab IF \plain\f9\fs24\b NZONES \plain\f5\fs24\b > 0:\plain\f5\fs24 
\par \plain\f7\fs24 
\par Data: \plain\f7\fs24\cf3\strike IZONE\plain\f7\fs24\cf2 \{linkID=470\}\plain\f7\fs24  \plain\f7\fs24\cf3\strike ZONCON\plain\f7\fs24\cf2 \{linkID=470\}\plain\f7\fs24 
\par 
\par \plain\f5\fs24\b FOR EACH LAYER OF THE TRANSPORT SUBGRID:\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main13\}\plain\f4\fs24\b 13\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike IGENPT\plain\f7\fs24\cf2 \{linkID=510\}\plain\f7\fs24 (NSCOL,NSROW) \plain\f5\fs24 
\par \plain\f7\fs24 Module: U2DINT \plain\f5\fs18 *
\par \plain\f3\fs20 
\par \plain\f5\fs24\b IF \plain\f9\fs24\cf3\b\strike NODISP\plain\f9\fs24\cf2\b \{linkID=180\}\plain\f9\fs24\b  \plain\f8\fs24\b \'b9 \plain\f5\fs24\b 1 (If dispersion is included in simulation):\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main14\}\plain\f4\fs24\b 14\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike ALONG\plain\f7\fs24\cf2 \{linkID=520\}\plain\f7\fs24 (NSLAY)\plain\f5\fs24 
\par \plain\f7\fs24 Module: U1DREL \plain\f5\fs18 *
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main15\}\plain\f4\fs24\b 15\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike ATRANH\plain\f7\fs24\cf2 \{linkID=530\}\plain\f7\fs24 (NSLAY)\plain\f5\fs24 
\par \plain\f7\fs24 Module: U1DREL \plain\f5\fs18 *
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main16\}\plain\f4\fs24\b 16\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike ATRANV\plain\f7\fs24\cf2 \{linkID=540\}\plain\f7\fs24 (NSLAY)\plain\f5\fs24 
\par \plain\f7\fs24 Module: U1DREL \plain\f5\fs18 *
\par 
\par \plain\f5\fs24\b FOR EACH SIMULATION:\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main17\}\plain\f4\fs24\b 17\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike RF\plain\f7\fs24\cf2 \{linkID=550\}\plain\f7\fs24 (NSLAY)\plain\f5\fs24 
\par \plain\f7\fs24 Module: U1DREL \plain\f5\fs18 *
\par \plain\f5\fs24 
\par \plain\f5\fs24\b FOR EACH LAYER OF TRANSPORT SUBGRID:\plain\f5\fs24 
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main18a\}\plain\f4\fs24\b 18a\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike THCK\plain\f7\fs24\cf2 \{linkID=560\}\plain\f7\fs24 (NSCOL,NSROW)\plain\f5\fs24 .
\par \plain\f7\fs24 Module: U2DREL \plain\f5\fs18 *
\par \plain\f4\fs24\b 
\par \plain\f4\fs24\cf2\b \{target=Main18b\}\plain\f4\fs24\b 18b\plain\f7\fs24 . Data: \plain\f7\fs24\cf3\strike POR\plain\f7\fs24\cf2 \{linkID=570\}\plain\f7\fs24 (NSCOL,NSRO)\plain\f5\fs24 . (See: \plain\f5\fs24\cf3\strike Notes on thickness and porosity\plain\f5\fs24\cf2 \{linkID=580\}\plain\f5\fs24 .)
\par \plain\f7\fs24 Module: U2DREL \plain\f5\fs18 *\plain\f3\fs20 
\par }
90
Scribble90
MOC3D Arrray sizes



general:000090
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f2\fs32\cf2\b MOC3D Arrray sizes
\par \plain\f2\fs20 
\par \plain\f4\fs24 NSROW = number of subgrid rows =  \plain\f4\fs24\cf1\strike ISROW2\plain\f4\fs24\cf3 \{linkID=140\}\plain\f4\fs24  - \plain\f4\fs24\cf1\strike ISROW1\plain\f4\fs24\cf3 \{linkID=130\}\plain\f4\fs24  + 1
\par NSCOL = number of subgrid columns = \plain\f4\fs24\cf1\strike ISCOL2\plain\f4\fs24\cf3 \{linkID=160\}\plain\f4\fs24  - \plain\f4\fs24\cf1\strike ISCOL1\plain\f4\fs24\cf3 \{linkID=150\}\plain\f4\fs24  + 1
\par NSLAY = number of subgrid layers = \plain\f4\fs24\cf1\strike ISLAY2\plain\f4\fs24\cf3 \{linkID=120\}\plain\f4\fs24  - \plain\f4\fs24\cf1\strike ISLAY1\plain\f4\fs24\cf3 \{linkID=110\}\plain\f4\fs24  + 1
\par 
\par See also: \plain\f4\fs24\cf1\strike Notes on Transport Subgrid\plain\f4\fs24\cf3 \{linkID=170\}\plain\f3\fs20\cf1\strike 
\par \plain\f2\fs20 
\par \plain\f3\fs20\cf1\strike 
\par }
100
Scribble100
HEDMOC



general:000100
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b HEDMOC
\par \plain\f3\fs20 
\par \plain\f5\fs24 HEDMOC \plain\f4\fs24 A two-line character-string title describing the simulation (80 text characters per line).
\par 
\par Data sets \plain\f4\fs24\cf3\strike 1\plain\f4\fs24\cf2 \{linkTarget=Main1\}\plain\f4\fs24  and \plain\f4\fs24\cf3\strike 2\plain\f4\fs24\cf2 \{linkTarget=Main2\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par }
110
Scribble110
ISLAY1



general:000110
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ISLAY1
\par \plain\f3\fs20 
\par \plain\f6\fs24 ISLAY1 \plain\f4\fs24 Number of first (uppermost) layer for transport.
\par 
\par Data set \plain\f4\fs24\cf3\strike 3\plain\f4\fs24\cf2 \{linkTarget=Main3\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on Transport Subgrid\plain\f4\fs24\cf2 \{linkID=170\}
\par \plain\f3\fs20 
\par }
120
Scribble120
ISLAY2



general:000120
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ISLAY2
\par \plain\f3\fs20 
\par \plain\f6\fs24 ISLAY2 \plain\f4\fs24 Last layer for transport.
\par 
\par Data set \plain\f4\fs24\cf3\strike 3\plain\f4\fs24\cf2 \{linkTarget=Main3\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on Transport Subgrid\plain\f4\fs24\cf2 \{linkID=170\}
\par \plain\f3\fs20 
\par }
130
Scribble130
ISROW1



general:000130
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ISROW1
\par \plain\f3\fs20 
\par \plain\f6\fs24 ISROW1 \plain\f4\fs24 First row for transport.
\par 
\par Data set \plain\f4\fs24\cf3\strike 3\plain\f4\fs24\cf2 \{linkTarget=Main3\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on Transport Subgrid\plain\f4\fs24\cf2 \{linkID=170\}
\par \plain\f3\fs20 
\par 
\par }
140
Scribble140
ISROW2



general:000140
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ISROW2
\par \plain\f3\fs20 
\par \plain\f6\fs24 ISROW2 \plain\f4\fs24 Last row for transport.
\par 
\par Data set \plain\f4\fs24\cf3\strike 3\plain\f4\fs24\cf2 \{linkTarget=Main3\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on Transport Subgrid\plain\f4\fs24\cf2 \{linkID=170\}
\par \plain\f3\fs20 
\par 
\par }
150
Scribble150
ISCOL1



general:000150
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ISCOL1
\par \plain\f3\fs20 
\par \plain\f6\fs24 ISCOL1 \plain\f4\fs24 First column for transport.
\par 
\par Data set \plain\f4\fs24\cf3\strike 3\plain\f4\fs24\cf2 \{linkTarget=Main3\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on Transport Subgrid\plain\f4\fs24\cf2 \{linkID=170\}
\par \plain\f3\fs20 
\par 
\par }
160
Scribble160
ISCOL2



general:000160
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ISCOL2
\par \plain\f3\fs20 
\par \plain\f6\fs24 ISCOL2 \plain\f4\fs24 Last column for transport.
\par 
\par Data set \plain\f4\fs24\cf3\strike 3\plain\f4\fs24\cf2 \{linkTarget=Main3\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on Transport Subgrid\plain\f4\fs24\cf2 \{linkID=170\}
\par \plain\f3\fs20 
\par 
\par }
170
Scribble170
Notes on Transport Subgrid



general:000170
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}{\f6\froman Times-Italic;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f5\fs32\cf2\b Notes on Transport Subgrid
\par \plain\f5\fs20 
\par \plain\f3\fs22 Transport may be simulated within a subgrid, which is a "window" within the primary \plain\f6\fs22\i MODFLOW \plain\f3\fs22 grid used to simulate flow. Within the subgrid, the row and column spacing must be uniform, but thickness can vary from cell to cell and layer to layer. However, as discussed in the section reviewing \plain\f6\fs22\i MOC3D \plain\f3\fs22 assumptions, the range in thickness values (or product of thickness and porosity) should be as small as possible.
\par 
\par See also: \plain\f3\fs22\cf3\strike ISLAY1\plain\f3\fs22\cf1 \{linkID=110\}\plain\f3\fs22 , \plain\f3\fs22\cf3\strike ISLAY2\plain\f3\fs22\cf1 \{linkID=120\}\plain\f3\fs22 , \plain\f3\fs22\cf3\strike ISROW1\plain\f3\fs22\cf1 \{linkID=130\}\plain\f3\fs22 , \plain\f3\fs22\cf3\strike ISROW2\plain\f3\fs22\cf1 \{linkID=140\}\plain\f3\fs22  \plain\f3\fs22\cf3\strike ISCOL1\plain\f3\fs22\cf1 \{linkID=150\}\plain\f3\fs22 , \plain\f3\fs22\cf3\strike ISCOL2\plain\f3\fs22\cf1 \{linkID=160\}\plain\f3\fs22 
\par \plain\f3\fs22\cf3\strike MOC3D Arrray sizes\plain\f3\fs22\cf1 \{linkID=90\}\plain\f5\fs20 
\par }
180
Scribble180
NODISP



general:000180
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NODISP
\par \plain\f3\fs20 
\par \plain\f6\fs24 NODISP \plain\f4\fs24 Flag for no dispersion (set NODISP=1 if no dispersion in problem; this will reduce storage allocation).
\par 
\par Data set \plain\f4\fs24\cf3\strike 4\plain\f4\fs24\cf2 \{linkTarget=Main4\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f3\fs20 
\par }
190
Scribble190
DECAY



general:000190
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fnil Symbol;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fmodern Courier;}{\f8\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DECAY
\par \plain\f3\fs20 
\par \plain\f7\fs24 DECAY \plain\f5\fs24 First-order decay rate [1/T] (DECAY=0.0 indicates no decay occurs).
\par 
\par \plain\f5\fs22 The decay rate (\plain\f4\fs22 l\plain\f5\fs22 ) is related to the half life (\plain\f8\fs22\i t\plain\f5\fs16 1/2 \plain\f5\fs22 ) of a constituent by \plain\f4\fs22 l \plain\f5\fs22 = (ln 2)/\plain\f8\fs22\i t\plain\f5\fs16 1/2 \plain\f5\fs22 .
\par \plain\f3\fs20 
\par \plain\f5\fs24 Data set \plain\f5\fs24\cf3\strike 4\plain\f5\fs24\cf2 \{linkTarget=Main4\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par \plain\f3\fs20 
\par }
200
Scribble200
DIFFUS 



general:000200
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman Times-Italic;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DIFFUS 
\par \plain\f3\fs20 
\par \plain\f7\fs24 DIFFUS \plain\f4\fs24 Effective molecular diffusion coefficient [L^\plain\f4\fs20 2 \plain\f4\fs24 /T].
\par 
\par \plain\f4\fs22 The effective molecular diffusion coefficient (\plain\f6\fs22\i D\plain\f6\fs18\i m \plain\f4\fs22 ) includes the effect of tortuosity.\plain\f4\fs24 
\par 
\par Data set \plain\f4\fs24\cf3\strike 4\plain\f4\fs24\cf2 \{linkTarget=Main4\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par 
\par }
210
Scribble210
NPMAX



general:000210
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman Times-Italic;}{\f7\fmodern Courier;}{\f8\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NPMAX
\par \plain\f3\fs20 
\par \plain\f7\fs24 NPMAX \plain\f4\fs24 Maximum number of particles available for particle tracking of advective transport in \plain\f6\fs24\i MOC3D\plain\f4\fs24 . If set to zero, the model will calculate NPMAX according to the following equation:
\par 
\par NPMAX = 2\plain\f8\fs24 \'b4 \plain\f4\fs24\cf3\strike NPTPND\plain\f4\fs24\cf2 \{linkID=220\}\plain\f8\fs24 \'b4 \plain\f4\fs24 NSROW\plain\f8\fs24 \'b4 \plain\f4\fs24 NSCOL\plain\f8\fs24 \'b4 \plain\f4\fs24 NSLAY.
\par 
\par Data set \plain\f4\fs24\cf3\strike 5\plain\f4\fs24\cf2 \{linkTarget=Main5\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par }
220
Scribble220
NPTPND



general:000220
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman Times-Italic;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NPTPND
\par \plain\f3\fs20 
\par \plain\f7\fs24 NPTPND \plain\f4\fs24 Initial number of particles per cell in transport simulation (that is, at \plain\f6\fs24\i t \plain\f4\fs24 = 0.0). Valid options for default geometry of particle placement include 1, 2, 3, or 4 for one-dimensional transport simulation; 1, 4, 9, or 16 for two-dimensional transport simulation; and 1, 8, or 27 for three-dimensional transport simulation. The user can also customize initial placement of particles by specifying NPTPND as a negative number, in which case the minus sign is recognized as a flag to indicate custom placement is desired. In this case, the user must input local particle coordinates as described below.
\par 
\par Data set \plain\f4\fs24\cf3\strike 5\plain\f4\fs24\cf2 \{linkTarget=Main5\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par 
\par }
230
Scribble230
PNEWL



general:000230
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}{\f7\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b PNEWL
\par \plain\f3\fs20 
\par \plain\f6\fs24 PNEWL \plain\f4\fs24 Relative position in the layer (\plain\f7\fs24\i z\plain\f4\fs24 ) direction for initial placement of particle within any finite-difference cell.
\par 
\par Data set \plain\f4\fs24\cf3\strike 6\plain\f4\fs24\cf2 \{linkTarget=Main6\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par \plain\f4\fs24 See also: \plain\f4\fs24\cf3\strike Notes on initial particle coordinates\plain\f4\fs24\cf2 \{linkID=260\}\plain\f3\fs20 
\par }
240
Scribble240
PNEWR



general:000240
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Italic;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b PNEWR
\par \plain\f3\fs20 
\par \plain\f7\fs24 PNEWR \plain\f5\fs24 Relative position in the row (\plain\f4\fs24\i y\plain\f5\fs24 ) direction for initial placement of particle.
\par 
\par Data set \plain\f5\fs24\cf3\strike 6\plain\f5\fs24\cf2 \{linkTarget=Main6\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par See also: \plain\f5\fs24\cf3\strike Notes on initial particle coordinates\plain\f5\fs24\cf2 \{linkID=260\}\plain\f3\fs20 
\par 
\par }
250
Scribble250
PNEWC



general:000250
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}{\f7\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b PNEWC
\par \plain\f3\fs20 
\par \plain\f6\fs24 PNEWC \plain\f4\fs24 Relative position in the column (\plain\f7\fs24\i x\plain\f4\fs24 ) direction for initial placement of particle.
\par 
\par Data set \plain\f4\fs24\cf3\strike 6\plain\f4\fs24\cf2 \{linkTarget=Main6\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on initial particle coordinates\plain\f4\fs24\cf2 \{linkID=260\}\plain\f3\fs20 
\par 
\par }
260
Scribble260
Notes on initial particle coordinates



general:000260
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b Notes on initial particle coordinates
\par \plain\f3\fs20 
\par \plain\f4\fs22 The three new (or initial) particle coordinates are entered sequentially for each of the NPTPND particles. Each line contains the three relative local coordinates for the new particles, in order of layer, row, and column. There must be NPTPND lines of data, one for each particle. The local coordinate system range is from -0.5 to 0.5, and represents the relative distance within the cell about the node location at the center of the cell, so that the node is located at 0.0 in each direction.
\par 
\par See also: \plain\f4\fs22\cf2\strike PNEWL\plain\f4\fs22\cf1 \{linkID=230\}\plain\f4\fs22 , \plain\f4\fs22\cf2\strike PNEWR\plain\f4\fs22\cf1 \{linkID=240\}\plain\f4\fs22 , \plain\f4\fs22\cf2\strike PNEWC\plain\f4\fs22\cf1 \{linkID=250\}\plain\f3\fs20 
\par }
270
Scribble270
CELDIS



general:000270
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b CELDIS
\par \plain\f3\fs20 
\par \plain\f4\fs24 CELDIS \plain\f5\fs24 Maximum fraction of cell dimension that particle may move in one step (typically, 0.5 \plain\f7\fs24 \'a3 \plain\f5\fs24 CELDIS \plain\f7\fs24 \'a3\plain\f5\fs24 1.0 ).
\par 
\par Data set \plain\f5\fs24\cf3\strike 7\plain\f5\fs24\cf2 \{linkTarget=Main7\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par \plain\f3\fs20 
\par }
271
Scribble271
FZERO



general:000271
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fnil Symbol;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b FZERO
\par \plain\f3\fs20 
\par \plain\f7\fs24 FZERO \plain\f4\fs24 If the fraction of active cells having no particles exceeds FZERO, the program will automatically regenerate an initial particle distribution before continuing the simulation (typically, 0.01 \plain\f6\fs24 \'a3 \plain\f4\fs24 FZERO \plain\f6\fs24 \'a3 \plain\f4\fs24 0.05 ).
\par 
\par Data set \plain\f4\fs24\cf3\strike 7\plain\f4\fs24\cf2 \{linkTarget=Main7\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f3\fs20 
\par }
272
Scribble272
INTRPL



general:000272
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman Times-Italic;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b INTRPL
\par \plain\f3\fs20 
\par \plain\f7\fs24 INTRPL \plain\f4\fs24 Flag for interpolation scheme used to estimate velocity of particles. The default (INTRPL=1) will use a linear interpolation routine; if INTRPL=2, a scheme will be implemented that uses bilinear interpolation in the row and column (\plain\f6\fs24\i j \plain\f4\fs24 and \plain\f6\fs24\i i\plain\f4\fs24 ) directions only (linear interpolation will still be applied in the \plain\f6\fs24\i k\plain\f4\fs24 , or layer, direction). (See section "Discussion\emdash Choosing appropriate interpolation scheme.")
\par 
\par Data set \plain\f4\fs24\cf3\strike 7\plain\f4\fs24\cf2 \{linkTarget=Main7\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f3\fs20 
\par }
280
Scribble280
FDTMTH



general:000280
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fnil Symbol;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b FDTMTH
\par \plain\f3\fs20 
\par \plain\f7\fs24 FDTMTH \plain\f4\fs24 Weighting factor for temporal differencing of dispersion equation (0.0 \plain\f6\fs24 \'a3 \plain\f4\fs24 FDTMTH \plain\f6\fs24 \'a3 \plain\f4\fs24 1.0). We suggest using either a value of FDTMTH = 0.5, a centered-in-time (or Crank-Nicolson) approximation, or FDTMTH = 1.0, a backward-in-time (or fully implicit) approximation. [Default value = 1]
\par 
\par Data set \plain\f4\fs24\cf3\strike 7.1\plain\f4\fs24\cf2 \{linkTarget=Main7.1\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on default values for data set 7.1\plain\f4\fs24\cf2 \{linkID=330\}\plain\f4\fs24 
\par 
\par \plain\f3\fs20 
\par }
290
Scribble290
NCXIT



general:000290
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fnil Symbol;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NCXIT
\par \plain\f3\fs20 
\par \plain\f7\fs24 NCXIT \plain\f5\fs24 Number of iterations for the explicitly-lagged cross-dispersive flux terms (NCXIT \plain\f4\fs24 \'b3 \plain\f5\fs24 1). We suggest that the user initially specify a value of 2, but if the solution exhibits significant areas of negative concentrations, then the value of NCXIT should be increased to require more iterations, which typically will reduce the extent and magnitude of negative concentrations (at the cost of increased computational time). [Default value = 2]
\par 
\par Data set \plain\f5\fs24\cf3\strike 7.1\plain\f5\fs24\cf2 \{linkTarget=Main7.1\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par See also: \plain\f5\fs24\cf3\strike Notes on default values for data set 7.1\plain\f5\fs24\cf2 \{linkID=330\}\plain\f5\fs24 
\par 
\par \plain\f3\fs20 
\par }
300
Scribble300
IDIREC



general:000300
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b IDIREC
\par \plain\f3\fs20 
\par \plain\f6\fs24 IDIREC \plain\f4\fs24 Direction index for permutation of the red-black node renumbering scheme. The order is as follows: 1: x,y,z; 2: x,z,y; 3: y,x,z; 4: y,z,x; 5: z,x,y; and 6: z,y,x. The first direction index is advanced most rapidly and the last direction index is advanced least rapidly. In some cases, there can be a significant variation in the number of iterations needed to achieve convergence, depending on the order of the directions for the red-black renumbering. We suggest that the user initially specify IDIREC = 1. If this leads to a relatively large number of iterations (more than 10), then the user should experiment with alternate choices to determine the one requiring the fewest number of iterations for their particular problem. [Default value = 1]
\par 
\par Data set \plain\f4\fs24\cf3\strike 7.1\plain\f4\fs24\cf2 \{linkTarget=Main7.1\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on default values for data set 7.1\plain\f4\fs24\cf2 \{linkID=330\}\plain\f4\fs24 
\par 
\par \plain\f3\fs20 
\par }
310
Scribble310
EPSSLV



general:000310
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b EPSSLV
\par \plain\f3\fs20 
\par \plain\f4\fs24 EPSSLV \plain\f5\fs24 Tolerance on the relative residual for the conjugate-gradient solution of the matrix of the difference equations. We suggest that the user initially specify EPSSLV \plain\f7\fs24 \'a3 \plain\f5\fs24 10 \plain\f5\fs18 -5 \plain\f5\fs24 . An adequately small value of EPSSLV has the property that a smaller value does not change the numerical solution within the number of significant digtits desired by the user. In the single-precision code implemented here, EPSSLV should not be less than 10 \plain\f5\fs18 -7 \plain\f5\fs24 . [Default value = 10 \plain\f5\fs18 -5 \plain\f5\fs24 ]
\par 
\par Data set \plain\f5\fs24\cf3\strike 7.1\plain\f5\fs24\cf2 \{linkTarget=Main7.1\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par See also: \plain\f5\fs24\cf3\strike Notes on default values for data set 7.1\plain\f5\fs24\cf2 \{linkID=330\}\plain\f5\fs24 
\par 
\par \plain\f3\fs20 
\par }
320
Scribble320
MAXIT



general:000320
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b MAXIT
\par \plain\f3\fs20 
\par \plain\f6\fs24 MAXIT \plain\f4\fs24 Maximum number of iterations allowed for the iterative solution to the differernce equations for dispersive transport. In most cases, MAXIT = 100 is satisfactory. [Default value = 100]
\par 
\par Data set \plain\f4\fs24\cf3\strike 7.1\plain\f4\fs24\cf2 \{linkTarget=Main7.1\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on default values for data set 7.1\plain\f4\fs24\cf2 \{linkID=330\}\plain\f4\fs24 
\par 
\par \plain\f3\fs20 
\par }
330
Scribble330
Notes on default values for data set 7.1



general:000330
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Notes on default values for data set 7.1
\par \plain\f2\fs20 
\par \plain\f4\fs22 Entering a zero or out-of-range value for any of these five variables will cause the code to use the indicated default value.\plain\f6\fs20 
\par }
360
Scribble360
NPNTCL



general:000360
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NPNTCL
\par \plain\f3\fs20 
\par \plain\f4\fs24 NPNTCL \plain\f5\fs24 Flag for printing concentration data. If NPNTCL=-2, concentration data will be printed at the end of every stress period; if NPNTCL=-1, data will be printed at the end of every flow time step; if NPNTCL=0, data will be printed at the end of the simulation; if NPNTCL=N>0, data will be printed every Nth particle moves, and at the end of the simulation. Initial concentrations are always printed.
\par 
\par Data set \plain\f5\fs24\cf3\strike 8\plain\f5\fs24\cf2 \{linkTarget=Main8\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par \plain\f3\fs20 
\par }
370
Scribble370
ICONFM



general:000370
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}{\f8\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ICONFM
\par \plain\f3\fs20 
\par \plain\f4\fs24 ICONFM \plain\f5\fs24 Flag for output format control for printing concentration data. If concentration data are written to main output file (file type \plain\f4\fs24\cf3\strike CNCA\plain\f4\fs24\cf2 \{linkID=50\}\plain\f4\fs24  \plain\f5\fs24 is not used), ICONFM represents a code indicating the format style (\plain\f5\fs24\cf3\strike table 17\plain\f5\fs24\cf2 \{linkID=430\}\plain\f5\fs24 , also see Harbaugh and McDonald, 1996a, p. 19). If concentration data are written to a separate output file (file type \plain\f4\fs24\cf3\strike CNCA\plain\f4\fs24\cf2 \{linkID=50\}\plain\f4\fs24  \plain\f5\fs24 exists), specifying \plain\f4\fs24 ICONFM \plain\f7\fs24 \'b3 \plain\f5\fs24 0 will indicate that concentration data are to be written as a matrix of values for each layer of the subgrid, whereas specifying \plain\f4\fs24 ICONFM \plain\f5\fs24 < 0 will indicate that concentration data are to be written as a table of values having one row for each node in the subgrid and four columns (\plain\f8\fs24\i x\plain\f5\fs24 , \plain\f8\fs24\i y\plain\f5\fs24 , \plain\f8\fs24\i z\plain\f5\fs24 , and concentration), where \plain\f8\fs24\i x\plain\f5\fs24 , \plain\f8\fs24\i y\plain\f5\fs24 , and \plain\f8\fs24\i z \plain\f5\fs24 are the actual nodal coordinates in the length units of the model simulation. Note that we follow the \plain\f8\fs24\i MODFLOW \plain\f5\fs24 convention in that \plain\f8\fs24\i y \plain\f5\fs24 increases from top to bottom row, and \plain\f8\fs24\i z \plain\f5\fs24 increases from top layer to bottom layer. Also note that the \plain\f8\fs24\i x \plain\f5\fs24 and \plain\f8\fs24\i y \plain\f5\fs24 values are given with respect to the entire MODFLOW grid, but the \plain\f8\fs24\i z \plain\f5\fs24 location is calculated only for vertical distances within the layers of the transport subgrid. If data are written in matrix style, one header line precedes and identifies the data for each layer. If data are written as a table of values, one header line is written each time that concentration data are saved.
\par 
\par Data set \plain\f5\fs24\cf3\strike 8\plain\f5\fs24\cf2 \{linkTarget=Main8\} \plain\f5\fs24 of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
380
Scribble380
NPNTVL



general:000380
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NPNTVL
\par \plain\f3\fs20 
\par \plain\f4\fs24 NPNTVL \plain\f5\fs24 Flag for printing velocity data. If NPNTVL=-1, velocity data will be printed at the end of every stress period; if NPNTVL=0, data will be printed at the end of the simulation; if NPNTVL=N>0, data will be printed every Nth flow time steps, and at the end of the simulation.
\par 
\par Data set \plain\f5\fs24\cf3\strike 8\plain\f5\fs24\cf2 \{linkTarget=Main8\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
390
Scribble390
IVELFM



general:000390
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b IVELFM
\par \plain\f3\fs20 
\par \plain\f6\fs24 IVELFM \plain\f4\fs24 Specification for format of velocity data, if being printed in main output file (see \plain\f4\fs24\cf3\strike Table 17\plain\f4\fs24\cf2 \{linkID=430\}\plain\f4\fs24 ).
\par 
\par Data set \plain\f4\fs24\cf3\strike 8\plain\f4\fs24\cf2 \{linkTarget=Main8\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
400
Scribble400
NPNTDL



general:000400
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NPNTDL
\par \plain\f3\fs20 
\par \plain\f4\fs24 NPNTDL \plain\f5\fs24 Flag for printing dispersion equation coefficients that include cell dimension factors (see section "Program Segments"). If NPNTDL=-2, coefficients will be printed at the end of every stress period; if NPNTDL=-1, coefficients will be printed at the end of the simulation; if NPNTDL=0, coefficients will not be printed; if NPNTDL=N>0, coefficients will be printed every Nth flow time step.
\par 
\par Data set \plain\f5\fs24\cf3\strike 8\plain\f5\fs24\cf2 \{linkTarget=Main8\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
410
Scribble410
IDSPFM



general:000410
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b IDSPFM
\par \plain\f3\fs20 
\par \plain\f6\fs24 IDSPFM \plain\f4\fs24 Specification for format of dispersion equation coefficients (see \plain\f4\fs24\cf3\strike Table 17\plain\f4\fs24\cf2 \{linkID=430\}\plain\f4\fs24 ).
\par 
\par Data set \plain\f4\fs24\cf3\strike 8\plain\f4\fs24\cf2 \{linkTarget=Main8\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
420
Scribble420
NPNTPL



general:000420
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NPNTPL
\par \plain\f3\fs20 
\par \plain\f4\fs24 NPNTPL \plain\f5\fs24 Flag for printing particle locations in a separate output file (only used if file types "PRTA" or "PRTB" appear in the \plain\f7\fs24\i MOC3D \plain\f5\fs24 name file). If neither "PRTA" or "PRTB" is entered in the name file, NPNTPL will be read but ignored (so you must always have some value specified here). If either "PRTA" or "PRTB" is entered in the name file, initial particle locations will be printed to the separate file first, followed by particle data at intervals determined by the value of NPNTPL. If NPNTPL=-2, particle data will be printed at the end of every stress period; if NPNTPL=-1, data will be printed at the end of every flow time step; if NPNTPL=0, data will be printed at the end of the simulation; if NPNTPL=N>0, data will be printed every Nth particle moves, and at the end of the simulation.
\par 
\par Data set \plain\f5\fs24\cf3\strike 8\plain\f5\fs24\cf2 \{linkTarget=Main8\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
430
Scribble430
Formats associated with MOC3D print flags



general:000430
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss Helvetica;}{\f5\fswiss Arial;}{\f6\fswiss\fprq2 System;}{\f7\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Formats associated with MOC3D print flags
\par \plain\f2\fs20 
\par \pard\tx380\plain\f4\fs20\b Table 17. 
\par \pard\qc\tx380\plain\f4\fs20 
\par \pard\tx360\tx1260\tx2340\tx3300\tx4340\tx5400\plain\f4\fs20 \tab Print flag \tab Format \tab Print flag \tab Format \tab Print flag \tab Format
\par \plain\f7\fs20 \tab 0 \tab 10G11.4 \tab 7\tab 20F5.0 \tab 14 \tab 10F6.1
\par \tab 1 \tab 11G10.3 \tab 8\tab 20F5.1 \tab 15 \tab 10F6.2
\par \tab 2 \tab 9G13.6 \tab 9 \tab 20F5.2 \tab 16 \tab 10F6.3
\par \tab 3 \tab 15F7.1 \tab 10 \tab 20F5.3 \tab 17 \tab 10F6.4
\par \tab 4 \tab 15F7.2 \tab 11 \tab 20F5.4 \tab 18 \tab 10F6.5
\par \tab 5 \tab 15F7.3 \tab 12 \tab 10G11.4
\par \tab 6 \tab 15F7.4 \tab 13 \tab 10F6.0\plain\f3\fs20 
\par }
440
Scribble440
CNOFLO



general:000440
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b CNOFLO
\par \plain\f3\fs20 
\par \plain\f6\fs24 CNOFLO \plain\f4\fs24 Concentration associated with inactive cells of subgrid (used for
\par output purposes only).
\par 
\par Data set \plain\f4\fs24\cf3\strike 9\plain\f4\fs24\cf2 \{linkTarget=Main9\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f3\fs20 
\par 
\par }
450
Scribble450
CINT



general:000450
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b CINT
\par \plain\f3\fs20 
\par \plain\f4\fs24 CINT(\plain\f4\fs24\cf3\strike NSCOL\plain\f4\fs24\cf2 \{linkID=90\}\plain\f4\fs24 ,\plain\f4\fs24\cf3\strike NSROW\plain\f4\fs24\cf2 \{linkID=90\}\plain\f4\fs24 ) \plain\f5\fs24 Initial concentration.
\par \plain\f4\fs24 Module: U2DREL \plain\f5\fs18 *
\par \plain\f5\fs24 
\par Data set \plain\f5\fs24\cf3\strike 10\plain\f5\fs24\cf2 \{linkTarget=Main10\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par \plain\f3\fs20 
\par }
460
Scribble460
CINFL



general:000460
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Italic;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}{\f8\fmodern Courier;}{\f9\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b CINFL
\par \plain\f3\fs20 
\par \plain\f8\fs24 CINFL(ICINFL) \plain\f4\fs24\i C\plain\f7\fs24 \'a2 \plain\f5\fs24 to be associated with fluid inflow across the boundary of the subgrid.
\par \plain\f8\fs24 Module: U1DREL \plain\f5\fs18 *
\par \plain\f5\fs24 
\par Data set \plain\f5\fs24\cf3\strike 11\plain\f5\fs24\cf2 \{linkTarget=Main11\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par \plain\f5\fs18 
\par \plain\f5\fs22 The model assumes that the concentration outside of the subgrid is the same within each layer, so only one value of CINFL is specified for each layer within and adjacent to the subgrid. That is, the size of the array (ICINFL) is determined by the position of the subgrid with respect to the entire (primary) \plain\f4\fs22\i MODFLOW \plain\f5\fs22 grid. If the transport subgrid has the same dimensions as the flow grid, this parameter should not be included in the input data set. If the subgrid and flow grid have the same number of layers, but the subgrid has fewer rows or fewer columns, ICINFL=\plain\f5\fs22\cf3\strike NSLAY\plain\f5\fs22\cf2 \{linkID=90\}\plain\f5\fs22 . Values are also required if there is a flow layer above the subgrid and/or below the subgrid. The order of input is: \plain\f9\fs24 C'\plain\f4\fs24\i  \plain\f5\fs22 for first (uppermost) transport layer (if required); \plain\f9\fs24 C'\plain\f4\fs24\i  \plain\f5\fs22 for each successive (deeper) transport layer (if required); \plain\f9\fs24 C'\plain\f4\fs24\i  \plain\f5\fs22 for layer above subgrid (if required); and \plain\f9\fs24 C'\plain\f9\fs24\i  \plain\f5\fs22 for layer below subgrid (if required).\plain\f3\fs20 
\par }
470
Scribble470
NZONES



general:000470
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NZONES
\par \plain\f3\fs20 
\par \plain\f6\fs24 NZONES \plain\f4\fs24 Number of zone codes among fixed-head nodes in transport subgrid.\plain\f4\fs18 
\par \plain\f4\fs24 
\par Data set \plain\f4\fs24\cf3\strike 12\plain\f4\fs24\cf2 \{linkTarget=Main12\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on zones\plain\f4\fs24\cf2 \{linkID=500\}\plain\f3\fs20 
\par }
480
Scribble480
IZONE



general:000480
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b IZONE
\par \plain\f3\fs20 
\par \plain\f4\fs24 IZONE \plain\f5\fs24 Value identifying a particular zone.\plain\f5\fs18 
\par \plain\f5\fs24 
\par Data set \plain\f5\fs24\cf3\strike 12\plain\f5\fs24\cf2 \{linkTarget=Main12\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par See also: \plain\f5\fs24\cf3\strike Notes on zones\plain\f5\fs24\cf2 \{linkID=500\}\plain\f3\fs20 
\par 
\par }
490
Scribble490
ZONCON



general:000490
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ZONCON
\par \plain\f3\fs20 
\par \plain\f4\fs24 ZONCON \plain\f5\fs24 Source concentration associated with nodes in the zone defined by \plain\f5\fs24\cf3\strike IZONE\plain\f5\fs24\cf2 \{linkID=480\}\plain\f5\fs24  above.\plain\f5\fs18 
\par \plain\f5\fs24 
\par Data set \plain\f5\fs24\cf3\strike 12\plain\f5\fs24\cf2 \{linkTarget=Main12\}\plain\f5\fs24  of the \plain\f5\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f5\fs24\cf2 \{linkID=80\}\plain\f5\fs24 .
\par 
\par See also: \plain\f5\fs24\cf3\strike Notes on zones\plain\f5\fs24\cf2 \{linkID=500\}\plain\f3\fs20 
\par 
\par }
500
Scribble500
Notes on zones



general:000500
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\froman Times-Italic;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b Notes on zones
\par \plain\f3\fs20 
\par \plain\f4\fs22 Zones are defined within the IBOUND array in the BAS Package of \plain\f5\fs22\i MODFLOW \plain\f4\fs22 by specifying unique negative values for fixed-head nodes to be associated with separate fluid source concentrations. Each zone is defined by a unique value of IZONE and a concentration associated with it (\plain\f4\fs22\cf2\strike ZONCON\plain\f4\fs22\cf1 \{linkID=490\}\plain\f4\fs22 ). There must be \plain\f4\fs22\cf2\strike NZONES\plain\f4\fs22\cf1 \{linkID=470\}\plain\f4\fs22  lines of data, one for each zone. Note that values of \plain\f4\fs22\cf2\strike IZONE\plain\f4\fs22\cf1 \{linkID=480\}\plain\f4\fs22  in this list must be negative for consistency with the definitions of fixed-head nodes in the IBOUND array in the BAS Package. If a negative value of IBOUND is defined in the BAS package but is not assigned a concentration value here, \plain\f5\fs22\i MOC3D \plain\f4\fs22 will assume that the source concentrations associated with those nodes equal 0.0.\plain\f3\fs20 
\par }
510
Scribble510
IGENPT



general:000510
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b IGENPT
\par \plain\f3\fs20 
\par \plain\f6\fs24 IGENPT(\plain\f6\fs24\cf3\strike NSCOL\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ,\plain\f6\fs24\cf3\strike NSROW\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Flag to treat fluid sources and sinks as either "strong" or "weak."
\par \plain\f6\fs24 Module: U2DINT \plain\f4\fs18 *
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 13\plain\f4\fs24\cf2 \{linkTarget=Main13\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par \plain\f4\fs22 Notes:
\par Where fluid source is "strong," new particles are added to replace old particles as they are advected out of that cell. Where a fluid sink is "strong," particles are removed after they enter that cell and their effect accounted for. Where sources or sinks are weak, particles are neither added nor removed, and the source/sink effects are incorporated directly into appropriate changes in particle positions and concentrations. If IGENPT=0, the node will be considered a weak source or sink; if IGENPT=1, it will be a strong source or sink. See section on "Special Problems" and discussion by Konikow and Bredehoeft (1978).\plain\f3\fs20 
\par }
520
Scribble520
ALONG



general:000520
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ALONG
\par \plain\f3\fs20 
\par \plain\f6\fs24 ALONG(\plain\f6\fs24\cf3\strike NSLAY\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Longitudinal dispersivity.
\par \plain\f6\fs24 Module: U1DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 14\plain\f4\fs24\cf2 \{linkTarget=Main14\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par }
530
Scribble530
ATRANH



general:000530
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ATRANH
\par \plain\f3\fs20 
\par \plain\f6\fs24 ATRANH(\plain\f6\fs24\cf3\strike NSLAY\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Horizontal transverse dispersivity.
\par \plain\f6\fs24 Module: U1DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 15\plain\f4\fs24\cf2 \{linkTarget=Main15\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par }
540
Scribble540
ATRANV



general:000540
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b ATRANV
\par \plain\f3\fs20 
\par \plain\f6\fs24 ATRANV(\plain\f6\fs24\cf3\strike NSLAY\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Vertical transverse dispersivity.
\par \plain\f6\fs24 Module: U1DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 16\plain\f4\fs24\cf2 \{linkTarget=Main16\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f3\fs20 
\par }
550
Scribble550
RF



general:000550
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b RF
\par \plain\f3\fs20 
\par \plain\f6\fs24 RF(\plain\f6\fs24\cf3\strike NSLAY\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Retardation factor (RF=1 indicates no retardation).
\par \plain\f6\fs24 Module: U1DREL \plain\f4\fs18 *
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 17\plain\f4\fs24\cf2 \{linkTarget=Main17\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par \plain\f4\fs22 
\par Notes:
\par If RF=0.0 in input, the code automatically resets it as RF=1.0 to indicate no retardation.\plain\f3\fs20 
\par }
560
Scribble560
THCK



general:000560
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b THCK
\par \plain\f3\fs20 
\par \plain\f6\fs24 THCK(\plain\f6\fs24\cf3\strike NSCOL\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ,\plain\f6\fs24\cf3\strike NSROW\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Cell thickness.
\par \plain\f6\fs24 Module: U2DREL \plain\f4\fs18 *
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 18a\plain\f4\fs24\cf2 \{linkTarget=Main18a\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on thickness and porosity\plain\f4\fs24\cf2 \{linkID=580\}\plain\f4\fs24 
\par \plain\f4\fs22 
\par \plain\f3\fs20 
\par }
570
Scribble570
POR



general:000570
Writing



FALSE
13
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b POR
\par \plain\f3\fs20 
\par \plain\f6\fs24 POR(\plain\f6\fs24\cf3\strike NSCOL\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ,\plain\f6\fs24\cf3\strike NSROW\plain\f6\fs24\cf2 \{linkID=90\}\plain\f6\fs24 ) \plain\f4\fs24 Cell porosity.
\par \plain\f6\fs24 Module: U2DREL \plain\f4\fs18 *
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set \plain\f4\fs24\cf3\strike 18b\plain\f4\fs24\cf2 \{linkTarget=Main18b\}\plain\f4\fs24  of the \plain\f4\fs24\cf3\strike Main MOC3D Package Input (MOC)\plain\f4\fs24\cf2 \{linkID=80\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on thickness and porosity\plain\f4\fs24\cf2 \{linkID=580\}\plain\f4\fs24 
\par 
\par \plain\f3\fs20 
\par }
580
Scribble580
Notes on thickness and porosity



general:000580
Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fswiss\fprq2 System;}{\f5\froman Times-Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Notes on thickness and porosity
\par \plain\f2\fs20 
\par \plain\f5\fs22 The thickness and porosity are input as separate arrays for each layer of the transport subgrid. The sequence used in data set 18 is to first define the thickness of the first layer of the transport subgrid, and then define the porosity of that same layer. Next, that sequence is repeated for all succeeding layers. The product of thickness and porosity should not be allowed to vary greatly among cells in the transport subgrid.\plain\f3\fs20 
\par }
590
Scribble590
Source Concentration in Recharge File (CRCH)



general:000590
Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}{\f7\froman Times-Italic;}{\f8\fmodern Courier-Bold;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Source Concentration in Recharge File (CRCH)
\par \plain\f3\fs20 
\par \plain\f4\fs24 Concentrations in recharge, if the recharge package is used, are read from a separate unit
\par specified in the \plain\f7\fs24\i MOC3D \plain\f4\fs24 name file. This is defined using the file type (Ftype) "CRCH\plain\f7\fs24\i .\plain\f4\fs24 "
\par 
\par \plain\f4\fs24\b FOR EACH STRESS PERIOD, IF RECHARGE PACKAGE USED:\plain\f4\fs24 
\par 
\par \plain\f8\fs24\b 1\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike INCRCH\plain\f5\fs24\cf1 \{linkID=600\}\plain\f5\fs24  \plain\f4\fs22 
\par 
\par \plain\f8\fs24\b 2\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike CRECH\plain\f5\fs24\cf1 \{linkID=610\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f4\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *\plain\f3\fs20 
\par }
600
Scribble600
INCRCH



general:000600
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b INCRCH
\par \plain\f3\fs20 
\par \plain\f5\fs24 INCRCH \plain\f4\fs24 Flag to reuse or read new recharge concentrations.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 1 of the \plain\f4\fs24\cf1\strike Source Concentration in Recharge File (CRCH)\plain\f4\fs24\cf3 \{linkID=590\}\plain\f4\fs24 .
\par 
\par \plain\f4\fs22 Notes:
\par Read new recharge concentrations if INCRCH \plain\f7\fs24 \'b3 \plain\f4\fs22 0. Reuse recharge concentrations from the last stress period if INCRCH < 0.
\par \plain\f3\fs20 
\par }
610
Scribble610
CRECH



general:000610
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\froman Times-Roman;}{\f5\fswiss\fcharset1 Arial;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f5\fs32\cf2\b CRECH
\par \plain\f5\fs20 
\par \plain\f3\fs24 CRECH(\plain\f3\fs24\cf1\strike NSCOL\plain\f3\fs24\cf3 \{linkID=90\}\plain\f3\fs24 ,\plain\f3\fs24\cf1\strike NSROW\plain\f3\fs24\cf3 \{linkID=90\}\plain\f3\fs24 ) \plain\f4\fs24 Source concentration associated with fluid
\par entering the aquifer in recharge.
\par \plain\f3\fs24 Module: U2DREL \plain\f4\fs18 *\plain\f5\fs20 
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 2 of the \plain\f4\fs24\cf1\strike Source Concentration in Recharge File (CRCH)\plain\f4\fs24\cf3 \{linkID=590\}\plain\f4\fs24 .
\par 
\par \plain\f5\fs20 
\par }
620
Scribble620
Observation Well File (OBS)



general:000620
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\froman Times-Italic;}{\f7\fmodern Courier-Bold;}{\f8\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Observation Well File (OBS)
\par \plain\f3\fs20 
\par \plain\f4\fs24 Nodes of the transport subgrid can be designated as "observation wells." At each such node, the time, head, and concentration after each move increment will be written to a separate output file to facilitate graphical postprocessing of the calculated data. The input file for specifying observation wells is read if the file type (Ftype) "OBS" is included in the \plain\f6\fs24\i MOC3D \plain\f4\fs24 name file.
\par 
\par \plain\f4\fs24\b FOR EACH SIMULATION, IF \plain\f6\fs24\b OBS \plain\f4\fs24\b PACKAGE USED:\plain\f4\fs24 
\par 
\par \plain\f7\fs24\b 1\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike NUMOBS\plain\f5\fs24\cf1 \{linkID=630\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike IOBSFL\plain\f5\fs24\cf1 \{linkID=640\}\plain\f5\fs24 
\par \plain\f4\fs24 
\par \plain\f4\fs24\b FOR EACH OBSERVATION WELL:\plain\f4\fs24 
\par 
\par \plain\f7\fs24\b 2\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike LAYER\plain\f5\fs24\cf1 \{linkID=660\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike ROW\plain\f5\fs24\cf1 \{linkID=670\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike COLUMN\plain\f5\fs24\cf1 \{linkID=680\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike UNIT\plain\f5\fs24\cf1 \{linkID=690\}\plain\f5\fs24 
\par \plain\f3\fs20 
\par }
630
Scribble630
NUMOBS



general:000630
Writing



FALSE
10
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b NUMOBS
\par \plain\f3\fs20 
\par \plain\f5\fs24 NUMOBS \plain\f4\fs24 Number of observation wells.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 1 of the \plain\f4\fs24\cf3\strike Observation Well File (OBS)\plain\f4\fs24\cf2 \{linkID=620\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf3\strike Notes on NUMOBS and IOBSFL \plain\f4\fs24\cf2 \{linkID=650\}\plain\f4\fs24 .\plain\f3\fs20 
\par }
640
Scribble640
IOBSFL



general:000640
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b IOBSFL
\par \plain\f3\fs20 
\par \plain\f5\fs24 IOBSFL \plain\f4\fs24 If IOBSFL = 0, well data are saved in \plain\f4\fs24\cf1\strike NUMOBS\plain\f4\fs24\cf3 \{linkID=630\}\plain\f4\fs24  separate files. If IOBSFL>0, all observation well data will be written to one file, and the file name and unit number used for this file will be that of the first observation well in the list.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 1 of the \plain\f4\fs24\cf1\strike Observation Well File (OBS)\plain\f4\fs24\cf3 \{linkID=620\}\plain\f4\fs24 .
\par 
\par See also: \plain\f4\fs24\cf1\strike Notes on NUMOBS and IOBSFL \plain\f4\fs24\cf3 \{linkID=650\}\plain\f4\fs24 .\plain\f3\fs20 
\par 
\par }
650
Scribble650
Notes on NUMOBS and IOBSFL 



general:000650
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Notes on NUMOBS and IOBSFL 
\par \plain\f2\fs20 
\par \plain\f4\fs22 Notes:
\par If NUMOBS>1 and IOBSFL = 0, you must specify a unique unit number for each observation well and match those unit numbers to DATA file types and file names in the \plain\f6\fs22\i MOC3D \plain\f4\fs22 name file. If IOBSFL>0, you must specify a unique unit number for the first observation well and match that unit number to a DATA file type and file name in the \plain\f6\fs22\i MOC3D \plain\f4\fs22 name file.\plain\f3\fs20 
\par 
\par }
660
Scribble660
LAYER



general:000660
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fmodern Courier;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b LAYER
\par \plain\f3\fs20 
\par \plain\f6\fs24 LAYER \plain\f4\fs24 Layer of observation well node.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 2 of the \plain\f4\fs24\cf1\strike Observation Well File (OBS)\plain\f4\fs24\cf3 \{linkID=620\}\plain\f4\fs24 .
\par 
\par 
\par \plain\f3\fs20 
\par }
670
Scribble670
ROW



general:000670
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b ROW
\par \plain\f3\fs20 
\par \plain\f5\fs24 ROW \plain\f4\fs24 Row of observation well node.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 2 of the \plain\f4\fs24\cf1\strike Observation Well File (OBS)\plain\f4\fs24\cf3 \{linkID=620\}\plain\f4\fs24 .
\par 
\par 
\par \plain\f3\fs20 
\par }
680
Scribble680
COLUMN



general:000680
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b COLUMN
\par \plain\f3\fs20 
\par \plain\f5\fs24 COLUMN \plain\f4\fs24 Column of observation well node.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 2 of the \plain\f4\fs24\cf2\strike Observation Well File (OBS)\plain\f4\fs24\cf3 \{linkID=620\}\plain\f4\fs24 .
\par 
\par 
\par \plain\f3\fs20 
\par }
690
Scribble690
UNIT



general:000690
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b UNIT
\par \plain\f3\fs20 
\par \plain\f5\fs24 UNIT \plain\f4\fs24 Unit number for output file.
\par \plain\f4\fs22 
\par \plain\f4\fs24 Data set 2 of the \plain\f4\fs24\cf1\strike Observation Well File (OBS)\plain\f4\fs24\cf3 \{linkID=620\}\plain\f4\fs24 .\plain\f4\fs24 
\par 
\par 
\par 
\par \plain\f3\fs20 
\par }
700
Scribble700
AGE Input File



general:000700
Writing



FALSE
11
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss Helvetica-Bold;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fmodern Courier-Bold;}{\f7\fswiss\fprq2 System;}{\f8\froman Times-Italic;}{\f9\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b AGE Input File
\par \plain\f2\fs20 
\par \plain\f5\fs24 Activating the AGE package results in the model concentration output corresponding to ground-water ages. Age simulation is not compatible with most possible reaction terms in MOC3D, except for the double porosity option. Ground-water age is simulated with the advection dispersion transport equation by adding a uniform zero-order source term of unit (1) strength, corresponding to the rate of aging.
\par 
\par FOR EACH SIMULATION, IF \plain\f8\fs24\i AGE \plain\f5\fs24 PACKAGE USED:
\par 
\par \plain\f6\fs24\b 1\plain\f4\fs24 . Data: AGER8 \plain\f5\fs24 The aging rate (usually 1.0)
\par The aging rate (AGER8) is the ratio of model output age units to the simulation time units. If AGER8=1.0, the computed ages will be in the same time units as the transport simulation. AGER8 can be used to convert output ages to a more convenient time scale. For example, for output ages of years in a model simulation with time units of seconds, AGER8 = 1 / ( 365 * 24 * 60 * 60 ) = 1 / 31,536,000 = 3.171 x 10 \plain\f5\fs14 -8\plain\f5\fs24 .\plain\f9\fs20 
\par }
710
Scribble710
Double Porosity (DP) Input File



general:000710
Writing



FALSE
39
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fmodern Courier;}{\f6\fswiss Helvetica-Bold;}{\f7\froman Times-Italic;}{\f8\fswiss\fprq2 System;}{\f9\fmodern Courier-Bold;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Double Porosity (DP) Input File
\par \plain\f4\fs20 
\par \plain\f6\fs22\b 
\par \plain\f3\fs24 Activating the double-porosity package allows simulation of linear kinetic exchange between the flowing water and an immobile water phase. Within the double-porosity package, options are provided to include decay and zero-order growth reactions. After a single line of control parameters, double-porosity properties are listed. Input includes the initial concentration, the porosity of the immobile phase, and the linear exchange coefficient. If optional reactions are selected, those rate coefficients also must be provided. The exchange-rate coefficient and the reaction-rate coefficients can optionally change each flow-model stress period.
\par 
\par \plain\f3\fs24\b FOR EACH SIMULATION, IF \plain\f7\fs24\b DP \plain\f3\fs24\b PACKAGE USED:\plain\f3\fs24 
\par 
\par \plain\f9\fs24\b 1\plain\f5\fs24 . Data: \plain\f5\fs24\cf2\strike IDPFO\plain\f5\fs24\cf3 \{linkID=720\}\plain\f5\fs24  \plain\f5\fs24\cf2\strike IDPZO\plain\f5\fs24\cf3 \{linkID=730\}\plain\f5\fs24  \plain\f5\fs24\cf2\strike IDPTIM\plain\f5\fs24\cf3 \{linkID=740\}\plain\f5\fs24  \plain\f5\fs24\cf2\strike IDPPS\plain\f5\fs24\cf3 \{linkID=750\}\plain\f5\fs24 
\par \plain\f3\fs24 
\par \plain\f3\fs24\b FOR EACH LAYER OF TRANSPORT SUBGRID:
\par \plain\f3\fs24 
\par \plain\f9\fs24\b 2\plain\f5\fs24 . Data: \plain\f5\fs24\cf2\strike DPCON\plain\f5\fs24\cf3 \{linkID=760\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f3\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f3\fs18 *
\par 
\par \plain\f9\fs24\b 3\plain\f5\fs24 . Data: \plain\f5\fs24\cf2\strike DPPOR\plain\f5\fs24\cf3 \{linkID=770\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f3\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f3\fs18 *
\par 
\par \plain\f3\fs24\b FOR EACH SIMULATION (if IDPTIM=1, then FOR EACH FLOW-MODEL STRESS PERIOD) FOR EACH LAYER OF TRANSPORT SUBGRID:\plain\f3\fs24 
\par 
\par \plain\f9\fs24\b 4\plain\f5\fs24 . Data: \plain\f5\fs24\cf2\strike DPXRAT\plain\f5\fs24\cf3 \{linkID=780\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f3\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f3\fs18 *
\par 
\par \plain\f3\fs24\b IF IDPFO=1, OPTIONAL FIRST-ORDER DECAY REACTION IN DOUBLE POROSITY
\par \plain\f3\fs24 
\par \plain\f9\fs24\b 5\plain\f5\fs24 . Data: \plain\f5\fs24\cf2\strike DPFO\plain\f5\fs24\cf3 \{linkID=790\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f3\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f3\fs18 *
\par 
\par \plain\f3\fs24\b IF IDPZO=1, OPTIONAL ZERO-ORDER GROWTH REACTION IN DOUBLE POROSITY
\par \plain\f9\fs24\b 
\par 6\plain\f5\fs24 . Data: \plain\f5\fs24\cf2\strike DPZO\plain\f5\fs24\cf3 \{linkID=800\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f3\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f3\fs18 *
\par 
\par \plain\f3\fs24 For simulations using a multi-layer transport subgrid, input consists of 1, followed by 2 and 3 for
\par each subgrid layer, followed by 4 and optionally 5 and 6 for each subgrid layer. If more than one
\par flow-model stress period is used, and IDPTIM=1, then datasets 4 and optionally 5 and 6 are
\par repeated for each subgrid layer, for each subsequent stress period.\plain\f4\fs20 
\par }
720
Scribble720
IDPFO



general:000720
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\fmodern Courier;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b IDPFO
\par \plain\f3\fs20 
\par \plain\f4\fs24 IDPFO \plain\f5\fs24 If IDPFO=1, activate first-order decay reaction in immobile water phase.
\par \plain\f3\fs20 
\par }
730
Scribble730
IDPZO



general:000730
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman Times-Roman;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b IDPZO
\par \plain\f4\fs20 
\par \plain\f3\fs24 IDPZO \plain\f5\fs24 If IDPZO=1, activate zero-order growth reaction in immobile water phase.
\par \plain\f4\fs20 
\par }
740
Scribble740
IDPTIM



general:000740
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\fswiss\fprq2 System;}{\f5\froman Times-Roman;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDPTIM
\par \plain\f2\fs20 
\par \plain\f3\fs24 IDPTIM \plain\f5\fs24 If IDPTIM=1, double porosity rate coefficients change each stress period.
\par \plain\f6\fs20 
\par }
750
Scribble750
IDPPS



general:000750
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDPPS
\par \plain\f2\fs20 
\par \plain\f4\fs24 IDPPS \plain\f3\fs24 If IDPPS=1, print immobile-phase concentrations using aquifer-concentration formats and frequency.
\par If IDPPS=2, save immobile-phase concentrations using aquifer-concentration formats and frequency.
\par If IDPPS=3, print and save immobile-phase concentrations using aquifer-concentration formats and frequency.
\par \plain\f6\fs20 
\par }
760
Scribble760
DPCON



general:000760
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman Times-Roman;}{\f6\froman Times-Italic;}{\f7\fnil Symbol;}{\f8\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b DPCON
\par \plain\f4\fs20 
\par \plain\f3\fs24 DPCON(\plain\f3\fs24\cf3\strike NSCOL\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24 ,\plain\f3\fs24\cf3\strike NSROW\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24 ) \plain\f5\fs24 Initial concentration [ \'98 () \plain\f6\fs24\i C t \plain\f7\fs24 = \plain\f5\fs24 0 (ML\plain\f5\fs14 -3\plain\f5\fs24 )].
\par \plain\f3\fs24 Module: U2DREL \plain\f5\fs18 *
\par \plain\f4\fs20 
\par }
770
Scribble770
DPPOR



general:000770
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fprq2 System;}{\f6\fnil Symbol;}{\f7\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b DPPOR
\par \plain\f2\fs20 
\par \plain\f4\fs24 DPPOR(NSCOL,NSROW) \plain\f3\fs24 Porosity of immobile water phase [ \'98\plain\f6\fs25 e \plain\f3\fs24 (-)].
\par \plain\f4\fs24 Module: U2DREL \plain\f3\fs18 *
\par \plain\f7\fs20 
\par }
780
Scribble780
DPXRAT



general:000780
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\fswiss\fcharset1 Arial;}{\f5\fnil Symbol;}{\f6\froman Times-Roman;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf2\b DPXRAT
\par \plain\f4\fs20 
\par \plain\f3\fs24 DPXRAT(\plain\f3\fs24\cf3\strike NSCOL\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24 ,\plain\f3\fs24\cf3\strike NSROW\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24 ) \plain\f6\fs24 Linear exchange coefficient [ \plain\f5\fs25 b \plain\f6\fs24 (1/T)].
\par \plain\f3\fs24 Module: U2DREL \plain\f6\fs18 *
\par \plain\f4\fs20 
\par }
790
Scribble790
DPFO



general:000790
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fnil Symbol;}{\f6\fmodern Courier;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b DPFO
\par \plain\f4\fs20 
\par \plain\f6\fs24 DPFO(\plain\f6\fs24\cf2\strike NSCOL\plain\f6\fs24\cf3 \{linkID=90\}\plain\f6\fs24 ,\plain\f6\fs24\cf2\strike NSROW\plain\f6\fs24\cf3 \{linkID=90\}\plain\f6\fs24 ) \plain\f3\fs24 First-order decay reaction coefficient [ \'98\plain\f5\fs25 l\plain\f3\fs24  (1/T)].
\par \plain\f6\fs24 Module: U2DREL \plain\f3\fs18 *
\par \plain\f4\fs20 
\par }
800
Scribble800
DPZO



general:000800
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Italic;}{\f5\froman Times-Roman;}{\f6\fmodern Courier;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DPZO
\par \plain\f3\fs20 
\par \plain\f6\fs24 DPZO(\plain\f6\fs24\cf2\strike NSCOL\plain\f6\fs24\cf3 \{linkID=90\}\plain\f6\fs24 ,\plain\f6\fs24\cf2\strike NSROW\plain\f6\fs24\cf3 \{linkID=90\}\plain\f6\fs24 ) \plain\f5\fs24 Zero-order growth reaction rate [ \'98 \plain\f4\fs24\i Z \plain\f5\fs24 (ML\plain\f5\fs14 -3\plain\f5\fs24 T\plain\f5\fs14 -1\plain\f5\fs24 )].
\par \plain\f6\fs24 Module: U2DREL \plain\f5\fs18 *
\par \plain\f3\fs20 
\par }
810
Scribble810
Simple Reactions (DK) Input File



general:000810
Writing



FALSE
40
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}{\f7\fmodern Courier-Bold;}{\f8\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b Simple Reactions (DK) Input File
\par \plain\f3\fs20 
\par \plain\f4\fs24 Activating the simple reactions package allows incorporation of simple but flexible reaction terms into the basic transport solution. The original model includes decay and retardation, but retardation is assumed to be uniform within each model layer. In the original model, decay is assumed to occur at the same rate in the dissolved and sorbed phases and is uniform throughout the model and constant during the entire simulation period. The DK package allows retardation factors to be input cell by cell. Decay also can be controlled cell by cell. In addition, decay can occur at different rates in the dissolved and sorbed phases, and the decay rates can change at the beginning of each flow model stress period. Finally, a zero-order growth reaction also is included; it also can be specified cell-by-cell and can optionally change at the beginning of each flow model stress period. After the initial control parameters, the retardation factors for all layers are read, if that option is activated (IDKRF=1). If read, these retardation factors overwrite the values read in the main MOC input file. Next, decay coefficients and growth rates are read layer by layer: all of the active decay and growth reaction terms for layer 1 are read, then the same parameters for layer 2, and so on. This grouping is used because when the time-variable reaction rates are used, and the retardation factor is not allowed to change in time. With the grouping used here, the decay and growth input structure for the initial stress period is the same as that used during subsequent stress periods.
\par 
\par \plain\f4\fs24\b FOR EACH SIMULATION, IF \plain\f8\fs24\b DK \plain\f4\fs24\b PACKAGE USED:\plain\f4\fs24 
\par \plain\f7\fs24\b 
\par 1\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike IDKRF\plain\f5\fs24\cf1 \{linkID=820\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike IDKTIM\plain\f5\fs24\cf1 \{linkID=830\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike IDKFO\plain\f5\fs24\cf1 \{linkID=840\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike IDKFS\plain\f5\fs24\cf1 \{linkID=850\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike IDKZO\plain\f5\fs24\cf1 \{linkID=860\}\plain\f5\fs24  \plain\f5\fs24\cf3\strike IDKZS\plain\f5\fs24\cf1 \{linkID=870\}\plain\f5\fs24 
\par \plain\f4\fs24 
\par \plain\f4\fs24\b FOR EACH LAYER OF TRANSPORT SUBGRID:
\par \plain\f4\fs24 
\par \plain\f4\fs24\b IF IDKRF=1, OPTIONAL SPATIALLY VARIABLE RETARDATION FACTOR\plain\f4\fs24 
\par 
\par \plain\f7\fs24\b 2\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike DKRF\plain\f5\fs24\cf1 \{linkID=880\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f4\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24\b FOR EACH SIMULATION (if IDKTIM=1, then FOR EACH FLOW-MODEL STRESS PERIOD)
\par FOR EACH LAYER OF TRANSPORT SUBGRID:\plain\f4\fs24 
\par 
\par \plain\f4\fs24\b IF IDKFO=1, OPTIONAL DECAY RATE FOR DISSOLVED PHASE
\par \plain\f7\fs24\b 3\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike DKFO\plain\f5\fs24\cf1 \{linkID=890\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f4\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24\b IF IDKFS=1, OPTIONAL DECAY RATE FOR SORBED PHASE
\par \plain\f7\fs24\b 4\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike DKFS\plain\f5\fs24\cf1 \{linkID=900\}\plain\f5\fs24 (NSCOL,NSROW)\plain\f4\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24\b IF IDKZO=1, OPTIONAL ZERO-ORDER GROWTH RATE IN DISSOLVED PHASE\plain\f4\fs24 
\par \plain\f7\fs24\b 5\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike DKZO\plain\f5\fs24\cf1 \{linkID=910\}\plain\f5\fs24 (NSCOL,NSROW) \plain\f4\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24\b IF IDKZS=1, OPTIONAL ZERO-ORDER GROWTH RATE IN SORBED PHASE\plain\f4\fs24 
\par \plain\f7\fs24\b 6\plain\f5\fs24 . Data: \plain\f5\fs24\cf3\strike DKZS\plain\f5\fs24\cf1 \{linkID=920\}\plain\f5\fs24 (NSCOL,NSROW) \plain\f4\fs24 
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *
\par 
\par \plain\f4\fs24 Repeat 3-6, as needed, for each layer of the subgrid.
\par 
\par IF IDKTIM=1, Repeat 3-6, as needed, for all layers, for each flow-model stress period. Note that the retardation factor is constant in time and new values are not read for subsequent stress periods.\plain\f3\fs20 
\par }
820
Scribble820
IDKRF



general:000820
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDKRF
\par \plain\f2\fs20 
\par \plain\f4\fs24 IDKRF \plain\f3\fs24 If IDKRF=1, activate spatially variable retardation factor.
\par \plain\f6\fs20 
\par }
830
Scribble830
IDKTIM



general:000830
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\fswiss\fprq2 System;}{\f5\froman Times-Roman;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDKTIM
\par \plain\f2\fs20 
\par \plain\f3\fs24 IDKTIM \plain\f5\fs24 If IDKTIM=1, decay and growth reaction rates change in time at each stress period.
\par \plain\f6\fs20 
\par }
840
Scribble840
IDKFO



general:000840
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDKFO
\par \plain\f2\fs20 
\par \plain\f4\fs24 IDKFO \plain\f3\fs24 If IDKFO=1, activate spatially variable decay for dissolved phase.
\par \plain\f6\fs20 
\par }
850
Scribble850
IDKFS



general:000850
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDKFS
\par \plain\f2\fs20 
\par \plain\f4\fs24 IDKFS \plain\f3\fs24 If IDKFS=1, activate spatially variable decay for sorbed phase.
\par \plain\f6\fs20 
\par }
860
Scribble860
IDKZO



general:000860
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\fswiss\fprq2 System;}{\f5\fswiss\fcharset1 Arial;}{\f6\froman Times-Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDKZO
\par \plain\f2\fs20 
\par \plain\f3\fs24 IDKZO \plain\f6\fs24 If IDKZO=1, activate spatially variable zero-order growth for dissolved phase.
\par \plain\f5\fs20 
\par }
870
Scribble870
IDKZS



general:000870
Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\froman Times-Roman;}{\f5\fswiss\fprq2 System;}{\f6\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b IDKZS
\par \plain\f2\fs20 
\par \plain\f3\fs24 IDKZS \plain\f4\fs24 IF IDKZS=1, activate spatially variable zero-order growth for sorbed phase.
\par \plain\f6\fs20 
\par }
880
Scribble880
DKRF



general:000880
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Italic;}{\f5\froman Times-Roman;}{\f6\fmodern Courier;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b DKRF
\par \plain\f3\fs20 
\par \plain\f6\fs24 DKRF(\plain\f6\fs24\cf1\strike NSCOL\plain\f6\fs24\cf3 \{linkID=90\}\plain\f6\fs24 ,\plain\f6\fs24\cf1\strike NSROW\plain\f6\fs24\cf3 \{linkID=90\}\plain\f6\fs24 ) \plain\f5\fs24 Retardation factor [ \plain\f4\fs24\i R \plain\f4\fs14\i f \plain\f5\fs24 (-)].
\par \plain\f6\fs24 Module: U2DREL \plain\f5\fs18 *
\par \plain\f3\fs20 
\par }
890
Scribble890
DKFO



general:000890
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fcharset1 Arial;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f5\fs32\cf2\b DKFO
\par \plain\f5\fs20 
\par \plain\f4\fs24 DKFO(\plain\f4\fs24\cf3\strike NSCOL\plain\f4\fs24\cf1 \{linkID=90\}\plain\f4\fs24 ,\plain\f4\fs24\cf3\strike NSROW\plain\f4\fs24\cf1 \{linkID=90\}\plain\f4\fs24 ) \plain\f3\fs24 Decay rate coefficient for dissolved phase [\plain\f7\fs24 l\plain\f3\fs24  (1/T)].
\par \plain\f4\fs24 Module: U2DREL \plain\f3\fs18 *
\par \plain\f5\fs20 
\par }
900
Scribble900
DKFS



general:000900
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times-Roman;}{\f5\fmodern Courier;}{\f6\fswiss\fprq2 System;}{\f7\fnil Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b DKFS
\par \plain\f3\fs20 
\par \plain\f5\fs24 DKFS(\plain\f5\fs24\cf3\strike NSCOL\plain\f5\fs24\cf2 \{linkID=90\}\plain\f5\fs24 ,\plain\f5\fs24\cf3\strike NSROW\plain\f5\fs24\cf2 \{linkID=90\}\plain\f5\fs24 ) \plain\f4\fs24 Decay rate coefficient for sorbed phase [ \plain\f7\fs25 l\plain\f4\fs24  (1/T)].
\par \plain\f5\fs24 Module: U2DREL \plain\f4\fs18 *
\par \plain\f3\fs20 
\par }
910
Scribble910
DKZO



general:000910
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fmodern Courier;}{\f4\froman Times-Roman;}{\f5\fswiss\fcharset1 Arial;}{\f6\fswiss\fprq2 System;}{\f7\froman Times-Italic;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b DKZO
\par \plain\f5\fs20 
\par \plain\f3\fs24 DKZO(\plain\f3\fs24\cf2\strike NSCOL\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24 ,\plain\f3\fs24\cf2\strike NSROW\plain\f3\fs24\cf1 \{linkID=90\}\plain\f3\fs24 ) \plain\f4\fs24 Zero-order growth rate for dissolved phase [\plain\f7\fs24\i Z \plain\f4\fs24 (ML\plain\f4\fs14 -3\plain\f4\fs24 T\plain\f4\fs14 -1\plain\f4\fs24 )].
\par \plain\f3\fs24 Module: U2DREL \plain\f4\fs18 *
\par \plain\f5\fs20 
\par }
920
Scribble920
DKZS



general:000920
Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times-Roman;}{\f4\fmodern Courier;}{\f5\fswiss\fcharset1 Arial;}{\f6\froman Times-Italic;}{\f7\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b DKZS
\par \plain\f5\fs20 
\par \plain\f4\fs24 DKZS(\plain\f4\fs24\cf1\strike NSCOL\plain\f4\fs24\cf2 \{linkID=90\}\plain\f4\fs24 ,\plain\f4\fs24\cf1\strike NSROW\plain\f4\fs24\cf2 \{linkID=90\}\plain\f4\fs24 ) \plain\f3\fs24 Zero-order growth reaction rate for sorbed phase [ \plain\f6\fs24\i Z \plain\f3\fs24 (ML\plain\f3\fs14 -3\plain\f3\fs24 T\plain\f3\fs14 -1\plain\f3\fs24 )].
\par \plain\f4\fs24 Module: U2DREL \plain\f3\fs18 *
\par \plain\f5\fs20 
\par }
0
0
0
99
1 MODFLOW Name File=Scribble10
1 MODFLOW Source and Sink Packages=Scribble20
1 MOC3D Input Data Files=Scribble30
1 MOC3D Transport Name File (CONC)
2 MOC3D Transport Name File (CONC)=Scribble40
2 FTYPE=Scribble50
2 NUNIT=Scribble60
2 FNAME=Scribble70
1 Main MOC3D Package Input (MOC)
2 Main MOC3D Package Input (MOC)=Scribble80
2 MOC3D Arrray sizes=Scribble90
2 HEDMOC=Scribble100
2 ISLAY1=Scribble110
2 ISLAY2=Scribble120
2 ISROW1=Scribble130
2 ISROW2=Scribble140
2 ISCOL1=Scribble150
2 ISCOL2=Scribble160
2 Notes on Transport Subgrid=Scribble170
2 NODISP=Scribble180
2 DECAY=Scribble190
2 DIFFUS =Scribble200
2 NPMAX=Scribble210
2 NPTPND=Scribble220
2 PNEWL=Scribble230
2 PNEWR=Scribble240
2 PNEWC=Scribble250
2 Notes on initial particle coordinates=Scribble260
2 CELDIS=Scribble270
2 FZERO=Scribble271
2 INTRPL=Scribble272
2 FDTMTH=Scribble280
2 NCXIT=Scribble290
2 IDIREC=Scribble300
2 EPSSLV=Scribble310
2 MAXIT=Scribble320
2 Notes on default values for data set 7.1=Scribble330
2 NPNTCL=Scribble360
2 ICONFM=Scribble370
2 NPNTVL=Scribble380
2 IVELFM=Scribble390
2 NPNTDL=Scribble400
2 IDSPFM=Scribble410
2 NPNTPL=Scribble420
2 Formats associated with MOC3D print flags=Scribble430
2 CNOFLO=Scribble440
2 CINT=Scribble450
2 CINFL=Scribble460
2 NZONES=Scribble470
2 IZONE=Scribble480
2 ZONCON=Scribble490
2 Notes on zones=Scribble500
2 IGENPT=Scribble510
2 ALONG=Scribble520
2 ATRANH=Scribble530
2 ATRANV=Scribble540
2 RF=Scribble550
2 THCK=Scribble560
2 POR=Scribble570
2 Notes on thickness and porosity=Scribble580
1 Source Concentration in Recharge File (CRCH)
2 Source Concentration in Recharge File (CRCH)=Scribble590
2 NCRCH=Scribble600
2 CRECH=Scribble610
1 Observation Well File (OBS)
2 Observation Well File (OBS)=Scribble620
2 NUMOBS=Scribble630
2 IOBSFL=Scribble640
2 Notes on NUMOBS and IOBSFL =Scribble650
2 LAYER=Scribble660
2 ROW=Scribble670
2 COLUMN=Scribble680
2 UNIT=Scribble690
1 AGE Input File
2 AGE Input File=Scribble700
1 Double Porosity (DP) Input File
2 Double Porosity (DP) Input File=Scribble710
2 IDPFO=Scribble720
2 IDPZO=Scribble730
2 IDPTIM=Scribble740
2 IDPPS=Scribble750
2 DPCON=Scribble760
2 DPPOR=Scribble770
2 DPXRAT=Scribble780
2 DPFO=Scribble790
2 DPZO=Scribble800
1 Simple Reactions (DK) Input File
2 Simple Reactions (DK) Input File=Scribble810
2 IDKRF=Scribble820
2 IDKTIM=Scribble830
2 IDKFO=Scribble840
2 IDKFS=Scribble850
2 IDKZO=Scribble860
2 IDKZS=Scribble870
2 DKRF=Scribble880
2 DKFO=Scribble890
2 DKFS=Scribble900
2 DKZO=Scribble910
2 DKZS=Scribble920
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
