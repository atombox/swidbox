**FIX2.28  12/04/07  DDLGTLFX6004 DDL    AT60DDL  AT0B323  D                 ***
**FIX2.22  10/25/02  DDLGTLFX6003 DDL    AT60DDL  AT06069  C                 ***
**SEQ0.04  11/01/00  DDLGTLFX6002 DDL    AT60DDL  AT04000  B                 ***
**SYNC.04  12/09/98  DDLGTLFX5302 DDL    AT53DDL  AT04000  B                 ***
**FIX2.03  08/28/98  DDLGTLFX5302 DDL    AT53DDL  AT03000  B                 ***
**FIX2.04  12/08/97  DDLGTLFX5102 DDL    AT51DDL  AT03042  B                 ***
**SYNC.03  08/21/97  DDLGTLFX5101 DDL    AT51DDL  AT03000  A                 ***
**SYNC.02  06/28/96  DDLGTLFX5101 DDL    AT51DDL  AT02000  A                 ***
**FIX2.00  09/23/93  DDLGTLFX5101 DDL    AT51DDL  AT50296  A                 ***
!*SEQ2.00  01/25/93  DDLGTLFX5000 DDL    AT50DDL                               !
?PAGE "TLFX - Transaction Log File Extract Format"
?SECTION TLFX
**********************************************************************!!00005
*                      HISTORY SECTION                               *!!00006
**********************************************************************!!00007
**********************************************************************!!00008
*                       RELEASE 5.0                                  *!!00009
**********************************************************************!!00010
* 92/04/01       Release 5.0 Design Team                              !!00011
* --------       -----------------------                              !!00012
* SYMPTOM:       BASE24 Release 5.0 Enhancements                      !!00013
* PROBLEM:       (E) None.                                            !!00014
* FIX:        1. Added TIM-OFST and USER-FLD7 in TERM-SETL.  Added    !!00015
*                TIM-OFST and USER-FLD8 in TERM-CASH.  Added TIM-OFST !!00016
*                and USER-FLD9 in SETL-TTL.  Note that the user fields!!00017
*                were added to maintain word boundary alignment for the
*                binary TIM-OFST field in the TLF DDLs.               !!00020
*             2. Created record definitions for the TERM-SETL, TERM-  !!00021
*                CASH, SETL-TTL and KEY-MAINT redefines.              !!00022
*                By making each of the given structures into its own  !!00023
*                record definition, the wasted filler space that      !!00024
*                currently exists in the redefines could be reduced.  !!00025
*                Within the new record definitions, the fields        !!00026
*                that existed as filler space to make the redefines   !!00027
*                the same size as the AUTH structure were reduced     !!00028
*                to 20 bytes.                                         !!00029
*             3. Removed the TLFX-KEY-MAINT definintion.              !!00030
*             4. Change the PAN, FROM-ACCT and TO-ACCT fields from    !!00031
*                28 bytes to 19 bytes.                                !!00032
*             5. Added USER-FLD6 to the AUTHX structure to make it    !!00033
*                even length.                                         !!00034
*             6. Redefined USER-FLD3 in AUTH to contain the           !!00035
*                Refresh Indicator for the CAF; CAF-REFR-IND.         !!00036
* DEPENDENCIES:  Re-DDL. Recompile all modules that source in the TLFX!!00037
*                Refer to the Release 5.0 Installation Documentation  !!00038
*                for further details.                                 !!00039
* REFERENCE:     BASE24-atm Release 5.0 External Specifications       !!00040
*                - ATM General Enhancements                           !!00041
*                BASE24-base Release 5.0 External Specifications      !!00042
*                - Message Tokenization                               !!00043
*                - Super Extract Enhancements                         !!00044
*                                                                     !!00045
**********************************************************************!!00046
                                                                       !00046A00
* Sept 22, 1993 Bob Cronin                                             !00046A01
* SYMPTOM:      Incorrect DDL comments.                                !00046A02
* PROBLEM:      None.                                                  !00046A03
* FIX:          1) Added valid values to the comments for the RVSL-RSN !00046A04
*                  field.                                              !00046A05
*               2) Updated the description of the PAN field.           !00046A06
* DEPENDENCIES: None.                                                  !00046A07
* REFERENCES:   1) None.                                               !00046A08
*               2) BETA RPC #003221                                    !00046A09
                                                                       !00046A0A
                                                                       !00046B00
* 01OCT1997   KJH/176   BH/177                                         !00046B01
* Symptom:    BASE24 VISA Cash Enhancement.                            !00046B02
* Problem:    None.                                                    !00046B03
* Fix:        Added valid values to the comments for the TRAN-CDE      !00046B04
*             field (41,U1), account fields (70), and                  !00046B05
*             RVSL-RSN (30,31).                                        !00046B06
* Dependency: Apply fix and remake.                                    !00046B07
* Reference:  WO #970709-2.                                            !00046B08
                                                                       !00046C00
*####################################################################  !00046C01
*#            Release 6.0                                           #  !00046C02
*####################################################################  !00046C03
* 11OCT2002   SG/302                                                   !00046C04
* Symptom:    Offline PIN Management Enhancement 02.                   !00046C05
* Problem:    None.                                                    !00046C06
* Fix:        Added EMV PIN Unblock transaction code and description   !00046C07
*             as part of comment to field T-CDE.                       !00046C08
* Dependency: Apply fix to ATBICIS, ATHISOG, ATHISOS, AUTHG, AUTHS,    !00046C09
*             AUTHTBL, BALIBTBL, COBNAMES, DDLACNST, DDLBCNST,         !00046C0A
*             DDLFTLF, DDLGSTM, DDLGTLFX, SVTLFS, TLFS and run MAKE.   !00046C0B
* Reference:  WO #020707-15                                            !00046C0C
                                                                       !00046C0D
                                                                       !00046B09
                                                                       !00046D00
* 12OCT2007   WisharJ                                                  !00046D01
* Symptom:    Shared NDC+ BNA Support                                  !00046D02
* Problem:    None.                                                    !00046D03
* Fix:        Amended comments for the dep-typ field to include the    !00046D04
*             new value of '4' for a BNA depository.                   !00046D05
* Dependency: Apply fixes to DDLGTLFX and run Make.                    !00046D06
*             Refer to BA60UD0B.SCNWNBN for a complete listing of      !00046D07
*             dependencies.                                            !00046D08
* Reference:  WO #051129-01                                            !00046D09
                                                                       !00046D0A
*#####################################################################!!00047
*#               TRANSACTION LOG FILE EXTRACT FORMAT                 #!!00048
*#####################################################################!!00049
*1  3.1.3.3  Transaction Log File Extract Format                      !!00050
*1  3.1.3.3.3  Identification                                         !!00051
*1                                                                    !!00052
*1      The Transaction Log File (TLF) contains a record of every     !!00053
*1      card-originated transaction processed by BASE24 for a single  !!00054
*1      24 hour period.  It also contains settlement records for each !!00055
*1      EFT terminal in the system.  The TLF file is an audit record  !!00056
*1      at the transaction level of the system's processing and is    !!00057
*1      extracted daily to provide detailed transaction data to the   !!00058
*1      participating institutions for processing on their host       !!00059
*1      systems.                                                      !!00060
*1                                                                    !!00061
*1      The format of the extracted record(s) is determined by the    !!00062
*1      NUMERIC-FLD-FRMT value found in the appropriate ECF record.   !!00063
*1      If this field is set to a "B" (Binary), the disc file (TLF)   !!00064
*1      ddl is used.  If this field is set to an "A" (ASCII), the TLFX!!00065
*1      format is used.                                               !!00066
*1                                                                    !!00067
*1                                                                    !!00068
********************************************************************* !!00069
?comments
*                                                                     !!00072
*             The following pages describe the fields included in     !!00073
*             the TLF extract record format.                          !!00074
*                                                                     !!00075
                                                                       !00076
*                                                                     !!00077
*             The following fields contain header information for all !!00078
*             TLF extract records.                                    !!00079
*                                                                     !!00080
                                                                       !00081
?page "HEADX"
?section HEADX
DEFINITION HEADX.                                                      !00086
                                                                       !00087
*                                                                     !!00088
*             The date and time the record was logged.                !!00089
*                                                                     !!00090
                                                                       !00091
     04 DAT-TIM                 PIC 9(19).                             !00092
                                                                       !00093
