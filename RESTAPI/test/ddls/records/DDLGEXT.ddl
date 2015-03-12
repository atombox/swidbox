**FIX2.22  05/16/02  DDLGEXT 6006 DDL    BA60DDL  BA05418  F                 ***
**FIX2.22  04/12/02  DDLGEXT 6005 DDL    BA60DDL  BA05328  E                 ***
**FIX2.19  01/12/02  DDLGEXT 6004 DDL    BA60DDL  BA05169  D                 ***
**FIX2.11  01/02/01  DDLGEXT 6003 DDL    BA60DDL  BA04155  C                 ***
**SEQ0.04  11/01/00  DDLGEXT 6002 DDL    BA60DDL  BA04000  B                 ***
**SYNC.04  12/09/98  DDLGEXT 5302 DDL    BA53DDL  BA04000  B                 ***
**SYNC.03  08/28/98  DDLGEXT 5302 DDL    BA53DDL  BA03000  B                 ***
**SYNC.03  08/22/97  DDLGEXT 5102 DDL    BA51DDL  BA03000  B                 ***
**SYNC.02  06/25/96  DDLGEXT 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  06/06/95  DDLGEXT 5102 DDL    BA51DDL  BA51025  B                 ***
**FIX2.00  01/20/95  DDLGEXT 5101 DDL    BA51DDL  BA50282  A                 ***
!*SEQ2.00  10/20/92  DDLGEXT 5000 DDL    BA50DDL                               !
                                                                       !00000C00
?PAGE "EXT-MSG - Extract Message Format"
?section extr-msg-frmt-history
********************************************************************** !00000C05
*                                                                    * !00000C06
*                              BASE24                                * !00000C07
*                              ------                                * !00000C08
*                                                                    * !00000C09
*                 DDL for the Extract Message Formats                * !00000C0A
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
*                                                                      !00000C0V
* Record of Changes:                                                   !00000C0W
*                                                                      !00000C0X
* Date        Person/Emp #                                             !00000C0Y
* ---------   ------------                                             !00000C0Z
                                                                       !00000C10
                                                                       !00000C11
                                                                       !00000C12
                                                                       !00000C13
*********************************************************************  !00201A01
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   *  !00201A02
*********************************************************************  !00201A03
* 22AUG94       TMH - JMS/583                                          !00201A04
* SYMPTOM:      BASE24-telebanking Initial Release                     !00201A05
* PROBLEM:      <E> None.                                              !00201A06
* FIX:          Replaced USER-FLD1A of the EXT-MSG filemap with TBLF.  !00201A07
* DEPENDENCIES: Re-ddl.                                                !00201A08
* REFERENCE:    BASE24-telebanking External Specifications,            !00201A09
*               Work Order TB930301-01                                 !00201A0A
                                                                       !00201A0B
                                                                       !00201B03
*********************************************************************  !00201B04
*                  RELEASE 5.1                                      *  !00201B05
*********************************************************************  !00201B06
*                                                                      !00201B07
* 95JUN01       JMS/583                                                !00201B08
* SYMPTOM:   BASE24-BASE RELEASE 5.1 ENHANCEMENTS                      !00201B09
* PROBLEM:   (E) NONE.                                                 !00201B0A
* FIX:       Removed AFS, EFTPOS, and Cash Manager products.           !00201B0B
*            Removed these file from the FILE-MAP and replaced them    !00201B0C
*            with User Fields.                                         !00201B0D
*                CTLF   is now USER-FLD1E                              !00201B0E
*                CFLF   is now USER-FLD1F                              !00201B0F
*                PEND   is now USER-FLD1G                              !00201B0G
*                BILL   is now USER-FLD1H                              !00201B0H
*                FRDF   is now USER-FLD1I                              !00201B0I
*                CLF    is now USER-FLD1J                              !00201B0J
*                RLF    is now USER-FLD1K                              !00201B0K
*                ALF    is now USER-FLD1L                              !00201B0L
*                ACH-UP is now USER-FLD1M                              !00201B0M
*                NRTF   is now USER-FLD1N                              !00201B0N
*                RREC   is now USER-FLD1O                              !00201B0O
* IMPLEMENT: Remove reference to these products in all modules.        !00201B0P
*            Re-compile DDL's. Apply related fix to the ECF            !00201B0Q
*            requestor and server and recompile. Apply fix to          !00201B0R
*            Base Extract program.   All modules that source in the    !00201B0S
*            DDLGEXT must be recompiled.                               !00201B0T
* REFERENCE: 950201-001                                                !00201B0U
*                                                                      !00201B0V
* 24MAR95    JAS - JMS/583                                             !00201B0W
* SYMPTOM:   None.                                                     !00201B0X
* PROBLEM:   ITS Transaction Log File (ITLF) name in the FILE-MAP      !00201B0Y
*            was incorrect.                                            !00201B0Z
* FIX:       Renamed the TBLF entry in the FILE-MAP to ITLF.           !00201B10
* IMPLEMENT: Re-ddl. Recompile Refresh/Extract requester.              !00201B11
* REFERENCE: TB930301-01, BASE24-telebanking External Specifications   !00201B12
*                                                                      !00201B13
                                                                       !00201C00
