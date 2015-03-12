**FIX2.28  12/23/11  DDLGSTM 6010 DDL    BA60DDL  BA0F071  J                 ***
**FIX2.28  12/22/09  DDLGSTM 6009 DDL    BA60DDL  BA0D310  I                 ***
**FIX2.28  12/04/07  DDLGSTM 6008 DDL    BA60DDL  BA0B311  H                 ***
**FIX2.28  11/23/06  DDLGSTM 6007 DDL    BA60DDL  BA0A316  G                 ***
**FIX2.24  11/18/04  DDLGSTM 6006 DDL    BA60DDL  BA08217  F                 ***
**FIX2.22  10/25/02  DDLGSTM 6005 DDL    BA60DDL  BA06113  E                 ***
**SEQ0.04  11/01/00  DDLGSTM 6004 DDL    BA60DDL  BA04000  D                 ***
**SYNC.04  12/09/98  DDLGSTM 5304 DDL    BA53DDL  BA04000  D                 ***
**FIX2.03  08/28/98  DDLGSTM 5304 DDL    BA53DDL  BA03000  D                 ***
**FIX2.04  11/24/97  DDLGSTM 5104 DDL    BA51DDL  BA03028  D                 ***
**SYNC.03  08/22/97  DDLGSTM 5103 DDL    BA51DDL  BA03000  C                 ***
**SYNC.02  06/25/96  DDLGSTM 5103 DDL    BA51DDL  BA02000  C                 ***
**FIX2.00  06/06/95  DDLGSTM 5103 DDL    BA51DDL  BA51039  C                 ***
**FIX2.00  09/23/93  DDLGSTM 5102 DDL    BA51DDL  BA50241  B                 ***
**FIX2.00  12/17/92  DDLGSTM 5001 DDL    BA50DDL  BA50018  A                 ***
!*SEQ2.00  10/20/92  DDLGSTM 5000 DDL    BA50DDL                               !
                                                                       !00000I00
********************************************************************** !00000I01
*                                                                    * !00000I02
*                               BASE24                               * !00000I03
*                               ------                               * !00000I04
*                                                                    * !00000I05
*                 BASE24 Standard Internal Message                   * !00000I06
*                                                                    * !00000I07
*                   Proprietary Software Product                     * !00000I08
*                                                                    * !00000I09
*                        ACI Worldwide, Inc.                         * !00000I0A
*                        6060 Coventry Drive                         * !00000I0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000I0C
*                          (402) 390-7600                            * !00000I0D
*                                                                    * !00000I0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000I0F
*                                                                    * !00000I0G
*    All Rights Reserved.                                            * !00000I0H
*                                                                    * !00000I0I
********************************************************************** !00000I0J
?nocomments
?PAGE "STM - Standard Internal Message Format"
?SECTION STM
************************************************************************
*                         History Section                              *
*----------------------------------------------------------------------*
                                                                       !00000I0W
                                                                       !00000C00
                                                                       !00000C01
                                                                       !00000C02
*   92/12/15       RRC                                                 !00216A03
*   SYMPTOM:       None                                                !00216A04
*   PROBLEM:       None                                                !00216A05
*   FIX:           Updated comments.                                   !00216A06
*   DEPENDENCIES:  None                                                !00216A07
*   REFERENCE:     None                                                !00216A08
                                                                       !00216B00
                                                                       !00216B01
*   93/09/22       RRC                                                 !00216B02
*   SYMPTOM:       Incorrect DDL comments.                             !00216B03
*   PROBLEM:       None.                                               !00216B04
*   FIX:           Clarified the comments for the RESP fields.         !00216B05
*   DEPENDENCIES:  None.                                               !00216B06
*   REFERENCE:     None.                                               !00216B07
                                                                       !00216C00
                                                                       !00216C01
                                                                       !00216B0A
                                                                       !00216A0B
                                                                       !00216C02
*********************************************************************  !00216C03
*                  RELEASE 5.1                                      *  !00216C04
*********************************************************************  !00216C05
* 01JUN95     JMS/583                                                  !00216C06
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00216C07
* PROBLEM:    <E> None.                                                !00216C08
* FIX:        Removed old history sections not associated with a       !00216C09
*             specific Fix level.                                      !00216C0A
* IMPLEMENT:  None.                                                    !00216C0B
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00216C0C
                                                                       !00216C0D
                                                                       !00216D00
* 01OCT1997   KJH/176   BH/177                                         !00216D01
* Symptom:    BASE24 VISA Cash Enhancement.                            !00216D02
* Problem:    None.                                                    !00216D03
* Fix:        (1) Added trancodes 41,U1.                               !00216D04
*             (2) Added account type code 70.                          !00216D05
*             (3) Added reversal codes 30 and 31.                      !00216D06
* Dependency: Apply fix and remake.                                    !00216D07
* Reference:  WO #970709-2.                                            !00216D08
                                                                       !00216D09
                                                                       !00216E00
* 11OCT2002   SG/302                                                   !00216E01
* Symptom:    Offline PIN Management Enhancement 02.                   !00216E02
* Problem:    None.                                                    !00216E03
* Fix:        Added EMV PIN Unblock transaction code and description   !00216E04
*             as part of comment to field TRAN-CDE.                    !00216E05
* Dependency: Apply fix to ATBICIS, ATHISOG, ATHISOS, AUTHG, AUTHS,    !00216E06
*             AUTHTBL, BALIBTBL, COBNAMES, DDLACNST, DDLBCNST,         !00216E07
*             DDLFTLF, DDLGSTM, DDLGTLFX, SVTLFS, TLFS and run MAKE.   !00216E08
* Reference:  WO #020707-15                                            !00216E09
                                                                       !00216F00
* 15OCT2004   McGeorC                                                  !00216F01
* Symptom:    Mobile Top-Up Enhancement                                !00216F02
* Problem:    None                                                     !00216F03
* Fix:        Added a new value for RVSL-CDE.                          !00216F04
* Dependency: Apply fixes to DDLGSTM and run Make.                     !00216F05
*             Refer to BA60UD08.SCNMTOP for a complete listing of      !00216F06
*             dependencies.                                            !00216F07
* Reference:  WO #031001-03                                            !00216F08
                                                                       !00216F09
* 15OCT2004   AldersR                                                  !00216F0A
* Symptom:    Forward Declined Advices to Host                         !00216F0B
* Problem:    None                                                     !00216F0C
* Fix:        Modified comments to  COMPL-REQ.                         !00216F0D
* Dependency: Apply fix to DDLGSTM and run MAKE.                       !00216F0E
*             Refer to BA60UD08.SCNFORW for a complete listing of      !00216F0F
*             dependencies.                                            !00216F0G
* Reference:  WO #040406-01                                            !00216F0H
                                                                       !00216F0I
                                                                       !00216G00
* 14OCT2006   steffej                                                  !00216G01
* Symptom:    Completion Messages Configuration Enhancement            !00216G02
* Problem:    None.                                                    !00216G03
* Fix:        Modified comments for COMPL-REQ for new values 5 and 6.  !00216G04
* Dependency: Apply fix to DDLGSTM and run Make.                       !00216G05
*             Refer to BA60UD0A.SCNCOMP for a complete listing of      !00216G06
*             dependencies.                                            !00216G07
* Reference:  WO #060417-02                                            !00216G08
*                                                                      !00216G09
* 14OCT2006   Steffej                                                  !00216G0A
* Symptom:    The description for the TRACK2 is not correct.           !00216G0B
* Problem:    The description for the TRACK2 is not correct.           !00216G0C
* Fix:        Modified comments to indicate the blanks to fill the     !00216G0D
*             field should follow the end sentinel, not precede it.    !00216G0E
* Dependency: Apply fix to DDLGSTM and run Make.                       !00216G0F
* Reference:  Case #420626                                             !00216G0G
                                                                       !00216G0H
                                                                       !00216H00
* 12OCT2007   WisharJ                                                  !00216H01
* Symptom:    Shared NDC+ BNA Support                                  !00216H02
* Problem:    None.                                                    !00216H03
* Fix:        Amended comments for the dep-typ field and avail-dep-typ !00216H04
*             field to include the new value of '4' for a BNA          !00216H05
*             depository.                                              !00216H06
* Dependency: Apply fixes to DDLGSTM and run Make.                     !00216H07
*             Refer to BA60UD0B.SCNWNBN for a complete listing of      !00216H08
*             dependencies.                                            !00216H09
* Reference:  WO #051129-01                                            !00216H0A
                                                                       !00216H0B
                                                                       !00216I00
* 06NOV2009   BhattaD                                                  !00216I01
* Symptom:    ATM Bulk Check Infrastructure Support.                   !00216I02
* Problem:    None.                                                    !00216I03
* Fix:        Modified the description of the avail-dep-typ and        !00216I04
*             dep-typ STM fields to allow a new value of "5" for Bulk  !00216I05
*             Check Depository.                                        !00216I06
* Dependency: Apply fix to DDLGSTM and run Make. Refer to              !00216I07
*             BA60UD0D.SCNBCA for a complete listing of dependencies.  !00216I08
* Reference:  WO #090227-01                                            !00216I09
                                                                       !00216I0A
                                                                       !00216J00
* 20DEC2011   WisharJ                                                  !00216J01
* Symptom:    BASE24 Migration Enhancements                            !00216J02
* Problem:    The ACCT structure redefines the RQST structure in the   !00216J03
*             STM. When ATM Auth builds a "9906" multiple account      !00216J04
*             selection message, the ACCT structure is used, so there  !00216J05
*             is no longer a trace number in the "9906" message. The   !00216J06
*             trace number is required by ATM HISO when sending the    !00216J07
*             message to BASE24-eps.                                   !00216J08
*             Also, new values can be present in the rte.stat field.   !00216J09
* Fix:        Use the first 6 bytes of the ACCT.SAVE-AREA to hold the  !00216J0A
*             trace number. Documented new stat values.                !00216J0B
* Dependency: Apply fixes to DDLGSTM, AUTHS and ATHISOS.  Run Make.    !00216J0C
*             Refer to BA60UD0F.SCNMIGR2 for a complete listing of     !00216J0D
*             dependencies.                                            !00216J0E
* Reference:  WO #050513-02                                            !00216J0F
                                                                       !00216J0G
                                                                       !00216E0A
                                                                       !00216C0E
                                                                       !00219C00
*******************************************************************   !
                                                                       !00219C03
*                 STANDARD INTERNAL MESSAGE, BASE24-atm               !!00220
*                                                                     !!00221
*******************************************************************   !!00222
                                                                       !00223
?comments
*                                                                     !!00226
*            The STM is created by one of the entry points into       !!00227
*            BASE24-atm:  device handler, host interface or           !!00228
*            switch (interchange) process.  It is zero-filled         !!00229
*            in all fields to start with;  fields are loaded          !!00230
*            during transaction processing as described below.        !!00231
*                                                                     !!00232
DEFINITION STM.                                                        !00233
                                                                       !00234
*                                                                     !!00235
*              Indicates the type of message described by the STM.    !!00236
*              Values are:                                            !!00237
*                                                                     !!00238
*              0200 = Financial Transaction Request                   !!00239
*              0205 = Statement Print Request                         !!00240
*              0210 = Financial Transaction Request Response          !!00241
*              0220 = Completion/Financial Transaction Advice         !!00242
*              0230 = Financial Transaction Advice Response           !!00243
*              0420 = Reversal Advice                                 !!00244
*              5400 = Adjustment                                      !!00245
*              9906 = Account data for account selection              !!00246
*              9907 = Card review account selection                   !!00247
*              9980 = Informational--money in drawer                  !!00248
*                                                                     !!00249
*              This field is set by the Device Handler, Authorization,!!00250
*              Interchange Interface, or Host Interface process.      !!00251
*                                                                     !!00252
  02 TYP                       PIC 9(4).                               !00253
                                                                       !00254
                                                                       !00255
                                                                       !00256
*                                                                     !!00257
*              Indicates the BASE24 product originating this          !!00258
*              transaction.  For BASE24-atm transactions, this field  !!00259
*              is set to 01.                                          !!00260
*                                                                     !!00261
*              This field is set by the Device Handler, Interchange   !!00262
*              Interface, or Host Interface process.                  !!00263
*                                                                     !!00264
  02 PROD-ID                   TYPE *.                                 !00265
                                                                       !00266
                                                                       !00267
                                                                       !00268
                                                                       !00269
                                                                       !00270
*                                                                     !!00271
*              The Data Processing Center (DPC) number identifying the!!00272
*              DPC to which the transaction is to be sent.            !!00273
*                                                                     !!00274
*              This field is set by the Authorization process using   !!00275
*              the RT-TBL.PRI-DPC field in the BASE24-atm segment of  !!00276
*              the IDF.  The Host Interface process uses this field to!!00277
*              identify the DPC to receive the message.               !!00278
*                                                                     !!00279
  02 DPC-NUM                   TYPE BINARY 16.                         !00280
                                                                       !00281
                                                                       !00282
                                                                       !00283
                                                                       !00284
                                                                       !00285
                                                                       !00286
                                                                       !00287
                                                                       !00288
                                                                       !00289
                                                                       !00290
