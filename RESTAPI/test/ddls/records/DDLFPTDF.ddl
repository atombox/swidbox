**FIX2.23  11/11/03  DDLFPTDF6004 DDL    PS60DDL  PS07086  D                 ***
**FIX2.14  03/22/01  DDLFPTDF6003 DDL    PS60DDL  PS04140  C                 ***
**SEQ0.04  11/01/00  DDLFPTDF6002 DDL    PS60DDL  PS04000  B                 ***
**SYNC.04  12/08/98  DDLFPTDF5302 DDL    PS53DDL  PS04000  B                 ***
**FIX2.03  08/28/98  DDLFPTDF5302 DDL    PS53DDL  PS03000  B                 ***
**FIX2.06  08/21/98  DDLFPTDF5102 DDL    PS51DDL  PS03126  B                 ***
**SYNC.03  08/22/97  DDLFPTDF5101 DDL    PS51DDL  PS03000  A                 ***
**SYNC.02  06/25/96  DDLFPTDF5101 DDL    PS51DDL  PS02000  A                 ***
**FIX2.00  02/23/93  DDLFPTDF5101 DDL    PS51DDL  PS50004  A                 ***
!*SEQ2.00  01/26/93  DDLFPTDF5000 DDL    PS50DDL                               !
                                                                       !00000D00
?page "PTDF - BASE24-pos Terminal Data File"
?section ptdf-history
********************************************************************** !00000D05
*                                                                    * !00000D06
*                             BASE24-pos                             * !00000D07
*                             ----------                             * !00000D08
*                                                                    * !00000D09
*             DDL for the BASE24-pos Terminal Data File              * !00000D0A
*                                                                    * !00000D0B
*                   Proprietary Software Product                     * !00000D0C
*                                                                    * !00000D0D
*                         ACI Worldwide Inc.                         * !00000D0E
*                       330 South 108th Avenue                       * !00000D0F
*                       Omaha, Nebraska  68154                       * !00000D0G
*                           (402) 390-7600                           * !00000D0H
*                                                                    * !00000D0I
*    Copyright by ACI Worldwide Inc. 1993 - 2003                     * !00000D0J
*                                                                    * !00000D0K
*    All Rights Reserved.  No part of this document may be           * !00000D0L
*    reproduced in any manner without the prior written consent of   * !00000D0M
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000D0N
*    confidentiality is strictly maintained.  Use of any copyright   * !00000D0O
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
*                                                                      !00000D0Z
                                                                       !00000D0a
                                                                       !00005D00
                                                                       !00005D01
                                                                       !00005D02
* 1/4/93        Release 5.0 Design Team                               !!00086
* SYMPTOM:      BASE24-pos Release 5.0 Enhancenments                  !!00087
* PROBLEM:      (E) None.                                             !!00088
* FIX:      1.  Increased USER-FLD8 from PIC X(13) to PIC X(59) in    !!00089
*               order to make the record definition the maximum       !!00090
*               length.  USER-FLD8 will be used for 5.0 enhancements. !!00091
*           2.  Added LOG-TOTALS field. Adjusted USER-FLD8.           !!00092
*           3.  Changed the following RTLF fields                     !!00093
*               USE-RTLF   --->  DFLT-CHK-ID                          !!00094
*               RTLF-BUF-S --->  TKN-BUF                              !!00095
*           4.  Modified the comments for DEACTIVATE-FLG to indicate  !!00096
*               the new value P = Pending Deactivate.   In addition,  !!00097
*               the default value is now D = Deactivated.             !!00098
*           5.  Modified the comments for TERM-CUTOVER-TC to indicate !!00099
*               the new value 4 = DH Network forced-cutover.          !!00100
*           6.  Added M-KEY-CHK-VALUE and MAS-KEY-CHK-VALUE.  Adjusted!!00101
*               USER-FLD8.                                            !!00102
*           7.  Added CHK-CNT and CHK-AMT to CLERK-TOTS.              !!00103
*               Adjusted USER-FLD8.                                   !!00104
*           8.  Added WAIT-CONFIRM-FLG.  Adjusted USER-FLD8.          !!00105
*           9.  Replaced SEC-DEV-CLEAR-COM-KEY and                    !!00106
*               SEC-DEV-ENCRYPT-COM-KEY with UKPT-USER-FLD, to        !!00107
*               reserve space for future support of the Unique Key    !!00108
*               Per Transaction key management scheme.                !!00109
*          10.  Added RTE-GRP.  Adjusted USER-FLD8.                   !!00110
*          11.  Added TERM-SIC-CDE by redefining BRCH-ID and added    !!00111
*               MAIL-PO-SIC-CDE by adjusting USER-FLD8.               !!00112
*          12.  Added PRE-NET-DC struct.  Adjusted TKN-BUF.           !!00113
*          13.  Deleted USER-FLD1A and increased USER-FLD8 by 16      !!00114
*               bytes.                                                !!00115
*          14.  Replaced USER-FLD2A with KEY-LGTH.  This field        !!00116
*               will be supported in a future release for Double      !!00117
*               Length Security Keys.                                 !!00118
*          15.  Added a 5 byte city extension field - CITY-EXT.       !!00119
*          16.  Added COMPLETE-TRACK2-DATA.  Adjusted USER-FLD8.      !!00120
* DEPENDENCIES: Recompile DDLs and all modules that source in the     !!00121
*               PTDF.  Refer to the Release 5.0 Installation          !!00122
*               Documentation for further details.                    !!00123
* REFERENCES:   BASE24-pos Release 5.0 External Specfications         !!00124
*               - POS Cutover                                         !!00125
*               - Check Guarantee/Verification                        !!00126
*               - Duplicate Administrative Transactions               !!00127
*               - POS General Enhancements                            !!00128
*               - AMEX Draft Capture                                  !!00129
*               BASE24-base Release 5.0 External Specifications       !!00130
*               - Message Tokenization                                !!00131
*               BASE24 Release 5.0 Security External Specifications   !!00132
*               - Translate and Validate Security Keys                !!00133
*               - Unique Key Per Transaction                          !!00134
*               - Double Length Security Keys                         !!00135
*               - Autorization Security Enhancements                  !!00136
                                                                       !00136A00
********************************************************************** !00136A01
* Feb 22, 1993  Julie Samson                                           !00136A02
* SYMPTOM:      None.                                                  !00136A03
* PROBLEM:      MAC-VAL-TERM field is no longer used.                  !00136A04
* FIX:          Redefined MAC-VAL-TERM as USER-FLD5.                   !00136A05
* DEPENDENCIES: Apply fix to PTDF requester/server and recompile.      !00136A06
* REFERENCE:    Hardware MAC Support External Spec Update              !00136A07
                                                                       !00136A08
                                                                       !00136B00
* 10JUL1998   BRR/445.                                               !!!00136B01
* Sypmtom:    Pre-Auth for a Lesser Amount Enhancement.              !!!00136B02
* Problem:    None.                                                  !!!00136B03
* Fix:        Added support for pre-auths for a lesser amount.       !!!00136B04
*             Changed the comment section for ALLOWED-TRANS to make  !!!00136B05
*             #25 used for pre-auths.                                !!!00136B06
* Dependency: Apply fix to PTDF requester/server and Re-Make.        !!!00136B07
* Reference:  RPE #950622-01                                         !!!00136B08
                                                                       !00136B09
!                                                                    |!!00137
                                                                       !00137C00
*********************************************************************  !00137C01
*             Release 6.0                                           *  !00137C02
*********************************************************************  !00137C03
* 30MAR2001   ljc/202                                                  !00137C04
* Symptom:    Release 6.0 Enhancements.                                !00137C05
* Problem:    None.                                                    !00137C06
* Fix:        Added the following new field for EMV:                   !00137C07
*                 EMV-TERM-CAP                                         !00137C08
*             Added the following new field for DUK/PT:                !00137C09
*                 KEYD-GRP                                             !00137C0A
*             Added the following new fields for MC:                   !00137C0B
*                 MULT-CRNCY-TTL                                       !00137C0C
*                 PRE-COMM-FLR-LMT                                     !00137C0D
*                 POST-COMM-FLR-LMT                                    !00137C0E
*                 PRE-COMM-LMT-FLG                                     !00137C0F
*                 POST-COMM-LMT-FLG                                    !00137C0G
*             Added the following new fields for Italian Product:      !00137C0H
*                 SFTWR-REL                                            !00137C0I
*                 STAT-RSN-CDE                                         !00137C0J
*             Updated comments on CRNCY-CDE field.                     !00137C0K
*             UKPT-USER-FLD was redefined with four bytes being        !00137C0L
*             used for the KEYD-GRP and the remainder being            !00137C0M
*             USER-FLD.                                                !00137C0N
*             STAT-RSN-CDE replaced USER-FLD2.                         !00137C0O
*             MULT-CRNCY-TTL replaced USER-FLD10.                      !00137C0P
*             EMV-TERM-CAP replaced USER-FLD1.                         !00137C0Q
*             The remaining fields identified above are                !00137C0R
*             defined in USER-FLD8, and the size of USER-FLD8          !00137C0S
*             was adjusted accordingly.                                !00137C0T
* Dependency: Restore Release 6.0 files, modify the appropriate        !00137C0U
*             CUSTMACS flags, and run MAKE.                            !00137C0V
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00137C0W
*             WO #990405-01 (Multicurrency 5.3/6.0 Uplift)             !00137C0X
*             WO #010308-01 (Italian Product)                          !00137C0Y
*             WO #000101-1  (General Release 6.0)                      !00137C0Z
                                                                       !00137D00
* 15OCT2003   sjt/272                                                  !00137D01
* Symptom:    Dual Site Processing                                     !00137D02
* Problem:    None.                                                    !00137D03
* Fix:        Add the DUAL-SITE-IND field for dual site processing.    !00137D04
*             USER-FLD8 reduced accordingly.                           !00137D05
* Dependency: Apply fix to DDLFPTDF and run MAKE. Refer to             !00137D06
*             BA60UD07.SCNDUALS for a complete listing of              !00137D07
*             dependencies.                                            !00137D08
* Reference:  WO #030930-01                                            !00137D09
                                                                       !00137D0A
*********************************************************************  !00137C10
                                                                       !00137C11
!---------------------------------------------------------------------!!00138
                                                                       !00139
*#####################################################################!!00140
*#                POS TERMINAL DATA FILE                             #!!00141
*#####################################################################!!00142
*1  4.1.n  Pos Terminal Data File                                     !!00143
*1  4.1.n.1  Identification                                           !!00144
*1                                                                    !!00145
*1      The Pos Terminal Data File (PTDF) contains one record for     !!00146
*1      every POS type terminal controlled by the Base24 network.  This
*1      record is used to define the characteristics of the terminal, !!00149
*1      including POS attributes, counts and amounts, and current     !!00150
*1      transaction data.                                             !!00151
*1                                                                    !!00152
*1  4.1.n.2  Security                                                 !!00153
*2                                                                    !!00154
*2      The PTDF is secured under Tandem's group level security so    !!00155
*2      that only authorized network operators may access (or start   !!00156
*2      programs which will access) the file.                         !!00157
*2                                                                    !!00158
*2      USER ID         = <Base24 node name>.*                        !!00159
*2      FILE CODE       = 0                                           !!00160
*2      ACCESS SECURITY = GGGG                                        !!00161
*2                                                                    !!00162
*2  4.1.n.3  Usage                                                    !!00163
*3                                                                    !!00164
*3       Dev hand      i/o         RAND (  )    r       shared        !!00165
*3       Settlement    i/o         RAND (OW)    r       shared        !!00166
*3       File maint    i/o         RAND (TM)    r       shared        !!00167
*3       Operations    input       RAND (TM)    r       shared        !!00168
*3                                                                    !!00169
?comments
DEFINITION PTDFDEF.                                                    !00172
*                                                                     !!00173
*             A unique identifier, terminal ID, for the terminal,     !!00174
*             which is used to access the appropriate PTDF record.    !!00175
*             This field contains the network symbolic station name.  !!00176
*                                                                     !!00177
02 TERM-ID                     PIC X(16).                              !00178
                                                                       !00179
                                                                       !00180
*                                                                     !!00181
*             The release number indicating the current version of    !!00182
*             the message format used between the device and the      !!00183
*             device handler.  The value in this field ensures that   !!00184
*             the appropriate formats are being used.                 !!00185
*                                                                     !!00186
02 REL-NUM                     PIC 99.                                 !00187
                                                                       !00188
                                                                       !00189
*                                                                     !!00190
*             The institution's route and transit number,             !!00191
*             transit/routing number, or issuer identification number !!00192
*             of the terminal owner.  The identification data is      !!00193
*             right-justified with high-order zero fill.              !!00194
*                                                                     !!00195
  02 RTTN                      TYPE ID-NUM.                            !00196
                                                                       !00197
                                                                       !00198
*                                                                     !!00199
*             The symbolic name of the Device Handler process that    !!00200
*             handles the terminal.  This name must match the name    !!00201
*             given the Device Handler process in the Network         !!00202
*             Environment File (NEF).  Because each Device Handler    !!00203
*             process is bound together with the Router and           !!00204
*             Authorization processes, this field contains the name   !!00205
*             of the combined Device Handler/Router/ Authorization    !!00206
*             process.  For example, the entry in this field for a    !!00207
*             VISA I Device Handler (bound with Router and            !!00208
*             Authorization) might be P1A^V1DRA.                      !!00209
*                                                                     !!00210
  02 DH-PRO-NAM                PIC X(16).                              !00211
                                                                       !00212
                                                                       !00212C00
  02 EMV-TERM-CAP              TYPE *.                                 !00212C01
                                                                       !00212C02
                                                                       !00213C00
                                                                       !00213C01
                                                                       !00213C02
                                                                       !00218
                                                                       !00219
