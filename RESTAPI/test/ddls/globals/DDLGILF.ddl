**FIX2.24  11/18/04  DDLGILF 6004 DDL    BA60DDL  BA08306  D                 ***
**FIX2.23  02/13/03  DDLGILF 6003 DDL    BA60DDL  BA06220  C                 ***
**FIX2.14  05/07/01  DDLGILF 6002 DDL    BA60DDL  BA04468  B                 ***
**SEQ0.04  11/01/00  DDLGILF 6001 DDL    BA60DDL  BA04000  A                 ***
**SYNC.04  12/09/98  DDLGILF 5301 DDL    BA53DDL  BA04000  A                 ***
**SYNC.03  08/28/98  DDLGILF 5301 DDL    BA53DDL  BA03000  A                 ***
**SYNC.03  08/22/97  DDLGILF 5101 DDL    BA51DDL  BA03000  A                 ***
**SYNC.02  06/25/96  DDLGILF 5101 DDL    BA51DDL  BA02000  A                 ***
**FIX2.00  06/06/95  DDLGILF 5101 DDL    BA51DDL  BA51027  A                 ***
!*SEQ2.00  10/20/92  DDLGILF 5100 DDL    BA51DDL                               !
                                                                       !00000A00
                                                                       !00000A01
********************************************************************** !00000A02
*                       History Section                              * !00000A03
********************************************************************** !00000A04
*                       RELEASE 5.1                                  * !00000A05
********************************************************************** !00000A06
* 95JUN01     MLB/598                                                  !00000A07
* SYMPTOM:    BASE24 Release 5.1 enhancements                          !00000A08
* PROBLEM:    (E) None                                                 !00000A09
* FIX:        Modified all file references to use TACL Defines in      !00000A0A
*             order to use the MAKE Utility.                           !00000A0B
* IMPLEMENT:  Apply fix and re-MAKE                                    !00000A0C
* REFERENCE:  BASE24 Release 5.1 MAKE Utilization Document             !00000A0D
                                                                       !00000A0E
                                                                       !00000B00
* 03MAY2001   cal/283                                                  !00000B01
* Symptom:    ATM routing group field not set up correctly for         !00000B02
*             reversals                                                !00000B03
* Problem:    Routing group field in ATM messages not stored on ILF.   !00000B04
* Fix:        Added rte^grp to the ILF ATM structures.                 !00000B05
* Dependency: Apply fix to DDLGILF and corresponding fix to HISWUTLS.  !00000B06
*             Run MAKE.                                                !00000B07
* Reference:  Internal Case #500186                                    !00000B08
                                                                       !00000B09
                                                                       !00000C00
* 31JAN2003   SN/228                                                   !00000C01
* Symptom:    Offline PIN Management Enhancement 01                    !00000C02
* Problem:    None.                                                    !00000C03
* Fix:        Include PIN OFST in the ATM portion of the ILF to        !00000C04
*             facilitate succsessful reversals of failed PIN Changes   !00000C05
*             Refer to BA60UD06.SCNPPOS2 for a complete listing of     !00000C06
*             dependencies.                                            !00000C07
* Dependency: Apply fixs to DDLGILF, HISWUTLS and run MAKE.            !00000C08
*             Refer to BA60UD06.SCNPPOS2 for a complete listing of     !00000C09
*             dependencies.                                            !00000C0A
* Reference:  WO #020715-04                                            !00000C0B
                                                                       !00000C0C
                                                                       !00000D00
* 27AUG2004   HUAC                                                     !00000D01
* Symptom:    Word Alignment issue in the user-fld5 of ATM definition. !00000D02
* Problem:    None.                                                    !00000D03
* Fix:        Removed one byte from user-fld5 and added a byte         !00000D04
*             user-fld6 after user-fld5.                               !00000D05
* Dependency: Apply fix to DDLGILF and run MAKE.                       !00000D06
* Reference:  Case #381957                                             !00000D07
                                                                       !00000D08
********************************************************************** !00000A0F
?PAGE "ATMSTM - ATM STM FIELDS SAVED on ILF"
?NOFUP
************************************************************************
                                                                       !00000A0M
*                                                                     !!00009
*                        INTERCHANGE LOG FILES                        !!00010
*                                                                     !!00011
*     This begins the definitions used for saving purposes of the     !!00012
*     proper fields from the STM for both ATM and POS.                !!00013
*                                                                     !!00014
**********************************************************************!!00015
                                                                       !00016
                                                                       !00016A00
                                                                       !00016A01
?comments
?section ATM
                                                                       !00016A06
                                                                       !00016A07
                                                                       !00016A08
                                                                       !00016A09
