**FIX2.28  12/22/09  DDLFUAF 6007 DDL    BA60DDL  BA0D336  G                 ***
**FIX2.23  02/13/03  DDLFUAF 6006 DDL    BA60DDL  BA06241  F                 ***
**FIX2.11  01/17/01  DDLFUAF 6005 DDL    BA60DDL  BA04225  E                 ***
**SEQ0.04  11/01/00  DDLFUAF 6004 DDL    BA60DDL  BA04000  D                 ***
**SYNC.04  12/09/98  DDLFUAF 5304 DDL    BA53DDL  BA04000  D                 ***
**FIX2.03  08/28/98  DDLFUAF 5304 DDL    BA53DDL  BA03000  D                 ***
**FIX2.04  03/03/98  DDLFUAF 5104 DDL    BA51DDL  BA03099  D                 ***
**FIX2.04  11/24/97  DDLFUAF 5103 DDL    BA51DDL  BA03023  C                 ***
**SYNC.03  08/22/97  DDLFUAF 5102 DDL    BA51DDL  BA03000  B                 ***
**SYNC.02  06/25/96  DDLFUAF 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  06/06/95  DDLFUAF 5102 DDL    BA51DDL  BA51023  B                 ***
**FIX2.00  12/23/92  DDLFUAF 5101 DDL    BA51DDL  BA50027  A                 ***
!*SEQ2.00  10/20/92  DDLFUAF 5000 DDL    BA50DDL                               !
                                                                       !00000G00
********************************************************************** !00000G01
*                                                                    * !00000G02
*                               BASE24                               * !00000G03
*                               ------                               * !00000G04
*                                                                    * !00000G05
*            DDL for the BASE24 Usage Accumulation File              * !00000G06
*                                                                    * !00000G07
*                   Proprietary Software Product                     * !00000G08
*                                                                    * !00000G09
*                        ACI Worldwide, Inc.                         * !00000G0A
*                        6060 Coventry Drive                         * !00000G0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000G0C
*                          (402) 390-7600                            * !00000G0D
*                                                                    * !00000G0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000G0F
*                                                                    * !00000G0G
*    All Rights Reserved.                                            * !00000G0H
*                                                                    * !00000G0I
********************************************************************** !00000G0J
?nocomments
?deflist
?PAGE "UAF - Usage Accumulation File"
?SECTION UAFBASE
************************************************************************
*                         History Section                              *
************************************************************************
                                                                       !00000G0Y
                                                                       !00000B00
                                                                       !00000B01
                                                                       !00000B02
* 921222   RRC                                                         !00096A02
* SYMPTOM:      None.                                                  !00096A03
* PROBLEM (E) : None.                                                  !00096A04
* FIX: Added the following fields to the SSBC segment of the UAF       !00096A05
*      to allow for additional limit checking:                         !00096A06
*      TTL-CSF-CHK-PRD                                                 !00096A07
*      OFFL-CSF-CHK-PRD                                                !00096A08
*      CSF-CHK-USED-PRD                                                !00096A09
* DEPENDENCIES:  Re-DDL.  All modules that source in the UAF must      !00096A0A
*                be recompiled.  Refer to the Release 5.0 Installation !00096A0B
*                Documentation for further details.                    !00096A0C
* REFERENCE: Self Service Banking Check External Specification         !00096A0D
*            Update memo AE06BU02                                      !00096A0E
                                                                       !00096A0F
                                                                       !00096B03
*********************************************************************  !00096B04
*                  RELEASE 5.1                                      *  !00096B05
*********************************************************************  !00096B06
*                                                                      !00096B07
* 95JUN01    JMS/583                                                   !00096B08
* SYMPTOM:   BASE24-BASE RELEASE 5.1 ENHANCEMENTS                      !00096B09
* PROBLEM:   (E) NONE.                                                 !00096B0A
* FIX:       Removed AFS, EFTPOS, and Cash Manager products.           !00096B0B
* IMPLEMENT: Remove reference to these products in all modules.        !00096B0C
*            Re-compile DDL's. Apply related fix to the UAF requestor  !00096B0D
*            and server and recompile.  All modules that source in the !00096B0E
*            UAF must be recompiled.                                   !00096B0F
* REFERENCE: 950201-001                                                !00096B0G
*                                                                      !00096B0H
*********************************************************************  !00096B0I
                                                                       !00096C00
* 01OCT1997   CKC/163                                                  !00096C01
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00096C02
* Problem:    None.                                                    !00096C03
* Fix:        Added Non-Currency Dispense segment.                     !00096C04
* Dependency: Apply fix and remake.                                    !00096C05
* Reference:  WO #960311-05.                                           !00096C06
                                                                       !00096D00
                                                                       !00096D01
* 18FEB1998   CLR/451                                                  !00096D02
* Symptom:    Bridge PI Table Phase 1 Enhancement.  The PI Table       !00096D03
*             reached its limit of 32 product entries.  The            !00096D04
*             maximum entries will be expanded to 96.                  !00096D05
* Problem:    None.                                                    !00096D06
* Fix:        Added UAF-CONSTANTS section with constants               !00096D07
*             to represent the version and supported segments in       !00096D08
*             a record.                                                !00096D09
* Dependency: Apply fix and reMAKE.                                    !00096D0A
* Reference:  Work Order #971118-2.                                    !00096D0B
                                                                       !00096D0C
                                                                       !00096E00
*********************************************************************  !00096E01
*                  RELEASE 6.0                                      *  !00096E02
*********************************************************************  !00096E03
* 30NOV2000   CLR/451                                                  !00096E04
* Symptom:    Release 6.0 Enhancements                                 !00096E05
* Problem:    None.                                                    !00096E06
* Fix:        Removed version literals and constants.                  !00096E07
* Dependency: Restore Release 6.0 files, modify the appropriate        !00096E08
*             CUSTMACS flags, and run MAKE.                            !00096E09
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00096E0A
*                                                                      !00096E0B
                                                                       !00096E0C
                                                                       !00096F00
