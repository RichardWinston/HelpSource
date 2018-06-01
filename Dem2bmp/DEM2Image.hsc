HelpScribble project file.
10
Yrbaneq S. Xbavxbj-050Q35
0
1
DEM2Image



TRUE


1
BrowseButtons()
0
FALSE

FALSE
1
10
Scribble10
DEM2Image




Writing



FALSE
14
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman\fcharset1 Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b DEM2Image\plain\f4\fs20 
\par \plain\f3\fs24 
\par DEM2Image reads Digital Elevation Models (DEMs) in the format described in \plain\f3\fs24\cf1\strike the DEM data users guide (version 5).\plain\f3\fs24\cf2 \{link=*! ExecFile("ftp://mapping.usgs.gov/pub/ti/DEM/demguide/")\}\plain\f3\fs24   The 1:250K DEM's at \plain\f3\fs24\cf1\strike http://edcwww.cr.usgs.gov/doc/edchome/ndcdb/ndcdb.html\plain\f3\fs24\cf2 \{link=*! ExecFile("http://edcwww.cr.usgs.gov/doc/edchome/ndcdb/ndcdb.html")\}\plain\f3\fs24  are in this format.  The DEMs are displayed as bitmaps in the Universal Transverse Mercator (UTM) projection.  The size of the bitmap is determined by the size of the display area when the DEM is read.  If the size of the display area is changed, you can select \plain\f3\fs24\b File|Refresh\plain\f3\fs24  to create a new bitmap at the current size.  You can zoom in and out but this, by itself, does not change the size of the bitmap.  To save a bitmap, select \plain\f3\fs24\b File|Save as BMP.\plain\f3\fs24   To save as a JPEG file, select \plain\f3\fs24\b File|Save as JPEG.\plain\f3\fs24 
\par 
\par If the check box labeled \plain\f3\fs24\b Make highest elevations red\plain\f3\fs24  is checked, elevations are color coded from red at the highest elevation to purple at the lowest elevation.  If it is not checked, the color scale is reversed.
\par 
\par It is possible to read more than one DEM to create a single bitmap.  To do so, just select multiple DEM files when you select \plain\f3\fs24\b File|Open\plain\f3\fs24 .  However, if the DEMs come from zones that use central meridians to calculate the UTM coordinates, you will be prompted to choose which central meridian you wish to use.
\par 
\par If you wish to emphasize the coastline, it is a good idea to leave the checkbox labeled \plain\f3\fs24\b Make locations with elevations of 0 white\plain\f3\fs24  checked. However, for areas that have elevations below sea level, you may wish to uncheck this checkbox.
\par 
\par When determining the central meridian for calculating the UTM coordinates, all UTM zones are treated as being exactly 6 degrees wide.  This is not correct for a few zones.  The area where this is not true is from 0 to 42 degrees east north of 72 degrees north and from 0 to 12 degrees east between 56 and 64 degrees north.  Because the author is unaware of any available DEMs in the format accepted by this program, no effort has been made to address this issue.
\par }
0
0
0
0
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