*********************************************************************  !00201C01
*             Release 6.0                                           *  !00201C02
*********************************************************************  !00201C03
* 30NOV2000   jfu/543                                                  !00201C04
* Symptom:    Release 6.0 Enhancements                                 !00201C05
* Problem:    None.                                                    !00201C06
* Fix:        Replaced USER-FLD1B with ICFE in the FILE-MAP.           !00201C07
*             Removed ASUF from the FILE-MAP and replaced it           !00201C08
*               with the user field - USER-FLD1-FILE-MAP.              !00201C09
*             Removed RTLF from the FILE-MAP and replaced it           !00201C0A
*               with the user field - USER-FLD4-FILE-MAP.              !00201C0B
*             Removed DHSF from the FILE-MAP and replaced it           !00201C0C
*               with the user field - USER-FLD11-FILE-MAP.             !00201C0D
*             Removed DHSF-HEAD definition.                            !00201C0E
*             Removed PCS support.                                     !00201C0F
*             - Removed PLF  from the FILE-MAP and replaced it         !00201C0G
*                 with the user field - USER-FLD2-FILE-MAP.            !00201C0H
*             - Removed INCF from the FILE-MAP and replaced it         !00201C0I
*                 with the user field - USER-FLD3-FILE-MAP.            !00201C0J
*             - Removed ODF  from the FILE-MAP and replaced it         !00201C0K
*                 with the user field - USER-FLD5-FILE-MAP.            !00201C0L
*             - Removed OGF  from the FILE-MAP and replaced it         !00201C0M
*                 with the user field - USER-FLD6-FILE-MAP.            !00201C0N
*             - Removed MEF  from the FILE-MAP and replaced it         !00201C0O
*                 with the user field - USER-FLD7-FILE-MAP.            !00201C0P
*             - Removed PSRF from the FILE-MAP and replaced it         !00201C0Q
*                 with the user field - USER-FLD8-FILE-MAP.            !00201C0R
*             - Removed LSRF from the FILE-MAP and replaced it         !00201C0S
*                 with the user field - USER-FLD9-FILE-MAP.            !00201C0T
*             - Removed CLEANUP from the FILE-MAP and replaced it      !00201C0U
*                 with the user field - USER-FLD10-FILE-MAP.           !00201C0V
* Dependency: Restore Release 6.0 files, modify the appropriate        !00201C0W
*             CUSTMACS flags, and run MAKE.                            !00201C0X
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00201C0Y
                                                                       !00201C0Z
                                                                       !00201D00
* 08JAN2002   BEM/348                                                  !00201D01
* Symptom:    Release 6.0 Format 2 File Support                        !00201D02
* Problem:    None.                                                    !00201D03
* Fix:        Added File Format field to file header by making it      !00201D04
*             byte 3 of USER-FLD1.  This is to be sent only if         !00201D05
*             the file is a format 2 file or if the first 4 bytes      !00201D06
*             of USER-FLD1 are being sent anyway for another           !00201D07
*             reason.                                                  !00201D08
* Dependency: Add fix to DDLGEXT and run MAKE.                         !00201D09
* Reference:  WO #000202-01                                            !00201D0A
                                                                       !00201D0B
                                                                       !00201E00
* 28MAR2002   JRA/24                                                   !00201E01
* Symptom:    Stored Value Release 6.0 uplift                          !00201E02
* Problem:    None.                                                    !00201E03
* Fix:        Replaced user-fld3-file-map with SVHF flag.              !00201E04
* Dependency: Restore SV-related files, modify the appropriate         !00201E05
*             CUSTMACS flags, and run MAKE.                            !00201E06
* Reference:  WO #020117-41 (BASE24-stored value Release 6.0 uplift)   !00201E07
                                                                       !00201F00
                                                                       !00201F01
* 08MAY2002   JRA/24                                                   !00201F02
* Symptom:    None.                                                    !00201F03
* Problem:    SVHF missing from the FILE-ID field comments.            !00201F04
* Fix:        Added SVHF line in FILE-ID comments.                     !00201F05
* Dependency: Restore DDLGEXT and run MAKE.                            !00201F06
* Reference:  Case #347716                                             !00201F07
                                                                       !00201F08
                                                                       !00201E08
*********************************************************************  !00201B14
                                                                       !00201B15
                                                                       !00201B16
                                                                       !00201C10
?DEFLIST
?SECTION EXT-MSG
                                                                       !00201C15
*#####################################################################!!00202
*#    EXT-MSG - EXTRACT MESSAGE FORMAT                               #!!00203
*#####################################################################!!00204
                                                                       !00205
*           This is the layout of the message that is sent from the   !!00206
*           BASE24 OPR RET screen to the BASE24-extract process.      !!00207
                                                                       !00208
DEFINITION EXT-MSG.                                                    !00209
                                                                       !00210
*           Determines the function the extract process is to perform.!!00211
*           Values are:  EXTR = extract;  REEX = reextract.           !!00212
                                                                       !00213
    02  TYP                     PIC X(4).                              !00214
                                                                       !00215
*           Field Delimiter.                                          !!00216
                                                                       !00217
    02  COMMA1                  PIC X.                                 !00218
                                                                       !00219
*           ECF primary key to use when creating extract tape.        !!00220
                                                                       !00221
    02  ECF-KEY                 PIC X(10).                             !00222
                                                                       !00223