* 06FEB2003   ME/27                                                    !00096F01
* Symptom:    POS Enhancements.                                        !00096F02
* Problem:    None.                                                    !00096F03
* Fix:        Added online maintenance segment and enhanced pre-auth   !00096F04
*             segment to UAF. The definition for the enhanced pre-auth !00096F05
*             segment is located in the DDLGDEFS file.                 !00096F06
* Dependency: Apply fix to DDLGDEFS, DDLFUAF and run MAKE.  Refer to   !00096F07
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00096F08
* Reference:  WO #020606-01                                            !00096F09
                                                                       !00096F0A
                                                                       !00096G00
* 06NOV2009   MeyersC                                                  !00096G01
* Symptom:    ATM Bulk Check Infrastructure Support.                   !00096G02
* Problem:    None.                                                    !00096G03
* Fix:        Added comments to the following fields to say for        !00096G04
*             a Bulk Check transaction, each check will count as       !00096G05
*             a usage:                                                 !00096G06
*                 ATMUAF.USED-PRD                                      !00096G07
*                 SSBCUAF.CSF-CHK-USED-PRD                             !00096G08
* Dependency: Apply fix to DDLFUAF and run Make. Refer to              !00096G09
*             BA60UD0D.SCNBCA for a complete listing of dependencies.  !00096G0A
* Reference:  WO #090227-01                                            !00096G0B
                                                                       !00096G0C
                                                                       !00096E0D
                                                                       !00096E0E
                                                                       !00096E0F
*#####################################################################!!00097
*#                     USAGE ACCUMULATION FILE                       #!!00098
*#####################################################################!!00099
                                                                       !00100
*1  3.1.2.20  Usage Accumulation File                                 !!00101
*1  3.1.2.20.1  Identification                                        !!00102
*1                                                                    !!00103
*1      The Usage Accumulation File (UAF) contains one record for     !!00104
*1      every cardholder whose card issuer uses the negative          !!00105
*1      identification method of authorization who has initiated a    !!00106
*1      transaction at an EFT terminal connected to BASE24 during the !!00107
*1      current limit period.                                         !!00108
*1      This file contains usage information (such as withdrawal      !!00109
*1      amounts) for the cardholder, which is accumulated over a      !!00110
*1      limit period.  The record is keyed by card account number and !!00111
*1      member number so that an institution may keep track of every  !!00112
*1      card regardless of the number of cards issued with the same   !!00113
*1      card account number.  This file is purged at the end of the   !!00114
*1      institution's limit period.                                   !!00115
*1                                                                    !!00116
*1  3.1.2.20.2  Security                                              !!00117
*1                                                                    !!00118
*1      The UAF is secured under Tandem's group level security so that!!00119
*1      only authorized network operators may access (or start        !!00120
*1      programs which will access) the file.                         !!00121
*1                                                                    !!00122
*1      USER ID         = <Base24 node name>.*                        !!00123
*1      FILE CODE       = 0                                           !!00124
*1      ACCESS SECURITY = GGGG                                        !!00125
*1                                                                    !!00126
*1  3.1.2.20.2  Usage                                                 !!00127
*1                                                                    !!00128
*3       Auth          i/o         RAND (  )    r       shared        !!00129
*3       settlement   purge        SEQ                                !!00130
*3       File maint   input        RAND (  )            shared        !!00131
*1                                                                    !!00132
**********************************************************************!!00133
                                                                       !00134
?comments
*                                                                     !!00137
*              The Usage Accumulation File (UAF) is used with the     !!00138
*              Negative Authorization with Usage Accumulation method  !!00139
*              and contains one record for each cardholder who has had!!00140
*              a transaction authorized by BASE24 during the current  !!00141
*              usage accumulation period.                             !!00142
*                                                                     !!00143
*              The UAF contains information such as withdrawal        !!00144
*              totals, bad PIN tries, and key-entry activity for the  !!00145
*              current usage accumulation period.  This information   !!00146
*              allows BASE24 to determine when a cardholder has       !!00147
*              reached the institution's usage limits for a given     !!00148
*              period.  In a multi-FIID environment, separate UAFs    !!00149
*              are needed if each FIID uses a different withdrawal    !!00150
*              period.                                                !!00151
*                                                                     !!00152
*              The key to the UAF is the primary account number and   !!00153
*              member number.                                         !!00154
*                                                                     !!00155
*              LCONF ASSIGN:       There is no assign for the UAF.    !!00156
*                                  The name of the UAF is retrieved   !!00157
*                                  from the Institution Definition    !!00158
*                                  File (IDF).                        !!00159
*                                                                     !!00160
*              The UAF includes a base segment and product-specific   !!00161
*              segments, and each segment is discussed separately.    !!00162
*              The following fields make up the Base segment of the   !!00163
*              UAF.                                                   !!00164
DEFINITION UAFBASE.                                                    !00165
                                                                       !00166
                                                                       !00167
*                                                                     !!00168
  02 BASE-SEG                   TYPE *.                                !00169
                                                                       !00170
                                                                       !00171
                                                                       !00172
*                                                                     !!00173
*             The values in the following fields make up the primary  !!00174
*             key of the UAF.                                         !!00175
*                                                                     !!00176
  02 PRIKEY.                                                           !00177
                                                                       !00178
                                                                       !00179
                                                                       !00180
                                                                       !00181
*                                                                     !!00182
*             The primary account number (PAN) identifying the card   !!00183
*             number carried in Track 2 of the card (left-justified,  !!00184
*             blank-filled).  BASE24 supports a 19-digit maximum      !!00185
*             length PAN.                                             !!00186
*                                                                     !!00187
     04 PAN                     TYPE *.                                !00188
                                                                       !00189
                                                                       !00190