*             The following fields are taken from the BASE24-atm      !!00159
*             Standard Internal Message (STM).  This condensed version!!00160
*             of the STM is stored in the ILF.  For further           !!00161
*             information regarding the ATM fields below see the      !!00162
*             equivalent field in the STM DDL or the "BASE24-atm      !!00163
*             Transaction Processing Manual".                         !!00164
                                                                       !00165
DEFINITION ATM.                                                        !00166
                                                                       !00167
    02 typ                         pic 9(4).                           !00168
    02 tran-cde                    pic x(2).                           !00169
    02 from-acct-typ               pic x(2).                           !00170
    02 to-acct-typ                 pic x(2).                           !00171
    02 rte.                                                            !00172
      04 orig-pro-name             type sym-name.                      !00173
      04 originator                pic x.                              !00174
      04 responder                 pic x.                              !00175
    02 crd-ln                      type ln.                            !00176
    02 crd-fiid                    type fiid.                          !00177
    02 rcv-inst-id-num             type id-num.                        !00178
    02 crd-iss-id-num              type id-num.                        !00179
    02 tran-dat                    type dat.                           !00180
    02 tran-tim                    type tim.                           !00181
    02 tim-ofst                    type binary 16.                     !00182
    02 post-dat                    type dat.                           !00183
    02 acq-ichg-setl-dat           type dat.                           !00184
    02 iss-ichg-setl-dat           type dat.                           !00185
    02 term-fiid                   type fiid.                          !00186
    02 term-id                     type sym-name.                      !00187
    02 term-ln                     type ln.                            !00188
    02 seq-num                     pic x(12).                          !00189
    02 rqst.                                                           !00190
      04 track2                    pic x(40).                          !00191
      04 mbr-num                   type *.                             !00192
      04 orig-crncy-cde            type crncy-cde.                     !00193
      04 mult-crncy.                                                   !00194
         06 auth-crncy-cde         type crncy-cde.                     !00195
         06 setl-crncy-cde         type crncy-cde.                     !00196
         06 auth-conv-rate         pic 9(8).                           !00197
         06 setl-conv-rate         pic 9(8).                           !00198
         06 conv-dat-tim           type binary 64.                     !00199
      04 user-fld1           redefines mult-crncy  PIC X(30).          !00200
      04 acq-inst-id-num           type id-num.                        !00201
      04 user-fld2                 pic x.                              !00202
      04 rvsl-cde                  pic 9(2).                           !00203
      04 from-acct                 type acct.                          !00204
      04 user-fld3                 pic x.                              !00205
      04 to-acct                   type acct.                          !00206
      04 user-fld4                 pic x.                              !00207
      04 amt-1                     type binary 64.                     !00208
      04 amt-2                     type binary 64.                     !00209
      04 dep-bal-cr                type binary 32.                     !00210
      04 compl-req                 pic 9.                              !00211
      04 resp                      pic x(3).                           !00212
      04 term-name-loc             pic x(25).                          !00213
      04 term-owner-name           pic x(22).                          !00214
      04 term-city                 pic x(13).                          !00215
      04 term-st-x                 pic x(3).                           !00216
      04 term-cntry-x              pic x(2).                           !00217
      04 auth-id-resp              pic x(6).                           !00218
      04 auth-dest                 type sym-name.                      !00219
      04 orig-dat                  type dat.                           !00220
      04 orig-tim                  type tim.                           !00221
      04 user-fld4a                pic x.                              !00222
                                                                       !00223
      04 amt-3                     type binary 64.                     !00224
                                                                       !00224B00
      04 rte-grp                   pic x(11).                          !00224B01
                                                                       !00224C00
      04 pin-ofst                  pic x(16).                          !00224C01
                                                                       !00224D00
                                                                       !00224D01
    02 user-fld5                   pic x(242).                         !00224D02
    02 user-fld6                   pic x(1).                           !00224D03
                                                                       !00224D04
                                                                       !00224C04
                                                                       !00224C05
                                                                       !00224B03
                                                                       !00225B00
                                                                       !00225B01
                                                                       !00226
                                                                       !00227
                                                                       !00228
?nocomments
  END                                                                  !00231
                                                                       !00232
?PAGE "POSSTM - POS STM FIELDS SAVED on ILF"
?SECTION POS
                                                                       !00237
                                                                       !00238
?comments
*                                                                     !!00241
*             The following fields are taken from the BASE24-pos      !!00242
*             Standard Internal Message (PSTM).  This condensed       !!00243
*             version of the PSTM is stored in the ILF.  For further  !!00244
*             information regarding the POS fields below see the      !!00245
*             equivalent field in the PSTM DDL or the "BASE24-pos     !!00246
*             Transaction Processing Manual".                         !!00247
*                                                                     !!00248
                                                                       !00249
