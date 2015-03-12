**FIX2.28  12/04/07  DDLGSEC 6005 DDL    BA60DDL  BA0B334  E                 ***
**FIX2.26  11/17/05  DDLGSEC 6004 DDL    BA60DDL  BA09314  D                 ***
**FIX2.11  01/02/01  DDLGSEC 6003 DDL    BA60DDL  BA04159  C                 ***
**SEQ0.04  11/01/00  DDLGSEC 6002 DDL    BA60DDL  BA04000  B                 ***
**SYNC.04  12/09/98  DDLGSEC 5302 DDL    BA53DDL  BA04000  B                 ***
**SYNC.03  08/28/98  DDLGSEC 5302 DDL    BA53DDL  BA03000  B                 ***
**SYNC.03  08/22/97  DDLGSEC 5102 DDL    BA51DDL  BA03000  B                 ***
**SYNC.02  06/25/96  DDLGSEC 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  06/06/95  DDLGSEC 5102 DDL    BA51DDL  BA51046  B                 ***
**FIX2.00  01/20/95  DDLGSEC 5101 DDL    BA51DDL  BA50286  A                 ***
!*SEQ2.00  10/20/92  DDLGSEC 5000 DDL    BA50DDL                               !
                                                                       !00000C00
?page "Security Message Format
?section Security Message history
********************************************************************** !00000C05
*                                                                    * !00000C06
*                              BASE24                                * !00000C07
*                              ------                                * !00000C08
*                                                                    * !00000C09
*                 DDL for the Security Message Format                * !00000C0A
*                                                                    * !00000C0B
*                    Proprietary Software Product                    * !00000C0C
*                                                                    * !00000C0D
*                         ACI Worldwide Inc.                         * !00000C0E
*                       330 South 108th Avenue                       * !00000C0F
*                       Omaha, Nebraska  68154                       * !00000C0G
*                           (402) 390-7600                           * !00000C0H
*                                                                    * !00000C0I
*    Copyright by ACI Worldwide Inc. 1992 - 2000                     * !00000C0J
*                                                                    * !00000C0K
*    All Rights Reserved.  No part of this document may be           * !00000C0L
*    reproduced in any manner without the prior written consent of   * !00000C0M
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000C0N
*    confidentiality is strictly maintained.  Use of any copyright   * !00000C0O
*    notice does not imply unrestricted or public access to these    * !00000C0P
*    materials.                                                      * !00000C0Q
*                                                                    * !00000C0R
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000C0S
*                                                                    * !00000C0T
********************************************************************** !00000C0U
* Record of Changes:                                                   !00000C0V
*                                                                      !00000C0W
* Date        Person/Emp #                                             !00000C0X
* ---------   ------------                                             !00000C0Y
                                                                       !00000C0Z
**********************************************************************!!00001
*                         History Section                            *!!00002
**********************************************************************!!00003
                                                                       !00004B00
                                                                       !00004B01
                                                                       !00004B02
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   *  !00027A01
*********************************************************************  !00027A02
*  08-22-94  JAS  - JMS/583                                            !00027A03
*  SYMPTOM:  BASE24-telebanking Initial Release.                       !00027A04
*  PROBLEM:  (E) NONE.                                                 !00027A05
*  FIX:  Added commemt for Segment 13 BASE24-iep and Segment 14        !00027A06
*        (BASE24-telebanking) to the SEC-BASE-INFO.PROD-IND field      !00027A07
*        and the SEC-SCRN-ACCESS.SCRN-PROD field.                      !00027A08
*  REFERENCES:  Work Order TB930301-01                                 !00027A09
*  DEPENDENCIES:  NONE.                                                !00027A0A
*                                                                      !00027A0B
                                                                       !00027A0C
                                                                       !00027B03
*********************************************************************  !00027B04
*                  RELEASE 5.1                                      *  !00027B05
*********************************************************************  !00027B06
* 01JUN95     JMS/583                                                  !00027B07
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00027B08
* PROBLEM:    <E> None.                                                !00027B09
* FIX:        Removed old history sections not associated with a       !00027B0A
*             specific Fix level.                                      !00027B0B
* IMPLEMENT:  None.                                                    !00027B0C
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00027B0D
                                                                       !00027B0E
                                                                       !00027C00