*                                                                     !!00191
*             The member number for this card.  When multiple cards   !!00192
*             are issued with the same card number, the value in this !!00193
*             field distinguishes among the cards.  If an             !!00194
*             institution is not using member numbers, the value in   !!00195
*             this field is 000.                                      !!00196
*                                                                     !!00197
     04 MBR-NUM                 TYPE *.                                !00198
                                                                       !00199
                                                                       !00200
*                                                                     !!00201
*             The number of times the cardholder's Personal           !!00202
*             Identification Number (PIN) has been entered            !!00203
*             incorrectly during the current usage accumulation       !!00204
*             period.                                                 !!00205
*                                                                     !!00206
  02 BAD-PIN-TRIES              TYPE BINARY 16.                        !00207
                                                                       !00208
                                                                       !00209
*                                                                     !!00210
*             The values in the following fields are accumulators for !!00211
*             transactions made during the current usage accumulation !!00212
*             period.                                                 !!00213
*                                                                     !!00214
  02 GRP-PRD.                                                          !00215
                                                                       !00216
                                                                       !00217
*                                                                     !!00218
*             The total amount of purchases and cash withdrawals made !!00219
*             against noncredit accounts.                             !!00220
*                                                                     !!00221
     04 TTL-WDL-PRD               TYPE BINARY 64.                      !00222
                                                                       !00223
                                                                       !00224
*                                                                     !!00225
*             The total amount of purchases and cash withdrawals made !!00226
*             offline against noncredit accounts.                     !!00227
*                                                                     !!00228
*             The value in this field is always used with             !!00229
*             Authorization level 2, and is used with Authorization   !!00230
*             level 3 (online/offline) when the authorizing host is   !!00231
*             unavailable and BASE24 performs stand-in authorization. !!00232
*                                                                     !!00233
*             This amount is included in the balance of the GRP-      !!00234
*             PRD.TTL-WDL-PRD field in this segment.                  !!00235
*                                                                     !!00236
     04 OFFL-WDL-PRD              TYPE BINARY 64.                      !00237
                                                                       !00238
                                                                       !00239
*                                                                     !!00240
*             The total amount of cash advanced against credit        !!00241
*             accounts.                                               !!00242
*                                                                     !!00243
     04 TTL-CCA-PRD               TYPE BINARY 64.                      !00244
                                                                       !00245
                                                                       !00246
*                                                                     !!00247
*             The total amount of cash advanced offline against       !!00248
*             credit accounts.                                        !!00249
*                                                                     !!00250
*             The value in this field is always used with             !!00251
*             Authorization level 2, and is used with Authorization   !!00252
*             level 3 (online/offline) when the authorizing host is   !!00253
*             unavailable and BASE24 performs stand-in authorization. !!00254
*                                                                     !!00255
*             This amount is included in the balance of the GRP-      !!00256
*             PRD.TTL-CCA-PRD field in this segment.                  !!00257
*                                                                     !!00258
     04 OFFL-CCA-PRD              TYPE BINARY 64.                      !00259
                                                                       !00260
                                                                       !00261
*                                                                     !!00262
*             This REDEFINE allows the previous fields to be accessed !!00263
*             by index.                                               !!00264
*                                                                     !!00265
  02 WDL-PRD                      REDEFINES GRP-PRD OCCURS 4 TIMES     !00266
                                  TYPE BINARY 64.                      !00267
                                                                       !00268
                                                                       !00269
                                                                       !00270
                                                                       !00271
                                                                       !00272
                                                                       !00273
*                                                                     !!00274
*             The FIID of the financial institution that issued the   !!00275
*             card.                                                   !!00276
*                                                                     !!00277
  02 FIID                       TYPE *.                                !00278
                                                                       !00279
                                                                       !00280
*                                                                     !!00281
*             A computed value made up of the terminal ID and         !!00282
*             transaction type from the internal message.  The value  !!00283
*             in the TRAN-IND field is used to keep track of the last !!00284
*             approved transaction that caused an update to this      !!00285
*             record.                                                 !!00286
*                                                                     !!00287
  02 TRAN-IND                   PIC X(16).                             !00288
                                                                       !00289
                                                                       !00290
*                                                                     !!00291
*             The transaction sequence number from the internal       !!00292
*             message that was last used to update this record.  The  !!00293
*             value in the TRAN-SEQ-NUM field is used to keep track   !!00294
*             of the last approved transaction that caused an update  !!00295
*             to the record.                                          !!00296
*                                                                     !!00297
  02 TRAN-SEQ-NUM               PIC X(12).                             !00298
                                                                       !00299
                                                                       !00300
*                                                                     !!00301
*             Identifies the last file maintenance action on this     !!00302
*             record.  The value in this field includes the user who  !!00303
*             did the update, the time at which it was done, and the  !!00304
*             type of update.                                         !!00305
*                                                                     !!00306
  02 LAST-FM                    TYPE *.                                !00307
                                                                       !00308
                                                                       !00309
*                                                                     !!00310
*             Identifies the last transaction to update this record.  !!00311
*             The value in this field insures against multiple or     !!00312
*             incomplete updates due to process failure and restart   !!00313
*             and occurs in every record that is updated by the       !!00314
*             online system.                                          !!00315
*                                                                     !!00316
  02 LAST-TRAN                  TYPE *.                                !00317
                                                                       !00318
END                                                                    !00319
                                                                       !00320
?page "ATM UAF Segment"
?section ATMUAF
*             The following fields make up the ATM segment of the     !!00325
*             Usage Accumulation File (UAF).                          !!00326
                                                                       !00327
 DEFINITION ATMUAF.                                                    !00328
                                                                       !00329
                                                                       !00330