*                                                                     !!00094
*             The type of TLF record logged.  The value in this field !!00095
*             is set by the process that creates the TLF record       !!00096
*             (i.e. Authorization, Device Handler or Settlement).     !!00097
*                                                                     !!00098
*             00 = Extract position record                            !!00099
*             01 = Customer transaction                               !!00100
*             04 = Administrative transaction record                  !!00101
*             20 = Exception caused by invalid data in the STM,       !!00102
*                  but the transaction was posted.                    !!00103
*             21 = Exception caused by invalid data in the STM        !!00104
*                  and the transaction was not posted.                !!00105
*             22 = Exception (for future use)                         !!00106
*                                                                     !!00107
                                                                       !00108
     04 REC-TYP                 TYPE CHARACTER 02.                     !00109
                                                                       !00110
*                                                                     !!00111
*             The PPD name (without the initial "$") of the           !!00112
*             Authorization process that logged the record to the     !!00113
*             TLF.                                                    !!00114
*                                                                     !!00115
                                                                       !00116
     04 AUTH-PPD                PIC X(4).                              !00117
                                                                       !00118
*                                                                     !!00119
*             The values in the following fields identify the         !!00120
*             terminal where the transaction originated.              !!00121
*                                                                     !!00122
                                                                       !00123
     04 TERM.                                                          !00124
                                                                       !00125
*                                                                     !!00126
*             The logical network associated with the terminal.       !!00127
*                                                                     !!00128
                                                                       !00129
        06 LN                   TYPE *.                                !00130
                                                                       !00131
*                                                                     !!00132
*             The FIID of the financial institution owning the        !!00133
*             terminal.                                               !!00134
*                                                                     !!00135
                                                                       !00136
        06 FIID                 TYPE *.                                !00137
                                                                       !00138
*                                                                     !!00139
*             The terminal ID of the terminal originating the         !!00140
*             transaction.                                            !!00141
*                                                                     !!00142
                                                                       !00143
        06 TERM-ID              TYPE SYM-NAME.                         !00144
                                                                       !00145
*                                                                     !!00146
*             The values in the following fields identify the card    !!00147
*             issuer and cardholder associated with the transaction.  !!00148
*                                                                     !!00149
                                                                       !00150
     04 CRD.                                                           !00151
                                                                       !00152
*                                                                     !!00153
*             The logical network associated with the card issuer.    !!00154
*                                                                     !!00155
                                                                       !00156
        06 LN                   TYPE *.                                !00157
                                                                       !00158
*                                                                     !!00159
*             The FIID of the card issuer.                            !!00160
*                                                                     !!00161
                                                                       !00162
        06 FIID                 TYPE *.                                !00163
                                                                       !00164
*                                                                     !!00165
                                                                       !00165A00
*             The cardholder's Primary Account Number (PAN) for        !00165A01
*             card initiated transactions.  This field will contain    !00165A02
*             an AFT group number and user number for DCT              !00165A03
*             initiated transactions.                                  !00165A04
                                                                       !00165A05
                                                                       !00166A00
                                                                       !00166A01
*                                                                     !!00167
                                                                       !00168
        06 PAN                  PIC X(19).                             !00169
                                                                       !00170
*                                                                     !!00171
*             The member number associated with the cardholder's      !!00172
*             account number.                                         !!00173
*                                                                     !!00174
                                                                       !00175
        06 MBR-NUM              TYPE *.                                !00176
                                                                       !00177
*                                                                     !!00178
*             The branch ID associated with the terminal originating  !!00179
*             the transaction.                                        !!00180
*                                                                     !!00181
                                                                       !00182
     04 BRCH-ID                 TYPE BRCH.                             !00183
                                                                       !00184
*                                                                     !!00185
*             The region ID associated with the terminal originating  !!00186
*             the transaction.                                        !!00187
*                                                                     !!00188
                                                                       !00189
     04 REGN-ID                 TYPE REGN.                             !00190
                                                                       !00191
*                                                                     !!00192
*             This field is not used.                                 !!00193
*                                                                     !!00194
                                                                       !00195
     04 USER-FLD1X              PIC X(2).                              !00196
                                                                       !00197
END                                                                    !00198
                                                                       !00199
                                                                       !00200
*                                                                     !!00201
*             The following fields are included in financial          !!00202
*             transaction records logged to the TLF in ASCII-only     !!00203
*             format.  Financial transaction records are identified   !!00204
*             by values of 01, 20, 21, or 22 in the REC-TYP field in  !!00205
*             the TLF header.                                         !!00206
*                                                                     !!00207
?page "AUTHX"
?section AUTHX
DEFINITION AUTHX.                                                      !00212
                                                                       !00213
*                                                                     !!00214
*             A code used to determine whether an envelope or a       !!00215
*             check was involved in the transaction.  The value in    !!00216
*             this field is set by Authorization at the time the      !!00217
*             record is logged.  Valid values are:                    !!00218
*                                                                     !!00219
*             30 = An envelope was used.                              !!00220
*             31 = An envelope was not used.                          !!00221
*             32 = A check was used.                                  !!00222
*                                                                     !!00223
*             If a check was used in the transaction, Authorization   !!00224
*             will set this field to 32.  If a check was not used in  !!00225
*             the transaction and the transaction is a deposit,       !!00226
*             split deposit, deposit with cash back, payment          !!00227
*             enclosed, or message to financial institution,          !!00228
*             Authorization will set the value in this field to 30.   !!00229
*             Otherwise, it will set the value in this field to 31.   !!00230
*                                                                     !!00231
                                                                       !00232
     04 TYP-CDE                 PIC X(2).                              !00233
                                                                       !00234
*                                                                     !!00235
*             The type of message associated with this record.  Valid !!00236
*             values are:                                             !!00237
*                                                                     !!00238
*             0210 = Authorization response                           !!00239
*             0220 = Authorization advice (force post)                !!00240
*             0420 = Reversal                                         !!00241
*             5400 = Transaction adjustment                           !!00242
*             9980 = Information--money in drawer                     !!00243
*             9991 = Log request                                      !!00244
*                                                                     !!00245
                                                                       !00246
     04 TYP                     PIC 9(4).                              !00247
                                                                       !00248
*                                                                     !!00249
*             A code used to determine the status of a message at the !!00250
*             system level.  Valid values are:                        !!00251
*                                                                     !!00252
*             00 = No error                                           !!00253
*             01 = Processing error                                   !!00254
*             02 = Security device failure                            !!00255
*             11 = Destination not available                          !!00256
*             12 = Line down                                          !!00257
*                                                                     !!00258
                                                                       !00259
     04 RTE-STAT                PIC 9(2).                              !00260
                                                                       !00261
*                                                                     !!00262
*             An indicator identifying where the transaction          !!00263
*             originated.  Valid values are:                          !!00264
*                                                                     !!00265
*             1 = Device controlled by BASE24                         !!00266
*             2 = Device Handler                                      !!00267
*             3 = Authorization                                       !!00268
*             4 = Host Interface                                      !!00269
*             5 = Host                                                !!00270
*             6 = Interchange Interface                               !!00271
*             7 = Interchange                                         !!00272
*                                                                     !!00273
                                                                       !00274
     04 ORIGINATOR              PIC X.                                 !00275
                                                                       !00276
*                                                                     !!00277
*             An indicator identifying where the response message     !!00278
*             (0210) was generated.  Valid values are:                !!00279
*                                                                     !!00280
*             0 = Default, the response has not been generated yet    !!00281
*             1 = Device controlled by BASE24                         !!00282
*             2 = Device Handler                                      !!00283
*             3 = Authorization                                       !!00284
*             4 = Host Interface                                      !!00285
*             5 = Host                                                !!00286
*             6 = Interchange Interface                               !!00287
*             7 = Interchange                                         !!00288
*                                                                     !!00289
                                                                       !00290
     04 RESPONDER               PIC X.                                 !00291
                                                                       !00292
*                                                                     !!00293
*             The time the transaction entered the BASE24 system.     !!00294
*                                                                     !!00295
                                                                       !00296
     04 ENTRY-TIM               PIC 9(19).                             !00297
                                                                       !00298
*                                                                     !!00299
*             The time the Host Interface or Interchange Interface    !!00300
*             transmitted the request to the authorizing entity.      !!00301
*                                                                     !!00302
                                                                       !00303
     04 EXIT-TIM                PIC 9(19).                             !00304
                                                                       !00305
*                                                                     !!00306
*             The time the Host Interface or Interchange Interface    !!00307
*             received a response to its original request from the    !!00308
*             authorizing entity.                                     !!00309
*                                                                     !!00310
                                                                       !00311
     04 RE-ENTRY-TIM            PIC 9(19).                             !00312
                                                                       !00313