*           Field Delimiter.                                          !!00224
                                                                       !00225
    02  COMMA2                  PIC X.                                 !00226
                                                                       !00227
*           Flag indicating whether the following FILE-MAP overrides  !!00228
*           the FILE-MAP in the ECF record.  Values are:  Y =         !!00229
*           override;  N = use ECF FILE-MAP.                          !!00230
                                                                       !00231
    02  OVRRD                   PIC X.                                 !00232
                                                                       !00233
*           Field Delimiter.                                          !!00234
                                                                       !00235
    02  COMMA3                  PIC X.                                 !00236
                                                                       !00237
*           Byte map indicating which files to to process.  Values    !!00238
*           are:  Y = process;  N = don't process.                    !!00239
                                                                       !00240
    02  FILE-MAP.                                                      !00241
        04  ILF                 PIC X.                                 !00242
        04  OM                  PIC X.                                 !00243
        04  SAF                 PIC X.                                 !00244
        04  ICF                 PIC X.                                 !00245
        04  IDF                 PIC X.                                 !00246
        04  TLF                 PIC X.                                 !00247
                                                                       !00247A00
                                                                       !00247B00
        04  ITLF                PIC X.                                 !00247B01
                                                                       !00247B02
                                                                       !00247A02
                                                                       !00248A00
                                                                       !00248A01
                                                                       !00249C00
        04  ICFE                PIC X.                                 !00249C01
                                                                       !00249C02
        04  USER-FLD1C          PIC X.                                 !00250
        04  USER-FLD1D          PIC X.                                 !00251
        04  PTLF                PIC X.                                 !00252
        04  PRDF                PIC X.                                 !00253
        04  TTLF                PIC X.                                 !00254
        04  TTF                 PIC X.                                 !00255
                                                                       !00255C00
        04  USER-FLD1-FILE-MAP  PIC X.                                 !00255C01
        04  USER-FLD2-FILE-MAP  PIC X.                                 !00255C02
                                                                       !00255E00
        04  SVHF                PIC X.                                 !00255E01
                                                                       !00255E02
                                                                       !00255E03
                                                                       !00255E04
                                                                       !00255C04
                                                                       !00256C00
                                                                       !00256C01
                                                                       !00256C02
                                                                       !00259B00
                                                                       !00259B01
        04  USER-FLD1E          PIC X.                                 !00259B02
        04  USER-FLD1F          PIC X.                                 !00259B03
        04  USER-FLD1G          PIC X.                                 !00259B04
                                                                       !00259B05
                                                                       !00259C00
        04  USER-FLD4-FILE-MAP  PIC X.                                 !00259C01
        04  USER-FLD5-FILE-MAP  PIC X.                                 !00259C02
        04  USER-FLD6-FILE-MAP  PIC X.                                 !00259C03
        04  USER-FLD7-FILE-MAP  PIC X.                                 !00259C04
        04  USER-FLD8-FILE-MAP  PIC X.                                 !00259C05
        04  USER-FLD9-FILE-MAP  PIC X.                                 !00259C06
        04  USER-FLD10-FILE-MAP PIC X.                                 !00259C07
                                                                       !00259C08
                                                                       !00262C00
                                                                       !00262C01
                                                                       !00262C02
                                                                       !00269
        04  MBF                 PIC X.                                 !00270
        04  HMBF                PIC X.                                 !00271
        04  ULF                 PIC X.                                 !00272
                                                                       !00273
                                                                       !00274
                                                                       !00275
                                                                       !00276B00
        04  USER-FLD1H          PIC X.                                 !00276B01
                                                                       !00276B02
                                                                       !00277
                                                                       !00278
                                                                       !00279B00
                                                                       !00279B01
        04  USER-FLD1I          PIC X.                                 !00279B02
        04  USER-FLD1J          PIC X.                                 !00279B03
        04  USER-FLD1K          PIC X.                                 !00279B04
                                                                       !00279B05
                                                                       !00282
        04  HSF                 PIC X.                                 !00283
                                                                       !00284
                                                                       !00285
                                                                       !00286
                                                                       !00287
                                                                       !00288
                                                                       !00289B00
        04  USER-FLD1L          PIC X.                                 !00289B01
                                                                       !00289B02
                                                                       !00290
                                                                       !00291B00
        04  USER-FLD1M          PIC X.                                 !00291B01
                                                                       !00291B02
                                                                       !00292
                                                                       !00293
                                                                       !00294B00
        04  USER-FLD1N          PIC X.                                 !00294B01
                                                                       !00294B02
                                                                       !00295C00
        04  USER-FLD1O          PIC X.                                 !00295C01
                                                                       !00295C02
                                                                       !00296
                                                                       !00297
                                                                       !00298
                                                                       !00299
                                                                       !00300
                                                                       !00301
                                                                       !00302
                                                                       !00303
                                                                       !00304
                                                                       !00305
                                                                       !00306
                                                                       !00307C00
        04  USER-FLD11-FILE-MAP  PIC X.                                !00307C01
                                                                       !00307C02
        04  USER-FLD2           PIC X(92).                             !00308
                                                                       !00309
*                                                                     !!00310
*           Field Delimiter.                                          !!00311
*                                                                     !!00312
    02  COMMA4                  PIC X.                                 !00313
                                                                       !00314
