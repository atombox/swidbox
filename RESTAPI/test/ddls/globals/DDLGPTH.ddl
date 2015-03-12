**FIX2.28  12/22/09  DDLGPTH 6012 DDL    BA60DDL  BA0D309  L                 ***
**FIX2.28  12/04/07  DDLGPTH 6011 DDL    BA60DDL  BA0B353  K                 ***
**FIX2.23  11/10/03  DDLGPTH 6010 DDL    BA60DDL  BA07160  J                 ***
**FIX2.11  01/02/01  DDLGPTH 6009 DDL    BA60DDL  BA04158  I                 ***
**SEQ0.04  11/01/00  DDLGPTH 6008 DDL    BA60DDL  BA04000  H                 ***
**SYNC.04  12/09/98  DDLGPTH 5308 DDL    BA53DDL  BA04000  H                 ***
**FIX2.03  08/28/98  DDLGPTH 5308 DDL    BA53DDL  BA03000  H                 ***
**FIX2.06  06/19/98  DDLGPTH 5108 DDL    BA51DDL  BA03211  H                 ***
**FIX2.04  11/24/97  DDLGPTH 5107 DDL    BA51DDL  BA03027  G                 ***
**SYNC.03  08/22/97  DDLGPTH 5106 DDL    BA51DDL  BA03000  F                 ***
**FIX2.04  05/19/97  DDLGPTH 5106 DDL    BA51DDL  BA02126  F                 ***
**FIX2.04  04/01/97  DDLGPTH 5105 DDL    BA51DDL  BA02084  E                 ***
**SYNC.02  06/25/96  DDLGPTH 5104 DDL    BA51DDL  BA02000  D                 ***
**FIX2.00  12/08/95  DDLGPTH 5104 DDL    BA51DDL  BA51246  D                 ***
**FIX2.00  11/13/95  DDLGPTH 5103 DDL    BA51DDL  BA51208  C                 ***
**FIX2.00  06/06/95  DDLGPTH 5102 DDL    BA51DDL  BA51035  B                 ***
**FIX2.00  01/20/95  DDLGPTH 5101 DDL    BA51DDL  BA50285  A                 ***
!*SEQ2.00  10/20/92  DDLGPTH 5000 DDL    BA50DDL                               !
                                                                       !00000I00
?section path-msg-frmt-history
                                                                       !00000L00
********************************************************************** !00000L01
*                                                                    * !00000L02
*                              BASE24                                * !00000L03
*                              ------                                * !00000L04
*                                                                    * !00000L05
*                DDL for the Pathway Message Formats                 * !00000L06
*                                                                    * !00000L07
*                    Proprietary Software Product                    * !00000L08
*                                                                    * !00000L09
*                         ACI Worldwide, Inc.                        * !00000L0A
*                         6060 Coventry Drive                        * !00000L0B
*                    Elkhorn, Nebraska  68022-6482                   * !00000L0C
*                           (402) 390-7600                           * !00000L0D
*                                                                    * !00000L0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000L0F
*                                                                    * !00000L0G
*    All Rights Reserved.                                            * !00000L0H
*                                                                    * !00000L0I
********************************************************************** !00000L0J
                                                                       !00000L0K
                                                                       !00000L0L
                                                                       !00000L0M
                                                                       !00000L0N
* Record of Changes:                                                   !00000I0T
*                                                                      !00000I0U
* Date        Person/Emp #                                             !00000I0V
* ---------   ------------                                             !00000I0W
                                                                       !00000I0X
                                                                       !00007I00
                                                                       !00007I01
                                                                       !00007I02
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   *  !00090A01
*********************************************************************  !00090A02
* 94AUG22    JAS  - JMS/583                                            !00090A03
* SYMPTOM:   BASE24-telebanking Initial Release                        !00090A04
* PROBLEM:   (E) None                                                  !00090A05
* FIX:       Added a new redefined (VIEW-DATA) for the USER-FLD        !00090A06
*            in USER-CONTEXT.                                          !00090A07
* DEPENDENCIES:  Recompile DDLs.                                       !00090A08
* REFERENCE: Work Order TB930301-01                                    !00090A09
*                                                                      !00090A0A
* 95JAN01    MLB/598    - JMS/583                                      !00090A0B
* SYMPTOM:   NCR 56xx DPM SSB Product Enhancement                      !00090A0C
* PROBLEM:   (E) None                                                  !00090A0D
* FIX:       Added two additional Hoppers to the CMD-MSG Definition.   !00090A0E
*            The NCR 56xx Coin Dispenser contains 4 Coin Hoppers and   !00090A0F
*            BASE24-atm must control the coinage dispense mix.  These  !00090A0G
*            additional fields must be added to allow Cash Increase    !00090A0H
*            and Cash Decrease functions from the Current Cash DCT     !00090A0I
*            Screen (Screen #8).                                       !00090A0J
* DEPENDENCIES:  Apply FIX and Re-compile the DDLs.                    !00090A0K
* REFERENCE: WO #AT930605                                              !00090A0L
*                                                                      !00090A0M
***********************************************************************
                                                                       !00090B03
********************************************************************** !00090B04
*                   RELEASE 5.1                                      * !00090B05
********************************************************************** !00090B06
* 95Jun01     MLB/598                                                  !00090B07
* SYMPTOM:    BASE24 Release 5.1 enhancements                          !00090B08
* PROBLEM:    (E) None                                                 !00090B09
* FIX:        Modified all file references to use TACL Defines in      !00090B0A
*             order to use the MAKE Utility.                           !00090B0B
* IMPLEMENT:  Apply fix and re-MAKE                                    !00090B0C
* REFERENCE:  BASE24 Release 5.1 MAKE Utilization Document             !00090B0D
*                                                                      !00090B0E
* 01JUN95     JMS/583                                                  !00090B0F
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00090B0G
* PROBLEM:    <E> None.                                                !00090B0H
* FIX:        Removed old history sections not associated with a       !00090B0I
*             specific Fix level.                                      !00090B0J
* IMPLEMENT:  None.                                                    !00090B0K
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00090B0L
                                                                       !00090C00
                                                                       !00090C01
* 09/18/95  Simon Patterson/J. Samson                                  !00090C02
* SYMPTOM:  BASE24-Telebanking/Bill Payment initial release            !00090C03
* PROBLEM:  1) A larger file maintenance message format was needed     !00090C04
*              for the CSTT requester server pair.                     !00090C05
*           2) Need another redefine of the USER-FLD in USER-          !00090C06
*              CONTEXT to pass a date format option.                   !00090C07
* FIX:      1) A new section was added to handle the new               !00090C08
*              message format:                                         !00090C09
*                                                                      !00090C0A
*               MSG-FILE-MAINT-12288,                                  !00090C0B
*                                                                      !00090C0C
*           2) Added a new redefine for the USER-FLD in                !00090C0D
*              USER-CONTEXT.  New field name is DAT-FRMT-OPT.          !00090C0E
*                                                                      !00090C0F
* IMPLEMENT: Apply this fix and recompile the BASE24                   !00090C0G
*            CSTT requester/server pair and RQMEGA.                    !00090C0H
* REFERENCE: Work Order #9504251-1                                     !00090C0I
                                                                       !00090C0J
                                                                       !00090D00
* 95NOV14    DPS/1064 - bdc/1448                                       !00090D01
* SYMPTOM:   Customer Service/Fraud Control Enhancement                !00090D02
* PROBLEM:   (E) None                                                  !00090D03
* FIX:       Added new CSFC-USER-CONTEXT to pass information between   !00090D04
*            the CIS, CSTP, and FSF requestors for the hot-key         !00090D05
*            function.                                                 !00090D06
* DEPENDENCIES:  Apply fix and recompile the DDLs.                     !00090D07
* REFERENCE: WO #950212-2.                                             !00090D08
*                                                                      !00090D09
                                                                       !00090E00
* 03MAR21     NMW.  JJD/1474  - JMS/583                                !00090E01
* SYMPTOM:    BASE24-card                                              !00090E02
* PROBLEM:    NONE.                                                    !00090E03
* FIX:        Added new user context definition for BASE24-card.       !00090E04
*             This is passed between RQLSTS and RQCAFS                 !00090E05
* IMPLEMENT:  Re-compile DDL's.                                        !00090E06
* REFERENCES: WO #960130-001                                           !00090E07
                                                                       !00090F00
* 04/23/97:  DPS/1063 - JMS/583                                        !00090F01
* Symptom:   Customer Service/Fraud Control Phase II                   !00090F02
* Problem:   (E) None.                                                 !00090F03
* Fix:       Modified csfc-user-context to add terminal postal         !00090F04
*            code, terminal country code, and merchant category        !00090F05
*            code.  Also added one byte filler for even length.        !00090F06
*            Renamed fsf-postal-cde to fsf-crd-postal-cde.             !00090F07
* Implement: Apply fix and re-ddl.  Recompile all modules which        !00090F08
*            utilize csfc-user-context. Any module using the old       !00090F09
*            fsf-postal-cde must be fixed and remade also.             !00090F0A
* Reference: WO #961202-2                                              !00090F0B
                                                                       !00090G00
* 01OCT1997   Lovejoy/298 BH/177                                       !00090G01
* Symptom:    Fujitsu 7000 Enhancement                                 !00090G02
* Problem:    None.                                                    !00090G03
* Fix:        Added redefines to CMD-MSG for the Fujitsu 7000          !00090G04
*             Device Handler for SEND-STAT-OPT.                        !00090G05
* Dependency: The DCT Pathway must be compiled after this DDL has      !00090G06
*             been re-compiled.                                        !00090G07
* Reference:  RPE #960825-31, Fujitsu 7000 Enhancement                 !00090G08
                                                                       !00090H00
* 10FEB1998   mgi/221                                                  !00090H01
* Symptom:    Enhancement - BASE24 5.1.3 Changes for XPNET 3.0         !00090H02
*             This enhancement enables BASE24 code to be compatible    !00090H03
*             with XPNET 3.0 while maintaining backward                !00090H04
*             compatibility with XPNET 2.1.                            !00090H05
* Problem:    None.                                                    !00090H06
* Fix:        Modified USER-CONTEXT to include the PASSWORD-DATA       !00090H07
*             field.  Added the USER-ID, PASSWORD, OBJ-TYP, and        !00090H08
*             PRO-NAM fields to CMD-MSG.                               !00090H09
* Dependency: Install all fixes to the files associated with this      !00090H0A
*             work order and run an overall MAKE.                      !00090H0B
* Reference:  WO #980210-1.                                            !00090H0C
*                                                                      !00090H0D
                                                                       !00090I00
********************************************************************   !00090I01
*             Release 6.0                                          *   !00090I02
********************************************************************   !00090I03
* 30NOV2000   CLR/451                                                  !00090I04
* Symptom:    Release 6.0 Enhancements                                 !00090I05
* Problem:    None                                                     !00090I06
* Fix:        Added the following -EXT message formats to be used by   !00090I07
*             requesters and servers that have been modified to allow  !00090I08
*             for 256 products and segments.                           !00090I09
*                SECTION MSG-HEADER-EXT                                !00090I0A
*                SECTION MSG-SECURITY-EXT                              !00090I0B
*                SECTION MSG-ERR-EXT                                   !00090I0C
*                SECTION MSG-FILE-MAINT-1024-EXT                       !00090I0D
*                SECTION MSG-FILE-MAINT-2048-EXT                       !00090I0E
*                SECTION MSG-FILE-MAINT-4096-EXT                       !00090I0F
*                SECTION MSG-FILE-MAINT-5120-EXT                       !00090I0G
*                SECTION MSG-FILE-MAINT-9216-EXT                       !00090I0H
*                SECTION MSG-FILE-MAINT-12288-EXT                      !00090I0I
*                SECTION MSG-LIST-EXT                                  !00090I0J
*                SECTION USER-CONTEXT-EXT                              !00090I0K
*             Modified USER-CONTEXT-EXT to include PASSWORD-DATA.      !00090I0L
* Dependency: Restore Release 6.0 files, modify the appropriate        !00090I0M
*             CUSTMACS flags, and run MAKE.                            !00090I0N
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00090I0O
                                                                       !00090J00
* 15OCT2003   jfu/543                                                  !00090J01
* Symptom:    ATM Forced Cutover Audit                                 !00090J02
* Problem:    None.                                                    !00090J03
* Fix:        Added TYP-EXP redefine to the CMD definition.            !00090J04
* Dependency: Apply fix to DDLGPTH and run Make.  Refer to             !00090J05
*             BA60UD07.SCNFCA for a complete list of dependencies.     !00090J06
* Reference:  WO #020716-04                                            !00090J07
                                                                       !00090J08
                                                                       !00090K00
* 12OCT2007   DwivedS                                                  !00090K01
* Symptom:    PCI - Masking on Pathway                                 !00090K02
* Problem:    None.                                                    !00090K03
* Fix:        Modified following sections to include MASKING-FLG       !00090K04
*             SECTION MSG-HEADER                                       !00090K05
*             SECTION USER-CONTEXT                                     !00090K06
*             SECTION MSG-HEADER-EXT                                   !00090K07
*             SECTION USER-CONTEXT-EXT                                 !00090K08
* Dependency: Apply fix to DDLGPTH and run Make. Refer to              !00090K09
*             BA60UD0B.SCNMASK for a complete list of dependencies.    !00090K0A
* Reference:  WO #061122-03                                            !00090K0B
                                                                       !00090K0C
* 12OCT2007   KrishnG                                                  !00090K0D
* Symptom:    PCI - Audit Enhancement                                  !00090K0E
* Problem:    None.                                                    !00090K0F
* Fix:        Modified comments for TRAN-CDE fields to define          !00090K0G
*             additional values to support auditing of user access to  !00090K0H
*             sensitive information.                                   !00090K0I
* Dependency: Apply fix to DDLGPTH and run Make. Refer to              !00090K0J
*             BA60UD0B.SCNAUDT for a complete list of dependencies.    !00090K0K
* Reference:  WO #070423-02                                            !00090K0L
                                                                       !00090K0M
                                                                       !00090L00