DEFINITION POS.                                                        !00250
                                                                       !00251
  02 TYP                       PIC 9(4).                               !00252
  02 MSG-TYP redefines TYP     PIC 9(4).                               !00253
  02 ORIG-PRO-NAME             TYPE SYM-NAME.                          !00254
  02 AST-RTN-PRO-NAME          TYPE SYM-NAME.                          !00255
  02 ORIGINATOR                PIC X.                                  !00256
  02 RESPONDER                 PIC X.                                  !00257
  02 POST-DAT                  TYPE DAT.                               !00258
  02 TERM-LN                   TYPE LN.                                !00259
  02 TERM-FIID                 TYPE FIID.                              !00260
  02 TERM-ID                   TYPE SYM-NAME.                          !00261
  02 TERM-NAME-LOC             PIC X(25).                              !00262
  02 TERM-OWNER-NAME           PIC X(22).                              !00263
  02 TERM-CITY                 PIC X(13).                              !00264
  02 TERM-ST-X                 PIC X(3).                               !00265
  02 TERM-CNTRY-X              PIC X(2).                               !00266
  02 ORIG-CRNCY-CDE            TYPE CRNCY-CDE.                         !00267
  02 TIM-OFST                  TYPE BINARY 16.                         !00268
  02 SEQ-NUM                   PIC X(12).                              !00269
  02 INVOICE-NUM               PIC X(10).                              !00270
  02 ORIG-INVOICE-NUM          PIC X(10).                              !00271
  02 RETL-ID                   PIC X(19).                              !00272
  02 ACQ-INST-ID-NUM           TYPE ID-NUM.                            !00273
  02 RCV-INST-ID-NUM           TYPE ID-NUM.                            !00274
                                                                       !00275
  02 AUTH-IND2                 PIC X.                                  !00276
                                                                       !00277
  02 TRAN.                                                             !00278
     04 COMPL-REQ              PIC 9.                                  !00279
     04 TRAN-CDE.                                                      !00280
        06 CC                  PIC XX.                                 !00281
        06 T                   PIC X.                                  !00282
        06 AA                  PIC XX.                                 !00283
        06 C                   PIC X.                                  !00284
     04 DEST                   PIC X(4).                               !00285
     04 CRD-LN                 TYPE LN.                                !00286
     04 CRD-FIID               TYPE FIID.                              !00287
     04 USER-FLD2              PIC X.                                  !00288
     04 FROM-ACCT              TYPE ACCT.                              !00289
     04 RESP                   PIC X(3).                               !00290
     04 TRACK2                 PIC X(40).                              !00291
     04 MBR-NUM                TYPE *.                                 !00292
     04 EXP-DAT                PIC X(4).                               !00293
     04 USER-FLD3              PIC X.                                  !00294
     04 AMT-1                  TYPE BINARY 64.                         !00295
     04 AMT-2                  TYPE BINARY 64.                         !00296
     04 mult-crncy.                                                    !00297
        06 auth-crncy-cde         type crncy-cde.                      !00298
        06 setl-crncy-cde         type crncy-cde.                      !00299
        06 auth-conv-rate         pic 9(8).                            !00300
        06 setl-conv-rate         pic 9(8).                            !00301
        06 conv-dat-tim           type binary 64.                      !00302
     04 user-fld0  redefines mult-crncy  pic x(30).                    !00303
     04 APPRV-CDE              PIC X(10).                              !00304
     04 DFT-CAPTURE-FLG        PIC 9.                                  !00305
     04 SETL-FLG               PIC 9.                                  !00306
  02 RTE.                                                              !00307
     04 SRV                    PIC XX.                                 !00308
     04 ISS                    PIC XX.                                 !00309
     04 PRI                    TYPE SYM-NAME.                          !00310
     04 ALT1                   TYPE SYM-NAME.                          !00311
     04 ALT2                   TYPE SYM-NAME.                          !00312
     04 AUTHR                  PIC X.                                  !00313
     04 DFLT                   PIC X.                                  !00314
  02 TRAN-DAT                  TYPE DAT.                               !00315
  02 TRAN-TIM                  TYPE TIM.                               !00316
  02 ACQ-ICHG-SETL-DAT         TYPE DAT.                               !00317
  02 ISS-ICHG-SETL-DAT         TYPE DAT.                               !00318
  02 RVSL-CDE                  PIC 99.                                 !00319
  02 PT-SRV-COND-CDE           PIC 99.                                 !00320
  02 PT-SRV-ENTRY-MDE          PIC X(3).                               !00321
  02 CRD-ISS-ID-NUM            TYPE ID-NUM.                            !00322
  02 MSG-ORIG-IND              PIC X.                                  !00323
                                                                       !00324
  02 ADDR-VRFY-STAT            PIC X.                                  !00325
                                                                       !00326
                                                                       !00327
                                                                       !00328
  02 PRODUCT.                                                          !00329
     04 LGTH                   TYPE BINARY 16.                         !00330
     04 INFO                   PIC X OCCURS 200 TIMES.                 !00331
                                                                       !00332