*                                                                     !!00315
*           An indicator that specifies the tape volume identifier    !!00316
*           of the initial tape that the Super Extract module         !!00317
*           will process                                              !!00318
*                                                                     !!00319
    02  VOL-ID                  PIC X(6).                              !00320
                                                                       !00321
*                                                                     !!00322
*           Field Delimiter.                                          !!00323
*                                                                     !!00324
    02  COMMA5                  PIC X.                                 !00325
                                                                       !00326
*                                                                     !!00327
*           An indicator that specifies the number of the partial     !!00328
*           extract that the extract process should begin at when     !!00329
*           performing a re-extract of a transaction log file.        !!00330
*                                                                     !!00331
    02  STRT-PARTIAL            PIC 9(3).                              !00332
                                                                       !00333
*                                                                     !!00334
*           Field Delimiter.                                          !!00335
*                                                                     !!00336
    02  COMMA6                  PIC X.                                 !00337
                                                                       !00338
*                                                                     !!00339
*           An indicator that specifies the number of the partial     !!00340
*           extract that the extract process should stop at when      !!00341
*           performing a re-extract of a transaction log file.        !!00342
*                                                                     !!00343
    02  END-PARTIAL            PIC 9(3).                               !00344
                                                                       !00345
                                                                       !00346
                                                                       !00347
    02  USER-FLD3               PIC X.                                 !00348
                                                                       !00349
    END.                                                               !00350
?PAGE "EXTRACT-DATA - Super Extract common data module"
?SECTION EXTRACT-DATA
*#####################################################################!!00355
*#   EXTRACT-DATA - Super Extract common data module                 #!!00356
*#####################################################################!!00357
                                                                       !00358
*           The following structure is used as the main communication !!00359
*           between the Super Extract base module, product modules,   !!00360
*           and extract modules.                                      !!00361
                                                                       !00362
DEFINITION EXTRACT-DATA.                                               !00363
                                                                       !00364
*           Total hash amount for entire tape.                        !!00365
                                                                       !00366
    02  HASH-TTL                TYPE BINARY 64.                        !00367
                                                                       !00368
*           Type of extract being performed.  Common values:          !!00369
*           0 - Extract, 1 - Reextract, other values pertain          !!00370
*           to specific pointer resets.                               !!00371
                                                                       !00372
    02  EXTRACT-TYP             TYPE BINARY 16.                        !00373
                                                                       !00374
*           The LCONF name.                                           !!00375
                                                                       !00376
    02  LCONF-NAME              TYPE BINARY 16 OCCURS 12 TIMES.        !00377
                                                                       !00378
*           File number for the base extract report.                  !!00379
                                                                       !00380
    02  BASE-RPT-NUM            TYPE BINARY 16.                        !00381
                                                                       !00382
*           Individual extract report file number.                    !!00383
                                                                       !00384
    02  EXTR-RPT-NUM            TYPE BINARY 16.                        !00385
                                                                       !00386
*           Individual extract report line count.                     !!00387
                                                                       !00388
    02  EXTR-RPT-LINE-CNT       TYPE BINARY 16.                        !00389
                                                                       !00390
*           Individual extract report error number.                   !!00391
                                                                       !00392
    02  EXTR-RPT-ERROR          TYPE BINARY 16.                        !00393
                                                                       !00394
*           Date of the log file in which pointers are to be          !!00395
*           reset.                                                    !!00396
                                                                       !00397
    02  RESET-DAT               PIC X(6).                              !00398
                                                                       !00399
*           Date of the log file which a status command is            !!00400
*           to report on.                                             !!00401
                                                                       !00402
    02  STAT-DAT                REDEFINES RESET-DAT                    !00403
                                PIC X(6).                              !00404
                                                                       !00405
*           The LOGICAL NETWORK ID.                                   !!00406
                                                                       !00407
    02  LOGICAL-NET             PIC X(4).                              !00408
                                                                       !00409
*           The ACCT-NUM-TYPE value from the LCONF.                   !!00410
                                                                       !00411
    02  ACCT-NUM-TYP            PIC X.                                 !00412
                                                                       !00413
*           The DATE-DISPLAY-TYPE value from the LCONF.               !!00414
                                                                       !00415
    02  DAT-DSPY-TYP            PIC X.                                 !00416
                                                                       !00417
                                                                       !00418
*                                                                     !!00419
*           An indicator that specifies the tape volume identifier    !!00420
*           of the initial tape that the Super Extract module         !!00421
*           will process                                              !!00422
*                                                                     !!00423
    02  VOL-ID                  PIC X(6).                              !00424
                                                                       !00425
*                                                                     !!00426
*           An indicator that specifies the number of the partial     !!00427
*           extract that the extract process should begin at when     !!00428
*           performing a re-extract of a transaction log file.        !!00429
*                                                                     !!00430
    02  STRT-PARTIAL            TYPE BINARY 16.                        !00431
                                                                       !00432
*                                                                     !!00433
*           An indicator that specifies the number of the partial     !!00434
*           extract that the extract process should stop at when      !!00435
*           performing a re-extract of a transaction log file.        !!00436
*                                                                     !!00437
    02  END-PARTIAL             TYPE BINARY 16.                        !00438
                                                                       !00439
    END.                                                               !00440
?PAGE "TRH - Extract Record Header Format (Binary)"
                                                                       !00443