* 06NOV2009   BhattaD                                                  !00090L01
* Symptom:    ATM Bulk Check Infrastructure Support.                   !00090L02
* Problem:    None.                                                    !00090L03
* Fix:        Added the following sections.                            !00090L04
*             MSG-FILE-MAINT-6144                                      !00090L05
*             MSG-FILE-MAINT-6144-EXT                                  !00090L06
* Dependency: Apply fix to DDLGPTH and run Make. Refer to              !00090L07
*             BA60UD0D.SCNBCA for a complete list of dependencies.     !00090L08
* Reference:  WO #090227-01                                            !00090L09
                                                                       !00090L0A
*********************************************************************  !00090I0P
                                                                       !00090I0Q
?PAGE "CMD - DCT-to-Others Command Formats"
?NOCOBOL
?SECTION CMD
                                                                       !00090I0X
                                                                       !00090I0Y
                                                                       !00090I0Z
                                                                       !00090I10
                                                                       !00090I11
*                               CMD                                   !!00093
*                                                                     !!00094
*  The CMD record serves two purposes:                                !!00095
*    1) it defines the message that will be sent by the device control!!00096
*       terminal (DCT) process to every process for whenever an       !!00097
*       operator enters a slash command (warmboot or cutover);        !!00098
*    2) it defines the message that will be sent by the DCT process to!!00099
*       the device handler process for device handler commands.       !!00100
                                                                       !00101
DEF CMD.                                                               !00102
                                                                       !00103
*  Command types:                                                     !!00104
*    9500 = device handler command                                    !!00105
*    9501 = warmboot                                                  !!00106
*    9502 = cutover                                                   !!00107
*    9503 = newfile                                                   !!00108
*    9504 = atmlogname                                                !!00109
*    9505 = atmlogstatus                                              !!00110
                                                                       !00111
   02  TYP             PIC X(4).                                       !00112
                                                                       !00113
*  Variable length data required for some commands. This data will be !!00114
*  terminated by a null.                                              !!00115
                                                                       !00116
   02  DATA            PIC X(132).                                     !00117
                                                                       !00118
*  Cutover date in yymmdd form.  For the cutover command, contains the!!00119
*  date to cutover from.                                              !!00120
                                                                       !00121
   02  CUTOVER-DAT     TYPE DAT REDEFINES DATA.                        !00122
                                                                       !00123
*  Parameters for NEWFILE command                                     !!00124
                                                                       !00125
   02  NEWFILE         REDEFINES DATA.                                 !00126
                                                                       !00127
*      Newfile's <fiid> param "****" = NEWFILE ALL                    !!00128
                                                                       !00129
       03  FIID        TYPE *.                                         !00130
                                                                       !00131
       03  FNAME       PIC X(24).                                      !00132
                                                                       !00133
       03  REFR-GRP    PIC X(4).                                       !00134
                                                                       !00135
       03  REFR-TYP    PIC X.                                          !00136
                                                                       !00137
       03  REFR-IND    PIC X.                                          !00138
                                                                       !00139
                                                                       !00140
*  Parameters for WARMBOOT command                                    !!00141
                                                                       !00142
   02  WARMBOOT        REDEFINES DATA.                                 !00143
                                                                       !00144
*      WARMBOOT's <fiid> param "****" = WARMBOOT ALL                  !!00145
                                                                       !00146
       03  FIID        TYPE *.                                         !00147
                                                                       !00148
*  The device name for the ATMLOGNAME command.  This name is in the   !!00149
*  external (i.e. collapsed) form.                                    !!00150
                                                                       !00151
   02  ATMLOGNAME      TYPE FNAME REDEFINES DATA.                      !00152
                                                                       !00153
*  The terminal ID of terminal to which the aft needs shared access   !!00154
                                                                       !00155
   02  TERM-ID         TYPE SYM-NAME REDEFINES DATA.                   !00156
                                                                       !00157
*  Used to provide the date of the TLF which has incomplete alternate !!00158
*  key information                                                    !!00159
                                                                       !00160
   02  TLF-DAT         TYPE DAT REDEFINES DATA.                        !00161
                                                                       !00162
                                                                       !00163
*  Used to provide station information to the Device Handler.         !!00164
                                                                       !00165
   02  STA             REDEFINES DATA.                                 !00166
                                                                       !00167
*      Station terminal number                                        !!00168
                                                                       !00169
       03  TERM-NUM    TYPE BINARY 16.                                 !00170
                                                                       !00171
*      Station terminal name                                          !!00172
                                                                       !00173
       03  TERM-NAM    TYPE SYM-NAME.                                  !00174
                                                                       !00175
*  Used to provide Bank Cutover information                           !!00176
                                                                       !00177
   02  BNK-CUTOVER     REDEFINES DATA.                                 !00178
                                                                       !00179
*      Newfile's <fiid> param "****" = NEWFILE ALL                    !!00180
                                                                       !00181
       03  FIID        TYPE *.                                         !00182
                                                                       !00183
       03  CUR-BUS-DAT TYPE DAT.                                       !00184
                                                                       !00185
       03  NXT-BUS-DAT TYPE DAT.                                       !00186
                                                                       !00187
*                                                                     !!00188
   02  EXTR            REDEFINES DATA.                                 !00189
                                                                       !00190
       03  GRP         PIC X(4).                                       !00191
                                                                       !00192
                                                                       !00192J00
*      The following structure expands on the type field for a         !00192J01
*      command with a four-character subtype field followed by         !00192J02
*      optional data fields.                                           !00192J03
                                                                       !00192J04
   02  TYP-EXP         REDEFINES DATA.                                 !00192J05
                                                                       !00192J06
*      Identifies the subtype of the command.  Valid values are        !00192J07
*      ASCII numeric characters and Alphabetic characters.             !00192J08
                                                                       !00192J09
       03  SUBTYP      PIC X(4).                                       !00192J0A
                                                                       !00192J0B
*      Identifies the terminal ID associated with this command.        !00192J0C
                                                                       !00192J0D
       03  TERM-ID     TYPE SYM-NAME.                                  !00192J0E
                                                                       !00192J0F
*      Identifies the process name associated with this command.       !00192J0G
                                                                       !00192J0H
       03  PRO-NAM     PIC X(16).                                      !00192J0I
                                                                       !00192J0J
*      This field is reserved for future use.                          !00192J0K
                                                                       !00192J0L
       03  ACI-TYP-EXP PIC X(96).                                      !00192J0M
                                                                       !00192J0N
                                                                       !00193
END                                                                    !00194
                                                                       !00195
?COBOL =baddl_baddlcob
                                                                       !00195B02
?PAGE "MSG-HEADER - PATHWAY Request/Response Header Format"
?SECTION MSG-HEADER
                                                                       !00202
DEFINITION MSG-HEADER.                                                 !00203
                                                                       !00204
*  This field determines the status of the reply message as defined in!!00205
*  the REPLY CODE clause of the requestor SEND statement.  The codes  !!00206
*  shown below are the main reply codes returned from servers.  Other !!00207
*  response codes are server dependent.  REPL-CDE must be the first   !!00208
*  two bytes of the request/response format.                          !!00209
*                                                                     !!00210
*     0 = Successfull response to request.  Data portion of the       !!00211
*         request format can be used.  The type of request is defined !!00212
*         in TRAN-CDE.                                                !!00213
*                                                                     !!00214
*     1 = Error response from the server.  ERR-NUM and ERR-TXT        !!00215
*         will contain the response to be displayed on the screen.    !!00216
*         Typically no data is returned.                              !!00217
                                                                       !00218
   02  REPL-CDE              TYPE BINARY.                              !00219
                                                                       !00220
*  File Identifier.  See the standard list of file application codes  !!00221
*  from Systems Engineering.                                          !!00222
                                                                       !00223
   02  APPL-CDE              PIC XX.                                   !00224
                                                                       !00225
*  Identifies the transaction to be performed.                        !!00226
*                                                                     !!00227
*    1  = READ             2 = UPDATE          3 = DELETE             !!00228
*    4  = ADD              5 = LOGON           6 = GET FIRST PAGE     !!00229
*                                                  OF PERUSAL         !!00230
*    7  = READ NEXT        8 = GET NEXT PAGE   9 = GET UFIR BLOCK     !!00231
*                              OF PERUSAL                             !!00232
*   10  = GET SCREEN      11 = VALIDATE LN    12 = GET UPFR INFO FOR  !!00233
*         ACCESS RECORD        CHANGE              CURRENT USER       !!00234
*   13  = MODIFY UFIR     14 = MODIFY SCREEN  15 = SECURITY 'ADD LIKE'!!00235
*         RELATIONS            ACCESS INFO.        FUNCTION           !!00236
*   16  = GET NEXT SCREEN 17 = VALIDATE FIID  18 = VALIDATE EXTRACT   !!00237
*         ACCESS BLOCK         REGN/BRCH           REQUEST            !!00238
*                              ACCESS                                 !!00239
                                                                       !00239K00
*   19  = REQUEST ACCESS  20 = LOGOFF         21 = RESET PASSWORD      !00239K01
*   22  = READ NEXT       23 = FILE OPERATION 24 = UNDEFINED           !00239K02
*         ALTERNATE KEY        SECURITY ERROR                          !00239K03
*         TRANSACTION                                                  !00239K04
                                                                       !00239K05
                                                                       !00240K00
                                                                       !00240K01
                                                                       !00241
   02  TRAN-CDE              PIC 99.                                   !00242
                                                                       !00243
*  The terminal name which the operator is using from                 !!00244
*  TERMINAL-FILENAME.                                                 !!00245
                                                                       !00246
   02  TERM-ID               PIC X(24).                                !00247
                                                                       !00248
*  "0" = No OMF auditing                                              !!00249
*  "1" = Audit record images (full OMF auditing)                      !!00250
*  "2" = Audit MSG-HEADER information only, no record images          !!00251
*                                                                     !!00252
*  Default is 1, set by the LCONF entry program.  LCONF PARAM OMFAUDIT!!00253
*  controls the value.  Server security reads the param and passes it !!00254
*  back with base sec data on each successfull logon.                 !!00255
                                                                       !00256
   02  OMF-AUDIT             PIC X.                                    !00257
                                                                       !00258
*  FRMT-CDE identifies the format of the message to server security   !!00259
*  for replying to requests.  The code is set by the sending          !!00260
*  requestor:                                                         !!00261
*                                                                     !!00262
*  'S' = MSG-SECURITY                                                 !!00263
*  'A' = MSG-FILE-MAINT-1024                                          !!00264
*  'B' = MSG-FILE-MAINT-4096                                          !!00265
                                                                       !00266
   02  FRMT-CDE              PIC X.                                    !00267
                                                                       !00268
*  What servers use this, I don't know, but they are retained for now !!00269
*  (2/18/86 JHK).                                                     !!00270
                                                                       !00271
   02  ERR-STATUS.                                                     !00272
                                                                       !00273
       04  ERR-CDE           TYPE BINARY.                              !00274
       04  ERR-SUB-CDE       TYPE BINARY.                              !00275
                                                                       !00276
   02  LCONF-NAME            TYPE FNAME.                               !00277
                                                                       !00278
                                                                       !00279K00
   02  MASKING-FLG           PIC X.                                    !00279K01
                                                                       !00279K02
                                                                       !00280
   02  USER-DATA.                                                      !00281
                                                                       !00282
*      Supplied by user at login.                                     !!00283
                                                                       !00284
       04  LN                    TYPE *.                               !00285
                                                                       !00286
*      Supplied by user at login.  Can be left blank.  If Super/Super,!!00287
*      security server fills with ****                                !!00288
                                                                       !00289
       04  FIID                  TYPE *.                               !00290
       04  REGN                  TYPE *.                               !00291
       04  BRCH                  TYPE *.                               !00292
                                                                       !00293
*      Returned from security server on successfull logon.  Used for  !!00294
*      Last-fm block instead of alias:  Shorter record.               !!00295
                                                                       !00296
       04  USER-GRP              TYPE BINARY 16.                       !00297
                                                                       !00298
*      Returned from security server on successfull logon.  Used for  !!00299
*      Last-fm blocks instead of alias:  Shorter record.              !!00300
                                                                       !00301
       04  USER-NUM              TYPE BINARY 32.                       !00302
                                                                       !00303
*      The sites product indicator for record I/O using segments.     !!00304
*      From the sites PROD file.                                      !!00305
                                                                       !00306
   02  SITE-PROD-IND             TYPE PROD-IND.                        !00307
                                                                       !00308
*      The error code and text returned from servers.  The servers    !!00309
*      will do almost all validation.  This contains the error codes  !!00310
*      for file errors on file maintenence operations.                !!00311
                                                                       !00312
   02  ERR-NUM                   PIC  X(4).                            !00313
   02  ERR-TXT                  PIC  X(70).                            !00314
                                                                       !00315
END                                                                    !00316
                                                                       !00317
?PAGE "MSG-SECURITY - Security Message Format"
?SECTION MSG-SECURITY
                                                                       !00322
*  Message format passed from Logon requestor to Server-sec on logon  !!00323
*  attempts.                                                          !!00324
                                                                       !00325
DEFINITION MSG-SECURITY.                                               !00326
                                                                       !00327
*  Note that most login information is carried in MSG-HEADER.         !!00328
*  Duplicate information has been removed from this struct.           !!00329
                                                                       !00330
   02 MSG-HEADER             TYPE *.                                   !00331
                                                                       !00332
*  The users login name.                                              !!00333
                                                                       !00334
   02  ALIAS                 TYPE *.                                   !00335
                                                                       !00336
*  The users password entered at login time.                          !!00337
                                                                       !00338
   02  PASSWORD              PIC  X(8).                                !00339
                                                                       !00340