*                                                                     !!00220
*             The name of the load image file for this terminal (if   !!00221
*             used).  This name must be a fully-qualified Tandem file !!00222
*             name.  This field is currently not used.                !!00223
*                                                                     !!00224
  02 LOAD-FIL-NAM              PIC X(35).                              !00225
                                                                       !00226
                                                                       !00227
*                                                                     !!00228
*             The log routing code used to identify all messages      !!00229
*             logged specifically on behalf of the terminal.          !!00230
*                                                                     !!00231
  02 LOG-RT-CDE                TYPE BINARY 16.                         !00232
                                                                       !00233
                                                                       !00234
*                                                                     !!00235
*             The terminal name/description for printing on receipts  !!00236
*             and to comply with Regulation E requirements.           !!00237
*                                                                     !!00238
  02 TERM-NAM-LOC              PIC X(25).                              !00239
                                                                       !00240
                                                                       !00241
*                                                                     !!00242
*             The following two fields contain the city and state in  !!00243
*             which the terminal is located for printing on receipts  !!00244
*             and to comply with Regulation E requirements.           !!00245
*                                                                     !!00246
  02 TERM-CITY-ST.                                                     !00247
*                                                                     !!00248
*             The city in which the terminal is located for printing  !!00249
*             receipts.                                               !!00250
*                                                                     !!00251
     04 CITY                   PIC X(13).                              !00252
*                                                                     !!00253
*             The state in which the terminal is located for printing !!00254
*             receipts.                                               !!00255
*                                                                     !!00256
     04 ST                     PIC X(3).                               !00257
                                                                       !00258
                                                                       !00259
*                                                                     !!00260
*             The country in which the terminal is located.           !!00261
*                                                                     !!00262
  02 CNTRY-CDE                 PIC X(2).                               !00263
                                                                       !00264
                                                                       !00265
*                                                                     !!00266
*             The values in the following fields identify the         !!00267
*             terminal owner.                                         !!00268
*                                                                     !!00269
  02 TERM-OWNER.                                                       !00270
                                                                       !00271
*                                                                     !!00272
*             The logical network of the institution owning the       !!00273
*             terminal.                                               !!00274
*                                                                     !!00275
     04 LN                    TYPE *.                                  !00276
                                                                       !00277
                                                                       !00278
*                                                                     !!00279
*             The FIID, as defined in the IDF, for the terminal       !!00280
*             owner's retailer sponsor.  The FIID is the key to the   !!00281
*             IDF.                                                    !!00282
*                                                                     !!00283
     04 FIID                  TYPE *.                                  !00284
                                                                       !00285
                                                                       !00286
*                                                                     !!00287
*             An identifier for the retailer group of which the       !!00288
*             terminal is a part.  This field is provided for         !!00289
*             retailers who choose to group their terminals for       !!00290
*             reporting purposes.  Use of this field is optional.     !!00291
*             When used, this value must match the value of the       !!00292
*             RKEY.GRP field in the POS Retailer Definition File      !!00293
*             (PRDF) records for the retailers in this group.         !!00294
*                                                                     !!00295
     04 RETAILER-GRP          PIC X(4).                                !00296
                                                                       !00297
                                                                       !00298
*                                                                     !!00299
*             An identifier for the retailer region of which the      !!00300
*             terminal is a part.  This field is provided for         !!00301
*             retailers who choose to group their terminals by region !!00302
*             for reporting purposes.  Use of this field is optional. !!00303
*             When used, this value must match the value of the       !!00304
*             RKEY.REGN field in the PRDF records for retailers in    !!00305
*             this region.                                            !!00306
*                                                                     !!00307
     04 RETAILER-REGN         TYPE REGN.                               !00308
                                                                       !00309
                                                                       !00310
*                                                                     !!00311
*             The retailer ID, as defined in the PRDF, of the         !!00312
*             retailer that owns the terminal.                        !!00313
*                                                                     !!00314
     04 RETAILER-ID           PIC X(19).                               !00315
                                                                       !00316
                                                                       !00317
*                                                                     !!00318
*             The name of the retailer that owns the terminal.        !!00319
*                                                                     !!00320
  02 TERM-OWNER-NAM            PIC X(22).                              !00321
                                                                       !00322
                                                                       !00323
*                                                                     !!00324
*             The value in this field identifies the group of which   !!00325
*             the terminal is a member.  Terminal groups are          !!00326
*             generally used for DCT functions, such as down-line     !!00327
*             loading and stopping and starting processes.  The value !!00328
*             in this field is also an index into the ACI Standard    !!00329
*             Device Handler Configuration File (ACNF).               !!00330
*                                                                     !!00331
  02 TERM-GRP                  PIC X(4).                               !00332
                                                                       !00333
                                                                       !00334
*                                                                     !!00335
*             The Standard Industrial Classification (SIC) code       !!00336
*             for all transactions other than mail/phone order        !!00337
*             transactions.                                           !!00338
*                                                                     !!00339
  02 TERM-SIC-CDE              PIC 9(4).                               !00340
                                                                       !00341
                                                                       !00342
*                                                                     !!00343
*             The type of terminal defined in the record.  Valid      !!00344
*             values are:                                             !!00345
*                                                                     !!00346
*             41 = ACI Standard                                       !!00347
*             43 = NCR 2123/2126                                      !!00348
*             44 = NCR 2127                                           !!00349
*             45 = NCR 7000                                           !!00350
*             70 = VISA I Dial terminal                               !!00351
*             71 = VISA II Dial terminal                              !!00352
*             78 = Merchant Host Interface                            !!00353
*             D0 = Hypercom TDS                                       !!00354
*             D1 = Custom POS device 1                                !!00355
*             D2 = Custom POS device 2                                !!00356
*             D3 = Custom POS device 3                                !!00357
*             D4 = Custom POS device 4                                !!00358
*             D5 = Custom POS device 5                                !!00359
*             D6 = BASE24 SPDH (fuel)                                 !!00360
*             D7 = BASE24 SPDH (electronic cash register)             !!00361
*             D8 = BASE24 SPDH (script dispenser)                     !!00362
*                                                                     !!00363
  02 TERM-TYP                  PIC X(2).                               !00364
                                                                       !00365
                                                                       !00366
*                                                                     !!00367
*             The following fields contain the name, address, and     !!00368
*             telephone number of the service representative to       !!00369
*             contact when problems occur with the terminal.          !!00370
*                                                                     !!00371
  02 SRV-REP.                                                          !00372
*                                                                     !!00373
*             The name of the service representative to contact when  !!00374
*             problems occur with the terminal.                       !!00375
*                                                                     !!00376
     04 NAM                    PIC X(25).                              !00377
*                                                                     !!00378
*             The address of the service representative to contact    !!00379
*             when problems occur with the terminal.                  !!00380
*                                                                     !!00381
     04 ADDR                   PIC X(25).                              !00382
*                                                                     !!00383
*             The city and state of the service representative to     !!00384
*             contact when problems occur with the terminal.          !!00385
*                                                                     !!00386
     04 CITY-ST                PIC X(16).                              !00387
*                                                                     !!00388
*             The country of the service representative to contact    !!00389
*             when problems occur with the terminal.                  !!00390
*                                                                     !!00391
     04 CNTRY                  PIC X(2).                               !00392
*                                                                     !!00393
*             The telephone number of the service representative to   !!00394
*             contact when problems occur with the terminal.          !!00395
*                                                                     !!00396
     04 PHONE                  TYPE PHONE-NUM.                         !00397
                                                                       !00398
                                                                       !00399
                                                                       !00400
*                                                                     !!00401
*             The value in this field specifies the PAD character     !!00402
*             utilized in the formation of the external message's PIN !!00403
*             block if the PIN/PAD PIN block format is used in PIN    !!00404
*             encryption.  Valid values are A through F and 0 through !!00405
*             9.                                                      !!00406
*                                                                     !!00407
  02 PIN-PAD-CHAR              PIC X.                                  !00408
                                                                       !00409
                                                                       !00410
                                                                       !00411
                                                                       !00412
*                                                                     !!00413
*             The values in the following fields relate to the        !!00414
*             encryption and decryption of PIN data.  Several of      !!00415
*             these fields are in support of the Security Device      !!00416
*             Modules.                                                !!00417
*                                                                     !!00418
  02 ENCR-PIN.                                                         !00419
                                                                       !00420
                                                                       !00421
*                                                                     !!00422
*             A code indicating whether the terminal has PIN entry    !!00423
*             capability.  Valid values are:                          !!00424
*                                                                     !!00425
*             0 = No, Terminal does not have PIN entry capability     !!00426
*             1 = Yes, Terminal has PIN entry capability              !!00427
*                                                                     !!00428
     04 PIN-VAL-TERM           PIC X.                                  !00429
                                                                       !00430
                                                                       !00431
*                                                                     !!00432
*             A code indicating the type of PIN encryption used.      !!00433
*             Valid values are:                                       !!00434
*                                                                     !!00435
*             00 = No encryption                                      !!00436
*             01 = DES algorithm (non-security device, PIN/PAD        !!00437
*                  PIN block)                                         !!00438
*             02 = DES algorithm (non-security device, ANSI standard  !!00439
*                  PIN/PAN PIN block, 12 right-most digits excluding  !!00440
*                  the check digit)                                   !!00441
*             03 = DES algorithm (security device, PIN/PAD PIN block) !!00442
*             04 = DES algorithm (security device, ANSI standard      !!00443
*                  PIN/PAN PIN block, 12 right-most digits of the     !!00444
*                  PAN, excluding the check digit)                    !!00445
*             06 = Reversible PIN encryption (used only with the 4B   !!00446
*                  Device Handler)                                    !!00447
*                                                                     !!00448
     04 PIN-ENCRYPT-TYP           PIC XX.                              !00449
                                                                       !00450
                                                                       !00451
*                                                                     !!00452
*             The following keys are used in encrypting data from or  !!00453
*             to the terminal.                                        !!00454
*                                                                     !!00455
     04 ENCR-KEYS.                                                     !00456
*                                                                     !!00457
*             The PIN master key.                                     !!00458
*                                                                     !!00459
*             The value in this field is used by the ASMCOM and RSMCOM!!00460
*             security tools in check digit validation/generation and !!00461
*             security key translation functions.                     !!00462
*                                                                     !!00463
*             This field may contain 16 HEX digits or 32 HEX digits   !!00464
*             compressed to 16 bytes, depending on the KEY-LGTH field.!!00465
*                                                                     !!00466
        06 M-KEY               PIC X(16).                              !00467
*                                                                     !!00468
*             The PIN encryption key used by this terminal.           !!00469
*                                                                     !!00470
*             The value in this field is used by the ASMCOM and RSMCOM!!00471
*             security tools in security key translation functions.   !!00472
*                                                                     !!00473
        06 P-KEY               PIC X(16).                              !00474
                                                                       !00475
                                                                       !00476
                                                                       !00477
*                                                                     !!00478
*             The values in the following fields relate to the        !!00479
*             Message Authentication Code (MAC) associated data       !!00480
*             flowing to and from the terminal, and to the            !!00481
*             verification of MAC data presented by the terminal. The !!00482
*             values in several of these fields are in support of the !!00483
*             Security Device Modules.                                !!00484
*                                                                     !!00485
  02 MAC-DATA.                                                         !00486
                                                                       !00487
                                                                       !00488
                                                                       !00488A00
*                                                                      !00488A01
*             Reserved for future use.                                 !00488A02
                                                                       !00488A03
                                                                       !00489A00
                                                                       !00489A01
                                                                       !00489A02
*                                                                     !!00495
                                                                       !00495A00
     04 USER-FLD5              PIC X.                                  !00495A01
                                                                       !00495A02
                                                                       !00496A00
                                                                       !00496A01
                                                                       !00497
                                                                       !00498
                                                                       !00499
                                                                       !00500
*                                                                     !!00501
*             A code indicating the type of MAC encryption used.      !!00502
*             Valid codes are:                                        !!00503
*                                                                     !!00504
*             00 = No encryptions (default)                           !!00505
*             01 = Software message authentication                    !!00506
*             02 = Proprietary software message authentication        !!00507
*             03 = Security Module message authentication             !!00508
*                                                                     !!00509
     04 MAC-ENCRYPT-TYP           PIC XX.                              !00510
                                                                       !00511
                                                                       !00512
*                                                                     !!00513
*             The following keys are used in encrypting data from or  !!00514
*             to the terminal.                                        !!00515
*                                                                     !!00516
     04 ENCR-KEYS.                                                     !00517
*                                                                     !!00518
*             The MAC master key.                                     !!00519
*                                                                     !!00520
*             The value in this field is used by the ASMCOM and RSMCOM!!00521
*             security tools in check digit validation/generation and !!00522
*             security key translation functions.                     !!00523
*                                                                     !!00524
*             This field may contain 16 HEX digits or 32 HEX digits   !!00525
*             compressed to 16 bytes, depending on the KEY-LGTH field.!!00526
*                                                                     !!00527
        06 MAS-KEY               PIC X(16).                            !00528
*                                                                     !!00529
*             The MAC encryption key used by this terminal.           !!00530
*                                                                     !!00531
*             The value in this field is used by the ASMCOM and RSMCOM!!00532
*             security tools in security key translation functions.   !!00533
*                                                                     !!00534
        06 MAC-KEY               PIC X(16).                            !00535
                                                                       !00536
                                                                       !00537
*                                                                     !!00538
*             Reserved for future support of the Unique Key Per       !!00539
*             Transaction (UKPT) key management scheme.               !!00540
*                                                                     !!00541
  02  UKPT-USER-FLD             PIC X(32).                             !00542
                                                                       !00543C00
  02  UKPT                      REDEFINES UKPT-USER-FLD.               !00543C01
                                                                       !00543C02
                                                                       !00544
                                                                       !00544C00