*                                                                     !!00314
*             The date (YYMMDD) on which the transaction began.       !!00315
*                                                                     !!00316
                                                                       !00317
     04 TRAN-DAT                TYPE DAT.                              !00318
                                                                       !00319
*                                                                     !!00320
*             The time (HHMMSSHH) the transaction entered the BASE24  !!00321
*             system from a device, interchange, or acquirer host.    !!00322
*                                                                     !!00323
                                                                       !00324
     04 TRAN-TIM                TYPE TIM.                              !00325
                                                                       !00326
*                                                                     !!00327
*             The date (YYMMDD) on which the transaction will be      !!00328
*             settled.                                                !!00329
*                                                                     !!00330
                                                                       !00331
     04 POST-DAT                TYPE DAT.                              !00332
                                                                       !00333
*                                                                     !!00334
*             The date (YYMMDD) this transaction will be settled by   !!00335
*             the interchange originating the transaction, if the     !!00336
*             transaction originates through an interchange.          !!00337
*                                                                     !!00338
                                                                       !00339
     04 ACQ-ICHG-SETL-DAT       TYPE DAT.                              !00340
                                                                       !00341
*                                                                     !!00342
*             The date (YYMMDD) this transaction will be settled by   !!00343
*             the interchange authorizing the transaction, if an      !!00344
*             interchange was involved in processing.                 !!00345
*                                                                     !!00346
                                                                       !00347
     04 ISS-ICHG-SETL-DAT       TYPE DAT.                              !00348
                                                                       !00349
*                                                                     !!00350
*             The sequence number associated with this transaction.   !!00351
*             If the ATM does not generate a sequence number, the     !!00352
*             associated process generates one.  This field remains   !!00353
*             unchanged through the life of the transaction.  This    !!00354
*             field is set by the Device Handler, Interchange         !!00355
*             Interface, or Host Interface process.                   !!00356
*                                                                     !!00357
                                                                       !00358
     04 SEQ-NUM                 PIC X(12).                             !00359
                                                                       !00360
*                                                                     !!00361
*             The type of terminal at which this transaction          !!00362
*             initiated.  Valid values are:                           !!00363
*                                                                     !!00364
*             01 = Diebold 910                                        !!00365
*             02 = IBM 3624 Version 8--dual cartridge                 !!00366
*             03 = Docutel 2300                                       !!00367
*             04 = Burroughs RT650/750                                !!00368
*             05 = Diebold 600                                        !!00369
*             06 = NCR 1770/1780                                      !!00370
*             09 = Diebold 911 outside device                         !!00371
*             10 = Diebold 911 lobby device                           !!00372
*             11 = Docutel 5100                                       !!00373
*             14 = IBM 3624 Version 7 - single cartridge              !!00374
*             15 = IBM 3624 Version 7 - dual cartridge                !!00375
*             16 = IBM 3614 Version 6 - single cartridge              !!00376
*             17 = IBM 3614 Version 6 - dual cartridgee               !!00377
*             18 = IBM 3624 Version 8 - single cartridge              !!00378
*             20 = Diebold 912                                        !!00379
*             22 = NCR 5070/5080                                      !!00380
*             26 = IBM 4730 single console                            !!00381
*             27 = IBM 4730 dual console                              !!00382
*             28 = Omron ATM                                          !!00383
*             29 = Omron RCD                                          !!00384
*             30 = Diebold 1000                                       !!00385
*             32 = Mirror                                             !!00386
*             40 = Diebold 906                                        !!00387
*             45 = IBM 3614 Version 5 - single cartridge              !!00388
*             46 = IBM 3614 Version 5 - dual cartridge                !!00389
*             48 = IBM 3624 Version 8 - single cartridge D01          !!00390
*             49 = IBM 3624 Version 8 - dual cartridge D02            !!00391
*                                                                     !!00392
                                                                       !00393
     04 TERM-TYP                PIC 99.                                !00394
                                                                       !00395
*                                                                     !!00396
*             The time difference (plus or minus in minutes) between  !!00397
*             the terminal location and the Tandem processor location.!!00398
*             This field is filled with the TIM-OFST from the TDF.    !!00399
*                                                                     !!00400
                                                                       !00401
     04 TIM-OFST                PIC 9(5).                              !00402
                                                                       !00403
*                                                                     !!00404
*             The routing or transit number of the terminal owner.    !!00405
*                                                                     !!00406
                                                                       !00407
     04 ACQ-INST-ID-NUM         TYPE ID-NUM.                           !00408
                                                                       !00409
*                                                                     !!00410
*             The card-issuer routing or identification number.       !!00411
*                                                                     !!00412
                                                                       !00413
     04 RCV-INST-ID-NUM         TYPE ID-NUM.                           !00414
                                                                       !00415
*                                                                     !!00416
*             The values in the following fields define the           !!00417
*             transaction code.                                       !!00418
*                                                                     !!00419
                                                                       !00420
     04 TRAN-CDE                TYPE CHARACTER 06.                     !00421
     04 TRAN-CDE-R REDEFINES TRAN-CDE.                                 !00422
                                                                       !00423
*                                                                     !!00424
*             The type of transaction.  The following codes are       !!00425
*             supported by BASE24-atm; but be aware that not all of   !!00426
*             the codes listed are supported by all ATMs.  Values     !!00427
*             are:                                                    !!00428
*                                                                     !!00429
*             03 = Check Guarantee                                    !!00430
*             04 = Check Verify                                       !!00431
*             10 = Withdrawal                                         !!00432
*             11 = Cash Check                                         !!00433
*             20 = Deposit                                            !!00434
*             24 = Deposit with Cash Back                             !!00435
*             30 = Balance Inquiry                                    !!00436
*             40 = Transfer                                           !!00437
                                                                       !00437B00
*             41 = Load Value                                          !00437B01
                                                                       !00437B02
*             50 = Payment from/to                                    !!00438
*             51 = Payment Enclosed                                   !!00439
*             60 = Message Enclosed to Financial Institution          !!00440
*             61 = Log Only                                           !!00441
*             62 = Card Review                                        !!00442
*             70 = Statement printon.                                 !!00443
*             81 = PIN change                                         !!00444
                                                                       !00444C00
*             82 = EMV PIN Unblock                                     !00444C01
                                                                       !00444C02
                                                                       !00444C03
                                                                       !00444C04
*             U1 = SVC Balance Inquiry                                 !00444B01
                                                                       !00444B02
*                                                                     !!00445
                                                                       !00446
        06 T-CDE                PIC X(2).                              !00447
                                                                       !00448
*                                                                     !!00449
*             The type of from account.  Values are:                  !!00450
*                                                                     !!00451
*             01 = Checking                                           !!00452
*             11 = Savings                                            !!00453
*             31 = Credit                                             !!00454
                                                                       !00454B00
*             70 = Electronic purse                                    !00454B01
                                                                       !00454B02
*                                                                     !!00455
                                                                       !00456
        06 T-FROM               PIC X(2).                              !00457
                                                                       !00458
*                                                                     !!00459
*             The type of to account.  Values are:                    !!00460
*                                                                     !!00461
*             01 = Checking                                           !!00462
*             11 = Savings                                            !!00463
*             31 = Credit                                             !!00464
                                                                       !00464B00
*             70 = Electronic purse                                    !00464B01
                                                                       !00464B02
*                                                                     !!00465
                                                                       !00466
        06 T-TO                 PIC X(2).                              !00467
                                                                       !00468
*                                                                     !!00469
*             The account number of the from account for the          !!00470
*             transaction.  If the from account is not needed or      !!00471
*             known, this field contains zeros.                       !!00472
*                                                                     !!00473
                                                                       !00474
     04 FROM-ACCT               PIC X(19).                             !00475
                                                                       !00476
*                                                                     !!00477
*             This field is not used.                                 !!00478
*                                                                     !!00479
                                                                       !00480
     04 USER-FLD1               PIC X.                                 !00481
                                                                       !00482
*                                                                     !!00483
*             The account number of the to account of the             !!00484
*             transaction.  If the to account is not needed or known, !!00485
*             this field contains zeros.                              !!00486
*                                                                     !!00487
                                                                       !00488
     04 TO-ACCT                 PIC X(19).                             !00489
                                                                       !00490
