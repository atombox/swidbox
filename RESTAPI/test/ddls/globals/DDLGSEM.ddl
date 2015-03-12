!*SEQ0.04  11/01/00  DDLGSEM 6000 DDL    AT60DDL    04000                      !
!*SYNC.04  12/09/98  DDLGSEM 5300 DDL    AT53DDL    04000                      !
!*SYNC.03  08/28/98  DDLGSEM 5300 DDL    AT53DDL    03000                      !
!*SYNC.03  08/21/97  DDLGSEM 5100 DDL    AT51DDL    03000                      !
!*SYNC.02  06/28/96  DDLGSEM 5100 DDL    AT51DDL    02000                      !
!*SEQ2.00  01/25/93  DDLGSEM 5100 DDL    AT51DDL                               !
?PAGE "SEM - Standard External Message Format"
?SECTION SEM
************************************************************************
*                         History Section                              *
* 23JUN87  RON BARKER                                                  *
* SYMPTOM: None.                                                       *
* PROBLEM: When HISF is an acquirer host, reversal might not get back  *
*   to the process which authorized the transaction                    *
* FIX: Redefined ROUTE.PATH.FILLER for 4 bytes to ROUTE.PATH.AUTHORIZER*
*   and FILLER for 3 bytes.                                            *
* DEPENDENCIES: Host Interface must be changed to use this new field   *
* REFERENCE: RPC 101998                                                *
                                                                       !00025
                                                                       !00026
*                                                                     !!00027
* 09Jul90   J. Samson                                                  *
* SYMPTOM:  None.                                                      *
* PROBLEM:  (E) None.                                                  *
* FIX:  An enhancement was made to BASE24-atm Device Handlers to       *
*       support Statement Print Data Compression.  The purpose of      *
*       this enhancement is to reduce the amount of data passed        *
*       between BASE24 and the Host during Statement Print trans-      *
*       actions.  Two fields were added to the existing message        *
*       format.  These fields will use the first 4 bytes of USER-FLD   *
*       in the SEM.                                                    *
* DEPENDENCIES: Re-ddl.                                                *
* REFERENCE: RPE #R900309-8                                            *
************************************************************************
*                                                                      *
                                                                       !00056
                                                                       !00057
*                        STANDARD EXTERNAL MESSAGE                    !!00058
*                                                                     !!00059
*  This STRUCT definition represents the standard external message    !!00060
*  passed between BASE24 and a host DPC.                              !!00061
                                                                       !00062
DEFINITION SEM.                                                        !00063
                                                                       !00064
*                Routing Data.                                        !!00065
                                                                       !00066
  02 ROUTE.                                                            !00067
                                                                       !00068
*                This field is used to indicate the status of a       !!00069
*                message at the system level.  If 0, the response code!!00070
*                field is used to determine the disposition of the    !!00071
*                message.  This field will be set by the Host         !!00072
*                Interface and used by AUTH.  Valid codes follow.     !!00073
*                                                                     !!00074
*                    "00" = no error                                  !!00075
                                                                       !00076
*                    "11" = destination not available                 !!00077
                                                                       !00078
                                                                       !00079
                                                                       !00080
*                    "12" = line down                                 !!00081
*                    "20" = originator not available                  !!00082
*                    "21" = unknown message type                      !!00083
*                    "22" = unknown card number                       !!00084
                                                                       !00085
     03 STAT                   PIC 9(2).                               !00086
                                                                       !00087
*                The field PATH was broken down so that "ORIGI-TYPE"  !!00088
*                was defined.                                         !!00089
                                                                       !00090
     03 PATH.                                                          !00091
                                                                       !00092
*               This field will indicate what product to send this    !!00093
*               message to.                                           !!00094
                                                                       !00095
        05 PRODUCT-IND         PIC X(2).                               !00096
                                                                       !00097
*           This field carries the release number of the host         !!00098
*           destination DPC.                                          !!00099
                                                                       !00100
        05 RELEASE-NUM         PIC X(2).                               !00101
                                                                       !00102