*  The new password which the user entered at logon.  If blank, then  !!00341
*  no password change is requested.                                   !!00342
                                                                       !00343
   02 NEW-PASSWORD           PIC X(8).                                 !00344
                                                                       !00345
*  The screen ID which the user is attempting access to.  Corresponds !!00346
*  to the security record key.                                        !!00347
                                                                       !00348
   02 SCREEN-ID              PIC X(4).                                 !00349
                                                                       !00350
*  Time where this user is automatically logged off the system.       !!00351
                                                                       !00352
   02 END-TIM                PIC X(4).                                 !00353
                                                                       !00354
*  The number of seconds a user can be inactive in BASE24 before      !!00355
*  being automatically logged off.                                    !!00356
                                                                       !00357
   02 LOGOFF-INTERVAL        PIC 9(5).                                 !00358
                                                                       !00359
*  Product indicator from the users security record.                  !!00360
                                                                       !00361
   02 USER-PROD-IND          TYPE PROD-IND.                            !00362
                                                                       !00363
*  The list of resource nodes the operator can send commands to from  !!00364
*  the NCT.  Returned from the security server on logon.              !!00365
                                                                       !00366
   02 RESOURCE-NODE          TYPE SYM-NAME  OCCURS 12 TIMES.           !00367
                                                                       !00368
END                                                                    !00369
                                                                       !00370
?PAGE "MSG-ERR - Error Message Format"
?SECTION MSG-ERR
                                                                       !00375
*  Response format returned from servers when a request is invalid and!!00376
*  could not be processed.                                            !!00377
                                                                       !00378
DEFINITION MSG-ERR.                                                    !00379
                                                                       !00380
   02 MSG-HEADER             TYPE *.                                   !00381
                                                                       !00382
END                                                                    !00383
                                                                       !00384
?PAGE "MSG-FILE-MAINT-1024 - Short File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-1024
                                                                       !00389
DEFINITION MSG-FILE-MAINT-1024.                                        !00390
                                                                       !00391
   02 MSG-HEADER             TYPE *.                                   !00392
                                                                       !00393
   02 LAST-FM.                                                         !00394
                                                                       !00395
*           Timestamp (date/time) of the last file maintenence        !!00396
*           function.  Converted from a timestamp by the servers.     !!00397
                                                                       !00398
      04  FM-TIMESTAMP       PIC X(16).                                !00399
                                                                       !00400
*           Terminal operators group number from logon.               !!00401
                                                                       !00402
      04  FM-USER-GRP        TYPE BINARY.                              !00403
                                                                       !00404
*           Terminal operators user number from logon.                !!00405
                                                                       !00406
      04  FM-USER-NUM        TYPE BINARY 32.                           !00407
                                                                       !00408
*           File maintenence function:                                !!00409
*                                                                     !!00410
*                A -  Add                                             !!00411
*                B -  Change "before" image                           !!00412
*                C -  Change "after" image                            !!00413
*                D -  Delete                                          !!00414
*                S -  Logon security check                            !!00415
*                O -  Entry into OPR functions                        !!00416
                                                                       !00417
      04  UPDT-TYP           PIC X(1).                                 !00418
                                                                       !00419
*           Currently unsupported.                                    !!00420
                                                                       !00421
      04  STA-NUM            PIC X(4).                                 !00422
                                                                       !00423
      04  FILLER             PIC X.                                    !00424
                                                                       !00425
   02 REC-IMAGE              PIC  X(1024).                             !00426
                                                                       !00427
END                                                                    !00428
                                                                       !00429
                                                                       !00430
?PAGE "MSG-FILE-MAINT-2048 - Medium File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-2048
                                                                       !00430I00
                                                                       !00430I01
                                                                       !00430I02
DEFINITION MSG-FILE-MAINT-2048.                                        !00430I03
                                                                       !00430I04
   02 MSG-HEADER             TYPE *.                                   !00430I05
                                                                       !00430I06
   02 LAST-FM.                                                         !00430I07
                                                                       !00430I08
*           Timestamp (date/time) of the last file maintenence         !00430I09
*           function.  Converted from a timestamp by the servers.      !00430I0A
                                                                       !00430I0B
      04  FM-TIMESTAMP       PIC X(16).                                !00430I0C
                                                                       !00430I0D
*           Terminal operators group number from logon.                !00430I0E
                                                                       !00430I0F
      04  FM-USER-GRP        TYPE BINARY.                              !00430I0G
                                                                       !00430I0H
*           Terminal operators user number from logon.                 !00430I0I
                                                                       !00430I0J
      04  FM-USER-NUM        TYPE BINARY 32.                           !00430I0K
                                                                       !00430I0L
*           File maintenence function:                                 !00430I0M
*                                                                      !00430I0N
*                A -  Add                                              !00430I0O
*                B -  Change "before" image                            !00430I0P
*                C -  Change "after" image                             !00430I0Q
*                D -  Delete                                           !00430I0R
*                S -  Logon security check                             !00430I0S
*                O -  Entry into OPR functions                         !00430I0T
                                                                       !00430I0U
      04  UPDT-TYP           PIC X.                                    !00430I0V
                                                                       !00430I0W
*           Currently unsupported.                                     !00430I0X
                                                                       !00430I0Y
      04  STA-NUM            PIC X(4).                                 !00430I0Z
                                                                       !00430I10
      04  FILLER             PIC X.                                    !00430I11
                                                                       !00430I12
   02 REC-IMAGE              PIC  X(2048).                             !00430I13
                                                                       !00430I14
END                                                                    !00430I15
                                                                       !00430I16
                                                                       !00430I17
?PAGE "MSG-FILE-MAINT-4096 - Long File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-4096
                                                                       !00521
                                                                       !00522
DEFINITION MSG-FILE-MAINT-4096.                                        !00523
   02 MSG-HEADER             TYPE *.                                   !00524
   02 LAST-FM.                                                         !00525
                                                                       !00526
*           Timestamp (date/time) of the last file maintenence        !!00527
*           function.  Converted from a timestamp by the servers.     !!00528
                                                                       !00529
      04  FM-TIMESTAMP       PIC X(16).                                !00530
                                                                       !00531
*           Terminal operators group number from logon.               !!00532
                                                                       !00533
      04  FM-USER-GRP        TYPE BINARY.                              !00534
                                                                       !00535
*           Terminal operators user number from logon.                !!00536
                                                                       !00537
      04  FM-USER-NUM        TYPE BINARY 32.                           !00538
                                                                       !00539
*           File maintenence function:                                !!00540
*                                                                     !!00541
*                A -  Add                                             !!00542
*                B -  Change "before" image                           !!00543
*                C -  Change "after" image                            !!00544
*                D -  Delete                                          !!00545
*                S -  Logon security check                            !!00546
*                O -  Entry into OPR functions                        !!00547
                                                                       !00548
      04  UPDT-TYP           PIC X(1).                                 !00549
                                                                       !00550
*           Currently unsupported.                                    !!00551
                                                                       !00552
      04  STA-NUM            PIC X(4).                                 !00553
                                                                       !00554
      04  FILLER             PIC X.                                    !00555
                                                                       !00556
   02 REC-IMAGE              PIC  X(4096).                             !00557
                                                                       !00558
END                                                                    !00559
                                                                       !00560
                                                                       !00561
?PAGE "MSG-FILE-MAINT-5120 - 5K Long File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-5120
DEFINITION MSG-FILE-MAINT-5120.                                        !00566
   02 MSG-HEADER             TYPE *.                                   !00567
   02 LAST-FM.                                                         !00568
                                                                       !00569
*           Timestamp (date/time) of the last file maintenence        !!00570
*           function.  Converted from a timestamp by the servers.     !!00571
                                                                       !00572
      04  FM-TIMESTAMP       PIC X(16).                                !00573
                                                                       !00574
*           Terminal operators group number from logon.               !!00575
                                                                       !00576
      04  FM-USER-GRP        TYPE BINARY.                              !00577
                                                                       !00578
*           Terminal operators user number from logon.                !!00579
                                                                       !00580
      04  FM-USER-NUM        TYPE BINARY 32.                           !00581
                                                                       !00582
*           File maintenence function:                                !!00583
*                                                                     !!00584
*                A -  Add                                             !!00585
*                B -  Change "before" image                           !!00586
*                C -  Change "after" image                            !!00587
*                D -  Delete                                          !!00588
*                S -  Logon security check                            !!00589
*                O -  Entry into OPR functions                        !!00590
                                                                       !00591
      04  UPDT-TYP           PIC X(1).                                 !00592
                                                                       !00593
*           Currently unsupported.                                    !!00594
                                                                       !00595
      04  STA-NUM            PIC X(4).                                 !00596
                                                                       !00597
      04  FILLER             PIC X.                                    !00598
                                                                       !00599
   02 REC-IMAGE              PIC  X(5120).                             !00600
                                                                       !00601
END                                                                    !00602
                                                                       !00603
                                                                       !00604
                                                                       !00604L00
?PAGE "MSG-FILE-MAINT-6144 - Long File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-6144
                                                                       !00604L05
                                                                       !00604L06
DEFINITION MSG-FILE-MAINT-6144.                                        !00604L07
   02 MSG-HEADER             TYPE *.                                   !00604L08
   02 LAST-FM.                                                         !00604L09
                                                                       !00604L0A
*           Timestamp (date/time) of the last file maintenence         !00604L0B
*           function.  Converted from a timestamp by the servers.      !00604L0C
                                                                       !00604L0D
      04  FM-TIMESTAMP       PIC X(16).                                !00604L0E
                                                                       !00604L0F
*           Terminal operators group number from logon.                !00604L0G
                                                                       !00604L0H
      04  FM-USER-GRP        TYPE BINARY.                              !00604L0I
                                                                       !00604L0J
*           Terminal operators user number from logon.                 !00604L0K
                                                                       !00604L0L
      04  FM-USER-NUM        TYPE BINARY 32.                           !00604L0M
                                                                       !00604L0N
*           File maintenence function:                                 !00604L0O
*                                                                      !00604L0P
*                A -  Add                                              !00604L0Q
*                B -  Change "before" image                            !00604L0R
*                C -  Change "after" image                             !00604L0S
*                D -  Delete                                           !00604L0T
*                S -  Logon security check                             !00604L0U
*                O -  Entry into OPR functions                         !00604L0V
                                                                       !00604L0W
      04  UPDT-TYP           PIC X(1).                                 !00604L0X
                                                                       !00604L0Y
*           Currently unsupported.                                     !00604L0Z
                                                                       !00604L0a
      04  STA-NUM            PIC X(4).                                 !00604L0b
                                                                       !00604L0c
      04  FILLER             PIC X.                                    !00604L0d
                                                                       !00604L0e
   02 REC-IMAGE              PIC  X(6144).                             !00604L0f
                                                                       !00604L0g
END                                                                    !00604L0h
                                                                       !00604L0i
?PAGE "MSG-FILE-MAINT-9216 - Extra Long File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-9216
                                                                       !00604L0n
DEFINITION MSG-FILE-MAINT-9216.                                        !00609
   02 MSG-HEADER             TYPE *.                                   !00610
   02 LAST-FM.                                                         !00611
                                                                       !00612
*           Timestamp (date/time) of the last file maintenence        !!00613
*           function.  Converted from a timestamp by the servers.     !!00614
                                                                       !00615
      04  FM-TIMESTAMP       PIC X(16).                                !00616
                                                                       !00617
*           Terminal operators group number from logon.               !!00618
                                                                       !00619
      04  FM-USER-GRP        TYPE BINARY.                              !00620
                                                                       !00621
*           Terminal operators user number from logon.                !!00622
                                                                       !00623
      04  FM-USER-NUM        TYPE BINARY 32.                           !00624
                                                                       !00625
*           File maintenence function:                                !!00626
*                                                                     !!00627
*                A -  Add                                             !!00628
*                B -  Change "before" image                           !!00629
*                C -  Change "after" image                            !!00630
*                D -  Delete                                          !!00631
*                S -  Logon security check                            !!00632
*                O -  Entry into OPR functions                        !!00633
                                                                       !00634
      04  UPDT-TYP           PIC X(1).                                 !00635
                                                                       !00636
*           Currently unsupported.                                    !!00637
                                                                       !00638
      04  STA-NUM            PIC X(4).                                 !00639
                                                                       !00640
      04  FILLER             PIC X.                                    !00641
                                                                       !00642
   02 REC-IMAGE              PIC  X(9216).                             !00643
                                                                       !00644
END                                                                    !00645
                                                                       !00646
                                                                       !00646C00
                                                                       !00646C01
?PAGE "MSG-FILE-MAINT-12288 - 12k Long File Maintenance Message Format"
?SECTION MSG-FILE-MAINT-12288
DEFINITION MSG-FILE-MAINT-12288.                                       !00646C06
   02 MSG-HEADER             TYPE *.                                   !00646C07
   02 LAST-FM.                                                         !00646C08
                                                                       !00646C09
*           Timestamp (date/time) of the last file maintenence        !
*           function.  Converted from a timestamp by the servers.     !
                                                                       !00646C0E
      04  FM-TIMESTAMP       PIC X(16).                                !00646C0F
                                                                       !00646C0G
*           Terminal operators group number from logon.               !
                                                                       !00646C0J
      04  FM-USER-GRP        TYPE BINARY.                              !00646C0K
                                                                       !00646C0L
*           Terminal operators user number from logon.                !
                                                                       !00646C0O
      04  FM-USER-NUM        TYPE BINARY 32.                           !00646C0P
                                                                       !00646C0Q
*           File maintenence function:                                !
*                                                                     !
*                A -  Add                                             !
*                B -  Change "before" image                           !
*                C -  Change "after" image                            !
*                D -  Delete                                          !
*                S -  Logon security check                            !
*                O -  Entry into OPR functions                        !
                                                                       !00646C10
      04  UPDT-TYP           PIC X(1).                                 !00646C11
                                                                       !00646C12
