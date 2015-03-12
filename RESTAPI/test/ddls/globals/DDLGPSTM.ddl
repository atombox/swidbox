**FIX2.28  12/23/11  DDLGPSTM6010 DDL    BA60DDL  BA0F070  J                 ***
**FIX2.28  12/22/09  DDLGPSTM6009 DDL    BA60DDL  BA0D307  I                 ***
**FIX2.28  12/04/07  DDLGPSTM6008 DDL    BA60DDL  BA0B314  H                 ***
**FIX2.28  11/23/06  DDLGPSTM6007 DDL    BA60DDL  BA0A318  G                 ***
**FIX2.26  11/17/05  DDLGPSTM6006 DDL    BA60DDL  BA09315  F                 ***
**FIX2.24  11/18/04  DDLGPSTM6005 DDL    BA60DDL  BA08216  E                 ***
**FIX2.23  11/11/03  DDLGPSTM6004 DDL    BA60DDL  BA07211  D                 ***
**FIX2.22  04/12/02  DDLGPSTM6003 DDL    BA60DDL  BA05329  C                 ***
**FIX2.19  01/12/02  DDLGPSTM6002 DDL    BA60DDL  BA05170  B                 ***
**SEQ0.04  11/01/00  DDLGPSTM6001 DDL    BA60DDL  BA04000  A                 ***
**SYNC.04  12/09/98  DDLGPSTM5301 DDL    BA53DDL  BA04000  A                 ***
**SYNC.03  08/28/98  DDLGPSTM5301 DDL    BA53DDL  BA03000  A                 ***
**SYNC.03  08/22/97  DDLGPSTM5101 DDL    BA51DDL  BA03000  A                 ***
**SYNC.02  06/25/96  DDLGPSTM5101 DDL    BA51DDL  BA02000  A                 ***
**FIX2.00  06/06/95  DDLGPSTM5101 DDL    BA51DDL  BA51034  A                 ***
!*SEQ2.00  10/20/92  DDLGPSTM5100 DDL    BA51DDL                               !
                                                                       !00000B00
                                                                       !00000I00
********************************************************************** !00000I01
*                                                                    * !00000I02
*                               BASE24                               * !00000I03
*                               ------                               * !00000I04
*                                                                    * !00000I05
*               BASE24-pos Standard Internal Message                 * !00000I06
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
                                                                       !00000I0K
                                                                       !00000I0L
                                                                       !00000I0M
                                                                       !00000I0N
                                                                       !00000B0S
?page
*                                                                      !00000B0V
* Record of Changes:                                                   !00000B0W
*                                                                     !!00000B0X
* Date        Person/Emp #                                            !!00000B0Y
* ---------   ------------                                            !!00000B0Z
                                                                       !00000B10
                                                                       !00005A00
                                                                       !00005A01
*********************************************************************  !00005A02
*                  RELEASE 5.1                                      *  !00005A03
*********************************************************************  !00005A04
* 01JUN95     JMS/583                                                  !00005A05
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00005A06
* PROBLEM:    <E> None.                                                !00005A07
* FIX:        Removed old history sections not associated with a       !00005A08
*             specific Fix level.                                      !00005A09
* IMPLEMENT:  None.                                                    !00005A0A
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00005A0B
*                                                                      !00005A0C
                                                                       !00005B11
********************************************************************   !00005B12
*             Release 6.0                                          *   !00005B13
********************************************************************   !00005B14
* 08JAN2002   JJD/615                                                  !00005B15
* Symptom:    Uplift DUKPT to Release 6.0                              !00005B16
* Problem:    None.                                                    !00005B17
* Fix:        Modified the comments for the ORIGINATOR field to        !00005B18
*             include "8" - resubmittal and "9" - DUKPT device.        !00005B19
* Dependency: Apply fix to DDLGPSTM and reMAKE.                        !00005B1A
* Reference:  WO #011003-04                                            !00005B1B
                                                                       !00005B1C
                                                                       !00005C00
* 28MAR2002   JRA/24                                                   !00005C01
* Symptom:    Stored Value Release 6.0 uplift                          !00005C02
* Problem:    None.                                                    !00005C03
* Fix:        Added new Stored Value transaction code values to        !00005C04
*             comments.                                                !00005C05
* Dependency: Restore SV-related files, modify the appropriate         !00005C06
*             CUSTMACS flags, and run MAKE.                            !00005C07
* Reference:  WO #020117-41 (BASE24-stored value Release 6.0 uplift)   !00005C08
                                                                       !00005C09
                                                                       !00005D00
* 15OCT2003   MSH/872                                                  !00005D01
* Symptom:    Switch POS RTAU Enhancement                              !00005D02
* Problem:    None                                                     !00005D03
* Fix:        Updated the comments for APPRV-CDE-LGTH to indicate      !00005D04
*             that it is also used by Authorization.                   !00005D05
* Dependency: Apply fix to DDLGPSTM and run MAKE.  Refer to            !00005D06
*             BA60UD07.SCNSWCH for a complete listing of dependencies. !00005D07
* Reference:  WO #020812-02                                            !00005D08
                                                                       !00005D09
                                                                       !00005E00
* 15OCT2004   AldersR                                                  !00005E01
* Symptom:    Forward Declined Advices to Host                         !00005E02
* Problem:    None                                                     !00005E03
* Fix:        Modified comments to  COMPL-REQ.                         !00005E04
* Dependency: Apply fix to DDLGPSTM and run MAKE.                      !00005E05
*             Refer to BA60UD08.SCNFORW for a complete listing of      !00005E06
*             dependencies.                                            !00005E07
* Reference:  WO #040406-01                                            !00005E08
                                                                       !00005F00
* 14OCT2005   SteffeJ                                                  !00005F01
* Symptom:    Mobile Top-Up POS Acquiring Integration Enhancement      !00005F02
* Problem:    None                                                     !00005F03
* Fix:        Added support for the Mobile Top-Up POS Acquiring        !00005F04
*             Integration Enhancement.  Modified comments to           !00005F05
*             identify a new value for RESPONDER and RVSL-CDE.         !00005F06
* Dependency: Apply fixes to DDLGPSTM and run MAKE.                    !00005F07
*             Refer to BA60UD09.SCNMTOPP for a complete listing of     !00005F08
*             dependencies.                                            !00005F09
* Reference:  WO #041224-01                                            !00005F0A
                                                                       !00005F0B
                                                                       !00005E09
                                                                       !00005G00
* 14OCT2006   RinkC                                                    !00005G01
* Symptom:    Contactless Chip/Magnetic Stripe Support Enhancement     !00005G02
* Problem:    None.                                                    !00005G03
* Fix:        Modified comments to identify a new values for           !00005G04
*             PT-SRV-ENTRY-MDE.                                        !00005G05
* Dependency: Apply fix to DDLGPSTM and run Make.  Refer to            !00005G06
*             BA60UD0A.SCNCTLS for complete listings of dependencies.  !00005G07
* Reference:  WO #050209-01                                            !00005G08
*                                                                      !00005G09
* 14OCT2006   Steffej                                                  !00005G0A
* Symptom:    The description for the TRACK2 is not correct.           !00005G0B
* Problem:    The description for the TRACK2 is not correct.           !00005G0C
* Fix:        Modified comments to indicate the blanks to fill the     !00005G0D
*             field should follow the end sentinel, not precede it.    !00005G0E
* Dependency: Apply fix to DDLGPSTM and run Make.                      !00005G0F
* Reference:  Case #420626                                             !00005G0G
                                                                       !00005G0H
* 14OCT2006   BartonD                                                  !00005G0I
* Symptom:    Incomplete comments for ADDR-VRFY-STAT field.            !00005G0J
* Problem:    Incomplete comments for ADDR-VRFY-STAT field.            !00005G0K
* Fix:        Modified comments only.                                  !00005G0L
*             Added paragraph to specify that the field could contain  !00005G0M
*             interchange-specific values.                             !00005G0N
* Dependency: Apply fixes to DDLGPSTM and run Make.                    !00005G0O
* Reference:  Case #409327                                             !00005G0P
*                                                                      !00005G0Q
* 14OCT2006   steffej                                                  !00005G0R
* Symptom:    Completion Messages Configuration Enhancement            !00005G0S
* Problem:    None                                                     !00005G0T
* Fix:        Modified comments for COMPL-REQ for new values 5 and 6.  !00005G0U
*             These values are reserved for future use and are not     !00005G0V
*             currently supported for POS.                             !00005G0W
* Dependency: Apply fix to DDLGPSTM and run Make.                      !00005G0X
*             Refer to BA60UD0A.SCNCOMP for a complete listing of      !00005G0Y
*             dependencies.                                            !00005G0Z
* Reference:  WO #060417-02                                            !00005G0a
*                                                                      !00005G0b
                                                                       !00005G0c
                                                                       !00005H00
* 12OCT2007   AnandK                                                   !00005H01
* Symptom:    POS Completion Message Configuration                     !00005H02
* Problem:    None                                                     !00005H03
* Fix:        Modified comments for COMPL-REQ for new values 5 and 6.  !00005H04
* Dependency: Apply fix to DDLGPSTM and run Make.                      !00005H05
*             Refer to BA60UD0B.SCNCOMP for a complete listing of      !00005H06
*             dependencies.                                            !00005H07
* Reference:  WO #061213-02                                            !00005H08
*                                                                      !00005H09
* 12OCT2007   WisharJ                                                  !00005H0A
* Symptom:    None.                                                    !00005H0B
* Problem:    Incorrect field description for PRE-AUTH-OPT field.      !00005H0C
* Fix:        Modified comments only. Updated description              !00005H0D
*             of PRE-AUTH-OPT field.                                   !00005H0E
* Dependency: Apply fix to DDLGPSTM and run Make.                      !00005H0F
* Reference:  Case #429513                                             !00005H0G
                                                                       !00005H0H
                                                                       !00005I00
* 06NOV2009   GangarJ                                                  !00005I01
* Symptom:    Network 2008 Mandates for POS Acquiring.                 !00005I02
* Problem:    None.                                                    !00005I03
* Fix:        Modified the description for PRE-AUTH-OPT field.         !00005I04
* Dependency: Apply fix to DDLGPSTM and run Make.                      !00005I05
*             Refer to BA60UD0D.SCNNETM for a complete listing of      !00005I06
*             dependencies.                                            !00005I07
* Reference:  WO #080605-01                                            !00005I08
                                                                       !00005I09
                                                                       !00005J00
* 20DEC2011   WisharJ                                                  !00005J01
* Symptom:    BASE24 Migration Enhancements                            !00005J02
* Problem:    New values can be present in the rte-stat field.         !00005J03
* Fix:        Documented new rte-stat values.                          !00005J04
* Dependency: Apply fixes to DDLGSTM and DDLGPSTM.  Run Make.          !00005J05
*             Refer to BA60UD0F.SCNMIGR2 for a complete listing of     !00005J06
*             dependencies.                                            !00005J07
* Reference:  WO #050513-02                                            !00005J08
                                                                       !00005J09
*********************************************************************  !00005A0D
                                                                       !00005A0E
?PAGE "PSTM - BASE24-pos Standard Internal Message Format"
                                                                       !00005B1F
?SECTION PSTM
                                                                       !00005A0J
                                                                       !00005A0K
                                                                       !00005A0L
                                                                       !00005A0M
                                                                       !00262
?comments
                                                                       !00265
*                                                                     !!00266
*            The PSTM is created by one of the entry points into      !!00267
*            BASE24-pos:  Device Handler, Host Interface or           !!00268
*            Interchange Interface process.  It is initialized        !!00269
*            to all zeros at creation; fields are loaded              !!00270
*            during transaction processing as described below.        !!00271
*                                                                     !!00272
                                                                       !00273
DEFINITION PSTM.                                                       !00274
                                                                       !00275
                                                                       !00276
                                                                       !00277
                                                                       !00278
                                                                       !00279
                                                                       !00280
                                                                       !00281
*                                                                     !!00282
*              Indicates the type of message described by this PSTM.  !!00283
*              Valid values are:                                      !!00284
*                                                                     !!00285
*              0200 = Transaction Request                             !!00286
*              0210 = Transaction Response                            !!00287
*              0220 = Transaction Advice (Completion or Force Post)   !!00288
*              0402 = Card Issuer Reversal Request (Chargeback)       !!00289
*              0412 = Card Issuer Reversal Response                   !!00290
*              0420 = Reversal                                        !!00291
*              9991 = Log only                                        !!00292
*                                                                     !!00293
*              The Device Handler, Authorization module, Host         !!00294
*              Interface, or Interchange Interface sets this field.   !!00295
*              All processes use this field.                          !!00296
*                                                                     !!00297
 02 TYP                       PIC 9(4).                                !00298
                                                                       !00299
                                                                       !00300
                                                                       !00301
                                                                       !00302
                                                                       !00303
                                                                       !00304
*                                                                     !!00305
*              Indicates the BASE24 product originating this          !!00306
*              transaction.                                           !!00307
*                                                                     !!00308
*              The valid value for BASE24-pos is 02.                  !!00309
*                                                                     !!00310
*              The Device Handler, Host Interface, or Interchange     !!00311
*              Interface sets this field.  This field is used by the  !!00312
*              Host Interface and the Interchange Interface.          !!00313
*                                                                     !!00314
 02 PROD-ID                   TYPE *.                                  !00315
                                                                       !00316
                                                                       !00317
                                                                       !00318
*                                                                     !!00319
*              The DPC number identifying the DPC to which the        !!00320
*              transaction is to be sent.                             !!00321
*                                                                     !!00322
*              Valid values are 0 through 9999.                       !!00323
*                                                                     !!00324
*              For check guarantee and check verification             !!00325
*              transactions, Authorization sets this field using the  !!00326
*              RTE-TBL.DPC field in the Check Authorization Routing   !!00327
*              Table File (CART).  For all other transactions,        !!00328
*              Authorization sets this field according to the RT-     !!00329
*              TBL.PRI-DPC field in the BASE24-pos segment of the IDF.!!00330
*              Different DPCs can be designated for various prefixes  !!00331
*              and account types.  This field is used by the Host     !!00332
*              Interface.                                             !!00333
*                                                                     !!00334
 02 DPC-NUM                   TYPE BINARY 16.                          !00335
                                                                       !00336
                                                                       !00337
                                                                       !00338
                                                                       !00339
                                                                       !00340
                                                                       !00341
*                                                                     !!00342
*              Indicates the status of a message at the system level. !!00343
*                                                                     !!00344
*              Valid values are:                                      !!00345
*                                                                     !!00346
*              00 = No error                                          !!00347
*              01 = Processing error                                  !!00348
*              02 = Security device failure                           !!00349
*              11 = Destination not available                         !!00350
*              12 = Line down                                         !!00351
*              20 = Originator not available                          !!00352
*              21 = Unknown message type                              !!00353
*              22 = Unknown card number                               !!00354
                                                                       !00354J00
*              35 = Alternate routed migration transaction             !00354J01
*              36 = 'Log only' migration transaction                   !00354J02
                                                                       !00354J03
*                                                                     !!00355
*              If the value is 00, the response code field (TRAN.RESP-!!00356
*              CDE) is used to determine the disposition of the       !!00357
                                                                       !00357J00
*              message.  Nonzero values indicate a failed message,     !00357J01
*              except for the values of "35" or "36" which are used    !00357J02
*              only during migration from BASE24 to BASE24-eps.        !00357J03
                                                                       !00357J04
                                                                       !00358J00
                                                                       !00358J01
*                                                                     !!00359
*              The Host Interface sets this field.  This field is used!!00360
*              by Authorization.                                      !!00361
*                                                                     !!00362
 02 RTE-STAT                   PIC 99.                                 !00363
                                                                       !00364
                                                                       !00365
*                                                                     !!00366
*              The symbolic process name of the process through which !!00367
*              the transaction entered the BASE24 system.             !!00368
*                                                                     !!00369
*              The Device Handler, Host Interface, or Interchange     !!00370
*              Interface sets this field. This field is used by       !!00371
*              Authorization for return routing.                      !!00372
*                                                                     !!00373
*              For transactions that originate from terminals         !!00374
*              connected to BASE24-pos, the symbolic name of the      !!00375
*              Device Handler is placed in this field.                !!00376
*                                                                     !!00377
*              For transactions from a host, the symbolic name of the !!00378
*              Host Interface is placed in this field.                !!00379
*                                                                     !!00380
*              For transactions from an interchange, the symbolic name!!00381
*              of the Interchange Interface is placed in this field.  !!00382
*                                                                     !!00383
 02 ORIG-PRO-NAME             TYPE SYM-NAME.                           !00384
                                                                       !00385
                                                                       !00386
                                                                       !00387
                                                                       !00388
