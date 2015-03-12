**SEQ0.04  11/01/00  DDLGNMM 6002 DDL    BA60DDL  BA04000  B                 ***
**SYNC.04  12/09/98  DDLGNMM 5302 DDL    BA53DDL  BA04000  B                 ***
**SYNC.03  08/28/98  DDLGNMM 5302 DDL    BA53DDL  BA03000  B                 ***
**SYNC.03  08/22/97  DDLGNMM 5102 DDL    BA51DDL  BA03000  B                 ***
**SYNC.02  06/25/96  DDLGNMM 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  06/06/95  DDLGNMM 5102 DDL    BA51DDL  BA51031  B                 ***
**FIX2.00  09/24/93  DDLGNMM 5101 DDL    BA51DDL  BA50251  A                 ***
!*SEQ2.00  10/20/92  DDLGNMM 5000 DDL    BA50DDL                               !
*#######################################################################
*                          History of Changes                          *
************************************************************************
                                                                       !00007B00
                                                                       !00007B01
                                                                       !00007B02
* 93/09/22       DCS                                                   !00023A01
* SYMPTOM:       None.                                                 !00023A02
* PROBLEM:       None.                                                 !00023A03
* FIX:           1.  Updated the comments pertaining to the            !00023A04
*                    description and allowed values of the             !00023A05
*                    KEY-MGMT.KEY-DIR field.                           !00023A06
*                2.  Updated the comments pertaining to the            !00023A07
*                    NMMKEY.NM-INFO-CDE field in order to reflect      !00023A08
*                    the additional values of "365" and "366".         !00023A09
* DEPENDENCIES:  None.                                                 !00023A0A
* REFERENCE:     None.                                                 !00023A0B
                                                                       !00023B03
*********************************************************************  !00023B04
*                  RELEASE 5.1                                      *  !00023B05
*********************************************************************  !00023B06
* 01JUN95     JMS/583                                                  !00023B07
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00023B08
* PROBLEM:    <E> None.                                                !00023B09
* FIX:        Removed old history sections not associated with a       !00023B0A
*             specific Fix level.                                      !00023B0B
* IMPLEMENT:  None.                                                    !00023B0C
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00023B0D
                                                                       !00023B0E
                                                                       !00023B0F
********************************************************************** !00023A0C
?PAGE "NMM - Network Management Message Formats"
?SECTION NMM
                                                                       !00023A0H
*                    NETWORK MANAGEMENT MESSAGES                      !!00028
*                                                                     !!00029
*  This struct definition represents the format for host network      !!00030
*  manager ( 0800,0810 ) messages for Host Interface and Switches.    !!00031
*  There exists a NMM message with ISO host interface DDLs on         !!00032
*  $STAR.BA31HISO.DDLHISO.  The format is different, but the function !!00033
*  is the same.                                                       !!00034
                                                                       !00035
DEFINITION NMM.                                                        !00036
                                                                       !00037
    02  ROUTE.                                                         !00038
        03  STAT                     PIC 99.                           !00039
        03  PATH                     PIC X(22).                        !00040
                                                                       !00041
    02  TYP                          PIC 9(4).                         !00042
                                                                       !00043
    02  BYTE-MAP                     PIC X(16).                        !00044
                                                                       !00045
    02  TRACE-NO                     PIC 9(6).                         !00046
                                                                       !00047
    02  TRAN-DAT                     PIC X(4).                         !00048
                                                                       !00049
    02  TRAN-TIM.                                                      !00050
        04  HH                       PIC 99.                           !00051
        04  MINUTE                   PIC 99.                           !00052
        04  SS                       PIC 99.                           !00053
                                                                       !00054
    02  NM-INFO-CDE                  PIC 999.                          !00055
                                                                       !00056
    02  PASSWORD                     PIC X(16).                        !00057
                                                                       !00058
    02  FILLER                       PIC X(15).                        !00059
                                                                       !00060