*           Currently unsupported.                                    !
                                                                       !00646C15
      04  STA-NUM            PIC X(4).                                 !00646C16
                                                                       !00646C17
      04  FILLER             PIC X.                                    !00646C18
                                                                       !00646C19
   02 REC-IMAGE              PIC  X(12288).                            !00646C1A
                                                                       !00646C1B
END                                                                    !00646C1C
                                                                       !00646C1D
                                                                       !00646C1E
                                                                       !00646C1F
?PAGE "MSG-LIST - List Message Format"
?SECTION MSG-LIST
                                                                       !00646C1K
                                                                       !00651
DEFINITION MSG-LIST.                                                   !00652
   02 MSG-HEADER             TYPE *.                                   !00653
                                                                       !00654
*     IF "Y" THEN ENVELOPE DATA IS INCLUDED, ELSE IT IS NOT.          !!00655
                                                                       !00656
   02 ENV-DATA               PIC X(1).                                 !00657
                                                                       !00658
*     IF "0" THEN THE FIRST PAGE OF THREE PAGES OF SETTLEMENT RECORD  !!00659
*     IS BEING REQUESTED.  IF "1" THEN THE SECOND PAGE IS BEING       !!00660
*     REQUESTED.  IF "2" THEN THE THIRD (AND LAST) PAGE IS BEING      !!00661
*     REQUESTED.                                                      !!00662
                                                                       !00663
   02 SETL-DATA              PIC X(1).                                 !00664
   02 KEY-DATA               OCCURS 5 TIMES.                           !00665
      04 VAL                 PIC X(28).                                !00666
      04 LEN                 TYPE BINARY.                              !00667
   02 LINE-CNT               TYPE BINARY.                              !00668
   02 LINE-DATA              PIC X(78) OCCURS 18 TIMES.                !00669
   02 POSITION-BLOCK.                                                  !00670
      04 POS-DATA               TYPE BINARY OCCURS 50 TIMES.           !00671
   02 POSITION-KEY  REDEFINES  POSITION-BLOCK.                         !00672
      04 POS-KEY                TYPE BINARY 32.                        !00673
      04 POS-FILLER             TYPE BINARY OCCURS 48 TIMES.           !00674
   02 HDR1-POS               PIC 9(2).                                 !00675
   02 HDR2-POS               PIC 9(2).                                 !00676
   02 HDR-CNT                PIC 9(2).                                 !00677
                                                                       !00678
END                                                                    !00679
                                                                       !00680
?PAGE "ATM-COMM-STAT - V^STA^UP-to-DH Comm Status Message Format"
?SECTION ATM-COMM-STAT
                                                                       !00685
*  The following message is sent to the appropriate device handler    !!00686
*  when an ATM station is marked "up" or "down" by ACI/NET.The "up"   !!00687
*  message originates from V^STA^UP and the "down" message originates !!00688
*  from V^STA^DOWN.  MSG^SOURCE will be %30004.                       !!00689
                                                                       !00690
DEFINITION ATM-COMM-STAT.                                              !00691
                                                                       !00692
*  This field indicates the type of message:                          !!00693
*  9510 = station is down                                             !!00694
*  9511 = station is up                                               !!00695
                                                                       !00696
   02  CMD-TYP                    PIC X(4).                            !00697
                                                                       !00698
*  This field contains the ACI/NET station number for the station     !!00699
*  being marked up or down.                                           !!00700
                                                                       !00701
   02  STA-NUM                    TYPE BINARY.                         !00702
                                                                       !00703
*  This field contains the ACI/NET symbolic station name for the      !!00704
*  station being marked up or down.                                   !!00705
                                                                       !00706
   02  STA-SYM-NAME               TYPE SYM-NAME.                       !00707
                                                                       !00708
END                                                                    !00709
?page "OMF Extract Message"
?section OMF-EXTRACT-MSG
*##################################################################   !!00714
*#                    OMF-EXTRACT-MSG                             #   !!00715
*#                                                                #   !!00716
*##################################################################   !!00717
?talbound 0
*                                                                     !!00720
*  OMF-EXTRACT-MSG is the request sent from the refresh extract       !!00721
*  requester to the OMF extract process initiate an OMF extract.      !!00722
                                                                       !00723
DEFINITION OMF-EXTRACT-MSG.                                            !00724
                                                                       !00725
* Pathway reply code:                                                 !!00726
*   0 - ok                                                            !!00727
*   1 - error, extract not started.                                   !!00728
                                                                       !00729
  02  REPL-COD                          TYPE BINARY.                   !00730
                                                                       !00731
* The release number of the Base24 installation                       !!00732
                                                                       !00733
  02  REL-NUM                           PIC XX.                        !00734
                                                                       !00735
* The date to begin extracting on.  Format is YYMMDD.                 !!00736
                                                                       !00737
  02  STRT-DAT                          TYPE DAT.                      !00738
                                                                       !00739
* The date to end the extract on.  Dates are inclusive.  Format is    !!00740
* YYMMDD.                                                             !!00741
                                                                       !00742
  02  END-DAT                           TYPE DAT.                      !00743
                                                                       !00744
* The tape label format to use.  Must be "IBM, "BUR" or "NON"         !!00745
                                                                       !00746
  02  LABEL-TYP                         PIC X(3).                      !00747
                                                                       !00748
* The Tandem name of the tape drive which is used for the extract.    !!00749
                                                                       !00750
  02  TAPE-DRIVE                        PIC X(8).                      !00751
                                                                       !00752
END                                                                    !00753
                                                                       !00754
?PAGE "USER-CONTEXT - Requestor Parameter Definition"
?SECTION USER-CONTEXT
*                       USER-CONTEXT                                  !!00759
*                                                                     !!00760
*  User-context is passed from RQMEGA to subordinate requestors as a  !!00761
*  parameter in the call statement.  This is sourced into RQMEGA in   !!00762
*  the Working-Storage section and into all called requestors in the  !!00763
*  Linkage section, hence its common name 'Linkage'.  Data is filled  !!00764
*  by calls to the security server and LN-map server.  All FILLERs are!!00765
*  there to avoid DDL compiler warnings.                              !!00766
                                                                       !00767
DEFINITION USER-CONTEXT.                                               !00768
                                                                       !00769
*  Users current Logical Network name.                                !!00770
                                                                       !00771
   02  LNET                 TYPE LN.                                   !00772
                                                                       !00773
*  The defines the new Logical Network name which the user entered on !!00774
*  the base screen when function key F13 or F16 was hit.  Will be used!!00775
*  to obtain the new LCONF name and is passed back to the originating !!00776
*  requestor if the jump is successfull.                              !!00777
                                                                       !00778
   02  NEW-LNET             TYPE LN.                                   !00779
                                                                       !00780
*  The LCONF file name for the current Logical Network.  From server  !!00781
*  LN-MAP.                                                            !!00782
                                                                       !00783
   02  LCONF-NAME           TYPE FNAME.                                !00784
                                                                       !00785
*  The data associated with the logon request and response from server!!00786
*  security.                                                          !!00787
                                                                       !00788
   02  USER-DATA.                                                      !00789
                                                                       !00790
       04  ALIAS            TYPE *.                                    !00791
       04  FILLER           PIC X(1).                                  !00792
       04  USER-GRP         TYPE BINARY 16.                            !00793
       04  USER-NUM         TYPE BINARY 32.                            !00794
       04  FIID             TYPE *.                                    !00795
       04  REGN             TYPE *.                                    !00796
       04  BRCH             TYPE *.                                    !00797
                                                                       !00798
*      The users product indicator for screen/product access control. !!00799
*      From the users security record.                                !!00800
                                                                       !00801
       04  USER-PROD-IND    TYPE PROD-IND.                             !00802
                                                                       !00803
*      The sites product indicator for record I/O using segments.     !!00804
*      From the sites PROD file.                                      !!00805
                                                                       !00806
       04  SITE-PROD-IND    TYPE PROD-IND.                             !00807
                                                                       !00808
*      The byte position within the product indicator of the ACI      !!00809
*      product which the user is currently at.  Used to build the     !!00810
*      Control menu of product level files.                           !!00811
                                                                       !00812
       04  CURR-PROD        TYPE BINARY 16.                            !00813
                                                                       !00814
*      Controls the amount of record information logged to the OMF by !!00815
*      file maintenence servers.  Read from the LCONF by the Security !!00816
*      server.                                                        !!00817
                                                                       !00818
       04  OMF-AUDIT        PIC X(1).                                  !00819
           88  NO-OMF         VALUE "0".                               !00820
           88  WHOLE-MSG      VALUE "1".                               !00821
           88  HEADER-ONLY    VALUE "2".                               !00822
                                                                       !00823
                                                                       !00824K00
   02  MASKING-FLG          PIC X.                                     !00824K01
                                                                       !00824K02
                                                                       !00825
*  The screen access information for a specific file when the user is !!00826
*  sent to the files requestor.                                       !!00827
                                                                       !00828
   02  SCRN-ACCESS-INFO     TYPE SEC-SCRN-ACCESS.                      !00829
                                                                       !00830
*  The requestor name where the user is sent to.  Remains set upon    !!00831
*  return so the user can go back to the originating requestor on LN  !!00832
*  change requests.  PROG-PREFIX describes the terminal type and is   !!00833
*  always 'T6520-', 'T6530-' or 'T3270-'.  PROG-SUFFIX is the file ID !!00834
*  associated with the file; 'IDF ', 'TDF ', etc.  PROG-NAME in total !!00835
*  corresponds to a name in the PROGRAM-ID statement in requestors.   !!00836
                                                                       !00837
   02  PROG-NAME.                                                      !00838
       04  PROG-PREFIX      PIC X(6).                                  !00839
       04  PROG-SUFFIX      PIC X(4).                                  !00840
                                                                       !00841
*  The defines the new file ID which the user entered on the base     !!00842
*  screen when function key F16 was hit.  Will become the new         !!00843
*  Prog-suffix if access is allowed.                                  !!00844
                                                                       !00845
   02  NEW-PROG-SUFFIX      PIC X(4).                                  !00846
                                                                       !00847
*  This control routing back to the logon screen when the Logoff      !!00848
*  key is struck (SF16 or PF14).                                      !!00849
*                                                                     !!00850
*      1 = Logon screen.                                              !!00851
*  NOT 1 = Look at Prog-suffix, New-prog-suffix and New-lnet          !!00852
*          for action.                                                !!00853
                                                                       !00854
   02  LOGON-FUNC           TYPE BINARY 16.                            !00855
                                                                       !00856
*  Extra space allocated for RPQs and enhancements.                   !!00857
                                                                       !00858
                                                                       !00859
                                                                       !00860
   02  USER-FLD             PIC X(38).                                 !00861
   02  CRTAUTH-DATA REDEFINES USER-FLD.                                !00862
       04  CRTAUTH-DEST     PIC X(4).                                  !00863
       04  CRTAUTH-SRC      PIC X(4).                                  !00864
       04  RQMEGA-DEST      PIC X(4).                                  !00865
       04  FILLER           PIC X(26).                                 !00866
                                                                       !00867
*  LOGOFF-INTERVAL is used by all requesters as the TIMEOUT parameter !!00868
*  in the ACCEPT statement.  It is the number of seconds a user can   !!00869
*  be inactive in BASE24 before being automatically logged off.       !!00870
*  REL-INDICATOR is used by SPAN requesters to determine the BASE24   !!00871
*  release number.                                                    !!00872
                                                                       !00873
   02  LOGOFF-INTERVAL-DATA REDEFINES USER-FLD.                        !00874
       04  FILLER           PIC X(12).                                 !00875
       04  LOGOFF-INTERVAL  PIC 9(5).                                  !00876
       04  REL-INDICATOR    PIC 9.                                     !00877
       04  FILLER           PIC X(20).                                 !00878
                                                                       !00879
                                                                       !00880
                                                                       !00880A00
*  For requesters which support multiple logical views of a physical   !00880A01
*  file e.g., the IFCF requester, the VIEW-ID defines which view is    !00880A02
*  to be displayed.                                                    !00880A03
                                                                       !00880A04
   02  VIEW-DATA REDEFINES USER-FLD.                                   !00880A05
       04  FILLER           PIC X(18).                                 !00880A06
       04  VIEW-ID          PIC X(2).                                  !00880A07
       04  FILLER           PIC X(18).                                 !00880A08
                                                                       !00880A09
                                                                       !00880C00
*  The DAT-FRMT-OPT is passed to requesters that have the ability      !00880C01
*  to display dates in various formats.  The DAT-FRMT-OPT value        !00880C02
*  indicates the date format.                                          !00880C03
                                                                       !00880C04
   02  DAT-FRMT     REDEFINES USER-FLD.                                !00880C05
       04  FILLER           PIC X(20).                                 !00880C06
       04  DAT-FRMT-OPT     PIC X(1).                                  !00880C07
       04  FILLER           PIC X(17).                                 !00880C08
                                                                       !00880H00
*  The PASSWORD-DATA field is used by the DCT requesters and enables !!!00880H01
*  the user to enter a password for SERVER-NCP.                      !!!00880H02
                                                                       !00880H03
   02  PASSWORD-DATA REDEFINES USER-FLD.                               !00880H04
       04  FILLER           PIC X(21).                                 !00880H05
       04  PASSWORD         PIC X(16).                                 !00880H06
       04  FILLER           PIC X(1).                                  !00880H07
                                                                       !00880H08
                                                                       !00880H09
                                                                       !00880H0A
                                                                       !00880H0B
*  The title displayed by the Operational Control screens.  The value !!00882
*  "BASE24" is filled in by the BASE24 RQMEGA.  Other RQMEGAs, e.g.   !!00883
*  those used by BVS or DBITS, use their own values.  The field is    !!00884
*  required because the OPR requesters are shared by all these        !!00885
*  systems, but BASE24 is not appropriate for all.                    !!00886
                                                                       !00887
   02  OPR-TITLE            PIC X(6).                                  !00888
                                                                       !00889
                                                                       !00890
                                                                       !00891
                                                                       !00892