*                                                                     !!00291
*              The type of transaction.  The following codes are      !!00292
*              supported by BASE24-atm; but be aware that not all of  !!00293
*              the codes listed are supported by all ATMs.  Values    !!00294
*              are:                                                   !!00295
*                                                                     !!00296
*              03 = Check Guarantee                                   !!00297
*              04 = Check Verify                                      !!00298
*              10 = Withdrawal                                        !!00299
*              11 = Cash Check                                        !!00300
*              20 = Deposit                                           !!00301
*              24 = Deposit with Cash Back                            !!00302
*              30 = Balance Inquiry                                   !!00303
*              40 = Transfer                                          !!00304
                                                                       !00304D00
*              41 = Load Value                                         !00304D01
                                                                       !00304D02
*              50 = Payment from/to                                   !!00305
*              51 = Payment Enclosed                                  !!00306
*              60 = Message Enclosed to Financial Institution         !!00307
*              61 = Log Only                                          !!00308
*              62 = Card Review                                       !!00309
*              70 = Statement print                                   !!00310
*              81 = PIN change                                        !!00311
                                                                       !00311E00
*              82 = EMV PIN Unblock                                    !00311E01
                                                                       !00311E02
                                                                       !00311E03
                                                                       !00311E04
*              U1 = SVC Balance Inquiry                                !00311D01
                                                                       !00311D02
*                                                                     !!00312
  02 TRAN-CDE                  PIC X(2).                               !00313
                                                                       !00314
                                                                       !00315
                                                                       !00316
                                                                       !00317
                                                                       !00318
                                                                       !00319
                                                                       !00320
                                                                       !00321
*                                                                     !!00322
*              The type of from account.  Values are:                 !!00323
*                                                                     !!00324
*              01 = Checking                                          !!00325
*              11 = Savings                                           !!00326
*              31 = Credit                                            !!00327
                                                                       !00327D00
*              70 = Electronic Purse                                   !00327D01
                                                                       !00327D02
*                                                                     !!00328
*              NOTE: For log-only transactions, this field is used to !!00329
*              determine the type of log-only transaction that is     !!00330
*              being sent.  BASE24 supports up to four different types!!00331
*              of log-only transactions which are defined by the      !!00332
*              institution.  Values for log-only transactions are 01, !!00333
*              02, 03, and 04.                                        !!00334
*                                                                     !!00335
  02 FROM-ACCT-TYP             PIC X(2).                               !00336
                                                                       !00337
                                                                       !00338
                                                                       !00339
                                                                       !00340
                                                                       !00341
                                                                       !00342
                                                                       !00343
                                                                       !00344
*                                                                     !!00345
*              The type of to account.  Values are:                   !!00346
*                                                                     !!00347
*              01 = Checking                                          !!00348
*              11 = Savings                                           !!00349
*              31 = Credit                                            !!00350
                                                                       !00350D00
*              70 = Electronic Purse                                   !00350D01
                                                                       !00350D02
*                                                                     !!00351
   02 TO-ACCT-TYP              PIC X(2).                               !00352
                                                                       !00353
                                                                       !00354
*                                                                     !!00355
*              The following fields are used to route the messages to !!00356
*              the appropriate BASE24 processes.                      !!00357
*                                                                     !!00358
   02 RTE.                                                             !00359
                                                                       !00360
                                                                       !00361
                                                                       !00362
                                                                       !00363
                                                                       !00364
                                                                       !00365
*                                                                     !!00366
*              Indicates the status of a message at the system level. !!00367
*              Values are:                                            !!00368
*                                                                     !!00369
*              00 = No error                                          !!00370
*              01 = Processing error                                  !!00371
*              02 = Security device failure                           !!00372
*              11 = Time out after exit from BASE24                   !!00373
*              12 = Line down                                         !!00374
                                                                       !00374J00
*              35 = Alternate routed migration transaction             !00374J01
*              36 = 'Log only' migration transaction                   !00374J02
                                                                       !00374J03
*                                                                     !!00375
*              If this field is 00, the STM response code (the        !!00376
*              RQST.RESP field or the STMT-INFO.RESP field) is used to!!00377
*              determine the disposition of the message.   Nonzero    !!00378
                                                                       !00378J00
*              values indicate a failed message, except for the        !00378J01
*              values of "35" or "36" which are used only during       !00378J02
*              migration from BASE24 to BASE24-eps.                    !00378J03
                                                                       !00378J04
                                                                       !00379J00
                                                                       !00379J01
*                                                                     !!00380
*              This field is set by the Host Interface process and    !!00381
*              used by the Authorization process.                     !!00382
*                                                                     !!00383
     03 STAT                   PIC 99.                                 !00384
                                                                       !00385
                                                                       !00386
                                                                       !00387
*                                                                     !!00388
*              Indicates whether the transaction is on-us or not-on-  !!00389
*              us.  Values are:                                       !!00390
*                                                                     !!00391
*              0 = terminal-owner and card-issuer are the same (on-us)!!00392
*              1 = terminal-owner and card-issuer not the same (not-  !!00393
*                  on-us)                                             !!00394
*                                                                     !!00395
*              On-us means that the transaction was initiated by the  !!00396
*              institution's cardholder at one of the institution's   !!00397
*              terminals.                                             !!00398
*                                                                     !!00399
*              Not-on-us means that the transaction was initiated by  !!00400
*              the institution's cardholder from a different          !!00401
*              institution's terminal.                                !!00402
*                                                                     !!00403
*              To set this field, the Authorization process compares  !!00404
*              the TERM-OWNER-FIID field to the FIID field in the IDF,!!00405
*              and the TERM-LN field to the LOGICAL-NET param in the  !!00406
*              LCONF.  If both values match, this field is set to 0;  !!00407
*              otherwise, this field is set to 1.                     !!00408
*                                                                     !!00409
*              This field is used by the Authorization process to     !!00410
*              establish sharing parameters.  It is used by the Device!!00411
*              Handler process to determine if the transaction amount !!00412
*              should be written to the ON-US-CR or ON-US-DB fields in!!00413
*              the Terminal Data File (TDF).                          !!00414
*                                                                     !!00415
*              For transactions originating through an interchange,   !!00416
*              the Interchange Interface process sets this field to 1.!!00417
*                                                                     !!00418
     03 NOT-ON-US-FLG          PIC 9.                                  !00419
                                                                       !00420
                                                                       !00421
                                                                       !00422
*                                                                     !!00423
*              The symbolic name of the BASE24-atm process that       !!00424
*              received the transaction.  It is used by Authorization !!00425
*              processes for return routing.                          !!00426
*                                                                     !!00427
*              This field is set by the Device Handler, Host          !!00428
*              Interface, or Interchange Interface processes.         !!00429
*                                                                     !!00430
*              The symbolic name of the Device Handler process is     !!00431
*              placed in this field for transactions that originate   !!00432
*              from terminals connected to BASE24-atm.                !!00433
*                                                                     !!00434
*              The symbolic name of the Host Interface process is     !!00435
*              placed in this field for transactions from a host.     !!00436
*                                                                     !!00437
*              The symbolic name of the Interchange Interface process !!00438
*              is placed in this field for transactions from an       !!00439
*              interchange.                                           !!00440
*                                                                     !!00441
*              If a request cannot be handled by the Authorization    !!00442
*              process and must be routed elsewhere for authorization,!!00443
*              then the value of this field is moved to the RTE.HLD-  !!00444
*              ORIG-PRO-NAME field, and the symbolic name of the      !!00445
*              Authorization process routing the transaction is placed!!00446
*              in this field.                                         !!00447
*                                                                     !!00448
     03 ORIG-PRO-NAME          TYPE SYM-NAME.                          !00449
                                                                       !00450
                                                                       !00451
                                                                       !00452
*                                                                     !!00453
*              The symbolic name of the first BASE24-atm process to   !!00454
*              receive the transaction. It is used by the             !!00455
*              Authorization process for return routing.              !!00456
*                                                                     !!00457
*              If the Authorization process must route a transaction, !!00458
*              it moves the value of the RTE.ORIG-PRO-NAME field to   !!00459
*              this field and places its own symbolic name in the     !!00460
*              RTE.ORIG-PRO-NAME field.                               !!00461
*                                                                     !!00462
*              The RTE.ORIG-PRO-NAME field is then used for return    !!00463
*              routing to the Authorization process, and the RTE.HLD- !!00464
*              ORIG-PRO-NAME field is used by the Authorization       !!00465
*              process for return routing to the originating process. !!00466
*                                                                     !!00467
     03 HLD-ORIG-PRO-NAME      TYPE SYM-NAME.                          !00468
                                                                       !00469
                                                                       !00470
                                                                       !00471
*                                                                     !!00472
*              Indicates where the transaction originated.            !!00473
*                                                                     !!00474
*              This applies to request (0200) messages, completion    !!00475
*              (0220) messages, and reversal (0420) messages.   Values!!00476
*              are:                                                   !!00477
*                                                                     !!00478
*              1 = Device controlled by BASE24                        !!00479
*              2 = Device Handler process                             !!00480
*              3 = Authorization process                              !!00481
*              4 = Host Interface process                             !!00482
*              5 = Host                                               !!00483
*              6 = Interchange Interface process                      !!00484
*              7 = Interchange                                        !!00485
*                                                                     !!00486
*              This field is set by the Authorization, Device Handler,!!00487
*              Interchange Interface, or Host Interface process.  It  !!00488
*              is used by the BASE24 reporting programs to identify   !!00489
*              interchange transactions.                              !!00490
*                                                                     !!00491
     03 ORIGINATOR             PIC X.                                  !00492
                                                                       !00493
                                                                       !00494
                                                                       !00495
*                                                                     !!00496
*              Indicates where a response message (0210) was          !!00497
*              generated.  Values are:                                !!00498
*                                                                     !!00499
*              0 = Default, the response has not been generated yet   !!00500
*              1 = Device controlled by BASE24                        !!00501
*              2 = Device Handler                                     !!00502
*              3 = Authorization process                              !!00503
*              4 = Host Interface process                             !!00504
*              5 = Host                                               !!00505
*              6 = Interchange Interface process                      !!00506
*              7 = Interchange                                        !!00507
                                                                       !00507F00
*              S = Secondary Authorizer                                !00507F01
                                                                       !00507F02
*                                                                     !!00508
*              This field is set by the Authorization, Device Handler,!!00509
*              Interchange Interface, or Host Interface process.      !!00510
*                                                                     !!00511
     03 RESPONDER              PIC X.                                  !00512
                                                                       !00513
                                                                       !00514
                                                                       !00515
*                                                                     !!00516
*              A flag indicating the transaction could not be         !!00517
*              processed due to invalid data (e.g., invalid business  !!00518
*              date or Track 2 data).  This field is set by the       !!00519
*              Authorization process.  Values are:                    !!00520
*                                                                     !!00521
*              0      = Normal                                        !!00522
*              1 or 2 = Exception                                     !!00523
*                                                                     !!00524
     03 EXCPT-FLG              PIC X.                                  !00525
                                                                       !00526
                                                                       !00527
                                                                       !00528
                                                                       !00529
                                                                       !00530
*                                                                     !!00531
*              The card issuer's logical network.                     !!00532
*                                                                     !!00533
*              This field is set by the Authorization or Interchange  !!00534
*              Interface process.  The Authorization process sets this!!00535
*              field using the LOGICAL-NET param in the LCONF; the    !!00536
*              Interchange Interface process sets the field using the !!00537
*              LN field in the Base segment of the ICF.               !!00538
*                                                                     !!00539
  02 CRD-LN                    TYPE LN.                                !00540
                                                                       !00541
                                                                       !00542
                                                                       !00543
                                                                       !00544
                                                                       !00545
                                                                       !00546
                                                                       !00547
*                                                                     !!00548
*              The card issuer's routing/identification number.       !!00549
*                                                                     !!00550
*              For BASE24-atm card issuers, this field is set by the  !!00551
*              Authorization process  using the INST-ID-NUM field in  !!00552
*              the Base segment of the IDF.                           !!00553
*                                                                     !!00554
  02 RCV-INST-ID-NUM           TYPE ID-NUM.                            !00555
                                                                       !00556
                                                                       !00557
                                                                       !00558
                                                                       !00559
                                                                       !00560
                                                                       !00561
                                                                       !00562