END                                                                    !00333
?nocomments
                                                                       !00336
                                                                       !00337
                                                                       !00338
                                                                       !00339
?PAGE "Generic Interchange ILF"
?COBOL =baddl_baddlcob
                                                                       !00339A02
?SECTION ilf
                                                                       !00346
*                                                                     !!00347
?comments
*                                                                     !!00350
*              The Interchange Log File (ILF) contains one record for !!00351
*              each transaction sent to, or received from, an         !!00352
*              interchange by BASE24.  A separate ILF exists for each !!00353
*              interchange to which BASE24 is connected.              !!00354
*                                                                     !!00355
*              A new ILF is created each day according to the         !!00356
*              interchange's cutover schedule.  When an interchange   !!00357
*              cuts over to a new processing day, the Interchange     !!00358
*              Interface process creates a new ILF; thus, the         !!00359
*              information logged to the ILF is relative to the       !!00360
*              interchange's business rather than BASE24's business.  !!00361
*                                                                     !!00362
*              ILFs are used as input to the BASE24's interchange     !!00363
*              report programs. These report programs read ILFs to get!!00364
*              the transaction information they need to produce their !!00365
*              reports.                                               !!00366
*                                                                     !!00367
*              The fields in the ILF, and their values, varies from   !!00368
*              interchange to interchange, according the different    !!00369
*              message and processing requirements.  In most cases,   !!00370
*              the basic record structure is similar for all ILF      !!00371
*              records.                                               !!00372
*                                                                     !!00373
*              The following pages describe the fields included in an !!00374
*              ILF record. Record positions for each of the fields    !!00375
*              have been included because BASE24 provides the ability !!00376
*              to extract the ILF. The information below summarizes   !!00377
*              other information specific to the ILF.                 !!00378
*                                                                     !!00379
*              LCONF ASSIGN:       ILF                                !!00380
*                                                                     !!00381
*                                                                     !!00382
*                                                                     !!00383
*                                                                     !!00384
*                                                                     !!00385
RECORD ILF.                       FILE IS "ILF" ENTRY-SEQUENCED.       !00386
                                                                       !00387
*              The generic ILF primary key is defined below.  Each    !!00388
*              Interchange Interface will redefine this area.         !!00389
*                                                                     !!00390
    02  prikey                      keytag "PR".                       !00391
        04  byte                    type character 55.                 !00392
                                                                       !00393
*              This field is not used.                                !!00394
*                                                                     !!00395
    02  user-fldb                   pic x.                             !00396
                                                                       !00397
*              The exception substate indicator for an authorization  !!00398
*              record.                                                !!00399
*                                                                     !!00400
*              0      =  OK, no error                                 !!00401
*              1      =  System error                                 !!00402
*              2      =  Format error in message from the interchange !!00403
*              3      =  Transaction failed pre-screening checks by   !!00404
*                        the Interchange Interface process            !!00405
*              4      =  Denied because the interchange was down      !!00406
*              5      =  Request timeout, denied                      !!00407
*              6      =  Interchange down at time of response         !!00408
*              7      =  Could not find original transaction for this !!00409
*                        reversal                                     !!00410
*              8-10   =  Reserved                                     !!00411
*              11-15  =  Interchange Interface-specific               !!00412
                                                                       !00413
    02  substate                    type binary 16.                    !00414
                                                                       !00415
*              The type of record logged to the ILF based on product  !!00416
*              ID.  Values are:                                       !!00417
*                                                                     !!00418
*              01 = ATM                                               !!00419
*              02 = POS                                               !!00420
*                                                                     !!00421
*              Values of 90 and above are reserved for Interchange    !!00422
*              Interface specific record type logging.  These are     !!00423
*              typically used for special reporting requirements,     !!00424
*              settlement totals, or chargeback records.              !!00425
*                                                                     !!00426
                                                                       !00427
    02  rec-typ                     type binary 16.                    !00428
                                                                       !00429
*                                                                     !!00430
*              The symbolic name of the process which forwarded the   !!00431
*              transaction to the Interchange Interface for outbound  !!00432
*              transactions.   The Interchange Interface uses this    !!00433
*              field when sending back the response to the BASE24     !!00434
*              process.                                               !!00435
*                                                                     !!00436
*              For inbound transactions this field contains the       !!00437
*              symbolic name of the process which authorized the      !!00438
*              transaction. The Interchange Interface uses this field !!00439
*              when a reversal needs to be sent back to the           !!00440
*              transaction authorizer.                                !!00441
*                                                                     !!00442
    02  orig-net-pro                type sym-name.                     !00443
                                                                       !00444
*              The current date (YYMMDD) when this record was         !!00445
*              added to the ILF.                                      !!00446
                                                                       !00447
    02  cur-dat-add                 type dat.                          !00448
                                                                       !00449