*                                                                     !!00331
 02 SEG-LGTH                    TYPE *.                                !00332
                                                                       !00333
                                                                       !00334
                                                                       !00335
*                                                                     !!00336
*             The number of times the card has been used to make cash !!00337
*             disbursements via BASE24-atm during the current usage   !!00338
*             accumulation period.                                    !!00339
                                                                       !00339G00
*             For a Bulk Check transaction, each check will count      !00339G01
*             as a usage.                                              !00339G02
                                                                       !00339G03
*                                                                     !!00340
 02 USED-PRD                      TYPE BINARY 16.                      !00341
                                                                       !00342
                                                                       !00343
                                                                       !00344
*                                                                     !!00345
*             The values in the following fields are accumulators for !!00346
*             transactions made via BASE24-atm during the current     !!00347
*             usage accumulation period.                              !!00348
*                                                                     !!00349
 02 GRP-PRD.                                                           !00350
                                                                       !00351
                                                                       !00352
*                                                                     !!00353
*             The total amount of cash withdrawals made against       !!00354
*             noncredit accounts via BASE24-atm.                      !!00355
*                                                                     !!00356
*             This amount is included in the balance of the GRP-      !!00357
*             PRD.TTL-WDL-PRD field in the Base segment of the UAF.   !!00358
*                                                                     !!00359
    04 TTL-WDL-PRD                TYPE BINARY 64.                      !00360
                                                                       !00361
                                                                       !00362
*                                                                     !!00363
*             The total amount of cash withdrawals made offline       !!00364
*             against noncredit accounts via BASE24-atm.              !!00365
*                                                                     !!00366
*             The value in this field is always used with             !!00367
*             Authorization level 2, and is used with Authorization   !!00368
*             level 3 (online/offline) when the authorizing host is   !!00369
*             unavailable and BASE24 performs stand-in authorization. !!00370
*                                                                     !!00371
*             This amount is included in the balance of each of the   !!00372
*             following fields:                                       !!00373
*                                                                     !!00374
*             GRP-PRD.TTL-WDL-PRD in this segment                     !!00375
*             GRP-PRD.OFFL-WDL-PRD in the Base segment of the UAF     !!00376
*             GRP-PRD.TTL-WDL-PRD in the Base segment of the UAF      !!00377
*                                                                     !!00378
    04 OFFL-WDL-PRD               TYPE BINARY 64.                      !00379
                                                                       !00380
                                                                       !00381
*                                                                     !!00382
*             The total amount of cash advanced against credit        !!00383
*             accounts via BASE24-atm.                                !!00384
*                                                                     !!00385
*             This amount is included in the balance of the GRP-      !!00386
*             PRD.TTL-CCA-PRD field in the Base segment of the UAF.   !!00387
*                                                                     !!00388
    04 TTL-CCA-PRD                TYPE BINARY 64.                      !00389
                                                                       !00390
                                                                       !00391
*                                                                     !!00392
*             The amount of cash advanced offline against credit      !!00393
*             accounts via BASE24-atm.                                !!00394
*                                                                     !!00395
*             The value in this field is always used with             !!00396
*             Authorization level 2, and is used with Authorization   !!00397
*             level 3 (online/offline) when the authorizing host is   !!00398
*             unavailable and BASE24 performs stand-in authorization. !!00399
*                                                                     !!00400
*             This amount is included in the balance of each of the   !!00401
*             following fields:                                       !!00402
*                                                                     !!00403
*             GRP-PRD.TTL-CCA-PRD in this segment                     !!00404
*             GRP-PRD.OFFL-CCA-PRD in the Base segment of the UAF     !!00405
*             GRP-PRD.TTL-CCA-PRD in the Base segment of the UAF      !!00406
*                                                                     !!00407
    04 OFFL-CCA-PRD               TYPE BINARY 64.                      !00408
                                                                       !00409
                                                                       !00410
*                                                                     !!00411
*             This REDEFINE allows the previous fields to be accessed !!00412
*             by index.                                               !!00413
*                                                                     !!00414
 02 WDL-PRD                       REDEFINES GRP-PRD OCCURS 4 TIMES     !00415
                                  TYPE BINARY 64.                      !00416
                                                                       !00417
END                                                                    !00418
                                                                       !00419
                                                                       !00420
                                                                       !00421
?page "POS UAF Segment"
?section POSUAF
*             The following fields make up the POS segment of the     !!00426
*             Usage Accumulation File (UAF).                          !!00427
                                                                       !00428
 DEFINITION POSUAF.                                                    !00429
                                                                       !00430
                                                                       !00431
*                                                                     !!00432
 02 SEG-LGTH                     TYPE *.                               !00433
                                                                       !00434
                                                                       !00435
                                                                       !00436
                                                                       !00437
                                                                       !00438
*                                                                     !!00439
*             The values in the following fields are accumulators for !!00440
*             transactions made via BASE24-pos during the current     !!00441
*             usage accumulation period.                              !!00442
*                                                                     !!00443
 02 GRP-PRD.                                                           !00444
                                                                       !00445
                                                                       !00446
*                                                                     !!00447
*             The total amount of purchases made against credit       !!00448
*             accounts via BASE24-pos.                                !!00449
*                                                                     !!00450
*             This amount is not included in any UAF Base segment     !!00451
*             accumulation fields.                                    !!00452
*                                                                     !!00453
    04 TTL-PUR-PRD                  TYPE BINARY 64.                    !00454
                                                                       !00455
                                                                       !00456