?SECTION TRH
*#####################################################################!!00446
                                                                       !00447
*#   TRH - Extract Tape Record Header Format (Binary)                #!!00448
                                                                       !00449
*#####################################################################!!00450
                                                                       !00451
?comments
                                                                       !00454
                                                                       !00455
                                                                       !00456
*                                                                     !!00457
*              These fields are appended to the beginning of each     !!00458
*              extract record for which numeric fields are written    !!00459
*              in binary (the NUMERIC-FLD-FRMT field in the Base      !!00460
*              segment of the ECF is set to B).                       !!00461
*                                                                     !!00462
DEFINITION TRH.                                                        !00463
                                                                       !00464
*               A Binary representation of the length of the record   !!00465
*               being extracted plus the length of the header.        !!00466
                                                                       !00467
    02  LGTH                    TYPE BINARY 16.                        !00468
                                                                       !00469
*               System fields filled with null values.                !!00470
                                                                       !00471
    02  SYS-FLD                 TYPE BINARY 16.                        !00472
                                                                       !00473
*               The type of record.  Values are:                      !!00474
*                                                                     !!00475
*               TH = Tape header                                      !!00476
*               FH = File header                                      !!00477
*               CF = Continuation record - first                      !!00478
*               CL = Continuation record - last                       !!00479
*               CR = Continuation record - intermediate               !!00480
*               DR = Data record                                      !!00481
*               ER = Error record                                     !!00482
*               TR = Truncation record - intermediate                 !!00483
*               FT = File trailer                                     !!00484
*               TT = Tape trailer.                                    !!00485
*                                                                     !!00486
    02  TYP                     PIC X(2).                              !00487
END.                                                                   !00488
                                                                       !00489
                                                                       !00490
?nocomments
?PAGE "TRHA - Extract Record Header Format (Ascii)"
?SECTION TRHA
*#####################################################################!!00497
*#   TRHA - Extract Tape Record Header Format (Ascii)                #!!00498
*#####################################################################!!00499
                                                                       !00500
?comments
                                                                       !00503
*                                                                     !!00504
*              These fields are appended to the beginning of each     !!00505
*              extract record for which numeric fields are written    !!00506
*              in ASCII (the NUMERIC-FLD-FRMT field in the Base       !!00507
*              segment of the ECF is set to A).                       !!00508
*                                                                     !!00509
DEFINITION TRHA.                                                       !00510
                                                                       !00511
*              An ASCII numeric representation of the length of the   !!00512
*              record being extracted plus the length of this header. !!00513
                                                                       !00514
    02  LGTH                    PIC 9(6).                              !00515
                                                                       !00516
*                                                                     !!00517
*               The type of record.  Values are:                      !!00518
*                                                                     !!00519
*               TH = Tape header                                      !!00520
*               FH = File header                                      !!00521
*               CF = Continuation record - first                      !!00522
*               CL = Continuation record - last                       !!00523
*               CR = Continuation record - intermediate               !!00524
*               DR = Data record                                      !!00525
*               ER = Error record                                     !!00526
*               TR = Truncation record - intermediate                 !!00527
*               FT = File trailer                                     !!00528
*               TT = Tape trailer.                                    !!00529
*                                                                     !!00530
    02  TYP                     PIC X(2).                              !00531
                                                                       !00532
    END.                                                               !00533
?nocomments
?PAGE "XH - Extract Header Format"
?SECTION XH
                                                                       !00540
*#####################################################################!!00541
*#    XH - Extract Header Format                                     #!!00542
*#####################################################################!!00543
?comments
                                                                       !00546
                                                                       !00547
                                                                       !00548
*                                                                     !!00549
*              The file header identifies the file whose extracted    !!00550
*              records follow.                                        !!00551
*                                                                     !!00552
*              Since the file header contains no binary fields, the   !!00553
*              binary/ASCII and ASCII-only formats are the same.      !!00554
*                                                                     !!00555
DEFINITION XH.                                                         !00556
                                                                       !00557
                                                                       !00558
*                                                                     !!00559
*              Not used.  This field contains a blank.                !!00560
*                                                                     !!00561
    02  CHAR-SET                PIC X.                                 !00562
                                                                       !00563
                                                                       !00564
*                                                                     !!00565
*              The date (YYMMDD) of the extracted file.  If the       !!00566
*              extracted file is not a dated file, such as the        !!00567
*              Institution Definition File (IDF), this field contains !!00568
*              the date the file header record was created.           !!00569
*                                                                     !!00570
    02  EXTRACT-DAT             TYPE DAT.                              !00571
                                                                       !00572
                                                                       !00573
*                                                                     !!00574
*              The time (HHMMSSHH) the file header record was created.!!00575
*                                                                     !!00576
    02  EXTRACT-TIM             TYPE TIM.                              !00577
                                                                       !00578
                                                                       !00579
*                                                                     !!00580
*              The identifier assigned to the logical network in which!!00581
*              the file being extracted resides.                      !!00582
*                                                                     !!00583
    02  LN                      TYPE *.                                !00584
                                                                       !00585
                                                                       !00586