*              The current time (HHMMSSTT) when this record           !!00450
*              was added to the ILF.                                  !!00451
                                                                       !00452
    02  cur-tim-add                 type tim.                          !00453
*                                                                     !!00454
*              The timestamp, in four-word julian format, of when the !!00455
*              record was created or updated.                         !!00456
*                                                                     !!00457
    02 last-update                   type binary 64.                   !00458
*                                                                     !!00459
*             The following fields are used by the Interchange        !!00460
*             Interface to standardized the logging of external       !!00461
*             message fields for reporting purposes.  The data is     !!00462
*             right-justified and blank-filled on the left.           !!00463
*                                                                     !!00464
    02  sem.                                                           !00465
*                                                                     !!00466
*             The transaction type from the interchange's external    !!00467
*             message.                                                !!00468
                                                                       !00469
                                                                       !00470
        04  tran-typ                 pic x(4).                         !00471
                                                                       !00472
*             The response code from the interchange's external       !!00473
*             message.                                                !!00474
                                                                       !00475
        04  resp-cde                 pic x(8).                         !00476
                                                                       !00477
*             The reversal code from the interchange's external       !!00478
*             message, if present.                                    !!00479
                                                                       !00480
        04  rvsl-cde                 pic x(4).                         !00481
                                                                       !00482
*             The transaction date (YYMMDD) from the interchange's    !!00483
*             external message.                                       !!00484
                                                                       !00485
        04  swi-dat                  type dat.                         !00486
                                                                       !00487
*             The transaction time (HHMMSSTT) from the interchange's  !!00488
*             external message.                                       !!00489
                                                                       !00490
        04  swi-tim                  type tim.                         !00491
                                                                       !00492
*             The transaction trace number from the interchange's     !!00493
*             external message.                                       !!00494
                                                                       !00495
        04  trace-num                pic x(6).                         !00496
                                                                       !00497
*             A field reserved for Interchange-specific data from     !!00498
*             the external message.                                   !!00499
                                                                       !00500
        04  user-fld                 pic x(16).                        !00501
*                                                                     !!00502
*             The internal message savearea contains the length       !!00503
*             of a condensed version of the internal messages, i.e.,  !!00504
*             STM or PSTM.                                            !!00505
*                                                                     !!00506
    02 intrn-msg-savearea-lgth       type binary 16.                   !00507
    02 atm                           type atm.                         !00508
    02 pos    redefines atm          type pos.                         !00509
                                                                       !00510
*                                                                     !!00511
*             The external message length contains the length of      !!00512
*             external message that is part of this record.           !!00513
*             The length does not include the length of any           !!00514
*             token data that might be logged in the external         !!00515
*             message savearea.                                       !!00516
*                                                                     !!00517
    02 extrn-msg-lgth                pic 9(4).                         !00518
                                                                       !00519
*             The external message save area is a buffer which        !!00520
*             includes the external message and any token data that is!!00521
*             logged.                                                 !!00522
                                                                       !00523
    02 extrn-msg.                                                      !00524
                                                                       !00525
       04 savearea                   pic x occurs 3254 times.          !00526
    end                                                                !00527
                                                                       !00528
?nocomments
?PAGE "ATM-D"
?NOFUP
***********************************************************************
*                                                                     !!00537
*                 INTERCHANGE LOG FILE EXTRACT                        !!00538
*                                                                     !!00539
**********************************************************************!!00540
                                                                       !00541
***********************************************************************
*                         History Section                             !!00544
***********************************************************************
*                                                                     !!00547
*                                                                     !!00548
                                                                       !00549