*  This defines the length of the resource node array.  Only the space!!00893
*  needed is used.                                                    !!00894
                                                                       !00895
   02  RN-NUM               TYPE BINARY 16 UNSIGNED.                   !00896
                                                                       !00897
*  The list of Resource Nodes to which the operator can issue         !!00898
*  commands.                                                          !!00899
                                                                       !00900
   02  RESOURCE-NODE        TYPE SYM-NAME                              !00901
                            OCCURS 0 TO 10 TIMES                       !00902
                            DEPENDING ON RN-NUM.                       !00903
                                                                       !00904
END                                                                    !00905
                                                                       !00906
                                                                       !00907
                                                                       !00907D00
?PAGE "CSFC-USER-CONTEXT - Requester Parameter Definition"
?SECTION CSFC-USER-CONTEXT
*                                                                     !
*                     CSFC-USER-CONTEXT                               !
*                                                                     !
*  These fields represent key data entered by the user on the CIS,     !00907D0B
*  CSTP, or FSF screens.  RQMEGA will pass CSFC-USER-CONTEXT to        !00907D0C
*  these three requesters in addition to the standard USER-CONTEXT.    !00907D0D
*  If a user selects a specified "hot key" from any CIS, CSTP, or      !00907D0E
*  FSF screen, the sending requester will fill in the fields in        !00907D0F
*  CSFC-USER-CONTEXT.  The receiving requester will automatically      !00907D0G
*  display data from CSFC-USER-CONTEXT in corresponding fields on      !00907D0H
*  its primary screen, so the user does not have to re-enter this      !00907D0I
*  information or, in some cases, press a function key to retrieve     !00907D0J
*  information from disk files.  The user may return to the primary    !00907D0K
*  screen of the requester they hot-keyed from by pressing the F16     !00907D0L
*  function key.                                                       !00907D0M
                                                                       !00907D0N
                                                                       !00907D0O
DEFINITION CSFC-USER-CONTEXT.                                          !00907D0P
                                                                       !00907D0Q
*  Institution identifier.  This may be entered on the CIS, CSTP,      !00907D0R
*  or FSF.                                                             !00907D0S
                                                                       !00907D0T
   02  FIID                 TYPE *.                                    !00907D0U
                                                                       !00907D0V
*  Card number.  This may be entered on the CIS, CSTP, or FSF.         !00907D0W
                                                                       !00907D0X
   02  CRD-NUM              PIC X(19).                                 !00907D0Y
                                                                       !00907D0Z
*  Member number.  This may be entered on the CIS, CSTP, or FSF.       !00907D10
                                                                       !00907D11
   02  MBR-NUM              TYPE *.                                    !00907D12
                                                                       !00907D13
*  Search date in the format YYMMDD.  The date is only displayed       !00907D14
*  on the CSTP screen.                                                 !00907D15
                                                                       !00907D16
   02  CSTP-DAT             TYPE DAT.                                  !00907D17
                                                                       !00907D18
*  Record type indicates the type of search that was                   !00907D19
*  being performed on the FSF screen.  Valid values are:               !00907D1A
*         "PR" = Card Prefix                                           !00907D1B
*         "ED" = Expiration Date                                       !00907D1C
                                                                       !00907F00
*         "EP" = Expiration Date within Cardholder Postal Code         !00907F01
*         "TP" = Terminal Postal Code                                  !00907F02
*         "TC" = Terminal Country Code                                 !00907F03
*         "MC" = Merchant Category Code                                !00907F04
                                                                       !00907F05
                                                                       !00907D1E
   02  FSF-REC-TYP          PIC X(2).                                  !00907D1F
                                                                       !00907D1G
                                                                       !00907F06
*  Terminal postal code from the FSF screen.                           !00907F07
                                                                       !00907F08
   02  FSF-TERM-POSTAL-CDE  PIC X(10).                                 !00907F09
                                                                       !00907F0A
*  Terminal country code from the FSF screen.                          !00907F0B
                                                                       !00907F0C
   02  FSF-TERM-CNTRY-CDE   PIC X(3).                                  !00907F0D
                                                                       !00907F0E
*  Merchant category code from the FSF screen.                         !00907F0F
                                                                       !00907F0G
   02  FSF-MERCH-CAT-CDE    PIC X(4).                                  !00907F0H
                                                                       !00907F0I
                                                                       !00907F0J
*  Expiration date from the FSF screen.                                !00907D1H
                                                                       !00907D1I
   02  FSF-EXP-DAT          PIC X(4).                                  !00907D1J
                                                                       !00907D1K
*  Postal code from the FSF screen.                                    !00907D1L
                                                                       !00907D1M
                                                                       !00907F0K
   02  FSF-CRD-POSTAL-CDE   PIC X(10).                                 !00907F0L
                                                                       !00907F0M
                                                                       !00907D1O
*  The program suffix of the screen the user hot-keyed from.  The      !00907D1P
*  sending requester will put its program suffix (CIS, CSTP, or FSF)   !00907D1Q
*  in this field.  If there is already an acronym in this field, the   !00907D1R
*  sending requestor will move that acronym to the SECOND-PROG-SUFFIX  !00907D1S
*  field.  The requester that is called will return to this requester  !00907D1T
*  if F16 is pressed and there is data in this field.                  !00907D1U
                                                                       !00907D1V
   02  FIRST-PROG-SUFFIX    PIC X(4).                                  !00907D1W
                                                                       !00907D1X
*  The program suffix of the screen the user was on prior to the       !00907D1Y
*  screen they just hot-keyed from.                                    !00907D1Z
                                                                       !00907D20
   02  SECOND-PROG-SUFFIX   PIC X(4).                                  !00907D21
                                                                       !00907D22
                                                                       !00907F0N
   02  FILLER               PIC X.                                     !00907F0O
                                                                       !00907F0P
END                                                                    !00907D23
                                                                       !00907D24
                                                                       !00907E00
?PAGE "USER-CNTX-CAF-INFO - CLST/CAF Requestor Parameter Definition"
?SECTION USER-CNTX-CAF-INFO
*                       USER-CONTEXT-CAF-INFO                          !00907E05
*                                                                      !00907E06
*  User-context-caf-info is similar to User-context in that it is      !00907E07
*  passed from RQMEGA to the CAF requestor as a parameter in the call  !00907E08
*  statement.  This will be initialized to all spaces in RQMEGA, and   !00907E09
*  will be filled in with data in the CLST Requester for the Card      !00907E0A
*  Product.  If the data is spaces in the CAF Requester, normal        !00907E0B
*  processing will occur.  If there is data present, the CAF Requester !00907E0C
*  will attempt to do a read on the account.                           !00907E0D
                                                                       !00907E0E
DEFINITION USER-CNTX-CAF-INFO.                                         !00907E0F
                                                                       !00907E0G
*  Account number listed on CLST screen.                               !00907E0H
   02  ACCT-NUM             PIC X(19).                                 !00907E0I
                                                                       !00907E0J
*  Member number listed on CLST screen.                                !00907E0K
   02  CAF-MBR-NUM              PIC 9(3).                              !00907E0L
                                                                       !00907E0M
END                                                                    !00907E0N
                                                                       !00907E0O
?PAGE "CMD-MSG - DCT Requester/Server Message"
?SECTION CMD-MSG
                                                                       !00907E0T
                                                                       !00907D29
*                           CMD-MSG                                   !!00912
*                                                                     !!00913
*   The CMD-MSG definition defines the format of all DCT requestor    !!00914
*   server messages.  This message format is used by the standard     !!00915
*   DCT subsystem and the PCS Station Control screen.                 !!00916
                                                                       !00917
DEFINITION CMD-MSG.                                                    !00918
                                                                       !00918H00
*   This field determines the status of the reply message as defined !!!00918H01
*   in the 'REPLY CODE' clause of the requestor SEND statement.      !!!00918H02
*   REPL-CDE must be included in the first two bytes of the          !!!00918H03
*   request/response format.                                         !!!00918H04
                                                                       !00918H05
    02 REPL-CDE               TYPE BINARY 16.                          !00918H06
                                                                       !00918H07
*   The USER-ID and PASSWORD fields are used by the DCT requesters   !!!00918H08
*   and enable the user to enter a user id and password for          !!!00918H09
*   SERVER-NCP.  These fields are required when the ENABLE-SECURITY  !!!00918H0A
*   param for SERVER-NCP is set to ON.  If the ENABLE-SECURITY param !!!00918H0B
*   for SERVER-NCP is set to OFF, the user id and password are not   !!!00918H0C
*   required.                                                          !00918H0D
                                                                       !00918H0E
    02 USER-ID                PIC X(16).                               !00918H0F
                                                                       !00918H0G
    02 PASSWORD               PIC X(16).                               !00918H0H
                                                                       !00918H0I
*   The object type passed to SERVER-NCP.                              !00918H0J
*                                                                      !00918H0K
*   The object type:                                                   !00918H0L
*    0:  Node (currently not used).                                    !00918H0M
*    1:  Process.                                                      !00918H0N
*    2:  Station.                                                      !00918H0O
                                                                       !00918H0P
    02 OBJ-TYP                TYPE BINARY 16.                          !00918H0Q
                                                                       !00918H0R
                                                                       !00919H00
                                                                       !00919H01
                                                                       !00919H02
*   The DCT command type:                                             !!00927
*                                                                     !!00928
*    0:  STATUS <TERM-ID>.                                            !!00929
*    1:  Command for a single ATM <TERM-ID>.                          !!00930
*    2:  IBM 3624 Branch Journal Print.                               !!00931
*    3:  CDM.                                                         !!00932
*    4:  NAM.                                                         !!00933
*    5:  Commands involving screen numbers.                           !!00934
*    6:  LOADKEY.                                                     !!00935
*    7:  Increase Cash in hopper(s).                                  !!00936
*    8:  Decrease Cash in hopper(s).                                  !!00937
*    9:  Unused.                                                      !!00938
*   10:  Warmboot all FIIDs.                                          !!00939
*   11:  Warmboot a single FI <FIID>.                                 !!00940
*   12:  Warmboot Process <process name>.                             !!00941
*   13:  Unused.                                                      !!00942
*   14:  Unused.                                                      !!00943
*   15:  Unused.                                                      !!00944
*   16:  Unused.                                                      !!00945
*   17:  STATUS ALL                                                   !!00946
*   18:  COD - Change Operating Data for IBMs.                        !!00947
*   19:  IBM 4730 commands (all of them).                             !!00948
                                                                       !00949
    02 TYP                    TYPE BINARY 16.                          !00950
                                                                       !00951
*   The TDF terminal ID which the operator is issuing a command for.  !!00952
                                                                       !00953
    02 TERM-ID                PIC X(16).                               !00954
                                                                       !00955
*   Returned from security server on successfull logon.  Used for     !!00956
*   Last-fm block instead of alias:  Shorter record.                  !!00957
                                                                       !00958
    02 GRP-NUM                TYPE BINARY 16.                          !00959
                                                                       !00960
    02 USER-NUM               TYPE BINARY 32.                          !00961
                                                                       !00962
*   Command name which indicates the device type or status for a      !!00963
*   STATUS command, or the process name for a WARMBOOT PROCESS        !!00964
*   command.  The list below provides most values.                    !!00965
*                                                                     !!00966
*   "OPEN            "                                                !!00967
*   "CLOSE           "                                                !!00968
*   "LOAD            "                                                !!00969
*   "ALL             "                                                !!00970
*   "I3624           "                                                !!00971
*   "T2300           "                                                !!00972
*   "D910            "                                                !!00973
*   "D911            "                                                !!00974
*   "D911L           "                                                !!00975
*   "NCR             "                                                !!00976
*   "RT650           "                                                !!00977
*   "ETS5100         "                                                !!00978
*   "II5500          "                                                !!00979
*   "I3614           "                                                !!00980
*   "D903            "                                                !!00981
*   "D906            "                                                !!00982
*   "D905            "                                                !!00983
*   "D912            "                                                !!00984
*   "C770            "                                                !!00985
*   "I4730           "                                                !!00986
*   "N50             "                                                !!00987
*   "OMRON           "                                                !!00988
*   "FAULT           "                                                !!00989
*   "UP              "                                                !!00990
*   "DOWN            "                                                !!00991
*   "CLOSED          "                                                !!00992
*   "BAL             "                                                !!00993
*   "UNBAL           "                                                !!00994
*   "BALANCE         "                                                !!00995
*   "NOT UP          "                                                !!00996
                                                                       !00997
    02 NAM                    PIC X(16).                               !00998
                                                                       !00999
*   Supplied by user at login.                                        !!01000
                                                                       !01001
    02 LN                     TYPE *.                                  !01002
                                                                       !01003
*   Supplied by user at login.  Can be left blank.  If Super/Super,   !!01004
*   security server fills with ****                                   !!01005
                                                                       !01006
    02 FIID                   TYPE *.                                  !01007
                                                                       !01008
    02 REGN                   TYPE *.                                  !01009
                                                                       !01010
    02 BRCH                   TYPE *.                                  !01011
                                                                       !01012
    02 PROD                   PIC X(6).                                !01013
                                                                       !01014
*   Current Tandem date.                                              !!01015
                                                                       !01016
    02 DAT                    PIC X(6).                                !01017
                                                                       !01018
*   Current LCONF name as returned during login.                      !!01019
                                                                       !01020
    02 LCONF-FNAME            TYPE FNAME.                              !01021
                                                                       !01022