*                                                                     !!00587
*              The BASE24 software release number indicating the      !!00588
*              release of the software with which the extracted file  !!00589
*              is compatible.  The value in this field is set from the!!00590
*              value in the REL-NUM field in the various product      !!00591
*              segments of the Extract Configuration File (RELEASE NUM!!00592
*              fields on the respective ECF product screens).         !!00593
*                                                                     !!00594
    02  REL-NUM                 PIC 9(2).                              !00595
                                                                       !00596
                                                                       !00597
                                                                       !00598
                                                                       !00599
*                                                                     !!00600
*              A file mnemonic indicating the file that was extracted.!!00601
*              The entry in this field is left-justified and blank-   !!00602
*              filled.  Valid values are:                             !!00603
*                                                                     !!00604
                                                                       !00605C00
                                                                       !00605C01
                                                                       !00605C02
*              HMBF = Host Mail Box File                              !!00607
*              HSF  = Hardware Status File                            !!00608
*              ICF  = Interchange Configuration File                  !!00609
                                                                       !00609C00
*              ICFE = Enhanced Interchange Configuration File          !00609C01
                                                                       !00609C02
*              IDF  = Institution Definition File                     !!00610
*              ILF  = Interchange Log File                            !!00611
                                                                       !00611B00
*              ITLF = ITS Transaction Log File                         !00611B01
                                                                       !00611B02
                                                                       !00611C00
                                                                       !00611C01
                                                                       !00611C02
                                                                       !00612C00
                                                                       !00612C01
                                                                       !00612C02
*              MBF  = Mail Box File                                   !!00614
                                                                       !00615C00
                                                                       !00615C01
*              MEMO = Memo File                                       !!00616
                                                                       !00616C00
                                                                       !00616C01
                                                                       !00616C02
                                                                       !00617C00
                                                                       !00617C01
                                                                       !00617C02
*              OMF  = Online Maintenance File                         !!00619
                                                                       !00620C00
                                                                       !00620C01
*              PRDF = POS Retailer Definition File                    !!00621
                                                                       !00622C00
                                                                       !00622C01
*              PTLF = POS Transaction Log File                        !!00623
                                                                       !00624C00
                                                                       !00624C01
*              SAF  = Store-and-Forward File                          !!00625
                                                                       !00625F00
*              SVHF = Stored Value History File                        !00625F01
                                                                       !00625F02
                                                                       !00625B00
                                                                       !00625B01
                                                                       !00625B02
*              TLF  = Transaction Log File                            !!00626
*              TTF  = Teller Transaction File                         !!00627
*              TTLF = Teller Transaction Log File                     !!00628
*              ULF  = Update Log File                                 !!00629
*                                                                     !!00630
    02  FILE-ID                 PIC X(8).                              !00631
                                                                       !00632
                                                                       !00633
*                                                                     !!00634
*              The fully-expanded file name of the extracted file for !!00635
*              files other than the Interchange Log File (ILF).       !!00636
*                                                                     !!00637
*              This field contains blanks for ILF extracts because    !!00638
*              records from more than one ILF can be placed between a !!00639
*              single pair of extract file header and trailer records.!!00640
*              As a result, the name of a single ILF would not be     !!00641
*              accurate.                                              !!00642
*                                                                     !!00643
    02  NAME                    TYPE FNAME.                            !00644
                                                                       !00645
                                                                       !00646
*                                                                     !!00647
*              Miscellaneous information, depending on the file being !!00648
*              extracted.  This information is not present in the file!!00649
*              header except as noted below.                          !!00650
*                                                                     !!00651
*              ILF/TLF/TTLF--the USER-FLD1 field contains the values  !!00652
*              of the following LCONF params, in order:               !!00653
*                                                                     !!00654
                                                                       !00654D00
*              File format: 1 = format 1 files ( default )            !!00654D01
*                           2 = format 2 files                        !!00654D02
*                                                                     !!00654D03
                                                                       !00654D04
*              byte 1 = ACCT-NUM-TYP param                            !!00655
*              byte 2 = DATE-DISPLAY-TYPE param                       !!00656
*              byte 3 = blank                                         !!00657
                                                                       !00658D00
*              byte 4 = FILE-FRMT  ( Default = 1 )                    !!00658D01
                                                                       !00658D02
*                                                                     !!00659
                                                                       !00659D00
*              PRDF/PTLF   -- the USER-FLD1 contains the values of the!!00659D01
                                                                       !00659D02
                                                                       !00660D00
                                                                       !00660D01
                                                                       !00660D02
                                                                       !00660C03
*              following LCONF params, in order:                      !!00661
*                                                                     !!00662
*              byte 1 = ACCT-NUM-TYP param                            !!00663
*              byte 2 = DATE-DISPLAY-TYPE param                       !!00664
                                                                       !00665D00
                                                                       !00665D01
*              byte 3 = "2"                                           !!00665D02
*              byte 4 = FILE-FRMT   ( Default = 1 )                   !!00665D03
                                                                       !00665D04
*                                                                     !!00667
*              NOTE:  If the above information is present on the tape,!!00668
                                                                       !00669D00
*              it is only four bytes in length (the entire 17 bytes is!!00669D01
                                                                       !00669D02
*              not used).  If the above information is not required   !!00670
*              for the extract, this field is not included in the file!!00671
                                                                       !00672D00
*              header record unless it is a format 2 file.*           !!00672D01
                                                                       !00672D02
    02  USER-FLD1               PIC X(18).                             !00673
                                                                       !00674
    END.                                                               !00675
