**FIX2.28  11/23/06  DDLFPTLF6009 DDL    PS60DDL  PS0A304  I                 ***
**FIX2.26  11/17/05  DDLFPTLF6008 DDL    PS60DDL  PS09304  H                 ***
**FIX2.23  02/13/03  DDLFPTLF6007 DDL    PS60DDL  PS06081  G                 ***
**FIX2.22  04/12/02  DDLFPTLF6006 DDL    PS60DDL  PS05138  F                 ***
**FIX2.19  01/12/02  DDLFPTLF6005 DDL    PS60DDL  PS05072  E                 ***
**FIX2.11  01/02/01  DDLFPTLF6004 DDL    PS60DDL  PS04098  D                 ***
**SEQ0.04  11/01/00  DDLFPTLF6003 DDL    PS60DDL  PS04000  C                 ***
**SYNC.04  12/08/98  DDLFPTLF5303 DDL    PS53DDL  PS04000  C                 ***
**SYNC.03  08/28/98  DDLFPTLF5303 DDL    PS53DDL  PS03000  C                 ***
**SYNC.03  08/22/97  DDLFPTLF5103 DDL    PS51DDL  PS03000  C                 ***
**SYNC.02  06/25/96  DDLFPTLF5103 DDL    PS51DDL  PS02000  C                 ***
**FIX2.00  06/16/95  DDLFPTLF5103 DDL    PS51DDL  PS51006  C                 ***
**FIX2.00  02/24/93  DDLFPTLF5102 DDL    PS51DDL  PS50009  B                 ***
**FIX2.00  02/23/93  DDLFPTLF5001 DDL    PS50DDL  PS50001  A                 ***
!*SEQ2.00  01/26/93  DDLFPTLF5000 DDL    PS50DDL                               !
?page "BASE24-pos Transaction Log File"
?section ptlf-history
********************************************************************** !00000D04
*                                                                    * !00000D05
*                             BASE24-pos                             * !00000D06
*                             ----------                             * !00000D07
*                                                                    * !00000D08
*            DDL for the BASE24-pos Transaction Log File             * !00000D09
*                                                                    * !00000D0A
*                   Proprietary Software Product                     * !00000D0B
*                                                                    * !00000D0C
*                         ACI Worldwide Inc.                         * !00000D0D
*                       330 South 108th Avenue                       * !00000D0E
*                       Omaha, Nebraska  68154                       * !00000D0F
*                           (402) 390-7600                           * !00000D0G
*                                                                    * !00000D0H
*    Copyright by ACI Worldwide Inc. 1993 - 2000                     * !00000D0I
*                                                                    * !00000D0J
*    All Rights Reserved.  No part of this document may be           * !00000D0K
*    reproduced in any manner without the prior written consent of   * !00000D0L
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000D0M
*    confidentiality is strictly maintained.  Use of any copyright   * !00000D0N
*    notice does not imply unrestricted or public access to these    * !00000D0O
*    materials.                                                      * !00000D0P
*                                                                    * !00000D0Q
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000D0R
*                                                                    * !00000D0S
********************************************************************** !00000D0T
*                                                                      !00000D0U
* Record of Changes:                                                   !00000D0V
*                                                                      !00000D0W
* Date        Person/Emp #                                             !00000D0X
* ---------   ------------                                             !00000D0Y
                                                                       !00000D0Z
                                                                       !00003D00
                                                                       !00003D01
                                                                       !00003D02
                                                                       !00005C00
********************************************************************** !00005C01
*                   RELEASE 5.1                                      * !00005C02
********************************************************************** !00005C03
* 95Jun01     MLB/598                                                  !00005C04
* SYMPTOM:    BASE24 Release 5.1 enhancements                          !00005C05
* PROBLEM:    (E) None                                                 !00005C06
* FIX:        Modified all file references to use TACL Defines in      !00005C07
*             order to use the MAKE Utility.                           !00005C08
* IMPLEMENT:  Apply fix and re-MAKE                                    !00005C09
* REFERENCE:  BASE24 Release 5.1 MAKE Utilization Document             !00005C0A
*                                                                      !00005C0B
* 95JUN01     JMS/583                                                  !00005C0C
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00005C0D
* PROBLEM:    <E> None.                                                !00005C0E
* FIX:        Removed old history sections not associated with a       !00005C0F
*             specific Fix level.                                      !00005C0G
* IMPLEMENT:  None.                                                    !00005C0H
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00005C0I
*                                                                      !00005C0J
*********************************************************************  !00005C0K
                                                                       !00005D03
*********************************************************************  !00005D04
*             Release 6.0                                           *  !00005D05
*********************************************************************  !00005D06
* 30NOV2000   jfu/543                                                  !00005D07
* Symptom:    Release 6.0 Enhancements                                 !00005D08
* Problem:    None.                                                    !00005D09
* Fix:        Removed RTLF extract positioning.                        !00005D0A
* Dependency: Restore Release 6.0 files, modify the appropriate        !00005D0B
*             CUSTMACS flags, and run MAKE.                            !00005D0C
* Reference:  WO #000101-1 (General Release 6.0)                       !00005D0D
                                                                       !00005E00
*                                                                      !00005E01
* 08JAN2002   BEM/348                                                  !00005E02
* Symptom:    Release 6.0 Format 2 File Support                        !00005E03
* Problem:    None.                                                    !00005E04
* Fix:        Added a PTLF-EXTR-POSITIONS-FRMT-2 section to support    !00005E05
*             64 bit RBAs for format 2 files.                          !00005E06
* Dependency: Apply fix to DDLFPTLF and run MAKE.                      !00005E07
* Reference:  WO #000202-01 ( Format 2 File Support )                  !00005E08
                                                                       !00005E09
                                                                       !00005F00
* 28MAR2002   JRA/24                                                   !00005F01
* Symptom:    Stored Value Release 6.0 uplift                          !00005F02
* Problem:    None.                                                    !00005F03
* Fix:        Added new Stored Value transaction code values to        !00005F04
*             comments.                                                !00005F05
* Dependency: Restore SV-related files, modify the appropriate         !00005F06
*             CUSTMACS flags, and run MAKE.                            !00005F07
* Reference:  WO #020117-41 (BASE24-stored value Release 6.0 uplift)   !00005F08
                                                                       !00005F09
                                                                       !00005G00
* 07FEB2003   JJD/615                                                  !00005G01
* Symptom:    POS Enhancements.                                        !00005G02
* Problem:    None.                                                    !00005G03
* Fix:        Added the PTLF-SET-REC-6 and PTLF-SRVCS-7 definitions.   !00005G04
* Dependency: Apply fix to DDLFPTLF.  Apply associated fixes to        !00005G05
*             DDLGDEFS and DDLGTLFX and run MAKE. Refer to             !00005G06
*             BA60UD06.SCNFIL for a complete list of dependencies.     !00005G07
* Reference:  WO #020606-01                                            !00005G08
                                                                       !00005G09
                                                                       !00005H00
* 14OCT2005   Steffej                                                  !00005H01
* Symptom:    Mobile Top-Up POS Acquiring Integration Enhancement      !00005H02
* Problem:    None                                                     !00005H03
* Fix:        Modified comments only.                                  !00005H04
*             Added a new value of "40" for RVRL-CDE. Added a new      !00005H05
*             value of "S" for RESPONDER.  Added new values of "29",   !00005H06
*             "30", "31", and "32" for TRAN-CDE.TC.                    !00005H07
* Dependency: Apply fixes to DDLFPTLF and run MAKE.                    !00005H08
*             Refer to BA60UD09.SCNMTOPP for a complete listing of     !00005H09
*             dependencies.                                            !00005H0A
* Reference:  WO #041224-01                                            !00005H0B
                                                                       !00005H0C
                                                                       !00005I00
* 14OCT2006   BartonD                                                  !00005I01
* Symptom:    Incomplete comments for ADDR-VRFY-STAT field.            !00005I02
* Problem:    Incomplete comments for ADDR-VRFY-STAT field.            !00005I03
* Fix:        Modified comments only.                                  !00005I04
*             Added paragraph to specify that the field could contain  !00005I05
*             interchange-specific values.                             !00005I06
* Dependency: Apply fix to DDLFPTLF and run Make.                      !00005I07
* Reference:  Case #409327                                             !00005I08
                                                                       !00005I09
*********************************************************************  !00005D0E
                                                                       !00005D0F
                                                                       !00005C0L
                                                                       !00006C00
                                                                       !00006C01
                                                                       !00006C02
!---------------------------------------------------------------------!!00071
?comments
*                                                                     !!00074
*             The POS Transaction Log File (PTLF) contains a record   !!00075
*             of each financial transaction (approved or denied)      !!00076
*             processed by BASE24-pos for a single processing day.    !!00077
*             Transactions declined by a Device Handler (for example, !!00078
*             bad format), are typically not posted to the PTLF.  It  !!00079
*             also contains settlement records for each POS terminal  !!00080
*             in the system.  This file is an audit record at the     !!00081
*             transaction level of the system's processing and is     !!00082
*             extracted daily to provide detailed transaction data    !!00083
*             for processing by a host.                               !!00084
*                                                                     !!00085
*             Records are written to the PTLF sequentially, and two   !!00086
*             PTLFs are always accessible to the system for logging:  !!00087
*             the current day's PTLF and the next day's PTLF.  Which  !!00088
*             PTLF a transaction posts to is based on the             !!00089
*             transaction's PTDF posting date.  This is derived from  !!00090
*             the current business date of the terminal at which the  !!00091
*             transaction originated.  Use of two PTLFs allows        !!00092
*             BASE24-pos terminals to be cut over at different times. !!00093
*             As terminals are cut over, transactions from those      !!00094
*             terminals begin posting to the next day's PTLF;         !!00095
*             transactions from terminals that have not been cut over !!00096
*             for the day continue to post to the current day's PTLF. !!00097
*                                                                     !!00098
*             When network settlement occurs, a new PTLF is created   !!00099
*             and the current day's PTLF is closed to the online      !!00100
*             system.  At that time, the current day's PTLF is        !!00101
*             available for reporting and extract processing.         !!00102
*                                                                     !!00103
*             LCONF ASSIGN:       POS-PTLF                            !!00104
*                                                                     !!00105
*             PTLF RECORD STRUCTURE                                   !!00106
*             There are five formats used in writing PTLF records.    !!00107
*             o  Financial Transaction (PTLF)                         !!00108
*             o  Settlement Totals (PTLF-SET-REC)                     !!00109
*             o  Clerk Totals (PTLF-CLERK-TOT)                        !!00110
*             o  First Services (PTLF-SRVCS-1)                        !!00111
*             o  Second Services (PTLF-SRVCS-2)                       !!00112
*                                                                     !!00113
*             The values contained in the HEAD.REC-TYP and HEAD.TKEY. !!00114
*             RKEY.REC-FRMT fields identify the type of information   !!00115
*             contained in the PTLF record.  The various value        !!00116
*             combinations and the resulting record format and        !!00117
*             contents include:                                       !!00118
*                                                                     !!00119
*             REC-TYP  REC-FRMT  RECORD FORMAT AND CONTENTS           !!00120
*               00         -     Initial                              !!00121
*               01         5     Financial Transaction--Customer      !!00122
*               04         0     Settlement Totals--Batch             !!00123
*               04         1     Settlement Totals--Shift             !!00124
*               04         2     Settlement Totals--Daily             !!00125
*               04         3     Settlement Totals--Network           !!00126
*               04         4     Clerk Totals                         !!00127
*               04         8     Second Services                      !!00128
*               04         9     First Services                       !!00129
*               20         5     Financial Transaction--Exception     !!00130
*                                  (posted)                           !!00131
*               21         5     Financial Transaction--Exception     !!00132
*                                  (not posted)                       !!00133
*               22         5     Financial Transaction--Exception     !!00134
*                                  (partially posted)                 !!00135
*               23         5     Financial Transaction--Exception     !!00136
*                                  (invalid data)                     !!00137
*                                                                     !!00138
*                                                                     !!00139
?PAGE "HEAD"
?SECTION HEAD
                                                                       !00144
