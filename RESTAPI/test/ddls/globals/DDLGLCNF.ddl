**SEQ0.04  11/01/00  DDLGLCNF6001 DDL    BA60DDL  BA04000  A                 ***
**SYNC.04  12/09/98  DDLGLCNF5301 DDL    BA53DDL  BA04000  A                 ***
**SYNC.03  08/28/98  DDLGLCNF5301 DDL    BA53DDL  BA03000  A                 ***
**SYNC.03  08/22/97  DDLGLCNF5101 DDL    BA51DDL  BA03000  A                 ***
**SYNC.02  06/25/96  DDLGLCNF5101 DDL    BA51DDL  BA02000  A                 ***
**FIX2.00  06/06/95  DDLGLCNF5101 DDL    BA51DDL  BA51029  A                 ***
!*SEQ2.00  10/20/92  DDLGLCNF5100 DDL    BA51DDL                               !
                                                                       !00000A00
********************************************************************** !00000A01
*                   RELEASE 5.1                                      * !00000A02
********************************************************************** !00000A03
* 95JUN01     MLB/598                                                  !00000A04
* SYMPTOM:    BASE24 Release 5.1 enhancements                          !00000A05
* PROBLEM:    (E) None                                                 !00000A06
* FIX:        Modified all file references to use TACL Defines in      !00000A07
*             order to use the MAKE Utility.                           !00000A08
* IMPLEMENT:  Apply fix and re-MAKE                                    !00000A09
* REFERENCE:  BASE24 Release 5.1 MAKE Utilization Document             !00000A0A
                                                                       !00000A0B
?page "Pathway LCONF Global Definitions"
?SECTION SVLCONF-REQ-RES
                                                                       !00000A0G
*  PUT A 1 IN REPLY-CODE TO SEND TO SERVER. SVLCONFS WILL PUT         !!00005
*  A 0  IN TO RETURN TO REQUESTER.  IF THERE'S AN ERROR AN ERROR      !!00006
*  MESSAGE WILL BE IN ERR-TXT AND ERR # ELSE THERE WILL BE THE        !!00007
*  LCONF-FILENAME.                                                    !!00008
                                                                       !00009
  DEF SVLCONF-REQ-RES.                                                 !00010
     05  REPL-CDE                   TYPE BINARY 16.                    !00011
     05  LN                         TYPE *.                            !00012
     05  LCONF-FNAME                TYPE FNAME.                        !00013
     05  FILLER                     TYPE CHARACTER 1.                  !00014
     05  ERR-CDE                    TYPE BINARY 16.                    !00015
     05  ERR-TXT                    TYPE CHARACTER 70.                 !00016
  END                                                                  !00017
                                                                       !00018
?NOCOBOL
?section lnmap-entry
  DEF lnmap-entry.                                                     !00023
    05  ln                              type *.                        !00024
    05  word                            type binary 16                 !00025
                                        redefines ln.                  !00026
    05  lconf-name                      type FNAME.                    !00027
end                                                                    !00028
                                                                       !00029
?section passthru
  DEF  passthru.                                                       !00032
    05  abort                           type binary 16.                !00033
    05  lnmap-addr                      type binary 16.                !00034
    05  msg-lgth                        type binary 16.                !00035
    05  msg                             type character 132.            !00036
end                                                                    !00037
                                                                       !00038
?section process
  DEF process.                                                         !00041
    05  pid                             type binary 16                 !00042
                                        occurs 4 times.                !00043
end                                                                    !00044
                                                                       !00045
?section request
  DEF request.                                                         !00048
    05  rqst-typ                        type binary 16.                !00049
    05  ln                              type *.                        !00050
end                                                                    !00051
                                                                       !00052
?section startup
  DEF startup.                                                         !00055
    05  lgth                            type binary 16.                !00056
    05  msg                             type character 40.             !00057
end                                                                    !00058
?COBOL =baddl_baddlcob
                                                                       !00058A02