*           This field carries the DPC location number used for       !!00103
*           authorization routing to a specific host.                 !!00104
                                                                       !00105
        05 DPC-NUMBER          PIC 9(4).                               !00106
                                                                       !00107
                                                                       !00108
        05 AUTHORIZER          PIC X(1).                               !00109
                                                                       !00110
                                                                       !00111
                                                                       !00112
        05 FILLER              PIC X(3).                               !00113
                                                                       !00114
        05 ORIGI-TYPE          PIC X.                                  !00115
        05 FILLER              PIC X(09).                              !00116
                                                                       !00117
*                ANSI X9.2:  Data Element number 1.                   !!00118
*                                                                     !!00119
*                This field contains the specific message type.       !!00120
*                Valid codes follow.                                  !!00121
*                                                                     !!00122
*                    "0200" = request - Device Handler Modules        !!00123
*                    "0210" = authorization - AUTH Module             !!00124
*                    "0220" = transaction advice - AUTH               !!00125
*                    "0230" = advice acknowledgement - Host           !!00126
*                    "0400" = Reversal - Device Handler or            !!00127
*                             Host Interface Modules                  !!00128
*                    "0401" = Reversal repeat - Device Handler or     !!00129
*                             Host Interface Modules                  !!00130
*                    "0410" = Reversal response - Device Handler or   !!00131
*                             Host Interface Modules                  !!00132
*                    "0700" = request - Balance Inquiry               !!00133
*                    "0710" = response- Balance Inquiry               !!00134
*                    "0800" = Network Management - system commands.   !!00135
*                    "5400" = adjustment - Interchange process        !!00136
*                    "9220" = forced post SAF - Host Interface Module !!00137
*                             to Host                                 !!00138
*                    "9221" = forced post SAF repeat - Host Interface !!00139
*                             Module to Host                          !!00140
*                    "9230" = response SAF - Host                     !!00141
*                    "9906" = account data                            !!00142
                                                                       !00143
  02 TYP                       PIC 9(4).                               !00144
                                                                       !00145
*               ANSI X9.2:  Data Element number 2.                    !!00146
*                                                                     !!00147
*               This field starts out as 64 bits of information, where!!00148
*               each bit signifies the absence or presence ( binary 0 !!00149
*               or 1 , respectively ) of a data element in the        !!00150
*               message.  Since transparent data transmission is not  !!00151
*               supported, the field is converted to display format   !!00152
*               by doing a "hexout", i.e., each four bits of          !!00153
*               information is converted to the display form of a     !!00154
*               hex digit (64/4 = 16).                                !!00155
                                                                       !00156
  02 BYTE-MAP                  PIC X(16).                              !00157
  02 CARD-ACCT.                                                        !00158
                                                                       !00159
*               ANSI X9.2:  Data Element number 3, Bit Map position 1.!!00160
*                                                                     !!00161
*               Length of account number field, right justified       !!00162
                                                                       !00163
     03 LEN                    PIC 9(2).                               !00164
                                                                       !00165
*               ANSI X9.2:  Data Element number 4.                    !!00166
*                                                                     !!00167
*               Account number                                        !!00168
                                                                       !00169
     03 NUM                    PIC X(19).                              !00170
                                                                       !00171
  02 TRAN-CDE.                                                         !00172
*               ANSI X9.2:  Data Element number 5, Bit Map position 2.!!00173
*               Where TYP is part A, or processing code,              !!00174
*                     FROM-ACCT-TYP (part B) is the primary account type,
*                     TO-ACCT-TYP (part C) is the secondary account type.
*                                                                     !!00179
*               Type of transaction                                   !!00180
     03 TYP                    PIC X(2).                               !00181
*               "From" account                                        !!00182
     03 FROM-ACCT-TYP          PIC X(2).                               !00183
*               "To" account                                          !!00184
     03 TO-ACCT-TYP            PIC X(2).                               !00185
                                                                       !00186