*                                                                     !!00457
*             The total amount of purchases made offline against      !!00458
*             credit accounts via BASE24-pos.                         !!00459
*                                                                     !!00460
*             The value in this field is always used with             !!00461
*             Authorization level 2, and is used with Authorization   !!00462
*             level 3 (online/offline) when the authorizing host is   !!00463
*             unavailable and BASE24 performs stand-in authorization. !!00464
*                                                                     !!00465
*             This amount is included in the balance of the GRP-      !!00466
*             PRD.TTL-PUR-PRD field in this segment, but is not       !!00467
*             included in any UAF Base segment accumulation fields.   !!00468
*                                                                     !!00469
    04 OFFL-PUR-PRD                 TYPE BINARY 64.                    !00470
                                                                       !00471
                                                                       !00472
*                                                                     !!00473
*             The total amount of cash advanced against credit        !!00474
*             accounts via BASE24-pos.                                !!00475
*                                                                     !!00476
*             This amount is included in the balance of the GRP-      !!00477
*             PRD.TTL-CCA-PRD field in the Base segment of the UAF.   !!00478
*                                                                     !!00479
    04 TTL-CCA-PRD                  TYPE BINARY 64.                    !00480
                                                                       !00481
                                                                       !00482
*                                                                     !!00483
*             The total amount of cash advanced offline against       !!00484
*             credit accounts via BASE24-pos.                         !!00485
*                                                                     !!00486
*             The value in this field is always used with             !!00487
*             Authorization level 2, and is used with Authorization   !!00488
*             level 3 (online/offline) when the authorizing host is   !!00489
*             unavailable and BASE24 performs stand-in authorization. !!00490
*                                                                     !!00491
*             This amount is included in the balance of each of the   !!00492
*             following fields:                                       !!00493
*                                                                     !!00494
*             GRP-PRD.TTL-CCA-PRD in this segment                     !!00495
*             GRP-PRD.OFFL-CCA-PRD in the Base segment of the UAF     !!00496
*             GRP-PRD.TTL-CCA-PRD in the Base segment of the UAF      !!00497
*                                                                     !!00498
    04 OFFL-CCA-PRD                 TYPE BINARY 64.                    !00499
                                                                       !00500
                                                                       !00501
*                                                                     !!00502
*             The total amount of purchases and cash withdrawals made !!00503
*             against noncredit accounts via BASE24-pos.              !!00504
*                                                                     !!00505
*             This amount is included in the balance of the GRP-      !!00506
*             PRD.TTL-WDL-PRD field in the Base segment of the UAF.   !!00507
*                                                                     !!00508
    04 TTL-WDL-PRD                  TYPE BINARY 64.                    !00509
                                                                       !00510
                                                                       !00511
*                                                                     !!00512
*             The total amount of purchases and cash withdrawals made !!00513
*             offline against noncredit accounts via BASE24-pos.      !!00514
*                                                                     !!00515
*             The value in this field is always used with             !!00516
*             Authorization level 2, and is used with Authorization   !!00517
*             level 3 (online/offline) when the authorizing host is   !!00518
*             unavailable and BASE24 performs stand-in authorization. !!00519
*                                                                     !!00520
*             This amount is included in the balance of each of the   !!00521
*             following fields:                                       !!00522
*                                                                     !!00523
*             GRP-PRD.TTL-WDL-PRD in this segment                     !!00524
*             GRP-PRD.OFFL-WDL-PRD in the Base segment of the UAF     !!00525
*             GRP-PRD.TTL-WDL-PRD in the Base segment of the UAF      !!00526
*                                                                     !!00527
    04 OFFL-WDL-PRD                 TYPE BINARY 64.                    !00528
                                                                       !00529
                                                                       !00530
*                                                                     !!00531
*             This REDEFINE allows the previous fields to be accessed !!00532
*             by index.                                               !!00533
*                                                                     !!00534
 02 WDL-PUR-PRD                     REDEFINES GRP-PRD OCCURS 6 TIMES   !00535
                                    TYPE BINARY 64.                    !00536
                                                                       !00537
                                                                       !00538
*                                                                     !!00539
*             The number of times this card has been used via BASE24- !!00540
*             pos during the current usage accumulation period.       !!00541
*                                                                     !!00542
 02 USED-PRD                     TYPE BINARY 16.                       !00543
                                                                       !00544
                                                                       !00545
*                                                                     !!00546
*             The total amount of refund credits received during the  !!00547
*             current accumulation period.                            !!00548
*                                                                     !!00549
 02 TTL-RFND-CR-PRD              TYPE BINARY 64.                       !00550
                                                                       !00551
                                                                       !00552
*                                                                     !!00553
*             The total amount of refund credits received offline     !!00554
*             during the current usage accumulation period.           !!00555
*                                                                     !!00556
*             The value in this field is always used with             !!00557
*             Authorization level 2, and is used with Authorization   !!00558
*             level 3 (online/offline) when the authorizing host is   !!00559
*             unavailable and BASE24 performs stand-in authorization. !!00560
*                                                                     !!00561
*             This amount is included in the balance of the TTL-RFND- !!00562
*             CR-PRD field in this segment.                           !!00563
*                                                                     !!00564
 02 OFFL-RFND-CR-PRD             TYPE BINARY 64.                       !00565
                                                                       !00566
                                                                       !00567
                                                                       !00568
*                                                                     !!00569
*             The number of refund credits the cardholder has         !!00570
*             received during the current usage accumulation period.  !!00571
*                                                                     !!00572
 02 NUM-RFND-CR-PRD             TYPE BINARY 16.                        !00573
                                                                       !00574
                                                                       !00575
*                                                                     !!00576
*             The transaction code of the last transaction that       !!00577
*             updated this record.  The value in this field is used   !!00578
*             with the value in the LAST-TRAN field in the Base       !!00579
*             segment of the UAF to detect duplicate transactions.    !!00580
*                                                                     !!00581
 02 TRAN-TC                       PIC X(2).                            !00582
                                                                       !00583