*                                                                     !!00563
*              The identifier of the card-issuing institution.        !!00564
*                                                                     !!00565
*              If the Authorization process identifies the prefix of  !!00566
*              the card as being one that it can process, this field  !!00567
*              is set using the FIID field in the Base segment of the !!00568
*              CPF.                                                   !!00569
*                                                                     !!00570
*              The Interchange Interface process sets this field by   !!00571
*              using the ISSUER-ROUTING-NUM field in the SEM.         !!00572
*                                                                     !!00573
  02 CRD-FIID                  TYPE FIID.                              !00574
                                                                       !00575
                                                                       !00576
                                                                       !00577
                                                                       !00578
                                                                       !00579
                                                                       !00580
                                                                       !00581
*                                                                     !!00582
*              These fields identify the sharing groups of which the  !!00583
*              originating terminal is a part.  They are set by the   !!00584
*              Device Handler, Interchange Interface, or Host         !!00585
*              Interface process.                                     !!00586
*                                                                     !!00587
*              For transactions originating at BASE24-atm terminals,  !!00588
*              these fields are set by the Device Handler process     !!00589
*              using the SHRG-GRP fields in the TDF.                  !!00590
*                                                                     !!00591
*              For transactions originating from interchanges, these  !!00592
*              fields are set by the Interchange Interface process    !!00593
*              using the SHRG-GRP fields in the BASE24-atm segment of !!00594
*              the ICF.                                               !!00595
*                                                                     !!00596
*              For transactions originating from an ISO host, these   !!00597
*              fields are set by the ISO Host Interface process using !!00598
*              P-48 of the BASE24 External Message.                   !!00599
*                                                                     !!00600
*              For transactions originating from an ANSI host, these  !!00601
*              fields are set by the Host Interface process using the !!00602
*              SHARING.SHARING-GRP fields in the Standard External    !!00603
*              Message (SEM).                                         !!00604
*                                                                     !!00605
*              If the transaction is not-on-us, the Authorization     !!00606
*              process looks for a match between one of the           !!00607
*              identifiers in this field and those found in the IDF.  !!00608
*              When the first match is found, Authorization writes the!!00609
*              matching identifier in the first byte of this field.   !!00610
*                                                                     !!00611
  02 SHRG-GRP                  PIC X    OCCURS 24 TIMES.               !00612
                                                                       !00613
                                                                       !00614
                                                                       !00615
                                                                       !00616
                                                                       !00617
                                                                       !00618
                                                                       !00619
                                                                       !00620
                                                                       !00621
                                                                       !00622
                                                                       !00623
*                                                                     !!00624
*              The date (YYMMDD) the transaction was initiated--set by!!00625
*              the originator of the transaction.  The originator     !!00626
*              could be the Device Handler, Interchange Interface, or !!00627
*              Host Interface process.                                !!00628
*                                                                     !!00629
  02 TRAN-DAT                  TYPE DAT.                               !00630
                                                                       !00631
                                                                       !00632
                                                                       !00633
                                                                       !00634
                                                                       !00635
                                                                       !00636
                                                                       !00637
                                                                       !00638
                                                                       !00639
                                                                       !00640
*                                                                     !!00641
*              The time (HHMMSSTT) the transaction was initiated--set !!00642
*              by the originator of the transaction.  The originator  !!00643
*              could be the Device Handler, Interchange Interface, or !!00644
*              Host Interface process.                                !!00645
*                                                                     !!00646
*              NOTE: For transactions originating at a device, the    !!00647
*              Device Handler process sets this field using the       !!00648
*              current time and the device's time offset from the TDF.!!00649
*                                                                     !!00650
  02 TRAN-TIM                  TYPE TIM.                               !00651
                                                                       !00652
*                                                                     !!00653
*              This field is not used.                                !!00654
*                                                                     !!00655
  02 USER-FLD1                 PIC X.                                  !00656
                                                                       !00657
                                                                       !00658
                                                                       !00659
                                                                       !00660
                                                                       !00661
*                                                                     !!00662
*              The time difference between the location of the        !!00663
*              originating terminal and the location of BASE24's      !!00664
*              Tandem processor.                                      !!00665
*                                                                     !!00666
*              This number is added to the BASE24-atm system's local  !!00667
*              time to obtain the terminal's local time. This field is!!00668
*              set by the Device Handler process.                     !!00669
*                                                                     !!00670
  02 TIM-OFST                  TYPE BINARY 16.                         !00671
                                                                       !00672
                                                                       !00673
                                                                       !00674
                                                                       !00675
                                                                       !00676
                                                                       !00677
*                                                                     !!00678
*              The date (YYMMDD) of the TLF to which the transaction  !!00679
*              will be posted.  This field is set by the Device       !!00680
*              Handler, Interchange Interface, or Host Interface.     !!00681
*                                                                     !!00682
  02 POST-DAT                  TYPE DAT.                               !00683
                                                                       !00684
                                                                       !00685
                                                                       !00686
                                                                       !00687
                                                                       !00688
*                                                                     !!00689
*              The date (YYMMDD) the transaction will be settled by   !!00690
*              the interchange, if an interchange originated the      !!00691
*              transaction.  Otherwise, this field is zero-filled.    !!00692
*                                                                     !!00693
*              This field is set by the Interchange Interface process !!00694
*              using the POST-DAT field in the Base segment of the    !!00695
*              ICF.                                                   !!00696
*                                                                     !!00697
  02 ACQ-ICHG-SETL-DAT         TYPE DAT.                               !00698
                                                                       !00699
                                                                       !00700
                                                                       !00701
                                                                       !00702
                                                                       !00703
*                                                                     !!00704
*              The date (YYMMDD) the transaction will be settled by   !!00705
*              the interchange, if an interchange authorized the      !!00706
*              transaction.  Otherwise, this field is zero-filled.    !!00707
*                                                                     !!00708
*              This field is set by the Interchange Interface process !!00709
*              using the POST-DAT field in the Base segment of the    !!00710
*              ICF.                                                   !!00711
*                                                                     !!00712
  02 ISS-ICHG-SETL-DAT         TYPE DAT.                               !00713
                                                                       !00714
                                                                       !00715
                                                                       !00716
                                                                       !00717
                                                                       !00718
*                                                                     !!00719
*              Identifies the originating terminal's owner.  This     !!00720
*              field is set by the Device Handler, Host Interface, or !!00721
*              Interchange Interface process.                         !!00722
*                                                                     !!00723
*              For transactions that originate at BASE24-atm          !!00724
*              terminals, this field is set by the Device Handler     !!00725
*              process using the TERM-OWNER.FIID field in the TDF.    !!00726
*                                                                     !!00727
*              For transactions that originate from an ISO host, this !!00728
*              field is set by the Host Interface process using P-60  !!00729
*              of the BASE24 External Message.                        !!00730
*                                                                     !!00731
*              For transactions that originate from an ANSI host, this!!00732
*              field is set by the Host Interface process using the   !!00733
*              TERM.OWNER field in the SEM.                           !!00734
*                                                                     !!00735
*              For transactions that originate from interchanges, this!!00736
*              field is set by the Interchange Interface process,     !!00737
*              using the PRI-KEY.FIID field in the ICF.               !!00738
*                                                                     !!00739
  02 TERM-OWNER-FIID           TYPE FIID.                              !00740
                                                                       !00741
                                                                       !00742
                                                                       !00743
                                                                       !00744
                                                                       !00745
*                                                                     !!00746
*              Identifies the originating terminal.  This field is set!!00747
*              by the Device Handler, Host Interface, or Interchange  !!00748
*              Interface process.                                     !!00749
*                                                                     !!00750
*              For transactions that originate at BASE24-atm          !!00751
*              terminals, this field is set by the Device Handler     !!00752
*              process from the TERM-ID field in the TDF.             !!00753
*                                                                     !!00754
*              For transactions that originate from ISO hosts, this   !!00755
*              field is set by the Host Interface process, from P-41  !!00756
*              of the BASE24 External Message.                        !!00757
*                                                                     !!00758
*              For transactions that originate from ANSI hosts, this  !!00759
*              field is set by the Host Interface process, from the   !!00760
*              TERM.ATM-ID field in the SEM.                          !!00761
*                                                                     !!00762
*              For transactions that originate from an interchange,   !!00763
*              this field is set by the Interchange Interface process !!00764
*              using the DFLT-TERM-NUM field in Base segment of the   !!00765
*              ICF if the interchange does not provide a terminal ID. !!00766
*                                                                     !!00767
  02 TERM-ID                   TYPE SYM-NAME.                          !00768
                                                                       !00769
                                                                       !00770
                                                                       !00771
                                                                       !00772
                                                                       !00773
*                                                                     !!00774
*              Identifies the logical network of the originating      !!00775
*              terminal.  This field is set by either the Device      !!00776
*              Handler or Interchange Interface process.              !!00777
*                                                                     !!00778
*              For transactions that originate at BASE24-atm          !!00779
*              terminals, this field is set by the Device Handler     !!00780
*              process using the TERM-OWNER.LOGICAL-NET field in the  !!00781
*              TDF.                                                   !!00782
*                                                                     !!00783
*              For transactions that originate from interchanges, this!!00784
*              field is set by the Interchange Interface process using!!00785
*              the LOGICAL-NET field in the ICF.                      !!00786
*                                                                     !!00787
  02 TERM-LN                   TYPE LN.                                !00788
                                                                       !00789
                                                                       !00790
                                                                       !00791
                                                                       !00792
                                                                       !00793
*                                                                     !!00794
*              Identifies the branch of the originating terminal--set !!00795
*              for transactions originating at BASE24-atm terminals.  !!00796
*                                                                     !!00797
*              This field is set by the Device Handler process using  !!00798
*              the TERM-OWNER.BRCH-ID field in the TDF.               !!00799
*                                                                     !!00800
  02 BRCH-ID                   TYPE BRCH.                              !00801
                                                                       !00802
                                                                       !00803
                                                                       !00804
                                                                       !00805
                                                                       !00806
*                                                                     !!00807
*              Identifies the region of the originating terminal--set !!00808
*              for transactions originating at BASE24-atm terminals.  !!00809
*              This field is set by the Device Handler process using  !!00810
*              the TERM-OWNER.REGION-ID field in the TDF.             !!00811
*                                                                     !!00812
  02 REGN-ID                   TYPE REGN.                              !00813
                                                                       !00814
                                                                       !00815
                                                                       !00816
                                                                       !00817
                                                                       !00818
                                                                       !00819
                                                                       !00820
*                                                                     !!00821
*              The sequence number associated with this transaction.  !!00822
*              If the ATM does not generate a sequence number, the    !!00823
*              associated process generates one.  This field remains  !!00824
*              unchanged through the life of the transaction.  This   !!00825
*              field is set by the Device Handler, Interchange        !!00826
*              Interface, or Host Interface process.                  !!00827
*                                                                     !!00828
  02 SEQ-NUM                   PIC X(12).                              !00829
                                                                       !00830
                                                                       !00831
                                                                       !00832
*                                                                     !!00833
*              Indicates whether deposits are to have settlement      !!00834
*              impact.  This field is used in the creation of         !!00835
*              settlement reports; it has no effect on whether a      !!00836
*              transaction is logged to the TLF.  Values are:         !!00837
*                                                                     !!00838
*              0 = Deposits do not have settlement impact.            !!00839
*              1 = Envelope deposits have settlement impact.          !!00840
*              2 = Commercial deposits have settlement impact (for    !!00841
*                  example: Securomatic deposits).                    !!00842
*              3 = Both envelope and commercial deposits have         !!00843
*                  settlement impact.                                 !!00844
*                                                                     !!00845
*              This field is set by the Authorization process for     !!00846
*              BASE24-atm card issuers, using the DEP-SETL-IMP-FLG    !!00847
*              field in the BASE24-atm segment of the IDF.            !!00848
*                                                                     !!00849
  02 DEP-SETL-IMP-FLG          PIC X.                                  !00850
                                                                       !00851
                                                                       !00852
                                                                       !00853
*                                                                     !!00854
*              Indicates whether adjustments are to have settlement   !!00855
*              impact.                                                !!00856
*                                                                     !!00857
*              For adjustment messages (5400) sent to BASE24-atm card !!00858
*              issuers, this field is set by the Authorization process!!00859
*              from the second position of the HOST-ADJ-PROCESSING    !!00860
*              field in the BASE24 segment of the IDF. Values are:    !!00861
*                                                                     !!00862
*              0 = Adjustments do not have settlement impact.         !!00863
*              1 = Adjustments have settlement impact.                !!00864
*                                                                     !!00865
  02 ADJ-SETL-IMP-FLG          PIC X.                                  !00866
                                                                       !00867
                                                                       !00868
                                                                       !00869
                                                                       !00870
                                                                       !00871