*               ANSI X9.2:  Data Element number 6, Bit Map position 3.!!00187
*                                                                     !!00188
*                In the case of type "0200", "0210", "0220" or "0400" !!00189
*                messages, this field contains the amount originally  !!00190
*                requested.  In the case of type "5400" transactions  !!00191
*                this field contains the amount originally completed  !!00192
*                (which might have been AMT-2 in a reversal).         !!00193
                                                                       !00194
  02 AMT-1                     PIC 9(6)V99.                            !00195
                                                                       !00196
*               ANSI X9.2:  Data Element number 7, Bit Map position 4.!!00197
*                                                                     !!00198
*                For type "0220" or "0400" messages this field        !!00199
*                contains the completion amount.  For type "0210"     !!00200
*                messages, this field contains a balance amount that  !!00201
*                depends on the transaction type.  If the amount is   !!00202
*                negative, position zero (0) contains a minus sign;   !!00203
*                otherwise it contains a zero.                        !!00204
*                For type "5400" messages this field contains the     !!00205
*                amount actually completed.                           !!00206
                                                                       !00207
  02 AMT-2                     PIC 9(6)V99.                            !00208
                                                                       !00209
*               ANSI X9.2:  Data Element number 8, Bit Map position 5.!!00210
*                                                                     !!00211
*                For type "0210" messages this field contains a       !!00212
*                balance amount that depends on the transaction type. !!00213
*                If the amount is negative, position zero (0) contains!!00214
*                a minus sign;  otherwise it contains a zero.         !!00215
                                                                       !00216
  02 AMT-3                     PIC 9(6)V99.                            !00217
                                                                       !00218
*               ANSI X9.2:  Data Element number 9, Bit Map position 6.!!00219
*                                                                     !!00220
*                Host sequence number                                 !!00221
                                                                       !00222
  02 TRACE-NO                  PIC 9(6).                               !00223
                                                                       !00224
*               ANSI X9.2:  Data Element number 10, Bit Map position 7.
*                                                                     !!00227
*                This field reflects the date this transaction began  !!00228
*                (month and day only).                                !!00229
                                                                       !00230
  02 TRAN-DAT                  PIC X(4).                               !00231
                                                                       !00232
*               ANSI X9.2:  Data Element number 11, Bit Map position 8.
*                                                                     !!00235
*                BASE24 settlement date for this transaction          !!00236
                                                                       !00237
  02 POST-DAT                  PIC X(4).                               !00238
                                                                       !00239
*               ANSI X9.2:  Data Element number 12, Bit Map position 9.
*                                                                     !!00242
*                Date forwarded to Host                               !!00243
                                                                       !00244
  02 TRANSMISSION-DAT          PIC X(4).                               !00245
                                                                       !00246
*               ANSI X9.2:  Data Element number 13, Bit Map position 10.
*                                                                     !!00249
*                Time transaction began                               !!00250
                                                                       !00251
  02 TRAN-TIM.                                                         !00252
     04  HH                    PIC 99.                                 !00253
     04  MINUTE                PIC 99.                                 !00254
     04  SS                    PIC 99.                                 !00255
                                                                       !00256
*               ANSI X9.2:  Data Element number 16, Bit Map position 13.
*                                                                     !!00259
*                This field contains the routing/transit number from  !!00260
*                the TDF.                                             !!00261
                                                                       !00262
  02 RTTN                      PIC 9(10).                              !00263
                                                                       !00264
*               ANSI X9.2:  Data Element number 17, Bit Map position 14.
*                                                                     !!00267
*                Card Issuer Routing or Identification Number.  (See  !!00268
*                field ROUTING-NUMBER of IDF.)                        !!00269
                                                                       !00270
  02 ISSUER-ROUTING-NUMBER     PIC 9(10).                              !00271
                                                                       !00272
*               ANSI X9.2:  Data Element number 18, Bit Map position 15.
*                                                                     !!00275
*                This field is initialized by the Device Handler from !!00276
*                the TDF.                                             !!00277
                                                                       !00278
  02 CURRENCY-CDE              PIC 9(3).                               !00279
                                                                       !00280