*                                                                      !00544C01
*             Contains the KEYD Group field which is used to retrieve  !00544C02
*             the KEYD record.                                         !00544C03
*                                                                      !00544C04
      04  KEYD-GRP              PIC X(4).                              !00544C05
      04  USER-FLD              PIC X(28).                             !00544C06
                                                                       !00544C07
*                                                                      !00544C08
*             The Status Reason Code may be used to force the          !00544C09
*             automatic activation/deactivation of the terminal        !00544C0A
*             status. Usage and valid values are regional specific.    !00544C0B
*                                                                      !00544C0C
  02  STAT-RSN-CDE              PIC X(2).                              !00544C0D
                                                                       !00544C0E
                                                                       !00545C00
                                                                       !00545C01
                                                                       !00545C02
                                                                       !00554
*                                                                     !!00555
*             The length of the PIN/MAC Master Key supported by       !!00556
*             this device.  This field will be supported in a         !!00557
*             future release.  Valid values are:                      !!00558
*                                                                     !!00559
*             1 = Single Length PIN/MAC Master Key                    !!00560
*             2 = Double Length PIN/MAC Master Key                    !!00561
*                                                                     !!00562
                                                                       !00563
  02  KEY-LGTH                  PIC X.                                 !00564
                                                                       !00565
*                                                                     !!00566
*             The last transaction sequence number.  If the terminal  !!00567
*             supports the generation of such a number, that is where !!00568
*             this number comes from; otherwise it is generated by    !!00569
*             the terminal's Device Handler.                          !!00570
*                                                                     !!00571
  02 TRAN-SEQ-NUM              TYPE BINARY 64.                         !00572
                                                                       !00573
                                                                       !00574
*                                                                     !!00575
                                                                       !00575C00
*             A code identifying the primary currency of the           !00575C01
*             terminal. This is the currency in which all financial    !00575C02
*             amounts held within this record are currently            !00575C03
*             maintained. (Also known as the Terminal Currency.)       !00575C04
*                                                                      !00575C05
*             The default code is the first entry in the Currency      !00575C06
*             Code Table in COBNAMES.                                  !00575C07
*                                                                      !00575C08
                                                                       !00575C09
                                                                       !00576C00
                                                                       !00576C01
                                                                       !00576C02
*             Valid values are listed in the following booklet:       !!00580
*             Codes for Representation of Currencies and Funds,       !!00581
                                                                       !00582C00
*             ISO 4217-1995.                                          !
                                                                       !00582C03
*                                                                     !!00583
  02 CRNCY-CDE              TYPE *.                                    !00584
                                                                       !00585
*                                                                     !!00586
                                                                       !00586C00
*                                                                      !00586C01
*             The multi-currency totals indicator is used to specify   !00586C02
*             how the terminal totals are to be maintained by a        !00586C03
*             device handler supporting transactions in multiple       !00586C04
*             currencies.                                              !00586C05
*                                                                      !00586C06
*             Totals may either be accumulated regardless of           !00586C07
*             currency, i.e. hash totals only, or be accumulated in    !00586C08
*             the primary currency of the terminal, i.e. currency      !00586C09
*             conversion is required.  Valid values are:               !00586C0A
*                                                                      !00586C0B
*             0  = Hash Totals                                         !00586C0C
*             1  = Primary Currency Totals                             !00586C0D
*                                                                      !00586C0E
                                                                       !00586C0F
                                                                       !00587C00
                                                                       !00587C01
                                                                       !00587C02
                                                                       !00589C00
  02 MULT-CRNCY-TTL         PIC 9.                                     !00589C01
                                                                       !00589C02
                                                                       !00590
                                                                       !00591
*                                                                     !!00592
*             The time difference (plus or minus minutes) between     !!00593
*             this terminal and the Tandem processor location.        !!00594
*                                                                     !!00595
*             This offset is also used by authorization to determine  !!00596
*             if a balancing transaction is within the cutover        !!00597
*             window.                                                 !!00598
*                                                                     !!00599
  02 TIM-OFST                  TYPE BINARY 16.                         !00600
                                                                       !00601
                                                                       !00602
*                                                                     !!00603
*             The time limit to hold preauthorized funds.  This is a  !!00604
*             3-digit entry and is used only with preauthorization    !!00605
*             transactions.  The first digit describes the hold       !!00606
*             increment. Valid values are:                            !!00607
*                                                                     !!00608
*             0 = Minutes (default)                                   !!00609
*             1 = Hours                                               !!00610
*             2 = Days                                                !!00611
*                                                                     !!00612
*             Digits 2 and 3 contain the actual hold time.  Valid     !!00613
*             values are 00-99 with a default value of 00.            !!00614
*                                                                     !!00615
  02 PRE-AUTH-HLD              TYPE BINARY 16.                         !00616
                                                                       !00617
                                                                       !00618
*                                                                     !!00619
*             The default preauthorization hold amount, in whole      !!00620
*             currency units, (e.g., dollars), to be used when no     !!00621
*             amount is entered at the terminal in conjunction with a !!00622
*             preauthorization hold transaction.                      !!00623
*                                                                     !!00624
  02 PRE-AUTH-DFT-AMT          TYPE BINARY 32.                         !00625
                                                                       !00626
*             The default check identification to use when a check    !!00627
*             guarantee/verification message does not contain a       !!00628
*             check identification value.  Valid values are:          !!00629
*                                                                     !!00630
*             01 = Credit card                                        !!00631
*             02 = Drivers license                                    !!00632
*             03 = Checking account number                            !!00633
*             04 = Debit card                                         !!00634
*             05 = Proprietary check cashing card                     !!00635
*             06 = State ID number                                    !!00636
*             07 = Social security number                             !!00637
*             08 = Student ID number                                  !!00638
*             09 = Employee ID                                        !!00639
*             10 = Passport number                                    !!00640
*             11 = MICR data                                          !!00641
*                                                                     !!00642
  02 DFLT-CHK-ID               PIC X(2).                               !00643
                                                                       !00644
                                                                       !00645
*                                                                     !!00646
*             The default transaction code that the Device Handler    !!00647
*             will use if, for any reason, this terminal is unable to !!00648
*             include such a code in a transaction request message to !!00649
*             BASE24-pos.  Valid codes are:                           !!00650
*                                                                     !!00651
*             10 = Normal purchase                                    !!00652
*             13 = Mail/phone order                                   !!00653
*             15 = Cash advance                                       !!00654
*             16 = Card verification                                  !!00655
*             17 = Balance inquiry                                    !!00656
*                                                                     !!00657
  02 DFLT-TC                   PIC 99.                                 !00658
                                                                       !00659
                                                                       !00660
*                                                                     !!00661
*             The length of the approval code that this device can    !!00662
*             handle.  The value from this field is placed in the POS !!00663
*             Standard Internal Message (PSTM) for messages coming    !!00664
*             into BASE24, if this information is not contained       !!00665
*             in the message from the device.  BASE24-pos             !!00666
*             Authorization will generate an approval code for the    !!00667
*             length specified by this field.  Approval codes must    !!00668
*             be at least 2 positions in length but not more than 6   !!00669
*             positions in length.  The default length is 6.          !!00670
*                                                                     !!00671
  02 APPRV-CDE-LGTH           TYPE BINARY 16.                          !00672
                                                                       !00673
                                                                       !00674
*                                                                     !!00675
*             A code indicating the current status of the terminal.   !!00676
*             Valid values are:                                       !!00677
*                                                                     !!00678
*             0 = Activated                                           !!00679
*             1 = Deactivated (default)                               !!00680
*             2 = Pending deactivation                                !!00681
*                                                                     !!00682
  02 DEACTIVATE-FLG            PIC X.                                  !00683
*                                                                     !!00684
*             Reserved for future use.                                !!00685
*                                                                     !!00686
  02 USER-FLD3                 PIC X.                                  !00687
                                                                       !00688
                                                                       !00689
*                                                                     !!00690
*             The total number of cards that should have been         !!00691
*             retained since the last time this terminal was cut over !!00692
*             by an operator or force-cut over by Settlement          !!00693
*             Initiator.  This field has been reserved for future     !!00694
*             use.                                                    !!00695
*                                                                     !!00696
  02 CRDS-RET                  TYPE BINARY 16.                         !00697
                                                                       !00698
                                                                       !00699
*                                                                     !!00700
*             A code indicating the manner in which transactions      !!00701
*             performed at the terminal are reconciled.  Valid values !!00702
*             are:                                                    !!00703
*                                                                     !!00704
*             0 = Paper reconciliation (default)                      !!00705
*             1 = Electronic reconciliation without adjustments       !!00706
*             2 = Electronic reconciliation with adjustments          !!00707
*                                                                     !!00708
*             This field is currently not used.                       !!00709
*                                                                     !!00710
  02 RECONCILE-MODE            PIC X.                                  !00711
*                                                                     !!00712
*             Reserved for future use.                                !!00713
*                                                                     !!00714
  02 USER-FLD4                 PIC X.                                  !00715
                                                                       !00716
*                                                                     !!00717
*                                                                     !!00718
*             The number of services supported by the terminal.       !!00719
*                                                                     !!00720
  02 NUM-SRV                   TYPE BINARY 16.                         !00721
                                                                       !00722
*                                                                     !!00723
*             The card type, default transaction profile, and floor   !!00724
*             limits are specified for each of up to 30 services.     !!00725
*             Transaction counters and amount accumulators are also   !!00726
*             provided for each service.                              !!00727
*                                                                     !!00728
  02 SRV                       OCCURS 30 TIMES.                        !00729
                                                                       !00730
*                                                                     !!00731
*             One- or two-character codes are used to identify card   !!00732
*             types in files throughout BASE24.  The same codes must  !!00733
*             be used for a particular card type in all of the files. !!00734
*             These codes are also used to identify service types in  !!00735
*             BASE24-pos.  Codes used in this field are either        !!00736
*             reserved by BASE24 or user-defined. Reserved codes are  !!00737
*             to be used only as defined, and include:                !!00738
*                                                                     !!00739
*             AD = Administrative (BASE24-atm only)                   !!00740
*             AX = American Express credit                            !!00741
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00742
*                  only)                                              !!00743
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00744
*                  CC-CZ)                                             !!00745
*             CB = Carte Blanche credit                               !!00746
*             D  = Demonstration (BASE24-atm only)                    !!00747
*             DC = Diners Club credit                                 !!00748
*             DS = Discover (Sears) credit                            !!00749
*             M  = MasterCard credit                                  !!00750
*             MD = MasterCard debit (See BASE24-pos note below)       !!00751
*             MM = MasterCard dual (See BASE24-pos note below)        !!00752
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00753
*             SC = Special, Check (BASE24-pos only)                   !!00754
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00755
*                  Check Application only)                            !!00756
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00757
*                  Application only)                                  !!00758
*             V  = VISA credit                                        !!00759
*             VD = VISA debit (See BASE24-pos note below)             !!00760
*             VV = VISA dual (See BASE24-pos note below)              !!00761
*                                                                     !!00762
*             Codes with a first character of C, except code CB, are  !!00763
*             recommended to identify private label credit cards.     !!00764
*                                                                     !!00765
*             Codes with a first character of P are required to       !!00766
*             identify proprietary debit cards.  BASE24 treats cards  !!00767
*             with proprietary debit codes and codes MD and VD as     !!00768
*             debit cards and treats cards with all other codes as    !!00769
*             credit cards.                                           !!00770
*                                                                     !!00771
*             Administrative (AD), Business deposit (BD),             !!00772
*             Demonstration (D), Special purpose (SP), and Super      !!00773
*             teller (ST) are special-use card types used by          !!00774
*             BASE24-atm.                                             !!00775
*                                                                     !!00776
*             Business deposit (BD) is also a special-use card type   !!00777
*             used by BASE24-teller to identify cards that can only   !!00778
*             be used to initiate deposit transactions.               !!00779
*             BASE24-teller does not perform any other processing     !!00780
*             based on card type; however, BASE24 guidelines should   !!00781
*             still be used when establishing card types for          !!00782
*             BASE24-teller.                                          !!00783
*                                                                     !!00784
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00785
*             processed as debit or credit card types, based on the   !!00786
*             default combo card type specified in the CPF.           !!00787
*                                                                     !!00788
*             Special, Check (SC) is a special-use card type used to  !!00789
*             initiate BASE24-pos check guarantee and check           !!00790
*             verification transactions only.                         !!00791
*                                                                     !!00792
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00793
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00794
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00795
*             BASE24-pos automatically includes the MD and MM card    !!00796
*             types with the MasterCard credit (M) card type, and     !!00797
*             automatically includes the VD and VV card types with    !!00798
*             the VISA credit (V) card type.                          !!00799
*                                                                     !!00800
*             User-defined Codes:  The user can add any one- or two-  !!00801
*             character code not included in the reserved code list   !!00802
*             above, according to the following guidelines:           !!00803
*                                                                     !!00804
*             o  The first character must be alphabetic (A, B, D-O,   !!00805
*                and Q-Z).                                            !!00806
*                                                                     !!00807
*             o  The second character can be A-Z, 0-9, or a blank.    !!00808
*                                                                     !!00809
*             o  A valid COBNAMES table entry is recommended for each !!00810
*                user-defined code.                                   !!00811
*                                                                     !!00812
*                                                                     !!00813
     04 TYP                    PIC XX.                                 !00814
                                                                       !00815
                                                                       !00816