*                                                                     !!00872
*              Indicates how the from and to accounts are processed by!!00873
*              the DPC on a two-sided transaction.  Values are:       !!00874
*                                                                     !!00875
*              0 = Process both the from and to accounts.             !!00876
*              1 = Process only the from account.                     !!00877
*              2 = Process only the to account.                       !!00878
*                                                                     !!00879
*              This field is set to 1 or 2 by the Authorization       !!00880
*              process when different hosts are involved for each side!!00881
*              of a two-sided transaction.                            !!00882
*                                                                     !!00883
  02 PROC-ACCT-IND             PIC X(1).                               !00884
                                                                       !00885
                                                                       !00886
                                                                       !00887
                                                                       !00888
                                                                       !00889
*                                                                     !!00890
*              Indicates whether the terminal has the capabilities to !!00891
*              capture the card.  For example, a terminal that accepts!!00892
*              cards via a card swipe mechanism cannot capture cards. !!00893
*              Values are:                                            !!00894
*                                                                     !!00895
*              0 = Terminal can capture card.                         !!00896
*              1 = Terminal cannot capture card.                      !!00897
*                                                                     !!00898
*              The default value is zero.                             !!00899
*                                                                     !!00900
*              This field is set by the Device Handler process and the!!00901
*              Interchange Interface process.                         !!00902
*                                                                     !!00903
  02 TERM-CAPTURE-FLG             PIC X(1).                            !00904
                                                                       !00905
                                                                       !00906
                                                                       !00907
                                                                       !00908
*                                                                     !!00909
*              This field was redefined for programs that still       !!00910
*              reference USER-FLD2.                                   !!00911
*                                                                     !!00912
  02 USER-FLD2       REDEFINES TERM-CAPTURE-FLG  PIC X(1).             !00913
                                                                       !00914
                                                                       !00915
*                                                                     !!00916
*              The following fields are used for Financial Transaction!!00917
*              Request (0200), Reversal Advice (0420), and Adjustment !!00918
*              (5400) messages.                                       !!00919
*                                                                     !!00920
  02 RQST.                                                             !00921
                                                                       !00922
                                                                       !00923
                                                                       !00924
                                                                       !00925
*                                                                     !!00926
*              The Track 2 data from the card initiating the          !!00927
*              transaction.  The data is used by Authorization        !!00928
*              processes and Report programs.  The value of this field!!00929
*              is set by the Device Handler, Interchange Interface, or!!00930
*              Host Interface process.  The Track 2 format is as      !!00931
*              follows:                                               !!00932
*                                                                     !!00933
*               1.  Start sentinel.                                   !!00934
*               2.  PAN, left-justified.                              !!00935
*               3.  An equal sign (=).                                !!00936
*               4.  Member number (if one exists).                    !!00937
*               5.  County code (if one exists).                      !!00938
*               6.  Expiration date (if one exists).                  !!00939
*               7.  PIN offset (if one exists).                       !!00940
*               8.  Algorithm offset (if one exists).                 !!00941
                                                                       !00942G00
                                                                       !00942G01
*               9.  End sentinel.                                     !!00942G02
*              10.  Blank fill to the right.                          !!00942G03
                                                                       !00942G04
*                                                                     !!00944
     04 TRACK2                 PIC X(40).                              !00945
                                                                       !00946
                                                                       !00947
                                                                       !00948
                                                                       !00949
                                                                       !00950
                                                                       !00951
                                                                       !00952
*                                                                     !!00953
*              The PIN offset value.                                  !!00954
*                                                                     !!00955
*              This is calculated and filled in by the Authorization  !!00956
*              process when the institution allows its cardholders to !!00957
*              select or change their PINs.                           !!00958
*                                                                     !!00959
     04 PIN-OFST               PIC X(16).                              !00960
                                                                       !00961
                                                                       !00962
                                                                       !00963
                                                                       !00964
                                                                       !00965
                                                                       !00966
                                                                       !00967
*                                                                     !!00968
*              The member number or card sequence number for the card !!00969
*              used to initiate the transaction.                      !!00970
*                                                                     !!00971
*              This field is used to access the cardholder's files.   !!00972
*              For BASE24-atm card issuers, this field is set and used!!00973
*              by the Authorization process.                          !!00974
*                                                                     !!00975
     04 MBR-NUM                TYPE *.                                 !00976
                                                                       !00977
                                                                       !00978
*                                                                     !!00979
*              Indicates the type of terminal from which the          !!00980
*              transaction originated.                                !!00981
*                                                                     !!00982
*              For transactions originating at a BASE24 terminal, the !!00983
*              Device Handler process sets this field using the TERM- !!00984
*              TYP field in the TDF.  This field is used by the Super !!00985
*              Extract process.                                       !!00986
*                                                                     !!00987
     04 TERM-TYP               PIC 9(2).                               !00988
                                                                       !00989
                                                                       !00990
                                                                       !00991
                                                                       !00992
*                                                                     !!00993
*              The type of currency used by the originating terminal. !!00994
*              It is set by the Device Handler, Interchange Interface,!!00995
*              or Host Interface process.                             !!00996
*                                                                     !!00997
*              For transactions originating at BASE24-atm terminals,  !!00998
*              this field is set by the Device Handler process using  !!00999
*              either the HOPPER(x).CRNCY-CDE field or the AMT-CRNCY- !!01000
*              CDE in the TDF.  The HOPPER(x).CRNCY-CDE field is used !!01001
*              when the TRAN-CDE field is set to 10 (withdrawal), 11  !!01002
*              (cash check), or 24 (deposit with cash back).  The AMT-!!01003
*              CRNCY-CDE field is used when the TRAN-CDE field        !!01004
*              contains any other value.                              !!01005
*                                                                     !!01006
*              For transactions that originate from an interchange,   !!01007
*              this field is set by the Interchange Interface process !!01008
*              using the CRNCY-CDE field in Base segment of the ICF.  !!01009
*                                                                     !!01010
*              For transactions that originate from an ISO host, this !!01011
*              field is set by the Host Interface process using P-49  !!01012
*              of the BASE24 External Message.                        !!01013
*                                                                     !!01014
*              For transactions that originate from an ANSI host, this!!01015
*              field is set by the Host Interface process using the   !!01016
*              CURRENCY-CDE in the SEM.                               !!01017
*                                                                     !!01018
     04 ORIG-CRNCY-CDE              TYPE CRNCY-CDE.                    !01019
                                                                       !01020
                                                                       !01021
*                                                                     !!01022
*              The following group of fields apply only in multi-     !!01023
*              currency systems.  Multi-currency systems are not      !!01024
*              currently available with BASE24-atm.  These fields are !!01025
*              redefined as a user-field for single currency systems. !!01026
*                                                                     !!01027
     04 MULT-CRNCY.                                                    !01028
                                                                       !01029
                                                                       !01030
*                                                                     !!01031
*              A code indicating the type of currency used in the     !!01032
*              response from the authorizing entity.                  !!01033
*                                                                     !!01034
*              For on-us and not-on-us transactions, Authorization    !!01035
*              retrieves the value for this field from the CRNCY-CDE  !!01036
*              field in the Base segment of the IDF.                  !!01037
*                                                                     !!01038
*              For transactions coming from an interchange, the       !!01039
*              Interchange Interface retrieves the value for this     !!01040
*              field from the CRNCY-CDE field in the Base segment of  !!01041
*              the ICF.                                               !!01042
*                                                                     !!01043
        06 AUTH-CRNCY-CDE           TYPE CRNCY-CDE.                    !01044
                                                                       !01045
                                                                       !01046
*                                                                     !!01047
*              The currency code of the settlement entity.            !!01048
*                                                                     !!01049
        06 SETL-CRNCY-CDE           TYPE CRNCY-CDE.                    !01050
                                                                       !01051
                                                                       !01052
*                                                                     !!01053
*              The exchange rate of the authorizing entity used to    !!01054
*              compute the amount that will affect the customer's     !!01055
*              balance.  The first digit contains the offset of the   !!01056
*              decimal point from the right-hand side.  Unless        !!01057
*              multiple currencies are involved, the default value is !!01058
*              61000000.                                              !!01059
*                                                                     !!01060
        06 AUTH-CONV-RATE           PIC 9(8).                          !01061
                                                                       !01062
                                                                       !01063
*                                                                     !!01064
*              The exchange rate of the settlement entity used to     !!01065
*              compute the final settlement amount.  The first digit  !!01066
*              contains the offset of the decimal point from the      !!01067
*              right-hand side.  Unless multiple currencies are       !!01068
*              involved, the default value is 61000000.               !!01069
*                                                                     !!01070
        06 SETL-CONV-RATE           PIC 9(8).                          !01071
                                                                       !01072
                                                                       !01073
*                                                                     !!01074
*              A timestamp indicating when the actual conversion      !!01075
*              between the currency of the transaction and the        !!01076
*              currency of the database took place.  This field is    !!01077
*              displayed in Greenwich Mean Time (GMT).                !!01078
*                                                                     !!01079
        06 CONV-DAT-TIM             TYPE BINARY 64.                    !01080
                                                                       !01081
                                                                       !01082
*                                                                     !!01083
*              This field is not used.                                !!01084
*                                                                     !!01085
     04 USER-FLD3      REDEFINES MULT-CRNCY    PIC X(30).              !01086
                                                                       !01087
                                                                       !01088
                                                                       !01089
                                                                       !01090
                                                                       !01091
*                                                                     !!01092
*              The terminal owner's routing/identification number.    !!01093
*                                                                     !!01094
*              For transactions originating at BASE24-atm terminals,  !!01095
*              this field is set by the Device Handler process using  !!01096
*              the ID-NUM field in the TDF.                           !!01097
*                                                                     !!01098
     04 ACQ-INST-ID-NUM            TYPE ID-NUM.                        !01099
                                                                       !01100
                                                                       !01101
                                                                       !01102
*                                                                     !!01103
*              Indicates to the Authorization process whether a       !!01104
*              terminal allows for multiple account selection. Values !!01105
*              are:                                                   !!01106
*                                                                     !!01107
*              0 = The terminal does not allow multiple account       !!01108
*                  selection; default to the primary account.         !!01109
*              1 = The terminal allows multiple account selection.    !!01110
*              2 = A Fast-cash transaction was selected; default to   !!01111
*                  the primary account.                               !!01112
*              3 = A card review transaction was just performed at a  !!01113
*                  Mirror device.  The Mirror Device Handler sets this!!01114
*                  field to 3 to indicate that Authorization should   !!01115
*                  prescreen the transaction even though accounts are !!01116
*                  already present in the request message.  The value 3
*                  is only used by the Mirror Device Handler.         !!01119
*                                                                     !!01120
*              This field is set by either the Device Handler process !!01121
*              or the Interchange Interface process.                  !!01122
*                                                                     !!01123
*              For transactions that originate at BASE24-atm          !!01124
*              terminals, this field is set by the Device Handler     !!01125
*              process using the MULT-ACCT field in the TDF.          !!01126
*                                                                     !!01127
*              For transactions originating from interchanges, the    !!01128
*              Interchange Interface process sets this field to 0.    !!01129
*                                                                     !!01130
     04 MULT-ACCT              PIC 9.                                  !01131
                                                                       !01132
                                                                       !01133
                                                                       !01134
                                                                       !01135
                                                                       !01136
*                                                                     !!01137
*              Indicates the reason for the reversal/adjustment.  This!!01138
*              field is used only for reversal (0420) and adjustment  !!01139
*              (5400) transactions.                                   !!01140
*                                                                     !!01141
*              Values for reversals are:                              !!01142
*                                                                     !!01143
*              01 = Timeout                                           !!01144
*              02 = Command reject                                    !!01145
*              03 = Destination not available                         !!01146
*              08 = Customer canceled transaction                     !!01147
*              10 = Hardware error                                    !!01148
*              20 = Suspect transaction                               !!01149
*              21 = Message Authentication Code (MAC) failure         !!01150
*              22 = MAC key synchronization error                     !!01151
*              23 = Message replay error                              !!01152
*              24 = Invalid MAC                                       !!01153
                                                                       !01153D00
*              30 = Funds not approved for load value                  !01153D01
*              31 = Load value not successful                          !01153D02
                                                                       !01153D03
                                                                       !01153F00
*              40 = Split Routing Enabled; Secondary Service Not       !01153F01
*                   Approved                                           !01153F02
                                                                       !01153F03
*                                                                     !!01154
*              Values for adjustment codes are:                       !!01155
*                                                                     !!01156
*              12 = Original amount incorrect                         !!01157
*              13 = ATM malfunction                                   !!01158
*              14 = Suspicious reversal override                      !!01159
*              15 = Misdispense reversal override                     !!01160
*              16 = Duplicate transaction                             !!01161
*              17 = Reconciliation error                              !!01162
*              18 = PLUS add cash withdrawal or advance               !!01163
*                                                                     !!01164
     04 RVSL-CDE              PIC 99.                                  !01165
                                                                       !01166
                                                                       !01167
                                                                       !01168
                                                                       !01169
*                                                                     !!01170
*              The account number of the from account of a            !!01171
*              transaction.  If the from account is not needed or not !!01172
*              known, it is set to zeros.                             !!01173
*                                                                     !!01174
     04 FROM-ACCT              TYPE ACCT.                              !01175
                                                                       !01176