*               ANSI X9.2:  Data Element number 23, Bit Map position 20.
*                                                                     !!00283
*                This field is used only for reversal and adjustment  !!00284
*                transactions.  It indicates the reason for the       !!00285
*                reversal or adjustment.  Valid codes follow.         !!00286
*                                                                     !!00287
*                 Reversal codes (use if TYP = 0400):                 !!00288
*                                                                     !!00289
*                    "01" = time-out                                  !!00290
*                    "02" = command reject                            !!00291
*                    "03" = destination not available                 !!00292
*                    "08" = customer cancelled                        !!00293
*                    "10" = hardware error                            !!00294
*                                                                     !!00295
*                 Adjustment codes (use if TYP = 5400):               !!00296
*                                                                     !!00297
*                                                                     !!00298
*                    "12" = original amount incorrect                 !!00299
*                    "13" = ATM malfunction                           !!00300
*                    "14" = suspicious reversal override              !!00301
*                    "15" = misdispense reversal override             !!00302
*                    "16" = duplicate transaction                     !!00303
*                    "17" = reconciliation error                      !!00304
*                    "18" = PLUS add cash wdl or advance              !!00305
                                                                       !00306
  02 REVERSAL-CDE              PIC 99.                                 !00307
                                                                       !00308
*               ANSI X9.2:  Data Element number 24, Bit Map position 21.
*                                                                     !!00311
*              The message type identifier as it appeared in the      !!00312
*              original transaction.  It is used to identify reversals!!00313
*              in SAF transactions.                                   !!00314
                                                                       !00315
  02 TYPE-ORIG                 PIC 9(4).                               !00316
*               ANSI X9.2:  Data Element number 34, Bit Map position 31.
*                                                                     !!00319
  02 POINT-TRAN-SPEC           PIC 99.                                 !00320
                                                                       !00321
*               ANSI X9.2:  Data Element number 36, Bit Map position 33.
*                                                                     !!00324
*                This field contains a 3-digit code in the following  !!00325
*                format.                                              !!00326
*                (AU)                                                 !!00327
*                                                                     !!00328
*                    "crr", where                                     !!00329
*                        c = card disposition                         !!00330
*                            0, 5 => return the card                  !!00331
*                            1, 6 => retain the card                  !!00332
*                       rr = reason code                              !!00333
*                            > 09 => request has been denied          !!00334
                                                                       !00335
  02 RESP-CDE-R                PIC X(8).                               !00336
  02 RESP-CDE REDEFINES RESP-CDE-R.                                    !00337
     04 FILLER                 PIC X(5).                               !00338
     04 RESP                   PIC X(3).                               !00339
                                                                       !00340
*          This field contains the response code for teller.          !!00341
*          A breakdown of this * field reflects the following:        !!00342
*                                                                     !!00343
*              CARD-PRESENT is a yes/no field that tells us if a      !!00344
*              actual plastic was used to initate the transaction or  !!00345
*              if the account number was entered by the teller.       !!00346
*                                                                     !!00347
*              OVERRIDDEN-RESP defines what the response code would   !!00348
*              have been if the override was not entered at the teller!!00349
*              terminal.                                              !!00350
*                                                                     !!00351
*              RESP is the final response to a teller transaction.    !!00352
                                                                       !00353
   02 TLR-RESP-CODE        REDEFINES RESP-CDE-R.                       !00354
      04 FILLER              PIC X.                                    !00355
      04 CARD-PRESEN         PIC X.                                    !00356
      04 OVERRIDDEN-RESP     PIC X(3).                                 !00357
      04 TLR-RESP            PIC X(3).                                 !00358
      04 TLR-RESP-R        REDEFINES TLR-RESP.                         !00359
         06 RESP-BYTE-1      PIC X.                                    !00360
         06 RESP-BYTE-2      PIC X(2).                                 !00361
                                                                       !00362
*               ANSI X9.2:  Data Element number 38, Bit Map position 35.
*                                                                     !!00365
*                This field is initialized from the TDF and contains  !!00366
*                the ATM location city and state.                     !!00367
                                                                       !00368
  02 TERM-CITY-ST              PIC X(15).                              !00369
                                                                       !00370