*                                                                     !!00389
*              The symbolic name of the primary authorizer for this   !!00390
*              transaction, as defined in the Authorization Selection !!00391
*              Table (AST).                                           !!00392
*                                                                     !!00393
*              The primary authorizer can vary by card type, issuer,  !!00394
*              and transaction amount.                                !!00395
*                                                                     !!00396
*              Router sets this field.                                !!00397
*                                                                     !!00398
 02 AST-RTN-PRO-NAME          TYPE SYM-NAME.                           !00399
                                                                       !00400
                                                                       !00401
                                                                       !00402
                                                                       !00403
*                                                                     !!00404
*              The symbolic process name of the first Router to handle!!00405
*              this transaction.                                      !!00406
*                                                                     !!00407
*              Router sets this field and uses it for routing         !!00408
*              purposes.  For example, if a transaction passes to     !!00409
*              another logical network, Router in the second logical  !!00410
*              network checks this field to determine where to return !!00411
*              the transaction.                                       !!00412
*                                                                     !!00413
 02 ROUTER1-NAME              TYPE SYM-NAME.                           !00414
                                                                       !00415
                                                                       !00416
                                                                       !00417
                                                                       !00418
*                                                                     !!00419
*              The symbolic process name of the second Router to      !!00420
*              handle this transaction.                               !!00421
*                                                                     !!00422
*              Router sets this field and uses it for routing         !!00423
*              purposes.  For example, if a transaction passes to a   !!00424
*              second logical network for authorization, Router in the!!00425
*              first logical network checks this field to determine   !!00426
*              where to send the completion.                          !!00427
*                                                                     !!00428
 02 ROUTER2-NAME              TYPE SYM-NAME.                           !00429
                                                                       !00430
                                                                       !00431
                                                                       !00432
                                                                       !00433
*                                                                     !!00434
*              This field is not used.                                !!00435
*                                                                     !!00436
 02 MSG-ORIG-IND              PIC X.                                   !00437
                                                                       !00438
                                                                       !00439
                                                                       !00440
                                                                       !00441
                                                                       !00442
                                                                       !00443
                                                                       !00444
                                                                       !00445
*                                                                     !!00446
*              Indicates where this transaction originated. This field!!00447
*              applies to 0200, 0220, and 0420 transactions.          !!00448
*                                                                     !!00449
*              Valid values are:                                      !!00450
*                                                                     !!00451
*              1 = Device controlled by BASE24-pos                    !!00452
*              2 = Device Handler                                     !!00453
*              3 = Authorization                                      !!00454
*              4 = Host Interface                                     !!00455
*              5 = Host                                               !!00456
*              6 = Interchange Interface                              !!00457
*              7 = Interchange                                        !!00458
                                                                       !00458B00
*              8 = Resubmittal                                         !00458B01
*              9 = DUKPT Device controlled by BASE24-pos               !00458B02
                                                                       !00458B03
*                                                                     !!00459
*              Values 1, 5, and 7 are valid for 0200 and 0220         !!00460
*              messages.  Values 1, 2, 4, 5, 6, and 7 are valid for   !!00461
*              0420 messages.                                         !!00462
*                                                                     !!00463
*              The Device Handler, Host Interface, or Interchange     !!00464
*              Interface sets this field.                             !!00465
*                                                                     !!00466
 02 ORIGINATOR             PIC X.                                      !00467
                                                                       !00468
                                                                       !00469
                                                                       !00470
                                                                       !00471
                                                                       !00472
*                                                                     !!00473
*              Indicates where the transaction was authorized.        !!00474
*                                                                     !!00475
*              Valid values are:                                      !!00476
*                                                                     !!00477
*              0 = Default; applicable only until 0210 is created     !!00478
*              1 = Device controlled by BASE24-pos                    !!00479
*              2 = Device Handler                                     !!00480
*              3 = Authorization                                      !!00481
*              4 = Host Interface                                     !!00482
*              5 = Host                                               !!00483
*              6 = Interchange Interface                              !!00484
*              7 = Interchange                                        !!00485
                                                                       !00485F00
*              S = Secondary Authorizer                                !00485F01
                                                                       !00485F02
*                                                                     !!00486
*              This field is set by the generator of the 0210         !!00487
*              response.                                              !!00488
*                                                                     !!00489
 02 RESPONDER              PIC X.                                      !00490
                                                                       !00491
                                                                       !00492
                                                                       !00493
                                                                       !00494
*                                                                     !!00495
*              The date this transaction will be settled by BASE24.   !!00496
*                                                                     !!00497
*              The Device Handler, Host Interface, or Interchange     !!00498
*              Interface sets this field.                             !!00499
*                                                                     !!00500
*              The Device Handler places the value from the POST-DAT  !!00501
*              field of the POS Terminal Data File (PTDF) in this     !!00502
*              field.  The Interchange Interface places the current   !!00503
*              BASE24 business date in this field.  If a value is not !!00504
*              sent from the acquiring host, the Host Interface       !!00505
*              determines the value to place in this field.           !!00506
*                                                                     !!00507
*              This field is used by Authorization.                   !!00508
*                                                                     !!00509
 02 POST-DAT                  TYPE DAT.                                !00510
                                                                       !00511
                                                                       !00512
*                                                                     !!00513
*              The logical network to which the owner of the terminal !!00514
*              belongs.  The terminal referenced is the terminal from !!00515
*              which this transaction originated.                     !!00516
*                                                                     !!00517
*              This field is set by the Device Handler, Interchange   !!00518
*              Interface, and Host Interface processes.               !!00519
*                                                                     !!00520
*              The Device Handler sets this field using the value from!!00521
*              the TERM-OWNER.LN field in the PTDF.                   !!00522
*                                                                     !!00523
*              The ISO Host Interface sets this field from element P- !!00524
*              60.                                                    !!00525
*                                                                     !!00526
*              The ANSI Host Interface sets this field from the       !!00527
*              TRAN.RETAILER.LOGICAL-NET field in the POS Standard    !!00528
*              Long External Message (PSEMF) or Extended Long External!!00529
*              Message (PSEMFE).  The ANSI Host Interface sets this   !!00530
*              field with its own logical network if the short        !!00531
*              external message (PSEMA or PSEMAE) is being used.      !!00532
*                                                                     !!00533
 02 TERM-LN                   TYPE LN.                                 !00534
                                                                       !00535
                                                                       !00536
                                                                       !00537
                                                                       !00538
*                                                                     !!00539
*              The FIID of the institution that owns the terminal from!!00540
*              which this transaction originated.                     !!00541
*                                                                     !!00542
*              The Device Handler, Host Interface, or Interchange     !!00543
*              Interface process sets this field.                     !!00544
*                                                                     !!00545
*              The Device Handler retrieves the value for this field  !!00546
*              from the TERM-OWNER.FIID field in the PTDF.  The Host  !!00547
*              Interface receives the value for this field from the   !!00548
*              acquiring host.  The Interchange Interface retrieves   !!00549
*              the value for this field from the PRI-KEY.FIID field in!!00550
*              the ICF.                                               !!00551
*                                                                     !!00552
 02 TERM-FIID                 TYPE FIID.                               !00553
                                                                       !00554
                                                                       !00555
                                                                       !00556
                                                                       !00557
*                                                                     !!00558
*              The terminal ID of the terminal where the transaction  !!00559
*              originated.                                            !!00560
*                                                                     !!00561
*              The Device Handler, Host Interface, or Interchange     !!00562
*              Interface process sets this field.  The Device Handler !!00563
*              retrieves the value for this field from the TERM-ID    !!00564
*              field in the PTDF.  The Host Interface and Interchange !!00565
*              Interface receive the value for this field in the      !!00566
*              external message.                                      !!00567
*                                                                     !!00568
 02 TERM-ID                   TYPE SYM-NAME.                           !00569
                                                                       !00570
                                                                       !00571
                                                                       !00572
                                                                       !00573
*                                                                     !!00574
*              The name and location of the terminal from which this  !!00575
*              transaction originated.  The name and location are     !!00576
*              printed on receipts to comply with Regulation E.       !!00577
*                                                                     !!00578
*              The Device Handler, Host Interface, or Interchange     !!00579
*              Interface sets this field.                             !!00580
*                                                                     !!00581
*              The Device Handler retrieves the value for this field  !!00582
*              from the TERM-NAME-LOC field in the PTDF.  The Host    !!00583
*              Interface retrieves the value for this field from the  !!00584
*              external message.  The Interchange Interface retrieves !!00585
*              the value for this field from the interchange message. !!00586
*                                                                     !!00587
 02 TERM-NAME-LOC             PIC X(25).                               !00588
                                                                       !00589
                                                                       !00590
*                                                                     !!00591
*              The name of the financial institution that owns the    !!00592
*              terminal from which this transaction originated.       !!00593
*                                                                     !!00594
*              The Device Handler, Host Interface, or Interchange     !!00595
*              Interface sets this field.                             !!00596
*                                                                     !!00597
*              The Device Handler retrieves the value for this field  !!00598
*              from the TERM-OWNER-NAM field in the PTDF.  The Host   !!00599
*              Interface retrieves the value for this field from the  !!00600
*              external message.  The Interchange Interface retrieves !!00601
*              the value for this field from the interchange message. !!00602
*                                                                     !!00603
 02 TERM-OWNER-NAME           PIC X(22).                               !00604
                                                                       !00605
                                                                       !00606
*                                                                     !!00607
*              The city in which the terminal is located.  The        !!00608
*              terminal referenced is the terminal from which this    !!00609
*              transaction originated.                                !!00610
*                                                                     !!00611
*              The Device Handler, Host Interface, or Interchange     !!00612
*              Interface sets this field.                             !!00613
*                                                                     !!00614
*              The Device Handler retrieves the value for this field  !!00615
*              from the TERM-CITY-ST.CITY field in the PTDF.  The Host!!00616
*              Interface retrieves the value for this field from the  !!00617
*              external message.  The Interchange Interface retrieves !!00618
*              the value for this field from the interchange message. !!00619
*                                                                     !!00620
 02 TERM-CITY                 PIC X(13).                               !00621
                                                                       !00622
                                                                       !00623
*                                                                     !!00624
*              The state or province in which the terminal is located.!!00625
*              The terminal referenced is the terminal at which this  !!00626
*              transaction originated.                                !!00627
*                                                                     !!00628
*              The Device Handler, Host Interface, or Interchange     !!00629
*              Interface sets this field.                             !!00630
*                                                                     !!00631
*              The Device Handler retrieves the value for this field  !!00632
*              from the TERM-CITY-ST.ST field in the PTDF.  The Host  !!00633
*              Interface retrieves the value for this field from the  !!00634
*              external message.  The Interchange Interface retrieves !!00635
*              the value for this field from the interchange message. !!00636
*                                                                     !!00637
 02 TERM-ST                   PIC X(3).                                !00638
                                                                       !00639
                                                                       !00640
*                                                                     !!00641
*              The country in which the terminal is located.  The     !!00642
*              terminal referenced is the terminal from which the     !!00643
*              transaction originated.                                !!00644
*                                                                     !!00645
*              The Device Handler, Host Interface, or Interchange     !!00646
*              Interface sets this field.                             !!00647
*                                                                     !!00648
*              The Device Handler retrieves the value for this field  !!00649
*              from the CNTRY-CDE field in the PTDF.  The Host        !!00650
*              Interface retrieves the value for this field from the  !!00651
*              external message.  The Interchange Interface retrieves !!00652
*              the value for this field from the interchange message. !!00653
*                                                                     !!00654
 02 TERM-CNTRY-CDE             PIC X(2).                               !00655
                                                                       !00656
                                                                       !00657
*                                                                     !!00658
*              The type of terminal from which this transaction       !!00659
*              originated.                                            !!00660
*                                                                     !!00661
*              This field is set by the Device Handler, which         !!00662
*              retrieves the value from the TERM-TYP field in the     !!00663
*              PTDF.                                                  !!00664
*                                                                     !!00665
 02 TERM-TYP                   PIC XX.                                 !00666
                                                                       !00667
                                                                       !00668
                                                                       !00669
                                                                       !00670
                                                                       !00671
                                                                       !00672
                                                                       !00673
*                                                                     !!00674
*              This field is no longer used.                          !!00675
*                                                                     !!00676
 02 BRCH-ID                TYPE BRCH.                                  !00677
                                                                       !00678
                                                                       !00679
*                                                                     !!00680
*              The currency code applicable to this transaction.      !!00681
*                                                                     !!00682
*              For inbound requests from a POS device, the value in   !!00683
*              this field is retrieved from the CRNCY-CDE field in the!!00684
*              PTDF.                                                  !!00685
*                                                                     !!00686
*              For inbound requests from an interchange, the value in !!00687
*              this field is retrieved from the CRNCY-CDE field in the!!00688
*              Base segment of the ICF.                               !!00689
*                                                                     !!00690
*              For inbound requests from an acquirer host, the value  !!00691
*              in this field is retrieved from the external message.  !!00692
*                                                                     !!00693
 02 ORIG-CRNCY-CDE         TYPE CRNCY-CDE.                             !00694
                                                                       !00695
                                                                       !00696
                                                                       !00697
                                                                       !00698
                                                                       !00699
                                                                       !00700
                                                                       !00701
*                                                                     !!00702
*              The authorization source for this transaction.         !!00703
*                                                                     !!00704
*              Valid values are:                                      !!00705
*                                                                     !!00706
*              P = Primary authorizer                                 !!00707
*              1 = First alternate authorizer                         !!00708
*              2 = Second alternate authorizer                        !!00709
*              4 = Default authorizer                                 !!00710
*              9 = Default, no authorizer determined yet              !!00711
*              F = SPROUTE primary authorizer                         !!00712
*              f = SPROUTE first alternate authorizer                 !!00713
*              0 = None                                               !!00714
*                                                                     !!00715
*              Authorization or the Interchange Interface sets this   !!00716
*              field.  This field is used by Router, Authorization,   !!00717
*              and the Interchange Interface.                         !!00718
*                                                                     !!00719
02 AUTH-IND2              PIC X.                                       !00720
                                                                       !00721
                                                                       !00722
                                                                       !00723
                                                                       !00724
                                                                       !00725
                                                                       !00726
                                                                       !00727
*                                                                     !!00728
*              The time difference between the terminal at which the  !!00729
*              transaction originated and the BASE24 processor        !!00730
*              location.  It is the signed (+ or -) number of minutes !!00731
*              to be added to the BASE24 system time in order to      !!00732
*              obtain the terminal time.                              !!00733
*                                                                     !!00734
*              The Device Handler or the Host Interface sets this     !!00735
*              field.                                                 !!00736
*                                                                     !!00737
*              The Device Handler retrieves the value for this field  !!00738
*              from the TIM-OFST field in the PTDF.  The Host         !!00739
*              Interface retrieves the value for this field from the  !!00740
*              external message.                                      !!00741
*                                                                     !!00742
 02 TERM-TIM-OFST           TYPE BINARY 16.                            !00743
                                                                       !00744
                                                                       !00745
                                                                       !00746
                                                                       !00747
*                                                                     !!00748
*              The clerk ID of the clerk who initiated this           !!00749
*              transaction.                                           !!00750
*                                                                     !!00751
*              The Device Handler or the Host Interface sets this     !!00752
*              field.                                                 !!00753
*                                                                     !!00754
*              The Device Handler retrieves the value for this field  !!00755
*              from the CLERK-ID field in the PTDF.  The Host         !!00756
*              Interface retrieves the value for this field from the  !!00757
*              external message.                                      !!00758
*                                                                     !!00759
 02 CLERK-ID                PIC X(6).                                  !00760
                                                                       !00761
                                                                       !00762
                                                                       !00763
                                                                       !00764
                                                                       !00765
*                                                                     !!00766
*              The CRT Authorization operator group and user ID. The  !!00767
*              values in the fields that follow are set by the CRT    !!00768
*              Authorization Device Handler, which retrieves the      !!00769
*              values from Pathway.                                   !!00770
*                                                                     !!00771
 02 CRT-AUTH.                                                          !00772
*                                                                     !!00773
*              The Pathway group number of the operator reviewing this!!00774
*              transaction via the CRT Authorization Device Handler.  !!00775
*                                                                     !!00776
    04 GRP                 PIC X(4).                                   !00777
*                                                                     !!00778
*              The Pathway user ID of the operator reviewing this     !!00779
*              transaction via the CRT Authorization Device Handler.  !!00780
*                                                                     !!00781
    04 USER-ID             PIC X(8).                                   !00782
                                                                       !00783
                                                                       !00784
                                                                       !00785
                                                                       !00786
                                                                       !00787
                                                                       !00788
                                                                       !00789
                                                                       !00790
                                                                       !00791