*                                                                     !!00817
*             The floor limit, in whole currency units, (e.g.,        !!00818
*             dollars), for normal purchase transactions involving    !!00819
*             this card type performed at the terminal.  This floor   !!00820
*             limit is used only if it is less than the value in      !!00821
*             the PR-FLR-LMT field in the Authorization Selection     !!00822
*             Table File (AST), provided both fields specify a floor  !!00823
*             limit.  Zeros in this field indicate no PTDF floor      !!00824
*             limit is specified for normal purchases.                !!00825
*                                                                     !!00826
     04 NP-FLR-LMT             TYPE BINARY 32.                         !00827
                                                                       !00828
                                                                       !00829
*                                                                     !!00830
*             The floor limit, in whole currency units, (e.g.,        !!00831
*             dollars), for cash advance transactions involving this  !!00832
*             card type performed at the terminal.  This floor limit  !!00833
*             is used only if it is less than the value in the CA-    !!00834
*             FLR-LMT field in the AST, provided both fields specify  !!00835
*             a floor limit.  Zeros in this field indicate no PTDF    !!00836
*             floor limit is specified for cash advance transactions. !!00837
*                                                                     !!00838
     04 CA-FLR-LMT             TYPE BINARY 32.                         !00839
                                                                       !00840
                                                                       !00841
*                                                                     !!00842
*             The floor limit, in whole currency units, (e.g.,        !!00843
*             dollars), for mail/phone order transactions involving   !!00844
*             this card type performed at the terminal.  This floor   !!00845
*             limit is used only if it is less than the value in the  !!00846
*             MO-FLR-LMT field in the AST, provided both fields       !!00847
*             specify a floor limit.  Zeros in this field indicate no !!00848
*             PTDF floor limit is specified for mail/phone order      !!00849
*             transactions.                                           !!00850
*                                                                     !!00851
     04 MO-FLR-LMT             TYPE BINARY 32.                         !00852
                                                                       !00853
                                                                       !00854
*                                                                     !!00855
*             The transaction amount limit, in whole currency units,  !!00856
*             (e.g., dollars), for transactions involving this card   !!00857
*             type performed at the terminal.  Transactions for       !!00858
*             amounts exceeding this limit are denied.  This limit    !!00859
*             does not apply to cards with VIP status.  If a value    !!00860
*             greater than zero is specified in the TRAN-LMT field of !!00861
*             the PRDF as well as this field, the lower of the two    !!00862
*             values is used as the limit.  If this field contains    !!00863
*             zeros, the value in the TRAN-LMT field in the PRDF is   !!00864
*             used (and vice-versa).  If the TRAN-LMT fields in both  !!00865
*             the PRDF and PTDF contain zeros, no limit is checked.   !!00866
*                                                                     !!00867
     04 TRAN-LMT               TYPE BINARY 32.                         !00868
                                                                       !00869
*                                                                     !!00870
*             The number of debit transactions involving this card    !!00871
*             type that have occurred at the terminal during the      !!00872
*             current batch.                                          !!00873
*                                                                     !!00874
     04 DB-CNT                 TYPE BINARY 16.                         !00875
*                                                                     !!00876
*             The total amount, in whole and fractional currency      !!00877
*             units (e.g., dollars and cents), of debit transactions  !!00878
*             involving this card type that have occurred at the      !!00879
*             terminal during the current batch.                      !!00880
*                                                                     !!00881
     04 DB                     TYPE BINARY 64.                         !00882
*                                                                     !!00883
*             The number of credit transactions involving this card   !!00884
*             type that have occurred at the terminal during the      !!00885
*             current batch.                                          !!00886
*                                                                     !!00887
     04 CR-CNT                 TYPE BINARY 16.                         !00888
*                                                                     !!00889
*             The total amount, in whole and fractional currency      !!00890
*             units (e.g., dollars and cents), of credit transactions !!00891
*             involving this card type that have occurred at the      !!00892
*             terminal during the current batch.                      !!00893
*                                                                     !!00894
     04 CR                     TYPE BINARY 64.                         !00895
*                                                                     !!00896
*             The number of adjustment transactions involving this    !!00897
*             card type that have occurred at the terminal during the !!00898
*             current batch.                                          !!00899
*                                                                     !!00900
     04 ADJ-CNT                TYPE BINARY 16.                         !00901
*                                                                     !!00902
*             The total amount, in whole and fractional currency      !!00903
*             units (e.g., dollars and cents), of adjustment          !!00904
*             transactions involving this card type that have         !!00905
*             occurred at the terminal during the current batch.      !!00906
*                                                                     !!00907
     04 ADJ                    TYPE BINARY 64.                         !00908
                                                                       !00909
                                                                       !00910
*                                                                     !!00911
*             A code used to define how the draft capture flag        !!00912
*             (TRAN.DFT-CAPTURE-FLG field in the PSTM) will be set    !!00913
*             for transactions involving this card type handled by    !!00914
*             the terminal.  Valid values are:                        !!00915
*                                                                     !!00916
*             0 = Authorize only  (default)                           !!00917
*             1 = Authorize and capture                               !!00918
*             2 = Authorize and expect electronic follow-up           !!00919
*             3 = Terminal determines data capture mode for each      !!00920
*                 transaction                                         !!00921
*                                                                     !!00922
*             The draft capture flag will be set equal to this code   !!00923
*             for values in this field of 0, 1, or 2.  A value of 3   !!00924
*             in this field indicates the draft capture flag will be  !!00925
*             specified in the message received from the terminal.    !!00926
*                                                                     !!00927
     04 TRAN-PROFILE           PIC X.                                  !00928
                                                                       !00929
                                                                       !00930
                                                                       !00931
                                                                       !00932
                                                                       !00933
*                                                                     !!00934
*             The flag describing how BASE24 should handle electronic !!00935
*             follow-up transactions for this card type.  Valid codes !!00936
*             are:                                                    !!00937
*                                                                     !!00938
*             0   = Post the transaction.                             !!00939
*             1   = Terminal will send an electronic follow-up        !!00940
*                   transaction to BASE24, and the electronic         !!00941
*                   follow-up transaction will not be posted.         !!00942
*             2-9 = Reserved for future use                           !!00943
*                                                                     !!00944
     04 ELEC-FOLLOWUP          PIC X.                                  !00945
                                                                       !00946
                                                                       !00947
                                                                       !00948
*                                                                     !!00949
*             The maximum number of adjustment transactions allowed   !!00950
*             to be performed on the terminal for each terminal       !!00951
*             batch.  When this limit is exceeded, a log message is   !!00952
*             generated.                                              !!00953
*                                                                     !!00954
  02 ADJ-LMT-CNT               TYPE BINARY 16.                         !00955
*                                                                     !!00956
*             The maximum amount, in whole and fractional currency    !!00957
*             units (e.g., dollars and cents), that can be accepted   !!00958
*             at the terminal via adjustment transactions.  This      !!00959
*             limit is invoked for each terminal batch period.  When  !!00960
*             this limit is exceeded, a log message is generated.     !!00961
*                                                                     !!00962
  02 ADJ-LMT-AMT               TYPE BINARY 64.                         !00963
                                                                       !00964
                                                                       !00965
*                                                                     !!00966
*             The maximum number of merchandise return transactions   !!00967
*             allowed to be performed on the terminal for each        !!00968
*             terminal batch period.  When this limit is exceeded, a  !!00969
*             log message is generated.                               !!00970
*                                                                     !!00971
  02 RETURN-LMT-CNT            TYPE BINARY 16.                         !00972
*                                                                     !!00973
*             The maximum amount, in whole and fractional currency    !!00974
*             units (e.g., dollars and cents), that can be accepted   !!00975
*             at the terminal via merchandise return transactions.    !!00976
*             This limit is invoked for each terminal batch period.   !!00977
*             When this limit is exceeded, a log message is           !!00978
*             generated.                                              !!00979
*                                                                     !!00980
  02 RETURN-LMT-AMT            TYPE BINARY 64.                         !00981
                                                                       !00982
                                                                       !00983
*                                                                     !!00984
*             The current settlement date (YYMMDD) for this terminal. !!00985
*             All transactions originating at the terminal are posted !!00986
*             on this date regardless of card issuer's current        !!00987
*             business date.                                          !!00988
*                                                                     !!00989
*             Upon terminal cutover, the date in this field is        !!00990
*             changed to the date reflected in the NXT-POST-DAT field !!00991
*             in the PRDF.                                            !!00992
*                                                                     !!00993
  02 POST-DAT                  TYPE DAT.                               !00994
                                                                       !00995
                                                                       !00996
*                                                                     !!00997
*             A code indicating the method invoked to perform the     !!00998
*             last balancing of this terminal.  Valid values are:     !!00999
*                                                                     !!01000
*             5 = Balanced--Terminal balanced by a close transaction  !!01001
*                 from the terminal.  Totals sent by terminal agreed  !!01002
*                 with BASE24 totals or terminal did not send any     !!01003
*                 totals.  Totals were written to the PTLF and        !!01004
*                 cleared.                                            !!01005
*             6 = Balanced (with problems)--Terminal balanced by a    !!01006
*                 close transaction from terminal.  Totals sent by    !!01007
*                 terminal did not agree with BASE24 totals and       !!01008
*                 require verification.  Totals were written to the   !!01009
*                 PTLF and cleared.                                   !!01010
*             8 = Force-balanced (incomplete batch)--Terminal was cut !!01011
*                 over by Settlement Initiator at the time specified  !!01012
*                 in the RETAILER-BAL-AND-CUTVR-END field in the      !!01013
*                 PRDF.  The terminal was cut over to a new reporting !!01014
*                 day, and its totals were written to the PTLF, but   !!01015
*                 only current network totals were reset to zero.     !!01016
*                 This method is used when the value in the TERM-     !!01017
*                 CUTOVER-TC field in the PTDF equals 0, 1, or 2, and !!01018
*                 the close transaction has not been received from    !!01019
*                 the terminal within the time window defined by the  !!01020
*                 values in the  RETAILER-BAL-AND-CUTVR-START and     !!01021
*                 RETAILER-BAL-AND-CUTVR-END fields in the PRDF.      !!01022
*             9 = Force-balanced--Terminal was cut over by Settlement !!01023
*                 Initiator at the time specified in the RETAILER-    !!01024
*                 BAL-AND-CUTVR-END field in the PRDF.  This method is!!01025
*                 used when the value of the TERM-CUTOVER-TC field in !!01026
*                 the PTDF equals 3.                                  !!01027
*                 Also set to 9 when the terminal was cut over by the !!01028
*                 device handler on the first financial transaction   !!01029
*                 after the retailer cutover balance start time as    !!01030
*                 specified in the PRDF.  This method is used when    !!01031
*                 the value of the TERM-CUTOVER-TC field in the PTDF  !!01032
*                 equals 4.                                           !!01033
*                 In both cases, the terminal was cut over to a new   !!01034
*                 reporting day, its totals were written to the       !!01035
*                 PTLF and all BASE24 totals for the terminal were    !!01036
*                 cleared.                                            !!01037
*                                                                     !!01038
  02 BAL-FLG                   PIC X.                                  !01039
                                                                       !01040
*                                                                     !!01041
*             Reserved for future use.                                !!01042
*                                                                     !!01043
  02 USER-FLD6                 PIC X.                                  !01044
                                                                       !01045
                                                                       !01046
*                                                                     !!01047
*             The date (YYMMDD) the terminal was last cut over.       !!01048
*                                                                     !!01049
  02 LAST-SETL-DAT             TYPE BINARY 32.                         !01050
                                                                       !01051
                                                                       !01052
*                                                                     !!01053
*             The time (HHMMSS) the terminal was last cut over.       !!01054
*                                                                     !!01055
  02 LAST-SETL-TIM             TYPE BINARY 16.                         !01056
                                                                       !01057
                                                                       !01058
*                                                                     !!01059
*             A code indicating the way in which the customer's       !!01060
*             balance is displayed at the terminal.  This field is    !!01061
*             reserved for future use.  Valid values are:             !!01062
*                                                                     !!01063
*             0 = Do not print or display                             !!01064
*             1 = Display on the screen only                          !!01065
*             2 = Print on the receipt only                           !!01066
*             3 = Print on the receipt and display on the screen      !!01067
*                                                                     !!01068
*             This field is currently not used.                       !!01069
*                                                                     !!01070
  02 CUST-BAL-DSPY             PIC 9.                                  !01071
                                                                       !01072
                                                                       !01073
                                                                       !01074
                                                                       !01075
*                                                                     !!01076
*             A code indicating the line protocol that is being used  !!01077
*             for communications with this terminal.  Valid values    !!01078
*             are:                                                    !!01079
*                                                                     !!01080
*             A = Asynchronous                                        !!01081
*             B = Bisynchronous                                       !!01082
*             D = Dial-up                                             !!01083
*             S = SDLC                                                !!01084
*             T = Bisynchronous (transparent-EBCDIC)                  !!01085
*             X = X.25                                                !!01086
*             Y = X.21                                                !!01087
*                                                                     !!01088
  02 TERM-PROTO                PIC X.                                  !01089
                                                                       !01090
                                                                       !01091
*                                                                     !!01092
*             A code indicating the language table used by the Device !!01093
*             Handler when sending responses to the terminal.  This   !!01094
*             code enables responses to be displayed on the terminal  !!01095
*             in one of three different languages.  Valid values are: !!01096
*                                                                     !!01097
*             0 = Language table 1                                    !!01098
*             1 = Language table 2                                    !!01099
*             2 = Language table 3                                    !!01100
*                                                                     !!01101
*             The particular language represented in each table is up !!01102
*             to the discretion of the institution.  For example,     !!01103
*             table 1 could be English, table 2 could be French, and  !!01104
*             table 3 could be Spanish.                               !!01105
*                                                                     !!01106
  02 LANGUAGE-IND             TYPE BINARY 16.                          !01107
                                                                       !01108
                                                                       !01109