*                                                                     !!00491
*             An indicator used to determine whether the transaction  !!00492
*             is a primary-account transaction, a multiple-account    !!00493
*             transaction, or a fast cash transaction.   Valid values !!00494
*             are:                                                    !!00495
*                                                                     !!00496
*             0 = A primary-account transaction--the ATM where the    !!00497
*                 transaction originated does not support multiple    !!00498
*                 account selection.                                  !!00499
*             1 = A multiple-account transaction--the ATM where the   !!00500
*                 transaction originated does support multiple        !!00501
*                 account selection.                                  !!00502
*             2 = A fast cash transaction.                            !!00503
*                                                                     !!00504
                                                                       !00505
     04 MULT-ACCT               PIC 9.                                 !00506
                                                                       !00507
*                                                                     !!00508
*             The transaction amount requested.  In the case of force !!00509
*             post (0220) or reversal (0420) messages, this field     !!00510
*             contains the amount originally requested.  For          !!00511
*             Adjustment (5400) messages, this field indicates the    !!00512
*             original completion amount. Note that for deposit with  !!00513
*             cash back transactions, this field contains the         !!00514
*             deposit amount.  For split desposit transactions, this  !!00515
*             field contains the deposit amount for the first         !!00516
*             account involved in the transaction.                    !!00517
*                                                                     !!00518
                                                                       !00519
     04 AMT-1                   PIC 9(19).                             !00520
                                                                       !00521
*                                                                     !!00522
*             For most reversal (0420) messages this field contains   !!00523
*             the actual completion amount of the transaction.        !!00524
*             For reversal messages for deposit with cash-back        !!00525
*             transactions, this field contains the cash-back         !!00526
*             amount.  For reversal messages for split deposit        !!00527
*             transactions, this field contains the deposit amount    !!00528
*             for the second account involved in the transaction.     !!00529
*                                                                     !!00530
*             For most response (0210) messages, this field contains  !!00531
*             a balance amount.  This is the credit balance, for      !!00532
*             credit accounts; and it is the ledger balance for       !!00533
*             non-credit accounts.  For response messages for deposit !!00534
*             with cash back transactions, this field contains the    !!00535
*             cash-back amount.  For reponse messages for split       !!00536
*             deposit transactions, this field contains the deposit   !!00537
*             amount for the second account involved in the           !!00538
*             transaction.                                            !!00539
*                                                                     !!00540
*             For most request (0200) messages, this field contains   !!00541
*             zeros.  For request messages for deposit with cash-     !!00542
*             back transactions, this field contains the cash-back    !!00543
*             amount.  For request messages for split deposit         !!00544
*             transactions, this field contains the deposit amount    !!00545
*             for the second account involved in the transaction.     !!00546
*                                                                     !!00547
*             For adjustment (5400) messages, this field indicates    !!00548
*             the updated completion amount.                          !!00549
*                                                                     !!00550
                                                                       !00551
     04 AMT-2                   PIC 9(19).                             !00552
                                                                       !00553
*                                                                     !!00554
*             For most response (0210) messages, this field contains  !!00555
*             a balance amount.  This is the available balance for    !!00556
*             non-credit accounts; and it is the available credit     !!00557
*             for credit accounts. For response messages for deposit  !!00558
*             with cash-back transactions and split deposit           !!00559
*             transactions this field contains zeroes.                !!00560
*                                                                     !!00561
*             For a reversal (0420) message which is the result of a  !!00562
*             deposit with cash back transaction, this field          !!00563
*             contains the deposit amount if the deposit part of the  !!00564
*             transaction did not complete successfully, and it       !!00565
*             contains the completed amount of the cash back part     !!00566
*             of the transaction if the deposit completed, but the    !!00567
*             cash back did not complete successfully.  This is the   !!00568
*             only type of reversal that utilizes this field.         !!00569
*                                                                     !!00570
                                                                       !00571
     04 AMT-3                   PIC 9(19).                             !00572
                                                                       !00573
*                                                                     !!00574
*             The amount of credit given on a deposit.                !!00575
*                                                                     !!00576
*             For a split deposit transaction, this field contains    !!00577
*             the amount of credit given to the first account         !!00578
*             involved in the transaction.                            !!00579
*                                                                     !!00580
                                                                       !00581
     04 DEP-BAL-CR              PIC 9(10).                             !00582
                                                                       !00583
*                                                                     !!00584
*             An indicator used to determine the type of depository   !!00585
*             used at the terminal.  Valid values are:                !!00586
*                                                                     !!00587
*             0 = Normal envelope depository                          !!00588
*             1 = Commercial depository (e.g., Securomatic)           !!00589
*             3 = Check depository                                    !!00590
                                                                       !00590D00
*             4 = BNA depository (Cash depository)                     !00590D01
                                                                       !00590D02
*                                                                     !!00591
                                                                       !00592
     04 DEP-TYP                 PIC 9.                                 !00593
                                                                       !00594
*                                                                     !!00595
*             The values in the following fields define the response  !!00596
*             code assigned by the transaction authorizer.            !!00597
*                                                                     !!00598
                                                                       !00599
     04 RESP-CDE                PIC X(3).                              !00600
     04 RESP-CDE-R REDEFINES RESP-CDE.                                 !00601
*                                                                     !!00602
*             An indicator used to determine whether the card was     !!00603
*             returned or retained.  Values are:                      !!00604
*                                                                     !!00605
*             0 = Card was returned                                   !!00606
*             1 = Card was retained                                   !!00607
*                                                                     !!00608
                                                                       !00609
        06 RESP-BYTE-1          PIC X.                                 !00610
                                                                       !00611
*                                                                     !!00612
*             A code identifying the reason the transaction was       !!00613
*             approved or denied.  For a listing of the BASE24        !!00614
*             transaction response codes, please refer to the         !!00615
*             BASE24-atm Transaction Processing Manual.               !!00616
*                                                                     !!00617
                                                                       !00618
        06 RESP-BYTE-2          PIC X(2).                              !00619
                                                                       !00620
*                                                                     !!00621
*             The terminal name and location of the terminal          !!00622
*             that acquired the transaction.                          !!00623
*                                                                     !!00624
                                                                       !00625
     04 TERM-NAME-LOC           PIC X(25).                             !00626
                                                                       !00627
*                                                                     !!00628
*             The name of the financial institution that owns the     !!00629
*             terminal that acquired the transaction.                 !!00630
*                                                                     !!00631
                                                                       !00632
     04 TERM-OWNER-NAME         PIC X(22).                             !00633
                                                                       !00634
*                                                                     !!00635
*             The city in which the terminal that acquired the        !!00636
*             transaction is located.                                 !!00637
*                                                                     !!00638
                                                                       !00639
     04 TERM-CITY               PIC X(13).                             !00640
                                                                       !00641
*                                                                     !!00642
*             The state in which the terminal that acquired the       !!00643
*             transaction is located.                                 !!00644
*                                                                     !!00645
                                                                       !00646
     04 TERM-ST-X               PIC X(3).                              !00647
                                                                       !00648
*                                                                     !!00649
*             A code indicating the country in which the terminal     !!00650
*             that acquired the transaction is located.               !!00651
*                                                                     !!00652
                                                                       !00653
     04 TERM-CNTRY-X            PIC X(2).                              !00654
                                                                       !00655
*                                                                     !!00656
*             The original data elements apply to transaction         !!00657
*             reversals (0420) and adjustments (5400) only.  If this  !!00658
*             transaction is a reversal or adjustment, these fields   !!00659
*             contain information on the original transaction.        !!00660
*                                                                     !!00661
                                                                       !00662
     04 ORIG.                                                          !00663
                                                                       !00664
*                                                                     !!00665
*             The sequence number that identifies the original        !!00666
*             transaction.                                            !!00667
*                                                                     !!00668
                                                                       !00669
        06  OSEQ-NUM            PIC X(12).                             !00670
                                                                       !00671
*                                                                     !!00672
*             The date of the original transaction.                   !!00673
*                                                                     !!00674
                                                                       !00675
        06  OTRAN-DAT           PIC X(4).                              !00676
                                                                       !00677
*                                                                     !!00678
*             The time of the original transaction.                   !!00679
*                                                                     !!00680
                                                                       !00681
        06  OTRAN-TIM           PIC X(8).                              !00682
                                                                       !00683
*                                                                     !!00684
*             The BASE24 posting date of the original transaction.    !!00685
*                                                                     !!00686
                                                                       !00687
        06  B24-POST-DAT        PIC X(4).                              !00688
                                                                       !00689
*                                                                     !!00690
*             The type of currency involved in the original           !!00691
*             transaction.                                            !!00692
*                                                                     !!00693
                                                                       !00694
     04 ORIG-CRNCY-CDE          TYPE CRNCY-CDE.                        !00695
                                                                       !00696