*                                                                     !!00792
*              The sequence number associated with this transaction.  !!00793
*              If the sequence number is generated by the Device      !!00794
*              Handler, the sequence number is incremented by one for !!00795
*              each transaction within a batch.                       !!00796
*                                                                     !!00797
*              The value in this field is right-justified and zero-   !!00798
*              filled to the left and is set by the Device Handler.   !!00799
*              The value is from the message received from the        !!00800
*              terminal or from the TRAN-SEQ-NUM field in the PTDF.   !!00801
*                                                                     !!00802
*              NOTE: This field can contain non-numeric data.         !!00803
*              Therefore, the BASE24-pos system does not validate this!!00804
*              field for numeric data.                                !!00805
*                                                                     !!00806
 02 SEQ-NUM                PIC X(12).                                  !00807
                                                                       !00808
                                                                       !00809
                                                                       !00810
                                                                       !00811
                                                                       !00812
                                                                       !00813
                                                                       !00814
                                                                       !00815
*                                                                     !!00816
*              The sequence number associated with this               !!00817
*              preauthorization transaction.  The sequence number is  !!00818
*              incremented by one for each transaction within a batch.!!00819
*                                                                     !!00820
*              The value in this field is right-justified and zero-   !!00821
*              filled to the left and is set by the Device Handler,   !!00822
*              Host Interface, or Interchange Interface.  Each of     !!00823
*              these processes retrieves the value from the message   !!00824
*              received from the device, host, or interchange.        !!00825
*                                                                     !!00826
 02 PRE-AUTH-SEQ-NUM       PIC X(12).                                  !00827
                                                                       !00828
                                                                       !00829
*                                                                     !!00830
*              The invoice number associated with this transaction, if!!00831
*              the invoice number is sent up from the terminal.       !!00832
*                                                                     !!00833
*              An invoice number is commonly preprinted on the charge !!00834
*              slip used for this transaction.  The use of invoice    !!00835
*              numbers is optional and determined by retailers.  When !!00836
*              a retailer does not use invoice numbers, this field    !!00837
*              contains zeros.                                        !!00838
*                                                                     !!00839
*              The value in this field is left-justified and blank-   !!00840
*              filled to the right.  This field is set by the Device  !!00841
*              Handler or Host Interface process.  The Device Handler !!00842
*              sets this field from the message received from the     !!00843
*              device or from the Device Handler's internal data.  The!!00844
*              Host Interface sets this field using information from  !!00845
*              the external message.                                  !!00846
*                                                                     !!00847
 02 INVOICE-NUM            PIC X(10).                                  !00848
                                                                       !00849
                                                                       !00850
                                                                       !00851
                                                                       !00852
*                                                                     !!00853
*              The original transaction invoice number associated with!!00854
*              this transaction, if the invoice number is sent up from!!00855
*              the terminal.                                          !!00856
*                                                                     !!00857
*              This field is used for merchandise return transactions !!00858
*              to indicate the invoice number of the original         !!00859
*              transaction in which this merchandise was purchased.   !!00860
*                                                                     !!00861
*              The value in this field is left-justified and blank-   !!00862
*              filled to the right.  This field is set by the Device  !!00863
*              Handler or Host Interface process.  The Device Handler !!00864
*              sets this field from the message received from the     !!00865
*              device or from the Device Handler's internal data.  The!!00866
*              Host Interface sets this field using information from  !!00867
*              the external message.                                  !!00868
*                                                                     !!00869
 02 ORIG-INVOICE-NUM       PIC X(10).                                  !00870
                                                                       !00871
                                                                       !00872
                                                                       !00873
                                                                       !00874
*                                                                     !!00875
*              The sequence number within the batch for this          !!00876
*              transaction.  The value in this field is not related to!!00877
*              the sequence number previously listed.                 !!00878
*                                                                     !!00879
*              The value in this field is set by the Device Handler,  !!00880
*              which retrieves the value from the SEQ-NUM field in the!!00881
*              PTDF.                                                  !!00882
*                                                                     !!00883
 02 BATCH-SEQ-NUM          PIC 9(3).                                   !00884
                                                                       !00885
                                                                       !00886
                                                                       !00887
                                                                       !00888
*                                                                     !!00889
*              The batch number for this transaction.                 !!00890
*                                                                     !!00891
*              The value in this field is set by the Device Handler,  !!00892
*              which retrieves the value from the message received    !!00893
*              from the terminal or from the BATCH-NUM field in the   !!00894
*              PTDF.                                                  !!00895
*                                                                     !!00896
 02 BATCH-NUM              PIC 9(3).                                   !00897
                                                                       !00898
                                                                       !00899
                                                                       !00900
                                                                       !00901
                                                                       !00902
*                                                                     !!00903
*              The shift number for this transaction.                 !!00904
*                                                                     !!00905
*              The value in this field is set by the Device Handler,  !!00906
*              which retrieves the value from the message sent from   !!00907
*              the terminal or from the SHIFT-NUM field in the PTDF.  !!00908
*                                                                     !!00909
 02 SHIFT-NUM              PIC 9(3).                                   !00910
                                                                       !00911
                                                                       !00912
                                                                       !00913
                                                                       !00914
                                                                       !00915
                                                                       !00916
                                                                       !00917
                                                                       !00918
*                                                                     !!00919
*              The terminal owner's transit and routing number or     !!00920
*              issuer identification number, if the terminal is       !!00921
*              directly connected to BASE24-pos.  If the terminal is  !!00922
*              not directly connected to BASE24-pos, this field       !!00923
*              identifies the acquiring entity that introduced the    !!00924
*              transaction into the BASE24-pos system.                !!00925
*                                                                     !!00926
*              The value in this field is right-justified and zero-   !!00927
*              filled to the left and is set by the Device Handler,   !!00928
*              Host Interface, or Interchange Interface.              !!00929
*                                                                     !!00930
*              The Device Handler retrieves the value from the RTTN   !!00931
*              field in the PTDF.  The Host Interface and the         !!00932
*              Interchange Interface retrieve the value from the      !!00933
*              message received from the host or the interchange.     !!00934
*                                                                     !!00935
 02 ACQ-INST-ID-NUM            TYPE ID-NUM.                            !00936
                                                                       !00937
                                                                       !00938
                                                                       !00939
                                                                       !00940
                                                                       !00941
                                                                       !00942
                                                                       !00943
                                                                       !00944
*                                                                     !!00945
*              The card issuer's transit and routing number or issuer !!00946
*              identification number, if it is known to BASE24-pos. If!!00947
*              the transaction is an outbound 0200 message bound to an!!00948
*              interchange, the authorizing interchange can return    !!00949
*              information for mapping into this field for the 0210   !!00950
*              response.                                              !!00951
*                                                                     !!00952
*              The value in this field is right-justified and zero-   !!00953
*              filled to the left. Authorization sets the value in    !!00954
*              this field for on-us transactions, not-on-us           !!00955
*              transactions, inbound acquirer 0200 transactions, and  !!00956
*              inbound interface 0200 transactions.  For all other    !!00957
*              transactions, the value in this field is set by the    !!00958
*              Interchange Interface.                                 !!00959
*                                                                     !!00960
*              Authorization retrieves the value for this field from  !!00961
*              the INST-ID-NUM field in the Base segment of the IDF.  !!00962
*              The Interchange Interface retrieves the value for this !!00963
*              field from the interchange message.                    !!00964
*                                                                     !!00965
 02 RCV-INST-ID-NUM           TYPE ID-NUM.                             !00966
                                                                       !00967
                                                                       !00968
*                                                                     !!00969
*              An identifier for the retailer or merchant that owns or!!00970
*              operates the terminal at which this transaction        !!00971
*              originated.                                            !!00972
*                                                                     !!00973
*              The value in this field is set by the Device Handler,  !!00974
*              the Host Interface, or the Interchange Interface. If   !!00975
*              the Device Handler formats this transaction, the value !!00976
*              is obtained from the TERM-OWNER.RETAILER-ID field in   !!00977
*              the PTDF. If the Host Interface formats this           !!00978
*              transaction, the value is obtained from the acquirer   !!00979
*              host. If the Interchange Interface formats this        !!00980
*              transaction, this field contains the value obtained    !!00981
*              from the external message, a default value from the    !!00982
*              ICF, or zeros.                                         !!00983
*                                                                     !!00984
 02 RETL-ID                    PIC X(19).                              !00985
                                                                       !00986
                                                                       !00987
                                                                       !00988
                                                                       !00989
*                                                                     !!00990
*              The region associated with the retailer or merchant    !!00991
*              that owns or operates the terminal at which this       !!00992
*              transaction originated.                                !!00993
*                                                                     !!00994
*              The value in this field is set by the Device Handler or!!00995
*              the Host Interface. The Device Handler retrieves the   !!00996
*              value from the TERM-OWNER.RETAILER-REGN field in the   !!00997
*              PTDF. The Host Interface obtains the value from the    !!00998
*              acquirer host.                                         !!00999
*                                                                     !!01000
*              If the Interchange Interface formats this transaction, !!01001
*              this field is zero-filled.                             !!01002
*                                                                     !!01003
 02 RETL-REGN                  TYPE REGN.                              !01004
                                                                       !01005
                                                                       !01006
                                                                       !01007
                                                                       !01008
*                                                                     !!01009
*              The group associated with the retailer or merchant that!!01010
*              owns or operates the terminal at which the transaction !!01011
*              originated.                                            !!01012
*                                                                     !!01013
*              The value in this field is set by the Device Handler or!!01014
*              the Host Interface. The Device Handler retrieves the   !!01015
*              value from the TERM-OWNER.RETAILER-GRP field in the    !!01016
*              PTDF. The Host Interface obtains the value from the    !!01017
*              acquirer host.                                         !!01018
*                                                                     !!01019
*              If the Interchange Interface formats this transaction, !!01020
*              this field is zero-filled.                             !!01021
*                                                                     !!01022
 02 RETL-GRP                   PIC X(4).                               !01023
                                                                       !01024
                                                                       !01025
                                                                       !01026
                                                                       !01027
*                                                                     !!01028
*              The Standard Industrial Classification (SIC) code      !!01029
*              indicating the retailer's line of business.  This field!!01030
*              is set by the Device Handler or Authorization.         !!01031
*                                                                     !!01032
*              For mail/phone order transactions, the Device Handler  !!01033
*              sets this field using the MAIL-PO-SIC-CDE field in the !!01034
*              PTDF.  For all other transactions, the Device Handler  !!01035
*              sets this field using the TERM-SIC-CDE field in the    !!01036
*              PTDF.                                                  !!01037
*                                                                     !!01038
*              Authorization only sets this field if it contains zeros!!01039
*              or blanks.  For mail/phone transactions, Authorization !!01040
*              sets this field using the MAIL-PO-SIC-CDE field in the !!01041
*              (POS Retailer Definition File (PRDF)).  For all other  !!01042
*              transactions, Authorization sets this field using the  !!01043
*              RETAILER-SIC-CDE field in the PRDF.                    !!01044
*                                                                     !!01045
 02 RETL-SIC-CDE               PIC X(4).                               !01046
                                                                       !01047
*                                                                     !!01048
*              The following fields identify this transaction.   The  !!01049
*              fields include Track 2, card issuer, logical network,  !!01050
*              transaction type, amounts involved, response codes,    !!01051
*              preauthorization transaction hold data, a referral     !!01052
*              phone number, and the primary and alternate            !!01053
*              authorizers.                                           !!01054
*                                                                     !!01055
 02 TRAN.                                                              !01056
                                                                       !01057
                                                                       !01058
                                                                       !01059
                                                                       !01060
                                                                       !01061
                                                                       !01062
                                                                       !01063
*                                                                     !!01064
*              The transaction type associated with this transaction. !!01065
*              The transaction type is identified by TCTAAC, where TC !!01066
*              is the transaction code, T is the card type, AA is the !!01067
*              account type, and C is the category.                   !!01068
*                                                                     !!01069
    04 TRAN-CDE.                                                       !01070
*                                                                     !!01071
*              The transaction code for this transaction.  Not all of !!01072
*              the transaction codes are valid for all terminals.     !!01073
*              This field is set by the Device Handler based on the   !!01074
*              transaction entered at the terminal.                   !!01075
*                                                                     !!01076
*              Valid values are:                                      !!01077
*                                                                     !!01078
*              10 = Normal purchase                                   !!01079
*              11 = Preauthorization transaction purchase             !!01080
*              12 = Preauthorization transaction purchase completion  !!01081
*              13 = Mail/phone order                                  !!01082
*              14 = Merchandise return                                !!01083
*              15 = Cash advance                                      !!01084
*              16 = Card verification                                 !!01085
*              17 = Balance inquiry                                   !!01086
*              18 = Purchase with cash back                           !!01087
*              19 = Check verification                                !!01088
*              20 = Check guarantee                                   !!01089
*              21 = Adjustment--purchase                              !!01090
*              22 = Adjustment--merchandise return                    !!01091
*              23 = Adjustment--cash advance                          !!01092
*              24 = Adjustment--cash back amount on purchase with cash!!01093
*                   back                                              !!01094
                                                                       !01094C00
*              25 = Stored Value - Card Activation                     !01094C01
*              26 = Stored Value - Additional Card Activation          !01094C02
*              27 = Stored Value - Replenishment                       !01094C03
*              28 = Stored Value - Full Redemption                     !01094C04
                                                                       !01094C05
*                                                                     !!01095
*              BASE24-pos supports check verification and check       !!01096
*              guarantee transactions in a pass-through mode only.    !!01097
*              These transactions can be sent to a host or interchange!!01098
*              for processing.                                        !!01099
*                                                                     !!01100
       06 TC                    PIC XX.                                !01101
*                                                                     !!01102
*              The type of card associated with this transaction.     !!01103
*                                                                     !!01104
*              Valid values are:                                      !!01105
*                                                                     !!01106
*              0 = None                                               !!01107
*              1 = Credit                                             !!01108
*              2 = Debit                                              !!01109
*                                                                     !!01110
*                                                                     !!01111
       06 T                     PIC X.                                 !01112
*                                                                     !!01113
*              The type of account associated with this transaction.  !!01114
*                                                                     !!01115
*              Valid values are:                                      !!01116
*                                                                     !!01117
*              00    = None                                           !!01118
*              01-09 = Checking account                               !!01119
*              11-19 = Savings account                                !!01120
*              31-39 = Credit account                                 !!01121
*                                                                     !!01122
       06 AA                    PIC XX.                                !01123
*                                                                     !!01124
*              The category associated with this transaction.  This   !!01125
*              field is set by the Device Handler based on the        !!01126
*              transaction entered at the terminal.                   !!01127
*                                                                     !!01128
*              Valid values are:                                      !!01129
*                                                                     !!01130
*              0   = Normal                                           !!01131
*              1   = Sales draft                                      !!01132
*              2   = Representation                                   !!01133
*              3   = Chargeback                                       !!01134
*              4   = Personal check/cash                              !!01135
*              5   = Personal check/amount of purchase                !!01136
*              6   = Personal check/amount of purchase with cash back !!01137
*              7   = Government check                                 !!01138
*              8   = Payroll check                                    !!01139
*              9   = Electronic check                                 !!01140
*              A-Z = Reserved for future use                          !!01141
*                                                                     !!01142
*              The Device Handler process or the Interchange Interface!!01143
*              process sets the value in this field.  It is used by   !!01144
*              all application processes.                             !!01145
*                                                                     !!01146
       06 C                     PIC X.                                 !01147
                                                                       !01148
                                                                       !01149
                                                                       !01150
                                                                       !01151
                                                                       !01152
                                                                       !01153
                                                                       !01154
                                                                       !01155
                                                                       !01156
                                                                       !01157
                                                                       !01158
                                                                       !01159
                                                                       !01160
                                                                       !01161
                                                                       !01162
                                                                       !01163
                                                                       !01164
*                                                                     !!01165
*              The origin of this transaction.  This field is used by !!01166
*              Router.                                                !!01167
*                                                                     !!01168
*              For transactions that originate at a device connected  !!01169
*              to BASE24, the Device Handler sets this field to B24.  !!01170
*                                                                     !!01171
*              For transactions that originate at a device connected  !!01172
*              to a host, the Host Interface sets this field to HOST. !!01173
*                                                                     !!01174
*              For transactions that originate at a device connected  !!01175
*              to an interchange, the Interchange Interface sets this !!01176
*              field.                                                 !!01177
*                                                                     !!01178
    04 ORIG                   PIC X(4).                                !01179
                                                                       !01180
                                                                       !01181
                                                                       !01182
                                                                       !01183
                                                                       !01184
                                                                       !01185
                                                                       !01186
                                                                       !01187
                                                                       !01188
                                                                       !01189
                                                                       !01190
                                                                       !01191
                                                                       !01192
                                                                       !01193
                                                                       !01194
                                                                       !01195
                                                                       !01196
