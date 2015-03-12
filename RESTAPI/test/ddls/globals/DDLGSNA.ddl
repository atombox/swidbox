**SEQ0.04  11/01/00  DDLGSNA 6001 DDL    BA60DDL  BA04000  A                 ***
**SYNC.04  12/09/98  DDLGSNA 5301 DDL    BA53DDL  BA04000  A                 ***
**SYNC.03  08/28/98  DDLGSNA 5301 DDL    BA53DDL  BA03000  A                 ***
**SYNC.03  08/22/97  DDLGSNA 5101 DDL    BA51DDL  BA03000  A                 ***
**SYNC.02  06/25/96  DDLGSNA 5101 DDL    BA51DDL  BA02000  A                 ***
**FIX2.00  06/06/95  DDLGSNA 5101 DDL    BA51DDL  BA51037  A                 ***
!*SEQ2.00  10/20/92  DDLGSNA 5100 DDL    BA51DDL                               !
*----------------------------------------------------------------------*
*                         History Section                              *
*----------------------------------------------------------------------*
                                                                       !00000A00
                                                                       !00000A01
*********************************************************************  !00000A02
*                  RELEASE 5.1                                      *  !00000A03
*********************************************************************  !00000A04
* 01JUN95     JMS/583                                                  !00000A05
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00000A06
* PROBLEM:    <E> None.                                                !00000A07
* FIX:        Removed old history sections not associated with a       !00000A08
*             specific Fix level.                                      !00000A09
* IMPLEMENT:  None.                                                    !00000A0A
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00000A0B
*                                                                      !00000A0C
                                                                       !00000A0D
                                                                       !00000A0E
*#######################################################################
*#                   DDL SNA DEFINITIONS                               #
*#                                                                     #
*#   These are definitions for certain data structures which occur     #
*#   for ATM and Teller devices.                                       #
*#                                                                     #
*#   DEFS contained within this list are as follows:                   #
*#                                                                     #
*#   DEF NAME             DATE ADDED            DATE LAST CHANGED      #
*#   --------             ----------            -----------------      #
*#    SNA-DDLs             10/13/87   rhb                              #
*#      HALF-SESSION-SEG   10/13/87                                    #
*#      HSCB               10/13/87                                    #
*#      REQ-HDR            10/13/87                                    #
*#      REQ-UNIT           10/13/87                                    #
*#      TRANSMIT-HDR       10/13/87                                    #
*#      SNA                10/13/87                                    #
*#      SNA-HDRS           10/13/87                                    #
*#      SNA-MSG            10/13/87                                    #
*#                                                                     #
*#######################################################################
?section SNA-Standard-Defs
?page "SNA Standard Definitions"
*                                                                     !!00077
*   Defines the SNA half session seqment portion of a msg.            !!00078
*                                                                     !!00079
DEFINITION  HALF-SESSION-SEG.                                          !00080
  02 SEQ                               PIC X(2)                        !00081
                                       OCCURS 4 TIMES.                 !00082
END                                                                    !00083
*                                                                     !!00084
*   Defines the SNA half session control block.                       !!00085
*                                                                     !!00086
DEFINITION  HSCB.                                                      !00087
  02 TRACE                             PIC X(2).                       !00088
  02 RCV                               TYPE HALF-SESSION-SEG.          !00089
  02 SND                               TYPE HALF-SESSION-SEG.          !00090
  02 STATE                             PIC X.                          !00091
  02 NUM-OF-PENDING-RESPONSES          PIC X OCCURS 2 TIMES.           !00092
END                                                                    !00093
*                                                                     !!00094
*   Defines the SNA request header.                                   !!00095
*                                                                     !!00096
DEFINITION  REQ-HDR                    PIC X(3).                       !00097
*                                                                     !!00098
*   Defines the SNA request unit area.                                !!00099
*                                                                     !!00100
DEFINITION  REQ-UNIT                   PIC X(492).                     !00101
*                                                                     !!00102
*   Defines the SNA transmit header.                                  !!00103
*                                                                     !!00104
DEFINITION  TRANSMIT-HDR.                                              !00105
  02 TH1                               PIC X.                          !00106
  02 FILLER                            PIC X.                          !00107
  02 DAF                               PIC X.                          !00108
  02 OAF                               PIC X.                          !00109
  02 SEQ                               PIC X(2).                       !00110