*               ANSI X9.2:  Data Element number 39, Bit Map position 36.
*                                                                     !!00373
*                Original data elements apply to transaction          !!00374
*                adjustments only.  If SEM.TYP = "5400" the           !!00375
*                following fields contain information about           !!00376
*                the original transaction being adjusted.             !!00377
                                                                       !00378
  02 ORIGL.                                                            !00379
                                                                       !00380
*        This is the sequence number that identifies the original     !!00381
*        transaction.                                                 !!00382
                                                                       !00383
     03  TRACE-NO               PIC X(6).                              !00384
                                                                       !00385
*        Date from original transaction timestamp.                    !!00386
                                                                       !00387
     03  TRAN-DATE              PIC X(4).                              !00388
                                                                       !00389
*        Time from original transaction timestamp.                    !!00390
                                                                       !00391
     03  TRAN-TIME              PIC X(6).                              !00392
                                                                       !00393
*        POST-DAT from original timestamp.                            !!00394
                                                                       !00395
     03  B24-POST-DAT           PIC X(4).                              !00396
                                                                       !00397
*        Issuer trace number for interchange                          !!00398
                                                                       !00399
  02 ISS-TRACE-NO               PIC 9(6).                              !00400
                                                                       !00401
*               ANSI X9.2:  Data Element number 42, Bit Map position 39.
*                                                                     !!00404
  02 PIN                       PIC X(16).                              !00405
                                                                       !00406
*               ANSI X9.2:  Data Element number 53, Bit Map position 50.
*                                                                     !!00409
*                This field contains the number of the "from" account !!00410
*                of a transaction.  If no "from" account is needed or !!00411
*                known, it is set to zero by the Device Handler.  In  !!00412
*                the case of primary accounts, it is set by AUTH.     !!00413
                                                                       !00414
  02 FROM-ACCT.                                                        !00415
     04 LTH                    PIC X(2).                               !00416
     04 NUM                    PIC X(19).                              !00417
                                                                       !00418
*               ANSI X9.2:  Data Element number 54, Bit Map position 51.
*                                                                     !!00421
*                This field contains the "to" account of a            !!00422
*                transaction.  If no "to" account is needed or known, !!00423
*                it is set to zero by the Device Handler.  In the case!!00424
*                of primary accounts, it is set by AUTH.              !!00425
                                                                       !00426
  02 TO-ACCT.                                                          !00427
     04 LTH                    PIC X(2).                               !00428
     04 NUM                    PIC X(19).                              !00429
                                                                       !00430
*               ANSI X9.2:  Data Element number 55, Bit Map position 52.
*                                                                     !!00433
*                This field is to be filled in by the Acquirer when   !!00434
*                sending a request to BASE24.  All sharing groups to  !!00435
*                which the transaction-initiating terminal belongs    !!00436
*                should be filled in.                                 !!00437
                                                                       !00438
  02 SHARING.                                                          !00439
     04 MBR-NUM                PIC 9.                                  !00440
     04 SHARING-GROUP          PIC X    OCCURS 24 TIMES.               !00441
     04 TERM-STATE             PIC 9(2).                               !00442
     04 TERM-COUNTY            PIC 9(3).                               !00443
     04 NOT-ON-US-MASK         PIC X(16).                              !00444
                                                                       !00445
*                FI-ID of the terminal owner.                         !!00446
                                                                       !00447
     04 FIID                   PIC X(4).                               !00448
                                                                       !00449
*               ANSI X9.2:  Data Element number 56, Bit Map position 53.
*                                                                     !!00452
  02 TERM.                                                             !00453
                                                                       !00454
*                This field contains the terminal owner id from the   !!00455
*                TDF record for this ATM.                             !!00456
                                                                       !00457
     04 OWNER                  PIC X(4).                               !00458
                                                                       !00459
*                This field describes point of transaction origination.
                                                                       !00462
     04 TERM-NAME-LOC          PIC X(25).                              !00463
                                                                       !00464
*                The name of the financial institution which owns     !!00465
*                the terminal.                                        !!00466
                                                                       !00467
     04 TERM-OWNER-NAME        PIC X(25).                              !00468
                                                                       !00469