*   Additional file name if required.                                 !!01023
                                                                       !01024
    02 FNAME                  TYPE *.                                  !01025
                                                                       !01026
    02 LOADKEY-OPT            PIC X.                                   !01027
                                                                       !01027G00
    02 SEND-STAT-OPT          PIC X REDEFINES LOADKEY-OPT.             !01027G01
                                                                       !01027G02
                                                                       !01028
    02 USER-FLD               PIC X.                                   !01029
                                                                       !01030
    02 MSG-NUM                TYPE BINARY 16.                          !01031
                                                                       !01032
    02 QUOTE-NUM              TYPE BINARY 16.                          !01033
                                                                       !01034
    02 QUOTE-LEN              TYPE BINARY 16.                          !01035
                                                                       !01036
    02 QOUTE                  PIC X(132).                              !01037
                                                                       !01038
*   Hopper numbers and amounts for increase, decrease cash commands,  !!01039
*   etc.                                                              !!01040
                                                                       !01041
    02 HOPR-NUM               TYPE BINARY 16 OCCURS 6 TIMES.           !01042
                                                                       !01043
    02 CASH-AMT               TYPE BINARY 32 OCCURS 6 TIMES.           !01044
                                                                       !01045
                                                                       !01045H00
    02 PRO-NAM                PIC X(16).                               !01045H01
*   Process number is not used by XPNET 3.0.                         !!!01045H02
                                                                       !01045H03
    02 PROCESS-NUM            TYPE BINARY 16.                          !01046
                                                                       !01047
*   Screen number for screen commands.                                !!01048
                                                                       !01049
    02 SCRN-NUM               TYPE BINARY 16.                          !01050
                                                                       !01051
*   Server response area.                                             !!01052
                                                                       !01053
    02 RESP-LINES             TYPE BINARY 16.                          !01054
                                                                       !01055
    02 RESP-LINE              OCCURS 12 TIMES.                         !01056
       03 DATA-LINE           PIC X(78).                               !01057
       03 WS-DATA-LINE-R      REDEFINES DATA-LINE.                     !01058
          04 WS-DATA-LINE     OCCURS 26 TIMES.                         !01059
             05 WS-RESP-FLD   PIC X(3).                                !01060
       03 WS-GRP-CONF         REDEFINES DATA-LINE.                     !01061
          04 FILLER           PIC X.                                   !01062
          04 WS-ITEM-CONF     PIC X(3) OCCURS 25 TIMES.                !01063
          04 FILLER           PIC XX.                                  !01064
                                                                       !01064A00
*   Additional Hopper numbers and amounts for increase,                !01064A01
*   decrease cash commands, etc. for Hoppers 7 & 8.                    !01064A02
                                                                       !01064A03
    02 HOPR-NUM-ADDL          TYPE BINARY 16 OCCURS 2 TIMES.           !01064A04
                                                                       !01064A05
    02 CASH-AMT-ADDL          TYPE BINARY 32 OCCURS 2 TIMES.           !01064A06
                                                                       !01064A07
END                                                                    !01065
                                                                       !01065I00
                                                                       !01065I01
?PAGE "MSG-HEADER - PATHWAY Request/Response Header Format - Ext"
?SECTION MSG-HEADER-EXT
                                                                       !01065I06
*  This header goes at the beginning of all extended File Maintenance  !01065I07
*  Messages.  This is an exact copy of MSG-HEADER except this message  !01065I08
*  includes the expanded PI Table definition.                          !01065I09
                                                                       !01065I0A
DEFINITION MSG-HEADER-EXT.                                             !01065I0B
                                                                       !01065I0C
*                                                                      !01065I0D
*  This field determines the status of the reply message as defined in !01065I0E
*  the REPLY CODE clause of the requestor SEND statement.  The codes   !01065I0F
*  shown below are the main reply codes returned from servers.  Other  !01065I0G
*  response codes are server dependent.  REPL-CDE must be the first    !01065I0H
*  two bytes of the request/response format.                           !01065I0I
*                                                                      !01065I0J
*     0 = Successfull response to request.  Data portion of the        !01065I0K
*         request format can be used.  The type of request is defined  !01065I0L
*         in TRAN-CDE.                                                 !01065I0M
*                                                                      !01065I0N
*     1 = Error response from the server.  ERR-NUM and ERR-TXT         !01065I0O
*         will contain the response to be displayed on the screen.     !01065I0P
*         Typically no data is returned.                               !01065I0Q
                                                                       !01065I0R
   02  REPL-CDE              TYPE BINARY.                              !01065I0S
                                                                       !01065I0T
*  File Identifier.  See the standard list of file application codes   !01065I0U
*  from Systems Engineering.                                           !01065I0V
                                                                       !01065I0W
   02  APPL-CDE              PIC X(2).                                 !01065I0X
                                                                       !01065I0Y
*  Identifies the transaction to be performed.                         !01065I0Z
*                                                                      !01065I10
*    1  = READ             2 = UPDATE          3 = DELETE              !01065I11
*    4  = ADD              5 = LOGON           6 = GET FIRST PAGE      !01065I12
*                                                  OF PERUSAL          !01065I13
*    7  = READ NEXT        8 = GET NEXT PAGE   9 = GET UFIR BLOCK      !01065I14
*                              OF PERUSAL                              !01065I15
*   10  = GET SCREEN      11 = VALIDATE LN    12 = GET UPFR INFO FOR   !01065I16
*         ACCESS RECORD        CHANGE              CURRENT USER        !01065I17
*   13  = MODIFY UFIR     14 = MODIFY SCREEN  15 = SECURITY 'ADD LIKE' !01065I18
*         RELATIONS            ACCESS INFO.        FUNCTION            !01065I19
*   16  = GET NEXT SCREEN 17 = VALIDATE FIID  18 = VALIDATE EXTRACT    !01065I1A
*         ACCESS BLOCK         REGN/BRCH           REQUEST             !01065I1B
*                              ACCESS                                  !01065I1C
                                                                       !01065K00
*   19  = REQUEST ACCESS  20 = LOGOFF         21 = RESET PASSWORD      !01065K01
*   22  = READ NEXT       23 = FILE OPERATION 24 = UNDEFINED           !01065K02
*         ALTERNATE KEY        SECURITY ERROR                          !01065K03
*         TRANSACTION                                                  !01065K04
                                                                       !01065K05
                                                                       !01065K06
                                                                       !01065K07
                                                                       !01065I1E
   02  TRAN-CDE              PIC 99.                                   !01065I1F
                                                                       !01065I1G
*  The terminal name which the operator is using from                  !01065I1H
*  TERMINAL-FILENAME.                                                  !01065I1I
                                                                       !01065I1J
   02  TERM-ID               PIC X(24).                                !01065I1K
                                                                       !01065I1L
*  "0" = No OMF auditing                                               !01065I1M
*  "1" = Audit record images (full OMF auditing)                       !01065I1N
*  "2" = Audit MSG-HEADER information only, no record images           !01065I1O
*                                                                      !01065I1P
*  Default is 1, set by the LCONF entry program.  LCONF PARAM OMFAUDIT !01065I1Q
*  controls the value.  Server security reads the param and passes it  !01065I1R
*  back with base sec data on each successfull logon.                  !01065I1S
                                                                       !01065I1T
   02  OMF-AUDIT             PIC X.                                    !01065I1U
                                                                       !01065I1V
*  FRMT-CDE identifies the format of the message to all extended       !01065I1W
*  servers for replying to requests.  The code is set by the sending   !01065I1X
*  requestor:                                                          !01065I1Y
*                                                                      !01065I1Z
*  'S' = MSG-SECURITY                                                  !01065I20
*  'A' = MSG-FILE-MAINT-1024                                           !01065I21
*  'B' = MSG-FILE-MAINT-4096                                           !01065I22
*  'C' = MSG-FILE-MAINT-1024 extended message                          !01065I23
*  'D' = MSG-FILE-MAINT-4096 extended message                          !01065I24
*  'E' = MSG-FILE-MAINT-2048 extended message                          !01065I25
*  'F' = MSG-FILE-MAINT-5120 extended message                          !01065I26
*  'G' = MSG-FILE-MAINT-9216 extended message                          !01065I27
*  'H' = MSG-FILE-MAINT-12288 extended message                         !01065I28
                                                                       !01065I29
   02  FRMT-CDE              PIC X.                                    !01065I2A
                                                                       !01065I2B
                                                                       !01065I2C
   02  ERR-STATUS.                                                     !01065I2D
                                                                       !01065I2E
       04  ERR-CDE           TYPE BINARY 16.                           !01065I2F
       04  ERR-SUB-CDE       TYPE BINARY 16.                           !01065I2G
                                                                       !01065I2H
   02  LCONF-NAME            TYPE FNAME.                               !01065I2I
                                                                       !01065I2J
                                                                       !01065K08
   02  MASKING-FLG           PIC X.                                    !01065K09
                                                                       !01065K0A
                                                                       !01065I2L
   02  USER-DATA.                                                      !01065I2M
                                                                       !01065I2N
*      Supplied by user at login.                                      !01065I2O
                                                                       !01065I2P
       04  LN                    TYPE *.                               !01065I2Q
                                                                       !01065I2R
*      Supplied by user at login.  Can be left blank.  If Super/Super, !01065I2S
*      security server fills with asterisks.                           !01065I2T
                                                                       !01065I2U
       04  FIID                  TYPE *.                               !01065I2V
       04  REGN                  TYPE *.                               !01065I2W
       04  BRCH                  TYPE *.                               !01065I2X
                                                                       !01065I2Y
*      Returned from security server on successfull logon.  Used for   !01065I2Z
*      LAST-FM block instead of alias:  Shorter record.                !01065I30
                                                                       !01065I31
       04  USER-GRP              TYPE BINARY 16.                       !01065I32
                                                                       !01065I33
*      Returned from security server on successfull logon.  Used for   !01065I34
*      LAST-FM blocks instead of alias:  Shorter record.               !01065I35
                                                                       !01065I36
       04  USER-NUM              TYPE BINARY 32.                       !01065I37
                                                                       !01065I38
*      The site's product indicator for record I/O using segments.     !01065I39
*      From the site's PROD file.                                      !01065I3A
                                                                       !01065I3B
   02  SITE-PROD-IND             TYPE PROD-IND-EXT.                    !01065I3C
                                                                       !01065I3D
*      The error code and text returned from servers.  The servers     !01065I3E
*      will do almost all validation.  This contains the error codes   !01065I3F
*      for file errors on file maintenence operations.                 !01065I3G
                                                                       !01065I3H
   02  ERR-NUM                   PIC  X(4).                            !01065I3I
   02  ERR-TXT                   PIC  X(70).                           !01065I3J
                                                                       !01065I3K
END                                                                    !01065I3L
                                                                       !01065I3M
?PAGE "MSG-SECURITY-EXT   Security Message Format - Ext"
?SECTION MSG-SECURITY-EXT
                                                                       !01065I3R
*  Message format passed from Logon requestor to Server-sec on logon   !01065I3S
*  attempts.  This message includes the expanded PI Table definition.  !01065I3T
                                                                       !01065I3U
DEFINITION MSG-SECURITY-EXT.                                           !01065I3V
                                                                       !01065I3W
*  Note that most login information is carried in MSG-HEADER.          !01065I3X
*  Duplicate information has been removed from this struct.            !01065I3Y
                                                                       !01065I3Z
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065I40
                                                                       !01065I41
*  The users login name.                                               !01065I42
                                                                       !01065I43
   02  ALIAS                 TYPE *.                                   !01065I44
                                                                       !01065I45
*  The users password entered at login time.                           !01065I46
                                                                       !01065I47
   02  PASSWORD              PIC  X(8).                                !01065I48
                                                                       !01065I49
*  The new password which the user entered at logon.  If blank, then   !01065I4A
*  no password change is requested.                                    !01065I4B
                                                                       !01065I4C
   02 NEW-PASSWORD           PIC X(8).                                 !01065I4D
                                                                       !01065I4E
*  The screen ID which the user is attempting access to.  Corresponds  !01065I4F
*  to the security record key.                                         !01065I4G
                                                                       !01065I4H
   02 SCREEN-ID              PIC X(4).                                 !01065I4I
                                                                       !01065I4J
*  Time where this user is automatically logged off the system.        !01065I4K
                                                                       !01065I4L
   02 END-TIM                PIC X(4).                                 !01065I4M
                                                                       !01065I4N
*  The number of seconds a user can be inactive in BASE24 before       !01065I4O
*  being automatically logged off.                                     !01065I4P
                                                                       !01065I4Q
   02 LOGOFF-INTERVAL        PIC 9(5).                                 !01065I4R
                                                                       !01065I4S
*  Product indicator from the users security record.                   !01065I4T
                                                                       !01065I4U
   02 USER-PROD-IND          TYPE PROD-IND-EXT.                        !01065I4V
                                                                       !01065I4W
*  The list of resource nodes the operator can send commands to from   !01065I4X
*  the NCT.  Returned from the security server on logon.               !01065I4Y
                                                                       !01065I4Z
   02 RESOURCE-NODE          TYPE SYM-NAME  OCCURS 12 TIMES.           !01065I50
                                                                       !01065I51
END                                                                    !01065I52
                                                                       !01065I53
?PAGE "MSG-ERR-EXT   - Error Message Format - Ext"
?SECTION MSG-ERR-EXT
                                                                       !01065I58
*  Response format returned from servers when a request is invalid and !01065I59
*  could not be processed.  This is an exact copy of                   !01065I5A
*  MSG-FILE-MAINT-1024 except this message includes the expanded       !01065I5B
*  PI Table definition.                                                !01065I5C
                                                                       !01065I5D
DEFINITION MSG-ERR-EXT.                                                !01065I5E
                                                                       !01065I5F
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065I5G
                                                                       !01065I5H
END                                                                    !01065I5I
                                                                       !01065I5J
                                                                       !01065I5K
?PAGE "MSG-FILE-MAINT-1024-EXT - Ext Short File Maint Message Format"
?SECTION MSG-FILE-MAINT-1024-EXT
                                                                       !01065I5P