END                                                                    !00061
                                                                       !00062
?PAGE "NMMKEY - Dynamic Key Management Message Format"
?SECTION NMMKEY
                                                                       !00067
*                  DYNAMIC KEY MANAGEMENT MESSAGES                    !!00068
*                                                                     !!00069
*  This struct definition represents the format for host Dynamic      !!00070
*  Key Management Messages ( 0800,0810 ) for Host Interface.          !!00071
*                                                                     !!00072
                                                                       !00073
DEFINITION NMMKEY.                                                     !00074
                                                                       !00075
    02  ROUTE.                                                         !00076
        03  STAT                     PIC 99.                           !00077
        03  PATH                     PIC X(22).                        !00078
                                                                       !00079
    02  TYP                          PIC 9(4).                         !00080
                                                                       !00081
*                                                                     !!00082
*       For Dynamic Key Messages, the byte map will be set to         !!00083
*       "04C0000100008000" (Bits 6, 9, 10, 32, and 49).               !!00084
*                                                                     !!00085
                                                                       !00086
    02  BYTE-MAP                     PIC X(16).                        !00087
                                                                       !00088
    02  TRACE-NO                     PIC 9(6).                         !00089
                                                                       !00090
    02  TRAN-DAT                     PIC X(4).                         !00091
                                                                       !00092
    02  TRAN-TIM.                                                      !00093
        04  HH                       PIC 99.                           !00094
        04  MINUTE                   PIC 99.                           !00095
        04  SS                       PIC 99.                           !00096
                                                                       !00097
                                                                       !00097A00
*            Values supported for Dynamic Key Management               !00097A01
*                "161"   Change PIN Key                                !00097A02
*                "162"   New PIN Key                                   !00097A03
*                "163"   Repeat PIN Key                                !00097A04
*                "164"   Verify PIN Key                                !00097A05
*                "261"   Change PIN Key Positive Response              !00097A06
*                "262"   New PIN Key Positive Response                 !00097A07
*                "263"   Repeat PIN Key Positive Response              !00097A08
*                "264"   Verify PIN Key Positive Response              !00097A09
*                "361"   Change PIN Key Negative Response              !00097A0A
*                "362"   New PIN Key Negative Response                 !00097A0B
*                "363"   Repeat PIN Key Negative Response              !00097A0C
*                "364"   Verify PIN Key Negative Response              !00097A0D
*                "365"   Verify PIN Key Negative Response              !00097A0E
*                "366"   New Key Invalid Check Digits Negative Resp    !00097A0F
                                                                       !00097A0G
                                                                       !00098A00
                                                                       !00098A01
                                                                       !00098A02
                                                                       !00111
    02  NM-INFO-CDE                  PIC 999.                          !00112
                                                                       !00113
*                This field will be used for the X9.17-1985           !!00114
*                Dynamic Key Management Data.                         !!00115
*                Bit 49                                               !!00116
                                                                       !00117
  02 KEY-MGMT.                                                         !00118
                                                                       !00119
                                                                       !00119A00
*                KEY-DIR indicates the key being exchanged.            !00119A01
*                                                                      !00119A02
*                       "01" - Outbound                                !00119A03
*                       "02" - Inbound                                 !00119A04
*                       "03" - Both                                    !00119A05
                                                                       !00119A06
                                                                       !00120A00
                                                                       !00120A01
                                                                       !00120A02
                                                                       !00125
     04 KEY-DIR                PIC X(2).                               !00126
                                                                       !00127
*                CHK-DIGITS contains the check digits from the key    !!00128
*                being exchanged.                                     !!00129
                                                                       !00130
     04 CHK-DIGITS             PIC X(6).                               !00131
                                                                       !00132
*                X917-CSM-DATA contains the X9.17 CSM message.        !!00133
                                                                       !00134
     04 X917-CSM-DATA          PIC X(200).                             !00135
                                                                       !00136
END                                                                    !00137