*                                                                     !!00145
*             The following fields are included in each record        !!00146
*             written to the PTLF.                                    !!00147
*                                                                     !!00148
  DEFINITION HEAD.                                                     !00149
                                                                       !00150
                                                                       !00151
*                                                                     !!00152
*             The date and time the record was logged.  The value in  !!00153
*             this field is generated via a call to Tandem's          !!00154
*             JULIANTIMESTAMP utility.                                !!00155
*                                                                     !!00156
     04 DAT-TIM                 TYPE BINARY 64.                        !00157
                                                                       !00158
                                                                       !00159
*                                                                     !!00160
*             A code indicating the type of record.  The              !!00161
*             Authorization logic sets the value in this field when   !!00162
*             the record is logged.  Valid values are:                !!00163
*                                                                     !!00164
*             00 = Initial record                                     !!00165
*             01 = Customer transaction                               !!00166
*             04 = Administrative transaction                         !!00167
*             20 = Exception - posted                                 !!00168
*             21 = Exception - not posted                             !!00169
*             22 = Exception - partially posted                       !!00170
*             23 = Exception - invalid data encountered in the POS    !!00171
*                  Standard Message (PSTM)                            !!00172
*                                                                     !!00173
*             In situations where a transaction cannot be completely  !!00174
*             processed because of a processing error (e.g., invalid  !!00175
*             data, unable to locate an authorization record, etc),   !!00176
*             the Authorization process logs the transaction to the   !!00177
*             PTLF as an execption.  Exception transactions are       !!00178
*             included as detail items in the BASE24-pos reports but  !!00179
*             are not included in the BASE24-pos settlement totals.   !!00180
*                                                                     !!00181
     04 REC-TYP                 PIC XX.                                !00182
                                                                       !00183
                                                                       !00184
*                                                                     !!00185
*             The values in the following fields describe the         !!00186
*             cardholder and card issuer for the transaction.  This   !!00187
*             is an alternate key used for reporting and perusal      !!00188
*             purposes.                                               !!00189
*                                                                     !!00190
     04 CRD.                                                           !00191
                                                                       !00192
*                                                                     !!00193
*             The logical network with which the institution that     !!00194
*             issued the card is associated.                          !!00195
*                                                                     !!00196
        06 LN                   TYPE *.                                !00197
*                                                                     !!00198
*             The FIID of the institution that issued the card.       !!00199
*                                                                     !!00200
        06 FIID                 TYPE *.                                !00201
*                                                                     !!00202
*             The values in the following fields identify the card    !!00203
*             used in the transaction.                                !!00204
*                                                                     !!00205
        06 CARD.                                                       !00206
*                                                                     !!00207
*             The card number identifying the card used in the        !!00208
*             transaction.                                            !!00209
*                                                                     !!00210
           08 CRD-NUM              TYPE PAN.                           !00211
*                                                                     !!00212
*             The member number associated with the card used in the  !!00213
*             transaction.                                            !!00214
*                                                                     !!00215
           08 MBR-NUM              TYPE *.                             !00216
                                                                       !00217
                                                                       !00218
*                                                                     !!00219
*             The values in the following fields describe the         !!00220
*             retailer involved in the transaction.  These values are !!00221
*             used for reporting purposes.                            !!00222
*                                                                     !!00223
     04 RETL.                                                          !00224
        06 KY.                                                         !00225
*                                                                     !!00226
*             The logical network with which the retailer is          !!00227
*             associated.                                             !!00228
*                                                                     !!00229
           08 LN                TYPE *.                                !00230
*                                                                     !!00231
*             The values in the following fields compose the key to   !!00232
*             the retailer's POS Retailer Definition File (PRDF).     !!00233
*             record.                                                 !!00234
*                                                                     !!00235
           08 RDFKEY.                                                  !00236
*                                                                     !!00237
*             The FIID of the institution with which the retailer is  !!00238
*             associated.                                             !!00239
*                                                                     !!00240
              10 FIID           TYPE *.                                !00241
*                                                                     !!00242
*             The group to which the retailer belongs.                !!00243
*                                                                     !!00244
              10 GRP            PIC X(4).                              !00245
*                                                                     !!00246
*             The retailer region group to which the retailer         !!00247
*             belongs.                                                !!00248
*                                                                     !!00249
              10 REGN           TYPE *.                                !00250
*                                                                     !!00251
*             The retailer ID identifying the retailer.               !!00252
*                                                                     !!00253
              10 ID             PIC X(19).                             !00254
*                                                                     !!00255
*             The terminal ID of the terminal at which the            !!00256
*             transaction occurred.                                   !!00257
*                                                                     !!00258
        06 TERM-ID              PIC X(16).                             !00259
                                                                       !00260
*                                                                     !!00261
*             The shift number with which the transaction is          !!00262
*             associated.                                             !!00263
*                                                                     !!00264
        06 SHIFT-NUM            PIC X(3).                              !00265
                                                                       !00266
*                                                                     !!00267
*             The batch number with which the transaction is          !!00268
*             associated.                                             !!00269
*                                                                     !!00270
        06 BATCH-NUM            PIC X(3).                              !00271
                                                                       !00272
*                                                                     !!00273
*             The following fields define the terminal and time at    !!00274
*             which the transaction occurred.  These fields are used  !!00275
*             as an alternate key to peruse transactions by terminal  !!00276
*             and time.                                               !!00277
*                                                                     !!00278
     04 TERM.                                                          !00279
*                                                                     !!00280
*             The logical network with which the terminal is          !!00281
*             associated.                                             !!00282
*                                                                     !!00283
        06 LN                   TYPE *.                                !00284
*                                                                     !!00285
*             The FIID of the institution with which the terminal is  !!00286
*             associated.                                             !!00287
*                                                                     !!00288
        06 FIID                 TYPE *.                                !00289
*                                                                     !!00290
*             The terminal ID of the terminal at which the            !!00291
*             transaction occurred.                                   !!00292
*                                                                     !!00293
        06 TERM-ID              PIC X(16).                             !00294
*                                                                     !!00295
*             The time the transaction occurred.                      !!00296
*                                                                     !!00297
        06 TIM                  TYPE *.                                !00298
*                                                                     !!00299
*             The following fields identify the terminal, retailer,   !!00300
*             and clerk associated with the transaction.  These fields!!00301
*             are used as an alternate key to peruse transactions by  !!00302
*             terminal, retailer, and clerk.                          !!00303
                                                                       !00304
     04 TKEY.                                                          !00305
*                                                                     !!00306
*             The terminal ID of the terminal at which the            !!00307
*             transaction occurred.                                   !!00308
*                                                                     !!00309
        06 TERM-ID              PIC X(16).                             !00310
                                                                       !00311
        06 RKEY.                                                       !00312
*                                                                     !!00313
*             A code indicating the type of information in this       !!00314
*             record.  Valid values are:                              !!00315
*                                                                     !!00316
*             0 = Batch Totals                                        !!00317
*             1 = Shift Totals                                        !!00318
*             2 = Day Totals                                          !!00319
*             3 = Network Totals                                      !!00320
*             4 = Clerk Totals                                        !!00321
*             5 = Data Record                                         !!00322
*             8 = Services Totals                                     !!00323
*             9 = Services Totals                                     !!00324
*                                                                     !!00325
           08 REC-FRMT          PIC X.                                 !00326
*                                                                     !!00327
*             The retailer ID identifying the retailer.               !!00328
*                                                                     !!00329
           08 RETAILER-ID       PIC X(19).                             !00330
*                                                                     !!00331
*             The clerk identification number.                        !!00332
*                                                                     !!00333
           08 CLERK-ID          PIC X(6).                              !00334
                                                                       !00335
*                                                                     !!00336
*             Indicates whether the USER-DATA field is appended to    !!00337
*             the PTLF record.                                        !!00338
*                                                                     !!00339
*             Valid values are:                                       !!00340
*                                                                     !!00341
*             0 = No user-data appended                               !!00342
*             1 = User-data appended                                  !!00343
*                                                                     !!00344
                                                                       !00345
     04 DATA-FLAG               PIC X.                                 !00346
                                                                       !00347
end                                                                    !00348
                                                                       !00349
?PAGE "AUTH"
?SECTION AUTH
                                                                       !00354
DEFINITION AUTH.                                                       !00355
                                                                       !00356
                                                                       !00357
*                                                                     !!00358
*             The specific message type of this record.  Valid values !!00359
*             are:                                                    !!00360
*                                                                     !!00361
*             0210 = Authorization response                           !!00362
*             0220 = Authorization advice                             !!00363
*             0412 = Card issuer reversal response                    !!00364
*             0420 = Reversal                                         !!00365
*             0500 = Reconciliation request                           !!00366
*                                                                     !!00367
     04 TYP                   PIC 9(4).                                !00368
                                                                       !00369
                                                                       !00370
*                                                                     !!00371
*             A code indicating the status of a message at the system !!00372
*             level.  The value in this field is set by the Host      !!00373
*             Interface or Gateway process and used by Authorization. !!00374
*             Valid values are:                                       !!00375
*                                                                     !!00376
*             00 = No error                                           !!00377
*             11 = Destination not available                          !!00378
*             12 = Line down                                          !!00379
*             20 = Originator not available                           !!00380
*             21 = Unknown message type                               !!00381
*             22 = Unknown card number                                !!00382
*                                                                     !!00383
     04 RTE-STAT                  PIC 99.                              !00384
                                                                       !00385
                                                                       !00386
*                                                                     !!00387
*             Indicates where the transaction originated.  Valid      !!00388
*             values are:                                             !!00389
*             1 = Device controlled by BASE24                         !!00390
*             2 = Device handler                                      !!00391
*             3 = Authorization process                               !!00392
*             4 = Host Interface process                              !!00393
*             5 = Host                                                !!00394
*             6 = Interchange Interface process                       !!00395
*             7 = Interchange                                         !!00396
*                                                                     !!00397
     04 ORIGINATOR              PIC X.                                 !00398
                                                                       !00399
                                                                       !00400
*                                                                     !!00401
*             Indicates where the response message to this            !!00402
*             transaction originated.  Valid values are:              !!00403
*             1 = Device controlled by BASE24                         !!00404
*             2 = Device handler                                      !!00405
*             3 = Authorization process                               !!00406
*             4 = Host Interface process                              !!00407
*             5 = Host                                                !!00408
*             6 = Interchange Interface process                       !!00409
*             7 = Interchange                                         !!00410
                                                                       !00410H00
*             S = Secondary Authorizer                                 !00410H01
                                                                       !00410H02
*                                                                     !!00411
     04 RESPONDER               PIC X.                                 !00412
                                                                       !00413
                                                                       !00414
*                                                                     !!00415
*             The issuer code for the transaction. Valid values are:  !!00416
*                                                                     !!00417
*             00-29 = On-us                                           !!00418
*             30-99 = Not-on-us                                       !!00419
*             *_    = All                                             !!00420
*                                                                     !!00421
     04 ISS-CDE   PIC XX.                                              !00422
                                                                       !00423
                                                                       !00424
*                                                                     !!00425
*             The time at which the transaction entered into the      !!00426
*             BASE24 system.  The value in this field is in Tandem's  !!00427
*             JULIANTIMESTAMP format and is used for time tracking    !!00428
*             purposes.                                               !!00429
*                                                                     !!00430
     04 ENTRY-TIM               TYPE BINARY 64.                        !00431
                                                                       !00432
                                                                       !00433
*                                                                     !!00434
*             The time at which the Host Interface or Interchange     !!00435
*             Interface process transmitted the authorization request !!00436
*             to the authorizing entity.  The value in this field is  !!00437
*             in Tandem's JULIANTIMESTAMP format.                     !!00438
*                                                                     !!00439
     04 EXIT-TIM                TYPE BINARY 64.                        !00440
                                                                       !00441
                                                                       !00442
