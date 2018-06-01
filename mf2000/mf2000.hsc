HelpScribble project file.
9
Yrbaneq S. Xbavxbj-050Q35
0
1
mf2000



TRUE
0x0409   English (U.S.)

1
BrowseButtons()
0
FALSE

FALSE
24
10
Scribble10
GHB formats



ghbobs:000010
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b GHB formats
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 0.  [\plain\f4\fs22\cf1\strike Text\plain\f4\fs22\cf2 \{linkID=20\}\plain\f4\fs22 ]
\par     Item 0 is optional and can include as many lines as desired. Each line needs to begin with the "#" character in the first column. 
\par 1.  \plain\f4\fs22\cf1\strike NQGB\plain\f4\fs22\cf2 \{linkID=30\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike NQCGB\plain\f4\fs22\cf2 \{linkID=40\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22   (free format)
\par 2.  \plain\f4\fs22\cf1\strike TOMULT\plain\f4\fs22\cf2 \{linkID=60\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike EVFGB\plain\f4\fs22\cf2 \{linkID=70\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike IOWTQGB\plain\f4\fs22\cf2 \{linkID=80\}\plain\f4\fs22   (free format)
\par \pard\li284\plain\f4\fs22 Read items 3, 4, and 5 for each of NQGB groups of cells for which general-head-boundary observations are to be specified.
\par \pard\li720\fi-720\plain\f4\fs22 3.  \plain\f4\fs22\cf1\strike NQOB\plain\f4\fs22\cf2 \{linkID=90\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike NQCLGB\plain\f4\fs22\cf2 \{linkID=100\}\plain\f4\fs22  (free format)
\par \pard\li284\plain\f4\fs22 Read item 4 for each of NQOB observation times for this group of cells.  STATISTIC and STAT-FLAG are ignored if IOWTQGB is greater than zero.
\par \pard\li720\fi-720\plain\f4\fs22 4.  \plain\f4\fs22\cf1\strike OBSNAM\plain\f4\fs22\cf2 \{linkID=110\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike IREFSP\plain\f4\fs22\cf2 \{linkID=120\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike TOFFSET\plain\f4\fs22\cf2 \{linkID=130\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike HOBS  \plain\f4\fs22\cf2 \{linkID=140\}\plain\f4\fs22\cf1\strike STATISTIC\plain\f4\fs22\cf2 \{linkID=150\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike STAT-FLAG \plain\f4\fs22\cf2 \{linkID=160\}\plain\f4\fs22  \plain\f4\fs22\cf1\strike PLOT-SYMBOL\plain\f4\fs22\cf2 \{linkID=170\}\plain\f4\fs22   (free format)
\par \pard\li284\plain\f4\fs22 Read item 5 for each of |NQCLGB| cells in this group.
\par \pard\li720\fi-720\plain\f4\fs22 5.  \plain\f4\fs22\cf1\strike LAYER\plain\f4\fs22\cf2 \{linkID=180\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike ROW\plain\f4\fs22\cf2 \{linkID=190\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike COLUMN\plain\f4\fs22\cf2 \{linkID=200\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike FACTOR  \plain\f4\fs22\cf2 \{linkID=210\}\plain\f4\fs22 (free format)
\par \pard\li284\plain\f4\fs22 Read items 6 and 7 if \plain\f4\fs22\cf1\strike IOWTQGB\plain\f4\fs22\cf2 \{linkID=80\}\plain\f4\fs22  is greater than 0.
\par \pard\li720\fi-720\plain\f4\fs22 6.  \plain\f4\fs22\cf1\strike FMTIN\plain\f4\fs22\cf2 \{linkID=220\}\plain\f4\fs22   \plain\f4\fs22\cf1\strike IPRN\plain\f4\fs22\cf2 \{linkID=230\}\plain\f4\fs22  (free format)
\par 7.  \plain\f4\fs22\cf1\strike WTQ\plain\f4\fs22\cf2 \{linkID=240\}\plain\f4\fs22 (1,1), WTQ(1,2), WTQ(1,3), ... , WTQ(1,\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 ) (format: \plain\f4\fs22\cf1\strike FMTIN\plain\f4\fs22\cf2 \{linkID=220\}\plain\f4\fs22 )
\par \pard\li284\plain\f4\fs22 WTQ(2,1), WTQ(2,2), WTQ(2,3), ... , WTQ(2,\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 )
\par ...
\par WTQ(\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 ,1), WTQ(\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 ,2), WTQ(\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 ,3), ... , WTQ(\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 ,\plain\f4\fs22\cf1\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22 )
\par \pard\plain\f3\fs20 
\par }
20
Scribble20
Text



ghbobs:000020
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Text
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 0.
\par \pard\plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Text - is a character string (maximum of 79 characters) that starts in column 2. Any characters can be included in Text. The "#" character needs to be in column 1. Text is printed when the file is read and provides an opportunity for the user to include information about the model both in the input file and the associated output file.
\par \pard\plain\f3\fs20 
\par }
30
Scribble30
NQGB



ghbobs:000030
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b NQGB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 1.
\par 
\par NQGB--is the number of cell groups for which general-head-boundary observations are listed.
\par \pard\plain\f3\fs20 
\par }
40
Scribble40
NQCGB



ghbobs:000040
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b NQCGB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 1.
\par 
\par NQCGB--is greater than or equal to the total number of cells in all cell groups.  NQCGB must be greater than or equal to the sum of all |\plain\f4\fs22\cf3\strike NQCLGB\plain\f4\fs22\cf1 \{linkID=100\}\plain\f4\fs22 |.
\par \pard\plain\f3\fs20 
\par }
50
Scribble50
NQTGB



ghbobs:000050
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b NQTGB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 1.
\par 
\par NQTGB--is the total number of general-head-boundary observations for all cell groups.  NQTGB must equal the sum of all \plain\f4\fs22\cf1\strike NQOB\plain\f4\fs22\cf3 \{linkID=90\}\plain\f4\fs22 , which are specified in repetitions of item 3 in the input file.
\par \pard\plain\f3\fs20 
\par }
60
Scribble60
TOMULT



ghbobs:000060
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b TOMULT
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 2.
\par 
\par TOMULT--is the time-offset multiplier for general-head-boundary observations.  The product of TOMULT and \plain\f4\fs22\cf3\strike TOFFSET\plain\f4\fs22\cf1 \{linkID=130\}\plain\f4\fs22  must produce a time value in units consistent with other model input.
\par \pard\plain\f3\fs20 
\par }
70
Scribble70
EVFGB



ghbobs:000070
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b EVFGB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 2.
\par 
\par EVFGB--is the error variance multiplier for observations represented by the General-Head Boundary Package, and is used to calculate the weights as described below in the explanation of \plain\f4\fs22\cf1\strike STATISTIC\plain\f4\fs22\cf3 \{linkID=150\}\plain\f4\fs22 . EVFGB makes it easy to change uniformly the weights for all flow observations represented using the General-Head Boundary Package.
\par \pard\plain\f3\fs20 
\par }
80
Scribble80
IOWTQGB



ghbobs:000080
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b IOWTQGB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 2.
\par 
\par IOWTQGB\emdash is a flag that indicates that the variance-covariance matrix on general-head-boundary observations is to be read into array WTQ.  If IOWTQGB equals zero, weights are assigned using \plain\f4\fs22\cf3\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  of item 4; if it is greater than zero, items 6 and 7 are read.
\par \pard\plain\f3\fs20 
\par }
90
Scribble90
NQOB



ghbobs:000090
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b NQOB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 3.
\par 
\par NQOB--is the number of times at which flows are observed for the group of cells.
\par \pard\plain\f3\fs20 
\par }
100
Scribble100
NQCLGB



ghbobs:000100
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b NQCLGB
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 3.
\par 
\par NQCLGB--is a flag, and the absolute value of NQCLGB is the number of cells in the group.  If NQCLGB is less than zero, \plain\f4\fs22\cf1\strike FACTOR\plain\f4\fs22\cf3 \{linkID=210\}\plain\f4\fs22  = 1.0 for all cells in the group.
\par \pard\plain\f3\fs20 
\par }
110
Scribble110
OBSNAM



ghbobs:000110
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b OBSNAM
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par OBSNAM--is a string of 1 to 12 nonblank characters used to identify the observation.
\par \pard\plain\f3\fs20 
\par }
120
Scribble120
IREFSP



ghbobs:000120
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b IREFSP
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par IREFSP--is the reference stress period to which observation times are referenced.  The reference point is the beginning of the stress period.
\par \pard\plain\f3\fs20 
\par }
130
Scribble130
TOFFSET