*********************************************************************  !00027C01
*             Release 6.0                                           *  !00027C02
*********************************************************************  !00027C03
* 30NOV2000   CLR/451                                                  !00027C04
* Symptom:    Release 6.0 Enhancements                                 !00027C05
* Problem:    None                                                     !00027C06
* Fix:        Removed version literals and constants.                  !00027C07
*             Removed product list comments for PROD-IND-E and         !00027C08
*             SCRN-PROD                                                !00027C09
* Dependency: Restore Release 6.0 files, modify the appropriate        !00027C0A
*             CUSTMACS flags, and run MAKE.                            !00027C0B
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00027C0C
                                                                       !00027C0D
                                                                       !00027D00
* 14OCT2005   rinkc                                                    !00027D01
* Symptom:    BASE24 Pathway Complex Passwords Enhancement             !00027D02
* Problem:    None                                                     !00027D03
* Fix:        Added PSWD-HIST array at the end of SEC-BASE-INFO.       !00027D04
* Dependency: Apply fixes to DDLFSEC, DDLGSEC and run Make.  Refer to  !00027D05
*             BA60UD09.SCNPSWD for a complete listing of dependencies. !00027D06
* Reference:  WO # 040628-14                                           !00027D07
                                                                       !00027D08
                                                                       !00027E00
* 12OCT2007   DwivedS                                                  !00027E01
* Symptom:    PCI - Masking on Pathway                                 !00027E02
* Problem:    None                                                     !00027E03
* Fix:        Added MASKING-FLG to the SEC-BASE-INFO.                  !00027E04
* Dependency: Apply fixes to DDLGSEC and run Make. Refer to            !00027E05
*             BA60UD0B.SCNMASK for a complete listing of dependencies. !00027E06
* Reference:  WO #061122-03                                            !00027E07
                                                                       !00027E08
**********************************************************************!!00030
?PAGE "Security record definitions
?deflist
                                                                       !00030C02
                                                                       !00033
*#####################################################################!!00034
*#               STANDARD SECURITY DEFINITIONS                       #!!00035
*#                                                                   #!!00036
*#  These are definitions for the security record and Pathway        #!!00037
*#  definitions.  They must follow the general definitions, but      #!!00038
*#  preceed both DDLGPTH and DDLFSEC.                                #!!00039
*#####################################################################!!00040
                                                                       !00041
*  The alternate key into the security file.  Available for users who !!00042
*  desire to keep with the Tandem Group/User number security concept. !!00043
*  Pathway uses this to detect Super/Super when allowing access to all!!00044
*  files.                                                             !!00045
                                                                       !00046
?comments
DEF SEC-ALTKEY.                                                        !00049
                                                                       !00050
                                                                       !00051
*                                                                     !!00052
*             A number identifying a group of users possessing        !!00053
*             similar CRT access requirements; assigned by the        !!00054
*             institution.  The Super/Super user group number is 255. !!00055
*             Two users with the same group number cannot have the    !!00056
*             same user number.                                       !!00057
*                                                                     !!00058
   02  USER-GRP                         TYPE BINARY 16.                !00059
                                                                       !00060
                                                                       !00061
*                                                                     !!00062
*             A number identifying the individual user within a       !!00063
*             particular user group.  The Super/Super user number is  !!00064
*             255.  Two users with the same user number cannot have   !!00065
*             the same group number.                                  !!00066
*                                                                     !!00067
   02  USER-NUM                         TYPE BINARY 32.                !00068
                                                                       !00069
END                                                                    !00070
                                                                       !00071
*            This structure defines the format of the Base security   !!00072
*            record for all users                                     !!00073
                                                                       !00074
DEF SEC-BASE-INFO.                                                     !00075
                                                                       !00076
                                                                       !00077
*                                                                     !!00078
*             A description of the operator's group number.  This is  !!00079
*             for reporting and documentation purposes only.          !!00080
*                                                                     !!00081
   02  GRP-DESC                         PIC X(20).                     !00082
                                                                       !00083
                                                                       !00084
*                                                                     !!00085
*             A description of the operator's user number.  This is   !!00086
*             for reporting and documentation purposes only.          !!00087
*                                                                     !!00088
   02  USER-DESC                        PIC X(20).                     !00089
                                                                       !00090
                                                                       !00091
*                                                                     !!00092
*             The password used at logon.  The password is stored in  !!00093
*             encrypted format on disk.                               !!00094
*                                                                     !!00095
   02  PASSWORD                         PIC X(8).                      !00096
                                                                       !00097
                                                                       !00098
*                                                                     !!00099
*             The date (YYMMDD) that the user last changed the value  !!00100
*             of the PASSWORD field.                                  !!00101
*                                                                     !!00102
   02  PASSWORD-CHG-DAT                 TYPE DAT.                      !00103
                                                                       !00104
                                                                       !00105