*                                                                     !!01197
*              The authorizer or destination for this transaction.    !!01198
*                                                                     !!01199
*              The Device Handler, Authorization, Host Interface, or  !!01200
*              Interchange Interface sets the value in this field.  It!!01201
*              is used by Router.                                     !!01202
*                                                                     !!01203
    04 DEST                   PIC X(4).                                !01204
                                                                       !01205
                                                                       !01206
                                                                       !01207
                                                                       !01208
*                                                                     !!01209
*              The logical network associated with the card issuer for!!01210
*              this transaction.                                      !!01211
*                                                                     !!01212
*              Authorization or the Interchange Interface sets the    !!01213
*              value in this field.  Authorization retrieves the value!!01214
*              from the LOGICAL-NET param in the LCONF. The           !!01215
*              Interchange Interface retrieves the value from the LN  !!01216
*              field in the ICF.                                      !!01217
*                                                                     !!01218
    04 CRD-LN                 TYPE LN.                                 !01219
                                                                       !01220
                                                                       !01221
                                                                       !01222
                                                                       !01223
                                                                       !01224
*                                                                     !!01225
*              The card owner as determined by Authorization from     !!01226
*              internal tables.                                       !!01227
*                                                                     !!01228
*              Authorization uses this field as a key to the IDF.     !!01229
*              Authorization sets this field using the value in the   !!01230
*              FIID field in the Base segment of the CPF.             !!01231
*                                                                     !!01232
    04 CRD-FIID               TYPE FIID.                               !01233
                                                                       !01234
                                                                       !01235
                                                                       !01236
                                                                       !01237
*                                                                     !!01238
*              The number of the account affected by this transaction.!!01239
*                                                                     !!01240
*              The Device Handler, Authorization, Host Interface, or  !!01241
*              Interchange Interface sets the value in this field.    !!01242
*              Each of these processes retrieves the appropriate value!!01243
*              from the message received from the device, the host, or!!01244
*              the interchange.                                       !!01245
*                                                                     !!01246
    04 ACCT                   TYPE ACCT.                               !01247
                                                                       !01248
                                                                       !01249
                                                                       !01250
                                                                       !01251
                                                                       !01252
                                                                       !01253
                                                                       !01254
                                                                       !01255
                                                                       !01256
                                                                       !01257
                                                                       !01258
                                                                       !01259
                                                                       !01260
                                                                       !01261
                                                                       !01262
                                                                       !01263
                                                                       !01264
                                                                       !01265
                                                                       !01266
                                                                       !01267
                                                                       !01268
                                                                       !01269
                                                                       !01270
                                                                       !01271
                                                                       !01272
                                                                       !01273
                                                                       !01274
                                                                       !01275
                                                                       !01276
                                                                       !01277
                                                                       !01278
                                                                       !01279
                                                                       !01280
                                                                       !01281
                                                                       !01282
                                                                       !01283
                                                                       !01284
                                                                       !01285
                                                                       !01286
                                                                       !01287
                                                                       !01288
                                                                       !01289
                                                                       !01290
                                                                       !01291
                                                                       !01292
                                                                       !01293
                                                                       !01294
                                                                       !01295
                                                                       !01296
                                                                       !01297
                                                                       !01298
                                                                       !01299
                                                                       !01300
                                                                       !01301
                                                                       !01302
                                                                       !01303
                                                                       !01304
                                                                       !01305
                                                                       !01306
                                                                       !01307
*                                                                     !!01308
*              The response code as determined by the authorizer for  !!01309
*              this transaction.  A complete list of the BASE24-pos   !!01310
*              response codes is provided in the "BASE24-pos          !!01311
*              Transaction Processing Manual."                        !!01312
*                                                                     !!01313
*              Router, Authorization, the Host Interface, or the      !!01314
*              Interchange Interface sets the value in this field.    !!01315
*                                                                     !!01316
    04 RESP-CDE               PIC X(3).                                !01317
                                                                       !01318
                                                                       !01319
*                                                                     !!01320
*              The reason code listed in the Negative Card File (NEG) !!01321
*              or the Cardholder Authorization File (CAF) for the card!!01322
*              that originated this transaction.  The reason code     !!01323
*              listed in the RSN-CDE field in the NEG indicates the   !!01324
*              reason the card is in the NEG.  The reason code listed !!01325
*              in the RSN-CDE field in the BASE24-pos segment of the  !!01326
*              CAF indicates the account status.                      !!01327
*                                                                     !!01328
*              Authorization sets the value in this field.            !!01329
*                                                                     !!01330
    04 RSN-CDE                PIC XX.                                  !01331
                                                                       !01332
                                                                       !01333
                                                                       !01334
                                                                       !01335
*                                                                     !!01336
*              The Track 2 data, as sent by the terminal to the Device!!01337
*              Handler.                                               !!01338
*                                                                     !!01339
*              If the card number was entered manually, the first byte!!01340
*              contains an M followed by the card number, a field     !!01341
*              separator, the expiration date (YYMM), and an end      !!01342
*              sentinel.                                              !!01343
*                                                                     !!01344
*              If the information was read from the magnetic stripe on!!01345
*              card, the data is in the standard Track 2 format, as   !!01346
*              described below.                                       !!01347
*                                                                     !!01348
*               1.  Start sentinel.                                   !!01349
*               2.  PAN, left-justified.                              !!01350
*               3.  An equal sign (=).                                !!01351
*               4.  Member number (if one exists).                    !!01352
*               5.  Country code (if one exists).                     !!01353
*               6.  Expiration date (if one exists).                  !!01354
*               7.  PIN offset (if one exists).                       !!01355
*               8.  Algorithm offset (if one exists).                 !!01356
                                                                       !01357G00
                                                                       !01357G01
*               9.  End sentinel.                                     !!01357G02
*              10.  Blank fill to the right.                          !!01357G03
                                                                       !01357G04
*                                                                     !!01359
*              The Device Handler, Host Interface, or Interchange     !!01360
*              Interface sets the value in this field.  It is used by !!01361
*              Authorization.                                         !!01362
*                                                                     !!01363
    04 TRACK2                 PIC X(40).                               !01364
                                                                       !01365
                                                                       !01366
                                                                       !01367
                                                                       !01368
                                                                       !01369
                                                                       !01370
                                                                       !01371
                                                                       !01372
                                                                       !01373
*                                                                     !!01374
*              The member number for the card which initiated this    !!01375
*              transaction.  When multiple cards are issued with the  !!01376
*              same card number, the member number distinguishes the  !!01377
*              cards.                                                 !!01378
*                                                                     !!01379
*              The value in this field is right-justified and zero-   !!01380
*              filled. It is set and used by Authorization.           !!01381
*                                                                     !!01382
    04 MBR-NUM                TYPE *.                                  !01383
                                                                       !01384
                                                                       !01385
*                                                                     !!01386
*              The expiration date (YYMM) of the card which initiated !!01387
*              this transaction.  The card does not expire until the  !!01388
*              month listed has passed.                               !!01389
*                                                                     !!01390
*              Authorization sets the value in this field from Track 2!!01391
*              data.  It is also used by Authorization.               !!01392
*                                                                     !!01393
    04 EXP-DAT                PIC X(4).                                !01394
                                                                       !01395
*                                                                     !!01396
*              This field is not used.                                !!01397
*                                                                     !!01398
    04 USER-FLD2              PIC X.                                   !01399
                                                                       !01400
                                                                       !01401
                                                                       !01402
*                                                                     !!01403
*              The primary amount involved in this transaction.       !!01404
*                                                                     !!01405
*              For purchase with cash back transactions, this field   !!01406
*              contains the total amount (the purchase amount plus the!!01407
*              cash amount).                                          !!01408
*                                                                     !!01409
*              For adjustment transactions, this field contains the   !!01410
*              original completed amount.                             !!01411
*                                                                     !!01412
*              For preauthorization transactions, this field contains !!01413
*              the requested amount to be held.                       !!01414
*                                                                     !!01415
*              For preauthorization completion transactions, this     !!01416
*              field contains the completed amount.                   !!01417
*                                                                     !!01418
*              The Device Handler, Host Interface, or Interchange     !!01419
*              Interface sets the value in this field.  These         !!01420
*              processes retrieve the value from the message received !!01421
*              from the device, host, or interchange.  This field is  !!01422
*              used by all the application processes.                 !!01423
*                                                                     !!01424
    04 AMT-1                  TYPE BINARY 64.                          !01425
                                                                       !01426
                                                                       !01427
                                                                       !01428
                                                                       !01429
                                                                       !01430
                                                                       !01431
*                                                                     !!01432
*              The secondary amount involved with this transaction.   !!01433
*                                                                     !!01434
*              For purchase with cash back transactions, this field   !!01435
*              contains the cash back amount.                         !!01436
*                                                                     !!01437
*              For adjustment transactions, this field contains the   !!01438
*              new amount.                                            !!01439
*                                                                     !!01440
*              For chargeback transactions, this field contains the   !!01441
*              replacement amount.                                    !!01442
*                                                                     !!01443
*              The Device Handler, Host Interface, or Interchange     !!01444
*              Interface sets the value in this field.  These         !!01445
*              processes retrieve the value from the message received !!01446
*              from the device, host, or interchange.  This field is  !!01447
*              used by all the application processes.                 !!01448
*                                                                     !!01449
    04 AMT-2                  TYPE BINARY 64.                          !01450
                                                                       !01451
                                                                       !01452
*                                                                     !!01453
*              The following group of fields apply only in multi-     !!01454
*              currency systems.  Multi-currency systems are not      !!01455
*              currently available with BASE24-pos.  These fields are !!01456
*              redefined as a user-field for single currency systems. !!01457
*                                                                     !!01458
    04 MULT-CRNCY.                                                     !01459
                                                                       !01460
                                                                       !01461
                                                                       !01462
                                                                       !01463
*                                                                     !!01464
*              This field is not used.                                !!01465
*                                                                     !!01466
       06 AUTH-CRNCY-CDE           TYPE CRNCY-CDE.                     !01467
                                                                       !01468
                                                                       !01469
                                                                       !01470
                                                                       !01471
*                                                                     !!01472
*              This field is not used.                                !!01473
*                                                                     !!01474
       06 SETL-CRNCY-CDE           TYPE CRNCY-CDE.                     !01475
                                                                       !01476
                                                                       !01477
*                                                                     !!01478
*              This field is not used.                                !!01479
*                                                                     !!01480
       06 AUTH-CONV-RATE           PIC 9(8).                           !01481
                                                                       !01482
                                                                       !01483
*                                                                     !!01484
*              This field is not used.                                !!01485
*                                                                     !!01486
       06 SETL-CONV-RATE           PIC 9(8).                           !01487
                                                                       !01488
                                                                       !01489
                                                                       !01490
                                                                       !01491
*                                                                     !!01492
*              This field is not used.                                !!01493
*                                                                     !!01494
       06 CONV-DAT-TIM             TYPE BINARY 64.                     !01495
                                                                       !01496
*                                                                     !!01497
*              This field is not used.                                !!01498
*                                                                     !!01499
    04 USER-FLD3    REDEFINES MULT-CRNCY   PIC X(30).                  !01500
                                                                       !01501
                                                                       !01502
                                                                       !01503
                                                                       !01504
*                                                                     !!01505
*              For preauthorization transactions, this field contains !!01506
*              the time limit for holding the preauthorized funds.    !!01507
*                                                                     !!01508
*              This field consists of two subfields. The first        !!01509
*              subfield contains one digit and determines the hold    !!01510
*              increment.  Valid values for the first subfield are    !!01511
*              listed below.                                          !!01512
*                                                                     !!01513
*              0 = Minutes                                            !!01514
*              1 = Hours                                              !!01515
*              2 = Days                                               !!01516
*                                                                     !!01517
*              The second subfield contains two digits and determines !!01518
*              the actual preauthorization hold units (that is, the   !!01519
*              number of minutes, hours, or days, as determined by the!!01520
*              first field).  Valid values for the second subfield are!!01521
*              00 through 99.                                         !!01522
*                                                                     !!01523
*              The Device Handler, Host Interface, or Interchange     !!01524
*              Interface sets the value in this field.  The Device    !!01525
*              Handler retrieves the value from the message received  !!01526
*              from the device or from the PRE-AUTH-HLD field in the  !!01527
*              PTDF.  The Host Interface process retrieves the value  !!01528
*              from the message received from the host.  The          !!01529
*              Interchange Interface process retrieves the value from !!01530
*              the message received from the interchange or from the  !!01531
*              PRE-AUTH-HLD field in the ICF.  This field is used by  !!01532
*              Authorization.                                         !!01533
*                                                                     !!01534
    04 PRE-AUTH-HLD           TYPE BINARY 16.                          !01535
                                                                       !01536
                                                                       !01537
                                                                       !01538
                                                                       !01539
                                                                       !01540
*                                                                     !!01541
*              The maximum length of the approval code that can be    !!01542
*              handled by the device at which this transaction        !!01543
                                                                       !01543D00
*              originated, or that is supported for the card prefix.   !01543D01
                                                                       !01543D02
                                                                       !01544D00
                                                                       !01544D01
*                                                                     !!01545
*              Approval codes must be at least 2, but not more than 6,!!01546
*              positions in length.                                   !!01547
*                                                                     !!01548
                                                                       !01548D00
*              The Device Handler, Host Interface, Authorization or    !01548D01
*              Interchange Interface sets the value in this field.     !01548D02
                                                                       !01548D03
                                                                       !01549D00
                                                                       !01549D01
                                                                       !01549D02
*                                                                     !!01551
*              The Device Handler retrieves the value for this field  !!01552
*              from the APPRV-CDE-LGTH field in the PTDF.  The Host   !!01553
*              Interface retrieves the value for this field from the  !!01554
*              POS message.  The Interchange Interface retrieves the  !!01555
*              value for this field from the message received from the!!01556
*              interchange or from the APPRV-CDE-LGTH field in the    !!01557
                                                                       !01557D00
*              BASE24-pos segment of the ICF. The Authorization        !01557D01
*              process retrieves the value from the message or from    !01557D02
*              the APPRV-CDE-LGTH field in the POS segment of the CPF. !01557D03
                                                                       !01557D04
                                                                       !01558D00
                                                                       !01558D01
*                                                                     !!01559
*              This field is used by the Device Handler, Interchange  !!01560
                                                                       !01560D00
*              Interface, Host Interface and Authorization.            !01560D01
                                                                       !01560D02
                                                                       !01561D00
                                                                       !01561D01
*                                                                     !!01562
    04 APPRV-CDE-LGTH         PIC X.                                   !01563
                                                                       !01564
                                                                       !01565
                                                                       !01566
                                                                       !01567
*                                                                     !!01568
*              The approval code for this transaction.  If this       !!01569
*              transaction was sent to an interchange that returns    !!01570
*              approval codes to be printed on the receipt, the       !!01571
*              returned approval code is placed in this field.  If    !!01572
*              this transaction was approved by Authorization or a    !!01573
*              host, the value in this field is generated by          !!01574
*              Authorization or the host.                             !!01575
*                                                                     !!01576
*              If BASE24-pos generates the code and the transaction   !!01577
*              was a Visa transaction approved by checking the        !!01578
*              National Negative Files, an X is inserted into the last!!01579
*              byte of this field.  Otherwise, when BASE24-pos        !!01580
*              generates the code, a B is inserted into the last byte !!01581
*              of this field.                                         !!01582
*                                                                     !!01583
*              The value in this field is left-justified and blank-   !!01584
*              filled to the right. Authorization, the Host Interface,!!01585
*              or the Interchange Interface sets the value in this    !!01586
*              field.                                                 !!01587
*                                                                     !!01588
*              Authorization generates the value it places in this    !!01589
*              field.  The Host Interface and the Interchange         !!01590
*              Interface retrieve the value for this field from the   !!01591
*              message received from the host or the interchange.     !!01592
*                                                                     !!01593
*              This field is used by the Device Handler, the Host     !!01594
*              Interface, and the Interchange Interface.              !!01595
*                                                                     !!01596
    04 APPRV-CDE              PIC X(8).                                !01597
                                                                       !01598
                                                                       !01599