*                                                                     !!00697
*             This field is not used.                                 !!00698
*                                                                     !!00699
                                                                       !00700
     04 USER-FLD2               PIC X(41).                             !00701
                                                                       !00702
*                                                                     !!00703
*             The following fields are defined for multiple currency  !!00704
*             support, but they are not currently used by BASE24-atm. !!00705
*                                                                     !!00706
                                                                       !00707
     04 MULT-CRNCY              REDEFINES USER-FLD2.                   !00708
                                                                       !00709
*                                                                     !!00710
*             A code identifying the type of currency used in the     !!00711
*             authorization response.                                 !!00712
*                                                                     !!00713
                                                                       !00714
       06 AUTH-CRNCY-CDE        TYPE CRNCY-CDE.                        !00715
                                                                       !00716
*                                                                     !!00717
*             The exchange rate of the authorizing institution.  The  !!00718
*             value in this field is used to compute the final        !!00719
*             settlement amount.  The first digit contains the offset !!00720
*             of the decimal point from the right-hand side.  Unless  !!00721
*             multiple currencies are involved, the default value is  !!00722
*             61000000.                                               !!00723
*                                                                     !!00724
                                                                       !00725
       06 AUTH-CONV-RATE        PIC 9(8).                              !00726
                                                                       !00727
*                                                                     !!00728
*             A code identifying the type of currency used by the     !!00729
*             settlement entity.                                      !!00730
*                                                                     !!00731
                                                                       !00732
       06 SETL-CRNCY-CDE        TYPE CRNCY-CDE.                        !00733
                                                                       !00734
*                                                                     !!00735
*             The exchange rate of the settlement entity.  The value  !!00736
*             in this field is used to compute the final settlement   !!00737
*             amount.  The first digit contains the offset of the     !!00738
*             decimal point from the right-hand side.  Unless         !!00739
*             multiple currencies are involved, the default value is  !!00740
*             61000000.                                               !!00741
*                                                                     !!00742
                                                                       !00743
       06 SETL-CONV-RATE        PIC 9(8).                              !00744
                                                                       !00745
*                                                                     !!00746
*             The day and time when the exchange rate was applied.    !!00747
*             The value in this field is generated via a call to      !!00748
*             Tandem's JULIANTIMESTAMP utility. It is used for time   !!00749
*             tracking purposes.                                      !!00750
*                                                                     !!00751
                                                                       !00752
       06 CONV-DAT-TIM          PIC 9(19).                             !00753
                                                                       !00754
*                                                                     !!00755
*             An indicator used to identify the reason for a reversal !!00756
*             (0420) or adjustment (5400) message type.               !!00757
*                                                                     !!00758
*             Valid values for a reversal message (0420) are:         !!00759
*                                                                     !!00760
*             01 = Time-out                                           !!00761
*             02 = Command reject                                     !!00762
*             03 = Destination not available                          !!00763
*             08 = Transaction canceled                               !!00764
*             10 = Hardware error                                     !!00765
*             20 = Suspect transaction                                !!00766
                                                                       !00766B00
*             30 = Funds side of stored value tran failed              !00766B01
*             31 = SVC side of stored value tran failed                !00766B02
                                                                       !00766B03
*                                                                     !!00767
*             Valid values for an adjustment message (5400) are:      !!00768
*                                                                     !!00769
*             12 = Original amount incorrect                          !!00770
*             13 = ATM malfunction                                    !!00771
*             14 = Suspicious reveral override                        !!00772
*             15 = Misdispense reversal override                      !!00773
*             16 = Duplicate transaction                              !!00774
*             17 = Reconcilation error                                !!00775
*             18 = PLUS add cash withdrawal or advance                !!00776
                                                                       !00776A00
*             21 = Message Authentication Code (MAC) failure           !00776A01
*             22 = MAC key synchronization error                       !00776A02
*             23 = Message replay error                                !00776A03
*             24 = Invalid MAC                                         !00776A04
                                                                       !00776A05
*                                                                     !!00777
                                                                       !00778
     04 RVSL-RSN                PIC 99.                                !00779
                                                                       !00780
*                                                                     !!00781
*             The PIN offset value for the PIN.                       !!00782
*                                                                     !!00783
                                                                       !00784
     04 PIN-OFST                PIC X(16).                             !00785
                                                                       !00786
*                                                                     !!00787
*             An indicator used to identify the sharing group used to !!00788
*             allow the transaction, if it was a not-on-us            !!00789
*             transaction; otherwise, this field contains a zero.     !!00790
*                                                                     !!00791
                                                                       !00792
     04 SHRG-GRP                PIC X.                                 !00793
                                                                       !00794
*                                                                     !!00795
*             An indicator used to determine which destination        !!00796
*             performed the final authorization.  Valid values are:   !!00797
*                                                                     !!00798
*             A = Alternate destination                               !!00799
*             P = Primary destination                                 !!00800
*                                                                     !!00801
                                                                       !00802
     04 DEST-ORDER              PIC X.                                 !00803
                                                                       !00804
*                                                                     !!00805
*             The host-generated transaction sequence number used for !!00806
*             logging and extract purposes only.                      !!00807
*                                                                     !!00808
                                                                       !00809
     04 AUTH-ID-RESP            PIC X(6).                              !00810
                                                                       !00811
*                                                                     !!00812
*             The values in the following fields indicate to Refresh  !!00813
*             when to impact the PBF and how to impact the balances   !!00814
*             when impacting is required.  All are set by             !!00815
*             Authorization according to the transaction type.        !!00816
*                                                                     !!00817
                                                                       !00818
     04 REFR.                                                          !00819
                                                                       !00820
*                                                                     !!00821
*             An indicator used to determine whether this record      !!00822
*             should be considered when impacting a newly refreshed   !!00823
*             set of account records.  Valid values are:              !!00824
*                                                                     !!00825
*             0 = Do not use this record for impacting.               !!00826
*             1 = Use this record for impacting.                      !!00827
*                                                                     !!00828
                                                                       !00829
        06  IMP-IND             PIC X.                                 !00830
                                                                       !00831
*                                                                     !!00832
*             An indicator used to define how the value in the AVAIL- !!00833
*             BAL field is impacted in the PBF account records.  The  !!00834
*             first occurrence defines impacting on the from account  !!00835
*             and the second occurrence defines impacting on the to   !!00836
*             account.  Valid values are:                             !!00837
*                                                                     !!00838
*             0 = No effect on balance                                !!00839
*             1 = Add to balance                                      !!00840
*             2 = Subtract from balance                               !!00841
*                                                                     !!00842
                                                                       !00843
        06  AVAIL-IMP           PIC X  OCCURS 2 TIMES.                 !00844
                                                                       !00845
*                                                                     !!00846
*             An indicator used to define how the value in the LEDG-  !!00847
*             BAL field is impacted in the PBF account records.  The  !!00848
*             first occurrence defines impacting on the from account  !!00849
*             and the second occurrence defines impacting on the to   !!00850
*             account.  Valid values are:                             !!00851
*                                                                     !!00852
*             0 = No effect on balance                                !!00853
*             1 = Add to balance                                      !!00854
*             2 = Subtract from balance                               !!00855
*                                                                     !!00856
                                                                       !00857
        06  LEDG-IMP            PIC X  OCCURS 2 TIMES.                 !00858
                                                                       !00859
*                                                                     !!00860
*             An indicator used to define how the value in the AMT-   !!00861
*             ON-HLD field is impacted in the PBF account records.    !!00862
*             The first occurrence defines impacting on the from      !!00863
*             account and the second occurrence defines impacting on  !!00864
*             the to account.  Valid values are:                      !!00865
*                                                                     !!00866
*             0 = No effect on balance                                !!00867
*             1 = Add to balance                                      !!00868
*             2 = Subtract from balance                               !!00869
*                                                                     !!00870
                                                                       !00871
        06  HLD-AMT-IMP         PIC X  OCCURS 2 TIMES.                 !00872
                                                                       !00873