*                                                                     !!01177
*              This field is not used.                                !!01178
*                                                                     !!01179
     04 USER-FLD4              PIC X.                                  !01180
                                                                       !01181
                                                                       !01182
                                                                       !01183
                                                                       !01184
*                                                                     !!01185
*              The account number of the to account of a transaction. !!01186
*              If to account is not needed or not known, this field is!!01187
*              set to zeros.                                          !!01188
*                                                                     !!01189
     04 TO-ACCT                TYPE ACCT.                              !01190
                                                                       !01191
                                                                       !01192
                                                                       !01193
                                                                       !01194
                                                                       !01195
                                                                       !01196
                                                                       !01197
                                                                       !01198
                                                                       !01199
                                                                       !01200
*                                                                     !!01201
*              The PIN entered by the cardholder initiating the       !!01202
*              transaction.  If the PIN has already been verified,    !!01203
*              this field contains zeros.                             !!01204
*                                                                     !!01205
     04 PIN                    TYPE *.                                 !01206
                                                                       !01207
                                                                       !01208
                                                                       !01209
                                                                       !01210
                                                                       !01211
                                                                       !01212
*                                                                     !!01213
*              The length of the PIN (e.g., 01 equals one digit in    !!01214
*              length; 04 equals four digits in length).              !!01215
*                                                                     !!01216
     04 PIN-SIZE               PIC 9(2).                               !01217
                                                                       !01218
                                                                       !01219
*                                                                     !!01220
*              A count of the number of bad PIN attempts at the ATM.  !!01221
*                                                                     !!01222
*              This field is incremented by the Authorization process.!!01223
*              The Authorization process sets this to 1, 2, 3, and so !!01224
*              on, as invalid PINs tries are detected during a        !!01225
*              transaction.  Once a PIN has been verified as correct, !!01226
*              this field is set to Z.                                !!01227
*                                                                     !!01228
     04 PIN-TRIES              PIC X.                                  !01229
                                                                       !01230
                                                                       !01231
                                                                       !01232
                                                                       !01233
*                                                                     !!01234
*              The encrypted version of the actual key used to encrypt!!01235
*              PINs before they are transmitted from an ATM--used when!!01236
*              keys are managed by a security device.                 !!01237
*                                                                     !!01238
*              For transactions originating at BASE24-atm terminals,  !!01239
*              this field is set by the Device Handler process using  !!01240
*              the ENCR-PIN.ENCR-KEYS.P-KEY field in the TDF.         !!01241
*                                                                     !!01242
     04 PIN-KEY                PIC X(16).                              !01243
                                                                       !01244
                                                                       !01245
                                                                       !01246
                                                                       !01247
                                                                       !01248
*                                                                     !!01249
*              Identifies the format of the PIN field.  Values are:   !!01250
*                                                                     !!01251
*              0 = Clear PIN                                          !!01252
*              1 = Encrypted ANSI PIN block                           !!01253
*              3 = Encrypted PIN/PAD PIN block                        !!01254
*                                                                     !!01255
     04 PIN-FRMT               PIC 9.                                  !01256
                                                                       !01257
                                                                       !01258
                                                                       !01259
                                                                       !01260
                                                                       !01261
*                                                                     !!01262
*              The fill character used to pad the PIN block if the PIN!!01263
*              was not long enough to fill the PIN block.  This field !!01264
*              is used by the system to determine the length of the   !!01265
*              PIN.                                                   !!01266
*                                                                     !!01267
     04 PINPAD-CHAR            PIC X.                                  !01268
                                                                       !01269
                                                                       !01270
                                                                       !01271
*                                                                     !!01272
*              Indicates the starting position of the twelve PAN      !!01273
*              digits.  It is used to encrypt the PIN if the system is!!01274
*              using the ANSI PIN block.  The first digit in the PAN  !!01275
*              has a positional value of 0.                           !!01276
*                                                                     !!01277
     04 ANSI-OFST              TYPE BINARY 16.                         !01278
                                                                       !01279
                                                                       !01280
*                                                                     !!01281
*              The previous PIN key used by the interchange to encrypt!!01282
*              PINs.  This field is set by the Interchange Interface  !!01283
*              after a key exchange.  If the PIN verification with the!!01284
*              new key fails with a sanity check error, Authorization !!01285
*              attempts to verify the PIN with the key in this field. !!01286
*                                                                     !!01287
     04 USER-KEY               PIC X(16).                              !01288
                                                                       !01289
                                                                       !01290
*                                                                     !!01291
*              Bytes 17 and 18 of the IBM PIN block format.  This is  !!01292
*              required when the PIN-FRMT field equals 2 (the PIN is  !!01293
*              encrypted by IBM 3624 PIN block) and the PIN is        !!01294
*              encrypted.                                             !!01295
*                                                                     !!01296
     04 USER-FLD4A             PIC X(2).                               !01297
                                                                       !01298
                                                                       !01299
                                                                       !01300
                                                                       !01301
                                                                       !01302
                                                                       !01303
                                                                       !01304
                                                                       !01305
*                                                                     !!01306
*              Indicates the type of customer balance information     !!01307
*              given at an ATM.                                       !!01308
*                                                                     !!01309
*              This field is set by the Authorization process using   !!01310
*              the CUST-BAL-INFO field in the BASE24-atm segment of   !!01311
*              the IDF.  Values are:                                  !!01312
*                                                                     !!01313
*              0 = No information given                               !!01314
*              1 = RQST.AMT-2 field given only                        !!01315
*              2 = RQST.AMT-3 field given only                        !!01316
*              3 = RQST.AMT-2 and RQST.AMT-3 fields given; AMT-2      !!01317
*                  preferred                                          !!01318
*              4 = RQST.AMT-2 and RQST.AMT-3 fields given; AMT-3      !!01319
*                  preferred                                          !!01320
*                                                                     !!01321
*              For all transactions except balance inquiry            !!01322
*              transactions, this field determines what balances are  !!01323
*              displayed.  However, if the transaction is a balance   !!01324
*              inquiry transaction and this field is set to 0 (no     !!01325
*              information given), the Device Handler determines what !!01326
*              balances to display using the CUST-BAL-INFO field in   !!01327
*              the TDF.                                               !!01328
*                                                                     !!01329
     04 CUST-BAL-INFO          PIC 9.                                  !01330
                                                                       !01331
                                                                       !01332
*                                                                     !!01333
*              Indicates whether the customer balance information     !!01334
*              should be displayed, printed, both, or neither.        !!01335
*                                                                     !!01336
*              This field is set by the Authorization process using   !!01337
*              the CUST-BAL-DSPY field in the BASE24-atm segment of   !!01338
*              the IDF.  Values are:                                  !!01339
*                                                                     !!01340
*              0 = Do not print or display                            !!01341
*              1 = Display on screen only                             !!01342
*              2 = Print on receipt only                              !!01343
*              3 = Print and display                                  !!01344
*                                                                     !!01345
*              For all transactions except balance inquiry            !!01346
*              transactions, this field determines where balances are !!01347
*              displayed.  However, if the transaction is a balance   !!01348
*              inquiry transaction and this field is set to 0 (do not !!01349
*              print or display), the Device Handler determines how to!!01350
*              display the balances using the CUST-BAL-DSPY field in  !!01351
*              the TDF.                                               !!01352
*                                                                     !!01353
     04 CUST-BAL-DSPY          PIC 9.                                  !01354
                                                                       !01355
                                                                       !01356
                                                                       !01357
                                                                       !01358
                                                                       !01359
*                                                                     !!01360
                                                                       !01360A00
*              The transaction amount requested.  In the case of force !01360A01
*              post (0220) or reversal (0420) messages, this field     !01360A02
*              contains the amount originally requested.  For          !01360A03
*              Adjustment (5400) messages, this field indicates the    !01360A04
*              original completion amount. Note that for deposit with  !01360A05
*              cash back transactions, this field contains the         !01360A06
*              deposit amount.  For split desposit transactions, this  !01360A07
*              field contains the deposit amount for the first         !01360A08
*              account involved in the transaction.                    !01360A09
                                                                       !01360A0A
                                                                       !01361A00
                                                                       !01361A01
                                                                       !01361A02
*                                                                     !!01366
     04 AMT-1                  TYPE BINARY 64.                         !01367
                                                                       !01368
                                                                       !01369
                                                                       !01369A00
*                                                                      !01369A01
*              For most reversal (0420) messages this field contains   !01369A02
*              the actual completion amount of the transaction.        !01369A03
*              For reversal messages for deposit with cash-back        !01369A04
*              transactions, this field contains the cash-back         !01369A05
*              amount.  For reversal messages for split deposit        !01369A06
*              transactions, this field contains the deposit amount    !01369A07
*              for the second account involved in the transaction.     !01369A08
*                                                                      !01369A09
*              For most response (0210) messages, this field contains  !01369A0A
*              a balance amount.  This is the credit balance, for      !01369A0B
*              credit accounts; and it is the ledger balance for       !01369A0C
*              non-credit accounts.  For response messages for deposit !01369A0D
*              with cash back transactions, this field contains the    !01369A0E
*              cash-back amount.  For reponse messages for split       !01369A0F
*              deposit transactions, this field contains the deposit   !01369A0G
*              amount for the second account involved in the           !01369A0H
*              transaction.                                            !01369A0I
*                                                                      !01369A0J
*              For most request (0200) messages, this field contains   !01369A0K
*              zeros.  For request messages for deposit with cash-     !01369A0L
*              back transactions, this field contains the cash-back    !01369A0M
*              amount.  For request messages for split deposit         !01369A0N
*              transactions, this field contains the deposit amount    !01369A0O
*              for the second account involved in the transaction.     !01369A0P
*                                                                      !01369A0Q
*              For adjustment (5400) messages, this field indicates    !01369A0R
*              the updated completion amount.                          !01369A0S
*                                                                      !01369A0T
                                                                       !01369A0U
                                                                       !01369A0V
                                                                       !01370A00
                                                                       !01370A01
                                                                       !01370A02
     04 AMT-2                  TYPE BINARY 64.                         !01402
                                                                       !01403
                                                                       !01403A00
*                                                                      !01403A01
*              For most response (0210) messages, this field contains  !01403A02
*              a balance amount.  This is the available balance for    !01403A03
*              non-credit accounts; and it is the available credit     !01403A04
*              for credit accounts. For response messages for deposit  !01403A05
*              with cash-back transactions and split deposit           !01403A06
*              transactions this field contains zeroes.                !01403A07
*                                                                      !01403A08
*              For a reversal (0420) message which is the result of a  !01403A09
*              deposit with cash back transaction, this field          !01403A0A
*              contains the deposit amount if the deposit part of the  !01403A0B
*              transaction did not complete successfully, and it       !01403A0C
*              contains the completed amount of the cash back part     !01403A0D
*              of the transaction if the deposit completed, but the    !01403A0E
*              cash back did not complete successfully.  This is the   !01403A0F
*              only type of reversal that utilizes this field.         !01403A0G
*                                                                      !01403A0H
                                                                       !01403A0I
     04 AMT-3                  TYPE BINARY 64.                         !01403A0J
                                                                       !01403A0K
*                                                                      !01403A0L
*              The amount of credit given on a deposit.                !01403A0M
*                                                                      !01403A0N
*              For a split deposit transaction, this field contains    !01403A0O
*              the amount of credit given to the first account         !01403A0P
*              involved in the transaction.                            !01403A0Q
*                                                                      !01403A0R
                                                                       !01403A0S
                                                                       !01403A0T
                                                                       !01404A00
                                                                       !01404A01
                                                                       !01404A02
     04 DEP-BAL-CR             TYPE BINARY 32.                         !01434
                                                                       !01435
                                                                       !01436
                                                                       !01437
                                                                       !01438
                                                                       !01439
*                                                                     !!01440
*              The type of depository attached to the originating     !!01441
*              terminal.                                              !!01442
*                                                                     !!01443
*              For transactions originating at BASE24-atm terminals,  !!01444
*              the Device Handler process sets this field using the   !!01445
*              AVAIL-DEP-TYP field in the TDF.  Values are:           !!01446
*                                                                     !!01447
*              0 = Normal envelope depository                         !!01448
*              1 = Commercial depository (for example: Securomatic)   !!01449
*              2 = Envelope and commercial depository                 !!01450
*              3 = Check depository                                   !!01451
                                                                       !01451H00
*              4 = BNA depository (Cash depository)                    !01451H01
                                                                       !01451H02
                                                                       !01451I00
*              5 = Bulk Check depository                               !01451I01
                                                                       !01451I02
*                                                                     !!01452
     04 AVAIL-DEP-TYP          PIC 9.                                  !01453
                                                                       !01454
                                                                       !01455
                                                                       !01456
                                                                       !01457
                                                                       !01458