*                This field contains the ATM ID name from the TDF.    !!00470
                                                                       !00471
     04 ATM-ID                 PIC X(16).                              !00472
                                                                       !00473
*                This field contains the ATM branch number from the   !!00474
*                TDF.                                                 !!00475
                                                                       !00476
     04 BRANCH-ID              PIC X(4).                               !00477
                                                                       !00478
*                This field contains the ATM region number from the   !!00479
*                TDF.                                                 !!00480
                                                                       !00481
     04 REGION-ID              PIC X(4).                               !00482
                                                                       !00483
*                This field contains the sequence number associated   !!00484
*                with this transaction by the ATM.                    !!00485
                                                                       !00486
     04 REC-NUM                PIC 9(6).                               !00487
                                                                       !00488
*                This field contains the ATM type from the TDF.       !!00489
                                                                       !00490
     04 TYP                    PIC 99.                                 !00491
                                                                       !00492
*                This field contains the time difference between the  !!00493
*                transaction-initiating terminal and the Tandem       !!00494
*                processor location. It is the signed number of       !!00495
*                minutes to be added to the BASE24 Tandem system time !!00496
*                in order to obtain the terminal local time.          !!00497
                                                                       !00498
     04 TIM-OFST                PIC S999.                              !00499
                                                                       !00500
*               ANSI X9.2:  Data Element number 57, Bit Map position 54.
*                                                                     !!00503
  02 CARD.                                                             !00504
*                Length of card issuer FI-ID.                         !!00505
                                                                       !00506
     04 FIID-LEN               PIC 99.                                 !00507
                                                                       !00508
*                This field reflects the FI-ID of the card issuer.    !!00509
                                                                       !00510
     04 CARD-FIID              PIC X(4).                               !00511
                                                                       !00512
*                Pin offset for pin.                                  !!00513
                                                                       !00514
     04 PIN-OFST               PIC X(16).                              !00515
                                                                       !00516
*               ANSI X9.2:  Data Element number 58, Bit Map position 55.
*                                                                     !!00519
  02 MISC.                                                             !00520
*                Payee code of company to which a payment is being    !!00521
*                made.                                                !!00522
                                                                       !00523
     04 PAYEE-CDE              PIC 9(4).                               !00524
                                                                       !00525
*                This field reflects the date this transaction will be!!00526
*                settled by the interchange, if there was an inter-   !!00527
*                change (e.g. CIRRUS, PLUS) involved in processing    !!00528
*                this transaction.                                    !!00529
                                                                       !00530
     04 ICHG-SETT-DAT          PIC X(4).                               !00531
                                                                       !00532
                                                                       !00533
*               ANSI X9.2:  Data Element number 59, Bit Map position 56.
*                                                                     !!00536
                                                                       !00537
  02 DEPOSITORY.                                                       !00538
                                                                       !00539
*                Carries the amount of deposit credit calculated. Used!!00540
*                for deposit reversal processing.                     !!00541
                                                                       !00542
     04 DEP-BAL-CREDIT         PIC 9(8)V99.                            !00543
                                                                       !00544
*           This field will indicate which type of depository that is !!00545
*           attached to the ATM which sent this transaction.          !!00546
*                                                                     !!00547
*               "0" = normal envelope depository                      !!00548
*               "1" = Securomatic depository                          !!00549
*               "2" = envelope and Securomatic depository             !!00550
                                                                       !00551
     04 AVAIL-DEP-TYPE         PIC 9.                                  !00552
                                                                       !00553
*           This field will indicate which type of depository is to   !!00554
*           be used at the ATM dependent upon the card type that      !!00555
*           initiated this transaction                                !!00556
*                                                                     !!00557
*               "0" = normal envelope depository                      !!00558
*               "1" = Securomatic depository                          !!00559
                                                                       !00560
     04 DEP-TYPE               PIC 9.                                  !00561
*               ANSI X9.2:  Data Element number 60, Bit Map position 57.
*                                                                     !!00564
                                                                       !00565
  02 HOST.                                                             !00566
                                                                       !00567
     04 PROC-ACCT-IND          PIC X(1).                               !00568
                                                                       !00569