END                                                                    !00584
                                                                       !00584B00
?page "SSBCUAF - SSBC UAF Segment"
?section SSBCUAF
                                                                       !00584B05
                                                                       !00585B00
                                                                       !00585B01
                                                                       !00585B02
                                                                       !00652
*             The following fields make up the Self-Service Banking   !!00653
*             Check segment of the Usage Accumulation File (UAF).     !!00654
DEFINITION SSBCUAF.                                                    !00655
*                                                                     !!00656
  02 SEG-LGTH                     TYPE *.                              !00657
                                                                       !00658
                                                                       !00658A00
*                                                                      !00658A01
*             The number of times the card has been used to            !00658A02
*             perform check transactions involving checks defined      !00658A03
*             in the Check Status File during the current usage        !00658A04
*             accumulation period.                                     !00658A05
                                                                       !00658G00
*             For a Bulk Check transaction, each check will count      !00658G01
*             as a usage.                                              !00658G02
                                                                       !00658G03
*                                                                      !00658A06
 02 CSF-CHK-USED-PRD              TYPE BINARY 16.                      !00658A07
                                                                       !00658A08
                                                                       !00658A09
*                                                                     !!00659
*             The following fields are accumulator fields for         !!00660
*             transactions made during the current usage accumulation !!00661
*             period.                                                 !!00662
*                                                                     !!00663
  02 GRP-PRD.                                                          !00664
*                                                                     !!00665
*             The total amount of cash check transactions and the cash!!00666
                                                                       !00667A00
*             back portion of deposit with cash back transactions     !
*             involving checks not defined in the Check Status File.   !00667A03
                                                                       !00667A04
*                                                                     !!00668
     04 TTL-CHK-PRD               TYPE BINARY 64.                      !00669
                                                                       !00670
*                                                                     !!00671
*             The total amount of offline cash check transactions and !!00672
*             cash back portion of offline deposit with cash back     !!00673
                                                                       !00674A00
*             transactions involving checks not defined in the        !
*             Check Status File.                                       !00674A03
                                                                       !00674A04
*                                                                     !!00675
*             The value in this field is always used with             !!00676
*             Authorization level 2 and Authorization level 3         !!00677
*             (online/offline), when the authorizing host is          !!00678
*             unavailable and BASE24 performs stand-in authorization. !!00679
*                                                                     !!00680
*             This amount is included in the balance of the GRP-      !!00681
*             PRD.TTL-CHK-PRD field in this segment.                  !!00682
*                                                                     !!00683
     04 OFFL-CHK-PRD              TYPE BINARY 64.                      !00684
                                                                       !00684A00
                                                                       !00684A01
*                                                                      !00684A02
*             The total amount of cash check transactions and the cash !00684A03
*             back portion of deposit with cash back transactions      !00684A04
*             involving checks defined in the Check Status File.       !00684A05
*                                                                      !00684A06
     04 TTL-CSF-CHK-PRD           TYPE BINARY 64.                      !00684A07
                                                                       !00684A08
*                                                                      !00684A09
*             The total amount of offline cash check transactions and  !00684A0A
*             cash back portion of offline deposit with cash back      !00684A0B
*             transactions involving checks defined in the Check       !00684A0C
*             Status File.                                             !00684A0D
*                                                                      !00684A0E
*             The value in this field is always used with              !00684A0F
*             Authorization level 2 and Authorization level 3          !00684A0G
*             (online/offline), when the authorizing host is           !00684A0H
*             unavailable and BASE24 performs stand-in authorization.  !00684A0I
*                                                                      !00684A0J
*             This amount is included in the balance of the GRP-       !00684A0K
*             PRD.TTL-CSF-CHK-PRD field in this segment.               !00684A0L
*                                                                      !00684A0M
     04 OFFL-CSF-CHK-PRD          TYPE BINARY 64.                      !00684A0N
                                                                       !00684A0O
                                                                       !00685
*                                                                     !!00686
*             This REDEFINE allows the previous fields to be accessed !!00687
*             by index.                                               !!00688
*                                                                     !!00689
                                                                       !00690A00
  02 CHK-PRD                      REDEFINES GRP-PRD OCCURS 4 TIMES     !00690A01
                                                                       !00690A02
                                  TYPE BINARY 64.                      !00691
                                                                       !00692
  END                                                                  !00693
                                                                       !00694
?nocomments
?page "PRE-AUTH HOLD Segment"
                                                                       !00699
                                                                       !00700
********************************************************************* !!00701
*                                                                   * !!00702
*  NOTE TO READER:                                                  * !!00703
*                                                                   * !!00704
*    The segment defining the PREAUTH holds area of the this        * !!00705
*    record can be found in the DDLGDEFS.  Notice that within the   * !!00706
*    the RECORD statement at the end of this file, the PRE-AUTH     * !!00707
*    segment is included by reference:                              * !!00708
*                                                                   * !!00709
*        02 SEG22              TYPE PREAUTH.                        * !!00710
*                                                                   * !!00711
********************************************************************* !!00712
                                                                       !00713
                                                                       !00713C00
?page "NCD UAF Segment"
?section NCDUAF
                                                                       !00713C05
*             The following fields make up the Non-Currency Dispense   !00713C06
*             segment of the Usage Accumulation File (UAF).            !00713C07
                                                                       !00713C08
 DEFINITION NCDUAF.                                                    !00713C09
                                                                       !00713C0A
 02 SEG-LGTH                    TYPE *.                                !00713C0B
                                                                       !00713C0C
*                                                                      !00713C0D
*             The number of times the card has been used for           !00713C0E
*             non-currency dispense transactions during the current    !00713C0F
*             usage accumulation period.                               !00713C0G
*                                                                      !00713C0H
 02 USED-PRD                      TYPE BINARY 16.                      !00713C0I
                                                                       !00713C0J