*                                                                     !!00443
*             Indicates the time at which the Host Interface or       !!00444
*             Interchange Interface process received a response to    !!00445
*             its original request from the authorizing entity.       !!00446
*             The value in this field is in Tandem's JULIANTIMESTAMP  !!00447
*             format.                                                 !!00448
*                                                                     !!00449
     04 RE-ENTRY-TIM            TYPE BINARY 64.                        !00450
                                                                       !00451
                                                                       !00452
*                                                                     !!00453
*             The date (YYMMDD) the transaction began.  The value in  !!00454
*             this field is set by the Device Handler, Host           !!00455
*             Interface, or Interchange Interface process.            !!00456
*                                                                     !!00457
     04 TRAN-DAT                TYPE DAT.                              !00458
                                                                       !00459
                                                                       !00460
*                                                                     !!00461
*             The time (HHMMSS.TT) the transaction began.  The value  !!00462
*             in this field is set by the Device Handler, Host        !!00463
*             Interface, or Interchange Interface process.            !!00464
*                                                                     !!00465
     04 TRAN-TIM                TYPE TIM.                              !00466
                                                                       !00467
                                                                       !00468
*                                                                     !!00469
*             The date (YYMMDD) the transaction is to be posted by    !!00470
*             BASE24, as indicated in the POS Terminal Data File      !!00471
*             (PTDF) record for the originating terminal, or the      !!00472
*             message from the acquirer if the transaction is not     !!00473
*             initiated at a directly-connected terminal. The value   !!00474
*             in this field is set by the Device Handler, Host        !!00475
*             Interface, or Interchange Interface process.            !!00476
*                                                                     !!00477
     04 POST-DAT                  TYPE DAT.                            !00478
                                                                       !00479
                                                                       !00480
*                                                                     !!00481
*             The date (YYMMDD) the transaction is to be settled by   !!00482
*             the acquirer interchange, if an interchange is          !!00483
*             involved in processing this transaction. Otherwise,     !!00484
*             this field is zero-filled.                              !!00485
*                                                                     !!00486
     04 ACQ-ICHG-SETL-DAT         TYPE DAT.                            !00487
                                                                       !00488
                                                                       !00489
*                                                                     !!00490
*             The date (YYMMDD) the transaction is to be settled by   !!00491
*             the issuer interchange, if an interchange is            !!00492
*             involved in processing this transaction. Otherwise,     !!00493
*             this field is zero-filled.                              !!00494
*                                                                     !!00495
     04 ISS-ICHG-SETL-DAT         TYPE DAT.                            !00496
                                                                       !00497
                                                                       !00498
*                                                                     !!00499
*             The transaction sequence number generated by the        !!00500
*             terminal or the Device Handler.                         !!00501
*                                                                     !!00502
     04 SEQ-NUM                   PIC X(12).                           !00503
                                                                       !00504
                                                                       !00505
*                                                                     !!00506
*             The terminal name and location as defined in the POS    !!00507
*             Terminal Data File (PTDF).  The value in this field is  !!00508
*             set by the Device Handler if the transaction originates !!00509
*             at a directly-connected device.                         !!00510
*                                                                     !!00511
     04 TERM-NAME-LOC             PIC X(25).                           !00512
                                                                       !00513
                                                                       !00514
*                                                                     !!00515
*             The name of the financial institution that owns the     !!00516
*             terminal, as defined in the PTDF.  The value in this    !!00517
*             field is set by the Device Handler if the transaction   !!00518
*             originates at a directly-connected device.              !!00519
*                                                                     !!00520
     04 TERM-OWNER-NAME           PIC X(22).                           !00521
                                                                       !00522
                                                                       !00523
*                                                                     !!00524
*             The city in which the terminal is located.  The value   !!00525
*             in this field is obtained from the PTDF if the          !!00526
*             transaction originates at a directly-connected device.  !!00527
*                                                                     !!00528
     04 TERM-CITY                 PIC X(13).                           !00529
*                                                                     !!00530
*             The state in which the terminal is located.   The value !!00531
*             in this field is obtained from the PTDF if the          !!00532
*             transaction originates at a directly-connected device.  !!00533
*                                                                     !!00534
     04 TERM-ST                   PIC X(3).                            !00535
                                                                       !00536
                                                                       !00537
*                                                                     !!00538
*             A code indicating the country in which the terminal is  !!00539
*             located.  The value in this field is obtained from the  !!00540
*             PTDF if the transaction originates at a directly-       !!00541
*             connected device.                                       !!00542
*                                                                     !!00543
     04 TERM-CNTRY-CDE            PIC X(2).                            !00544
                                                                       !00545
                                                                       !00546
*                                                                     !!00547
*             This field is not currently used.                       !!00548
*                                                                     !!00549
     04 BRCH-ID                   PIC X(4).                            !00550
                                                                       !00551
*                                                                     !!00552
*             Reserved for future use.                                !!00553
*                                                                     !!00554
     04 USER-FLD2                 PIC X(3).                            !00555
                                                                       !00556
                                                                       !00557
*                                                                     !!00558
*             The time difference between the terminal and the Tandem !!00559
*             processor location.  It is the signed (+ or -) number   !!00560
*             of minutes to be added to the BASE24 Tandem system time !!00561
*             in order to obtain the terminal local time.             !!00562
*                                                                     !!00563
     04 TERM-TIM-OFST            TYPE BINARY 16.                       !00564
                                                                       !00565
                                                                       !00566
*                                                                     !!00567
*             The route/transit number of the terminal owner as       !!00568
*             defined in the PTDF.  The value in this field is set by !!00569
*             the Device Handler if the transaction originates at a   !!00570
*             directly-connected device.                              !!00571
*                                                                     !!00572
     04 ACQ-INST-ID-NUM         TYPE ID-NUM.                           !00573
                                                                       !00574
                                                                       !00575
*                                                                     !!00576
*             The route/transit number of the card issuer as defined  !!00577
*             in the Institution Definition File (IDF).               !!00578
*                                                                     !!00579
     04 RCV-INST-ID-NUM         TYPE ID-NUM.                           !00580
                                                                       !00581
                                                                       !00582
*                                                                     !!00583
*             The terminal type as defined in the PTDF.  The value in !!00584
*             this field is set by the Device Handler if the          !!00585
*             transaction originates at a directly-connected device.  !!00586
*                                                                     !!00587
     04 TERM-TYP                 PIC XX.                               !00588
                                                                       !00589
                                                                       !00590
*                                                                     !!00591
*             The clerk ID, as defined in the PTDF, of the POS device !!00592
*             operator who performed the transaction.  The value in   !!00593
*             this field is set by the Device Handler if the          !!00594
*             transaction originates at a directly-connected device.  !!00595
*                                                                     !!00596
     04 CLERK-ID                  PIC X(6).                            !00597
                                                                       !00598
                                                                       !00599
*                                                                     !!00600
*             The following fields contain the PATHWAY operator group !!00601
*             and user identifications used for CRT Authorization.    !!00602
*                                                                     !!00603
     04 CRT-AUTH.                                                      !00604
*                                                                     !!00605
*             The PATHWAY operator group identification used for CRT  !!00606
*             Authorization.                                          !!00607
*                                                                     !!00608
        06 GRP                    PIC X(4).                            !00609
*                                                                     !!00610
*             The PATHWAY operator user identification used for CRT   !!00611
*             Authorization.                                          !!00612
*                                                                     !!00613
        06 USER-ID                PIC X(8).                            !00614
                                                                       !00615
                                                                       !00616
                                                                       !00617
*                                                                     !!00618
*             The Standard Industrial Classification (SIC) code, as   !!00619
*             defined in either the POS Terminal Data File (PTDF) or  !!00620
*             the POS Retailer Definition File (PRDF), identifying the!!00621
*             retailer's line of business.                            !!00622
*                                                                     !!00623
     04 RETL-SIC-CDE              PIC X(4).                            !00624
                                                                       !00625
                                                                       !00626
*                                                                     !!00627
*             The originator of this transaction.                     !!00628
*                                                                     !!00629
     04 ORIG                      PIC X(4).                            !00630
*                                                                     !!00631
*             The destination of this transaction.                    !!00632
*                                                                     !!00633
     04 DEST                      PIC X(4).                            !00634
                                                                       !00635
                                                                       !00636
*                                                                     !!00637
*             The values in the following fields identify the type of !!00638
*             transaction in TCTAAC format.                           !!00639
*                                                                     !!00640
     04 TRAN-CDE.                                                      !00641
*                                                                     !!00642
                                                                       !00642H00
*             A code indentifying the type of transaction.             !00642H01
*                                                                      !00642H02
*             NOTE 1: The transaction codes of 29, 30, 31, and 32 are  !00642H03
*             supported with BASE24-pos Mobile Top-Up.  The BASE24-pos !00642H04
*             Standard POS Device Handler (SPDH), Transaction Context  !00642H05
*             Manager and certain Mobile Operator Interfaces recognize !00642H06
*             these transaction codes. BASE24-pos Authorization        !00642H07
*             does not recognize these codes.                          !00642H08
                                                                       !00642H09
*             Valid values are:                                        !00642H0A
                                                                       !00642H0B
                                                                       !00643H00
                                                                       !00643H01
                                                                       !00643H02
*                                                                     !!00645
*             10 = Normal purchase                                    !!00646
*             11 = Preauthorization purchase                          !!00647
*             12 = Preauthorization purchase completion               !!00648
*             13 = Mail/phone order                                   !!00649
*             14 = Merchandise return                                 !!00650
*             15 = Cash advance                                       !!00651
*             16 = Card verification                                  !!00652
*             17 = Balance inquiry                                    !!00653
*             18 = Purchase with cash back                            !!00654
*             19 = Check verification                                 !!00655
*             20 = Check guarantee                                    !!00656
*             21 = Purchase adjustment                                !!00657
*             22 = Adjustment - merchandise return                    !!00658
*             23 = Adjustment - cash advance                          !!00659
*             24 = Adjustment - purchase with cash back               !!00660
                                                                       !00660F00
*             25 = Card Activation                                     !00660F01
*             26 = Additional Card Activation                          !00660F02
*             27 = Replenishment                                       !00660F03
*             28 = Full Redemption                                     !00660F04
                                                                       !00660H00
*             29 = Mobile Top-Up Cash (NOTE 1)                         !00660H01
*             30 = Mobile Top-Up with Funds (NOTE 1)                   !00660H02
*             31 = Refund - Mobile Top-Up Cash (NOTE 1)                !00660H03
*             32 = Refund - Mobile Top-Up with Funds (NOTE 1)          !00660H04
                                                                       !00660H05
                                                                       !00660F05
*                                                                     !!00661
        06 TC                     PIC XX.                              !00662
*                                                                     !!00663
*             A code identifying the card type associated with the    !!00664
*             transaction. Valid values are:                          !!00665
*                                                                     !!00666
*             0 = None                                                !!00667
*             1 = Credit card                                         !!00668
*             2 = Debit card                                          !!00669
*                                                                     !!00670
        06 T                      PIC X.                               !00671
*                                                                     !!00672
*             A code identifying the type of account associated with  !!00673
*             the transaction.  Valid values are:                     !!00674
*                                                                     !!00675
*             00 = None                                               !!00676
*             01 = DDA                                                !!00677
*             11 = Savings                                            !!00678
*             31 = Credit                                             !!00679
*                                                                     !!00680
        06 AA                     PIC XX.                              !00681