*                                                                     !!01600
*              The interchange response values, if an interchange was !!01601
*              involved in the processing of this transaction. Since  !!01602
*              different interchanges respond with different values   !!01603
*              (e.g., response code, reply code, reason code), all of !!01604
*              these values are included in this field if returned by !!01605
*              the interchange.  The values are put into this field in!!01606
*              the same order as they exist in the interchange        !!01607
*              message.  This field is left-justified and space-filled!!01608
*              to the right.                                          !!01609
*                                                                     !!01610
*              The Interchange Interface sets the value in this field !!01611
*              using the message received from the interchange.  This !!01612
*              field is used by the Host Interface.                   !!01613
*                                                                     !!01614
    04 ICHG-RESP              PIC X(8).                                !01615
                                                                       !01616
                                                                       !01617
                                                                       !01618
                                                                       !01619
*                                                                     !!01620
*              The pseudo ID associated with the terminal from which  !!01621
*              this transaction originated.  The pseudo ID allows     !!01622
*              terminals to be identified in a way different from the !!01623
*              value in TERM-ID field in the PSTM.                    !!01624
*                                                                     !!01625
*              The interchange sets the value in this field for       !!01626
*              messages coming from the interchange.  The Interchange !!01627
*              Interface sets the value in this field for messages    !!01628
*              going to the interchange. This field is used by the    !!01629
*              Host Interface for informational purposes only.        !!01630
*                                                                     !!01631
    04 PSEUDO-TERM-ID         PIC X(4).                                !01632
                                                                       !01633
                                                                       !01634
                                                                       !01635
                                                                       !01636
*                                                                     !!01637
*              A value indicating whether this transaction involves   !!01638
*              draft capture and how this transaction is settled.     !!01639
*              Draft capture is settling a transaction with an        !!01640
*              electronic message instead of paper.                   !!01641
*                                                                     !!01642
*              Valid values are:                                      !!01643
*                                                                     !!01644
*              0 = Authorize only and use a paper receipt to settle   !!01645
*                  the transaction later                              !!01646
*              1 = Authorize and capture; transaction includes the    !!01647
*                  information needed for immediate settlement        !!01648
*              2 = Authorize only and expect electronic follow-up to  !!01649
*                  settle the transaction later                       !!01650
*              3 = Electronic follow-up to settle a previously        !!01651
*                  authorized transaction                             !!01652
*              9 = Authorize only; settlement method could not be     !!01653
*                  determined.  (The card type was unavailable because!!01654
*                  the algorithm check was not performed and the      !!01655
*                  SPROUTE File entry used for routing information did!!01656
*                  not contain a card type.  Router requires a card   !!01657
*                  type before it can obtain the draft capture flag   !!01658
*                  value from the PTDF or PRDF.)                      !!01659
*                                                                     !!01660
*              Router or the Host Interface sets the value in this    !!01661
*              field.  It is used by Authorization.                   !!01662
*                                                                     !!01663
    04 DFT-CAPTURE-FLG        PIC 9.                                   !01664
                                                                       !01665
                                                                       !01666
                                                                       !01667
                                                                       !01668
*                                                                     !!01669
*              Specifies whether the Router module should modify the  !!01670
*              POST-DAT field, which causes the Device Handler module !!01671
*              to cut over the terminal.  The Device Handler module   !!01672
*              sets this field using the TERM-CUTOVER-TC field in the !!01673
*              PTDF.                                                  !!01674
*                                                                     !!01675
    04 SETL-FLG               PIC 9.                                   !01676
                                                                       !01677
                                                                       !01678
                                                                       !01679
                                                                       !01680
*                                                                     !!01681
*              The referral phone number to be used if applicable for !!01682
*              this transaction.                                      !!01683
*                                                                     !!01684
*              The Interchange Interface sets the value in this field !!01685
*              using the message received from the interchange.       !!01686
*                                                                     !!01687
*              The ISO Host Interface sets this field using the       !!01688
*              message received from the host.  If no referral phone  !!01689
*              number is provided in the external message, the ISO    !!01690
*              Host Interface sets this field using the RFRL-PHONE    !!01691
*              field in the BASE24-pos segment of the Host            !!01692
*              Configuration File (HCF).                              !!01693
*                                                                     !!01694
*              The ANSI Host Interface sets this field using the      !!01695
*              message received from the host.                        !!01696
*                                                                     !!01697
    04 RFRL-PHONE            TYPE PHONE-NUM.                           !01698
                                                                       !01699
                                                                       !01700
                                                                       !01701
                                                                       !01702
*                                                                     !!01703
*              The account type value to be saved for this            !!01704
*              transaction.                                           !!01705
*                                                                     !!01706
*              The ranges of valid values are:                        !!01707
*                                                                     !!01708
*              01-09 = Checking account types                         !!01709
*              11-19 = Savings account types                          !!01710
*              31-39 = Credit account types                           !!01711
*                                                                     !!01712
*              The value in this field is set by Authorization from   !!01713
*              the ACCT.TYP field in the CAF.                         !!01714
*                                                                     !!01715
    04 SAVE-ACCT-TYP            PIC X(2).                              !01716
                                                                       !01717
                                                                       !01718
                                                                       !01719
                                                                       !01720
*                                                                     !!01721
*              A flag that identifies an override performed at a CRT  !!01722
*              Authorization terminal.  This flag also identifies     !!01723
*              whether the original transaction was performed at a POS!!01724
*              device or a CRT Authorization terminal.                !!01725
*                                                                     !!01726
*              The CRT Authorization Device Handler sets this flag    !!01727
*              whenever a transaction originates at a CRT             !!01728
*              Authorization terminal or a transaction originates at a!!01729
*              POS device and its response is overridden at a CRT     !!01730
*              Authorization terminal.  Both of these situations      !!01731
*              require special handling by the Router module.         !!01732
*                                                                     !!01733
*              When a transaction involving a debit card originates or!!01734
*              has its response overridden at a CRT Authorization     !!01735
*              terminal, Router checks the DEBIT-SUPPORT-FLAG field in!!01736
*              the PRDF record to determine whether the retailer      !!01737
*              allows a debit card transaction to be processed at a   !!01738
*              CRT Authorization terminal.                            !!01739
*                                                                     !!01740
*              Also, when a transaction originates at a CRT           !!01741
*              Authorization terminal, Router uses information in the !!01742
*              RETAILER.POSTAL-CDE, RETAILER.CNTRY, RETAILER.ADDR, and!!01743
*              RETAILER.NAME fields in the PRDF record to complete the!!01744
*              POSTAL-CDE, TERM-CNTRY-CDE, TERM-NAM-LOC, and TERM-    !!01745
*              OWNER-NAME terminal information fields in the PSTM.    !!01746
*                                                                     !!01747
*              Router performs the debit card check and completes the !!01748
*              terminal information fields in the PSTM based on the   !!01749
*              value in this field.   Valid values are:               !!01750
*                                                                     !!01751
*              0 = Normal transaction; CRT Authorization not involved !!01752
*                  (default).                                         !!01753
*              1 = CRT Authorization Override (0220) of a transaction !!01754
*                  originating at a POS device; Router checks debit   !!01755
*                  cards.                                             !!01756
*              3 = Normal transaction originating at a CRT            !!01757
*                  Authorization terminal; Router checks debit cards  !!01758
*                  and uses terminal information from the PRDF.       !!01759
*                                                                     !!01760
*              The value in this field is used by CRT Authorization   !!01761
*              and Router/Authorization.                              !!01762
*                                                                     !!01763
    04 OVRRDE-FLG               PIC X.                                 !01764
                                                                       !01765
                                                                       !01766
                                                                       !01767
                                                                       !01768
*                                                                     !!01769
*              The following fields contain information used for      !!01770
*              transaction routing.                                   !!01771
*                                                                     !!01772
 02 RTE.                                                               !01773
                                                                       !01774
                                                                       !01775
                                                                       !01776
                                                                       !01777
                                                                       !01778
                                                                       !01779
                                                                       !01780
*                                                                     !!01781
*              A code identifying the type of service associated with !!01782
*              this transaction.  Codes used in this field are either !!01783
*              reserved by BASE24 or user-defined.  Reserved codes are!!01784
*              to be used only as defined, and include:               !!01785
*                                                                     !!01786
*              AD = Administrative (BASE24-atm only)                  !!01787
*              AX = American Express credit                           !!01788
*              BD = Business deposit (BASE24-atm and BASE24-teller    !!01789
*                   only)                                             !!01790
*              C* = Private label credit (includes C, C0-C9, CA, and  !!01791
*                   CC-CZ)                                            !!01792
*              CB = Carte Blanche credit                              !!01793
*              D  = Demonstration (BASE24-atm only)                   !!01794
*              DC = Diners Club credit                                !!01795
*              DS = Discover (Sears) credit                           !!01796
*              M  = MasterCard credit                                 !!01797
*              MD = MasterCard debit (See BASE24-pos note below)      !!01798
*              MM = MasterCard dual (See BASE24-pos note below)       !!01799
*              P* = Proprietary debit (includes P, P0-P9, and PA-PZ)  !!01800
*              SC = Special, Check (BASE24-pos only)                  !!01801
*              SP = Special purpose (BASE24-atm Self-Service Banking  !!01802
*                   Check Application only)                           !!01803
*              ST = Super teller (BASE24-atm Self-Service Banking Base!!01804
*                   Application only)                                 !!01805
*              V  = VISA credit                                       !!01806
*              VD = VISA debit (See BASE24-pos note below)            !!01807
*              VV = VISA dual (See BASE24-pos note below)             !!01808
*                                                                     !!01809
*              Codes with a first character of C, except code CB, are !!01810
*              recommended to identify private label credit cards.    !!01811
*                                                                     !!01812
*              Codes with a first character of P are required to      !!01813
*              identify proprietary debit cards.  BASE24 treats cards !!01814
*              with proprietary debit codes and codes MD and VD as    !!01815
*              debit cards and treats cards with all other codes as   !!01816
*              credit cards.                                          !!01817
*                                                                     !!01818
*              Administrative (AD), Business deposit (BD),            !!01819
*              Demonstration (D), Special purpose (SP), and Super     !!01820
*              teller (ST) are special-use card types used by BASE24- !!01821
*              atm.                                                   !!01822
*                                                                     !!01823
*              Business deposit (BD) is also a special-use card type  !!01824
*              used by BASE24-teller to identify cards that can only  !!01825
*              be used to initiate deposit transactions.  BASE24-     !!01826
*              teller does not perform any other processing based on  !!01827
*              card type; however, BASE24 guidelines should still be  !!01828
*              used when establishing card types for BASE24-teller.   !!01829
*                                                                     !!01830
*              MasterCard dual (MM) and VISA dual (VV) can be         !!01831
*              processed as debit or credit card types, based on the  !!01832
*              default combo card type specified in the CPF.          !!01833
*                                                                     !!01834
*              Special, Check (SC) is a special-use card type used to !!01835
*              initiate BASE24-pos check guarantee and check          !!01836
*              verification transactions only.                        !!01837
*                                                                     !!01838
*              BASE24-pos NOTE:  BASE24-pos does not allow MasterCard !!01839
*              debit (MD), MasterCard dual (MM), VISA debit (VD), or  !!01840
*              VISA dual (VV) card types in the PRDF and PTDF.        !!01841
*              BASE24-pos automatically includes the MD and MM card   !!01842
*              types with the MasterCard credit (M) card type, and    !!01843
*              automatically includes the VD and VV card types with   !!01844
*              the VISA credit (V) card type.                         !!01845
*                                                                     !!01846
*              User-defined Codes:  The user can add any one- or two- !!01847
*              character code not included in the reserved code list  !!01848
*              above, according to the following guidelines:          !!01849
*                                                                     !!01850
*              o  The first character must be alphabetic (A, B, D-O,  !!01851
*                 and Q-Z).                                           !!01852
*              o  The second character can be A-Z, 0-9, or a blank.   !!01853
*              o  A valid COBNAMES table entry is recommended for each!!01854
*                 user-defined code.                                  !!01855
*                                                                     !!01856
    04 SRV                    PIC XX.                                  !01857
                                                                       !01858
                                                                       !01859
                                                                       !01860
                                                                       !01861
                                                                       !01862
                                                                       !01863
*                                                                     !!01864
*              The retailer program(s) in which the retailer          !!01865
*              associated with this transaction participates.         !!01866
*                                                                     !!01867
*              Valid values are:                                      !!01868
*                                                                     !!01869
*              A = AID                                                !!01870
*              T = TIRF                                               !!01871
*              B = TIRF & AID                                         !!01872
*              N = Non-dial                                           !!01873
*              R = Regular                                            !!01874
*              0 = No program                                         !!01875
*              Z = All programs                                       !!01876
*                                                                     !!01877
*              Router sets the value in this field using the RETAILER-!!01878
*              PROG field in the PRDF. This field is used by Router.  !!01879
*                                                                     !!01880
    04 RETL-PROG             PIC X.                                    !01881
                                                                       !01882
                                                                       !01883
                                                                       !01884
                                                                       !01885
                                                                       !01886
                                                                       !01887
*                                                                     !!01888
*              A user-defined indicator identifying the issuer        !!01889
*              associated with this transaction.                      !!01890
*                                                                     !!01891
*              Values indicating on-us cards must fall within a       !!01892
*              certain range, as do those indicating not-on-us cards. !!01893
*              The ranges of values are:                              !!01894
*                                                                     !!01895
*              00-29 = On-us (has an associated IDF record)           !!01896
*              30-99 = Not-on-us (has no associated IDF record)       !!01897
*                                                                     !!01898
*              Router sets the value in this field using the ISS field!!01899
*              in the CPF.  If Router cannot find a CPF record for the!!01900
*              card, Router sets this field to 99.  This field is used!!01901
*              by Router.                                             !!01902
*                                                                     !!01903
    04 ISS                   PIC XX.                                   !01904
                                                                       !01905
                                                                       !01906
*                                                                     !!01907
*              Indicates whether the amount associated with this      !!01908
*              transaction is over or under the floor limit for this  !!01909
*              service.                                               !!01910
*                                                                     !!01911
*              Valid values are:                                      !!01912
*                                                                     !!01913
*              0 = Under                                              !!01914
*              1 = Over                                               !!01915
*                                                                     !!01916
*              The Router module sets the value in this field.  This  !!01917
*              field is used by Router.                               !!01918
*                                                                     !!01919
    04 OVER-LMT               PIC X.                                   !01920
                                                                       !01921
                                                                       !01922
*                                                                     !!01923
*              The online limit allowed for this type of transaction, !!01924
*              as determined by the merchant associated with this     !!01925
*              transaction.                                           !!01926
*                                                                     !!01927
*              Router sets the value in this field using the AST.     !!01928
*              This field is used by Router.                          !!01929
*                                                                     !!01930
    04 ONL-LMT                TYPE BINARY 32.                          !01931
*                                                                     !!01932
*              The offline limit allowed for this type of transaction,!!01933
*              as determined by the merchant associated with this     !!01934
*              transaction.                                           !!01935
*                                                                     !!01936
*              Router sets the value in this field using the AST.     !!01937
*              This field is used by Router.                          !!01938
*                                                                     !!01939
    04 OFFL-LMT               TYPE BINARY 32.                          !01940
                                                                       !01941
                                                                       !01942
                                                                       !01943
                                                                       !01944
*                                                                     !!01945
*              The primary authorizer for this transaction.           !!01946
*                                                                     !!01947
*              Router sets this field from the AST or SPROUTE.  This  !!01948
*              is the authorization entity to which this transaction  !!01949
*              will be sent.                                          !!01950
*                                                                     !!01951
    04 PRI                    TYPE SYM-NAME.                           !01952
*                                                                     !!01953
*              The first alternate authorizer for this transaction.   !!01954
*                                                                     !!01955
*              Router sets this field from the AST or SPROUTE.  This  !!01956
*              field is used by Router to determine where to send the !!01957
*              transaction if the primary authorizer is not available.!!01958
*                                                                     !!01959
    04 ALT1                   TYPE SYM-NAME.                           !01960
                                                                       !01961
                                                                       !01962
*                                                                     !!01963
*              The second alternate authorizer for this transaction.  !!01964
*                                                                     !!01965
*              Router sets this field from the AST.  This field is    !!01966
*              used by Router to determine where to send the          !!01967
*              transaction if the primary authorizer and the first    !!01968
*              alternate authorizer are not available.                !!01969
*                                                                     !!01970
    04 ALT2                   TYPE SYM-NAME.                           !01971
                                                                       !01972
                                                                       !01973
                                                                       !01974
                                                                       !01975
                                                                       !01976
                                                                       !01977
                                                                       !01978
                                                                       !01979