*                                                                      !00713C0K
*             The values in the following fields are accumulators for  !00713C0L
*             cash value transactions made during the current usage    !00713C0M
*             accumulation period.                                     !00713C0N
*                                                                      !00713C0O
 02 CASH-VAL-PRD.                                                      !00713C0P
                                                                       !00713C0Q
*                                                                      !00713C0R
*             The total amount of cash value transactions made against !00713C0S
*             noncredit accounts.                                      !00713C0T
*                                                                      !00713C0U
*             This amount is included in the balance of the GRP-       !00713C0V
*             PRD.TTL-WDL-PRD field in the Base segment of the UAF.    !00713C0W
*                                                                      !00713C0X
    04 TTL-WDL-PRD                TYPE BINARY 64.                      !00713C0Y
                                                                       !00713C0Z
*                                                                      !00713C10
*             The total amount of cash value transactions made offline !00713C11
*             against noncredit accounts.                              !00713C12
*                                                                      !00713C13
*             The value in this field is always used with              !00713C14
*             Authorization level 2, and is used with Authorization    !00713C15
*             level 3 (online/offline) when the authorizing host is    !00713C16
*             unavailable and BASE24 performs stand-in authorization.  !00713C17
*                                                                      !00713C18
*             This amount is included in the balance of each of the    !00713C19
*             following fields:                                        !00713C1A
*                                                                      !00713C1B
*             CASH-VAL-PRD.TTL-WDL-PRD in this segment                 !00713C1C
*             GRP-PRD.OFFL-WDL-PRD in the Base segment of the UAF      !00713C1D
*             GRP-PRD.TTL-WDL-PRD in the Base segment of the UAF       !00713C1E
*                                                                      !00713C1F
    04 OFFL-WDL-PRD               TYPE BINARY 64.                      !00713C1G
                                                                       !00713C1H
*                                                                      !00713C1I
*             The total amount of cash value transactions made against !00713C1J
*             credit accounts.                                         !00713C1K
*                                                                      !00713C1L
*             This amount is included in the balance of the GRP-       !00713C1M
*             PRD.TTL-CCA-PRD field in the Base segment of the UAF.    !00713C1N
*                                                                      !00713C1O
    04 TTL-CCA-PRD                TYPE BINARY 64.                      !00713C1P
                                                                       !00713C1Q
*                                                                      !00713C1R
*             The amount of cash value transactions made offline       !00713C1S
*             against credit accounts.                                 !00713C1T
*                                                                      !00713C1U
*             The value in this field is always used with              !00713C1V
*             Authorization level 2, and is used with Authorization    !00713C1W
*             level 3 (online/offline) when the authorizing host is    !00713C1X
*             unavailable and BASE24 performs stand-in authorization.  !00713C1Y
*                                                                      !00713C1Z
*             This amount is included in the balance of each of the    !00713C20
*             following fields:                                        !00713C21
*                                                                      !00713C22
*             CASH-VAL-PRD.TTL-CCA-PRD in this segment                 !00713C23
*             GRP-PRD.OFFL-CCA-PRD in the Base segment of the UAF      !00713C24
*             GRP-PRD.TTL-CCA-PRD in the Base segment of the UAF       !00713C25
*                                                                      !00713C26
    04 OFFL-CCA-PRD               TYPE BINARY 64.                      !00713C27
                                                                       !00713C28
*                                                                      !00713C29
*             This REDEFINE allows the previous fields to be accessed  !00713C2A
*             by index.                                                !00713C2B
*                                                                      !00713C2C
 02 CASH-VAL-WDL-PRD              REDEFINES CASH-VAL-PRD OCCURS 4      !00713C2D
                                  TIMES TYPE BINARY 64.                !00713C2E
                                                                       !00713C2F
 02 NCD                           OCCURS 2 TIMES.                      !00713C2G
                                                                       !00713C2H
*             The code of the hopper contents for which the            !00713C2I
*             NCD-PRD fields pertain.                                  !00713C2J
                                                                       !00713C2K
    04 NCD-CDE                    PIC X(2).                            !00713C2L
                                                                       !00713C2M
    04 NCD-PRD.                                                        !00713C2N
                                                                       !00713C2O
*                                                                      !00713C2P
*             The total amount of transactions made against            !00713C2Q
*             non-credit accounts for the item type identified         !00713C2R
*             by the content code (NCD-CDE).                           !00713C2S
*                                                                      !00713C2T
*             This amount is included in the balance of the GRP-       !00713C2U
*             PRD.TTL-WDL-PRD field in the Base segment of the UAF.    !00713C2V
*                                                                      !00713C2W
      06 TTL-WDL-PRD              TYPE BINARY 64.                      !00713C2X
                                                                       !00713C2Y
*                                                                      !00713C2Z
*             The total amount of transactions made offline            !00713C30
*             against non-credit accounts for the item type            !00713C31
*             identified by the content code (NCD-CDE).                !00713C32
*                                                                      !00713C33
*             The amount in this field is always used with             !00713C34
*             Authorization level 2, and is used with Authorization    !00713C35
*             level 3 (online/offline) when the authorizing host is    !00713C36
*             unavailable and BASE24 performs stand-in authorization.  !00713C37
*                                                                      !00713C38
*             This amount is included in the balance of each of the    !00713C39
*             following fields:                                        !00713C3A
*                                                                      !00713C3B
*             o  NCD-PRD.TTL-WDL-PRD in this segment.                  !00713C3C
*             o  GRP-PRD.OFFL-WDL-PRD in the Base segment of the UAF.  !00713C3D
*             o  GRP-PRD.TTL-WDL-PRD in the Base segment of the UAF.   !00713C3E
*                                                                      !00713C3F
      06 OFFL-WDL-PRD             TYPE BINARY 64.                      !00713C3G
                                                                       !00713C3H