*                                                                     !!00682
*             A code identifying the transaction category associated  !!00683
*             with the transaction.  Valid values are:                !!00684
*                                                                     !!00685
*             0   = Normal                                            !!00686
*             1   = Sales draft                                       !!00687
*             2   = Representation                                    !!00688
*             3   = Chargeback                                        !!00689
*             4   = Personal check/cash                               !!00690
*             5   = Personal check/amount of purchase                 !!00691
*             6   = Personal check/amount of purchase with cash back  !!00692
*             7   = Government check                                  !!00693
*             8   = Payroll check                                     !!00694
*             9   = Electronic check                                  !!00695
*             A-Z = Reserved for future use                           !!00696
*                                                                     !!00697
        06 C                      PIC X.                               !00698
                                                                       !00699
                                                                       !00700
*                                                                     !!00701
*             The type of card used to initiate the transaction.      !!00702
*                                                                     !!00703
     04 CRD-TYP                   PIC XX.                              !00704
                                                                       !00705
                                                                       !00706
*                                                                     !!00707
*             The account number of the affected account.             !!00708
*                                                                     !!00709
     04 ACCT                      TYPE ACCT.                           !00710
                                                                       !00711
                                                                       !00712
*                                                                     !!00713
*             The response code for the transaction.  For a listing   !!00714
*             of the valid codes, refer to the BASE24-pos Transaction !!00715
*             Processing Manual.                                      !!00716
*                                                                     !!00717
     04 RESP-CDE               PIC 999.                                !00718
                                                                       !00719
                                                                       !00720
*                                                                     !!00721
*             The transaction amount requested.  For adjustment       !!00722
*             transactions, this field contains the original amount.  !!00723
*             For purchase with cash back transactions, this field    !!00724
*             contains the total amount (purchase plus cash back).    !!00725
*             The cash back amount is contained in the AUTH.AMT-2     !!00726
*             field.  For preauthorization completions, this field    !!00727
*             contains the completed amount.                          !!00728
*                                                                     !!00729
     04 AMT-1                  TYPE BINARY 64.                         !00730
                                                                       !00731
                                                                       !00732
*                                                                     !!00733
*             For adjustment transactions, this field contains the    !!00734
*             new amount.  For purchase with cash back transactions,  !!00735
*             this field contains the cash back amount (the AUTH.AMT- !!00736
*             1 field contains the total amount).  For chargebacks,   !!00737
*             this field contains the replacement amount.             !!00738
*                                                                     !!00739
     04 AMT-2                  TYPE BINARY 64.                         !00740
                                                                       !00741
                                                                       !00742
*                                                                     !!00743
*             The expiration date (YYMM) of the card.                 !!00744
*                                                                     !!00745
     04 EXP-DAT                PIC X(4).                               !00746
                                                                       !00747
                                                                       !00748
*                                                                     !!00749
*             The information taken from Track 2 of the magnetic      !!00750
*             strip on the card, or manually entered.                 !!00751
*                                                                     !!00752
     04 TRACK2                 PIC X(40).                              !00753
                                                                       !00754
                                                                       !00755
*                                                                     !!00756
*             This field is currently not used.                       !!00757
*                                                                     !!00758
     04 PIN-OFST               PIC X(16).                              !00759
                                                                       !00760
                                                                       !00761
*                                                                     !!00762
*             The sequence number assigned to the preauthorization    !!00763
*             transaction.                                            !!00764
*                                                                     !!00765
     04 PRE-AUTH-SEQ-NUM       PIC X(12).                              !00766
                                                                       !00767
                                                                       !00768
*                                                                     !!00769
*             The transaction invoice number sent from the terminal,  !!00770
*             if used.                                                !!00771
*                                                                     !!00772
     04 INVOICE-NUM            PIC X(10).                              !00773
                                                                       !00774
                                                                       !00775
*                                                                     !!00776
*             The invoice number of the original transaction sent     !!00777
*             from the terminal, if used.                             !!00778
*                                                                     !!00779
     04 ORIG-INVOICE-NUM       PIC X(10).                              !00780
                                                                       !00781
                                                                       !00782
*                                                                     !!00783
*             The symbolic name of the authorizer of the transaction. !!00784
*                                                                     !!00785
     04 AUTHORIZER             PIC X(16).                              !00786
                                                                       !00787
                                                                       !00788
*                                                                     !!00789
*             A code indicating if the authorizer in the previous     !!00790
*             field (if Router 1) was the primary, alternate 1,       !!00791
*             alternate 2, or if a default action was taken.  Valid   !!00792
*             values are:                                             !!00793
*                                                                     !!00794
*             0 = None                                                !!00795
*             1 = Alternate 1                                         !!00796
*             2 = Alternate 2                                         !!00797
*             4 = DFLT authorization                                  !!00798
*             9 = Default action                                      !!00799
*             F = SPROUTE Primary                                     !!00800
*             f = SPROUTE Alternate 1                                 !!00801
*             P = Primary                                             !!00802
*                                                                     !!00803
     04 AUTH-IND               PIC X.                                  !00804
                                                                       !00805
                                                                       !00806
*                                                                     !!00807
*             The number of the shift to which the transaction        !!00808
*             belongs.                                                !!00809
*                                                                     !!00810
     04 SHIFT-NUM              PIC X(3).                               !00811
                                                                       !00812
                                                                       !00813
*                                                                     !!00814
*             The batch sequence number for the transaction.          !!00815
*                                                                     !!00816
     04 BATCH-SEQ-NUM          PIC X(3).                               !00817
                                                                       !00818
                                                                       !00819
*                                                                     !!00820
*             The approval code generated by the transaction          !!00821
*             authorizer.  This code can be generated by an           !!00822
*             interchange or host, as well as by BASE24-pos           !!00823
*             Authorization.  If BASE24 generates the code, a _B      !!00824
*             (B preceded by a space) is inserted into the last byte  !!00825
*             of this field.                                          !!00826
*                                                                     !!00827
     04 APPRV-CDE             PIC X(8).                                !00828
                                                                       !00829
                                                                       !00830
*                                                                     !!00831
*             The length of the approval code that the device can     !!00832
*             handle.  The value in this field is used only if an     !!00833
*             approval code is generated by Authorization.  Valid     !!00834
*             values are 2 through 6.                                 !!00835
*                                                                     !!00836
     04 APPRV-CDE-LGTH        PIC 9.                                   !00837
                                                                       !00838
                                                                       !00839
*                                                                     !!00840
*             The interchange response, if there was an interchange   !!00841
*             involved in processing this transaction. Otherwise,     !!00842
*             this field is left blank.  The value in this field is   !!00843
*             set by the Interchange Interface process.               !!00844
*                                                                     !!00845
     04 ICHG-RESP             PIC X(8).                                !00846
                                                                       !00847
                                                                       !00848
*                                                                     !!00849
*             The pseudo identification associated with the terminal. !!00850
*                                                                     !!00851
     04 PSEUDO-TERM-ID        PIC X(4).                                !00852
                                                                       !00853
                                                                       !00854
*                                                                     !!00855
*             The telephone number used for referral transactions.    !!00856
*                                                                     !!00857
     04 RFRL-PHONE            TYPE PHONE-NUM.                          !00858
                                                                       !00859
                                                                       !00860
*                                                                     !!00861
*             A code indicating the action taken regarding the        !!00862
*             authorization and draft capture of this transaction.    !!00863
*             Valid codes are:                                        !!00864
*                                                                     !!00865
*             0 = Authorize only                                      !!00866
*             1 = Authorize and capture                               !!00867
*             2 = Authorize only and expect electronic follow-up      !!00868
*             3 = Electronic follow-up of previously authorized       !!00869
*                 transaction.  This option does not update           !!00870
*                 settlement balances.                                !!00871
*             9 = Value not found.  (Router was unable to match the   !!00872
*                 card type to a value in the PTDF or the PRDF.)      !!00873
*                                                                     !!00874
     04 DFT-CAPTURE-FLG        PIC 9.                                  !00875
                                                                       !00876
                                                                       !00877
*                                                                     !!00878
*             Indicates how the terminal is cut over if the terminal  !!00879
*             is directly-connected to BASE24.                        !!00880
*                                                                     !!00881
     04 SETL-FLAG              PIC 9.                                  !00882
                                                                       !00883
                                                                       !00884
*                                                                     !!00885
*             A code specifying the reason for reversal or adjustment !!00886
*             transactions.  Valid values are:                        !!00887
*                                                                     !!00888
*             01 = Time-out                                           !!00889
*             02 = Command reject                                     !!00890
*             03 = Destination not available                          !!00891
*             08 = Customer canceled                                  !!00892
*             10 = Hardware error                                     !!00893
*             12 = Original amount incorrect                          !!00894
*             14 = Suspicious reversal override                       !!00895
*             15 = Misdispense reversal override                      !!00896
*             16 = Duplicate transaction                              !!00897
*             17 = Reconciliation error                               !!00898
*             18 = Reserved                                           !!00899
*             19 = System error                                       !!00900
*             20 = Suspect reversal                                   !!00901
*             21 = MAC failure                                        !!00902
*             22 = KMAC sync error                                    !!00903
*             23 = Message replay error                               !!00904
*             24 = Invalid MAC                                        !!00905
                                                                       !00905H00
*             40 = Split Routing Enabled; Secondary Service Not        !00905H01
*                  Approved                                            !00905H02
                                                                       !00905H03
*                                                                     !!00906
     04 RVRL-CDE                 PIC 99.                               !00907
                                                                       !00908
                                                                       !00909
*                                                                     !!00910
*             A code identifying the reason for the chargeback. Valid !!00911
*             values are:                                             !!00912
*                                                                     !!00913
*             03 = Invalid merchant                                   !!00914
*             12 = Invalid transaction                                !!00915
*             18 = Customer dispute                                   !!00916
*             59 = Suspected fraud                                    !!00917
*             63 = Security violation                                 !!00918
*             64 = Original transaction amount incorrect              !!00919
*             68 = Supporting documentation received too late         !!00920
*             93 = Transaction in violation of the law                !!00921
*             94 = Duplicate transaction                              !!00922
*             96 = System malfunction                                 !!00923
*                                                                     !!00924
     04 REA-FOR-CHRGBCK          PIC X(2).                             !00925
                                                                       !00926
                                                                       !00927
*                                                                     !!00928
*             The occurrence of the chargeback.  Valid values are 1   !!00929
*             through 9.                                              !!00930
*                                                                     !!00931
     04 NUM-OF-CHRGBCK           PIC 9.                                !00932
                                                                       !00933
                                                                       !00934
*                                                                     !!00935
*             A code identifying the transaction origin.  The code    !!00936
*             indicates a special condition that exists at the time   !!00937
*             the transaction is initiated.  Valid values are:        !!00938
*                                                                     !!00939
*             00    = Normal presentment                              !!00940
*             01    = Customer not present                            !!00941
*             02    = Unattended terminal, able to retain card        !!00942
*             03    = Merchant suspicious                             !!00943
*             04    = Electronic cash register interface              !!00944
*             05    = Customer present, but card not present          !!00945
*             06    = Preauthorization request                        !!00946
*             07    = Telephone device request                        !!00947
*             08    = Mail order/telephone order                      !!00948
*             09    = Security alert                                  !!00949
*             10    = Customer identity verified                      !!00950
*             11    = Suspected fraud                                 !!00951
*             12    = Security reasons                                !!00952
*             13    = Representment of an item                        !!00953
*             14    = Public utility terminal                         !!00954
*             15    = Customer terminal (home terminal)               !!00955
*             16    = Administration terminal                         !!00956
*             17    = Returned item (chargeback)                      !!00957
*             18    = No check in envelope/all returned               !!00958
*             19    = Deposit out-of-balance/all returned             !!00959
*             20    = Payment out-of-balance/all returned             !!00960
*             21    = Manual reversal                                 !!00961
*             22    = Terminal error/counted                          !!00962
*             23    = Terminal error/not counted                      !!00963
*             24    = Deposit out-of-balance/applied contents         !!00964
*             25    = Payment out-of-balance/applied contents         !!00965
*             26    = Withdrawal had error/reversed                   !!00966
*             27    = Unattended terminal, unable to retain card      !!00967
*             28-40 = Reserved for ISO use                            !!00968
*             41-50 = Reserved for national use                       !!00969
*             51-99 = Reserved for private use                        !!00970
*                                                                     !!00971
     04 PT-SRV-COND-CDE          PIC 99.                               !00972
                                                                       !00973
                                                                       !00974