*                                                                     !!01980
*              Indicates the authorizer which authorized this         !!01981
*              transaction.                                           !!01982
*                                                                     !!01983
*              Valid values are:                                      !!01984
*                                                                     !!01985
*              P = Primary                                            !!01986
*              1 = Alternate 1                                        !!01987
*              2 = Alternate 2                                        !!01988
*              4 = Default authorized                                 !!01989
*              9 = No authorizers                                     !!01990
*              F = SPROUTE primary                                    !!01991
*              f = SPROUTE alternate 1                                !!01992
*                                                                     !!01993
*              When authorizers are determined with the assistance of !!01994
*              SPROUTE, a second alternate authorizer is not          !!01995
*              determined.                                            !!01996
*                                                                     !!01997
*              Authorization or the Interchange Interface sets the    !!01998
*              value in this field.  It is used by Router,            !!01999
*              Authorization, or the Interchange Interface.           !!02000
*                                                                     !!02001
    04 AUTH-IND               PIC X.                                   !02002
                                                                       !02003
                                                                       !02004
*                                                                     !!02005
*              The default action to take if no authorization can be  !!02006
*              performed.  This action is determined from the AST.    !!02007
*                                                                     !!02008
*              Valid values are:                                      !!02009
*                                                                     !!02010
*              0 = Decline                                            !!02011
*              1 = Authorize blind                                    !!02012
*              2 = Issue call for authorization                       !!02013
*                                                                     !!02014
*              Router sets the value in this field.  It is used by    !!02015
*              Authorization.                                         !!02016
*                                                                     !!02017
    04 DFLT                   PIC X.                                   !02018
                                                                       !02019
                                                                       !02020
                                                                       !02021
                                                                       !02022
                                                                       !02023
                                                                       !02024
*                                                                     !!02025
*              Indicates whether the merchant wants to check the      !!02026
*              National Negative Files (NNFs) before sending this     !!02027
*              transaction to the interchange for authorization.  The !!02028
*              NNFs include the American Express National Negative    !!02029
*              File (ANEG), Base National Negative File (BNEG), Base  !!02030
*              National Range File (BNR), INAS National Negative File !!02031
*              (INEG), and INAS National Range File (INR).            !!02032
*                                                                     !!02033
*              Valid values are:                                      !!02034
*                                                                     !!02035
*              0 = False; do not access NNFs before sending           !!02036
*                  transaction.                                       !!02037
*              1 = True; do access NNFs before sending transaction,   !!02038
*                  and decline if on file.                            !!02039
*                                                                     !!02040
*              Router or Authorization sets the value in this field   !!02041
*              using the SRV.HIT-NNEG field in the PRDF.              !!02042
*                                                                     !!02043
    04 HIT-NNEG               PIC X.                                   !02044
                                                                       !02045
                                                                       !02046
                                                                       !02047
                                                                       !02048
                                                                       !02049
                                                                       !02050
                                                                       !02051
*                                                                     !!02052
*              A flag that indicates whether Router found an AST      !!02053
*              record for this transaction.                           !!02054
*                                                                     !!02055
*              Valid values are:                                      !!02056
*                                                                     !!02057
*              0 = AST search was not performed                       !!02058
*              1 = AST was found                                      !!02059
*              2 = AST was not found                                  !!02060
*                                                                     !!02061
*                                                                     !!02062
    04 AST-FND                PIC X.                                   !02063
                                                                       !02064
                                                                       !02065
                                                                       !02066
*                                                                     !!02067
*              A flag indicating whether the host associated with this!!02068
*              transaction requires a completion message from         !!02069
*              Authorization.                                         !!02070
*                                                                     !!02071
*              Valid values are:                                      !!02072
*                                                                     !!02073
*              0 = No completion required.                            !!02074
                                                                       !02075E00
*              1 = Completion required for approved transactions.     !!02075E01
                                                                       !02075E02
*              2 = Host is offline; completion required if            !!02076
*                  authorization level is 3 (online/offline).         !!02077
                                                                       !02077E00
*              4 = Completion required for all transactions.          !!02077E01
                                                                       !02077E02
                                                                       !02077H00
*              5 = Completion required for approved BASE24 authorized  !02077H01
*                  transactions only                                   !02077H02
*                  -set from the IPCF by the Authorization process.    !02077H03
*                                                                      !02077H04
*              6 = Completion required for all BASE24 authorized       !02077H05
*                  transactions (approved/denied)                      !02077H06
*                  -set from the IPCF by the Authorization process.    !02077H07
                                                                       !02077H08
                                                                       !02077H09
                                                                       !02077H0A
                                                                       !02077H0B
*                                                                     !!02078
*              Authorization or the Host Interface sets the value in  !!02079
*              this field.  It is used by Authorization.              !!02080
*                                                                     !!02081
 02 COMPL-REQ                 PIC X.                                   !02082
                                                                       !02083
                                                                       !02084
                                                                       !02085
                                                                       !02086
*                                                                     !!02087
*              If this transaction is an adjustment transaction, this !!02088
*              field indicates whether the terminal allows adjustment !!02089
*              transactions when AMT-2 is greater than AMT-1.         !!02090
*                                                                     !!02091
*              Valid values are:                                      !!02092
*                                                                     !!02093
*              0 = Adjustment is not allowed.                         !!02094
*              1 = Adjustment is allowed.                             !!02095
*                                                                     !!02096
*              The Device Handler sets the value in this field using  !!02097
*              the ALLOWED-TRANS(24) field in the PTDF.  The Host     !!02098
*              Interface sets this field using the ADJ-FLG field in   !!02099
*              the BASE24-pos segment of the HCF.                     !!02100
*                                                                     !!02101
*              This field is used by Router.  Authorization checks the!!02102
*              ADJ-FLG field in the BASE24-pos segment of the IDF to  !!02103
*              determine whether the institution allows adjustment    !!02104
*              transactions when AMT2 is greater than AMT1.           !!02105
*                                                                     !!02106
 02 ADJ-FLG                   PIC X.                                   !02107
                                                                       !02108
                                                                       !02109
                                                                       !02110
*                                                                     !!02111
                                                                       !02111H00
*              This field indicates whether the transaction originator !02111H01
                                                                       !02111I00
*              supports the authorization of the transaction for a     !02111I01
*              lesser or a greater amount than the amount requested.   !02111I02
*              If authorization for a lesser amount is allowed,        !02111I03
*              a transaction request for an amount in excess           !02111I04
*              of transaction limits or available credit is processed  !02111I05
*              for the maximum amount that can be approved.            !02111I06
*              If authorization for a greater amount is allowed,       !02111I07
*              a transaction request can be approved for any amount    !02111I08
*              up to a limit defined at the card prefix level, subject !02111I09
*              to transaction limits applicable to the card and        !02111I0A
*              available credit in the account. If authorization for   !02111I0B
*              a lesser amount or greater amount is not allowed, a     !02111I0C
                                                                       !02111I0D
                                                                       !02111I0E
                                                                       !02111I0F
                                                                       !02111I0G
*              transaction request for an amount in excess of          !02111H0F
*              transaction limits or available credit is declined.     !02111H0G
*              Valid values are:                                       !02111H0H
*                                                                      !02111H0I
*              P               = Transaction can be authorized for a   !02111H0J
*                                lesser amount than was requested.     !02111H0K
*                                Valid for Pre-auth purchase,          !02111H0L
*                                purchase, mail-phone order, purchase  !02111H0M
*                                with cash back and cash advance       !02111H0N
*                                transactions.                         !02111H0O
                                                                       !02111I0H
*                                                                      !02111I0I
*              G               = Transaction can be authorized for a   !02111I0J
*                                greater amount than was requested     !02111I0K
*                                Valid for Pre-auth purchase,          !02111I0L
*                                purchase and mail-phone order         !02111I0M
*                                transactions.                         !02111I0N
*                                                                      !02111I0O
*              D               = Host-acquired request where BASE24    !02111I0P
*                                will determine whether transaction    !02111I0Q
*                                can be authorized for a lesser or a   !02111I0R
*                                greater amount than was requested.    !02111I0S
*                                Valid for Pre-auth purchase,          !02111I0T
*                                purchase, mail-phone order, purchase  !02111I0U
*                                transactions.                         !02111I0V
*                                                                      !02111I0W
                                                                       !02111I0X
*              any other value = Transaction cannot be authorized for  !02111H0P
*                                a lesser amount than was requested.   !02111H0Q
*                                Valid for Pre-auth purchase,          !02111H0R
*                                purchase, mail-phone order, purchase  !02111H0S
*                                with cash back and cash advance       !02111H0T
*                                transactions.                         !02111H0U
*                                                                      !02111H0V
*              Device Handlers and Interchange Interfaces that support !02111H0W
                                                                       !02111I0Y
*              authorization for a lesser amount or a greater amount   !02111I0Z
                                                                       !02111I0a
*              purchases or pre-auth purchases for a lesser amount     !02111H0X
*              set this field when transaction requests come in to     !02111H0Y
*              BASE24-pos. To set this field to P, the Device Handler  !02111H0Z
                                                                       !02111I0b
*              or interface must have been modified to support         !02111I0c
*              authorization for a lesser amount. To set this field    !02111I0d
*              to G, the Device Handler or interface must have been    !02111I0e
*              modified to support authorization for a greater amount. !02111I0f
                                                                       !02111I0g
*              must have been modified to support purchases or         !02111H0a
*              pre-auth purchases for a lesser amount.                 !02111H0b
*                                                                      !02111H0c
*              This field is used by the BASE24-pos Router and         !02111H0d
*              Authorization modules, the BIC Interface, the Host      !02111H0e
*              Interface, and various Interchange Interfaces.          !02111H0f
                                                                       !02111H0g
                                                                       !02112H00
                                                                       !02112H01
                                                                       !02112H02
*                                                                     !!02149
 02 PRE-AUTH-OPT              REDEFINES ADJ-FLG  PIC X.                !02150
                                                                       !02151
                                                                       !02152
                                                                       !02153
                                                                       !02154
                                                                       !02155
*                                                                     !!02156
*              Indicates when the administrative security should be   !!02157
*              checked.  The Device Handler must return the value in  !!02158
*              this field when a second transaction is required, such !!02159
*              as for merchandise returns. Authorization does or does !!02160
*              not validate the administrative card again depending on!!02161
*              the value in this field.                               !!02162
*                                                                     !!02163
*              Valid values are:                                      !!02164
*                                                                     !!02165
*              0 = Not validated                                      !!02166
*              1 = Validated                                          !!02167
*                                                                     !!02168
*              The Device Handler sets the value in this field.  It is!!02169
*              used by Authorization.                                 !!02170
*                                                                     !!02171
 02 ADMIN-SEC-IND             TYPE BINARY 16.                          !02172
                                                                       !02173
                                                                       !02174
*                                                                     !!02175
*              The date this transaction began.  The date is adjusted !!02176
*              for time offset, if applicable.                        !!02177
*                                                                     !!02178
*              The Device Handler, Host Interface, or Interchange     !!02179
*              Interface sets the value in this field.                !!02180
*                                                                     !!02181
*              This field is used by Authorization.                   !!02182
*                                                                     !!02183
 02 TRAN-DAT                  TYPE DAT.                                !02184
                                                                       !02185
                                                                       !02186
*                                                                     !!02187
*              The time this transaction entered the BASE24-pos system!!02188
*              from a device, interchange or acquirer host.           !!02189
*                                                                     !!02190
*              This field contains the actual device time as          !!02191
*              calculated by the Device Handler, provided by the      !!02192
*              interchange, or provided by an acquiring host.  The    !!02193
*              Device Handler determines the device time by using the !!02194
*              system time and adding the time offset.                !!02195
*                                                                     !!02196
*              The Device Handler, Host Interface, or Interchange     !!02197
*              Interface sets the value in this field.  This field is !!02198
*              used by Authorization.                                 !!02199
*                                                                     !!02200
 02 TRAN-TIM                  TYPE TIM.                                !02201
                                                                       !02202
                                                                       !02203
                                                                       !02204
*                                                                     !!02205
*              The date this transaction will be settled by the       !!02206
*              interchange, if an interchange originated the          !!02207
*              transaction.  If an interchange did not originate this !!02208
*              transaction, this field is zero-filled.                !!02209
*                                                                     !!02210
*              The Interchange Interface sets the value in this field !!02211
*              using the POST-DAT field in the ICF.  This field is    !!02212
*              used by the Interchange Interface.                     !!02213
*                                                                     !!02214
 02 ACQ-ICHG-SETL-DAT         TYPE DAT.                                !02215
                                                                       !02216
                                                                       !02217
                                                                       !02218
*                                                                     !!02219
*              The date this transaction will be settled by the       !!02220
*              interchange, if an interchange authorized this         !!02221
*              transaction.  If an interchange did not authorize this !!02222
*              transaction, this field is zero-filled.                !!02223
*                                                                     !!02224
*              The Interchange Interface sets the value in this field !!02225
*              using the POST-DAT field in the ICF.  This field is    !!02226
*              used by the Interchange Interface.                     !!02227
*                                                                     !!02228
 02 ISS-ICHG-SETL-DAT         TYPE DAT.                                !02229
                                                                       !02230
                                                                       !02231
                                                                       !02232
                                                                       !02233
                                                                       !02234
*                                                                     !!02235
*              A reason code explaining why this transaction is a     !!02236
*              reversal or an adjustment.                             !!02237
*                                                                     !!02238
*              Valid values for reversals are:                        !!02239
*                                                                     !!02240
*              01 = Time-out                                          !!02241
*              02 = Command reject                                    !!02242
*              03 = Destination not available                         !!02243
*              08 = Customer canceled                                 !!02244
*              10 = Hardware error                                    !!02245
*              19 = System error                                      !!02246
*              20 = Suspect reversal                                  !!02247
*              21 = Message Authentication Code (MAC) failure         !!02248
*              22 = KMAC (Key MAC) synchronization error              !!02249
*              23 = Message replay error                              !!02250
*              24 = Invalid MAC                                       !!02251
*                                                                     !!02252
*              Valid values for adjustments are:                      !!02253
*                                                                     !!02254
*              00 = Reason unknown                                    !!02255
*              12 = Original amount incorrect                         !!02256
*              14 = Suspicious reversal override                      !!02257
*              15 = Misdispense reversal override                     !!02258
*              16 = Duplicate transaction                             !!02259
*              17 = Reconciliation error                              !!02260
*              18 = Reserved                                          !!02261
*              19 = System error                                      !!02262
                                                                       !02262F00
*              40 = Split Routing Enabled; Secondary Service Not       !02262F01
*                   Approved                                           !02262F02
                                                                       !02262F03
*                                                                     !!02263
*              The Device Handler, Host Interface, or Interchange     !!02264
*              Interface sets the value in this field.  This field is !!02265
*              used by the Interchange Interface.                     !!02266
*                                                                     !!02267
 02 RVSL-CDE                 PIC 99.                                   !02268
                                                                       !02269
                                                                       !02270
                                                                       !02271
                                                                       !02272
                                                                       !02273
                                                                       !02274
*                                                                     !!02275
*              Specifies the origin of this transaction.  This code   !!02276
*              indicates a special condition which exists at the time !!02277
*              a transaction is initiated.                            !!02278
*                                                                     !!02279
*              Valid values are:                                      !!02280
*                                                                     !!02281
*              00    = Normal presentment                             !!02282
*              01    = Customer not present                           !!02283
*              02    = Unattended terminal able to retain card        !!02284
*              03    = Merchant suspicious                            !!02285
*              04    = Electronic cash register interface             !!02286
*              05    = Customer present but card not present          !!02287
*              06    = Preauthorization transaction requests          !!02288
*              07    = Telephone device request                       !!02289
*              08    = Mail order/telephone order                     !!02290
*              09    = Security alert                                 !!02291
*              10    = Customer identity verified                     !!02292
*              11    = Suspected fraud                                !!02293
*              12    = Security reasons                               !!02294
*              13    = Representment of item                          !!02295
*              14    = Public utility terminal                        !!02296
*              15    = Customer terminal (home terminal)              !!02297
*              16    = Administration terminal                        !!02298
*              17    = Returned item (chargeback)                     !!02299
*              18    = No check in envelope/all returned              !!02300
*              19    = Deposit out-of-balance/all returned            !!02301
*              20    = Payment out-of-balance/all returned            !!02302
*              21    = Manual reversal                                !!02303
*              22    = Terminal error/counted                         !!02304
*              23    = Terminal error/not counted                     !!02305
*              24    = Deposit out-of-balance/applied contents        !!02306
*              25    = Payment out-of-balance/applied contents        !!02307
*              26    = Withdrawal had error/reversed                  !!02308
*              27    = Unattended term unable to retain card          !!02309
*              28-40 =  Reserved for ISO use                          !!02310
*              41-50 = Reserved for national use                      !!02311
*              51    = Address Verification                           !!02312
*              52-99 = Reserved for private use                       !!02313
*                                                                     !!02314
*              The Interchange Interface and Device Handler set the   !!02315
*              value in this field using the message received from the!!02316
*              interchange or device.  This field is used by the      !!02317
*              Device Handler and Interchange Interface processes.    !!02318
*                                                                     !!02319
 02 PT-SRV-COND-CDE           PIC 99.                                  !02320
                                                                       !02321
                                                                       !02322