?section ATM-D
?comments
*                                                                     !!00554
*             The following fields are taken from the BASE24-atm      !!00555
*             Standard Internal Message (STM).  This condensed version!!00556
*             of the STM is stored in the ILF.  For further           !!00557
*             information regarding the ATM fields below see the      !!00558
*             equivalent field in the STM DDL or the "BASE24-atm      !!00559
*             Transaction Processing Manual".                         !!00560
*                                                                     !!00561
DEFINITION ATM-D.                                                      !00562
                                                                       !00563
    02 typ                         pic 9(4).                           !00564
    02 tran-cde                    pic x(2).                           !00565
    02 from-acct-typ               pic x(2).                           !00566
    02 to-acct-typ                 pic x(2).                           !00567
    02 rte.                                                            !00568
      04 orig-pro-name             type sym-name.                      !00569
      04 originator                pic x.                              !00570
      04 responder                 pic x.                              !00571
    02 crd-ln                      type ln.                            !00572
    02 crd-fiid                    type fiid.                          !00573
    02 rcv-inst-id-num             type id-num.                        !00574
    02 crd-iss-id-num              type id-num.                        !00575
    02 tran-dat                    type dat.                           !00576
    02 tran-tim                    type tim.                           !00577
    02 tim-ofst                    pic x(5).                           !00578
    02 post-dat                    type dat.                           !00579
    02 acq-ichg-setl-dat           type dat.                           !00580
    02 iss-ichg-setl-dat           type dat.                           !00581
    02 term-fiid                   type fiid.                          !00582
    02 term-id                     type sym-name.                      !00583
    02 term-ln                     type ln.                            !00584
    02 seq-num                     pic x(12).                          !00585
    02 rqst.                                                           !00586
      04 track2                    pic x(40).                          !00587
      04 mbr-num                   type *.                             !00588
      04 orig-crncy-cde            type crncy-cde.                     !00589
      04 mult-crncy.                                                   !00590
         06 auth-crncy-cde         type crncy-cde.                     !00591
         06 setl-crncy-cde         type crncy-cde.                     !00592
         06 auth-conv-rate         pic 9(8).                           !00593
         06 setl-conv-rate         pic 9(8).                           !00594
         06 conv-dat-tim           pic x(19).                          !00595
      04 user-fld1           redefines mult-crncy  PIC X(41).          !00596
      04 acq-inst-id-num           type id-num.                        !00597
      04 user-fld2                 pic x.                              !00598
      04 rvsl-cde                  pic 9(2).                           !00599
      04 from-acct                 pic x(28).                          !00600
      04 user-fld3                 pic x.                              !00601
      04 to-acct                   pic x(28).                          !00602
      04 user-fld4                 pic x.                              !00603
      04 amt-1                     pic x(19).                          !00604
      04 amt-2                     pic x(19).                          !00605
      04 dep-bal-cr                pic x(10).                          !00606
      04 compl-req                 pic 9.                              !00607
      04 resp                      pic x(3).                           !00608
      04 term-name-loc             pic x(25).                          !00609
      04 term-owner-name           pic x(22).                          !00610
      04 term-city                 pic x(13).                          !00611
      04 term-st-x                 pic x(3).                           !00612
      04 term-cntry-x              pic x(2).                           !00613
      04 auth-id-resp              pic x(6).                           !00614
      04 auth-dest                 type sym-name.                      !00615
      04 orig-dat                  type dat.                           !00616
      04 orig-tim                  type tim.                           !00617
      04 user-fld4a                pic x.                              !00618
      04 amt-3                     pic x(19).                          !00619
                                                                       !00619B00
      04 rte-grp                   pic x(11).                          !00619B01
    02 user-fld5                   pic x(236).                         !00619B02
                                                                       !00619B03
                                                                       !00620B00
                                                                       !00620B01
                                                                       !00621
  END                                                                  !00622
                                                                       !00623
                                                                       !00624
?PAGE "POS-D"
?SECTION POS-D
                                                                       !00629