?nocomments
?PAGE "XT - Extract Trailer Format (Binary)"
                                                                       !00680
?SECTION XT
*#####################################################################!!00683
                                                                       !00684
*#    XT - Extract Trailer Format (Binary)                           #!!00685
                                                                       !00686
*#####################################################################!!00687
?comments
                                                                       !00690
                                                                       !00691
                                                                       !00692
                                                                       !00693
                                                                       !00694
*                                                                     !!00695
*              The file trailer signals the end of the extract records!!00696
*              for a particular file.  It contains a verification     !!00697
*              count and amount that can be used by hosts to check    !!00698
*              their processing.                                      !!00699
*                                                                     !!00700
*              There are two formats for extract records: binary/ASCII!!00701
*              and ASCII-only.  The format used is specified by the   !!00702
*              value in the NUMERIC FLD FORMAT field on Extract       !!00703
*              Configuration File (ECF) screen 1.  The ASCII-only     !!00704
*              option allows all binary fields on the tape to be      !!00705
*              converted to ASCII character format.  If the value in  !!00706
*              the NUMERIC FLD FORMAT field is set to B, Super Extract!!00707
*              uses the binary format.  If the value in the NUMERIC   !!00708
*              FLD FORMAT field is set to A, Super Extract uses the   !!00709
*              ASCII character format.                                !!00710
*                                                                     !!00711
*              The fields in the binary format are described below.   !!00712
*                                                                     !!00713
DEFINITION XT.                                                         !00714
                                                                       !00715
                                                                       !00716
                                                                       !00717
                                                                       !00718
*                                                                     !!00719
*              The file mnemonic of the file being extracted.  The    !!00720
*              entry in this field is left-justified and blank-filled.!!00721
*              Valid values for this field are the same as those for  !!00722
*              the FILE-ID field in the file header record.           !!00723
*                                                                     !!00724
    02  FILE-ID                 PIC X(8).                              !00725
                                                                       !00726
                                                                       !00727
*                                                                     !!00728
*              The fully-expanded file name of the extracted file.    !!00729
*                                                                     !!00730
    02  NAME                    TYPE FNAME.                            !00731
*                                                                     !!00732
*              This field is not used.                                !!00733
*                                                                     !!00734
    02  USER-FLD1               PIC X.                                 !00735
                                                                       !00736
                                                                       !00737
*                                                                     !!00738
*              A code indicating non-system errors.  A zero indicates !!00739
*              that no error has occurred; any other value indicates  !!00740
*              that an error has occurred.                            !!00741
*                                                                     !!00742
    02  STAT                    TYPE BINARY 16.                        !00743
                                                                       !00744
                                                                       !00745
*                                                                     !!00746
*              A total kept by Super Extract during the processing of !!00747
*              the records.  The value in this field is normally set  !!00748
*              to 0.  The table below identifies the files for which  !!00749
*              this field contains a total and indicates the values   !!00750
*              that are included in the total:                        !!00751
*                                                                     !!00752
*              ILF  = Sum of the values in ATM.RQST.AMT-1 fields for  !!00753
*                     BASE24-atm records (BASE24-atm records are      !!00754
*                     identified by a value of 1 in the REC-TYP       !!00755
*                     field).                                         !!00756
*              ILF  = Sum of the values in POS.TRAN.AMT-1 fields for  !!00757
*                     BASE24-pos records (BASE24-pos records are      !!00758
*                     identified by a value of 2 in the REC-TYP       !!00759
*                     field).                                         !!00760
*              PTLF = Sum of the values in AUTH.AMT-1 fields for all  !!00761
*                     records with a value of 0210, 0220, 0412, or    !!00762
*                     0420 in the AUTH.TYP field.  Note that if the   !!00763
*                     HEAD.REC-TYP field contains the value 23,       !!00764
*                     indicating the PTLF record contains invalid     !!00765
*                     data, the AUTH.AMT-1 field for the record is not!!00766
*                     included in the total.                          !!00767
                                                                       !00768C00
                                                                       !00768C01
                                                                       !00768C02
*              TLF  = Sum of the values in AUTH.AMT-1 fields for all  !!00771
*                     records with values of 01, 20, 21, or 22 in the !!00772
*                     HEAD.REC-TYP field.                             !!00773
*              TTLF = Sum of the values in AMT-1 fields of the        !!00774
*                     Financial Token for all records with a value of !!00775
*                     0210,-200420, or 0430 in the SYS.MSG-TYP field. !!00776
*                                                                     !!00777
    02  AMT                     TYPE BINARY 64.                        !00778
                                                                       !00779
                                                                       !00780
*                                                                     !!00781
*              The number of file records extracted.  This number does!!00782
*              not include the file header and trailer records.       !!00783
*                                                                     !!00784
    02  CNT                     TYPE BINARY 32.                        !00785
                                                                       !00786
                                                                       !00787
*                                                                     !!00788
*              For extracts of the TLF, PTLF, and TTLF, the first 20  !!00789
*              bytes of this field contain the date and time          !!00790
*              (YYYYMMDDHHMMSSMMMMMM) of the last record extracted    !!00791
*              from the file.*                                        !!00792
    02  USER-FLD2               PIC X(330).                            !00793
                                                                       !00794
    END.                                                               !00795