*                                                                      !00713C3I
*             The total amount of transactions made against            !00713C3J
*             credit accounts for the item type identified             !00713C3K
*             by the content code (NCD-CDE).                           !00713C3L
*                                                                      !00713C3M
*             This amount is included in the balance of the GRP-       !00713C3N
*             PRD.TTL-CCA-PRD field in the Base segment of the UAF.    !00713C3O
*                                                                      !00713C3P
      06 TTL-CCA-PRD              TYPE BINARY 64.                      !00713C3Q
                                                                       !00713C3R
*                                                                      !00713C3S
*             The total amount of transactions made offline            !00713C3T
*             against credit accounts for the item type                !00713C3U
*             identified by the content code (NCD-CDE).                !00713C3V
*                                                                      !00713C3W
*             The amount in this field is always used with             !00713C3X
*             Authorization level 2, and is used with Authorization    !00713C3Y
*             level 3 (online/offline) when the authorizing host is    !00713C3Z
*             unavailable and BASE24 performs stand-in authorization.  !00713C40
*                                                                      !00713C41
*             This amount is included in the balance of each of the    !00713C42
*             following fields:                                        !00713C43
*                                                                      !00713C44
*             o  NCD-PRD.TTL-CCA-PRD in this segment.                  !00713C45
*             o  GRP-PRD.OFFL-CCA-PRD in the Base segment of the UAF.  !00713C46
*             o  GRP-PRD.TTL-CCA-PRD in the Base segment of the UAF.   !00713C47
*                                                                      !00713C48
      06 OFFL-CCA-PRD             TYPE BINARY 64.                      !00713C49
                                                                       !00713C4A
*                                                                      !00713C4B
*             This REDEFINE allows the previous fields to be accessed  !00713C4C
*             by index.                                                !00713C4D
*                                                                      !00713C4E
    04 NCD-WDL-PRD                REDEFINES NCD-PRD OCCURS 4           !00713C4F
                                  TIMES TYPE BINARY 64.                !00713C4G
                                                                       !00713C4H
END                                                                    !00713C4I
                                                                       !00713F00
                                                                       !00713F01
?page "ENHNC-PRE-AUTH-HOLDS Segment"
                                                                       !00713F04
********************************************************************* !!00713F05
*                                                                   * !!00713F06
*  NOTE TO READER:                                                  * !!00713F07
*                                                                   * !!00713F08
*    The segment defining the ENHANCED PREAUTH holds area of this   * !!00713F09
*    record can be found in the DDLGDEFS.  Notice that within the   * !!00713F0A
*    the RECORD statement at the end of this file, the ENHANCED     * !!00713F0B
*    PRE-AUTH segment is included by reference:                     * !!00713F0C
*                                                                   * !!00713F0D
*        02 SEG25              TYPE ENHNC-PREAUTH                   * !!00713F0E
*                                                                   * !!00713F0F
********************************************************************* !!00713F0G
                                                                       !00713F0H
?section ONL-REC-MAINT
                                                                       !00713F0K
*           The following fields make up the Online Record Maintenance !00713F0L
*           segment of the Usage Accumulation File (UAF).              !00713F0M
                                                                       !00713F0N
 DEFINITION ONL-REC-MAINT.                                             !00713F0O
                                                                       !00713F0P
*                                                                      !00713F0Q
 02 SEG-LGTH                    TYPE *.                                !00713F0R
                                                                       !00713F0S
*                                                                      !00713F0T
*             The date that that the usage accumulation totals on      !00713F0U
*             screen 1 of the UAF were last cleared.                   !00713F0V
*                                                                      !00713F0W
                                                                       !00713F0X
 02 LAST-RESET-DAT              TYPE DAT.                              !00713F0Y
                                                                       !00713F0Z
*                                                                      !00713F0a
*             The date the ATM usage accumulation fields were last     !00713F0b
*             cleared.                                                 !00713F0c
*                                                                      !00713F0d
                                                                       !00713F0e
 02 ATM-LAST-USED-DAT           TYPE DAT.                              !00713F0f
                                                                       !00713F0g
*                                                                      !00713F0h
*             The date the POS usage accumulation fields were last     !00713F0i
*             cleared.                                                 !00713F0j
*                                                                      !00713F0k
                                                                       !00713F0l
 02 POS-LAST-USED-DAT           TYPE DAT.                              !00713F0m
                                                                       !00713F0n
END                                                                    !00713F0o
                                                                       !00713F0p
?page
?section UAF
?nocomments
?nodeflist
                                                                       !00713F0y
                                                                       !00713C4R
                                                                       !00722
?comments
RECORD UAF.         FILE IS "UAF" KEY-SEQUENCED.                       !00725
                                                                       !00726
02 SEG0             TYPE UAFBASE.                                      !00727
02 SEG1             TYPE ATMUAF.                                       !00728
02 SEG2             TYPE POSUAF.                                       !00729
                                                                       !00730B00
                                                                       !00730B01
                                                                       !00730B02
02 SEG18            TYPE SSBCUAF.                                      !00734
02 SEG22            TYPE PREAUTH.                                      !00735
                                                                       !00735C00
02 SEG23            TYPE NCDUAF.                                       !00735C01
                                                                       !00735F00
02 SEG25            TYPE ENHNC-PREAUTH.                                !00735F01
02 SEG26            TYPE ONL-REC-MAINT.                                !00735F02
                                                                       !00735F03
                                                                       !00735C02
                                                                       !00736
KEY 0 IS PRIKEY.                                                       !00737
                                                                       !00738
END                                                                    !00739
                                                                       !00740
?deflist
                                                                       !00740E00
                                                                       !00740E01
                                                                       !00740E02