*                                                                     !!01459
*              The type of depository to be used at the terminal.     !!01460
*                                                                     !!01461
*              This field is set by the Authorization process based on!!01462
*              the card type that initiated this transaction.   Values!!01463
*              are:                                                   !!01464
*                                                                     !!01465
*              0 = Normal envelope depository                         !!01466
*              1 = Commercial depository (for example: Securomatic)   !!01467
*              2 = Envelope and commercial depository                 !!01468
*              3 = Check depository                                   !!01469
                                                                       !01469H00
*              4 = BNA depository (Cash depository)                    !01469H01
                                                                       !01469H02
                                                                       !01469I00
*              5 = Bulk Check depository                               !01469I01
                                                                       !01469I02
*                                                                     !!01470
     04 DEP-TYP                PIC 9.                                  !01471
                                                                       !01472
                                                                       !01473
                                                                       !01474
                                                                       !01475
                                                                       !01476
*                                                                     !!01477
*              Indicates whether the host requires a completion       !!01478
*              message.  Values are:                                  !!01479
*                                                                     !!01480
                                                                       !01481G00
*              0 = No completion required--set from the IPCF by the   !!01481G01
                                                                       !01481G02
*                  Authorization process.                             !!01482
                                                                       !01483F00
                                                                       !01483F01
*              1 = Completion required for approved transactions-     !!01483F02
*                  -set from the IPCF by the Authorization process.   !!01483F03
                                                                       !01483F04
*              2 = Host not available--the Authorization process      !!01485
                                                                       !01486F00
*                  generates a completion regardless of IPCF settings.!!01486F01
                                                                       !01486F02
*              3 = Completion acknowledgement required--set by an     !!01487
*                  Interchange Interface on deposit transactions so   !!01488
*                  that the Authorization process returns a 0230      !!01489
*                  message containing the deposit credit amount which !!01490
*                  is used if a subsequent reversal is generated.     !!01491
                                                                       !01491F00
*              4 = Completion required for all transactions-          !!01491F01
*                  -set from the IPCF by the Authorization process.   !!01491F02
                                                                       !01491F03
                                                                       !01491G00
*              5 = Completion required for approved BASE24 authorized  !01491G01
*                  tranactions only                                    !01491G02
*                  -set from the IPCF by the Authorization process.    !01491G03
*                                                                      !01491G04
*              6 = Completion required for all BASE24 authorized       !01491G05
*                  transactions (approved/denied)                      !01491G06
*                  -set from the IPCF by the Authorization process.    !01491G07
                                                                       !01491G08
*                                                                     !!01492
     04 COMPL-REQ              PIC 9.                                  !01493
                                                                       !01494
                                                                       !01495
                                                                       !01496
                                                                       !01497
                                                                       !01498
                                                                       !01499
                                                                       !01500
                                                                       !01501
                                                                       !01502
                                                                       !01503
                                                                       !01504
                                                                       !01505
                                                                       !01506
                                                                       !01507
*                                                                     !!01508
*              A three-digit response code.  The first digit indicates!!01509
*              whether the card was returned or retained. Values are: !!01510
*                                                                     !!01511
*              0 = Return the card                                    !!01512
*              1 = Retain the card                                    !!01513
*                                                                     !!01514
*              The next two digits indicate the reason why the        !!01515
                                                                       !01515B00
*              transaction was approved or denied.  For a listing      !01515B01
*              of the BASE24 transaction response codes, please        !01515B02
*              refer to the BASE24-atm Transaction Processing          !01515B03
*              Manual.                                                 !01515B04
                                                                       !01515B05
                                                                       !01516B00
                                                                       !01516B01
                                                                       !01516B02
*                                                                     !!01519
      04 RESP                  PIC X(3).                               !01520
                                                                       !01521
                                                                       !01522
                                                                       !01523
                                                                       !01524
                                                                       !01525
*                                                                     !!01526
*              The location of the originating terminal.              !!01527
*                                                                     !!01528
*              For transactions originating at BASE24-atm terminals,  !!01529
*              this field is set by the Device Handler process using  !!01530
*              the TERM-NAME-LOC field in the TDF.                    !!01531
*                                                                     !!01532
     04 TERM-NAME-LOC          PIC X(25).                              !01533
                                                                       !01534
                                                                       !01535
                                                                       !01536
                                                                       !01537
*                                                                     !!01538
*              The name of the financial institution that owns the    !!01539
*              ATM.                                                   !!01540
*                                                                     !!01541
*              For transactions originating at BASE24-atm terminals,  !!01542
*              this field is set by the Device Handler process using  !!01543
*              the TERM-OWNER-NAME field in the TDF.                  !!01544
*                                                                     !!01545
     04 TERM-OWNER-NAME        PIC X(22).                              !01546
                                                                       !01547
                                                                       !01548
                                                                       !01549
                                                                       !01550
                                                                       !01551
*                                                                     !!01552
*              The city of the originating terminal.                  !!01553
*                                                                     !!01554
*              For transactions originating at BASE24-atm terminals,  !!01555
*              this field is set by the Device Handler process using  !!01556
*              the TERM-CITY field in the TDF.                        !!01557
*                                                                     !!01558
     04 TERM-CITY             PIC X(13).                               !01559
                                                                       !01560
                                                                       !01561
                                                                       !01562
                                                                       !01563
*                                                                     !!01564
*              Identifies the state, province, or political boundary  !!01565
*              of the originating terminal.  In the U.S., this is the !!01566
*              two-digit state code, left-justified, blank-filled.    !!01567
*                                                                     !!01568
*              For transactions originating at BASE24-atm terminals,  !!01569
*              this field is set by the Device Handler process using  !!01570
*              the TERM-ST-X field in the TDF.                        !!01571
*                                                                     !!01572
     04 TERM-ST-X             PIC X(3).                                !01573
                                                                       !01574
                                                                       !01575
                                                                       !01576
                                                                       !01577
                                                                       !01578
*                                                                     !!01579
*              Identifies the country of the originating terminal.    !!01580
*                                                                     !!01581
*              For transactions originating at BASE24-atm terminals,  !!01582
*              this field is set by the Device Handler process using  !!01583
*              the TERM-CNTRY-X field in the TDF.                     !!01584
*                                                                     !!01585
     04 TERM-CNTRY-X          PIC X(2).                                !01586
                                                                       !01587
                                                                       !01588
                                                                       !01589
                                                                       !01590
                                                                       !01591
                                                                       !01592
                                                                       !01593
                                                                       !01594
                                                                       !01595
                                                                       !01596
*                                                                     !!01597
*              The original data elements apply to transaction        !!01598
*              reversals (0420) and adjustments (5400) only.  If this !!01599
*              transaction is a reversal or adjustment, these fields  !!01600
*              contain information on the original transaction.       !!01601
*                                                                     !!01602
     04 ORIG.                                                          !01603
                                                                       !01604
                                                                       !01605
                                                                       !01606
                                                                       !01607
                                                                       !01608
                                                                       !01609
*                                                                     !!01610
*              The sequence number of the original transaction.       !!01611
*                                                                     !!01612
         06  SEQ-NUM                PIC X(12).                         !01613
                                                                       !01614
                                                                       !01615
                                                                       !01616
                                                                       !01617
                                                                       !01618
                                                                       !01619
                                                                       !01620
*                                                                     !!01621
*              The date (MMDD) the original transaction was processed.!!01622
*                                                                     !!01623
         06  TRAN-DAT               PIC X(4).                          !01624
                                                                       !01625
                                                                       !01626
                                                                       !01627
                                                                       !01628
                                                                       !01629
                                                                       !01630
                                                                       !01631
*                                                                     !!01632
*              The time (HHMMSSTT) from the original transaction      !!01633
*              timestamp.                                             !!01634
*                                                                     !!01635
         06  TRAN-TIM               TYPE TIM.                          !01636
                                                                       !01637
                                                                       !01638
                                                                       !01639
                                                                       !01640
                                                                       !01641
                                                                       !01642
                                                                       !01643
*                                                                     !!01644
*              The BASE24 posting date of the original transaction.   !!01645
*                                                                     !!01646
         06  B24-POST-DAT           PIC X(4).                          !01647
                                                                       !01648
                                                                       !01649
                                                                       !01650
                                                                       !01651
                                                                       !01652
*                                                                     !!01653
*              Indicates at what level a given transaction is allowed !!01654
*              for not-on-us cardholders at this terminal.  Levels    !!01655
*              are:                                                   !!01656
*                                                                     !!01657
*              0 = not allowed                                        !!01658
*              1 = allowed within the county                          !!01659
*              2 = allowed within the state                           !!01660
*              3 = allowed nationally                                 !!01661
*              4 = allowed internationally                            !!01662
*                                                                     !!01663
*              For transactions originating at BASE24-atm terminals,  !!01664
*              the Device Handler process sets this field using the   !!01665
*              NOT-ON-US-CRD field in the TDF.                        !!01666
*                                                                     !!01667
*              For transactions originating through interchanges, the !!01668
*              Interchange Interface process sets this field using the!!01669
*              NOT-ON-US field in the ICF.                            !!01670
*                                                                     !!01671
     04 TERM-TRAN-ALLOWED       PIC 9.                                 !01672
                                                                       !01673
                                                                       !01674
                                                                       !01675
*                                                                     !!01676
*              The trace number assigned to the transaction. This is  !!01677
*              set and used by the Host Interface process to match    !!01678
*              transactions to their correct response timers when     !!01679
*              responses are received.                                !!01680
*                                                                     !!01681
     04 TRACE-NUM              PIC 9(6).                               !01682
                                                                       !01683
                                                                       !01684
                                                                       !01685
                                                                       !01686
*                                                                     !!01687
*              The state in which the originating terminal is located.!!01688
*              In the United States, this field contains the ANSI     !!01689
*              state code.                                            !!01690
*                                                                     !!01691
*              The Authorization process compares this field to the   !!01692
*              FI-ST field in the Base segment of the IDF when        !!01693
*              determining if a given transaction is allowed at the   !!01694
*              state level.                                           !!01695
*                                                                     !!01696
*              For transactions originating at BASE24-atm terminals,  !!01697
*              the Device Handler process sets this field using the   !!01698
*              TERM-STATE field in the TDF.                           !!01699
*                                                                     !!01700
     04 TERM-ST                PIC 9(2).                               !01701
                                                                       !01702
                                                                       !01703
                                                                       !01704
                                                                       !01705
*                                                                     !!01706
*              The county in which the originating terminal is        !!01707
*              located.  In the United States, this field contains the!!01708
*              ANSI county code for the county.                       !!01709
*                                                                     !!01710
*              The Authorization process compares this field to the   !!01711
*              FI-CNTY field in the Base segment of the IDF when      !!01712
*              determining if a given transaction is allowed at the   !!01713
*              county level.                                          !!01714
*                                                                     !!01715
*              For transactions originating at BASE24-atm terminals,  !!01716
*              the Device Handler process sets this field using the   !!01717
*              TERM-CNTY field in the TDF.                            !!01718
*                                                                     !!01719
     04 TERM-CNTY              PIC 9(3).                               !01720
                                                                       !01721
                                                                       !01722
                                                                       !01723
                                                                       !01724
                                                                       !01725
*                                                                     !!01726
*              The ISO country code, indicating the country in which  !!01727
*              the originating terminal is located.                   !!01728
*                                                                     !!01729
*              The Authorization process compares this field to the   !!01730
*              FI-CNTRY field in the Base segment of the IDF when     !!01731
*              determining if a given transaction is allowed at the   !!01732
*              country level.                                         !!01733
*                                                                     !!01734
*              For transactions originating at BASE24-atm terminals,  !!01735
*              the Device Handler process sets this field using the   !!01736
*              TERM-CNTRY field in the TDF.                           !!01737
*                                                                     !!01738
     04 TERM-CNTRY             PIC 9(3).                               !01739
                                                                       !01740
                                                                       !01741
                                                                       !01742
                                                                       !01743
                                                                       !01744
*                                                                     !!01745
*              This field is not used.                                !!01746
*                                                                     !!01747
     04 USER-FLD5              PIC X(16).                              !01748
                                                                       !01749
                                                                       !01750
*                                                                     !!01751
*              The primary destination for alternate routing regarding!!01752
*              foreign transactions.                                  !!01753
*                                                                     !!01754
*              This field is initially zero-filled by the Device      !!01755
*              Handler process.  The Authorization process places the !!01756
*              symbolic name of the primary destination in this field.!!01757
*                                                                     !!01758
    04 PRI-DEST                TYPE SYM-NAME.                          !01759
                                                                       !01760
                                                                       !01761
                                                                       !01762