*                                                                     !!00975
*             A code indicating how the Primary Account Number (PAN)  !!00976
*             is entered into the system and the PIN entry            !!00977
*             capabilities when performing POS transactions.  The     !!00978
*             valid values for PAN entry (Positions 1 and 2) are:     !!00979
*                                                                     !!00980
*             00    = Unspecified                                     !!00981
*             01    = Manual                                          !!00982
*             02    = Magnetic stripe                                 !!00983
*             03    = Bar code                                        !!00984
*             04    = OCR                                             !!00985
*             05    = Integrated circuit card                         !!00986
*             06-60 = Reserved for ISO use                            !!00987
*             61-80 = Reserved for national use                       !!00988
*             81-99 = Reserved for private use                        !!00989
*                                                                     !!00990
*             The valid values for PIN entry capabilities (Position 3)!!00991
*             are:                                                    !!00992
*                                                                     !!00993
*             0   = Unspecified                                       !!00994
*             1   = PIN entry capability                              !!00995
*             2   = No PIN entry capability                           !!00996
*             3-5 = Reserved for ISO use                              !!00997
*             6-7 = Reserved for national use                         !!00998
*             8-9 = Reserved for private use                          !!00999
*                                                                     !!01000
     04 PT-SRV-ENTRY-MDE         PIC 999.                              !01001
                                                                       !01002
                                                                       !01003
                                                                       !01004
*                                                                     !!01005
*             A code indicating if the authorizer in the AUTHORIZER   !!01006
*             field (if Router 2) was the primary, alternate 1,       !!01007
*             alternate 2, or if a default action was taken. Valid    !!01008
*             values are:                                             !!01009
*                                                                     !!01010
*             0 = None                                                !!01011
*             1 = Alternate 1                                         !!01012
*             2 = Alternate 2                                         !!01013
*             4 = DFLT authorization                                  !!01014
*             9 = Default action                                      !!01015
*             F = SPROUTE Primary                                     !!01016
*             f = SPROUTE Alternate 1                                 !!01017
*             P = Primary                                             !!01018
*                                                                     !!01019
     04 AUTH-IND2                PIC X.                                !01020
                                                                       !01021
                                                                       !01022
*                                                                     !!01023
*             A code indicating the currency of the transaction.      !!01024
*             The value in this field is initialized by the Device    !!01025
*             Handler from the PTDF if the transaction originates at  !!01026
*             a directly-connected device.                            !!01027
*                                                                     !!01028
     04 ORIG-CRNCY-CDE            TYPE CRNCY-CDE.                      !01029
                                                                       !01030
                                                                       !01031
     04 USER-FLD4                   PIC X(30).                         !01032
                                                                       !01033
*                                                                     !!01034
*             The following five fields apply only in multiple-       !!01035
*             currency systems; they are redefined as a user field in !!01036
*             single-currency systems.  Multiple-currency systems     !!01037
*             are not currently supported by BASE24.                  !!01038
*                                                                     !!01039
     04 MULT-CRNCY                  REDEFINES USER-FLD4.               !01040
                                                                       !01041
                                                                       !01042
*                                                                     !!01043
*             A code indicating the type of currency used in the      !!01044
*             response from the authorizing entity.                   !!01045
*                                                                     !!01046
       06 AUTH-CRNCY-CDE            TYPE CRNCY-CDE.                    !01047
                                                                       !01048
                                                                       !01049
*                                                                     !!01050
*             The exchange rate of the authorizing entity used to     !!01051
*             compute the the final settlement amount.  The first     !!01052
*             digit contains the offset of the decimal point from the !!01053
*             right-hand side.  Unless multiple currencies are        !!01054
*             involved, the default value is 61000000.                !!01055
*                                                                     !!01056
       06 AUTH-CONV-RATE            PIC 9(8).                          !01057
                                                                       !01058
                                                                       !01059
                                                                       !01060
*                                                                     !!01061
*             A code indicating the type of currency used in the      !!01062
*             settlement of the transaction.                          !!01063
*                                                                     !!01064
       06 SETL-CRNCY-CDE            TYPE CRNCY-CDE.                    !01065
                                                                       !01066
                                                                       !01067
*                                                                     !!01068
*             The exchange rate of the settlement entity used to      !!01069
*             compute the final settlement amount.  The first digit   !!01070
*             contains the offset of the decimal point from the       !!01071
*             right-hand side.  Unless multiple currencies are used,  !!01072
*             the default value is 61000000.                          !!01073
*                                                                     !!01074
       06 SETL-CONV-RATE            PIC 9(8).                          !01075
                                                                       !01076
                                                                       !01077
*                                                                     !!01078
*             The time and day when the exchange rate was applied     !!01079
*             between the transaction amount and the currency of the  !!01080
*             database.  The value in this field indicates when the   !!01081
*             actual conversion between the currency of the           !!01082
*             transaction and the currency of the database occurred.  !!01083
*             The value in this field is displayed in Greenwich Mean  !!01084
*             Time (GMT).                                             !!01085
*                                                                     !!01086
       06 CONV-DAT-TIM               TYPE BINARY 64.                   !01087
                                                                       !01088
                                                                       !01089
                                                                       !01090
*                                                                     !!01091
*             The values in the following nine fields indicate to the !!01092
*             Refresh process when to impact the Positive Balance     !!01093
*             File (PBF) and how to impact the various amount fields  !!01094
*             in the PBF, when impacting is required.                 !!01095
*                                                                     !!01096
*             A reversal transaction does not affect the codes in the !!01097
*             following nine fields.  When the value in the AUTH.TYP  !!01098
*             field identifies the transaction as a reversal, the     !!01099
*             Refresh process multiplies the values in the AUTH.AMT-1 !!01100
*             and AUTH.AMT-2 fields by negative 1 to determine how to !!01101
*             impact the various PBF amount fields.  Adding an amount !!01102
*             that has been multiplied by negative 1 has the same     !!01103
*             effect as subtracting the amount.                       !!01104
*                                                                     !!01105
     04 REFR.                                                          !01106
                                                                       !01107
                                                                       !01108
*                                                                     !!01109
*             A code indicating whether this record should be         !!01110
*             considered when impacting a set of account records that !!01111
*             has been refreshed.  Valid values are:                  !!01112
*                                                                     !!01113
*             0 = Do not use the record for impacting.                !!01114
*             1 = Use the record for impacting.                       !!01115
*                                                                     !!01116
        06  IMP-IND             PIC X.                                 !01117
                                                                       !01118
                                                                       !01119
*                                                                     !!01120
*             A code indicating the manner in which this record       !!01121
*             impacts the amount in the AVAIL-BAL field in the PBF    !!01122
*             account records.  Valid values are:                     !!01123
*                                                                     !!01124
*             0 = No effect on balance                                !!01125
*             1 = Add to balance                                      !!01126
*             2 = Subtract from balance                               !!01127
*                                                                     !!01128
        06  AVAIL-BAL           PIC X.                                 !01129
*                                                                     !!01130
*             A code indicating the manner in which this record       !!01131
*             impacts the amount in the AVAIL-CR field in the PBF     !!01132
*             account records.  Valid values are:                     !!01133
*                                                                     !!01134
*             0 = No effect on balance                                !!01135
*             1 = Add to balance                                      !!01136
*             2 = Subtract from balance                               !!01137
*                                                                     !!01138
        06  AVAIL-CR REDEFINES AVAIL-BAL  PIC X.                       !01139
                                                                       !01140
*                                                                     !!01141
*             A code indicating the manner in which this record       !!01142
*             impacts the amount in the LEDG-BAL field in the PBF     !!01143
*             account records.  Valid values are:                     !!01144
*                                                                     !!01145
*             0 = No effect on balance                                !!01146
*             1 = Add to balance                                      !!01147
*             2 = Subtract from balance                               !!01148
*                                                                     !!01149
        06  LEDG-BAL            PIC X.                                 !01150
*                                                                     !!01151
*             A code indicating the manner in which this record       !!01152
*             impacts the amount in the CR-LMT field in the PBF       !!01153
*             account records.  Valid values are:                     !!01154
*                                                                     !!01155
*             0 = No effect on balance                                !!01156
*             1 = Add to balance                                      !!01157
*             2 = Subtract from balance                               !!01158
*                                                                     !!01159
        06  CR-LMT REDEFINES LEDG-BAL PIC X.                           !01160
                                                                       !01161
*                                                                     !!01162
*             A code indicating the manner in which this record       !!01163
*             impacts the amount in the AMT-ON-HOLD field in the PBF  !!01164
*             account records.  Valid values are:                     !!01165
*                                                                     !!01166
*             0 = No effect on balance                                !!01167
*             1 = Add to balance                                      !!01168
*             2 = Subtract from balance                               !!01169
*                                                                     !!01170
        06  AMT-ON-HOLD         PIC X.                                 !01171
*                                                                     !!01172
*             A code indicating the manner in which this record       !!01173
*             impacts the amount in the CR-BAL field in the PBF       !!01174
*             account records.  Valid values are:                     !!01175
*                                                                     !!01176
*             0 = No effect on balance                                !!01177
*             1 = Add to balance                                      !!01178
*             2 = Subtract from balance                               !!01179
*                                                                     !!01180
        06  CR-BAL REDEFINES AMT-ON-HOLD   PIC X.                      !01181
                                                                       !01182
*                                                                     !!01183
*             A code indicating the manner in which this record       !!01184
*             impacts the amount in the TOTAL FLOAT field in the PBF  !!01185
*             account records.  Valid values are:                     !!01186
*                                                                     !!01187
*             0 = No effect on balance                                !!01188
*             1 = Add to balance                                      !!01189
*             2 = Subtract from balance                               !!01190
*                                                                     !!01191
        06  TTL-FLOAT           PIC X.                                 !01192
*                                                                     !!01193
*             A code indicating the manner in which this record       !!01194
*             impacts the amount in the CURRENT FLOAT field in the    !!01195
*             PBF account records.  Valid values are:                 !!01196
*                                                                     !!01197
*             0 = No effect on balance                                !!01198
*             1 = Add to balance                                      !!01199
*             2 = Subtract from balance                               !!01200
*                                                                     !!01201
        06  CUR-FLOAT           PIC X.                                 !01202
                                                                       !01203
                                                                       !01204
*                                                                     !!01205
*             A code indicating whether adjustments have settlement   !!01206
*             impact.  The value in this field is defined in the      !!01207
*             HOST-ADJ-PROCESSING field in the Base segment of the    !!01208
*             IDF record for the card issuer.  Valid values are:      !!01209
*                                                                     !!01210
*             0 = Adjustments do not have settlement impact.          !!01211
*             1 = Adjustments do have settlement impact.              !!01212
*                                                                     !!01213
     04 ADJ-SETL-IMPACT-FLG     PIC X.                                 !01214
                                                                       !01215
                                                                       !01216