*                                                                     !!00630
*             The following fields are taken from the BASE24-pos      !!00631
*             Standard Internal Message (PSTM).  This condensed       !!00632
*             version of the PSTM is stored in the ILF.  For further  !!00633
*             information regarding the POS fields below see the      !!00634
*             equivalent field in the PSTM DDL or the "BASE24-pos     !!00635
*             Transaction Processing Manual".                         !!00636
*                                                                     !!00637
DEFINITION POS-D.                                                      !00638
                                                                       !00639
  02 TYP                       PIC 9(4).                               !00640
  02 MSG-TYP redefines TYP     PIC 9(4).                               !00641
  02 ORIG-PRO-NAME             TYPE SYM-NAME.                          !00642
  02 AST-RTN-PRO-NAME          TYPE SYM-NAME.                          !00643
  02 ORIGINATOR                PIC X.                                  !00644
  02 RESPONDER                 PIC X.                                  !00645
  02 POST-DAT                  TYPE DAT.                               !00646
  02 TERM-LN                   TYPE LN.                                !00647
  02 TERM-FIID                 TYPE FIID.                              !00648
  02 TERM-ID                   TYPE SYM-NAME.                          !00649
  02 TERM-NAME-LOC             PIC X(25).                              !00650
  02 TERM-OWNER-NAME           PIC X(22).                              !00651
  02 TERM-CITY                 PIC X(13).                              !00652
  02 TERM-ST-X                 PIC X(3).                               !00653
  02 TERM-CNTRY-X              PIC X(2).                               !00654
  02 ORIG-CRNCY-CDE            TYPE CRNCY-CDE.                         !00655
  02 TIM-OFST                  PIC X(5).                               !00656
  02 SEQ-NUM                   PIC X(12).                              !00657
  02 INVOICE-NUM               PIC X(10).                              !00658
  02 ORIG-INVOICE-NUM          PIC X(10).                              !00659
  02 RETL-ID                   PIC X(19).                              !00660
  02 ACQ-INST-ID-NUM           TYPE ID-NUM.                            !00661
  02 RCV-INST-ID-NUM           TYPE ID-NUM.                            !00662
  02 AUTH-IND2                 PIC X.                                  !00663
  02 TRAN.                                                             !00664
     04 COMPL-REQ              PIC 9.                                  !00665
     04 TRAN-CDE.                                                      !00666
        06 CC                  PIC XX.                                 !00667
        06 T                   PIC X.                                  !00668
        06 AA                  PIC XX.                                 !00669
        06 C                   PIC X.                                  !00670
     04 DEST                   PIC X(4).                               !00671
     04 CRD-LN                 TYPE LN.                                !00672
     04 CRD-FIID               TYPE FIID.                              !00673
     04 USER-FLD2              PIC X.                                  !00674
     04 FROM-ACCT              PIC X(28).                              !00675
     04 RESP                   PIC X(3).                               !00676
     04 TRACK2                 PIC X(40).                              !00677
     04 MBR-NUM                TYPE *.                                 !00678
     04 EXP-DAT                PIC X(4).                               !00679
     04 USER-FLD3              PIC X.                                  !00680
     04 AMT-1                  PIC X(19).                              !00681
     04 AMT-2                  PIC X(19).                              !00682
     04 mult-crncy.                                                    !00683
        06 auth-crncy-cde         type crncy-cde.                      !00684
        06 setl-crncy-cde         type crncy-cde.                      !00685
        06 auth-conv-rate         pic 9(8).                            !00686
        06 setl-conv-rate         pic 9(8).                            !00687
        06 conv-dat-tim           pic x(19).                           !00688
     04 user-fld0  redefines mult-crncy  pic x(41).                    !00689
     04 APPRV-CDE              PIC X(10).                              !00690
     04 DFT-CAPTURE-FLG        PIC 9.                                  !00691
     04 SETL-FLG               PIC 9.                                  !00692
  02 RTE.                                                              !00693
     04 SRV                    PIC XX.                                 !00694
     04 ISS                    PIC XX.                                 !00695
     04 PRI                    TYPE SYM-NAME.                          !00696
     04 ALT1                   TYPE SYM-NAME.                          !00697
     04 ALT2                   TYPE SYM-NAME.                          !00698
     04 AUTHR                  PIC X.                                  !00699
     04 DFLT                   PIC X.                                  !00700
  02 TRAN-DAT                  TYPE DAT.                               !00701
  02 TRAN-TIM                  TYPE TIM.                               !00702
  02 ACQ-ICHG-SETL-DAT         TYPE DAT.                               !00703
  02 ISS-ICHG-SETL-DAT         TYPE DAT.                               !00704
  02 RVSL-CDE                  PIC 99.                                 !00705
  02 PT-SRV-COND-CDE           PIC 99.                                 !00706
  02 PT-SRV-ENTRY-MDE          PIC X(3).                               !00707
  02 CRD-ISS-ID-NUM            TYPE ID-NUM.                            !00708
  02 MSG-ORIG-IND              PIC X.                                  !00709
                                                                       !00710
  02 ADDR-VRFY-STAT            PIC X.                                  !00711
                                                                       !00712
                                                                       !00713
                                                                       !00714
  02 PRODUCT.                                                          !00715
     04 LGTH                   PIC X(5).                               !00716
     04 INFO                   PIC X OCCURS 200 TIMES.                 !00717
END                                                                    !00718
                                                                       !00719
                                                                       !00720
?PAGE "Generic Interchange ILFX"
?COBOL =baddl_baddlcob
                                                                       !00720A02
?SECTION ILFX
?comments
                                                                       !00729
*                                                                     !!00730
*              The fields in the ILF, and their values, varies from   !!00731
*              interchange to interchange, according the different    !!00732
*              message and processing requirements.  In most cases,   !!00733
*              the basic record structure is similar for all ILF      !!00734
*              records.  This is the layout of the generic ILFX       !!00735
*              record.                                                !!00736
*                                                                     !!00737
DEFINITION ILFX.                                                       !00738
                                                                       !00739
    02  prikey.                                                        !00740
*              The generic ILF primary key is defined below.  Each    !!00741
*              Interchange Interface will redefine this area.         !!00742
*                                                                     !!00743
        04  byte                    type character 55.                 !00744
                                                                       !00745
*              This field is not used.                                !!00746
                                                                       !00747
    02  user-fldb                   pic x.                             !00748
                                                                       !00749
*              The exception substate indicator for an authorization  !!00750
*              record.                                                !!00751
*                                                                     !!00752
*              0      =  OK, no error                                 !!00753
*              1      =  System error                                 !!00754
*              2      =  Format error in message from the interchange !!00755
*              3      =  Transaction failed pre-screening checks by   !!00756
*                        the Interchange Interface process            !!00757
*              4      =  Denied because the interchange was down      !!00758
*              5      =  Request timeout, denied                      !!00759
*              6      =  Interchange down at time of response         !!00760
*              7      =  Could not find original transaction for this !!00761
*                        reversal                                     !!00762
*              8-10   =  Reserved                                     !!00763
*              11-15  =  Interchange Interface-specific               !!00764
                                                                       !00765
    02  substate                    pic x(5).                          !00766