*                                                                     !!02323
*              A code indicating the manner in which this transaction !!02324
*              entered BASE24-pos.                                    !!02325
*                                                                     !!02326
*              Valid values for the first and second bytes are listed !!02327
*              below.                                                 !!02328
*                                                                     !!02329
*              00    = Unspecified                                    !!02330
*              01    = Manually                                       !!02331
*              02    = Magnetic stripe                                !!02332
*              03    = Bar code                                       !!02333
*              04    = OCR                                            !!02334
*              05    = Integrated circuit card                        !!02335
                                                                       !02335G00
*              07    = Integrated circuit card contactless             !02335G01
*              91    = Magnetic stripe contactless                     !02335G02
                                                                       !02335G03
*              06-60 = Reserved for ISO use                           !!02336
*              61-80 = Reserved for national use                      !!02337
*              81-99 = Reserved for private use                       !!02338
*                                                                     !!02339
*              Valid values for the third byte are listed below.      !!02340
*                                                                     !!02341
*              0   = Unspecified                                      !!02342
*              1   = PIN entry capability                             !!02343
*              2   = No PIN entry capability                          !!02344
*              3-5 = Reserved for ISO use                             !!02345
*              6-7 = Reserved for national use                        !!02346
*              8-9 = Reserved for private use                         !!02347
*                                                                     !!02348
*              The Interchange Interface and Device Handler set the   !!02349
*              value in this field using the message received from the!!02350
*              interchange or device.  This field is used by the      !!02351
*              Device Handler and the Interchange Interface.          !!02352
*                                                                     !!02353
 02 PT-SRV-ENTRY-MDE          PIC 999.                                 !02354
                                                                       !02355
                                                                       !02356
                                                                       !02357
                                                                       !02358
                                                                       !02359
*                                                                     !!02360
*              The PIN (Personal Identification Number) that was      !!02361
*              entered at the device during this transaction.  If the !!02362
*              PIN has already been verified, this field contains     !!02363
*              blanks.                                                !!02364
*                                                                     !!02365
*              The Device Handler, Host Interface, or Interchange     !!02366
*              Interface sets the value in this field.  All of these  !!02367
*              processes retrieve the value from the message received !!02368
*              from the device, host, or interchange. This field is   !!02369
*              used by Authorization, the Host Interface, and the     !!02370
*              Interchange Interface.                                 !!02371
*                                                                     !!02372
 02 PIN                       TYPE *.                                  !02373
                                                                       !02374
                                                                       !02375
                                                                       !02376
                                                                       !02377
*                                                                     !!02378
*              The length of the PIN entered during this transaction. !!02379
*              This field is right justified and zero-filled to the   !!02380
*              left.                                                  !!02381
*                                                                     !!02382
*              The Device Handler, Host Interface, or Interchange     !!02383
*              Interface sets the value in this field.  All of these  !!02384
*              processes retrieve the value from the message received !!02385
*              from the device, host, or interchange.                 !!02386
*                                                                     !!02387
*              This field is used by Authorization, the Host          !!02388
*              Interface, and the Interchange Interface.              !!02389
*                                                                     !!02390
 02 PIN-SIZE                  PIC 99.                                  !02391
                                                                       !02392
                                                                       !02393
*                                                                     !!02394
*              The number of PIN attempts made at the terminal when   !!02395
*              this transaction was being entered.                    !!02396
*                                                                     !!02397
*              This field is initialized by the Device Handler and    !!02398
*              incremented by Authorization on each unsuccessful PIN  !!02399
*              entry.  Once a PIN has been verified, Authorization    !!02400
*              sets this field to Z.                                  !!02401
*                                                                     !!02402
*              The ISO Host Interface sets this field to Z if the PIN !!02403
*              field an incoming request contains all PAD characters. !!02404
*              For any other value in the PIN field, the ISO Host     !!02405
*              Interface sets this field to zeros.                    !!02406
*                                                                     !!02407
 02 PIN-TRIES                 PIC 9.                                   !02408
                                                                       !02409
                                                                       !02410
                                                                       !02411
                                                                       !02412
*                                                                     !!02413
*              An encrypted form of the key used to protect the PIN   !!02414
*              (e.g., E.MFK/1[KPE]).  This field is used only when the!!02415
*              PIN-FRMT field in the PSTM is set to 1, 2, or 3.       !!02416
*                                                                     !!02417
*              The value in this field is used by the Device Handler, !!02418
*              Authorization, the Interchange Interface, and the Host !!02419
*              Interface.                                             !!02420
*                                                                     !!02421
 02 PIN-KEY                   PIC X(16).                               !02422
                                                                       !02423
                                                                       !02424
                                                                       !02425
                                                                       !02426
*                                                                     !!02427
*              The encrypted form of the previous key used by an      !!02428
*              interchange to encrypt PINs.                           !!02429
*                                                                     !!02430
*              The Interchange Interface sets the value in this field !!02431
*              using the message sent by the interchange. This field  !!02432
*              is used by Authorization.                              !!02433
*                                                                     !!02434
 02 USER-KEY                  PIC X(16).                               !02435
                                                                       !02436
                                                                       !02437
                                                                       !02438
*                                                                     !!02439
*              Identifies the encrypted form used to protect the PIN. !!02440
*                                                                     !!02441
*              Valid values are:                                      !!02442
*                                                                     !!02443
*              0 = Clear PIN                                          !!02444
*              1 = Encrypted ANSI (PIN/PAN) PIN block                 !!02445
*              3 = Encrypted PIN/PAD PIN block                        !!02446
*                                                                     !!02447
*              The Interchange Interface or Host Interface sets the   !!02448
*              value in this field using the PIN-BLK field in the     !!02449
*              KEYF. The Device Handler sets the value in this field  !!02450
*              based on the ENCR-PIN.PIN-ENCRYPT-TYP field in the     !!02451
*              PTDF.  This field is used by the Device Handler,       !!02452
*              Authorization, the Host Interface, and the Interchange !!02453
*              Interface.                                             !!02454
*                                                                     !!02455
 02 PIN-FRMT                  PIC 9.                                   !02456
                                                                       !02457
                                                                       !02458
                                                                       !02459
                                                                       !02460
                                                                       !02461
*                                                                     !!02462
*              The hexadecimal digit used to fill the PIN block when  !!02463
*              the PIN/PAD PIN block is used to encrypt the PIN (PIN- !!02464
*              FRMT field in the PSTM is set to 3).  The hexadecimal  !!02465
*              digit can be A through F.                              !!02466
*                                                                     !!02467
*              The Interchange Interface or Device Handler sets the   !!02468
*              value in this field.  This field is used by the Device !!02469
*              Handler, Authorization, the Host Interface, and the    !!02470
*              Interchange Interface.                                 !!02471
*                                                                     !!02472
 02 PINPAD-CHAR               PIC X.                                   !02473
                                                                       !02474
                                                                       !02475
*                                                                     !!02476
*              The starting position of the twelve PAN digits when the!!02477
*              ANSI (PIN/PAN) PIN block is used to encrypt the PIN    !!02478
*              (PIN-FRMT field in the PSTM is set to 1).  The first   !!02479
*              digit in the PAN has a positional value of 0.          !!02480
*                                                                     !!02481
*              The Interchange Interface or Device Handler sets the   !!02482
*              value in this field.  This field is used by the Device !!02483
*              Handler, Authorization, the Host Interface, and the    !!02484
*              Interchange Interface.                                 !!02485
*                                                                     !!02486
 02 ANSI-OFST              TYPE BINARY 16.                             !02487
                                                                       !02488
                                                                       !02489
                                                                       !02490
                                                                       !02491
                                                                       !02492
                                                                       !02493
                                                                       !02494
                                                                       !02495
                                                                       !02496
                                                                       !02497
                                                                       !02498
                                                                       !02499
                                                                       !02500
                                                                       !02501
                                                                       !02502
*                                                                     !!02503
*              The transaction trace number generated by the Host     !!02504
*              Interface and the Interchange Interface.  This field is!!02505
*              used by the Host Interface.                            !!02506
*                                                                     !!02507
 02 HOST-TRACE-NUM          PIC 9(6).                                  !02508
                                                                       !02509
                                                                       !02510
                                                                       !02511
                                                                       !02512
*                                                                     !!02513
*              The timestamp indicating when this transaction entered !!02514
*              the BASE24-pos system for the first time, whether it   !!02515
*              entered the system through the Device Handler, the Host!!02516
*              Interface, or the Interchange Interface.  The value in !!02517
*              this field is expressed in Greenwich Mean Time (GMT).  !!02518
*                                                                     !!02519
*              The Device Handler, Host Interface, or Interchange     !!02520
*              Interface sets the value in this field using the       !!02521
*              JULIANTIMESTAMP system proc.                           !!02522
*                                                                     !!02523
 02 ENTRY-TIM                  TYPE BINARY 64.                         !02524
                                                                       !02525
                                                                       !02526
                                                                       !02527
                                                                       !02528
*                                                                     !!02529
*              The timestamp indicating when this transaction left the!!02530
*              BASE24-pos system for authorization, either through the!!02531
*              Host Interface or the Interchange Interface.  The value!!02532
*              in this field is expressed in Greenwich Mean Time      !!02533
*              (GMT).                                                 !!02534
*                                                                     !!02535
*              The Host Interface or the Interchange Interface sets   !!02536
*              the value in this field using the JULIANTIMESTAMP      !!02537
*              system proc.                                           !!02538
*                                                                     !!02539
 02 EXIT-TIM                   TYPE BINARY 64.                         !02540
                                                                       !02541
                                                                       !02542
*                                                                     !!02543
*              The timestamp indicating when the Host Interface or the!!02544
*              Interchange Interface received the response to its     !!02545
*              original request from the authorizing entity.  The     !!02546
*              value in this field is expressed in Greenwich Mean Time!!02547
*              (GMT).                                                 !!02548
*                                                                     !!02549
*              The Host Interface or the Interchange Interface sets   !!02550
*              the value in this field using the JULIANTIMESTAMP      !!02551
*              system proc.                                           !!02552
*                                                                     !!02553
 02 RE-ENTRY-TIM               TYPE BINARY 64.                         !02554
                                                                       !02555
                                                                       !02556
                                                                       !02557
                                                                       !02558
                                                                       !02559
                                                                       !02560
                                                                       !02561
                                                                       !02562
                                                                       !02563
*                                                                     !!02564
*              The value of the LCONF param POS-FORWARD-INST-ID.  This!!02565
*              value equates to a routing transit number representing !!02566
*              BASE24-pos.                                            !!02567
*                                                                     !!02568
*              This field is loaded by Authorization and is used for  !!02569
*              logging purposes only.  If data is present, the value  !!02570
*              is right-justified and zero-filled to the left.        !!02571
*                                                                     !!02572
 02 FRWD-INST-ID-NUM           TYPE ID-NUM.                            !02573
                                                                       !02574
                                                                       !02575
                                                                       !02576
                                                                       !02577
                                                                       !02578
                                                                       !02579
                                                                       !02580
                                                                       !02581
*                                                                     !!02582
*              A code identifying the card acceptor for this          !!02583
*              transaction, if it originated at an acquirer host. This!!02584
*              field is used only in cases where the acquirer is the  !!02585
*              actual card acceptor.  If the acquirer is not the      !!02586
*              actual card acceptor for this transaction, this field  !!02587
*              is left blank.                                         !!02588
*                                                                     !!02589
*              The value in this field is right-justified and zero-   !!02590
*              filled and is loaded from the POS message.  This field !!02591
*              is transmitted for logging purposes only.              !!02592
*                                                                     !!02593
 02 CRD-ACCPT-ID-NUM           TYPE ID-NUM.                            !02594
                                                                       !02595
                                                                       !02596
                                                                       !02597
                                                                       !02598
                                                                       !02599
                                                                       !02600
                                                                       !02601
                                                                       !02602
                                                                       !02603
*                                                                     !!02604
*              A code identifying the actual card issuer on the       !!02605
*              response from an authorizing host for this transaction,!!02606
*              if the receiving institution is not the actual card    !!02607
*              acceptor.  Otherwise, this field is left blank.        !!02608
*                                                                     !!02609
*              The value in this field is right-justified and zero-   !!02610
*              filled and is loaded from the POS message.  This field !!02611
*              is transmitted for logging purposes only.              !!02612
*                                                                     !!02613
 02 CRD-ISS-ID-NUM             TYPE ID-NUM.                            !02614
                                                                       !02615
                                                                       !02616
                                                                       !02617
                                                                       !02618
                                                                       !02619
                                                                       !02620
                                                                       !02621
                                                                       !02622
                                                                       !02623
                                                                       !02624
                                                                       !02625
                                                                       !02626
                                                                       !02627
                                                                       !02628
                                                                       !02629
*                                                                     !!02630
*              The following fields contain the original data elements!!02631
*              associated with reversal transactions. Because the data!!02632
*              is dependent on the originator of the transaction,     !!02633
*              these fields are not always filled.                    !!02634
*                                                                     !!02635
*              This information is used by the Host Interface, the    !!02636
*              Interchange Interface, and CRT Administration Device   !!02637
*              Handler.                                               !!02638
*                                                                     !!02639
 02 ORIG-DATA.                                                         !02640
                                                                       !02641
                                                                       !02642
*                                                                     !!02643
*              The original message type.                             !!02644
*                                                                     !!02645
    04 MSG-TYP                 PIC X(4).                               !02646
                                                                       !02647
                                                                       !02648
*                                                                     !!02649
*              The original transaction time.                         !!02650
*                                                                     !!02651
    04 TRN-TIM                 TYPE TIM.                               !02652
*                                                                     !!02653
*              The date of the original transaction.                  !!02654
*                                                                     !!02655
    04 TRN-DAT                 PIC X(4).                               !02656
                                                                       !02657
                                                                       !02658
                                                                       !02659
                                                                       !02660
                                                                       !02661
                                                                       !02662
*                                                                     !!02663
*              The sequence number of the original transaction.       !!02664
*                                                                     !!02665
    04 TRAN-SEQ-NUM            PIC X(12).                              !02666
                                                                       !02667
                                                                       !02668
                                                                       !02669
                                                                       !02670
*                                                                     !!02671
*              The BASE24-pos posting date of the original            !!02672
*              transaction.                                           !!02673
*                                                                     !!02674
    04 B24-POST-DAT            PIC X(4).                               !02675
                                                                       !02676
                                                                       !02677
                                                                       !02678
                                                                       !02679
*                                                                     !!02680
*              The reason for the chargeback, if the transaction is a !!02681
*              chargeback.                                            !!02682
*                                                                     !!02683
*              Valid values are:                                      !!02684
*                                                                     !!02685
*              03 = Invalid merchant                                  !!02686
*              12 = Invalid transaction                               !!02687
*              18 = Customer dispute                                  !!02688
*              59 = Suspected fraud                                   !!02689
*              63 = Security violation                                !!02690
*              64 = Original transaction amount incomplete            !!02691
*              68 = Supporting documentation received too late        !!02692
*              93 = Transaction in violation of the law               !!02693
*              94 = Duplicate transaction                             !!02694
*              96 = System malfunction                                !!02695
*                                                                     !!02696
*              The value in this field is loaded by the CRT           !!02697
*              Administration Device Handler.  This field is used for !!02698
*              chargeback transactions by the Host Interface, the     !!02699
*              Interchange Interface, and the CRT Administration      !!02700
*              Device Handler.                                        !!02701
*                                                                     !!02702
 02 REA-FOR-CHRGBCK            PIC X(2).                               !02703
                                                                       !02704
                                                                       !02705
                                                                       !02706
                                                                       !02707
*                                                                     !!02708
*              A number identifying the number of times this          !!02709
*              transaction has been charged back, if the transaction  !!02710
*              is a chargeback.                                       !!02711
*                                                                     !!02712
*              The value in this field is loaded by the CRT           !!02713
*              Administration Device Handler.  This field is used for !!02714
*              chargeback transactions by the Host Interface, the     !!02715
*              Interchange Interface, and the CRT Administration      !!02716
*              Device Handler.                                        !!02717
*                                                                     !!02718
 02 NUM-OF-CHRGBCK                 PIC 9.                              !02719
                                                                       !02720
                                                                       !02721
                                                                       !02722
                                                                       !02723
                                                                       !02724
                                                                       !02725
                                                                       !02726
                                                                       !02727
                                                                       !02728
                                                                       !02729
 02 CHECK-ID-TYP                   PIC X(2).                           !02730
                                                                       !02731
                                                                       !02732