*                                                                     !!01110
*             The identification number, clerk ID, of the employee    !!01111
*             logged on to the terminal.  The value in this field is  !!01112
*             used for terminal logon security verification.          !!01113
*                                                                     !!01114
  02 CLERK-ID                 PIC X(6).                                !01115
                                                                       !01116
                                                                       !01117
*                                                                     !!01118
*             The sequence number of the transaction at the beginning !!01119
*             of the batch.  This field is reserved for future use.   !!01120
*                                                                     !!01121
  02 BEG-TRAN-CNTL-NUM        TYPE BINARY 32.                          !01122
*                                                                     !!01123
*             The sequence number of the last transaction in the      !!01124
*             batch.  This field is reserved for future use.          !!01125
*                                                                     !!01126
  02 END-TRAN-CNTL-NUM        TYPE BINARY 32.                          !01127
                                                                       !01128
                                                                       !01129
*                                                                     !!01130
*             A free-form informational field used at the discretion  !!01131
*             of the institution.  Typically, this field contains     !!01132
*             Automated Clearinghouse (ACH) information which BASE24- !!01133
*             pos passes on to the host for use by the ACH system.    !!01134
*             Information in this field has no impact on BASE24-pos   !!01135
*             processing.                                             !!01136
*                                                                     !!01137
  02 BILLING-INFO             PIC X(10).                               !01138
                                                                       !01139
                                                                       !01140
*                                                                     !!01141
*             A code indicating if operator totals are maintained for !!01142
*             the terminal.  Valid values are:                        !!01143
*                                                                     !!01144
*             0 = No totals are maintained                            !!01145
*             1 = Net totals are returned (debits, credits, and       !!01146
*                 adjustments) (currently not supported)              !!01147
*             2 = Cash out totals are returned (currently not         !!01148
*                 supported)                                          !!01149
*             3 = All totals are returned (debits, credits,           !!01150
*                 adjustments, and cash out)                          !!01151
*                                                                     !!01152
*             If the value in this field is 1, 2, or 3, all clerk     !!01153
*             totals (i.e., debits, credits, adjustments, and cash    !!01154
*             out) are written to the PTLF each time a new operator   !!01155
*             logs on to the terminal.  These totals can then be      !!01156
*             perused from the PTLF.  If the value in this field is   !!01157
*             0, clerk totals are not maintained.                     !!01158
*                                                                     !!01159
  02 CLERK-FLAG                TYPE BINARY 16.                         !01160
                                                                       !01161
                                                                       !01162
*                                                                     !!01163
*             The following fields contain clerk totals information   !!01164
*             for the operator who is currently logged on to the      !!01165
*             terminal.  These totals are cleared by a batch close    !!01166
*             transaction or a new operator logon.                    !!01167
*                                                                     !!01168
  02 CLERK-TOTS.                                                       !01169
*                                                                     !!01170
*             The number of all debit transactions occurring under    !!01171
*             the current operator's logon since the last batch close !!01172
*             transaction.                                            !!01173
*                                                                     !!01174
     04 DB-CNT                 TYPE BINARY 16.                         !01175
*                                                                     !!01176
*             The amount of all debit transactions, in whole and      !!01177
*             fractional currency units (e.g., dollars and cents),    !!01178
*             occurring under the current operator's logon since the  !!01179
*             last batch close transaction.                           !!01180
*                                                                     !!01181
     04 DB-AMT                 TYPE BINARY 64.                         !01182
*                                                                     !!01183
*             The number of all credit transactions occurring under   !!01184
*             the current operator's logon since the last batch close !!01185
*             transaction.                                            !!01186
*                                                                     !!01187
     04 CR-CNT                 TYPE BINARY 16.                         !01188
*                                                                     !!01189
*             The amount of all credit transactions, in whole and     !!01190
*             fractional currency units (e.g., dollars and cents),    !!01191
*             occurring under the current operator's logon since the  !!01192
*             last batch close transaction.                           !!01193
*                                                                     !!01194
     04 CR-AMT                 TYPE BINARY 64.                         !01195
*                                                                     !!01196
*             The number of all adjustment transactions occurring     !!01197
*             under the current operator's logon since the last batch !!01198
*             close transaction.                                      !!01199
*                                                                     !!01200
     04 ADJ-CNT                TYPE BINARY 16.                         !01201
*                                                                     !!01202
*             The amount of all adjustment transactions, in whole and !!01203
*             fractional currency units (e.g., dollars and cents),    !!01204
*             occurring under the current operator's logon since the  !!01205
*             last batch close transaction.                           !!01206
*                                                                     !!01207
     04 ADJ-AMT                TYPE BINARY 64.                         !01208
*                                                                     !!01209
*             The number of all cash back transactions occurring      !!01210
*             under the current operator's logon since the last batch !!01211
*             close transaction.                                      !!01212
*                                                                     !!01213
     04 CASH-CNT               TYPE BINARY 16.                         !01214
*                                                                     !!01215
*             The amount of all cash back transactions, in whole and  !!01216
*             fractional currency units (e.g., dollars and cents),    !!01217
*             occurring under the current operator's logon since the  !!01218
*             last batch close transaction.                           !!01219
*                                                                     !!01220
     04 CASH-AMT               TYPE BINARY 64.                         !01221
*                                                                     !!01222
*             The number of all check transactions occurring          !!01223
*             under the current operator's logon since the last       !!01224
*             batch close transaction.                                !!01225
*                                                                     !!01226
     04 CHK-CNT                TYPE BINARY 16.                         !01227
*                                                                     !!01228
*             The amount of all check transactions, in whole and      !!01229
*             fractional currency units (e.g., dollars and            !!01230
*             cents), occurring under the current operator's logon    !!01231
*             since the last batch close transaction.                 !!01232
*                                                                     !!01233
     04 CHK-AMT                TYPE BINARY 64.                         !01234
                                                                       !01235
                                                                       !01236
                                                                       !01237
                                                                       !01238
*                                                                     !!01239
*             The following fields contain the counts and amounts of  !!01240
*             all debit, credit, and adjustment transactions          !!01241
*             processed during the current batch.                     !!01242
*                                                                     !!01243
*             Settlement Initiator will clear batch totals at the end !!01244
*             of the retailer's balancing window if the value in the  !!01245
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01246
*             forced).                                                !!01247
*                                                                     !!01248
*             The device handler will clear batch totals on the first !!01249
*             financial transaction processed during the retailer     !!01250
*             window lead time if the value in the TERM-CUTOVER-TC    !!01251
*             field in this record is 4 (device handler network force !!01252
*             cutover).                                               !!01253
*                                                                     !!01254
*             A batch close transaction from the terminal is needed   !!01255
*             to clear batch totals if the value in the TERM-CUTOVER- !!01256
*             TC field is 0, 1, or 2 (operator request).  If the      !!01257
*             terminal does not support a batch close transaction,    !!01258
*             the transaction specified by the value in the TERM-     !!01259
*             CUTOVER-TC field will clear batch totals during         !!01260
*             terminal cutover.                                       !!01261
*                                                                     !!01262
  02 BATCH.                                                            !01263
*                                                                     !!01264
*             The number of all debit transactions processed during   !!01265
*             the current batch.                                      !!01266
*                                                                     !!01267
     04 DB-CNT                 TYPE BINARY 16.                         !01268
*                                                                     !!01269
*             The total amount, in whole and fractional currency      !!01270
*             units (e.g., dollars and cents), of all debit           !!01271
*             transactions processed during the current batch.        !!01272
*                                                                     !!01273
     04 DB                     TYPE BINARY 64.                         !01274
*                                                                     !!01275
*             The number of all credit transactions processed during  !!01276
*             the current batch.                                      !!01277
*                                                                     !!01278
     04 CR-CNT                 TYPE BINARY 16.                         !01279
*                                                                     !!01280
*             The total amount, in whole and fractional currency      !!01281
*             units (e.g., dollars and cents), of all credit          !!01282
*             transactions processed during the current batch.        !!01283
*                                                                     !!01284
     04 CR                     TYPE BINARY 64.                         !01285
*                                                                     !!01286
*             The number of all adjustment transactions processed     !!01287
*             during the current batch.                               !!01288
*                                                                     !!01289
     04 ADJ-CNT                TYPE BINARY 16.                         !01290
*                                                                     !!01291
*             The total amount, in whole and fractional currency      !!01292
*             units (e.g., dollars and cents), of all adjustment      !!01293
*             transactions processed during the current batch.        !!01294
*                                                                     !!01295
     04 ADJ                    TYPE BINARY 64.                         !01296
                                                                       !01297
                                                                       !01298
*                                                                     !!01299
*             The following fields contain the counts and amounts of  !!01300
*             all batch draft capture debit, credit, and adjustment   !!01301
*             transactions processed during the current batch.        !!01302
*                                                                     !!01303
*             Settlement Initiator will clear batch draft capture     !!01304
*             totals at the end of the retailer's balancing window if !!01305
*             the value in the TERM-CUTOVER-TC field in this record   !!01306
*             is 3 (network-forced).                                  !!01307
*                                                                     !!01308
*             The device handler will clear batch draft capture totals!!01309
*             on the first financial transaction processed during the !!01310
*             retailer window lead time if the value in the           !!01311
*             TERM-CUTOVER-TC field in this record is 4 (device       !!01312
*             handler network force cutover).                         !!01313
*                                                                     !!01314
*             A batch close transaction from the terminal is needed   !!01315
*             to clear batch draft capture totals if the value in the !!01316
*             TERM-CUTOVER-TC field is 0, 1, or 2 (operator request). !!01317
*             If the terminal does not support a batch close          !!01318
*             transaction, the transaction specified by the value in  !!01319
*             the TERM-CUTOVER-TC field will clear batch totals       !!01320
*             during terminal cutover.                                !!01321
*                                                                     !!01322
  02 BATCH-DC.                                                         !01323
*                                                                     !!01324
*             The number of all debit draft capture transactions      !!01325
*             processed during the current batch.                     !!01326
*                                                                     !!01327
     04 DB-CNT                 TYPE BINARY 16.                         !01328
*                                                                     !!01329
*             The total amount, in whole and fractional currency      !!01330
*             units (e.g., dollars and cents), of all debit draft     !!01331
*             capture transactions processed during the current       !!01332
*             batch.                                                  !!01333
*                                                                     !!01334
     04 DB                     TYPE BINARY 64.                         !01335
*                                                                     !!01336
*             The number of all credit draft capture transactions     !!01337
*             processed during the current batch.                     !!01338
*                                                                     !!01339
     04 CR-CNT                 TYPE BINARY 16.                         !01340
*                                                                     !!01341
*             The total amount, in whole and fractional currency      !!01342
*             units (e.g., dollars and cents), of all credit draft    !!01343
*             capture transactions processed during the current       !!01344
*             batch.                                                  !!01345
*                                                                     !!01346
     04 CR                     TYPE BINARY 64.                         !01347
*                                                                     !!01348
*             The number of all adjustment draft capture transactions !!01349
*             processed during the current batch.                     !!01350
*                                                                     !!01351
     04 ADJ-CNT                TYPE BINARY 16.                         !01352
*                                                                     !!01353
*             The total amount, in whole and fractional currency      !!01354
*             units (e.g., dollars and cents), of all adjustment      !!01355
*             draft capture transactions processed during the current !!01356
*             batch.                                                  !!01357
*                                                                     !!01358
     04 ADJ                    TYPE BINARY 64.                         !01359
                                                                       !01360
                                                                       !01361
*                                                                     !!01362
*             The following fields contain the total counts and       !!01363
*             amounts of all debit, credit, and adjustment            !!01364
*             transactions processed during the current shift.        !!01365
*                                                                     !!01366
*             Settlement Initiator will clear shift totals at the end !!01367
*             of the retailer's balancing window if the value in the  !!01368
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01369
*             forced).                                                !!01370
*                                                                     !!01371
*             The device handler will clear shift totals on the first !!01372
*             financial transaction processed during the retailer     !!01373
*             window lead time if the value in the TERM-CUTOVER-TC    !!01374
*             field in this record is 4 (device handler network force !!01375
*             cutover).                                               !!01376
*                                                                     !!01377
*             A shift close transaction from the terminal is needed   !!01378
*             to clear shift totals if the value in the TERM-CUTOVER- !!01379
*             TC field is 0, 1, or 2 (operator request).  If the      !!01380
*             terminal does not support a shift close transaction,    !!01381
*             the transaction specified by the value in the TERM-     !!01382
*             CUTOVER-TC field will clear shift totals during         !!01383
*             terminal cutover.                                       !!01384
*                                                                     !!01385
  02 SHIFT.                                                            !01386
*                                                                     !!01387
*             The number of all debit transactions processed during   !!01388
*             the current shift.                                      !!01389
*                                                                     !!01390
     04 DB-CNT                 TYPE BINARY 16.                         !01391
*                                                                     !!01392
*             The total amount, in whole and fractional currency      !!01393
*             units (e.g., dollars and cents), of all debit           !!01394
*             transactions processed during the current shift.        !!01395
*                                                                     !!01396
     04 DB                     TYPE BINARY 64.                         !01397
*                                                                     !!01398
*             The number of all credit transactions processed during  !!01399
*             the current shift.                                      !!01400
*                                                                     !!01401
     04 CR-CNT                 TYPE BINARY 16.                         !01402
*                                                                     !!01403
*             The total amount, in whole and fractional currency      !!01404
*             units (e.g., dollars and cents), of all credit          !!01405
*             transactions processed during the current shift.        !!01406
*                                                                     !!01407
     04 CR                     TYPE BINARY 64.                         !01408
*                                                                     !!01409
*             The number of all adjustment transactions processed     !!01410
*             during the current shift.                               !!01411
*                                                                     !!01412
     04 ADJ-CNT                TYPE BINARY 16.                         !01413