*                                                                     !!01217
*             An alphabetic indicator set by the Authorization        !!01218
*             process from a corresponding field in the IDF.  It is   !!01219
*             used by the Refresh process to determine when           !!01220
*             transaction impacting can be terminated.                !!01221
*                                                                     !!01222
*             When the Refresh process finishes refreshing the PBF,   !!01223
*             it begins impacting the file with new transactions      !!01224
*             being added to the PTLF.  At that time, it increments   !!01225
*             the value in the REFR-IND field in the IDF (A to B, B   !!01226
*             to C, C to D, etc.) and sends a message to the          !!01227
*             Authorization process containing the refreshed PBF file !!01228
*             name and the new REFR-IND field value.  Thus, when      !!01229
*             transactions begin appearing in the PTLF with the new   !!01230
*             REFR-IND field value, the Refresh process knows that    !!01231
*             the Authorization process is using the refreshed PBF    !!01232
*             and that it can stop impacting the PBF.                 !!01233
*                                                                     !!01234
*             Four different settings exist.  However, three settings !!01235
*             are used because an institution can have three separate !!01236
*             PBFs used for BASE24-pos and, therefore, three refresh  !!01237
*             schedules: one for checking accounts (PBF1), one for    !!01238
*             savings accounts (PBF2) and one for credit accounts     !!01239
*             (PBF3).                                                 !!01240
*                                                                     !!01241
     04 REFR-IND.                                                      !01242
        06  PBF1                PIC X.                                 !01243
        06  PBF2                PIC X.                                 !01244
        06  PBF3                PIC X.                                 !01245
        06  PBF4                PIC X.                                 !01246
                                                                       !01247
                                                                       !01248
                                                                       !01249
*                                                                     !!01250
*             The identification of the forwarding institution for    !!01251
*             full fee accounting.  This field contains the value     !!01252
*             taken from the FORWARD-INST-ID parameter in the LCONF   !!01253
*             and is used for logging purposes only.  The value in    !!01254
*             this field is loaded by the Authorization process.      !!01255
*                                                                     !!01256
     04 FRWD-INST-ID-NUM        TYPE ID-NUM.                           !01257
                                                                       !01258
                                                                       !01259
*                                                                     !!01260
*             A code identifying the card acceptor on a 0200          !!01261
*             transaction originating from an acquirer host.  This    !!01262
*             field is only used in cases where the acquirer is not   !!01263
*             the actual card acceptor.  Otherwise, this field is     !!01264
*             left blank.                                             !!01265
*                                                                     !!01266
     04 CRD-ACCPT-ID-NUM       TYPE ID-NUM.                            !01267
                                                                       !01268
                                                                       !01269
*                                                                     !!01270
*             A code identifying the actual card issuer on a 0210     !!01271
*             response from an authorizing host, if desired.  This    !!01272
*             field is only used in cases where the receiving         !!01273
*             institution is not the actual card acceptor. Otherwise, !!01274
*             this field is left blank.                               !!01275
*                                                                     !!01276
     04 CRD-ISS-ID-NUM         TYPE ID-NUM.                            !01277
                                                                       !01278
                                                                       !01279
*                                                                     !!01280
*             The original message type associated with the           !!01281
*             transaction.  The value in this field is used for       !!01282
*             adjustments, representments or reversal transactions.   !!01283
*                                                                     !!01284
     04 ORIG-MSG-TYP           PIC X(4).                               !01285
*                                                                     !!01286
*             The original time (HHMMSSTT) at which the transaction   !!01287
*             occurred.  The value in this field is used for          !!01288
*             adjustments, representments or reversal transactions.   !!01289
*                                                                     !!01290
     04 ORIG-TRAN-TIM          TYPE TIM.                               !01291
*                                                                     !!01292
*             The original date (MMDD) on which the transaction       !!01293
*             occurred.  The value in this field is used for          !!01294
*             adjustments, representments or reversal transactions.   !!01295
*                                                                     !!01296
     04 ORIG-TRAN-DAT          PIC X(4).                               !01297
*                                                                     !!01298
*             The original sequence number assigned to the            !!01299
*             transaction.  The value in this field is                !!01300
*             used for adjustments, representments or reversal        !!01301
*             transactions.                                           !!01302
*                                                                     !!01303
     04 ORIG-SEQ-NUM           PIC X(12).                              !01304
*                                                                     !!01305
*             The original date (MMDD) on which the transaction was   !!01306
*             posted to BASE24.  The value in this field is used for  !!01307
*             adjustments, representments or reversal transactions.   !!01308
*                                                                     !!01309
     04 ORIG-B24-POST-DAT      PIC X(4).                               !01310
                                                                       !01311
                                                                       !01312
                                                                       !01313
*                                                                     !!01314
*             A reason code indicating why the exception flag is set. !!01315
*             This field is used only for exception records.  For any !!01316
*             other records, this field is set to blanks.             !!01317
*                                                                     !!01318
     04 EXCP-RSN-CDE           PIC X(3).                               !01319
                                                                       !01320
*                                                                     !!01321
*             A code distinguishing between normal transactions and   !!01322
*             transactions handled through CRT Authorization.  Valid  !!01323
*             values are:                                             !!01324
*                                                                     !!01325
*             0 = Normal transaction--Transaction received from POS   !!01326
*                 device without CRT Authorization involvement.       !!01327
*             1 = Referral override with response sent to the CRT     !!01328
*                 Device Handler--Transaction was not authorized due  !!01329
*                 to insufficient information and has been referred   !!01330
*                 for manual authorization.                           !!01331
*             2 = Referral override with transaction sent out of CRT  !!01332
*                 Device Handler/Router/Authorization--Force-post     !!01333
*                 transaction indicating whether a transaction that   !!01334
*                 was previously referred for manual authorization    !!01335
*                 has been approved or declined.                      !!01336
*             3 = Normal CRT Authorization transaction--Transaction   !!01337
*                 received from CRT Authorization terminal instead of !!01338
*                 POS device, but no referrals were necessary.        !!01339
*                                                                     !!01340
     04 OVRRDE-FLG             PIC X.                                  !01341
                                                                       !01342
*                                                                     !!01343
*             The cardholder billing address received with the        !!01344
*             transaction when performing address verification.  This !!01345
*             field contains zeros when the transaction contains a    !!01346
*             status code without an address or ZIP code.             !!01347
*                                                                     !!01348
     04  ADDR                  PIC X(20).                              !01349
*                                                                     !!01350
*             The cardholder billing ZIP code received with the       !!01351
*             transaction when performing address verification.  This !!01352
*             field contains zeros when the transaction contains a    !!01353
*             status code without an address or ZIP code.             !!01354
*                                                                     !!01355
     04  ZIP-CDE               PIC X(9).                               !01356
*                                                                     !!01357
*             A code identifying the result of comparing address      !!01358
*             verification information received in the transaction    !!01359
*             and address verification information contained in the   !!01360
*             processor's database.  Valid values are:                !!01361
*                                                                     !!01362
*             A   = ADDRESS--Addresses matched, but ZIP codes did not !!01363
*                   match.                                            !!01364
*             E * = ERROR--The transaction was not eligible for       !!01365
*                   address verification or an editing error occurred !!01366
*                   while attempting to process the message.          !!01367
*             N   = NO--Addresses did not match and ZIP codes did not !!01368
*                   match.                                            !!01369
*             R * = RETRY--Primary and secondary authorizers were     !!01370
*                   unavailable or declined the transaction and       !!01371
*                   address verification was not performed on         !!01372
*                   BASE24-pos.                                       !!01373
*             S * = SERVICE NOT SUPPORTED--BASE24-pos authorized the  !!01374
*                   transaction, but did not have the add-on Address  !!01375
*                   Verification module.                              !!01376
*             U * = UNAVAILABLE--Address information was not          !!01377
*                   available to the processor performing address     !!01378
*                   verification.                                     !!01379
*             W   = WHOLE ZIP--Nine-digit ZIP codes matched, but      !!01380
*                   addresses did not match.                          !!01381
*             X   = EXACT--Addresses and nine-digit ZIP codes         !!01382
*                   matched.                                          !!01383
*             Y   = YES--Addresses and five-digit ZIP codes matched.  !!01384
*             Z   = ZIP--Five-digit ZIP codes matched, but addresses  !!01385
*                   did not match.                                    !!01386
*             _ * = Address verification information was not included !!01387
*                   in this transaction (_ denotes a blank            !!01388
*                   character).                                       !!01389
*             0 * = Address verification information was included in  !!01390
*                   this transaction, but was not verified.  A        !!01391
*                   transaction to be verified by a host or           !!01392
*                   interchange carries this code.  A transaction to  !!01393
*                   be verified on BASE24-pos, but declined before    !!01394
*                   address verification could be performed also      !!01395
*                   carries this code.                                !!01396
*                                                                     !!01397
*               *  This value identifies a reason that a comparison   !!01398
*                  was not made.  Each interchange specifies the      !!01399
*                  value it uses to identify this reason.  BASE24     !!01400
*                  Interchange Interfaces substitute the interchange- !!01401
*                  specific value before sending the message from     !!01402
*                  BASE24-pos to the interchange.  Refer to section 1 !!01403
*                  of the BASE24-pos Address Verification Manual for  !!01404
                                                                       !01404I00
*                  a listing of interchange-specific values.           !01404I01
*                                                                      !01404I02
*             Interchange response messages received by BASE24-pos     !01404I03
*             may contain interchange-specific values.                 !01404I04
*             BASE24 Interchange Interfaces do not change              !01404I05
*             a value received from the interchange.                   !01404I06
*             Refer to the individual interchange documentation        !01404I07
*             for details of interchange-specific values.              !01404I08
                                                                       !01404I09
                                                                       !01405I00
                                                                       !01405I01
                                                                       !01405I02
*                                                                     !!01408
     04  ADDR-VRFY-STAT        PIC X.                                  !01409
                                                                       !01410
                                                                       !01411
                                                                       !01412
*                                                                     !!01413
*             An indicator as to whether the PIN was present          !!01414
*             in the transaction.                                     !!01415
*                                                                     !!01416
*             Valid values:                                           !!01417
*             0 = PIN not present                                     !!01418
*             1 = PIN present                                         !!01419
                                                                       !01420
     04 PIN-IND                PIC 9.                                  !01421
                                                                       !01422
*                                                                     !!01423
*             The number of PIN tries.                                !!01424
*                                                                     !!01425
                                                                       !01426
     04 PIN-TRIES              PIC X.                                  !01427
                                                                       !01428
*             The expiration date and time assigned to a              !!01429
*             pre-auth entry when it is added to the CAF, UAF         !!01430
*             or PBF.                                                 !!01431
                                                                       !01432
     04 PRE-AUTH-TS.                                                   !01433
        06 DAT                 TYPE *.                                 !01434
        06 TIM                 TYPE *.                                 !01435
                                                                       !01436
*             A code identifying the file or files in which a         !!01437
*             pre-auth hold entry is stored.  Valid values are:       !!01438
*                                                                     !!01439
*             0 = No holds level, or not applicable                   !!01440
*             1 = Holds stored at CAF level                           !!01441
*             2 = Holds stored at PBF level                           !!01442
*             3 = Holds stored at CAF and PBF levels                  !!01443
*             4 = Holds stored at UAF level                           !!01444
                                                                       !01445
     04 PRE-AUTH-HLDS-LVL      PIC X.                                  !01446
                                                                       !01447
                                                                       !01448
*                                                                     !!01449
*             Reserved for future use.                                !!01450
*                                                                     !!01451
     04 USER-FLD5              PIC X(33).                              !01452
                                                                       !01453
                                                                       !01454
                                                                       !01455
                                                                       !01456
                                                                       !01457
END                                                                    !01458
?nocomments
?PAGE "POS Transaction Log"
!                                                                     !!01463
! History section                                                     !!01464
!---------------------------------------------------------------------!!01465
                                                                       !01466
                                                                       !01467
! 06/23/87  Mehran D.                                                |!!01468
! Symptom:  None                                                     |!!01469
! Problem:  None                                                     |!!01470
! Fix:      The "CD" alternate key file is not being used by any     |!!01471
!           process or report programs. So it is not going to be     |!!01472
!           created any more. No changes in the record length.       |!!01473
! Implementation Dependencies: Settlement will not create or load    |!!01474
!           the "CD" alternate key file.                             |!!01475
! Reference: None.                                                   |!!01476
!                                                                    |!!01477
! 06/23/87  Mehran D.                                                |!!01478
! Symptom:  None                                                     |!!01479
! Problem:  None                                                     |!!01480
! Fix:      New values have been added to the HEAD.REC-TYP to        |!!01481
!           indicate different exception records. Also a field       |!!01482
!           called EXCP-RSN-CDE has been added to the PTLF.AUTH to   |!!01483
!           indicate the reason that the exception flag is set.      |!!01484
! Implementation Dependencies: PTLF Perusal and Extract should       |!!01485
!           recompile to get these two fields and process them       |!!01486
!           accordingly.                                              !!01487
! Reference: None.                                                   |!!01488
!                                                                    |!!01489
                                                                       !01490
                                                                       !01491