ghbobs:000130
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\froman\fprq2\fcharset2 Symbol;}{\f6\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf2\b TOFFSET
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par TOFFSET--is the time offset, from the beginning of stress period \plain\f4\fs22\cf3\strike IREFSP\plain\f4\fs22\cf1 \{linkID=120\}\plain\f4\fs22 , of the observation.  TOFFSET must be in units such that the product of \plain\f4\fs22\cf3\strike TOMULT\plain\f4\fs22\cf1 \{linkID=60\}\plain\f4\fs22  and TOFFSET is in time units consistent with other model input.  TOFFSET and \plain\f4\fs22\cf3\strike TOMULT\plain\f4\fs22\cf1 \{linkID=60\}\plain\f4\fs22  from the GBOB file and values of PERLEN, NSTP, and TSMULT from the DIS file are used to determine the stress period, time step, and time during the time step for the observation.  To specify that an observation is for a steady-state model solution, specify \plain\f4\fs22\cf3\strike IREFSP\plain\f4\fs22\cf1 \{linkID=120\}\plain\f4\fs22  as the stress-period number of the steady-state stress period, and specify TOFFSET such that \plain\f4\fs22\cf3\strike TOMULT\plain\f4\fs22\cf1 \{linkID=60\}\plain\f5\fs22 \'b4\plain\f4\fs22 TOFFSET is less than or equal to PERLEN for the stress period; if PERLEN is zero, set TOFFSET to zero.  If the observation falls within a time step, the simulated equivalent is calculated by linearly interpolating values from the beginning and end of the time step. If the first stress period is transient and the observation falls within the first time step, the simulated equivalent from the end of the time step is used because no flow from the beginning of the time step is available for interpolation. 
\par \pard\plain\f3\fs20 
\par }
140
Scribble140
HOBS