*                                                                     !!01414
*             The total amount, in whole and fractional currency      !!01415
*             units (e.g., dollars and cents), of all credit          !!01416
*             transactions processed during the current shift.        !!01417
*                                                                     !!01418
     04 ADJ                    TYPE BINARY 64.                         !01419
                                                                       !01420
                                                                       !01421
*                                                                     !!01422
*             The following fields contain the total counts and       !!01423
*             amounts of all draft capture debit, credit, and         !!01424
*             adjustment transactions processed during the current    !!01425
*             shift.                                                  !!01426
*                                                                     !!01427
*             Settlement Initiator will clear shift draft capture     !!01428
*             totals at the end of the retailer's balancing window if !!01429
*             the value in the TERM-CUTOVER-TC field in this record   !!01430
*             is 3 (network-forced).                                  !!01431
*                                                                     !!01432
*             The device handler will clear shift draft capture totals!!01433
*             on the first financial transaction processed during the !!01434
*             retailer window lead time if the value in the           !!01435
*             TERM-CUTOVER-TC field in this record is 4 (device       !!01436
*             handler network force cutover).                         !!01437
*                                                                     !!01438
*             A shift close transaction from the terminal is needed   !!01439
*             to clear shift draft capture totals if the value in the !!01440
*             TERM-CUTOVER-TC field is 0, 1, or 2 (operator request). !!01441
*             If the terminal does not support a shift close          !!01442
*             transaction, the transaction specified by the value in  !!01443
*             the TERM-CUTOVER-TC field will clear shift totals       !!01444
*             during terminal cutover.                                !!01445
*                                                                     !!01446
  02 SHIFT-DC.                                                         !01447
*                                                                     !!01448
*             The number of all debit draft capture transactions      !!01449
*             processed during the current shift.                     !!01450
*                                                                     !!01451
     04 DB-CNT                 TYPE BINARY 16.                         !01452
*                                                                     !!01453
*             The total amount, in whole and fractional currency      !!01454
*             units (e.g., dollars and cents), of all debit draft     !!01455
*             capture transactions processed during the current       !!01456
*             shift.                                                  !!01457
*                                                                     !!01458
     04 DB                     TYPE BINARY 64.                         !01459
*                                                                     !!01460
*             The number of all credit draft capture transactions     !!01461
*             processed during the current shift.                     !!01462
*                                                                     !!01463
     04 CR-CNT                 TYPE BINARY 16.                         !01464
*                                                                     !!01465
*             The total amount, in whole and fractional currency      !!01466
*             units (e.g., dollars and cents), of all credit draft    !!01467
*             capture transactions processed during the current       !!01468
*             shift.                                                  !!01469
*                                                                     !!01470
     04 CR                     TYPE BINARY 64.                         !01471
*                                                                     !!01472
*             The number of all adjustment draft capture transactions !!01473
*             processed during the current shift.                     !!01474
*                                                                     !!01475
     04 ADJ-CNT                TYPE BINARY 16.                         !01476
*                                                                     !!01477
*             The total amount, in whole and fractional currency      !!01478
*             units (e.g., dollars and cents), of all adjustment      !!01479
*             draft capture transactions processed during the current !!01480
*             shift.                                                  !!01481
*                                                                     !!01482
     04 ADJ                    TYPE BINARY 64.                         !01483
                                                                       !01484
                                                                       !01485
*                                                                     !!01486
*             The following fields contain the total counts and       !!01487
*             amounts of all debit, credit, and adjustment            !!01488
*             transactions processed during the current day.          !!01489
*                                                                     !!01490
*             Settlement Initiator will clear daily totals at the end !!01491
*             of the retailer's balancing window if the value in the  !!01492
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01493
*             forced).                                                !!01494
*                                                                     !!01495
*             The device handler will clear daily totals on the first !!01496
*             financial transaction processed during the retailer     !!01497
*             window lead time if the value in the TERM-CUTOVER-TC    !!01498
*             field in this record is 4 (device handler network force !!01499
*             cutover).                                               !!01500
*                                                                     !!01501
*             A day close transaction from the terminal is needed to  !!01502
*             clear daily totals if the value in the TERM-CUTOVER-TC  !!01503
*             field is 0, 1, or 2 (operator request).  If the         !!01504
*             terminal does not support a day close transaction, the  !!01505
*             transaction specified by the value in the TERM-CUTOVER- !!01506
*             TC field will clear day totals during terminal cutover. !!01507
*                                                                     !!01508
  02 DAILY.                                                            !01509
*                                                                     !!01510
*             The number of all debit transactions processed during   !!01511
*             the current day.                                        !!01512
*                                                                     !!01513
     04 DB-CNT                 TYPE BINARY 16.                         !01514
*                                                                     !!01515
*             The total amount, in whole and fractional currency      !!01516
*             units (e.g., dollars and cents), of all debit           !!01517
*             transactions processed during the current day.          !!01518
*                                                                     !!01519
     04 DB                     TYPE BINARY 64.                         !01520
*                                                                     !!01521
*             The number of all credit transactions processed during  !!01522
*             the current day.                                        !!01523
*                                                                     !!01524
     04 CR-CNT                 TYPE BINARY 16.                         !01525
*                                                                     !!01526
*             The total amount, in whole and fractional currency      !!01527
*             units (e.g., dollars and cents), of all credit          !!01528
*             transactions processed during the current day.          !!01529
*                                                                     !!01530
     04 CR                     TYPE BINARY 64.                         !01531
*                                                                     !!01532
*             The number of all adjustment transactions processed     !!01533
*             during the current day.                                 !!01534
*                                                                     !!01535
     04 ADJ-CNT                TYPE BINARY 16.                         !01536
*                                                                     !!01537
*             The total amount, in whole and fractional currency      !!01538
*             units (e.g., dollars and cents), of all adjustment      !!01539
*             transactions processed during the current day.          !!01540
*                                                                     !!01541
     04 ADJ                    TYPE BINARY 64.                         !01542
                                                                       !01543
                                                                       !01544
*                                                                     !!01545
*             The following fields contain the total counts and       !!01546
*             amounts of all draft capture debit, credit, and         !!01547
*             adjustment transactions processed during the current    !!01548
*             day.                                                    !!01549
*                                                                     !!01550
*             Settlement Initiator will clear daily totals at the end !!01551
*             of the retailer's balancing window if the value in the  !!01552
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01553
*             forced).                                                !!01554
*                                                                     !!01555
*             The device handler will clear daily draft capture totals!!01556
*             on the first financial transaction processed during the !!01557
*             retailer window lead time if the value in the           !!01558
*             TERM-CUTOVER-TC field in this record is 4 (device       !!01559
*             handler network force cutover).                         !!01560
*                                                                     !!01561
*             A day close transaction from the terminal is needed to  !!01562
*             clear daily totals if the value in the TERM-CUTOVER-TC  !!01563
*             field is 0, 1, or 2 (operator request).  If the         !!01564
*             terminal does not support a day close transaction, the  !!01565
*             transaction specified by the value in the TERM-CUTOVER- !!01566
*             TC field will clear day totals during terminal cutover. !!01567
*                                                                     !!01568
  02 DAILY-DC.                                                         !01569
*                                                                     !!01570
*             The number of all debit draft capture transactions      !!01571
*             processed during the current day.                       !!01572
*                                                                     !!01573
     04 DB-CNT                 TYPE BINARY 16.                         !01574
*                                                                     !!01575
*             The total amount, in whole and fractional currency      !!01576
*             units (e.g., dollars and cents), of all debit draft     !!01577
*             capture transactions processed during the current day.  !!01578
*                                                                     !!01579
     04 DB                     TYPE BINARY 64.                         !01580
*                                                                     !!01581
*             The number of all credit draft capture transactions     !!01582
*             processed during the current day.                       !!01583
*                                                                     !!01584
     04 CR-CNT                 TYPE BINARY 16.                         !01585
*                                                                     !!01586
*             The total amount, in whole and fractional currency      !!01587
*             units (e.g., dollars and cents), of all credit draft    !!01588
*             capture transactions processed during the current day.  !!01589
*                                                                     !!01590
     04 CR                     TYPE BINARY 64.                         !01591
*                                                                     !!01592
*             The number of all adjustment draft capture transactions !!01593
*             processed during the current day.                       !!01594
*                                                                     !!01595
     04 ADJ-CNT                TYPE BINARY 16.                         !01596
*                                                                     !!01597
*             The total amount, in whole and fractional currency      !!01598
*             units (e.g., dollars and cents), of all adjustment      !!01599
*             draft capture transactions processed during the current !!01600
*             day.                                                    !!01601
*                                                                     !!01602
     04 ADJ                    TYPE BINARY 64.                         !01603
                                                                       !01604
                                                                       !01605
*                                                                     !!01606
*             The following fields contain the total counts and       !!01607
*             amounts of all debit, credit, and adjustment            !!01608
*             transactions since the last terminal cutover.           !!01609
*                                                                     !!01610
  02 CUR-NET.                                                          !01611
*                                                                     !!01612
*             The number of all debit transactions that have occurred !!01613
*             since the last terminal cutover.                        !!01614
*                                                                     !!01615
     04 DB-CNT                 TYPE BINARY 16.                         !01616
*                                                                     !!01617
*             The total amount, in whole and fractional currency      !!01618
*             units (e.g., dollars and cents), of all debit           !!01619
*             transactions that have occurred at the terminal since   !!01620
*             the last terminal cutover.                              !!01621
*                                                                     !!01622
     04 DB                     TYPE BINARY 64.                         !01623
*                                                                     !!01624
*             The number of all credit transactions that have         !!01625
*             occurred since the last terminal cutover.               !!01626
*                                                                     !!01627
     04 CR-CNT                 TYPE BINARY 16.                         !01628
*                                                                     !!01629
*             The total amount, in whole and fractional currency      !!01630
*             units (e.g., dollars and cents), of all credit          !!01631
*             transactions that have occurred at the terminal since   !!01632
*             the last terminal cutover.                              !!01633
*                                                                     !!01634
     04 CR                     TYPE BINARY 64.                         !01635
*                                                                     !!01636
*             The number of all adjustment transactions that have     !!01637
*             occurred since the last terminal cutover.               !!01638
*                                                                     !!01639
     04 ADJ-CNT                TYPE BINARY 16.                         !01640
*                                                                     !!01641
*             The total amount, in whole and fractional currency      !!01642
*             units (e.g., dollars and cents), of all adjustment      !!01643
*             transactions that have occurred at the terminal since   !!01644
*             the last terminal cutover.                              !!01645
*                                                                     !!01646
     04 ADJ                    TYPE BINARY 64.                         !01647
                                                                       !01648
                                                                       !01649
*                                                                     !!01650
*             The following fields contain the total counts and       !!01651
*             amounts of all draft capture debit, credit, and         !!01652
*             adjustment transactions since the last terminal         !!01653
*             cutover.                                                !!01654
*                                                                     !!01655
  02 CUR-NET-DC.                                                       !01656
*                                                                     !!01657
*             The number of all debit draft capture transactions that !!01658
*             have occurred since the last terminal cutover.          !!01659
*                                                                     !!01660
     04 DB-CNT                 TYPE BINARY 16.                         !01661
*                                                                     !!01662
*             The total amount, in whole and fractional currency      !!01663
*             units (e.g., dollars and cents), of all debit draft     !!01664
*             capture transactions that have occurred at the terminal !!01665
*             since the last terminal cutover.                        !!01666
*                                                                     !!01667
     04 DB                     TYPE BINARY 64.                         !01668
*                                                                     !!01669
*             The number of all credit draft capture transactions     !!01670
*             that have occurred since the last terminal cutover.     !!01671
*                                                                     !!01672
     04 CR-CNT                 TYPE BINARY 16.                         !01673
*                                                                     !!01674
*             The total amount, in whole and fractional currency      !!01675
*             units (e.g., dollars and cents), of all credit draft    !!01676
*             capture transactions that have occurred at the terminal !!01677
*             since the last terminal cutover.                        !!01678
*                                                                     !!01679
     04 CR                     TYPE BINARY 64.                         !01680
*                                                                     !!01681
*             The number of all adjustment draft capture transactions !!01682
*             that have occurred since the last terminal cutover.     !!01683
*                                                                     !!01684
     04 ADJ-CNT                TYPE BINARY 16.                         !01685
*                                                                     !!01686
*             The total amount, in whole and fractional currency      !!01687
*             units (e.g., dollars and cents), of all adjustment      !!01688
*             draft capture transactions that have occurred at the    !!01689
*             terminal since the last terminal cutover.               !!01690
*                                                                     !!01691
     04 ADJ                    TYPE BINARY 64.                         !01692
                                                                       !01693
                                                                       !01694
*                                                                     !!01695
*             The following fields contain the total counts and       !!01696
*             amounts of transactions that occurred during the        !!01697
*             BASE24-pos business day prior to the most recent        !!01698
*             terminal cutover.  CUR-NET field values are moved to    !!01699
*             their corresponding PRE-NET fields during terminal      !!01700
*             cutover.  The values in the CUR-NET fields are then     !!01701
*             cleared.                                                !!01702
*                                                                     !!01703
  02 PRE-NET.                                                          !01704
*                                                                     !!01705
*             The number of all debit transactions prior to the most  !!01706
*             recent terminal cutover.                                !!01707
*                                                                     !!01708
     04 DB-CNT                 TYPE BINARY 16.                         !01709
*                                                                     !!01710
*             The total amount, in whole and fractional currency      !!01711
*             units (e.g., dollars and cents), of all debit           !!01712
*             transactions prior to the most recent terminal cutover. !!01713
*                                                                     !!01714
     04 DB                     TYPE BINARY 64.                         !01715