*  This is an exact copy of MSG-FILE-MAINT-1024 except this message    !01065I5Q
*  includes the expanded PI Table definition.                          !01065I5R
                                                                       !01065I5S
DEFINITION MSG-FILE-MAINT-1024-EXT.                                    !01065I5T
                                                                       !01065I5U
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065I5V
                                                                       !01065I5W
   02 LAST-FM.                                                         !01065I5X
                                                                       !01065I5Y
*           Timestamp (date/time) of the last file maintenence         !01065I5Z
*           function.  Converted from a timestamp by the servers.      !01065I60
                                                                       !01065I61
      04  FM-TIMESTAMP       PIC X(16).                                !01065I62
                                                                       !01065I63
*           Terminal operators group number from logon.                !01065I64
                                                                       !01065I65
      04  FM-USER-GRP        TYPE BINARY.                              !01065I66
                                                                       !01065I67
*           Terminal operators user number from logon.                 !01065I68
                                                                       !01065I69
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065I6A
                                                                       !01065I6B
*           File maintenence function.  Valid values are:              !01065I6C
*                                                                      !01065I6D
*                A -  Add                                              !01065I6E
*                B -  Change "before" image                            !01065I6F
*                C -  Change "after" image                             !01065I6G
*                D -  Delete                                           !01065I6H
*                S -  Logon security check                             !01065I6I
*                O -  Entry into OPR functions                         !01065I6J
                                                                       !01065I6K
      04  UPDT-TYP           PIC X(1).                                 !01065I6L
                                                                       !01065I6M
*           Currently unsupported.                                     !01065I6N
                                                                       !01065I6O
      04  STA-NUM            PIC X(4).                                 !01065I6P
                                                                       !01065I6Q
      04  FILLER             PIC X.                                    !01065I6R
                                                                       !01065I6S
   02 REC-IMAGE              PIC  X(1024).                             !01065I6T
                                                                       !01065I6U
END                                                                    !01065I6V
                                                                       !01065I6W
?PAGE "MSG-FILE-MAINT-2048-EXT  Ext Medium File Maint Message Format"
?SECTION MSG-FILE-MAINT-2048-EXT
                                                                       !01065I70
*  This is an exact copy of MSG-FILE-MAINT-2048 except this message    !01065I71
*  includes the expanded PI Table definition.                          !01065I72
                                                                       !01065I73
DEFINITION MSG-FILE-MAINT-2048-EXT.                                    !01065I74
                                                                       !01065I75
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065I76
                                                                       !01065I77
   02 LAST-FM.                                                         !01065I78
                                                                       !01065I79
*           Timestamp (date/time) of the last file maintenence         !01065I7A
*           function.  Converted from a timestamp by the servers.      !01065I7B
                                                                       !01065I7C
      04  FM-TIMESTAMP       PIC X(16).                                !01065I7D
                                                                       !01065I7E
*           Terminal operators group number from logon.                !01065I7F
                                                                       !01065I7G
      04  FM-USER-GRP        TYPE BINARY.                              !01065I7H
                                                                       !01065I7I
*           Terminal operators user number from logon.                 !01065I7J
                                                                       !01065I7K
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065I7L
                                                                       !01065I7M
*           File maintenence function.  Valid values are:              !01065I7N
*                                                                      !01065I7O
*                A -  Add                                              !01065I7P
*                B -  Change "before" image                            !01065I7Q
*                C -  Change "after" image                             !01065I7R
*                D -  Delete                                           !01065I7S
*                S -  Logon security check                             !01065I7T
*                O -  Entry into OPR functions                         !01065I7U
                                                                       !01065I7V
      04  UPDT-TYP           PIC X(1).                                 !01065I7W
                                                                       !01065I7X
*           Currently unsupported.                                     !01065I7Y
                                                                       !01065I7Z
      04  STA-NUM            PIC X(4).                                 !01065I80
                                                                       !01065I81
      04  FILLER             PIC X.                                    !01065I82
                                                                       !01065I83
   02 REC-IMAGE              PIC  X(2048).                             !01065I84
                                                                       !01065I85
END                                                                    !01065I86
                                                                       !01065I87
?PAGE "MSG-FILE-MAINT-4096-EXT - Ext Long File Maint Message Format"
?SECTION MSG-FILE-MAINT-4096-EXT
                                                                       !01065I8C
*  This is an exact copy of MSG-FILE-MAINT-4096 except this message    !01065I8D
*  includes the expanded PI Table definition.                          !01065I8E
                                                                       !01065I8F
DEFINITION MSG-FILE-MAINT-4096-EXT.                                    !01065I8G
                                                                       !01065I8H
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065I8I
                                                                       !01065I8J
   02 LAST-FM.                                                         !01065I8K
                                                                       !01065I8L
*           Timestamp (date/time) of the last file maintenence         !01065I8M
*           function.  Converted from a timestamp by the servers.      !01065I8N
                                                                       !01065I8O
      04  FM-TIMESTAMP       PIC X(16).                                !01065I8P
                                                                       !01065I8Q
*           Terminal operators group number from logon.                !01065I8R
                                                                       !01065I8S
      04  FM-USER-GRP        TYPE BINARY.                              !01065I8T
                                                                       !01065I8U
*           Terminal operators user number from logon.                 !01065I8V
                                                                       !01065I8W
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065I8X
                                                                       !01065I8Y
*           File maintenence function.  Valid values are:              !01065I8Z
*                                                                      !01065I90
*                A -  Add                                              !01065I91
*                B -  Change "before" image                            !01065I92
*                C -  Change "after" image                             !01065I93
*                D -  Delete                                           !01065I94
*                S -  Logon security check                             !01065I95
*                O -  Entry into OPR functions                         !01065I96
                                                                       !01065I97
      04  UPDT-TYP           PIC X(1).                                 !01065I98
                                                                       !01065I99
*           Currently unsupported.                                     !01065I9A
                                                                       !01065I9B
      04  STA-NUM            PIC X(4).                                 !01065I9C
                                                                       !01065I9D
      04  FILLER             PIC X.                                    !01065I9E
                                                                       !01065I9F
   02 REC-IMAGE              PIC  X(4096).                             !01065I9G
                                                                       !01065I9H
END                                                                    !01065I9I
                                                                       !01065I9J
                                                                       !01065I9K
?PAGE "MSG-FILE-MAINT-5120-EXT - Ext 5K Long File Maint Message Format
?SECTION MSG-FILE-MAINT-5120-EXT
                                                                       !01065I9P
*  This is an exact copy of MSG-FILE-MAINT-5120 except this message    !01065I9Q
*  includes the expanded PI Table definition.                          !01065I9R
                                                                       !01065I9S
DEFINITION MSG-FILE-MAINT-5120-EXT.                                    !01065I9T
                                                                       !01065I9U
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065I9V
                                                                       !01065I9W
   02 LAST-FM.                                                         !01065I9X
                                                                       !01065I9Y
*           Timestamp (date/time) of the last file maintenence         !01065I9Z
*           function.  Converted from a timestamp by the servers.      !01065IA0
                                                                       !01065IA1
      04  FM-TIMESTAMP       PIC X(16).                                !01065IA2
                                                                       !01065IA3
*           Terminal operators group number from logon.                !01065IA4
                                                                       !01065IA5
      04  FM-USER-GRP        TYPE BINARY.                              !01065IA6
                                                                       !01065IA7
*           Terminal operators user number from logon.                 !01065IA8
                                                                       !01065IA9
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065IAA
                                                                       !01065IAB
*           File maintenence function.  Valid values are:              !01065IAC
*                                                                      !01065IAD
*                A -  Add                                              !01065IAE
*                B -  Change "before" image                            !01065IAF
*                C -  Change "after" image                             !01065IAG
*                D -  Delete                                           !01065IAH
*                S -  Logon security check                             !01065IAI
*                O -  Entry into OPR functions                         !01065IAJ
                                                                       !01065IAK
      04  UPDT-TYP           PIC X(1).                                 !01065IAL
                                                                       !01065IAM
*           Currently unsupported.                                     !01065IAN
                                                                       !01065IAO
      04  STA-NUM            PIC X(4).                                 !01065IAP
                                                                       !01065IAQ
      04  FILLER             PIC X.                                    !01065IAR
                                                                       !01065IAS
   02 REC-IMAGE              PIC  X(5120).                             !01065IAT
                                                                       !01065IAU
END                                                                    !01065IAV
                                                                       !01065IAW
                                                                       !01065IAX
                                                                       !01065L00
?PAGE "MSG-FILE-MAINT-6144-EXT - Ext Long File Maint Message Format"
?SECTION MSG-FILE-MAINT-6144-EXT
                                                                       !01065L05
*  This is an exact copy of MSG-FILE-MAINT-6144 except this message    !01065L06
*  includes the expanded PI Table definition.                          !01065L07
                                                                       !01065L08
DEFINITION MSG-FILE-MAINT-6144-EXT.                                    !01065L09
                                                                       !01065L0A
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065L0B
                                                                       !01065L0C
   02 LAST-FM.                                                         !01065L0D
                                                                       !01065L0E
*           Timestamp (date/time) of the last file maintenence         !01065L0F
*           function.  Converted from a timestamp by the servers.      !01065L0G
                                                                       !01065L0H
      04  FM-TIMESTAMP       PIC X(16).                                !01065L0I
                                                                       !01065L0J
*           Terminal operators group number from logon.                !01065L0K
                                                                       !01065L0L
      04  FM-USER-GRP        TYPE BINARY.                              !01065L0M
                                                                       !01065L0N
*           Terminal operators user number from logon.                 !01065L0O
                                                                       !01065L0P
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065L0Q
                                                                       !01065L0R
*           File maintenence function.  Valid values are:              !01065L0S
*                                                                      !01065L0T
*                A -  Add                                              !01065L0U
*                B -  Change "before" image                            !01065L0V
*                C -  Change "after" image                             !01065L0W
*                D -  Delete                                           !01065L0X
*                S -  Logon security check                             !01065L0Y
*                O -  Entry into OPR functions                         !01065L0Z
                                                                       !01065L0a
      04  UPDT-TYP           PIC X(1).                                 !01065L0b
                                                                       !01065L0c
*           Currently unsupported.                                     !01065L0d
                                                                       !01065L0e
      04  STA-NUM            PIC X(4).                                 !01065L0f
                                                                       !01065L0g
      04  FILLER             PIC X.                                    !01065L0h
                                                                       !01065L0i
   02 REC-IMAGE              PIC  X(6144).                             !01065L0j
                                                                       !01065L0k
END                                                                    !01065L0l
                                                                       !01065L0m
?PAGE "MSG-FILE-MAINT-9216-EXT Ext Extra Long File Maint Message Forma"
?SECTION MSG-FILE-MAINT-9216-EXT
                                                                       !01065L0r
                                                                       !01065IB0
*  This is an exact copy of MSG-FILE-MAINT-9216 except this message    !01065IB1
*  includes the expanded PI Table definition.                          !01065IB2
                                                                       !01065IB3
DEFINITION MSG-FILE-MAINT-9216-EXT.                                    !01065IB4
                                                                       !01065IB5
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065IB6
                                                                       !01065IB7
   02 LAST-FM.                                                         !01065IB8
                                                                       !01065IB9
*           Timestamp (date/time) of the last file maintenence         !01065IBA
*           function.  Converted from a timestamp by the servers.      !01065IBB
                                                                       !01065IBC
      04  FM-TIMESTAMP       PIC X(16).                                !01065IBD
                                                                       !01065IBE
*           Terminal operators group number from logon.                !01065IBF
                                                                       !01065IBG
      04  FM-USER-GRP        TYPE BINARY.                              !01065IBH
                                                                       !01065IBI
*           Terminal operators user number from logon.                 !01065IBJ
                                                                       !01065IBK
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065IBL
                                                                       !01065IBM
*           File maintenence function.  Valid values are:              !01065IBN
*                                                                      !01065IBO
*                A -  Add                                              !01065IBP
*                B -  Change "before" image                            !01065IBQ
*                C -  Change "after" image                             !01065IBR
*                D -  Delete                                           !01065IBS
*                S -  Logon security check                             !01065IBT
*                O -  Entry into OPR functions                         !01065IBU
                                                                       !01065IBV
      04  UPDT-TYP           PIC X(1).                                 !01065IBW
                                                                       !01065IBX
*           Currently unsupported.                                     !01065IBY
                                                                       !01065IBZ
      04  STA-NUM            PIC X(4).                                 !01065IC0
                                                                       !01065IC1
      04  FILLER             PIC X.                                    !01065IC2
                                                                       !01065IC3
   02 REC-IMAGE              PIC  X(9216).                             !01065IC4
                                                                       !01065IC5
END                                                                    !01065IC6
                                                                       !01065IC7
                                                                       !01065IC8
                                                                       !01065IC9
?PAGE "MSG-FILE-MAINT-12288-EXT -Ext 12k Long File Maint Message Forma"
?SECTION MSG-FILE-MAINT-12288-EXT
                                                                       !01065ICE
*  This is an exact copy of MSG-FILE-MAINT-12288 except this message   !01065ICF
*  includes the expanded PI Table definition.                          !01065ICG
                                                                       !01065ICH
DEFINITION MSG-FILE-MAINT-12288-EXT.                                   !01065ICI
                                                                       !01065ICJ
   02 MSG-HEADER             TYPE MSG-HEADER-EXT.                      !01065ICK
                                                                       !01065ICL
   02 LAST-FM.                                                         !01065ICM
                                                                       !01065ICN
*           Timestamp (date/time) of the last file maintenence         !01065ICO
*           function.  Converted from a timestamp by the servers.      !01065ICP
                                                                       !01065ICQ
      04  FM-TIMESTAMP       PIC X(16).                                !01065ICR
                                                                       !01065ICS