ghbobs:000140
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b HOBS
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par HOBS--is the observed general-head-boundary gain (if HOBS is negative) or loss (if HOBS is positive). The terms 'gain' and 'loss' are from the perspective of the surface-water body, so that gains occur when water leaves the ground-water system, and losses occur when water flows into the ground-water system.
\par \pard\plain\f3\fs20 
\par }
150
Scribble150
STAT



ghbobs:000150
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green128\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b STAT
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par STAT--is the value from which the weight for the observation is calculated as determined using \plain\f4\fs22\cf1\strike STAT-FLAG\plain\f4\fs22\cf2 \{linkID=160\}\plain\f4\fs22 .  STATISTIC is ignored if IOWTQGB is greater than zero, in which case WTQ of item 7 is used to define the weighting.
\par \pard\plain\f3\fs20 
\par }
160
Scribble160
STAT-FLAG



ghbobs:000160
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}{\f6\froman\fprq2\fcharset2 Symbol;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf3\b STAT-FLAG
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par STAT-FLAG--is a flag identifying what \plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  is and how the weight is calculated.  STAT-FLAG is ignored if IOWTQGB is greater than zero.
\par \pard\li1152\fi-576\plain\f4\fs22 STAT-FLAG = 0, \plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  is a scaled variance, weight = EV/(\plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  \plain\f6\fs22 \'b4\plain\f4\fs22  \plain\f4\fs22\cf2\strike EVFGB\plain\f4\fs22\cf1 \{linkID=70\}\plain\f4\fs22 )
\par STAT-FLAG = 1, \plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  is a scaled standard deviation, weight = EV/(\plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs15\up11 2 \plain\f6\fs22 \'b4\plain\f4\fs22  \plain\f4\fs22\cf2\strike EVFGB\plain\f4\fs22\cf1 \{linkID=70\}\plain\f4\fs22 )
\par STAT-FLAG = 2, \plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  is a scaled coefficient of variation, weight = EV/[(\plain\f4\fs22\cf2\strike STATISTIC\plain\f4\fs22\cf1 \{linkID=150\}\plain\f4\fs22  \plain\f6\fs22 \'b4\plain\f4\fs22  \plain\f4\fs22\cf2\strike HOBS\plain\f4\fs22\cf1 \{linkID=140\}\plain\f4\fs22 )\plain\f4\fs15\up11 2 \plain\f6\fs22 \'b4\plain\f4\fs22  \plain\f4\fs22\cf2\strike EVFGB\plain\f4\fs22\cf1 \{linkID=70\}\plain\f4\fs22 ]
\par \pard\plain\f3\fs20 
\par }
170
Scribble170
PLOT-SYMBOL



ghbobs:000170
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b PLOT-SYMBOL
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 4.
\par 
\par PLOT-SYMBOL--is an integer that will be written to output files intended for graphical analysis to allow control of the symbols used when plotting data.
\par \pard\plain\f3\fs20 
\par }
180
Scribble180
LAYER



ghbobs:000180
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b LAYER
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 5.
\par 
\par LAYER--is the layer index of a general-head-boundary cell included in the cell group.
\par \pard\plain\f3\fs20 
\par }
190
Scribble190
ROW



ghbobs:000190
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b ROW
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 5.
\par 
\par ROW--is the row index of a general-head-boundary cell included in the cell group.
\par \pard\plain\f3\fs20 
\par }
200
Scribble200
COLUMN



ghbobs:000200
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b COLUMN
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 5.
\par 
\par COLUMN--is the column index of a general-head-boundary cell included in the cell group.
\par \pard\plain\f3\fs20 
\par }
210
Scribble210
FACTOR