?nocomments
                                                                       !00798
?PAGE "XTA - Extract Trailer Format (Ascii)"
?SECTION XTA
*#####################################################################!!00803
*#    XTA - Extract Trailer Format (Ascii)                           #!!00804
*#####################################################################!!00805
?comments
                                                                       !00808
                                                                       !00809
*                                                                     !!00810
*              The file trailer signals the end of the extract records!!00811
*              for a particular file.  It contains a verification     !!00812
*              count and amount that can be used by hosts to check    !!00813
*              their processing.                                      !!00814
*                                                                     !!00815
*              There are two formats for extract records: binary/ASCII!!00816
*              and ASCII-only.  The format used is specified by the   !!00817
*              value in the NUMERIC FLD FORMAT field on Extract       !!00818
*              Configuration File (ECF) screen 1.  The ASCII-only     !!00819
*              option allows all binary fields on the tape to be      !!00820
*              converted to ASCII character format.  If the value in  !!00821
*              the NUMERIC FLD FORMAT field is set to B, Super Extract!!00822
*              uses the binary format.  If the value in the NUMERIC   !!00823
*              FLD FORMAT field is set to A, Super Extract uses the   !!00824
*              ASCII character format.                                !!00825
*                                                                     !!00826
*              The fields in the binary format are described below.   !!00827
*                                                                     !!00828
DEFINITION XTA.                                                        !00829
                                                                       !00830
                                                                       !00831
                                                                       !00832
                                                                       !00833
*                                                                     !!00834
*              The file mnemonic of the file being extracted.  The    !!00835
*              entry in this field is left-justified and blank-filled.!!00836
*              Valid values for this field are the same as those for  !!00837
*              the FILE-ID field in the file header record.           !!00838
*                                                                     !!00839
    02  FILE-ID                 PIC X(8).                              !00840
                                                                       !00841
                                                                       !00842
*                                                                     !!00843
*              The fully-expanded file name of the extracted file.    !!00844
*                                                                     !!00845
    02  NAME                    TYPE FNAME.                            !00846
*                                                                     !!00847
*              This field is not used.                                !!00848
*                                                                     !!00849
    02  USER-FLD1               PIC X.                                 !00850
                                                                       !00851
                                                                       !00852
*                                                                     !!00853
*              A code indicating non-system errors.  A zero indicates !!00854
*              that no error has occurred; any other value indicates  !!00855
*              that an error has occurred.                            !!00856
*                                                                     !!00857
    02  STAT                    PIC 9(5).                              !00858
                                                                       !00859
                                                                       !00860
*                                                                     !!00861
*              A total kept by Super Extract during the processing of !!00862
*              the records.  The value in this field is normally set  !!00863
*              to 0.  The table below identifies the files for which  !!00864
*              this field contains a total and indicates the values   !!00865
*              that are included in the total:                        !!00866
*                                                                     !!00867
*              ILF  = Sum of the values in ATM.RQST.AMT-1 fields for  !!00868
*                     BASE24-atm records (BASE24-atm records are      !!00869
*                     identified by a value of 1 in the REC-TYP       !!00870
*                     field).                                         !!00871
*              ILF  = Sum of the values in POS.TRAN.AMT-1 fields for  !!00872
*                     BASE24-pos records (BASE24-pos records are      !!00873
*                     identified by a value of 2 in the REC-TYP       !!00874
*                     field).                                         !!00875
*              PTLF = Sum of the values in AUTH.AMT-1 fields for all  !!00876
*                     records with a value of 0210, 0220, 0412, or    !!00877
*                     0420 in the AUTH.TYP field.  Note that if the   !!00878
*                     HEAD.REC-TYP field contains the value 23,       !!00879
*                     indicating the PTLF record contains invalid     !!00880
*                     data, the AUTH.AMT-1 field for the record is not!!00881
*                     included in the total.                          !!00882
                                                                       !00883C00
                                                                       !00883C01
                                                                       !00883C02
*              TLF  = Sum of the values in AUTH.AMT-1 fields for all  !!00886
*                     records with values of 01, 20, 21, or 22 in the !!00887
*                     HEAD.REC-TYP field.                             !!00888
*              TTLF = Sum of the values in AMT-1 fields of the        !!00889
*                     Financial Token for all records with a value of !!00890
*                     0210,-200420, or 0430 in the SYS.MSG-TYP field. !!00891
*                                                                     !!00892
    02  AMT                     PIC X(19).                             !00893
                                                                       !00894
                                                                       !00895
*                                                                     !!00896
*              The number of file records extracted.  This number does!!00897
*              not include the file header and trailer records.       !!00898
*                                                                     !!00899
    02  CNT                     PIC 9(10).                             !00900
                                                                       !00901
                                                                       !00902
*                                                                     !!00903
*              For extracts of the TLF, PTLF, and TTLF, the first 20  !!00904
*              bytes of this field contain the date and time          !!00905
*              (YYYYMMDDHHMMSSMMMMMM) of the last record extracted    !!00906
*              from the file.*                                        !!00907
    02  USER-FLD2               PIC X(330).                            !00908
                                                                       !00909
    END.                                                               !00910
                                                                       !00910C00
                                                                       !00910C01
                                                                       !00913C00
                                                                       !00913C01
                                                                       !00913C02
