!*SEQ0.04  11/01/00  ISCFDS  6000 DDL    OK60PCTL   04000                      !
!*SYNC.04  12/07/98  ISCFDS  1300 DDL    OK13PCTL   04000                      !
!*SYNC.03  08/28/98  ISCFDS  1300 DDL    OK13PCTL   03000                      !
!*SYNC.03  08/22/97  ISCFDS  1100 DDL    OK11PCTL   03000                      !
!*SYNC.02  06/25/96  ISCFDS  1100 DDL    OK11PCTL   02000                      !
!*SEQ2.00  02/27/96  ISCFDS  1100 DDL    OK11PCTL                              !
?page "ISCF - Integrated Server Control File"
?nocomments
*#####################################################################!!00005
*#                                                                   #!!00006
*#                            B A S E 2 4                            #!!00007
*#                            -----------                            #!!00008
*#                                                                   #!!00009
*#             Integrated Server Control File Definitions            #!!00010
*#                                                                   #!!00011
*#                    Proprietary Software Product                   #!!00012
*#                                                                   #!!00013
*#                    Applied Communications, Inc.                   #!!00014
*#                       330 South 108th Avenue                      #!!00015
*#                       Omaha, Nebraska  68154                      #!!00016
*#                           (402) 390-7600                          #!!00017
*#                                                                   #!!00018
*#          Copyright by Applied Communications, Inc.  1994          #!!00019
*#                        All Rights Reserved                        #!!00020
*#                                                                   #!!00021
*#####################################################################!!00022
*                                                                     !!00023
* Record of Changes:                                                  !!00024
*                                                                     !!00025
* Date      Version    Person                                         !!00026
* --------  -------    ------                                         !!00027
* 01-01-94  1.0.00     JHK       Initial Release                      !!00028
* Symptom:                                                            !!00029
* Problem:                                                            !!00030
* Fix:                                                                !!00031
* Implementation Dependencies:                                        !!00032
* Reference:                                                          !!00033
?section iscf
?setsection iscf
?page "Integrated Server Control File Definition"
**********************************************************************!!00040
*            Integrated Server Control File                          *!!00041
**********************************************************************!!00042
*                                                                    *!!00043
*   Identification                                                   *!!00044
*                                                                    *!!00045
*     The ISCF file is used to send commands to an Integrated Server.*!!00046
*     A command is entered once on the ISCF.  Each server reads      *!!00047
*     the ISCF for commands.                                         *!!00048
*                                                                    *!!00049
*   Security                                                         *!!00050
*                                                                    *!!00051
*     The ISCF is secured under Tandem's group level security so     *!!00052
*     that only authorized network operators may access (or start    *!!00053
*     programs which access) the file.                               *!!00054
*                                                                    *!!00055
*       USER ID         = <Base24 node name>.*                       *!!00056
*       FILE CODE       = 0                                          *!!00057
*       ACCESS SECURITY = GGGG                                       *!!00058
*                                                                    *!!00059
*   Usage                                                            *!!00060
*                                                                    *!!00061
*       Server Config  o          SEQ  (  )    w       shared        *!!00062
*       PCTL Object    i/o        SEQ  (  )    rw      shared        *!!00063
*       Refresh        i/o        SEQ  (  )    rw      shared        *!!00064
*                                                                    *!!00065
**********************************************************************!!00066
?comments
record iscf.                    file is "ISCF" entry-sequenced,        !00069
                                maxextents 100, ext (16,16).           !00070
                                                                       !00071
*             The IS process' PPD name.  If all                       !!00072
*             processes are to receive the command the value of       !!00073
*             "ALL" is supplied.                                      !!00074
                                                                       !00075
  02 ppd-nam                    type ppd-nam-def.                      !00076
  02 user-fld                   pic x.                                 !00077
                                                                       !00078
*             The Object ID of the object to receive the command.     !!00079
                                                                       !00080
  02 obj-id                     type *.                                !00081
                                                                       !00082
*             The type of request message.                            !!00083
                                                                       !00084
  02 fnct-cde                   type binary 16.                        !00085
                                                                       !00086
*             The byte length of the Function Data.                   !!00087
                                                                       !00088
  02 data-lgth                  type binary 16.                        !00089
                                                                       !00090
*             The Function Data.                                      !!00091
                                                                       !00092
  02 fnct-data                  pic x(256).                            !00093
                                                                       !00094
*             The Object name of the object to receive the command.   !!00095
                                                                       !00096
  02 obj-nam                    type obj-nam-def.                      !00097
                                                                       !00098
  end                                                                  !00099
                                                                       !00100
?setsection