*               ANSI X9.2:  Data Element number 61, Bit Map position 58.
                                                                       !00572
                                                                       !00573
  02 STMT.                                                             !00574
                                                                       !00575
*           The Format field will indicate to the Host what           !!00576
*           format the Device Handler supports for Statement Print    !!00577
*           transactions.  Valid values are:                          !!00578
*                                                                     !!00579
*             "0" - Columnar Format (default)                         !!00580
*             "1" - BASE24-atm Data Compression Format                !!00581
                                                                       !00582
     04 FRMT                   PIC X.                                  !00583
                                                                       !00584
*           The Printer Size field will indicate to the Host what     !!00585
*           size of printer is supported at the Device Handler.       !!00586
*           If the Device Handler does not support Data               !!00587
*           Compression then this field will be zeroes.               !!00588
                                                                       !00589
     04 PRNT-SIZ               PIC X(3).                               !00590
                                                                       !00591
*           Filler reserved for future use.                           !!00592
                                                                       !00593
  02 USER-FLD                  PIC X(7).                               !00594
                                                                       !00595
                                                                       !00596
                                                                       !00597
                                                                       !00598
  02 TRACK2.                                                           !00599
*               ANSI X9.2:  Data Element number 67, Bit Map position 62.
*                                                                     !!00602
*                Length of Track 2 data                               !!00603
     03 LEN                    PIC 99.                                 !00604
*               ANSI X9.2:  Data Element number 68.                   !!00605
*                                                                     !!00606
*                Actual Track 2 data                                  !!00607
     03 T2DATA                 PIC X(37).                              !00608
                                                                       !00609
  02 TRACK3.                                                           !00610
*               ANSI X9.2:  Data Element number 69, Bit Map position 63.
*                                                                     !!00613
*                Length of Track 3 data                               !!00614
     03 LEN                    PIC 999.                                !00615
*               ANSI X9.2:  Data Element number 70.                   !!00616
*                                                                     !!00617
*                Actual data                                          !!00618
     03 T3DATA                 PIC X(104).                             !00619
                                                                       !00620
*          This field is a redefinition of the TRACK3 data for the    !!00621
*          BASE24-Teller System.                                      !!00622
                                                                       !00623
   02 TELLER-INFO              REDEFINES TRACK3.                       !00624
                                                                       !00625
*          This field contains the Authorization level of the         !!00626
*          transaction.  The valid values are:                        !!00627
*          (TLR-DH)                                                   !!00628
*                                                                     !!00629
*              "0" - Transaction is not supported                     !!00630
*              "1" - Log Only - Authorization not Required            !!00631
*              "2" - Teller Controller                                !!00632
*              "3" - Teller Device Handler                            !!00633
*              "4" - Teller Authorization Process                     !!00634
*              "5" - Host Authorization Process                       !!00635
                                                                       !00636
      04 AUTH-PROCESS          PIC X.                                  !00637
                                                                       !00638
*          This field contains a yes/no indicator that defines whether!!00639
*          or not a card was used to initate the transaction or if the!!00640
*          teller entered the account number. (TLR-DH)                !!00641
                                                                       !00642
      04 CARD-PRESENT          PIC X.                                  !00643
                                                                       !00644
*          This field contains the teller identification information. !!00645
*          It is used to determine which teller unit initiated the    !!00646
*          transaction. (TLR-DH)                                      !!00647
                                                                       !00648
      04 TELLER-ID             PIC X(8).                               !00649
                                                                       !00650
*          This field contains an additional amount needed for Teller !!00651
*          processing.  This field will contain amounts for such items!!00652
*          as fees and Passbook Balances. (TLR-DH)                    !!00653
                                                                       !00654
      04 AMT-4                 PIC 9(8)V99.                            !00655
                                                                       !00656
*          This field contains the identification of the teller,      !!00657
*          supervisor or platform manager that overrode the the       !!00658
*          transaction. (TLR-DH)                                      !!00659
                                                                       !00660
      04 OVERRIDE-TELLER-ID    PIC X(8).                               !00661
                                                                       !00662