*                                                                     !!00874
*             An indicator used to determine when transaction         !!00875
*             impacting can be terminated.  The value in this field   !!00876
*             is set by Authorization from a corresponding field in   !!00877
*             the IDF.                                                !!00878
*                                                                     !!00879
*             When Refresh finishes refreshing the CAF, it begins     !!00880
*             impacting the file with new transactions being added to !!00881
*             the TLF.  At that time, it increments the value in the  !!00882
*             CAF1 field in the IDF (A to B, B to C, C to D,          !!00883
*             etc.) and sends a message to Authorization containing   !!00884
*             the refreshed CAF file name and the new value in the    !!00885
*             CAF1 field.  Thus, when transactions begin              !!00886
*             appearing in the TLF with the new value in the          !!00887
*             CAF-REFR-IND field, refresh knows that Authorization    !!00888
*             is using the refreshed CAF and that it can stop         !!00889
*             impacting the CAF.                                      !!00890
*                                                                     !!00891
                                                                       !00892
        06  CAF-REFR-IND        PIC X.                                 !00893
                                                                       !00894
*                                                                     !!00895
*             This field is not used.                                 !!00896
*                                                                     !!00897
                                                                       !00898
        06  USER-FLD3           PIC X.                                 !00899
                                                                       !00900
*                                                                     !!00901
*             An indicator identifying how deposits at an ATM impact  !!00902
*             settlement.  Valid values are:                          !!00903
*                                                                     !!00904
*             0 = Deposits do not impact settlement.                  !!00905
*             1 = Envelope deposits do impact settlement.             !!00906
*             2 = Commercial deposits do impact settlement.           !!00907
*             3 = Both envelope and commercial deposits do impact     !!00908
*                 settlement.                                         !!00909
*                                                                     !!00910
                                                                       !00911
     04 DEP-SETL-IMP-FLG        PIC X.                                 !00912
                                                                       !00913
*                                                                     !!00914
*             An indicator used to determine whether adjustments      !!00915
*             impact settlement.  Valid values are:                   !!00916
*                                                                     !!00917
*             0 = Adjustments do not impact settlement.               !!00918
*             1 = Adjustments impact settlement.                      !!00919
*                                                                     !!00920
                                                                       !00921
     04 ADJ-SETL-IMP-FLG        PIC X.                                 !00922
                                                                       !00923
*                                                                     !!00924
*             An indicator used to determine when transaction         !!00925
*             impacting can be terminated.  The value in this field   !!00926
*             is set by Authorization from a corresponding field in   !!00927
*             the IDF.                                                !!00928
*                                                                     !!00929
*             When Refresh finishes refreshing the PBF, it begins     !!00930
*             impacting the file with new transactions being added to !!00931
*             the TLF.  At that time, it increments the value in the  !!00932
*             REFR-IND field in the IDF (A to B, B to C, C to D,      !!00933
*             etc.) and sends a message to Authorization containing   !!00934
*             the refreshed PBF file name and the new value in the    !!00935
*             REFR-IND field.  Thus, when transactions begin          !!00936
*             appearing in the TLF with the new value in the REFR-IND !!00937
*             field, Refresh knows that Authorization is using the    !!00938
*             refreshed PBF and that it can stop impacting the PBF.   !!00939
*                                                                     !!00940
*             The first three settings (PBF1, PBF2, and PBF3) are     !!00941
*             here because an institution may have three separate     !!00942
*             PBFs used for BASE24-atm and, therefore, multiple       !!00943
*             refresh schedules:  one for checking accounts (PBF1),   !!00944
*             one for savings accounts (PBF2), and one for credit     !!00945
*             accounts (PBF3).  If only one PBF is maintained, only   !!00946
*             the PBF1 field is used. The PBF4 field is used in       !!00947
*             situations when a CPBF (used in conjunction with        !!00948
*             BASE24-cash manager) is used instead of a PBF.          !!00949
*                                                                     !!00950
                                                                       !00951
     04 REFR-IND.                                                      !00952
        06  PBF1                PIC X.                                 !00953
        06  PBF2                PIC X.                                 !00954
        06  PBF3                PIC X.                                 !00955
        06  PBF4                PIC X.                                 !00956
                                                                       !00957
     04 USER-FLD4               PIC X(16).                             !00958
                                                                       !00959
*                                                                     !!00960
*             An identification number used to identify the           !!00961
*             forwarding institution.                                 !!00962
*                                                                     !!00963
                                                                       !00964
     04 FRWD-INST-ID-NUM        TYPE ID-NUM.                           !00965
                                                                       !00966
*                                                                     !!00967
*             An identification number used to identify the card      !!00968
*             acceptor for a request message (0200) originating from  !!00969
*             an acquirer host.                                       !!00970
*                                                                     !!00971
                                                                       !00972
     04 CRD-ACCPT-ID-NUM        TYPE ID-NUM.                           !00973
                                                                       !00974
*                                                                     !!00975
*             An identification number used to identify the card      !!00976
*             issuer for a response message (0210) originating from   !!00977
*             an authorizing host.                                    !!00978
*                                                                     !!00979
                                                                       !00980
     04 CRD-ISS-ID-NUM          TYPE ID-NUM.                           !00981
                                                                       !00982
*                                                                     !!00983
*              This field is not used.                                !!00984
*                                                                     !!00985
                                                                       !00986
     04 USER-FLD6               PIC X.                                 !00987
                                                                       !00988
END                                                                    !00989
                                                                       !00990
?page "TLFX"
?section TLFX
DEFINITION TLFX.                                                       !00995
02 HEADX              TYPE *.                                          !00996
02 AUTHX              TYPE *.                                          !00997
END                                                                    !00998
                                                                       !00999
?page "TLFX-TERM-SETL"
?section TLFX-TERM-SETL
DEFINITION TLFX-TERM-SETL.                                             !01004
02 HEADX              TYPE *.                                          !01005
                                                                       !01006
*                                                                     !!01007
*             The following fields are included in terminal balancing !!01008
*             records logged to the TLF in ASCII-only format.         !!01009
*             Terminal balancing records are identified by a value of !!01010
*             04 in the REC-TYP field in the TLF header.  These       !!01011
*             records are further identified by values of 05, 06, or  !!01012
*             09 in the TERM-SETL.ADMIN-CDE field.                    !!01013
*                                                                     !!01014
                                                                       !01015
  02 TERM-SETL.                                                        !01016
                                                                       !01017
*                                                                     !!01018
*             The date (YYMMDD) the administrative transaction        !!01019
*             occurred.                                               !!01020
*                                                                     !!01021
                                                                       !01022
     04 ADMIN-DAT               TYPE DAT.                              !01023
                                                                       !01024
*                                                                     !!01025
*             The time (HHMMSSTT) the administrative transaction      !!01026
*             occurred.                                               !!01027
*                                                                     !!01028
                                                                       !01029
     04 ADMIN-TIM               TYPE TIM.                              !01030
                                                                       !01031
*                                                                     !!01032
*             An indicator used to determine how the terminal was cut !!01033
*             over.  Values are:                                      !!01034
*                                                                     !!01035
*             05 = Terminal cutover via the Device Handler.           !!01036
*             06 = Terminal cutover via CRT.                          !!01037
*             09 = Forced cutover via Settlement Initiator.           !!01038
*                                                                     !!01039
                                                                       !01040
     04 ADMIN-CDE               PIC 9(2).                              !01041
                                                                       !01042
*                                                                     !!01043
*             The following fields contain the hopper values from the !!01044
*             TDF just prior to the terminal being balanced.          !!01045
*                                                                     !!01046
                                                                       !01047
     04 HOPR                    OCCURS 6 TIMES.                        !01048
                                                                       !01049
*                                                                     !!01050
*             A code used to identify the contents of the hopper.     !!01051
*             Valid values are:                                       !!01052
*                                                                     !!01053
*             00 = Cash                                               !!01054
*             01 = Coin                                               !!01055
*                                                                     !!01056
                                                                       !01057
        06 CONTENTS             PIC X(2).                              !01058
                                                                       !01059
*                                                                     !!01060
*             The amount of currency in the hopper at the start of    !!01061
*             the current balancing period.                           !!01062
*                                                                     !!01063
                                                                       !01064
        06 BEG-CASH             PIC 9(19).                             !01065
                                                                       !01066
*                                                                     !!01067
*             The amount of currency added to the hopper during the   !!01068
*             current balancing period.                               !!01069
*                                                                     !!01070
                                                                       !01071
        06 CASH-INCR            PIC 9(19).                             !01072
                                                                       !01073
*                                                                     !!01074
*             The amount of currency removed from the hopper during   !!01075
*             the current balancing period.                           !!01076
*                                                                     !!01077
                                                                       !01078
        06 CASH-DECR            PIC 9(19).                             !01079
                                                                       !01080
*                                                                     !!01081
*             The amount of currency dispensed from the hopper        !!01082
*             through customer withdrawals between terminal balancing !!01083
*             periods.                                                !!01084
*                                                                     !!01085
                                                                       !01086
        06 CASH-OUT             PIC 9(19).                             !01087
                                                                       !01088