*                                                                     !!00106
*             A list of resource node names (as defined in the        !!00107
*             Network Environment Source File (NEFS)) that the        !!00108
*             operator is allowed to access (e.g., P1A^GATE).         !!00109
*                                                                     !!00110
   02  RESOURCE-NODE                    PIC X(16) OCCURS 12 TIMES.     !00111
                                                                       !00112
                                                                       !00113
*                                                                     !!00114
*             The SYSGEN name of the CRT terminals the operator is    !!00115
*             allowed to use to access BASE24.                        !!00116
*                                                                     !!00117
   02  STA                              PIC X(24) OCCURS 9 TIMES.      !00118
                                                                       !00119
                                                                       !00120
*                                                                     !!00121
*             The beginning of the daily period when the operator is  !!00122
*             allowed to logon.  Values are 0000 (12:00 a.m.) to 2359 !!00123
*             (11:59 p.m.).                                           !!00124
*                                                                     !!00125
   02  STRT-TIM                         PIC X(4).                      !00126
                                                                       !00127
                                                                       !00128
*                                                                     !!00129
*             The end of the daily period when the operator is        !!00130
*             allowed to logon.  Values are 0000 (12:00 a.m.) to 2359 !!00131
*             (11:59 p.m.).                                           !!00132
*                                                                     !!00133
   02  END-TIM                          PIC X(4).                      !00134
                                                                       !00135
                                                                       !00136
*                                                                     !!00137
*             The products for which the operator can access files.   !!00138
                                                                       !00139C00
*             This is built from screen access information.           !
*             See the PITABLE file for a description of the valid      !00139C03
*             values for this field.                                   !00139C04
                                                                       !00139C05
                                                                       !00140C00
                                                                       !00140C01
*                                                                     !!00141
                                                                       !00142C00
                                                                       !00142C01
                                                                       !00142C02
*                                                                     !!00169
                                                                       !00170C00
   02  PROD-IND-EXT                     TYPE *.                        !00170C01
                                                                       !00170C02
                                                                       !00171
                                                                       !00172
*                                                                     !!00173
*             The date and time, in timestamp form, the user last     !!00174
*             logged on.                                              !!00175
*                                                                     !!00176
   02  LAST-LOGON-DAT-TIM               TYPE BINARY 16 OCCURS 3 TIMES. !00177
                                                                       !00178
                                                                       !00179
*             The maximum number of logon attempts allowed before     !!00180
*             the user is locked out of BASE24.                       !!00181
                                                                       !00182
   02  MAX-LOGON-ATTEMPTS               PIC X(2).                      !00183
                                                                       !00184
*             The number of failed logon attempts since the last      !!00185
*             successful logon to BASE24.                             !!00186
                                                                       !00187
   02  CUR-LOGON-ATTEMPTS               PIC 9(2).                      !00188
                                                                       !00189
*             The number of seconds of inactivity allowed before a    !!00190
*             user is automatically logged off of BASE24.             !!00191
                                                                       !00192
   02  LOGOFF-INTERVAL                  PIC X(5).                      !00193
                                                                       !00193E00
                                                                       !00193E01
*             The flag that defines whether users can view sensitive   !00193E02
*             data in the clear or masked form. Values are 'Y' or 'N'. !00193E03
*             Default value is 'Y'.                                    !00193E04
*             The data elements defined as 'sensitive information' on  !00193E05
*             screens are PAN, Card's Expiration Date and Cardholder's !00193E06
*             Name.                                                    !00193E07
*             If the PAN is configured for masking for the user,       !00193E08
*             then the other sensitive data will be masked completely. !00193E09
                                                                       !00193E0A
   02  MASKING-FLG                      PIC X.                         !00193E0B
                                                                       !00193E0C
                                                                       !00194
*             This field is not used.                                 !!00195
                                                                       !00196
                                                                       !00196E00
   02  USER-FLD1                        PIC X(14).                     !00196E01
                                                                       !00196E02
                                                                       !00197E00
                                                                       !00197E01
                                                                       !00197D00
*                                                                      !00197D01
*             The storage place for the current and previous passwords !00197D02
*             if complex passwords have been implemented.              !00197D03
*                                                                      !00197D04
   02  PSWD-HIST                        OCCURS 10 TIMES.               !00197D05
*                                                                      !00197D06
*             The first occurrence is the SHA-1 hash output of the     !00197D07
*             current password.  The remaining occurrences are the     !00197D08
*             SHA-1 hash output of previous passwords.                 !00197D09
*                                                                      !00197D0A
       04  PSWD                         PIC X(20).                     !00197D0B
