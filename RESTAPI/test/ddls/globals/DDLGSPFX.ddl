**SEQ0.04  11/01/00  DDLGSPFX6001 DDL    BA60DDL  BA04000  A                 ***
**SYNC.04  12/09/98  DDLGSPFX5301 DDL    BA53DDL  BA04000  A                 ***
**SYNC.03  08/28/98  DDLGSPFX5301 DDL    BA53DDL  BA03000  A                 ***
**SYNC.03  08/22/97  DDLGSPFX5101 DDL    BA51DDL  BA03000  A                 ***
**SYNC.02  06/25/96  DDLGSPFX5101 DDL    BA51DDL  BA02000  A                 ***
**FIX2.00  06/06/95  DDLGSPFX5101 DDL    BA51DDL  BA51038  A                 ***
!*SEQ2.00  10/20/92  DDLGSPFX5100 DDL    BA51DDL                               !
?nocomments
?PAGE "SREF - Stop Payment File Refresh Format"
?SECTION SX-DISPLAY
*#################################################################### !!00007
*#                    History Section                               # !!00008
*#################################################################### !!00009
                                                                       !00009A00
*********************************************************************  !00009A01
*                  RELEASE 5.1                                      *  !00009A02
*********************************************************************  !00009A03
* 01JUN95     JMS/583                                                  !00009A04
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00009A05
* PROBLEM:    <E> None.                                                !00009A06
* FIX:        Removed old history sections not associated with a       !00009A07
*             specific Fix level.                                      !00009A08
* IMPLEMENT:  None.                                                    !00009A09
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00009A0A
                                                                       !00009A0B
                                                                       !00009A0C
                                                                       !00010A00
                                                                       !00010A01
                                                                       !00010A02
*#################################################################### !!00054
*#               STOP PAYMENT FILE REFRESH                          # !!00055
*#################################################################### !!00056
?comments
DEFINITION SPX-DISPLAY.                                                !00059
                                                                       !00060
*             A record number indicating the position of this record  !!00061
*             on the refresh tape.  The value in this field should    !!00062
*             always be one greater than that in the previous record  !!00063
*             on the tape.                                            !!00064
*                                                                     !!00065
*             Header and trailer records must be reflected in this    !!00066
*             count as well as individual SPF records.                !!00067
                                                                       !00068
    02  SX-CNT                          PIC 9(9).                      !00069
                                                                       !00070
*             A code indicating the operation to be performed on the  !!00071
*             SPF record.  Valid values are:                          !!00072
*                                                                     !!00073
*             A = Add                                                 !!00074
*             C = Change                                              !!00075
*             D = Delete                                              !!00076
*             F = Full-file change                                    !!00077
*                                                                     !!00078
*             Values of A, C, and D are intended for use with         !!00079
*             partial-file refreshes.  The value F is required for    !!00080
*             full-file refreshes.                                    !!00081
                                                                       !00082
    02  SX-REC-TYP                      PIC X.                         !00083
                                                                       !00084
*             The FIID of the financial institution owning the        !!00085
*             account.                                                !!00086
                                                                       !00087
    02  SX-FIID                         TYPE FIID.                     !00088
                                                                       !00089
*             The account number of the customer's account at the     !!00090
*             institution that has a stop payment on the check.       !!00091
*             In a BASE24-teller system, the account number must      !!00092
*             match a Positive Balance File (PBF) account number.     !!00093
*             The entry in this field must be left-justified with     !!00094
*             trailing spaces.                                        !!00095
                                                                       !00096
    02  SX-ACCT-NUM                     PIC X(19).                     !00097
                                                                       !00098
*             The type of customer account specified in the           !!00099
*             SX-ACCT-NUM field having the stop payment record.  Valid!!00100
*             values are:                                             !!00101
*                                                                     !!00102
*             01, 02 - 09  = DDA (Checking Account)                   !!00103
*             21           = NOW                                      !!00104
                                                                       !00105
    02  SX-ACCT-TYP                     PIC X(2).                      !00106
                                                                       !00107
*             The check number of the stop payment.  For a range of   !!00108
*             check numbers, this field contains the highest check    !!00109
*             number in the range.  Check numbers are right-          !!00110
*             justified and zero filled.                              !!00111
                                                                       !00112
    02  SX-HI-CHK-NUM                   PIC X(11).                     !00113
                                                                       !00114
*             For a range of check numbers, this field will contain   !!00115
*             the lowest check number in the range.  Check numbers    !!00116
*             are right-justified and zero filled.  For a single      !!00117
*             check, this field will contain blanks.                  !!00118
                                                                       !00119
    02  SX-LO-CHK-NUM                   PIC X(11).                     !00120
                                                                       !00121
*             The amount of the check in whole and fractional         !!00122
*             currency units for the stop payment issued.             !!00123
                                                                       !00124
    02  SX-AMT                          PIC 9(15).                     !00125
                                                                       !00126
*             The date (YYMMDD) of the stop payment.                  !!00127
                                                                       !00128
    02  SX-DAT                          TYPE DAT.                      !00129
                                                                       !00130
*             The time (HHMMSSHH) of the stop payment.                !!00131
                                                                       !00132
    02  SX-TIM                          TYPE TIM.                      !00133
                                                                       !00134
*              The expiration date (YYMMDD) for the stop payment.     !!00135
                                                                       !00136
    02  SX-EXP-DAT                      TYPE DAT.                      !00137
                                                                       !00138
*             A message regarding the stop payment order.  It         !!00139
*             documents and displays any data about the stop payment  !!00140
*             order that the institution placed on the file.          !!00141
                                                                       !00142
    02  SX-DESCR                        PIC X(35).                     !00143
                                                                       !00144
*           Reserved for future use.                                  !!00145
                                                                       !00146
    02  USER-FLD1                       PIC X(5).                      !00147
                                                                       !00148
END                                                                    !00149
?nocomments