*                                                                     !!01716
*             The number of all credit transactions prior to the most !!01717
*             recent terminal cutover.                                !!01718
*                                                                     !!01719
     04 CR-CNT                 TYPE BINARY 16.                         !01720
*                                                                     !!01721
*             The total amount, in whole and fractional currency      !!01722
*             units (e.g., dollars and cents), of all credit          !!01723
*             transactions prior to the most recent terminal cutover. !!01724
*                                                                     !!01725
     04 CR                     TYPE BINARY 64.                         !01726
*                                                                     !!01727
*             The number of all adjustment transactions prior to      !!01728
*             the most recent terminal cutover.                       !!01729
*                                                                     !!01730
     04 ADJ-CNT                TYPE BINARY 16.                         !01731
*                                                                     !!01732
*             The total amount, in whole and fractional currency      !!01733
*             units (e.g., dollars and cents), of all adjustment      !!01734
*             transactions prior to the most recent terminal cutover. !!01735
*                                                                     !!01736
     04 ADJ                    TYPE BINARY 64.                         !01737
                                                                       !01738
                                                                       !01739
  02 PRE-NET-DC.                                                       !01740
*                                                                     !!01741
*             The number of all debit draft capture transactions      !!01742
*             prior to the most recent terminal cutover.              !!01743
*                                                                     !!01744
     04 DB-CNT                 TYPE BINARY 16.                         !01745
*                                                                     !!01746
*             The total amount, in whole and fractional currency      !!01747
*             units (e.g., dollars and cents), of all debit           !!01748
*             draft capture transactions prior to the most recent     !!01749
*             terminal cutover.                                       !!01750
*                                                                     !!01751
     04 DB                     TYPE BINARY 64.                         !01752
*                                                                     !!01753
*             The number of all credit draft capture transactions     !!01754
*             prior to the most recent terminal cutover.              !!01755
*                                                                     !!01756
     04 CR-CNT                 TYPE BINARY 16.                         !01757
*                                                                     !!01758
*             The total amount, in whole and fractional currency      !!01759
*             units (e.g., dollars and cents), of all credit          !!01760
*             draft capture transactions prior to the most recent     !!01761
*             terminal cutover.                                       !!01762
*                                                                     !!01763
     04 CR                     TYPE BINARY 64.                         !01764
*                                                                     !!01765
*             The number of all adjustment draft capture transactions !!01766
*             prior to the most recent terminal cutover.              !!01767
*                                                                     !!01768
     04 ADJ-CNT                TYPE BINARY 16.                         !01769
*                                                                     !!01770
*             The total amount, in whole and fractional currency      !!01771
*             units (e.g., dollars and cents), of all adjustment      !!01772
*             draft capture transactions prior to the most recent     !!01773
*             terminal cutover.                                       !!01774
*                                                                     !!01775
     04 ADJ                    TYPE BINARY 64.                         !01776
*                                                                     !!01777
*             An indicator that identifies the last transaction to    !!01778
*             update this record.  The value in this field ensures    !!01779
*             against multiple or incomplete updates due to process   !!01780
*             failure and restart.  This field occurs in every record !!01781
*             that is updated by the online system.                   !!01782
*                                                                     !!01783
  02 LAST-TRAN                 TYPE *.                                 !01784
                                                                       !01785
                                                                       !01786
*                                                                     !!01787
*             An indicator that identifies the last file maintenance  !!01788
*             action on this record.  This includes the user who      !!01789
*             performed the update, the time at which it was done,    !!01790
*             and the type of update.                                 !!01791
*                                                                     !!01792
  02 LAST-FM                   TYPE *.                                 !01793
                                                                       !01794
                                                                       !01795
*                                                                     !!01796
*             This table is used to determine if a transaction is     !!01797
*             allowed at the terminal.  Whether a particular          !!01798
*             transaction is allowed depends on the value of its      !!01799
*             offset into the table.  Possible values for each offset !!01800
*             are:                                                    !!01801
*                                                                     !!01802
*             0 = Not allowed                                         !!01803
*             1 = Allowed  (default)                                  !!01804
*                                                                     !!01805
*             The offsets into the table are:                         !!01806
*                                                                     !!01807
*             0     = Normal purchase                                 !!01808
*             1     = Preauthorization purchase                       !!01809
*             2     = Preauthorization purchase completion            !!01810
*             3     = Mail/phone order                                !!01811
*             4     = Merchandise return                              !!01812
*             5     = Cash advance                                    !!01813
*             6     = Card verification                               !!01814
*             7     = Balance inquiry                                 !!01815
*             8     = Purchase with cash back                         !!01816
*             9     = Check verification                              !!01817
*             10    = Check guarantee                                 !!01818
*             11    = Purchase adjustment                             !!01819
*             12    = Merchandise return adjustment                   !!01820
*             13    = Cash advance adjustment                         !!01821
*             14    = Terminal batch totals                           !!01822
*             15    = Terminal shift totals                           !!01823
*             16    = Daily terminal totals                           !!01824
*             17    = Reserved for future use                         !!01825
*             18    = Request retailer mail                           !!01826
*             19    = Send retailer mail (passthru)                   !!01827
*             20    = Send retailer mail (stored)                     !!01828
*             21    = Sales draft                                     !!01829
*             22    = Clerk totals                                    !!01830
*             23    = Cash back adjustment                            !!01831
*             24    = Adjustments when AMT2 > AMT1                    !!01832
                                                                       !01833B00
                                                                       !01833B01
*             25    = Pre Auth for a lesser abount                    !
*             26-29 = Reserved for future use                         !
                                                                       !01833B06
  02 ALLOWED-TRANS             PIC X OCCURS 30 TIMES.                  !01835
                                                                       !01836
                                                                       !01837
*                                                                     !!01838
*             The value in this field indicates whether the terminal  !!01839
*             operator or BASE24 normally cuts the terminal over to a !!01840
*             new reporting day.  If operator action is required, the !!01841
*             value in this field identifies which close transaction, !!01842
*             when used within the retailer's balancing window, will  !!01843
*             cut the terminal over to the next reporting day.  This  !!01844
*             balancing window is defined by the values in the        !!01845
*             RETAILER-BAL-AND-CUTVR-START and RETAILER-BAL-AND-      !!01846
*             CUTVR-END fields in the PRDF.                           !!01847
*                                                                     !!01848
*             If the close transaction specified in this field is     !!01849
*             requested during the retailer's balancing window, the   !!01850
*             Device Handler will, on the first occurrence, cut the   !!01851
*             terminal over.  Subsequent cutover attempts during the  !!01852
*             same retailer window will not cut the terminal over     !!01853
*             again.  If the specified close transaction is not       !!01854
*             requested during the balancing window, or if BASE24     !!01855
*             performs the cutover automatically, the Settlement      !!01856
*             Initiator process will cut the terminal over at the end !!01857
*             of the balancing window.                                !!01858
*                                                                     !!01859
*             Valid entries include:                                  !!01860
*                                                                     !!01861
*             0 = Terminal day close                                  !!01862
*             1 = Terminal shift close                                !!01863
*             2 = Terminal batch close                                !!01864
*             3 = Force cutover  (default)                            !!01865
*             4 = Device Handler network force cutover                !!01866
*                                                                     !!01867
*             Nonintelligent terminals must always use the force      !!01868
*             cutover value; intelligent terminals may use any of the !!01869
*             values.                                                 !!01870
*                                                                     !!01871
*             Network totals (i.e., values in the CUR-NET and CUR-    !!01872
*             NET-DC fields) are always cleared during terminal       !!01873
*             cutover.                                                !!01874
*                                                                     !!01875
*             When the value in this field is set to 0, 1, or 2       !!01876
*             (close transaction), the close transaction specified    !!01877
*             (i.e., batch, shift, day), should be included in the    !!01878
*             BAL-SUPPORT field setting in this record.               !!01879
*                                                                     !!01880
*             When the value in this field is set to the default      !!01881
*             value of 3 (force cutover), the Settlement Initiator    !!01882
*             process automatically cuts the terminal over at the end !!01883
*             of the window and clears all totals, regardless of the  !!01884
*             BAL-SUPPORT field setting.                              !!01885
*                                                                     !!01886
*             When the value in this field is set to a value of 4     !!01887
*             (device handler network force cutover), the device      !!01888
*             handler cuts the terminal over on the first financial   !!01889
*             transaction during the retailer cutover window lead     !!01890
*             time period.                                            !!01891
*                                                                     !!01892
  02 TERM-CUTOVER-TC           PIC 9.                                  !01893
                                                                       !01894
                                                                       !01895
*                                                                     !!01896
*             The value in this field indicates the balancing         !!01897
*             transactions supported by the terminal, and is used     !!01898
*             when the value in the TERM-CUTOVER-TC field in this     !!01899
*             record is 0, 1, or 2.  When the close entry defined by  !!01900
*             the value in the TERM-CUTOVER-TC field is received      !!01901
*             within the balancing window, BASE24 will clear any      !!01902
*             totals not supported by the terminal.  Valid values     !!01903
*             are:                                                    !!01904
*                                                                     !!01905
*             0 = Batch totals are supported                          !!01906
*             1 = Batch and shift totals are supported                !!01907
*             2 = Batch and end of day totals are supported           !!01908
*             3 = Batch, shift, and end of day totals are supported   !!01909
*             4 = Shift and end of day totals are supported           !!01910
*             5 = End of day totals are supported                     !!01911
*             9 = No totals are supported                             !!01912
*                                                                     !!01913
  02 BAL-SUPPORT               PIC 9.                                  !01914
                                                                       !01915
                                                                       !01916
                                                                       !01917
*                                                                     !!01918
*             The number of shifts today for this terminal.           !!01919
*                                                                     !!01920
  02 NUM-SHIFTS                TYPE BINARY.                            !01921
                                                                       !01922
                                                                       !01923
                                                                       !01924
                                                                       !01925
                                                                       !01926
                                                                       !01927
*                                                                     !!01928
*             The following fields contain the terminal date and      !!01929
*             time.                                                   !!01930
*                                                                     !!01931
  02 TERM.                                                             !01932
*                                                                     !!01933
*             The terminal date (YYMMDD).                             !!01934
*                                                                     !!01935
     04 DAT                    TYPE BINARY 32.                         !01936
*                                                                     !!01937
*             The terminal time (HHMMSS).                             !!01938
*                                                                     !!01939
     04 TIM                    TYPE BINARY 32.                         !01940
                                                                       !01941
*                                                                     !!01942
*             The maximum number of transactions that should be       !!01943
*             performed prior to a terminal batch totals transaction. !!01944
*             This field is not currently used.                       !!01945
*                                                                     !!01946
  02 BATCH-CUTOVER-CNT         TYPE BINARY.                            !01947
*                                                                     !!01948
*             The number of terminal batch totals transactions        !!01949
*             performed since the last terminal cutover.  The value   !!01950
*             in this field is incremented by 1 each time a batch     !!01951
*             transaction is performed either manually or             !!01952
*             automatically by the Device Handler.                    !!01953
*                                                                     !!01954
*             When the terminal cuts over, the count in this field is !!01955
*             included in records written to the PTLF and is reset to !!01956
*             0.                                                      !!01957
*                                                                     !!01958
  02 NUM-BATCHES               TYPE BINARY.                            !01959
*                                                                     !!01960
*             The number of the shift in which transactions are       !!01961
*             currently accumulating.  The value in this field is     !!01962
*             incremented by 1 each time a terminal shift close is    !!01963
*             performed, and rolls to 1 after 999.  It is reset to 1  !!01964
*             by a terminal day close.  If the terminal does not      !!01965
*             support a day close transaction, the transaction        !!01966
*             specified by the value in the TERM-CUTOVER-TC field in  !!01967
*             this record will reset this counter during terminal     !!01968
*             cutover.                                                !!01969
*                                                                     !!01970
  02 SHIFT-NUM                 TYPE BINARY.                            !01971
*                                                                     !!01972
*             The number of the batch in which transactions are       !!01973
*             currently accumulating.  The value in this field is     !!01974
*             incremented by 1 each time a terminal batch close is    !!01975
*             performed, and rolls to 1 after 999.  It is reset to 1  !!01976
*             by a terminal shift close.  If the terminal does not    !!01977
*             support a shift close transaction, the transaction      !!01978
*             specified by the value in the TERM-CUTOVER-TC field in  !!01979
*             this record will reset this counter during terminal     !!01980
*             cutover.                                                !!01981
*                                                                     !!01982
  02 BATCH-NUM                 TYPE BINARY.                            !01983
*                                                                     !!01984
*             The sequence number of the last transaction performed   !!01985
*             at the terminal.  The value in this field is            !!01986
*             incremented by one for each transaction performed       !!01987
*             within this batch (represented by the current value in  !!01988
*             the BATCH-NUM field).  The value in this field is reset !!01989
*             to 0 whenever a terminal batch close transaction is     !!01990
*             performed. (The first transaction in a batch increments !!01991
*             this field to 1.)  If the terminal does not support a   !!01992
*             batch close transaction, the transaction specified by   !!01993
*             the value in the TERM-CUTOVER-TC field in this record   !!01994
*             will reset this counter during terminal cutover.        !!01995
*                                                                     !!01996
  02 SEQ-NUM                   TYPE BINARY.                            !01997
                                                                       !01998
*                                                                     !!01999
*             The token data received in the response message.  The   !!02000
*             information in this field is included in a reversal     !!02001
*             message, if this transaction is reversed.               !!02002
*                                                                     !!02003
  02 TKN-BUF                   PIC X(450).                             !02004
                                                                       !02005
                                                                       !02006
*                                                                     !!02007
*             This field is not currently used.                       !!02008
*                                                                     !!02009
  02 DEL-PTDF-FLG              PIC X.                                  !02010
                                                                       !02011