!                                                                     !!01492
! 02/11/91  Rosalie Weber                                             !!01493
! Symptom:  DDLFUP is created as "PTLF" rather than the correct       !!01494
!           template name of "POYYMMDD".                              !!01495
! Problem:  None                                                      !!01496
! Fix:      Modified RECORD statement to contain a FILE name of       !!01497
!           "P0YYMMDD".                                               !!01498
! Implementation Dependencies: None.                                  !!01499
! Reference: ACI Generated.                                           !!01500
!                                                                     !!01501
**********************************************************************!!01502
*                        RELEASE 5.0                                 *!!01503
**********************************************************************!!01504
*    1/4/93     Release 5.0 Design Team                               !!01505
*    SYMPTOM:   BASE24-pos Release 5.0 Enhancements.                  !!01506
*    PROBLEM:   (E) None.                                             !!01507
*    FIX:       1. Added new keys:  TERM, TKEY and RKEY.  TERM is a   !!01508
*                  new key and TKEY and RKEY were keys previously in  !!01509
*                  the RTLF.  Added a redefine of AUTH, CLERK-TOT.    !!01510
*                  The clerk totals previously were logged to the     !!01511
*                  RTLF, but the RTLF does not exist for release 5.0. !!01512
*               2. Created record definitions for the EXTR-POSITIONS, !!01513
*                  SET-REC, SRVCS-1, SRVCS-2 and CLERK-TOT redefines. !!01514
*                  By making each of the given structures into its own!!01515
*                  record definition, the wasted USER-FLD space that  !!01516
*                  exists in the redefines could be reduced.          !!01517
*                  Within the record definitions, the USER-FLD space  !!01518
*                  that existed as filler space to make the redefines !!01519
*                  the same size as the AUTH structure were reduced   !!01520
*                  to 20 or 21 bytes, except for SRVCS-1 which        !!01521
*                  was increased to 6 bytes.  Note the reason for     !!01522
*                  increasing SRVCS-1 and for using 21 bytes instead  !!01523
*                  of 20 bytes was to maintain word boundary align-   !!01524
*                  ment for the USER-DATA structure.                  !!01525
*               3. Reduced USER-FLD5 from 153 bytes to 34 bytes.      !!01526
*               4. Added PIN-IND and PIN-TRIES by descreasing         !!01527
*                  USER-FLD5 to PIC X(32).                            !!01528
*               5. Increased TERM-ST from PIC X(2) to PIC X(3).       !!01529
*                  Increased USER-FLD2 from PIC X(2) to PIC X(3).     !!01530
*                  Decreased USER-FLD5 to PIC X(30).                  !!01531
*               6. Within the PTLF-EXTR-POSITIONS definition, the     !!01532
*                  space to allow up to 100 partial extracts was      !!01533
*                  added.  Also, each extract position marker was     !!01534
*                  modified to contain an RBA field, a PARTIAL-CNT    !!01535
*                  field and a BLK-REC-CNT field.  Also, added        !!01536
*                  RTLF extract position markers to the PTLF-EXTR-    !!01537
*                  POSITIONS structure.                               !!01538
*               7. Added field PRE-AUTH-TS (14 bytes).                !!01539
*                  Added field PRE-AUTH-HLDS-LVL (1 byte).            !!01540
*                  Increased AUTH.USER-FLD5 to 33 bytes.              !!01541
*               8. Changed the USER-FLD1 field in the HEAD            !!01542
*                  definition to be the DATA-FLAG field.              !!01543
*               9. Added new redefine in SETL-REC definition for      !!01544
*                  clerk totals.                                      !!01545
*    DEPENDENCIES:  Recompile the DDLS and the processes that use the !!01546
*                   PTLF.  Refer to the Release 5.0 Installation      !!01547
*                   Documentation for further details.                !!01548
*    REFERENCE: BASE24-pos Release 5.0 External Specifications        !!01549
*               - Check Authorization                                 !!01550
*               - Base Perusal                                        !!01551
*               - POS General Enhancements                            !!01552
*               BASE24-base Release 5.0 External Specifications       !!01553
*               - Message Tokenization                                !!01554
*               - Super Extract Enhancements                          !!01555
*               - Pre-Authorization Enhancement                       !!01556
*                                                                     !!01557
**********************************************************************!!01558
                                                                       !01558A00
* Feb 16, 1993   Bob Cronin                                            !01558A01
* SYMPTOM:       None.                                                 !01558A02
* PROBLEM:       The BULK^READ utility does not correctly process      !01558A03
*                partitioned PTLF files when performing PTLF           !01558A04
*                or RTLF extracts.                                     !01558A05
* FIX:           Added the field PART-NUM to the EXTR-POSITIONS        !01558A06
*                structure and the EOF-POSITION structure in the       !01558A07
*                PTLF-EXTR-POSITIONS definition.                       !01558A08
*                These fields will be used by the BULK^READ utility    !01558A09
*                to allow processing of partitioned files for          !01558A0A
*                PTLF or RTLF extracts.                                !01558A0B
* DEPENDENCIES:  None.                                                 !01558A0C
* REFERENCE:     BETA Database RPC #002717                             !01558A0D
                                                                       !01558A0E
                                                                       !01558B00
* Feb 24, 1993   Bob Cronin                                            !01558B01
* SYMPTOM:       None.                                                 !01558B02
* PROBLEM:       The PART-NUM field in the RTLF-EXTR-POSITIONS         !01558B03
*                structure was incorrectly added as a level 04         !01558B04
*                when it should have been a level 06 within the        !01558B05
*                EOF-POSITION structure.                               !01558B06
* FIX:           Changed the PART-NUM field in the RTLF-EXTR-          !01558B07
*                POSITIONS structure to be a level 06 within the       !01558B08
*                EOF-POSITION structure.                               !01558B09
* DEPENDENCIES:  None.                                                 !01558B0A
* REFERENCE:     None.                                                 !01558B0B
                                                                       !01558B0C
                                                                       !01559A00
                                                                       !01559A01
                                                                       !01559A02
!---------------------------------------------------------------------!!01561
                                                                       !01562
?SECTION PTLF
*#####################################################################!!01565
*#                     POS Transaction Log File                      #!!01566
*#####################################################################!!01567
                                                                       !01568
*1  4.1.n  POS Transaction Log File                                   !!01569
*1  4.1.n.1  Identification                                           !!01570
*1                                                                    !!01571
*1      The Transaction Log File (PTLF) contains a record of every    !!01572
*1      card-originated transaction processed by Base24-pos or afs    !!01573
*1      for a single 24 hour period.  It also contains settlement     !!01574
*1      records for each EFT terminal in the system.  This file is an !!01575
*1      audit record at the transaction level of the system's         !!01576
*1      processing and is extracted daily to provide detailed         !!01577
*1      transaction data to the participating institutions for        !!01578
*1      processing on their host systems.                             !!01579
*1                                                                    !!01580
*1      Records are written to the PTLF sequentially but at any time, !!01581
*1      there are two PTLFs accessible to the system for logging.     !!01582
*1      Which PTLF is to be used is determined by the transaction     !!01583
*1      posting date.  This is derived from the current business date !!01584
*1      of the terminal at which the transaction originated.          !!01585
*1                                                                    !!01586
*1      When network settlement occurs, a new PTLF is created and the !!01587
*1      oldest TLF is closed to the on-line system and is available   !!01588
*1      for reporting and extract processing.  The accessibility of   !!01589
*1      two PTLFs to the on-line system allows individual EFT terminals
*1      to be cutover at different times during the day.  Thus, one   !!01592
*1      terminal may have a posting date of 051180 while another has a!!01593
*1      posting date of 051080.  At network settlement time, all      !!01594
*1      terminals must have the same posting date.                    !!01595
*1      This file contains a record for each transaction that has     !!01596
*1      been approved by authorization.                               !!01597
*1                                                                    !!01598
*1  4.1.n.2  Security                                                 !!01599
*1                                                                    !!01600
*1      The PTLF is secured under Tandem's group level security so that
*1      only authorized network operators may access (or start        !!01603
*1      programs which will access) the file.                         !!01604
*1                                                                    !!01605
*1      USER ID         = <Base24 node name>.*                        !!01606
*1      FILE CODE       = 0                                           !!01607
*1      ACCESS SECURITY = GGGG                                        !!01608
*1                                                                    !!01609
*1  4.1.n.3  Usage                                                    !!01610
*1                                                                    !!01611
*3       Auth Process   i/o          RAND (  )    r       shared      !!01612
*3       File maint     i/o          RAND (  )    r       shared      !!01613
*3       Refresh        input        SEQ                  shared      !!01614
*3       Extract        input        SEQ                  shared      !!01615
*3       Settlement     create                                        !!01616
*3       Reporting      input        RAND (  )            shared      !!01617
*1                                                                    !!01618
*1  4.1.n.5  Record Description                                       !!01619
*1                                                                    !!01620
                                                                       !01621
?comments
RECORD PTLF.         FILE IS "POYYMMDD" ENTRY-SEQUENCED.               !01624
                                                                       !01625
                                                                       !01626
                                                                       !01627
                                                                       !01628
02  HEAD     TYPE *.                                                   !01629
02  AUTH     TYPE *.                                                   !01630
                                                                       !01631
*                                                                     !!01632
*             User data information loaded from the PSTM for the      !!01633
*             transaction.  The user data area is used by the         !!01634
*             originator of the PSTM.                                 !!01635
  02 USER-DATA                  TYPE *.                                !01636
key "CR" is head.crd.                                                  !01637
key "RT" is head.RETL.                                                 !01638
key "TT" is head.term.                                                 !01639
key "TK" is head.tkey.                                                 !01640
key "RK" is head.tkey.rkey.                                            !01641
END                                                                    !01642
                                                                       !01643
?PAGE "PTLF-EXTR-POSITIONS"
?SECTION PTLF-EXTR-POSITIONS
                                                                       !01648
DEFINITION PTLF-EXTR-POSITIONS.                                        !01649
02 HEAD                  TYPE *.                                       !01650
                                                                       !01651
*                                                                     !!01652
*             A value one less than the number of partial             !!01653
*             extracts that have been performed on the PTLF           !!01654
*             file.  This value will be used to access the            !!01655
*             last entry in the EXTR-POSITIONS array of               !!01656
*             extract position markers that has been filled.          !!01657
*                                                                     !!01658
02  PARTIAL-CNT                    TYPE BINARY 16.                     !01659
                                                                       !01660
*                                                                     !!01661
*             The values in the following fields are used to          !!01662
*             hold the location of the last record extracted          !!01663
*             in the corresponding partial extract.  Up to 100        !!01664
*             partial extracts can be tracked in a given PTLF file.   !!01665
*                                                                     !!01666
02  EXTR-POSITIONS                 OCCURS 100 TIMES.                   !01667
                                                                       !01668
*                                                                     !!01669
*             The relative byte address of the beginning of the       !!01670
*             PTLF data block that contained the last PTLF record     !!01671
*             extracted in the corresponding partial extract.         !!01672
*                                                                     !!01673
   04  RBA                        TYPE BINARY 32.                      !01674
                                                                       !01675
*                                                                     !!01676
*             The number of the record in the block of the last       !!01677
*             PTLF record extracted in the corresponding partial      !!01678
*             extract.                                                !!01679
*                                                                     !!01680
   04  BLK-REC-CNT                TYPE BINARY 16.                      !01681
                                                                       !01681A00
                                                                       !01681A01