*          This field contains the response code of the transaction   !!00663
*          prior to the override.  If the original transaction was    !!00664
*          denied, an override may be entered to force the            !!00665
*          transactions approval.  This field will reflect the        !!00666
*          response code prior to the override. (TLR-AUTH)            !!00667
                                                                       !00668
      04 OVERRIDDEN-RESP       PIC X(7).                               !00669
                                                                       !00670
*          This field contains the Teller override code.  If a        !!00671
*          transaction has been declined, the Teller or above could   !!00672
*          have the option of overriding the decline. (TLR-DH)        !!00673
                                                                       !00674
      04 OVERRIDE-CODE         PIC X.                                  !00675
                                                                       !00676
*          This field contains a yes or no indication of wheather the !!00677
*          AUTH process should post the debit or credit to the "from  !!00678
*          account" amount fields. (TLR-DH)                           !!00679
                                                                       !00680
      04 POST-FROM-ACCT        PIC X.                                  !00681
                                                                       !00682
*          This field contains a yes or no indication of wheather the !!00683
*          AUTH process should post the debit or credit to the "to    !!00684
*          account" amount fields. (TLR-DH)                           !!00685
                                                                       !00686
      04 POST-TO-ACCT          PIC X.                                  !00687
                                                                       !00688
*          This field is used to determine which account number is to !!00689
*          be considered the primary account.  This will come into play
*          when trying to log transfer transactions between two accounts.
*          The primary account will be used for logging purposes.  The!!00694
*          valid values are:                                          !!00695
*          (TLR-DH)                                                   !!00696
*                                                                     !!00697
*              "C" - The Card Number in track 2 is the primary account.
*              "F" - The "From" account is the primary account.       !!00700
*              "T" - The "To" account is the primary account.         !!00701
                                                                       !00702
     04 PRIMARY-ACCT-IND       PIC X.                                  !00703
                                                                       !00704
*          This field contains a yes or no indication of wheather this!!00705
*          transaction is going to be processed through the           !!00706
*          institutions normal paper process or not. (TLR-DH)         !!00707
                                                                       !00708
      04 PAPERLESS-FLAG        PIC X.                                  !00709
                                                                       !00710
*          This field is used to determine if BASE24-Teller should    !!00711
*          send a completion message to the Host for this transaction.!!00712
*          The valid values are:                       (TLR-DH)       !!00713
*                                                                     !!00714
*              "N" - Do not send completion messages to the Host.     !!00715
*              "Y" - Send completion messages to the Host.            !!00716
                                                                       !00717
      04 COMPLETIONS-TO-HOST   PIC X.                                  !00718
                                                                       !00719
*          This field contains the actual relative record number of this
*          record.  On the initial access to the SPF, this field will be
*          equal to negative one (-1).  The Auth process will use this!!00724
*          value to determine if the alternate key should be used or if
*          the SPF should be accessed by relative record number.      !!00727
                                                                       !00728
      04 SPF-RECORD-NUM        PIC 9(7)V99.                            !00729
                                                                       !00730
*          This field is used when a SPF add is requested at the      !!00731
*          teller terminal.  The rest of the information is stored in !!00732
*          the normal request portion of the message.                 !!00733
                                                                       !00734
      04 SPF-MESSAGE-TEXT      PIC X(20).                              !00735
                                                                       !00736
*          This field is used when an update to the PBF account status!!00737
*          or "stop payment" status is entered.  It will contain one of
*          the valid statuses.                                        !!00740
                                                                       !00741
      04 PBF-STATUS-UPDATE     PIC X.                                  !00742
                                                                       !00743
*          This field is unused but will fill the remainder of the    !!00744
*          redefine.                                                  !!00745
                                                                       !00746
      04 FILLER                PIC X(36).                              !00747
                                                                       !00748
*                Reserved for 3780 protocol use                       !!00749
                                                                       !00750
  02 FILLER                    PIC X(3).                               !00751
                                                                       !00752
END                                                                    !00753