*                                                                     !!02012
*             Reserved for future use.                                !!02013
*                                                                     !!02014
  02 USER-FLD9                 PIC X.                                  !02015
                                                                       !02016
                                                                       !02017
*                                                                     !!02018
*             This field is used as a work buffer by the Device       !!02019
*             Handler when processing PINs.  This field is not        !!02020
*             displayed by the BASE24 system.                         !!02021
*                                                                     !!02022
  02 DES-WORK-AREA             TYPE BINARY 16 OCCURS 52 TIMES.         !02023
                                                                       !02024
*                                                                     !!02025
*             The postal ZIP code corresponding to the location of    !!02026
*             the BASE24-pos terminal specified in the LOCATION       !!02027
*             field.                                                  !!02028
*                                                                     !!02029
  02 POSTAL-CDE                TYPE *.                                 !02030
                                                                       !02031
                                                                       !02032
*                                                                     !!02033
*             The following fields contain the terminal phone number  !!02034
*             and baud rate.  These fields are used with the X.21     !!02035
*             protocol.                                               !!02036
*                                                                     !!02037
  02 TERM-PHONE.                                                       !02038
                                                                       !02039
                                                                       !02040
*                                                                     !!02041
*             The terminal phone number.                              !!02042
*                                                                     !!02043
     04 NUM                    TYPE PHONE-NUM.                         !02044
                                                                       !02045
                                                                       !02046
*                                                                     !!02047
*             An indicator of the terminal baud rate.  Valid values   !!02048
*             and their corresponding baud rates are shown in the     !!02049
*             table below.                                            !!02050
*                                                                     !!02051
*             INDICATOR    BAUD RATE                                  !!02052
*             ---------    -------------------                        !!02053
*             00           50                                         !!02054
*             01           75                                         !!02055
*             02           110                                        !!02056
*             03           134.5                                      !!02057
*             04           150                                        !!02058
*             05           300                                        !!02059
*             06           600                                        !!02060
*             07           1200                                       !!02061
*             08           1800                                       !!02062
*             09           2000                                       !!02063
*             10           2400                                       !!02064
*             11           3600                                       !!02065
*             12           4800                                       !!02066
*             13           7200                                       !!02067
*             14           9600                                       !!02068
*             15           19200                                      !!02069
*             16           200                                        !!02070
*             99           Baud rate not used                         !!02071
*                                                                     !!02072
     04 BAUD-RATE              PIC 9(2).                               !02073
                                                                       !02074
*             Check digits for PIN master key                         !!02075
*             (ENCR-PIN.ENCR-KEYS.M-KEY) validation.  The ASMCOM and  !!02076
*             RSMCOM security tools use the value of this field to    !!02077
*             validate the PIN master key.  Valid values are          !!02078
*             hexadecimal characters (0-9, A-F), stored as binary     !!02079
*             data.                                                   !!02080
                                                                       !02081
  02 M-KEY-CHK-VALUE           PIC X(3).                               !02082
                                                                       !02083
*             Check digits for MAC master key                         !!02084
*             (MAC-DATA.ENCR-KEYS.MAS-KEY) validation.  The ASMCOM and!!02085
*             RSMCOM security tools use the value of this field to    !!02086
*             validate the MAC master key.  Valid values are          !!02087
*             hexadecimal characters (0-9, A-F), stored as binary     !!02088
*             data.                                                   !!02089
                                                                       !02090
  02 MAS-KEY-CHK-VALUE         PIC X(3).                               !02091
                                                                       !02092
*             This field is used by the Settlement Slave and          !!02093
*             Device Handlers to determine which Settlement           !!02094
*             totals should be logged during cutover or on            !!02095
*             a balancing transaction.                                !!02096
*                                                                     !!02097
*             The bit layout of this field is as follows:             !!02098
*             TOTAL TYPE          BIT POSITION                        !!02099
*             Batch               Bit 0                               !!02100
*             Shift               Bit 1                               !!02101
*             Daily               Bit 2                               !!02102
*             Network             Bit 3                               !!02103
*             Service             Bit 4                               !!02104
*                                                                     !!02105
*             For each bit position, the valid values are:            !!02106
*             0 = No, do not log totals.                              !!02107
*             1 = Yes, log totals.                                    !!02108
*                                                                     !!02109
                                                                       !02110
  02 LOG-TOTALS                PIC X.                                  !02111
                                                                       !02112
*             This flag indicates a balancing transaction was         !!02113
*             processed and the device handler is "waiting for        !!02114
*             confirmation" that the device received the response.    !!02115
*             It is cleared when the device handler receives          !!02116
*             another transaction which is not a duplicate            !!02117
*             administrative transaction.                             !!02118
*                                                                     !!02119
*             Valid values:                                           !!02120
*                                                                     !!02121
*             0 - Not waiting for confirmation.                       !!02122
*             1 - Waiting confirmation, batch close performed.        !!02123
*             2 - Waiting confirmation, shift close performed.        !!02124
*             3 - Waiting confirmation, daily close performed.        !!02125
                                                                       !02126
  02 WAIT-CONFIRM-FLG          PIC X.                                  !02127
                                                                       !02128
*                                                                     !!02129
*             The routing group associated with the terminal.  It     !!02130
*             will be used to Sproute route transactions.             !!02131
*                                                                     !!02132
  02 RTE-GRP                   PIC X(11).                              !02133
                                                                       !02134
*                                                                     !!02135
*             The Standard Industrial Classification (SIC) code for   !!02136
*             mail/phone order transactions.                          !!02137
*                                                                     !!02138
  02 MAIL-PO-SIC-CDE           PIC 9(4).                               !02139
                                                                       !02140
*             An extension of the TERM-CITY-ST.CITY field which       !!02141
*             makes the terminal city field a total of 18 bytes.      !!02142
                                                                       !02143
  02 CITY-EXT                  PIC X(5).                               !02144
                                                                       !02145
*             An indication of the terminal's ability to capture      !!02146
*             and transmit complete Track 2 data on card swipe        !!02147
*             transactions.  Valid values are:                        !!02148
*                                                                     !!02149
*             N = No, this terminal does not capture and transmit     !!02150
*                 complete Track 2 data.                              !!02151
*             Y = Yes, this terminal captures and transmits complete  !!02152
*                 Track 2 data.                                       !!02153
*                                                                     !!02154
  02 COMPLETE-TRACK2-DATA      PIC X.                                  !02155
                                                                       !02155C00
                                                                       !02155C01
*             The software release field is available to hold          !02155C02
*             information about the terminal software.                 !02155C03
                                                                       !02155C04
  02 SFTWR-REL                PIC X(8).                                !02155C05
                                                                       !02155C06
*             The pre-communications floor limit flag contains a       !02155C07
*             value used to indicate whether the PRE-COMM-FLR-LMT      !02155C08
*             should be sent to the terminal by the POS Device         !02155C09
*             Handler.  Valid values are:                              !02155C0A
*                                                                      !02155C0B
*             0  = Not used for this device type                       !02155C0C
*             1  = Send limit                                          !02155C0D
*             2  = Do not send limit                                   !02155C0E
*                                                                      !02155C0F
*             This field is currently used by the following POS        !02155C0G
*             Device Handlers:                                         !02155C0H
*                                                                      !02155C0I
*             APACS 30/40                                              !02155C0J
                                                                       !02155C0K
  02 PRE-COMM-LMT-FLG          PIC 9.                                  !02155C0L
                                                                       !02155C0M
*             The pre-communications floor limit contains a value      !02155C0N
*             that may be used by the POS terminal. The limit          !02155C0O
*             represents the maximum value of a transaction that       !02155C0P
*             can be authorised by the terminal without attempting to  !02155C0Q
*             communicate with the Host. The limit must be specified   !02155C0R
*             in major (i.e whole) currency units in the currency      !02155C0S
*             specified by the CRNCY-CDE field (i.e. the primary       !02155C0T
*             terminal currency).                                      !02155C0U
*                                                                      !02155C0V
*             Valid values are any numeric digits.                     !02155C0W
*                                                                      !02155C0X
*             This field is currently used by the following POS        !02155C0Y
*             Device Handlers:                                         !02155C0Z
*                                                                      !02155C10
*             APACS 30/40 (999 maximum allowed value)                  !02155C11
                                                                       !02155C12
  02 PRE-COMM-FLR-LMT         TYPE BINARY 16.                          !02155C13
                                                                       !02155C14
*             The post-communications floor limit contains a value     !02155C15
*             that may be used by the POS terminal. The limit          !02155C16
*             represents the maximum value of a transaction that       !02155C17
*             can be authorised by the terminal when an attempt to     !02155C18
*             communicate with the Host has failed. The limit must be  !02155C19
*             specified in major (i.e whole) currency units in the     !02155C1A
*             currency specified by the CRNCY-CDE field (i.e. the      !02155C1B
*             primary terminal currency).                              !02155C1C
*                                                                      !02155C1D
*             Valid values are any numeric digits.                     !02155C1E
*                                                                      !02155C1F
*             This field is currently used by the following POS        !02155C1G
*             Device Handlers:                                         !02155C1H
*                                                                      !02155C1I
*             APACS 30/40 (999 maximum allowed value)                  !02155C1J
*                                                                      !02155C1K
  02 POST-COMM-FLR-LMT        TYPE BINARY 16.                          !02155C1L
                                                                       !02155C1M
*             The post-communications floor limit flag contains a      !02155C1N
*             value used to indicate whether the POST-COMM-FLR-LMT     !02155C1O
*             should be sent to the terminal by the POS Device         !02155C1P
*             Handler. Valid values are:                               !02155C1Q
*                                                                      !02155C1R
*             0  = Not used for this device type                       !02155C1S
*             1  = Send limit                                          !02155C1T
*             2  = Do not send limit                                   !02155C1U
*                                                                      !02155C1V
*             This field is currently used by the following POS        !02155C1W
*             Device Handlers:                                         !02155C1X
*                                                                      !02155C1Y
*             APACS 30/40                                              !02155C1Z
                                                                       !02155C20
  02 POST-COMM-LMT-FLG         PIC 9.                                  !02155C21
                                                                       !02155C22
                                                                       !02155D00
*             Terminal attribute for dual site processing.             !02155D01
*             Valid values are:                                        !02155D02
*                                                                      !02155D03
*             "L"   = Local                                            !02155D04
*             "R"   = Remote                                           !02155D05
*             Blank = Local                                            !02155D06
                                                                       !02155D07
  02 DUAL-SITE-IND             PIC X.                                  !02155D08
                                                                       !02155D09
*                                                                     !!02156
*             Reserved for future use.                                !!02157
*                                                                     !!02158
                                                                       !02159C00
                                                                       !02159D00
  02 USER-FLD8                 PIC X(21).                              !02159D01
                                                                       !02159D02
                                                                       !02159C02
                                                                       !02160
                                                                       !02161
  02 AFS.                                                              !02162
                                                                       !02163
                                                                       !02164
*                                                                     !!02165
*             The type of service station.  Valid values are:         !!02166
*                                                                     !!02167
*             C = Contractor                                          !!02168
*             I = Independent                                         !!02169
*             J = Jobber                                              !!02170
*             R = Retailer                                            !!02171
*                                                                     !!02172
     04 SRV-MODE               PIC X.                                  !02173
                                                                       !02174
                                                                       !02175
*                                                                     !!02176
*             This field is used to enter information for BASE24-pos  !!02177
*             devices that use the BASE24-mail product.               !!02178
*                                                                     !!02179
  02 MAIL-DATA                 TYPE MAIL-CONF-DEF.                     !02180
                                                                       !02181
                                                                       !02182
END                                                                    !02183
                                                                       !02184
                                                                       !02185
*                                                                     !!02186
*             The POS Terminal Data File (PTDF) contains one record   !!02187
*             for each POS terminal controlled by BASE24-pos.         !!02188
*                                                                     !!02189
*             The PTDF is used to define the characteristics of the   !!02190
*             terminal, including transaction counts and amounts,     !!02191
*             terminal owner, and device-dependent data.  It is also  !!02192
*             used to preserve transaction context and is read and    !!02193
*             updated every time a transaction request, transaction   !!02194
*             response, or completion message is processed for the    !!02195
*             terminal.                                               !!02196
*                                                                     !!02197
*             The following pages describe the fields included in a   !!02198
*             PTDF record.                                            !!02199
*                                                                     !!02200
*             LCONF ASSIGN:       POS-PTDF                            !!02201
*                                                                     !!02202
RECORD PTDF.                    FILE IS "PTDF" RELATIVE.               !02203
                                                                       !02204
02 REC                          TYPE PTDFDEF.                          !02205
                                                                       !02206
                                                                       !02207
02 DEV-DAT                      PIC X(900).                            !02208
*                                                                     !!02209
*             Fields used by the device handler to store current      !!02210
*             transaction processing data for a terminal.  This       !!02211
*             information is specific to a particular POS device      !!02212
*             handler (e.g., the BASE24 Standard POS Device Handler   !!02213
*             (SPDH)).  All terminals in the BASE24-pos network have  !!02214
*             records in the PTDF.  However, devices use only the     !!02215
*             device-dependent data designated for that particular    !!02216
*             device type.                                            !!02217
*                                                                     !!02218
*             Device-dependent data formats (DDLs) are presented on   !!02219
*             the device-specific subvolumes.                         !!02220
*                                                                     !!02221
02 DEV-DEP-DATA                 TYPE BINARY 16 OCCURS 450 TIMES        !02222
                                                                       !02223
                                       REDEFINES DEV-DAT.              !02224
                                                                       !02225
KEY "TM" IS TERM-ID DUPLICATES NOT ALLOWED.                            !02226
KEY "OW" IS TERM-OWNER.                                                !02227
                                                                       !02228
END                                                                    !02229
?nocomments