*                                                                     !!01089
*             The amount of currency remaining in the hopper at the   !!01090
*             end of the balancing period.                            !!01091
*                                                                     !!01092
                                                                       !01093
        06 END-CASH             PIC 9(19).                             !01094
                                                                       !01095
*                                                                     !!01096
*             A code identifying the currency in the hopper.  Valid   !!01097
*             values are listed in the booklet "Codes for the         !!01098
*             Representation of Currencies and Funds", ISO 4217:1990. !!01099
*                                                                     !!01100
                                                                       !01101
        06 CRNCY-CDE            TYPE *.                                !01102
                                                                       !01103
*                                                                     !!01104
*             This field is not used.                                 !!01105
*                                                                     !!01106
                                                                       !01107
        06 USER-FLD5            PIC X.                                 !01108
                                                                       !01109
*                                                                     !!01110
*             The number of envelope deposits accepted at the         !!01111
*             terminal since the last terminal balancing transaction. !!01112
*                                                                     !!01113
                                                                       !01114
     04 NUM-DEP                 PIC 9(5).                              !01115
                                                                       !01116
*                                                                     !!01117
*             The unverified amount of the deposits accepted at the   !!01118
*             terminal since the last terminal balancing transaction. !!01119
*                                                                     !!01120
                                                                       !01121
     04 AMT-DEP                 PIC 9(19).                             !01122
                                                                       !01123
*                                                                     !!01124
*             The number of envelope deposits accepted in the         !!01125
*             commercial (e.g., Securomatic) depository since the     !!01126
*             last terminal balancing transaction.                    !!01127
*                                                                     !!01128
                                                                       !01129
     04 NUM-CMRCL-DEP           PIC 9(5).                              !01130
                                                                       !01131
*                                                                     !!01132
*             The unverified amount of the deposits accepted in the   !!01133
*             commercial (e.g., Securomatic) depository since the     !!01134
*             last terminal balancing transaction.                    !!01135
*                                                                     !!01136
                                                                       !01137
     04 AMT-CMRCL-DEP           PIC 9(19).                             !01138
                                                                       !01139
*                                                                     !!01140
*             The number of envelope payments accepted at the         !!01141
*             terminal since the last terminal balancing transaction. !!01142
*                                                                     !!01143
                                                                       !01144
     04 NUM-PAY                 PIC 9(5).                              !01145
                                                                       !01146
*                                                                     !!01147
*             The unverified amount of payments accepted at the       !!01148
*             terminal since the last terminal balancing transaction. !!01149
*                                                                     !!01150
                                                                       !01151
     04 AMT-PAY                 PIC 9(19).                             !01152
                                                                       !01153
*                                                                     !!01154
*             The number of messages-to-institution transaction       !!01155
*             envelopes accepted since the last terminal balancing    !!01156
*             transaction.                                            !!01157
*                                                                     !!01158
                                                                       !01159
     04 NUM-MSG                 PIC 9(5).                              !01160
                                                                       !01161
*                                                                     !!01162
*             The total number of checks received (i.e. cashed        !!01163
*             or deposited) since the terminal was last balanced.     !!01164
*                                                                     !!01165
                                                                       !01166
     04 NUM-CHK                 PIC 9(5).                              !01167
                                                                       !01168
*                                                                     !!01169
*             The unverified total amount of checks received          !!01170
*             (i.e. cashed or deposited) since the terminal was       !!01171
*             last balanced. terminal balancing transaction.          !!01172
*                                                                     !!01173
                                                                       !01174
     04 AMT-CHK                 PIC 9(19).                             !01175
                                                                       !01176
*                                                                     !!01177
*             The number of log-only transactions performed since the !!01178
*             last terminal balancing transaction.                    !!01179
*                                                                     !!01180
                                                                       !01181
     04 NUM-LOGONLY             PIC 9(5).                              !01182
                                                                       !01183
*                                                                     !!01184
*             The estimated number of envelopes deposited at the      !!01185
*             terminal.  This number is computed by the process       !!01186
*             creating the terminal settlement record by adding the   !!01187
*             values from the following fields in the TDF:  NUM-DEP,  !!01188
*             NUM-PAY, NUM-MSG and NUM-CHK.                           !!01189
*                                                                     !!01190
                                                                       !01191
     04 TTL-ENV                 PIC 9(5).                              !01192
                                                                       !01193
*                                                                     !!01194
*             The number of cards retained since the last terminal    !!01195
*             balancing transaction.                                  !!01196
*                                                                     !!01197
                                                                       !01198
     04 CRDS-RET                PIC 9(5).                              !01199
                                                                       !01200
*                                                                     !!01201
*             A code indicating the type of currency used to          !!01202
*             represent the terminal's amount fields (i.e., the       !!01203
*             nation that printed the currency).  Valid               !!01204
*             values are listed in the "ISO Codes for the             !!01205
*             Representation of Currencies and Funds", 4217-1990.     !!01206
*                                                                     !!01207
                                                                       !01208
     04 SETL-CRNCY-CDE          TYPE CRNCY-CDE.                        !01209
                                                                       !01210
*                                                                     !!01211
*             This field is not used.                                 !!01212
*                                                                     !!01213
                                                                       !01214
     04 USER-FLD7               PIC X.                                 !01215
                                                                       !01216
*                                                                     !!01217
*             The time difference (plus or minus in minutes) between  !!01218
*             the terminal location and the Tandem processor location.!!01219
*             This field is filled with the TIM-OFST from the TDF.    !!01220
*                                                                     !!01221
                                                                       !01222
     04 TIM-OFST                PIC 9(5).                              !01223
                                                                       !01224
*                                                                     !!01225
*             This field is not used.                                 !!01226
*                                                                     !!01227
                                                                       !01228
     04 SETL-AREA               PIC X(20).                             !01229
                                                                       !01230
END                                                                    !01231
                                                                       !01232
?page "TLFX-TERM-CASH"
?section TLFX-TERM-CASH
DEFINITION TLFX-TERM-CASH.                                             !01237
02 HEADX              TYPE *.                                          !01238
                                                                       !01239
*                                                                     !!01240
*             The following fields are included in Terminal Cash      !!01241
*             Adjustment records logged to the TLF in ASCII-only      !!01242
*             format. Terminal Cash Adjustment records are identified !!01243
*             by a value of 04 in the REC-TYP field in the TLF        !!01244
*             header.  These records are further identified by values !!01245
*             of 01, 02, 03, 04, 07, or 08 in the TERM-CASH.ADMIN-    !!01246
*             CDE field.                                              !!01247
*                                                                     !!01248
                                                                       !01249
  02 TERM-CASH.                                                        !01250
                                                                       !01251
*                                                                     !!01252
*             The date (YYMMDD) the administrative transaction        !!01253
*             occurred.                                               !!01254
*                                                                     !!01255
                                                                       !01256
     04 ADMIN-DAT               TYPE DAT.                              !01257
                                                                       !01258
*                                                                     !!01259
*             The time (HHMMSSTT) the administrative transaction      !!01260
*             occurred.                                               !!01261
*                                                                     !!01262
                                                                       !01263
     04 ADMIN-TIM               TYPE TIM.                              !01264
                                                                       !01265
*                                                                     !!01266
*             A code indicating a transaction type that involves      !!01267
*             increases and decreases of currency.  This code also    !!01268
*             identifies whether the transaction was performed by a   !!01269
*             Device Handler or at a CRT.  Valid values are:          !!01270
*                                                                     !!01271
*             01 = Initialize cash, hopper #n (Device Handler).       !!01272
*             02 = Initialize cash, hopper #n (CRT).                  !!01273
*             03 = Increase cash, hopper #n (Device Handler).         !!01274
*             04 = Increase cash, hopper #n (CRT).                    !!01275
*             07 = Decrease cash, hopper #n (Device Handler).         !!01276
*             08 = Decrease cash, hopper #n (CRT).                    !!01277
*                                                                     !!01278
                                                                       !01279
     04 ADMIN-CDE               PIC 9(2).                              !01280
                                                                       !01281
*                                                                     !!01282
*             The number of the hopper being affected by the          !!01283
*             administrative transaction.                             !!01284
*                                                                     !!01285
                                                                       !01286
     04 HOPR-NUM                PIC X.                                 !01287
                                                                       !01288