*                                                                      !00197D0C
*             The date (YYMMDD) the user saved the value in the        !00197D0D
*             related PSWD-HIST.PSWD field.                            !00197D0E
*                                                                      !00197D0F
       04  PSWD-CHNG-DAT                TYPE DAT.                      !00197D0G
                                                                       !00197D0H
END                                                                    !00198
                                                                       !00199
*  The primary key for the security file.  Users always log on with   !!00200
*  their alias once their security record is set up.  The alias       !!00201
*  'SUPER.SUPER' is the default logon where no security file is built.!!00202
                                                                       !00203
DEF SEC-PRIKEY.                                                        !00204
                                                                       !00205
                                                                       !00206
*                                                                     !!00207
*             The identifier for an operator at logon.                !!00208
*                                                                     !!00209
   02  ALIAS                            TYPE *.                        !00210
                                                                       !00211
                                                                       !00212
*                                                                     !!00213
*             Identifies the file the security record represents.     !!00214
*             The Base record is identified by BASE; screen access    !!00215
*             records identify a specific file using an acronym or    !!00216
*             abbreviation (e.g., CAF, NEG, IDF).                     !!00217
*                                                                     !!00218
   02  FILE-ID                          PIC X(4).                      !00219
                                                                       !00220
END                                                                    !00221
                                                                       !00222
*             This structure defines the format for a screen access   !!00223
*             security record.  Each user will have one screen access !!00224
*             record per file they are allowed to read, add, delete or!!00225
*             update records from.  Super/Super will have no screen   !!00226
*             access records because he is allowed access to all      !!00227
*             files.  The definition will support up to 24 overlays   !!00228
*             (pages) per file.                                       !!00229
                                                                       !00230
DEF SEC-SCRN-ACCESS.                                                   !00231
                                                                       !00232
*                                                                     !!00233
*             The values in the following fields indicate the access  !!00234
*             rights of the operator.                                 !!00235
*                                                                     !!00236
   02  SCRN-ACCESS-LIST                 OCCURS 48 TIMES.               !00237
                                                                       !00238
                                                                       !00239
                                                                       !00240
                                                                       !00241
*                                                                     !!00242
*             Indicates the BASE24 product with which the screen      !!00243
                                                                       !00244C00
*             access information is concerned.                        !
*             See the PITABLE file for a description of the valid      !00244C03
*             values for this field.                                   !00244C04
                                                                       !00244C05
*                                                                     !!00245
                                                                       !00246C00
                                                                       !00246C01
                                                                       !00246C02
*                                                                     !!00273
       04  SCRN-PROD                    TYPE BINARY 16.                !00274
                                                                       !00275
*                                                                     !!00276
*             The values in the following fields determine the type   !!00277
*             of screen access that is allowed.                       !!00278
*                                                                     !!00279
       04  SCRN-ACCESS.                                                !00280
                                                                       !00281
                                                                       !00282
*                                                                     !!00283
*             Determines whether or not the operator is allowed to    !!00284
*             read the screen information for the BASE24 product      !!00285
*             indicated in the SCRN-PROD field.  A Y indicates the    !!00286
*             operator is allowed read access.                        !!00287
*                                                                     !!00288
           06  R-ACCESS                 PIC X(1).                      !00289
                                                                       !00290
                                                                       !00291
*                                                                     !!00292
*             Determines whether or not the operator is allowed to    !!00293
*             add screen information for the BASE24 product indicated !!00294
*             in the SCRN-PROD field.  A Y indicates the operator is  !!00295
*             allowed add access.                                     !!00296
*                                                                     !!00297
           06  A-ACCESS                 PIC X(1).                      !00298
                                                                       !00299
                                                                       !00300
*                                                                     !!00301
*             Determines whether or not the operator is allowed to    !!00302
*             delete screen information for the BASE24 product        !!00303
*             indicated in the SCRN-PROD field.  A Y indicates the    !!00304
*             operator is allowed delete access.                      !!00305
*                                                                     !!00306
           06  D-ACCESS                 PIC X(1).                      !00307
                                                                       !00308
                                                                       !00309
*                                                                     !!00310
*             Determines whether or not the operator is allowed to    !!00311
*             update screen information for the BASE24 product        !!00312
*             indicated in the SCRN-PROD field.  A Y indicates the    !!00313
*             operator is allowed update access.*                     !!00314
           06  U-ACCESS                 PIC X(1).                      !00315
                                                                       !00316
END                                                                    !00317
                                                                       !00318