*              The type of record logged to the ILF based on product  !!00767
*              ID.  Values are:                                       !!00768
*                                                                     !!00769
*              01 = ATM                                               !!00770
*              02 = POS                                               !!00771
*                                                                     !!00772
*              Values of 90 and above are reserved for Interchange    !!00773
*              Interface specific record type logging.  These are     !!00774
*              typically used for special reporting requirements,     !!00775
*              settlement totals, or chargeback records.              !!00776
*                                                                     !!00777
                                                                       !00778
    02  rec-typ                     pic x(5).                          !00779
                                                                       !00780
*              The symbolic name of the process which forwarded the   !!00781
*              transaction to the Interchange Interface for outbound  !!00782
*              transactions.   The Interchange Interface uses this    !!00783
*              field when sending back the response to the BASE24     !!00784
*              process.                                               !!00785
*                                                                     !!00786
*              For inbound transactions this field contains the       !!00787
*              symbolic name of the process which authorized the      !!00788
*              transaction. The Interchange Interface uses this field !!00789
*              when a reversal needs to be sent back to the           !!00790
*              transaction authorizer.                                !!00791
                                                                       !00792
    02  orig-net-pro                type sym-name.                     !00793
                                                                       !00794
*              The current date (YYMMDD) when this record was         !!00795
*              added to the ILF.                                      !!00796
                                                                       !00797
    02  cur-dat-add                 type dat.                          !00798
                                                                       !00799
*              The current time (HHMMSSTT) when this record was added !!00800
*              to the ILF.                                            !!00801
                                                                       !00802
    02  cur-tim-add                 type tim.                          !00803
                                                                       !00804
*              The timestamp, in four-word julian format, of when the !!00805
*              record was created or updated.                         !!00806
                                                                       !00807
    02 last-update                  pic x(19).                         !00808
                                                                       !00809
*             The following fields are used by the Interchange        !!00810
*             Interface to standardized the logging of external       !!00811
*             message fields for reporting purposes.  The data is     !!00812
*             right-justified and blank-filled on the left.           !!00813
                                                                       !00814
    02  sem.                                                           !00815
                                                                       !00816
*             The transaction type from the interchange's external    !!00817
*             message.                                                !!00818
                                                                       !00819
        04  tran-typ                 pic x(4).                         !00820
                                                                       !00821
*             The response code from the interchange's external       !!00822
*             message.                                                !!00823
                                                                       !00824
        04  resp-cde                 pic x(8).                         !00825
                                                                       !00826
*             The reversal code from the interchange's external       !!00827
*             message, if present.                                    !!00828
                                                                       !00829
        04  rvsl-cde                 pic x(4).                         !00830
                                                                       !00831
*             The transaction date from the interchange's external    !!00832
*             message.                                                !!00833
                                                                       !00834
        04  swi-dat                  type dat.                         !00835
                                                                       !00836
*             The transaction time from the interchange's external    !!00837
*             message.                                                !!00838
                                                                       !00839
        04  swi-tim                  type tim.                         !00840
                                                                       !00841
*             The transaction trace number from the interchange's     !!00842
*             external message.                                       !!00843
                                                                       !00844
        04  trace-num                pic x(6).                         !00845
                                                                       !00846
*             A field reserved for Interchange-specific data from     !!00847
*             the external message.                                   !!00848
                                                                       !00849
        04  user-fld                 pic x(16).                        !00850
                                                                       !00851
*             The internal message savearea contains the length       !!00852
*             of a condensed version of the internal messages, i.e.,  !!00853
*             STM or PSTM.                                            !!00854
                                                                       !00855
    02 intrn-msg-savearea-lgth       pic x(5).                         !00856
                                                                       !00857
    02 atm-d                         type ATM-D.                       !00858
    02 pos-d  redefines atm-d        type POS-D.                       !00859
                                                                       !00860
*             The external message length contains the length of      !!00861
*             external message that is part of this record.           !!00862
*             The length does not include the length of any           !!00863
*             token data that might be logged in the external         !!00864
*             message savearea.                                       !!00865
                                                                       !00866
    02 extrn-msg-lgth                pic 9(4).                         !00867
                                                                       !00868
*             The external message save area is a buffer which        !!00869
*             includes the external message and any token data that is!!00870
*             logged.                                                 !!00871
                                                                       !00872
    02 extrn-msg.                                                      !00873
       04 savearea                   pic x occurs 3254 times.          !00874
    end                                                                !00875
                                                                       !00876
?nocomments