*                                                                     !!01763
*              The alternate destination for routing foreign          !!01764
*              transactions.                                          !!01765
*                                                                     !!01766
*              This field is initially zero-filled by the Device      !!01767
*              Handler process.  The Authorization process places the !!01768
*              symbolic name of the alternate destination in this     !!01769
*              field.                                                 !!01770
*                                                                     !!01771
    04 ALT-DEST                TYPE SYM-NAME.                          !01772
                                                                       !01773
                                                                       !01774
*                                                                     !!01775
*              The symbolic name of the entity that performed the     !!01776
*              authorization.  This field is used for reversal (0420) !!01777
*              messages.                                              !!01778
*                                                                     !!01779
*              This field is initially zero-filled by the Device      !!01780
*              Handler process.                                       !!01781
*                                                                     !!01782
   04 AUTH-DEST                TYPE SYM-NAME.                          !01783
                                                                       !01784
                                                                       !01785
*                                                                     !!01786
*              The routing order, so that the receiving entity can    !!01787
*              determine whether to forward the request.              !!01788
*                                                                     !!01789
*              Once a response (0210) message is received the field   !!01790
*              may be reset to reflect who authorized the transaction.!!01791
*              Values are:                                            !!01792
*                                                                     !!01793
*              A = Alternate destination                              !!01794
*              P = Primary destination                                !!01795
*                                                                     !!01796
   04 DEST-ORDER                  PIC X.                               !01797
                                                                       !01798
                                                                       !01799
                                                                       !01800
                                                                       !01801
                                                                       !01802
*                                                                     !!01803
*              Indicates the routing group to which the terminal      !!01804
*              belongs for routing and processing of foreign          !!01805
*              transactions.  The default value is 00000000000.       !!01806
*                                                                     !!01807
*              For transactions originating at BASE24-atm terminals,  !!01808
*              the Device Handler process sets this field using the   !!01809
*              RTE-GRP field of the TDF in this field.                !!01810
*                                                                     !!01811
*              For transactions originating through an interchange,   !!01812
*              the Interchange Interface process sets this field using!!01813
*              the DFLT-RTG-GRP field in the BASE24-atm segment of the!!01814
*              ICF.                                                   !!01815
*                                                                     !!01816
   04 RTE-GRP                     PIC X(11).                           !01817
                                                                       !01818
                                                                       !01819
                                                                       !01820
                                                                       !01821
*                                                                     !!01822
*              The actual to and from account types.   The following  !!01823
*              fields are set by the Authorization process.           !!01824
*                                                                     !!01825
  04 SAVE-ACCT.                                                       !01193
                                                                       !01828
*                                                                     !!01829
*              The type of from account.  Valid values are:           !!01830
*                                                                     !!01831
*              01 = Checking                                          !!01832
*              11 = Savings                                           !!01833
*              31 = Credit                                            !!01834
*                                                                     !!01835
      06  FROM-ACCT-TYP           PIC X(2).                            !01836
                                                                       !01837
*                                                                     !!01838
*              The type of to account.  Valid values are:             !!01839
*                                                                     !!01840
*              01 = Checking                                          !!01841
*              11 = Savings                                           !!01842
*              31 = Credit                                            !!01843
*                                                                     !!01844
      06  TO-ACCT-TYP             PIC X(2).                            !01845
                                                                       !01846
                                                                       !01847
                                                                       !01848
                                                                       !01849
                                                                       !01850
*                                                                     !!01851
*              The postal code of the terminal.                       !!01852
*                                                                     !!01853
*              For transactions originating at a device connected to  !!01854
*              BASE24-atm, this field is set by the Device Handler    !!01855
*              using the POSTAL-CDE field in the  TDF.                !!01856
*                                                                     !!01857
*              For transactions originating at a device connected to  !!01858
*              an ISO host, this field is set by the ISO Host         !!01859
*              Interface using P-62 from the BASE24 External Message. !!01860
*                                                                     !!01861
*              For transactions originating at a device connected to  !!01862
*              an interchange, this field is set by the Interchange   !!01863
*              Interchange Interface.                                 !!01864
*                                                                     !!01865
   04 POSTAL-CDE                  TYPE *.                              !01866
                                                                       !01867
                                                                       !01868
                                                                       !01869
                                                                       !01870
   04 USER-FLD6                   PIC X(38).                           !01871
                                                                       !01872
                                                                       !01873
*                                                                     !!01874
*              A code indicating whether the Device Handler process   !!01875
*              supports the BASE24-atm Statement Print Data           !!01876
*              Compression format on statement print transactions.    !!01877
*              Currently, the NCR 50XX-series Device Handler process  !!01878
*              and the Diebold 1000-series Device Handler process     !!01879
*              support data compression.  Valid values are:           !!01880
*                                                                     !!01881
*              0 =  Columnar format (data compression is not          !!01882
*                   supported)                                        !!01883
*              1 =  BASE24-atm data compression format (data          !!01884
*                   compression is supported)                         !!01885
*                                                                     !!01886
*              The NCR 50XX-series Device Handler process sets this   !!01887
*              value from the N5080.STMT-PRNTR-CNTL.FRMT field in the !!01888
*              TDF.  The Diebold 1000-series Device Handler process   !!01889
*              sets this value from the DIEBOLD.FRMT field in the TDF.!!01890
*                                                                     !!01891
   04 FRMT                        PIC X.                               !01892
                                                                       !01893
                                                                       !01894
*                                                                     !!01895
*              The maximum number of characters per line supported by !!01896
*              the Device Handler process when BASE24-atm Statement   !!01897
*              Print Data Compression is implemented for statement    !!01898
*              print transactions.  Currently, the NCR 50XX-series    !!01899
*              Device Handler process and the Diebold 1000-series     !!01900
*              Device Handler process support data compression.  If   !!01901
*              data compression is not supported, this field is zero- !!01902
*              filled.                                                !!01903
*                                                                     !!01904
*              The NCR 50XX-series Device Handler process sets this   !!01905
*              value by subtracting the N5080.STMT-PRNTR-CNTL-        !!01906
*              LEFT.MARGIN field from the N5080.STMT-PRNTR-CNTL-      !!01907
*              RIGHT.MARGIN field in the TDF.  The Diebold 1000-series!!01908
*              Device Handler process does not use this field for data!!01909
*              compression.                                           !!01910
*                                                                     !!01911
   04 PRNT-SIZ                    PIC X(3).                            !01912
                                                                       !01913
                                                                       !01914
                                                                       !01915
                                                                       !01916
                                                                       !01917
                                                                       !01918
                                                                       !01919
*                                                                     !!01920
*              These fields are set by the Authorization process.     !!01921
*              They contain cardholder accounts for multiple account  !!01922
*              selection.  The accounts to be placed in these fields  !!01923
*              are taken from the Cardholder Authorization File (CAF).!!01924
*                                                                     !!01925
  02 ACCT               REDEFINES RQST.                                !01926
*                                                                     !!01927
*              The first MULT occurrence carries the cardholder's from!!01928
*              accounts for multiple account selection; the second    !!01929
*              MULT occurrence carries the cardholder's to accounts   !!01930
*              for multiple account selection.                        !!01931
*                                                                     !!01932
*              179-332 = from account fields                          !!01933
*              333-486 = to account fields                            !!01934
*                                                                     !!01935
     04 MULT                                OCCURS 2 TIMES.            !01936
*                                                                     !!01937
*              The type of accounts included in the ACCT.MULT.INFO    !!01938
*              fields.                                                !!01939
*                                                                     !!01940
        06 ACCT-TYP               PIC 9(2).                            !01941
                                                                       !01942
                                                                       !01943
*                                                                     !!01944
*              Actual number of occurrences of the ACCT.MULT.INFO     !!01945
*              fields.                                                !!01946
*                                                                     !!01947
        06 CNT                    PIC X.                               !01948
*                                                                     !!01949
*              This field is not used.                                !!01950
*                                                                     !!01951
        06 USER-FLD7              PIC X.                               !01952
*                                                                     !!01953
*              The following fields contain account information used  !!01954
*              for account selection messages.                        !!01955
*                                                                     !!01956
        06 INFO                   OCCURS 5 TIMES.                      !01957
                                                                       !01958
                                                                       !01959
*                                                                     !!01960
*              The account number.                                    !!01961
*                                                                     !!01962
           08 NUM                 TYPE ACCT.                           !01963
*                                                                     !!01964
*              This field is not used.                                !!01965
*                                                                     !!01966
           08 USER-FLD8           PIC X.                               !01967
                                                                       !01968
*                                                                     !!01969
*              The account description.                               !!01970
*                                                                     !!01971
           08 DESCR               PIC X(10).                           !01972
                                                                       !01973
                                                                       !01974
                                                                       !01975
                                                                       !01976
                                                                       !01977
                                                                       !01978
                                                                       !01979
                                                                       !01980
*                                                                     !!01981
*              Indicates whether the PIN has been verified in the 9906!!01982
*              message.  This field is set by the Authorization       !!01983
*              process and used by the Device Handler process.        !!01984
*                                                                     !!01985
     04 PIN-VRFY-FLG              PIC 9.                               !01986
                                                                       !01987
                                                                       !01988
                                                                       !01988J00
*                                                                      !01988J01
*              The trace number assigned to the transaction. This is   !01988J02
*              set and used by the Host Interface process to match     !01988J03
*              transactions to their correct response timers when      !01988J04
*              responses are received.                                 !01988J05
*                                                                      !01988J06
     04 TRACE-NUM              PIC 9(6).                               !01988J07
                                                                       !01988J08
*                                                                     !!01989
*              This field is not used.                                !!01990
*                                                                     !!01991
                                                                       !01992J00
     04 SAVE-AREA                 PIC X(165).                          !01992J01
                                                                       !01992J02
                                                                       !01993
                                                                       !01994
                                                                       !01995
*                                                                     !!01996
*              The following fields are used when the Mirror device is!!01997
*              being used, multi-account cards are configured at the  !!01998
*              ATM, BASE24 is the authorizer of the transaction, and a!!01999
*              positive authorization method is being used.  The      !!02000
*              BASE24 Authorization process initiates these fields    !!02001
*              using the respective CAF field.                        !!02002
*                                                                     !!02003
  02 CRD-REVIEW         REDEFINES RQST.                                !02004
                                                                       !02005
                                                                       !02006
*                                                                     !!02007
*              The card status.  This field is set by the             !!02008
*              Authorization process using the CRD-STAT field in the  !!02009
*              Base segment of the CAF.  It is used by the            !!02010
*              Authorization and Device Handler processes.            !!02011
*                                                                     !!02012
     04 CRD-STAT                  PIC X.                               !02013
*                                                                     !!02014
*              This field is not used.                                !!02015
*                                                                     !!02016
     04 USER-FLD8A                PIC X.                               !02017
                                                                       !02018
                                                                       !02019
*                                                                     !!02020
*              The card pin tries.  It is used by the Authorization   !!02021
*              and Device Handler processes and is set from the BAD-  !!02022
*              PIN-TRIES field in the Base segment of the CAF.        !!02023
*                                                                     !!02024
     04 PIN-TRIES                 TYPE BINARY 16.                      !02025
                                                                       !02026
                                                                       !02027
*                                                                     !!02028
*              The card limit.  It is used by the Authorization and   !!02029
*              Device Handler processes and is set from the GRP-      !!02030
*              LMT.AGGR-LMT field in the Base segment of the CAF.     !!02031
*                                                                     !!02032
     04 LIMIT                     TYPE BINARY 64.                      !02033
                                                                       !02034
                                                                       !02035
*                                                                     !!02036
*              The number of accounts associated with the current     !!02037
*              card.  It is used by the Authorization and Device      !!02038
*              Handler processes and is set from the ACCT-CNT field in!!02039
*              the Accounts segment of the CAF.                       !!02040
*                                                                     !!02041
     04 CNT                       TYPE BINARY 16.                      !02042
                                                                       !02043
                                                                       !02044
*                                                                     !!02045
*              The following fields contain account information used  !!02046
*              by the Authorization and Device Handler processes.     !!02047
*              These fields are set from the Accounts segment of the  !!02048
*              CAF.                                                   !!02049
*                                                                     !!02050
     04 ACCTS                     OCCURS 16 TIMES.                     !02051
*                                                                     !!02052
*              The type of account included in the CRD-REVIEW.ACCTS   !!02053
*              field.                                                 !!02054
*                                                                     !!02055
        06 TYP                    PIC 9(2).                            !02056
                                                                       !02057
                                                                       !02058
*                                                                     !!02059
*              The account number.                                    !!02060
*                                                                     !!02061
        06 NUM                    TYPE ACCT.                           !02062
*                                                                     !!02063
*              The status of the account.                             !!02064
*                                                                     !!02065
        06 STAT                   PIC X.                               !02066
                                                                       !02067
*                                                                     !!02068
*              This field is not used.                                !!02069
*                                                                     !!02070
     04 SAVE-AREA                 PIC X(114).                          !02071
                                                                       !02072
                                                                       !02073