*                                                                     !!01289
*             The contents contained in the hopper.  Valid values     !!01290
*             are:                                                    !!01291
*                                                                     !!01292
*             00 = Cash                                               !!01293
*             01 = Coin                                               !!01294
*                                                                     !!01295
                                                                       !01296
     04 HOPR-CONTENTS           PIC X(2).                              !01297
                                                                       !01298
*                                                                     !!01299
*             The amount of increase or decrease to the hopper        !!01300
*             because of the administrative transaction.              !!01301
*                                                                     !!01302
                                                                       !01303
     04 AMT                     PIC 9(12).                             !01304
                                                                       !01305
*                                                                     !!01306
*             A code identifying the type of currency used for the    !!01307
*             administrative transaction.  Valid                      !!01308
*             values are listed in the "ISO Codes for the             !!01309
*             Representation of Currencies and Funds", 4217-1990.     !!01310
*                                                                     !!01311
                                                                       !01312
     04 CRNCY-CDE               TYPE *.                                !01313
                                                                       !01314
*                                                                     !!01315
*             This field is not used.                                 !!01316
*                                                                     !!01317
                                                                       !01318
     04 USER-FLD8               PIC X.                                 !01319
                                                                       !01320
*                                                                     !!01321
*             The time difference (plus or minus in minutes) between  !!01322
*             the terminal location and the Tandem processor location.!!01323
*             This field is filled with the TIM-OFST from the TDF.    !!01324
*                                                                     !!01325
                                                                       !01326
     04 TIM-OFST                PIC 9(5).                              !01327
                                                                       !01328
*                                                                     !!01329
*             This field is not used.                                 !!01330
*                                                                     !!01331
                                                                       !01332
     04 CASH-AREA               PIC X(21).                             !01333
                                                                       !01334
END                                                                    !01335
                                                                       !01336
?page "TLFX-SETL-TTL"
?section TLFX-SETL-TTL
DEFINITION TLFX-SETL-TTL.                                              !01341
                                                                       !01342
02 HEADX              TYPE *.                                          !01343
                                                                       !01344
*                                                                     !!01345
*             The following fields are included in Terminal           !!01346
*             Settlement records logged to the TLF in ASCII-only      !!01347
*             format. Terminal Settlement records are identified by a !!01348
*             value of 04 in the REC-TYP field in the TLF header.     !!01349
*             These records are further identified by values of 20,   !!01350
*             21, or 22 in the SETL-TTL.ADMIN-CDE field.              !!01351
*                                                                     !!01352
                                                                       !01353
  02 SETL-TTL.                                                         !01354
                                                                       !01355
*                                                                     !!01356
*             The date (YYMMDD) the administrative transaction        !!01357
*             occurred.                                               !!01358
*                                                                     !!01359
                                                                       !01360
     04 ADMIN-DAT               TYPE DAT.                              !01361
                                                                       !01362
*                                                                     !!01363
*             The time (HHMMSSTT) the administrative transaction      !!01364
*             occurred.                                               !!01365
*                                                                     !!01366
                                                                       !01367
     04 ADMIN-TIM               TYPE TIM.                              !01368
                                                                       !01369
*                                                                     !!01370
*             An indicator used to determine the type of settlement   !!01371
*             transaction and originator of the transaction.  Valid   !!01372
*             values are:                                             !!01373
*                                                                     !!01374
*             20 = Terminal totals sent by the CRT                    !!01375
*             21 = Terminal totals sent by the Device Handler         !!01376
*             22 = Terminal totals sent by the Settlement Initiator   !!01377
*                                                                     !!01378
                                                                       !01379
     04 ADMIN-CDE               PIC 9(2).                              !01380
                                                                       !01381
*                                                                     !!01382
*             The unverified amount of terminal debits since the      !!01383
*             terminal was last balanced.  The amount in this field   !!01384
*             consists of debits from the institution's point of      !!01385
*             view.  Transaction amounts are added to the balance in  !!01386
*             this field for:                                         !!01387
*                                                                     !!01388
*             o  On-us and not-on-us deposits.  This includes         !!01389
*                all types of deposit transactions (i.e. deposit      !!01390
*                transactions, split deposit transactions and deposit !!01391
*                with cash back transactions).  Note that these       !!01392
*                transactions are supported for envelop, commercial   !!01393
*                and check deposit types.                             !!01394
*                                                                     !!01395
*             o  On-us and not-on-us payment-enclosed transactions    !!01396
*                                                                     !!01397
*             o  On-us and not-on-us transfers                        !!01398
*                                                                     !!01399
*             o  On-us and not-on-us payments between accounts        !!01400
*                                                                     !!01401
                                                                       !01402
     04 TERM-DB                 PIC 9(12).                             !01403
                                                                       !01404
*                                                                     !!01405
*             The total amount of terminal credits since the terminal !!01406
*             was last balanced.  The amount in this field consists   !!01407
*             of credits from the institution's point of view.        !!01408
*             Transaction amounts are added to the balance in this    !!01409
*             field for:                                              !!01410
*                                                                     !!01411
*             o  On-us and not-on-us withdrawals                      !!01412
*                                                                     !!01413
*             o  On-us and not-on-us cash checks                      !!01414
*                                                                     !!01415
*             o  On-us and not-on-us deposits with cash back.  Note   !!01416
*                that only the cash back amount is included in the    !!01417
*                TERM-CR amount.                                      !!01418
*                                                                     !!01419
*             o  On-us and not-on-us transfers                        !!01420
*                                                                     !!01421
*             o  On-us and not-on-us payments between accounts        !!01422
*                                                                     !!01423
                                                                       !01424
     04 TERM-CR                 PIC 9(12).                             !01425
                                                                       !01426
*                                                                     !!01427
*             The total amount of on-us debits since the terminal was !!01428
*             last balanced. The amount in this field consists of     !!01429
*             debits from the customer's point of view.  Transaction  !!01430
*             amounts are added to the balance in this field for:     !!01431
*                                                                     !!01432
*             o  On-us withdrawals                                    !!01433
*                                                                     !!01434
*             o  On-us cash checks                                    !!01435
*                                                                     !!01436
*             o  On-us and not-on-us deposits with cash back.  Note   !!01437
*                that only the cash back amount is included in the    !!01438
*                ON-US-DB amount.                                     !!01439
*                                                                     !!01440
*             o  On-us transfers                                      !!01441
*                                                                     !!01442
*             o  On-us payments between accounts                      !!01443
*                                                                     !!01444
                                                                       !01445
     04 ON-US-DB                PIC 9(12).                             !01446
                                                                       !01447
*                                                                     !!01448
*             The total amount of on-us credits since the terminal    !!01449
*             was last balanced. The amount in this field consists of !!01450
*             credits from the customer's point of view.  Transaction !!01451
*             amounts are added to the balance in this field for:     !!01452
*                                                                     !!01453
*             o  On-us deposits.  This includes                       !!01454
*                all types of deposit transactions (i.e. deposit      !!01455
*                transactions, split deposit transactions and deposit !!01456
*                with cash back transactions).  Note that these       !!01457
*                transactions are supported for envelop, commercial   !!01458
*                and check deposit types.                             !!01459
*                                                                     !!01460
*             o  On-us payment enclosed transactions                  !!01461
*                                                                     !!01462
*             o  On-us transfers                                      !!01463
*                                                                     !!01464
*             o  On-us payments between accounts                      !!01465
*                                                                     !!01466
                                                                       !01467
     04 ON-US-CR                PIC 9(12).                             !01468
                                                                       !01469
*                                                                     !!01470
*             A code indicating the type of currency used during      !!01471
*             settlement.                                             !!01472
*                                                                     !!01473
*             Valid values are listed in the "ISO Codes for the       !!01474
*             Representation of Currencies and Funds", 4217-1990.     !!01475
*                                                                     !!01476
                                                                       !01477
     04 CRNCY-CDE               TYPE *.                                !01478
                                                                       !01479
*                                                                     !!01480
*             This field is not used.                                 !!01481
*                                                                     !!01482
                                                                       !01483
     04 USER-FLD9               PIC X.                                 !01484
                                                                       !01485
*                                                                     !!01486
*             The time difference (plus or minus in minutes) between  !!01487
*             the terminal location and the Tandem processor location.!!01488
*             This field is filled with the TIM-OFST from the TDF.    !!01489
*                                                                     !!01490
                                                                       !01491
     04 TIM-OFST                PIC 9(5).                              !01492
                                                                       !01493
*                                                                     !!01494
*             This field is not used.                                 !!01495
*                                                                     !!01496
                                                                       !01497
     04 TTL-AREA                PIC X(20).                             !01498
                                                                       !01499
END                                                                    !01500