*                                                                      !01681A02
*              For a partitioned PTLF log file, this field contains    !01681A03
*              the number of the partition within the PTLF file that   !01681A04
*              contained the last PTLF record extracted in the         !01681A05
*              in the corresponding partial extract.                   !01681A06
*                                                                      !01681A07
    04  PART-NUM                   TYPE BINARY 16.                     !01681A08
                                                                       !01681A09
                                                                       !01682
                                                                       !01683D00
                                                                       !01683D01
                                                                       !01683D02
*                                                                     !!01704
*             Reserved for future use.                                !!01705
*                                                                     !!01706
02 USER-FLD6               PIC X(20).                                  !01707
END                                                                    !01708
                                                                       !01709
                                                                       !01710
                                                                       !01710E00
?PAGE "PTLF-EXTR-POSITIONS-FRMT-2"
?SECTION PTLF-EXTR-POSITIONS-FRMT-2
                                                                       !01710E05
DEFINITION PTLF-EXTR-POSITIONS-FRMT-2.                                 !01710E06
                                                                       !01710E07
02 HEAD                                 TYPE *.                        !01710E08
                                                                       !01710E09
*             A value one less than the number of partial              !01710E0A
*             extracts that have been performed on the PTLF            !01710E0B
*             file.  This value will be used to access the             !01710E0C
*             last entry in the EXTR-POSITIONS array of                !01710E0D
*             extract position markers that has been filled.           !01710E0E
                                                                       !01710E0F
02  PARTIAL-CNT                         TYPE BINARY 16.                !01710E0G
                                                                       !01710E0H
*             The values in the following fields are used to           !01710E0I
*             hold the location of the last record extracted           !01710E0J
*             in the corresponding partial extract.  Up to 100         !01710E0K
*             partial extracts can be tracked in a given PTLF file.    !01710E0L
                                                                       !01710E0M
02  EXTR-POSITIONS-FRMT-2               OCCURS 100 TIMES.              !01710E0N
                                                                       !01710E0O
*             The format 2 file relative byte address of the           !01710E0P
*             beginning of the PTLF data block that contained the      !01710E0Q
*             last PTLF record extracted in the corresponding          !01710E0R
*             partial extract.                                         !01710E0S
                                                                       !01710E0T
   04  RBA-FRMT-2                       TYPE BINARY 64.                !01710E0U
                                                                       !01710E0V
*             The number of the record in the block of the last        !01710E0W
*             PTLF record extracted in the corresponding partial       !01710E0X
*             extract.                                                 !01710E0Y
                                                                       !01710E0Z
   04  BLK-REC-CNT                      TYPE BINARY 16.                !01710E10
                                                                       !01710E11
*              For a partitioned PTLF log file, this field contains    !01710E12
*              the number of the partition within the PTLF file that   !01710E13
*              contained the last PTLF record extracted in the         !01710E14
*              in the corresponding partial extract.                   !01710E15
                                                                       !01710E16
    04  PART-NUM                        TYPE BINARY 16.                !01710E17
                                                                       !01710E18
*             Reserved for future use.                                 !01710E19
                                                                       !01710E1A
02 USER-FLD6                            PIC X(20).                     !01710E1B
                                                                       !01710E1C
END                                                                    !01710E1D
                                                                       !01710E1E
?PAGE "PTLF-SET-REC"
?SECTION PTLF-SET-REC
                                                                       !01710E1J
                                                                       !01715
DEFINITION PTLF-SET-REC.                                               !01716
02 HEAD                  TYPE *.                                       !01717
02 SET-REC.                                                            !01718
   04 SET-REC1                TYPE *.                                  !01719
   04 USER-FLD7               PIC X.                                   !01720
   04 SET-REC2                TYPE *.                                  !01721
   04 USER-FLD8               PIC X(22).                               !01722
  02 USER-DATA                  TYPE *.                                !01723
END                                                                    !01724
                                                                       !01725
                                                                       !01726
                                                                       !01727
                                                                       !01727G00
?PAGE "PTLF-SET-REC-6
?SECTION PTLF-SET-REC-6
                                                                       !01727G05
DEFINITION PTLF-SET-REC-6.                                             !01727G06
02 HEAD                       TYPE *.                                  !01727G07
02 SET-REC-6.                                                          !01727G08
   04 SET-REC1                TYPE *.                                  !01727G09
   04 USER-FLD7               PIC X.                                   !01727G0A
   04 SET-REC6                TYPE *.                                  !01727G0B
   04 USER-FLD8               PIC X(22).                               !01727G0C
02 USER-DATA                  TYPE *.                                  !01727G0D
END                                                                    !01727G0E
?PAGE "PTLF-SRVCS-1"
?SECTION PTLF-SRVCS-1
                                                                       !01727G0J
                                                                       !01732
DEFINITION PTLF-SRVCS-1.                                               !01733
02 HEAD                  TYPE *.                                       !01734
*                                                                     !!01735
*             The following fields are used to log the first 17       !!01736
*             services to the PTLF.                                   !!01737
*                                                                     !!01738
02 SRVCS-1.                                                            !01739
   04 SET-REC1                TYPE *.                                  !01740
   04 USER-FLD9               PIC X.                                   !01741
   04 SET-REC3                TYPE *.                                  !01742
   04 USER-FLD8               PIC X(6).                                !01743
  02 USER-DATA                  TYPE *.                                !01744
END                                                                    !01745
                                                                       !01746
                                                                       !01747
                                                                       !01748
?PAGE "PTLF-SRVCS-2"
?SECTION PTLF-SRVCS-2
                                                                       !01753
DEFINITION PTLF-SRVCS-2.                                               !01754
02 HEAD                  TYPE *.                                       !01755
  02 SRVCS-2.                                                          !01756
     04 SET-REC1                TYPE *.                                !01757
     04 USER-FLD11              PIC X.                                 !01758
     04 SET-REC4                TYPE *.                                !01759
     04 USER-FLD12              PIC X(22).                             !01760
  02 USER-DATA                  TYPE *.                                !01761
END                                                                    !01762
                                                                       !01763
                                                                       !01763G00
?PAGE "PTLF-SRVCS-7"
?SECTION PTLF-SRVCS-7
                                                                       !01763G05
DEFINITION PTLF-SRVCS-7.                                               !01763G06
02 HEAD                       TYPE *.                                  !01763G07
02 SRVCS-7.                                                            !01763G08
   04 SET-REC1                TYPE *.                                  !01763G09
   04 USER-FLD9               PIC X.                                   !01763G0A
   04 SET-REC7                TYPE *.                                  !01763G0B
02 USER-DATA                  TYPE *.                                  !01763G0C
END                                                                    !01763G0D
?PAGE "PTLF-CLERK-TOT"
?SECTION PTLF-CLERK-TOT
                                                                       !01763G0I
                                                                       !01768
DEFINITION PTLF-CLERK-TOT.                                             !01769
02 HEAD                  TYPE *.                                       !01770
                                                                       !01771
*             CLERK-TOT will be used to log the clerk totals to the   !!01772
*             PTLF                                                    !!01773
                                                                       !01774
02 CLERK-TOT.                                                          !01775
   04 SET-REC1                 TYPE *.                                 !01776
   04 USER-FLD13               PIC X.                                  !01777
   04 SET-REC5                 TYPE *.                                 !01778
   04 USER-FLD14               PIC X(22).                              !01779
                                                                       !01780
  02 USER-DATA                  TYPE *.                                !01781
                                                                       !01782
END                                                                    !01783
                                                                       !01784
                                                                       !01785
?PAGE "SETL-REC"
?SECTION SETL-REC
                                                                       !01790
DEFINITION SETL-REC.                                                   !01791
                                                                       !01792
02 HEAD                  TYPE *.                                       !01793
                                                                       !01794
                                                                       !01795
                                                                       !01796
                                                                       !01797
02 SERVICES.                                                           !01798
   04 SET-REC1           TYPE *.                                       !01799
   04 USER-FLD7          PIC X.                                        !01800
   04 NUM-SRV            TYPE BINARY 16.                               !01801
   04 SRV                OCCURS 30 TIMES.                              !01802
      06 TYP             PIC XX.                                       !01803
      06 DB-CNT          TYPE BINARY 16.                               !01804
      06 DB              TYPE BINARY 64.                               !01805
      06 CR-CNT          TYPE BINARY 16.                               !01806
      06 CR              TYPE BINARY 64.                               !01807
      06 ADJ-CNT         TYPE BINARY 16.                               !01808
      06 ADJ             TYPE BINARY 64.                               !01809
                                                                       !01810
                                                                       !01811
02 SET-REC                    REDEFINES SERVICES.                      !01812
   04 SET-REC1                TYPE *.                                  !01813
   04 USER-FLD7               PIC X.                                   !01814
   04 SET-REC2                TYPE *.                                  !01815
   04 USER-FLD8               PIC X(842).                              !01816
                                                                       !01817
02 CLERK-TOT                  REDEFINES SERVICES.                      !01818
   04 SET-REC1                TYPE *.                                  !01819
   04 USER-FLD9               PIC X.                                   !01820
   04 SET-REC5                TYPE *.                                  !01821
   04 USER-FLD10              PIC X(912).                              !01822
                                                                       !01823
                                                                       !01824
02 USER-FLD13                 PIC X(5).                                !01825
                                                                       !01826
02 USER-FLD13A                PIC X(1).                                !01827
                                                                       !01828
02 USER-DATA                  TYPE *.                                  !01829
                                                                       !01830
                                                                       !01831
END                                                                    !01832
?nocomments
                                                                       !01835
?notal
?PAGE "PLTF-COB-BUF"
?SECTION PTLF-COB-BUF
*                                                                     !!01842
*             This definition is used by COBOL reports and perusal    !!01843
*             programs to process the various PTLF record definitions.!!01844
*                                                                     !!01845
DEFINITION PTLF-COB-BUF.                                               !01846
02  HEAD                  TYPE *.                                      !01847
02  PTLF-AUTH-BUF.                                                     !01848
    04  AUTH              TYPE *.                                      !01849
    04  AUTH-BUF          PIC X(3286).                                 !01850
                                                                       !01851
02  PTLF-SET-REC-BUF      REDEFINES PTLF-AUTH-BUF.                     !01852
    04  SET-REC1          TYPE *.                                      !01853
    04  USER-FLD7         PIC X.                                       !01854
    04  SET-REC2          TYPE *.                                      !01855
    04  USER-FLD8         PIC X(22).                                   !01856
    04  SET-REC-BUF       PIC X(3594).                                 !01857
                                                                       !01858
02  PTLF-SRVCS-1-BUF      REDEFINES PTLF-AUTH-BUF.                     !01859
    04  SET-REC1          TYPE *.                                      !01860
    04  USER-FLD9         PIC X.                                       !01861
    04  SET-REC3          TYPE *.                                      !01862
    04  USER-FLD8         PIC X(6).                                    !01863
    04  SRVCS-1-BUF       PIC X(3184).                                 !01864
                                                                       !01865
02  PTLF-SRVCS-2-BUF      REDEFINES PTLF-AUTH-BUF.                     !01866
    04  SET-REC1          TYPE *.                                      !01867
    04  USER-FLD11        PIC X.                                       !01868
    04  SET-REC4          TYPE *.                                      !01869
    04  USER-FLD12        PIC X(22).                                   !01870
    04  SRVCS-2-BUF       PIC X(3298).                                 !01871
                                                                       !01872
02  PTLF-CLERK-TOT-BUF    REDEFINES PTLF-AUTH-BUF.                     !01873
    04  SET-REC1          TYPE *.                                      !01874
    04  USER-FLD13        PIC X.                                       !01875
    04  SET-REC5          TYPE *.                                      !01876
    04  USER-FLD14        PIC X(22).                                   !01877
    04  CLERK-TOT-BUF     PIC X(3664).                                 !01878
                                                                       !01879
END                                                                    !01880
?tal =psddl_psddltal
                                                                       !01880C02