*                                                                     !!02074
*              The following fields are used for statement print      !!02075
*              transaction request (0205) and statement print response!!02076
*              (0215) messages.                                       !!02077
*                                                                     !!02078
  02  STMT-INFO         REDEFINES RQST.                                !02079
                                                                       !02080
                                                                       !02081
                                                                       !02082
                                                                       !02083
*                                                                     !!02084
*              The symbolic process name of the Host Interface process!!02085
*              used by the Authorization process to send transactions !!02086
*              to a host.  The Authorization process sets this field  !!02087
*              using the RT-TBL.SYM-NAME fields in BASE24-atm segment !!02088
*              of the IDF.                                            !!02089
*                                                                     !!02090
     04 HI-PRO-NAME            PIC X(16).                              !02091
                                                                       !02092
                                                                       !02093
*                                                                     !!02094
*              The Track 2 data, as sent by the ATM to the Device     !!02095
*              Handler process.                                       !!02096
*                                                                     !!02097
     04 TRACK2                 PIC X(40).                              !02098
                                                                       !02099
                                                                       !02100
                                                                       !02101
                                                                       !02102
*                                                                     !!02103
*              The actual from account type.                          !!02104
*                                                                     !!02105
     04 SAVE-FROM-ACCT-TYP     PIC X(2).                               !02106
                                                                       !02107
                                                                       !02108
*                                                                     !!02109
*              The member number or card sequence number of the card  !!02110
*              used to initiate the transaction.                      !!02111
*                                                                     !!02112
     04 MBR-NUM                TYPE *.                                 !02113
                                                                       !02114
                                                                       !02115
*                                                                     !!02116
*              Indicates the type of terminal from which the          !!02117
*              transaction originated.                                !!02118
*                                                                     !!02119
*              For transactions originating at a BASE24 terminal, the !!02120
*              Device Handler process sets this field using the TERM- !!02121
*              TYP field in the TDF.                                  !!02122
*                                                                     !!02123
     04 TERM-TYP               PIC 9(2).                               !02124
                                                                       !02125
                                                                       !02126
*                                                                     !!02127
*              The terminal owner's routing or issuer identification  !!02128
*              number.                                                !!02129
*                                                                     !!02130
*              For transactions originating at a BASE24 terminal, the !!02131
*              Device Handler process sets this field using the ID-NUM!!02132
*              field in the TDF.                                      !!02133
*                                                                     !!02134
     04 ACQ-INST-ID-NUM            TYPE ID-NUM.                        !02135
                                                                       !02136
                                                                       !02137
*                                                                     !!02138
*              The from account number of the transaction.  If no from!!02139
*              account is needed or known, it is set to zero by the   !!02140
*              Device Handler process.  In the case of primary        !!02141
*              accounts, this is set by the Authorization process.    !!02142
*                                                                     !!02143
     04 FROM-ACCT              TYPE ACCT.                              !02144
                                                                       !02145
                                                                       !02146
                                                                       !02147
                                                                       !02148
                                                                       !02149
                                                                       !02150
                                                                       !02151
                                                                       !02152
                                                                       !02153
*                                                                     !!02154
*              A three-digit response code.  The first digit indicates!!02155
*              whether the card should be returned or retained.   The !!02156
*              next two digits indicate the reason why the transaction!!02157
                                                                       !02157B00
*              was approved or denied.  For a listing of the BASE24    !02157B01
*              transaction response codes, please refer to the         !02157B02
*              BASE24-atm Transaction Processing Manual.               !02157B03
                                                                       !02157B04
                                                                       !02158B00
                                                                       !02158B01
                                                                       !02158B02
*                                                                     !!02160
      04 RESP                  PIC X(3).                               !02161
                                                                       !02162
                                                                       !02163
*                                                                     !!02164
*              The statement data coming from the host.               !!02165
*                                                                     !!02166
      04 STMT.                                                         !02167
                                                                       !02168
                                                                       !02169
*                                                                     !!02170
*              If numeric, this is the current page number of the item!!02171
*              request.  Otherwise, values are:                       !!02172
*                                                                     !!02173
*              LP = Last page of the statements                       !!02174
*              SP = Summary page                                      !!02175
*              1P = Account statements fill only one page             !!02176
*                                                                     !!02177
*              NOTE: Because the IBM 4730 is limited to one message,  !!02178
*              this field contains either 1P or LP if the IBM 4730 is !!02179
*              the ATM involved.                                      !!02180
*                                                                     !!02181
         06  PAGE-IND          PIC X(2).                               !02182
                                                                       !02183
                                                                       !02184
*                                                                     !!02185
*              The earliest date (YYMMDD) that the information in the !!02186
*              statement starts, sent by the host.                    !!02187
*                                                                     !!02188
*              NOTE: Due to length restrictions of the IBM 4730's     !!02189
*              response message, the LAST-STMT-DAT field is not used  !!02190
*              by the IBM 4730 Device Handler process.                !!02191
*                                                                     !!02192
         06 LAST-STMT-DAT      TYPE DAT.                               !02193
                                                                       !02194
                                                                       !02195
*                                                                     !!02196
*              The number of lines in the header as defined and sent  !!02197
*              by the host.                                           !!02198
*                                                                     !!02199
         06 HEADER-LINES       PIC X(2).                               !02200
                                                                       !02201
                                                                       !02202
*                                                                     !!02203
*              The number of characters per line, as defined and sent !!02204
*              by the host.                                           !!02205
*                                                                     !!02206
         06 COLUMN-LINES       PIC X(2).                               !02207
                                                                       !02208
                                                                       !02209
*                                                                     !!02210
*              The statement lines and header information as sent by  !!02211
*              the host.                                              !!02212
*                                                                     !!02213
         06 STMT-FLD           PIC X(360).                             !02214
                                                                       !02215
                                                                       !02216
                                                                       !02217
*                                                                     !!02218
*              This field is not used.                                !!02219
*                                                                     !!02220
         06 USER-FLD9          PIC X(8).                               !02221
                                                                       !02222
                                                                       !02223
                                                                       !02224
*                                                                     !!02225
*              A code indicating whether the Device Handler process   !!02226
*              supports the BASE24-atm Statement Print Data           !!02227
*              Compression format on statement print transactions.    !!02228
*              Currently, the NCR 50XX-series Device Handler process  !!02229
*              and the Diebold 1000-series Device Handler process     !!02230
*              support data compression.  Valid values are:           !!02231
*                                                                     !!02232
*              0 =  Columnar format (data compression is not          !!02233
*                   supported)                                        !!02234
*              1 =  BASE24-atm data compression format (data          !!02235
*                   compression is supported)                         !!02236
*                                                                     !!02237
*              The NCR 50XX-series Device Handler process sets this   !!02238
*              value from the N5080.STMT-PRNTR-CNTL.FRMT field in the !!02239
*              TDF.  The Diebold 1000-series Device Handler process   !!02240
*              sets this value from the DIEBOLD.FRMT field in the TDF.!!02241
*                                                                     !!02242
         06 FRMT               PIC X.                                  !02243
                                                                       !02244
                                                                       !02245
                                                                       !02246
                                                                       !02247
                                                                       !02248
                                                                       !02249
*                                                                     !!02250
*              The maximum number of characters per line supported by !!02251
*              the Device Handler process when BASE24-atm Statement   !!02252
*              Print Data Compression is implemented for statement    !!02253
*              print transactions.  Currently, the NCR 50XX-series    !!02254
*              Device Handler process and the Diebold 1000-series     !!02255
*              Device Handler process support data compression.  If   !!02256
*              data compression is not supported, this field is zero- !!02257
*              filled.                                                !!02258
*                                                                     !!02259
*              The NCR 50XX-series Device Handler process sets this   !!02260
*              value by subtracting the N5080.STMT-PRNTR-CNTL-        !!02261
*              LEFT.MARGIN field from the N5080.STMT-PRNTR-CNTL-      !!02262
*              RIGHT.MARGIN field in the TDF.  The Diebold 1000-series!!02263
*              Device Handler process does not use this field for data!!02264
*              compression.                                           !!02265
*                                                                     !!02266
         06 PRNT-SIZ           PIC X(3).                               !02267
                                                                       !02268
                                                                       !02269
                                                                       !02270
                                                                       !02271
                                                                       !02272
                                                                       !02273
                                                                       !02274
                                                                       !02275
                                                                       !02276
                                                                       !02277
*                                                                     !!02278
*              The timestamp indicating when the transaction entered  !!02279
*              the BASE24 system for the first time.  This is set by  !!02280
*              the Device Handler, Interchange Interface, or Host     !!02281
*              Interface process.                                     !!02282
*                                                                     !!02283
*              The Device Handler process loads the timestamp when the!!02284
*              STM is initialized.  The Interchange Interface or Host !!02285
*              Interface process loads this field when the transaction!!02286
*              originates from the DPC or Interchange.                !!02287
*                                                                     !!02288
 02 ENTRY-TIM                  TYPE BINARY 64.                         !02289
                                                                       !02290
                                                                       !02291
                                                                       !02292
*                                                                     !!02293
*              The timestamp, expressed in Greenwich Mean Time,       !!02294
*              indicating when the transaction exited the BASE24      !!02295
*              system for authorization, either through the Host      !!02296
*              Interface or Interchange Interface process.            !!02297
*                                                                     !!02298
 02 EXIT-TIM                   TYPE BINARY 64.                         !02299
                                                                       !02300
                                                                       !02301
                                                                       !02302
*                                                                     !!02303
*              The timestamp, expressed in Greenwich Mean Time,       !!02304
*              indicating when the response to a transaction request  !!02305
*              to an Interchange or a DPC reentered the BASE24 system.!!02306
*                                                                     !!02307
 02 RE-ENTRY-TIM               TYPE BINARY 64.                         !02308
                                                                       !02309
                                                                       !02310
                                                                       !02311
                                                                       !02312
                                                                       !02313
                                                                       !02314
                                                                       !02315
*                                                                     !!02316
*              The institution identification number of the card      !!02317
*              acceptor on a request (0200) message originating from  !!02318
*              an acquirer host (in the event that the acquirer is not!!02319
*              the actual card acceptor).  This field is for logging  !!02320
*              purposes only.  Information in this field is right-    !!02321
*              justified and blank-filled.                            !!02322
*                                                                     !!02323
 02 CRD-ACCPT-ID-NUM           TYPE ID-NUM.                            !02324
                                                                       !02325
                                                                       !02326
                                                                       !02327
                                                                       !02328
                                                                       !02329
                                                                       !02330
                                                                       !02331
                                                                       !02332
                                                                       !02333
*                                                                     !!02334
*              The value of the ATM-FORWARD-INST-ID param in the      !!02335
*              LCONF.  This field is for logging purposes only.  It   !!02336
*              equates to a routing transit number representing       !!02337
*              BASE24.  This field is set by Authorization processes  !!02338
*              for host-fee accounting purposes to determine where a  !!02339
*              transaction initiated.                                 !!02340
*                                                                     !!02341
 02 FRWD-INST-ID-NUM           TYPE ID-NUM.                            !02342
                                                                       !02343
                                                                       !02344
                                                                       !02345
                                                                       !02346
                                                                       !02347
                                                                       !02348
                                                                       !02349
                                                                       !02350
                                                                       !02351
                                                                       !02352
*                                                                     !!02353
*              The institution identification number of the card      !!02354
*              issuer on a response (0210) message from the           !!02355
*              authorizing host, in case the receiving institution is !!02356
*              not the actual card issuer.  The information in this   !!02357
*              field is right-justified and blank-filled.             !!02358
*                                                                     !!02359
 02 CRD-ISS-ID-NUM             TYPE ID-NUM.                            !02360
                                                                       !02361
                                                                       !02362
                                                                       !02363
                                                                       !02364
                                                                       !02365
*                                                                     !!02366
*              If present, this contains the host transaction sequence!!02367
*              number.  This field is for logging and extract purposes!!02368
*              only.                                                  !!02369
*                                                                     !!02370
 02 AUTH-ID-RESP              PIC X(6).                                !02371
                                                                       !02372
                                                                       !02373
                                                                       !02374
                                                                       !02375
                                                                       !02376
*                                                                     !!02377
*              An exact image of Track 3 as sent from the ATM.  If the!!02378
*              Track 3 information was not sent, this field contains  !!02379
*              zeros.                                                 !!02380
*                                                                     !!02381
 02 TRACK3                     PIC X(107).                             !02382
                                                                       !02383
                                                                       !02384
                                                                       !02385
*                                                                     !!02386
*              This field is not used.                                !!02387
*                                                                     !!02388
 02 MICR-DATA                  PIC X(43).                              !02389
*                                                                     !!02390
*              This field is not used.                                !!02391
*                                                                     !!02392
 02 USER-FLD10                 PIC X.                                  !02393
                                                                       !02394
END                                                                    !02395
?nocomments