END                                                                    !00111
*                                                                     !!00112
*     This is the SNA structure used by device handlers to store      !!00113
*     information about the SNA session.                              !!00114
*                                                                     !!00115
DEFINITION  SNA.                                                       !00116
    04 SSCP-PU.                                                        !00117
       06 TRACE                        PIC X(2).                       !00118
       06 RCV.                                                         !00119
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00120
       06 SND.                                                         !00121
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00122
       06 STATE                        PIC X.                          !00123
       06 NUM-OF-PENDING-RESPONSES     PIC X OCCURS 2 TIMES.           !00124
    04 HSCB                            REDEFINES SSCP-PU.              !00125
       06 TRACE                        PIC X(2).                       !00126
       06 RCV.                                                         !00127
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00128
       06 SND.                                                         !00129
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00130
       06 STATE                        PIC X.                          !00131
       06 NUM-OF-PENDING-RESPONSES     PIC X OCCURS 2 TIMES.           !00132
    04 SSCP-LU.                                                        !00133
       06 TRACE                        PIC X(2).                       !00134
       06 RCV.                                                         !00135
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00136
       06 SND.                                                         !00137
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00138
       06 STATE                        PIC X.                          !00139
       06 NUM-OF-PENDING-RESPONSES     PIC X OCCURS 2 TIMES.           !00140
    04 FILLER                          PIC X(21).                      !00141
    04 LU-LU.                                                          !00142
       06 TRACE                        PIC X(2).                       !00143
       06 RCV.                                                         !00144
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00145
       06 SND.                                                         !00146
          08 SEQ                       PIC X(2) OCCURS 4 TIMES.        !00147
       06 STATE                        PIC X.                          !00148
       06 NUM-OF-PENDING-RESPONSES     PIC X OCCURS 2 TIMES.           !00149
    04 LNME                            PIC X.                          !00150
    04 NME                             PIC X(8).                       !00151
*                                                                     !!00152
*       STATE[0]  = GENERAL                                           !!00153
*                   1 - ACTIVATION                                    !!00154
*                   2 - DEACTIVATION                                  !!00155
*                   3 - RECOVERY                                      !!00156
*       STATE[1]  = INIT-SELF                                         !!00157
*       STATE[2]  = BIND                                              !!00158
*       STATE[3]  = SDT                                               !!00159
*       STATE[4]  = SHUTD                                             !!00160
*       STATE[5]  = STSN                                              !!00161
*       STATE[6]  = CHASE                                             !!00162
*       STATE[7]  = CANCEL                                            !!00163
*       STATE[8]  = SHUTC                                             !!00164
*       STATE[9]  = RQR                                               !!00165
*       STATE[10] = RELQ                                              !!00166
*       STATE[11] = QEC                                               !!00167
*       STATE[12] = QC                                                !!00168
*       STATE[13] = NSPE                                              !!00169
*       STATE[14] = ACTPU                                             !!00170
*       STATE[15] = ACTLU                                             !!00171
*                                                                     !!00172
    04 STATE                           PIC X OCCURS 25 TIMES.          !00173
    04 LACK                            PIC X.                          !00174
    04 RETRY-COUNT                     TYPE BINARY 8 UNSIGNED.         !00175
    04 PU-TYPE                         PIC X.                          !00176
END                                                                    !00177
*                                                                     !!00178
*   Defines the SNA headers.                                          !!00179
*                                                                     !!00180
DEFINITION  SNA-HDRS.                                                  !00181
  02 TH                                TYPE TRANSMIT-HDR.              !00182
  02 RH                                TYPE REQ-HDR.                   !00183
END                                                                    !00184
*                                                                     !!00185
*   Defines the SNA message.                                          !!00186
*                                                                     !!00187
DEFINITION  SNA-MSG.                                                   !00188
  02 TH                                TYPE TRANSMIT-HDR.              !00189
  02 RH                                TYPE REQ-HDR.                   !00190
  02 RU                                TYPE REQ-UNIT.                  !00191
END                                                                    !00192