*           Terminal operators group number from logon.                !01065ICT
                                                                       !01065ICU
      04  FM-USER-GRP        TYPE BINARY.                              !01065ICV
                                                                       !01065ICW
*           Terminal operators user number from logon.                 !01065ICX
                                                                       !01065ICY
      04  FM-USER-NUM        TYPE BINARY 32.                           !01065ICZ
                                                                       !01065ID0
*           File maintenence function.  Valid values are:              !01065ID1
*                                                                      !01065ID2
*                A -  Add                                              !01065ID3
*                B -  Change "before" image                            !01065ID4
*                C -  Change "after" image                             !01065ID5
*                D -  Delete                                           !01065ID6
*                S -  Logon security check                             !01065ID7
*                O -  Entry into OPR functions                         !01065ID8
                                                                       !01065ID9
      04  UPDT-TYP           PIC X(1).                                 !01065IDA
                                                                       !01065IDB
*           Currently unsupported.                                     !01065IDC
                                                                       !01065IDD
      04  STA-NUM            PIC X(4).                                 !01065IDE
                                                                       !01065IDF
      04  FILLER             PIC X.                                    !01065IDG
                                                                       !01065IDH
   02 REC-IMAGE              PIC  X(12288).                            !01065IDI
                                                                       !01065IDJ
END                                                                    !01065IDK
                                                                       !01065IDL
                                                                       !01065IDM
                                                                       !01065IDN
?PAGE "MSG-LIST-EXT  -  Ext List Message Format"
?SECTION MSG-LIST-EXT
                                                                       !01065IDS
*  This is an exact copy of MSG-LIST except this message includes      !01065IDT
*  the expanded PI Table definition.                                   !01065IDU
                                                                       !01065IDV
DEFINITION MSG-LIST-EXT.                                               !01065IDW
   02  MSG-HEADER             TYPE MSG-HEADER-EXT.                     !01065IDX
                                                                       !01065IDY
*      IF "Y" THEN ENVELOPE DATA IS INCLUDED, ELSE IT IS NOT.          !01065IDZ
                                                                       !01065IE0
   02  ENV-DATA               PIC X(1).                                !01065IE1
                                                                       !01065IE2
*      IF "0" THEN THE FIRST PAGE OF THREE PAGES OF SETTLEMENT RECORD  !01065IE3
*      IS BEING REQUESTED.  IF "1" THEN THE SECOND PAGE IS BEING       !01065IE4
*      REQUESTED.  IF "2" THEN THE THIRD (AND LAST) PAGE IS BEING      !01065IE5
*      REQUESTED.                                                      !01065IE6
                                                                       !01065IE7
   02  SETL-DATA              PIC X.                                   !01065IE8
   02  KEY-DATA               OCCURS 5 TIMES.                          !01065IE9
       04  VAL                PIC X(28).                               !01065IEA
       04  LEN                TYPE BINARY.                             !01065IEB
   02  LINE-CNT               TYPE BINARY.                             !01065IEC
   02  LINE-DATA              PIC X(78) OCCURS 18 TIMES.               !01065IED
   02  POSITION-BLOCK.                                                 !01065IEE
       04  POS-DATA           TYPE BINARY OCCURS 50 TIMES.             !01065IEF
                                                                       !01065IEG
   02  POSITION-KEY           REDEFINES POSITION-BLOCK.                !01065IEH
       04  POS-KEY            TYPE BINARY 32.                          !01065IEI
       04  POS-FILLER         TYPE BINARY OCCURS 48 TIMES.             !01065IEJ
                                                                       !01065IEK
   02  HDR1-POS               PIC 9(2).                                !01065IEL
   02  HDR2-POS               PIC 9(2).                                !01065IEM
   02  HDR-CNT                PIC 9(2).                                !01065IEN
                                                                       !01065IEO
END                                                                    !01065IEP
                                                                       !01065IEQ
?PAGE "USER-CONTEXT-EXT - Requestor Parameter Definition Extended"
?SECTION USER-CONTEXT-EXT
*                                                                      !01065IEV
*  User-context is passed from RQMEGA to subordinate requestors as a   !01065IEW
*  parameter in the call statement.  This is sourced into RQMEGA in    !01065IEX
*  the Working-Storage section and into all called requestors in the   !01065IEY
*  Linkage section, hence its common name 'Linkage'.  Data is filled   !01065IEZ
*  by calls to the security server and LN-map server.  All FILLERs are !01065IF0
*  there to avoid DDL compiler warnings.                               !01065IF1
                                                                       !01065IF2
*  This is an exact copy of USER-CONTEXT except this message includes  !01065IF3
*  the expanded PI Table definition.                                   !01065IF4
                                                                       !01065IF5
                                                                       !01065IF6
DEFINITION USER-CONTEXT-EXT.                                           !01065IF7
                                                                       !01065IF8
*  User's current Logical Network name.                                !01065IF9
                                                                       !01065IFA
  02  LNET                              TYPE LN.                       !01065IFB
                                                                       !01065IFC
*  The defines the new Logical Network name which the user entered on  !01065IFD
*  the base screen when function key F13 or F16 was hit.  Will be used !01065IFE
*  to obtain the new LCONF name and is passed back to the originating  !01065IFF
*  requestor if the jump is successfull.                               !01065IFG
                                                                       !01065IFH
   02  NEW-LNET                         TYPE LN.                       !01065IFI
                                                                       !01065IFJ
*  The LCONF file name for the current Logical Network.  From server   !01065IFK
*  LN-MAP.                                                             !01065IFL
                                                                       !01065IFM
   02  LCONF-NAME                       TYPE FNAME.                    !01065IFN
                                                                       !01065IFO
*  The data associated with the logon request and response from server !01065IFP
*  security.                                                           !01065IFQ
                                                                       !01065IFR
   02  USER-DATA.                                                      !01065IFS
       04  ALIAS                        TYPE *.                        !01065IFT
       04  FILLER                       PIC  X.                        !01065IFU
       04  USER-GRP                     TYPE BINARY 16.                !01065IFV
       04  USER-NUM                     TYPE BINARY 32.                !01065IFW
       04  FIID                         TYPE *.                        !01065IFX
       04  REGN                         TYPE *.                        !01065IFY
       04  BRCH                         TYPE *.                        !01065IFZ
                                                                       !01065IG0
*      The users product indicator for screen/product access control.  !01065IG1
*      From the users security record.                                 !01065IG2
                                                                       !01065IG3
       04  USER-PROD-IND                TYPE PROD-IND-EXT.             !01065IG4
                                                                       !01065IG5
*      The sites product indicator for record I/O using segments.      !01065IG6
*      From the sites PROD file.                                       !01065IG7
                                                                       !01065IG8
       04  SITE-PROD-IND                TYPE PROD-IND-EXT.             !01065IG9
                                                                       !01065IGA
*      The byte position within the product indicator of the BASE24    !01065IGB
*      product which the user is currently at.  Used to build the      !01065IGC
*      Control menu of product level files.                            !01065IGD
                                                                       !01065IGE
       04  CURR-PROD                    TYPE BINARY 16.                !01065IGF
                                                                       !01065IGG
*      Controls the amount of record information logged to the OMF by  !01065IGH
*      file maintenence servers.  Read from the LCONF by the Security  !01065IGI
*      server.                                                         !01065IGJ
                                                                       !01065IGK
       04  OMF-AUDIT                    PIC X.                         !01065IGL
           88  NO-OMF                   VALUE "0".                     !01065IGM
           88  WHOLE-MSG                VALUE "1".                     !01065IGN
           88  HEADER-ONLY              VALUE "2".                     !01065IGO
                                                                       !01065IGP
                                                                       !01065K0B
   02  MASKING-FLG                      PIC X.                         !01065K0C
                                                                       !01065K0D
                                                                       !01065IGR
*  The screen access information for a specific file when the user is  !01065IGS
*  sent to the files requestor.                                        !01065IGT
                                                                       !01065IGU
   02  SCRN-ACCESS-INFO                 TYPE SEC-SCRN-ACCESS.          !01065IGV
                                                                       !01065IGW
*  The requestor name where the user is sent to.  Remains set upon     !01065IGX
*  return so the user can go back to the originating requestor on LN   !01065IGY
*  change requests.  PROG-PREFIX describes the terminal type and is    !01065IGZ
*  always 'T6520-', or 'T3270-'.  PROG-SUFFIX is the file ID           !01065IH0
*  associated with the file; 'IDF ', 'TDF ', etc.  PROG-NAME in total  !01065IH1
*  corresponds to a name in the PROGRAM-ID statement in requestors.    !01065IH2
                                                                       !01065IH3
   02  PROG-NAME.                                                      !01065IH4
       04  PROG-PREFIX                  PIC X(6).                      !01065IH5
       04  PROG-SUFFIX                  PIC X(4).                      !01065IH6
                                                                       !01065IH7
*  The defines the new file ID which the user entered on the base      !01065IH8
*  screen when function key F16 was hit.  Will become the new          !01065IH9
*  Prog-suffix if access is allowed.                                   !01065IHA
                                                                       !01065IHB
   02  NEW-PROG-SUFFIX                  PIC X(4).                      !01065IHC
                                                                       !01065IHD
*  This control routing back to the logon screen when the Logoff       !01065IHE
*  key is struck (SF16 or PF14).                                       !01065IHF
*                                                                      !01065IHG
*      1 = Logon screen.                                               !01065IHH
*  NOT 1 = Look at Prog-suffix, New-prog-suffix and New-lnet           !01065IHI
*          for action.                                                 !01065IHJ
                                                                       !01065IHK
   02  LOGON-FUNC                       TYPE BINARY 16.                !01065IHL
                                                                       !01065IHM
*  Extra space allocated for RPQs and enhancements.                    !01065IHN
                                                                       !01065IHO
   02  USER-FLD                         PIC X(38).                     !01065IHP
                                                                       !01065IHQ
   02  CRTAUTH-DATA                     REDEFINES USER-FLD.            !01065IHR
       04  CRTAUTH-DEST                 PIC X(4).                      !01065IHS
       04  CRTAUTH-SRC                  PIC X(4).                      !01065IHT
       04  RQMEGA-DEST                  PIC X(4).                      !01065IHU
       04  FILLER                       PIC X(26).                     !01065IHV
                                                                       !01065IHW
*  LOGOFF-INTERVAL is used by all requesters as the TIMEOUT parameter  !01065IHX
*  in the ACCEPT statement.  It is the number of seconds a user can    !01065IHY
*  be inactive in BASE24 before being automatically logged off.        !01065IHZ
*  REL-INDICATOR is used by SPAN requesters to determine the BASE24    !01065II0
*  release number.                                                     !01065II1
                                                                       !01065II2
   02  LOGOFF-INTERVAL-DATA             REDEFINES USER-FLD.            !01065II3
       04  FILLER                       PIC X(12).                     !01065II4
       04  LOGOFF-INTERVAL              PIC 9(5).                      !01065II5
       04  REL-INDICATOR                PIC 9.                         !01065II6
       04  FILLER                       PIC X(20).                     !01065II7
                                                                       !01065II8
*  For requesters which support multiple logical views of a physical   !01065II9
*  file e.g., the IFCF requester, the VIEW-ID defines which view is    !01065IIA
*  to be displayed.                                                    !01065IIB
                                                                       !01065IIC
   02  VIEW-DATA                        REDEFINES USER-FLD.            !01065IID
       04  FILLER                       PIC X(18).                     !01065IIE
       04  VIEW-ID                      PIC X(2).                      !01065IIF
       04  FILLER                       PIC X(18).                     !01065IIG
                                                                       !01065IIH
*  The DAT-FRMT-OPT is passed to requesters that have the ability      !01065III
*  to display dates in various formats.  The DAT-FRMT-OPT value        !01065IIJ
*  indicates the date format.                                          !01065IIK
                                                                       !01065IIL
   02  DAT-FRMT                         REDEFINES USER-FLD.            !01065IIM
       04  FILLER                       PIC X(20).                     !01065IIN
       04  DAT-FRMT-OPT                 PIC X.                         !01065IIO
       04  FILLER                       PIC X(17).                     !01065IIP
                                                                       !01065IIQ
*  The PASSWORD-DATA field is used by the DCT requesters and enables   !01065IIR
*  the user to enter a password for SERVER-NCP.                        !01065IIS
                                                                       !01065IIT
   02  PASSWORD-DATA                    REDEFINES USER-FLD.            !01065IIU
       04  USER-FLD1-PASSWORD-DATA      PIC X(21).                     !01065IIV
       04  PASSWORD                     PIC X(16).                     !01065IIW
       04  USER-FLD2-PASSWORD-DATA      PIC X.                         !01065IIX
                                                                       !01065IIY
*  The title displayed by the Operational Control screens.  The value  !01065IIZ
*  "BASE24" is filled in by the BASE24 RQMEGA.  Other RQMEGAs, e.g.    !01065IJ0
*  those used by BVS or DBITS, use their own values.  The field is     !01065IJ1
*  required because the OPR requesters are shared by all these         !01065IJ2
*  systems, but BASE24 is not appropriate for all.                     !01065IJ3
                                                                       !01065IJ4
   02  OPR-TITLE                        PIC X(6).                      !01065IJ5
                                                                       !01065IJ6
*  This defines the length of the resource node array.  Only the space !01065IJ7
*  needed is used.                                                     !01065IJ8
                                                                       !01065IJ9
   02  RN-NUM                           TYPE BINARY 16 UNSIGNED.       !01065IJA
                                                                       !01065IJB
*  The list of Resource Nodes to which the operator can issue          !01065IJC
*  commands.                                                           !01065IJD
                                                                       !01065IJE
   02  RESOURCE-NODE                    TYPE SYM-NAME                  !01065IJF
                                        OCCURS 0 TO 10 TIMES           !01065IJG
                                        DEPENDING ON RN-NUM.           !01065IJH
                                                                       !01065IJI
END                                                                    !01065IJJ
                                                                       !01065IJK