ghbobs:000210
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b FACTOR
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 5.
\par 
\par FACTOR--is the portion of the simulated gain or loss in the cell that is included in the total simulated gain or loss for this cell group (f\plain\f4\fs15\dn4 n\plain\f4\fs22  of eq. 9).
\par \pard\plain\f3\fs20 
\par }
220
Scribble220
FMTIN



ghbobs:000220
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b FMTIN
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 6.
\par 
\par FMTIN--is the Fortran format to be used in reading each line of the variance-covariance matrix used to calculate the weighting.  The format needs to be enclosed in parentheses and needs to accommodate real numbers. 
\par \pard\plain\f3\fs20 
\par }
230
Scribble230
IPRN



ghbobs:000230
Writing



FALSE
22
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b IPRN
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 6.
\par 
\par IPRN--is a flag identifying the format with which the variance-covariance matrix is printed.  If IPRN is less than zero, the matrix is not printed. 
\par 
\par \pard\li284\plain\f4\fs22 Permissible values of IPRN and corresponding formats are:
\par 
\par \pard\li1140\plain\f4\fs22 IPRN\tab FORMAT\tab 
\par \pard\li1340\plain\f4\fs22 1\tab 11G10.3\tab 
\par 2\tab 10G11.4\tab \tab 
\par 3\tab 9G12.5\tab \tab 
\par 4\tab 8G13.6\tab 
\par 5\tab 8G14.7\tab \tab 
\par 6\tab 6G10.3\tab 
\par 7\tab 5G10.3
\par 8\tab 5G12.5
\par 9\tab 4G13.6
\par 10\tab 4G14.7\plain\f3\fs20 
\par }
240
Scribble240
WTQ



ghbobs:000240
Writing



FALSE
9
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman\fprq2 TIMES;}{\f5\froman\fprq2\fcharset2 Symbol;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b WTQ
\par \plain\f3\fs20 
\par \pard\li720\fi-720\plain\f4\fs22 Data Set: 7.
\par 
\par WTQ--is an \plain\f4\fs22\cf3\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22  by \plain\f4\fs22\cf3\strike NQTGB\plain\f4\fs22\cf2 \{linkID=50\}\plain\f4\fs22  array containing the variance-covariance matrix on general-head-boundary observations.  For elements WTQ(I,J), if I \plain\f5\fs22 \'b9\plain\f4\fs22  J, WTQ(I,J) is the covariance between observations I and J; if I = J, WTQ(I,J) is the variance of observation I.  Note that the variance-covariance matrix is symmetric, but the entire matrix (upper and lower parts) must be entered.
\par \pard\plain\f3\fs20 
\par }
0
0
0
32
1 GHB formats=Scribble10
1 0
2 Text=Scribble20
1 1
2 NQGB=Scribble30
2 NQCGB=Scribble40
2 NQTGB=Scribble50
1 2
2 TOMULT=Scribble60
2 EVFGB=Scribble70
2 IOWTQGB=Scribble80
1 3
2 NQOB=Scribble90
2 NQCLGB=Scribble100
1 4
2 OBSNAM=Scribble110
2 IREFSP=Scribble120
2 TOFFSET=Scribble130
2 HOBS=Scribble140
2 STAT=Scribble150
2 STAT-FLAG=Scribble160
2 PLOT-SYMBOL=Scribble170
1 5
2 LAYER=Scribble180
2 ROW=Scribble190
2 COLUMN=Scribble200
2 FACTOR=Scribble210
1 6
2 FMTIN=Scribble220
2 IPRN=Scribble230
1 7
2 WTQ=Scribble240
6
*InternetLink
-2147483640
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
-2147483640
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