*                                                                     !!02733
*              A code indicating whether address verification is to be!!02734
*              performed by BASE24. If this field contains a value of !!02735
*              98, address verification is performed by BASE24. Any   !!02736
*              other value indicates address verification is not      !!02737
*              performed by BASE24.                                   !!02738
*                                                                     !!02739
*              The field is set by the Merchant Host Interface, the   !!02740
*              ISO Host Interface, the ANSI Host Interface, the       !!02741
*              VisaNet Interchange Interface, the Banknet Interchange !!02742
*              Interface, or a BASE24 Interchange Interface. This     !!02743
*              field is used by Authorization.                        !!02744
*                                                                     !!02745
 02  ADDR-TYP REDEFINES CHECK-ID-TYP  PIC X(2).                        !02746
                                                                       !02747
                                                                       !02748
                                                                       !02749
                                                                       !02750
                                                                       !02751
*                                                                     !!02752
*              This field is not used.                                !!02753
*                                                                     !!02754
 02 CHECK-ID-NUM                    PIC X(24).                         !02755
                                                                       !02756
                                                                       !02757
*                                                                     !!02758
*              The following fields support the BASE24-pos address    !!02759
*              verification function.                                 !!02760
*                                                                     !!02761
 02 ADDR-FLDS  REDEFINES CHECK-ID-NUM.                                 !02762
*                                                                     !!02763
*              The cardholder's billing address.                      !!02764
*                                                                     !!02765
    04  ADDR                        PIC X(20).                         !02766
*                                                                     !!02767
*              A code identifying the result of comparing address     !!02768
*              verification information received in the transaction   !!02769
*              and address verification information contained in the  !!02770
*              processor's database.  Valid values are:               !!02771
*                                                                     !!02772
*              A  = ADDRESS--Addresses matched, but ZIP codes did not !!02773
*                   match.                                            !!02774
*              E* = ERROR--The transaction was not eligible for       !!02775
*                   address verification or an editing error occurred !!02776
*                   while attempting to process the message.          !!02777
*              N  = NO--Addresses did not match and ZIP codes did not !!02778
*                   match.                                            !!02779
*              R* = RETRY--Primary and secondary authorizers were     !!02780
*                   unavailable or declined the transaction and       !!02781
*                   address verification was not performed on         !!02782
*                   BASE24-pos.                                       !!02783
*              S* = SERVICE NOT SUPPORTED--BASE24-pos authorized the  !!02784
*                   transaction, but did not have the add-on Address  !!02785
*                   Verification module.                              !!02786
*              U* = UNAVAILABLE--Address information was not available!!02787
*                   to the processor performing address verification. !!02788
*              W  = WHOLE ZIP--Nine-digit ZIP codes matched, but      !!02789
*                   addresses did not match.                          !!02790
*              X  = EXACT--Addresses and nine-digit ZIP codes matched.!!02791
*              Y  = YES--Addresses and five-digit ZIP codes matched.  !!02792
*              Z  = ZIP--Five-digit ZIP codes matched, but addresses  !!02793
*                   did not match.                                    !!02794
*              _* = Address verification information was not included !!02795
*                   in this transaction (_ denotes a blank character).!!02796
*              0* = Address verification information was included in  !!02797
*                   this transaction, but was not verified.  A        !!02798
*                   transaction to be verified by a host or           !!02799
*                   interchange carries this code.  A transaction to  !!02800
*                   be verified on BASE24-pos, but declined before    !!02801
*                   address verification could be performed also      !!02802
*                   carries this code.                                !!02803
*                                                                     !!02804
*              * Identifies a reason that a comparison was not made.  !!02805
*                Each interchange specifies the value it uses to      !!02806
*                identify this reason. Interchange Interfaces         !!02807
*                substitute the interchange-specific value before     !!02808
*                sending the message from BASE24-pos to the           !!02809
*                interchange.  Refer to the "BASE24-pos Address       !!02810
*                Verification Manual" for a listing of interchange-   !!02811
                                                                       !02811G00
*                specific values.                                      !02811G01
*                                                                      !02811G02
*              Interchange response messages received by BASE24-pos    !02811G03
*              may contain interchange-specific values.                !02811G04
*              BASE24 Interchange Interfaces do not change             !02811G05
*              a value received from the interchange.                  !02811G06
*              Refer to the individual interchange documentation       !02811G07
*              for details of interchange-specific values.             !02811G08
                                                                       !02811G09
                                                                       !02812G00
                                                                       !02812G01
                                                                       !02812G02
*                                                                     !!02814
    04  ADDR-VRFY-STAT              PIC X.                             !02815
                                                                       !02816
                                                                       !02817
                                                                       !02818
*                                                                     !!02819
*              This field is not used.                                !!02820
*                                                                     !!02821
    04  USER-FLD1                   PIC X(3).                          !02822
                                                                       !02823
                                                                       !02824
                                                                       !02825
*                                                                     !!02826
*              This field is not used.                                !!02827
*                                                                     !!02828
 02 STATE-CDE                      PIC X(2).                           !02829
                                                                       !02830
                                                                       !02831
                                                                       !02832
*                                                                     !!02833
*              This field is not used.                                !!02834
*                                                                     !!02835
 02 BIRTH-DAT                      PIC X(6).                           !02836
                                                                       !02837
                                                                       !02838
                                                                       !02839
                                                                       !02840
                                                                       !02841
*                                                                     !!02842
*              This field is used only for address verification and   !!02843
*              contains the ZIP code for the cardholder's billing     !!02844
*              address. The ZIP code must be five or nine digits long.!!02845
*              If the ZIP code is five digits long, it is left-       !!02846
*              justified and blank-filled.                            !!02847
*                                                                     !!02848
 02 ZIP-CDE                      PIC X(9).                             !02849
                                                                       !02850
*                                                                     !!02851
*              This field is not used.                                !!02852
*                                                                     !!02853
 02 USER-FLD9                    PIC X.                                !02854
                                                                       !02855
                                                                       !02856
                                                                       !02857
                                                                       !02858
                                                                       !02859
                                                                       !02860
                                                                       !02861
                                                                       !02862
*                                                                     !!02863
*              The postal ZIP code associated with the terminal at    !!02864
*              which this transaction originated.                     !!02865
*                                                                     !!02866
*              The Device Handler or the Host Interface sets the value!!02867
*              in this field.                                         !!02868
*                                                                     !!02869
*              The Device Handler retrieves the value from the POSTAL-!!02870
*              CDE field in the PTDF.  The Host Interface retrieves   !!02871
*              the value from the message received from the host.     !!02872
*                                                                     !!02873
 02 POSTAL-CDE             TYPE *.                                     !02874
                                                                       !02875
                                                                       !02876
                                                                       !02877
                                                                       !02878
*                                                                     !!02879
*              This field is not used.                                !!02880
*                                                                     !!02881
 02 USER-FLD10             PIC X.                                      !02882
                                                                       !02883
                                                                       !02884
                                                                       !02885
                                                                       !02886
                                                                       !02887
                                                                       !02888
*                                                                     !!02889
*              Indicates whether the USER-DATA field is appended to   !!02890
*              this message.                                          !!02891
*                                                                     !!02892
*              Valid values are:                                      !!02893
*                                                                     !!02894
*              0 = No, the USER-DATA field is not appended to this    !!02895
*                  message.                                           !!02896
*              1 = Yes, the USER-DATA field is appended to this       !!02897
*                  message.                                           !!02898
*                                                                     !!02899
*              The value in this field is loaded from the POS message.!!02900
*              This field is used by Router, Authorization, the Host  !!02901
*              Interface, the Interchange Interface, and the CRT      !!02902
*              Administrative Device Handler.                         !!02903
*                                                                     !!02904
 02 DATA-FLAG                      PIC X.                              !02905
                                                                       !02906
                                                                       !02907
                                                                       !02908
                                                                       !02909
                                                                       !02910
                                                                       !02911
                                                                       !02912
                                                                       !02913
                                                                       !02914
                                                                       !02915
*                                                                     !!02916
*              The number of services allowed at the terminal from    !!02917
*              which this transaction originated.                     !!02918
*                                                                     !!02919
*              The Device Handler, Host Interface, or Interchange     !!02920
*              Interface sets the value in this field.                !!02921
*                                                                     !!02922
 02 NUM-SERVICES           TYPE BINARY 16.                             !02923
                                                                       !02924
                                                                       !02925
                                                                       !02926
                                                                       !02927
*                                                                     !!02928
*              Allowed service information for the terminal at which  !!02929
*              this transaction originated.                           !!02930
*                                                                     !!02931
*              The Device Handler, Host Interface, or Interchange     !!02932
*              Interface sets the value in this field.  The Device    !!02933
*              Handler retrieves the values from the SRV field in the !!02934
*              PTDF.  The Host Interface retrieves the value from the !!02935
*              ALLOWED-SRVCS field in the BASE24-pos segment of the   !!02936
*              HCF.  The Interchange Interface retrieves the value    !!02937
*              from the ALLOWED-SRVCS field in the BASE24-pos segment !!02938
*              of the ICF.  This field is used by Router.             !!02939
*                                                                     !!02940
 02 SRVCS                  OCCURS 30 TIMES.                            !02941
                                                                       !02942
                                                                       !02943
                                                                       !02944
                                                                       !02945
*                                                                     !!02946
*              The type of service allowed at the terminal at which   !!02947
*              this transaction originated.  Codes used in this field !!02948
*              are either reserved by BASE24 or user-defined.         !!02949
*              Reserved codes are to be used only as defined, and     !!02950
*              include:                                               !!02951
*                                                                     !!02952
*              AD = Administrative (BASE24-atm only)                  !!02953
*              AX = American Express credit                           !!02954
*              BD = Business deposit (BASE24-atm and BASE24-teller    !!02955
*                   only)                                             !!02956
*              C* = Private label credit (includes C, C0-C9, CA, and  !!02957
*                   CC-CZ)                                            !!02958
*              CB = Carte Blanche credit                              !!02959
*              D  = Demonstration (BASE24-atm only)                   !!02960
*              DC = Diners Club credit                                !!02961
*              DS = Discover (Sears) credit                           !!02962
*              M  = MasterCard credit                                 !!02963
*              MD = MasterCard debit (See BASE24-pos note below)      !!02964
*              MM = MasterCard dual (See BASE24-pos note below)       !!02965
*              P* = Proprietary debit (includes P, P0-P9, and PA-PZ)  !!02966
*              SC = Special, Check (BASE24-pos only)                  !!02967
*              SP = Special purpose (BASE24-atm Self-Service Banking  !!02968
*                   Check Application only)                           !!02969
*              ST = Super teller (BASE24-atm Self-Service Banking Base!!02970
*                   Application only)                                 !!02971
*              V  = VISA credit                                       !!02972
*              VD = VISA debit (See BASE24-pos note below)            !!02973
*              VV = VISA dual (See BASE24-pos note below)             !!02974
*                                                                     !!02975
*              Codes with a first character of C, except code CB, are !!02976
*              recommended to identify private label credit cards.    !!02977
*                                                                     !!02978
*              Codes with a first character of P are required to      !!02979
*              identify proprietary debit cards.  BASE24 treats cards !!02980
*              with proprietary debit codes and codes MD and VD as    !!02981
*              debit cards and treats cards with all other codes as   !!02982
*              credit cards.                                          !!02983
*                                                                     !!02984
*              Administrative (AD), Business deposit (BD),            !!02985
*              Demonstration (D), Special purpose (SP), and Super     !!02986
*              teller (ST) are special-use card types used by BASE24- !!02987
*              atm.                                                   !!02988
*                                                                     !!02989
*              Business deposit (BD) is also a special-use card type  !!02990
*              used by BASE24-teller to identify cards that can only  !!02991
*              be used to initiate deposit transactions.  BASE24-     !!02992
*              teller does not perform any other processing based on  !!02993
*              card type; however, BASE24 guidelines should still be  !!02994
*              used when establishing card types for BASE24-teller.   !!02995
*                                                                     !!02996
*              MasterCard dual (MM) and VISA dual (VV) can be         !!02997
*              processed as debit or credit card types, based on the  !!02998
*              default combo card type specified in the CPF.          !!02999
*                                                                     !!03000
*              Special, Check (SC) is a special-use card type used to !!03001
*              initiate BASE24-pos check guarantee and check          !!03002
*              verification transactions only.                        !!03003
*                                                                     !!03004
*              BASE24-pos NOTE:  BASE24-pos does not allow MasterCard !!03005
*              debit (MD), MasterCard dual (MM), VISA debit (VD), or  !!03006
*              VISA dual (VV) card types in the PRDF and PTDF.        !!03007
*              BASE24-pos automatically includes the MD and MM card   !!03008
*              types with the MasterCard credit (M) card type, and    !!03009
*              automatically includes the VD and VV card types with   !!03010
*              the VISA credit (V) card type.                         !!03011
*                                                                     !!03012
*              User-defined Codes:  The user can add any one- or two- !!03013
*              character code not included in the reserved code list  !!03014
*              above, according to the following guidelines:          !!03015
*                                                                     !!03016
*              o  The first character must be alphabetic (A, B, D-O,  !!03017
*                 and Q-Z).                                           !!03018
*              o  The second character can be A-Z, 0-9, or a blank.   !!03019
*              o  A valid COBNAMES table entry is recommended for each!!03020
*                 user-defined code.                                  !!03021
*                                                                     !!03022
    04 TYP                 PIC XX.                                     !03023
                                                                       !03024
                                                                       !03025
*                                                                     !!03026
*              The transaction profile.  This profile indicates       !!03027
*              whether the transaction is a draft capture transaction !!03028
*              or a non-draft capture transaction.                    !!03029
*                                                                     !!03030
*              The Device Handler, Host Interface, or Interchange     !!03031
*              Interface sets the value in this field.  The Device    !!03032
*              Handler retrieves the value from the SRV.TRAN-PROFILE  !!03033
*              field in the PTDF or from the message received from the!!03034
*              device.  The Host Interface sets this field to 0.  The !!03035
*              Interchange Interface process retrieves the value from !!03036
*              the message received from the interchange.  This field !!03037
*              is used by Router to determine the value placed in the !!03038
*              DFT-CAPTURE-FLG field in the PSTM.                     !!03039
*                                                                     !!03040
    04 TRAN-PROFILE        PIC X.                                      !03041
                                                                       !03042
                                                                       !03043
                                                                       !03044
*                                                                     !!03045
*              A flag that indicates whether BASE24 should post the   !!03046
*              authorized 0220 message.                               !!03047
*                                                                     !!03048
*              The Device Handler, Host Interface, or Interchange     !!03049
*              Interface sets the value in this field. The Device     !!03050
*              Handler retrieves the value from the SRV.ELEC-FOLLOWUP !!03051
*              field in the PTDF.  The Host Interface sets this field !!03052
*              to 0.  The Interchange Interface retrieve the value    !!03053
*              from the message received from the interchange.  This  !!03054
*              field is used by Router.                               !!03055
*                                                                     !!03056
*              Valid values are:                                      !!03057
*                                                                     !!03058
*              0   = Post the transaction (providing that it is a 0220!!03059
*                    message which has been authorized).              !!03060
*              1   = Do not post the transaction; the terminal is     !!03061
*                    sending the electronic follow-up.                !!03062
*              2-9 = Reserved for future use.                         !!03063
*                                                                     !!03064
    04 ELEC-FOLLOWUP       PIC X.                                      !03065
                                                                       !03066
                                                                       !03067
                                                                       !03068
                                                                       !03069
                                                                       !03070
                                                                       !03071
*                                                                     !!03072
*              The floor limit associated with the type of service.   !!03073
*                                                                     !!03074
*              The Device Handler sets the value in this field using  !!03075
*              the SRV.NP-FLR-LMT, SRV.CA-FLR-LMT, or SRV.MO-FLR-LMT  !!03076
*              field in the PTDF.  This field is used by Router.      !!03077
*                                                                     !!03078
    04 FLR-LMT             TYPE BINARY 32.                             !03079
                                                                       !03080
                                                                       !03081
*                                                                     !!03082
*              The transaction limit associated with the type of      !!03083
*              service.                                               !!03084
*                                                                     !!03085
*              The Device Handler sets the value in this field using  !!03086
*              the SRV.TRAN-LMT field in the PTDF.  This field is used!!03087
*              by Router.                                             !!03088
*                                                                     !!03089
    04 TRAN-LMT            TYPE BINARY 32.                             !03090
                                                                       !03091
                                                                       !03092
                                                                       !03093
                                                                       !03094
END                                                                    !03095
?nocomments
                                                                       !03098
                                                                       !03099
