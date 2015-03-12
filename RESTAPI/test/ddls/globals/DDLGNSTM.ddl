!*SEQ2.08  06/02/05  DDLGNSTM6000 DDL    NV60DDL                               !
?nocomments
?page "NSTM - Inventory Standard Internal Message Format"
?section nstm-history
**********************************************************************!!00007
*                                                                    *!!00008
*                         BASE24-inventory                           *!!00009
*                         ----------------                           *!!00010
*                                                                    *!!00011
*        DDL for the Inventory Standard Internal Message Format      *!!00012
*                                                                    *!!00013
*                   Proprietary Software Product                     *!!00014
*                                                                    *!!00015
*                        ACI Worldwide Inc.                          *!!00016
*                      330 South 108th Avenue                        *!!00017
*                      Omaha, Nebraska  68154                        *!!00018
*                          (402) 390-7600                            *!!00019
*                                                                    *!!00020
*    Copyright by ACI Worldwide Inc. 2005                            *!!00021
*                                                                    *!!00022
*    All Rights Reserved.                                            *!!00023
*                                                                    *!!00024
**********************************************************************!!00025
*                                                                     !!00026
* Record of Changes:                                                  !!00027
*                                                                     !!00028
* Date        Person                                                  !!00029
* ---------   -------                                                 !!00030
* 02JUN2005   dargyj                                                  !!00031
* Symptom:    BASE24-inventory Initial Release                        !!00032
* Problem:    None.                                                   !!00033
* Fix:        Initial release.                                        !!00034
* Dependency: Restore NV60* subvolumes. Refer to BA60UD09.SCNINV for  !!00035
*             a complete listing of dependencies.                     !!00036
* Reference:  WO #041223-01                                           !!00037
********************************************************************* !!00038
?comments
*              The NSTM is created by one of the entry points into    !!00041
*              BASE24-inventory: Inventory Transaction Manager.       !!00042
*              It is zero-filled in all fields to start with; fields  !!00043
*              are loaded during transaction processing as described  !!00044
*              below.                                                 !!00045
*                                                                     !!00046
DEFINITION NSTM.                                                       !00047
                                                                       !00048
*                                                                     !!00049
*              Indicates the type of message described by the NSTM.   !!00050
*              Values are:                                            !!00051
*                                                                     !!00052
*              0200 = Inventory Transaction Request                   !!00053
*              0420 = Inventory Reversal Advice                       !!00054
*                                                                     !!00055
*              This field is set by the Inventory Transaction Manager !!00056
*              process.                                               !!00057
*                                                                     !!00058
                                                                       !00059
  02 TYP                        PIC 9(4).                              !00060
                                                                       !00061
*                                                                     !!00062
*              Indicates the BASE24 product originating this          !!00063
*              transaction.  For BASE24-inventory transactions, this  !!00064
*              field is set to 33.                                    !!00065
*                                                                     !!00066
                                                                       !00067
  02 PROD-ID                   TYPE *.                                 !00068
                                                                       !00069
*                                                                     !!00070
*              The terminal source of the transaction.                !!00071
*                                                                     !!00072
                                                                       !00073
  02 TERM-SOURCE               PIC X(2).                               !00074
                                                                       !00075
*                                                                     !!00076
*                                                                     !!00077
*                                                                     !!00078
                                                                       !00079
  02 PROC-CDE.                                                         !00080
                                                                       !00081
*                                                                     !!00082
*              The type of transaction.  The following codes are      !!00083
*              supported by BASE24-inventory.                         !!00084
*              Values are:                                            !!00085
*                                                                     !!00086
*              10 = stock purchase                                    !!00087
*                                                                     !!00088
                                                                       !00089
     04 TRAN-CDE                PIC X(2).                              !00090
                                                                       !00091
*                                                                     !!00092
*              The type of from account.  Values are:                 !!00093
*                                                                     !!00094
*              01 = Checking                                          !!00095
*              11 = Savings                                           !!00096
*              31 = Credit                                            !!00097
*                                                                     !!00098
                                                                       !00099
     04 FROM-ACCT-TYP           PIC X(2).                              !00100
                                                                       !00101
*                                                                     !!00102
*              The type of to account.  Values are: 0                 !!00103
*                                                                     !!00104
                                                                       !00105
     04 TO-ACCT-TYPE            PIC X(2).                              !00106
                                                                       !00107
*                                                                     !!00108
*              Indicates where the transaction originated.            !!00109
*                                                                     !!00110
*              This applies to request (0200) messages and            !!00111
*              reversal (0420) messages.                              !!00112
*                                                                     !!00113
                                                                       !00114
  02 ORIGINATOR                 PIC X.                                 !00115
                                                                       !00116
*                                                                     !!00117
*              Indicates where a reponse message (0210) was           !!00118
*              generated.                                             !!00119
*                                                                     !!00120
  02 RESPONDER                  PIC X.                                 !00121
                                                                       !00122
*                                                                     !!00123
*              The card issuer's logical network.                     !!00124
*                                                                     !!00125
                                                                       !00126
  02 CRD-LN                     PIC X(4).                              !00127
                                                                       !00128
*                                                                     !!00129
*              The identifier of the card-issuing institution.        !!00130
*                                                                     !!00131
                                                                       !00132
  02 CRD-FIID                   PIC X(4).                              !00133
                                                                       !00134
*                                                                     !!00135
*              The card number.                                       !!00136
*                                                                     !!00137
                                                                       !00138
  02 CRD-NUM                    PIC X(19).                             !00139
                                                                       !00140
*                                                                     !!00141
*              This field is not used.                                !!00142
*                                                                     !!00143
                                                                       !00144
  02 USER-FLD1                  PIC X(4).                              !00145
                                                                       !00146
*                                                                     !!00147
*              Identifies the logical network of the                  !!00148
*              originating terminal.                                  !!00149
*                                                                     !!00150
                                                                       !00151
  02 TERM-LN                    PIC X(4).                              !00152
                                                                       !00153
*                                                                     !!00154
*              The FIID of the financial institution owning           !!00155
*              the terminal.                                          !!00156
*                                                                     !!00157
                                                                       !00158
  02 TERM-FIID                  PIC X(4).                              !00159
                                                                       !00160
*                                                                     !!00161
*              Identifies the originating terminal.                   !!00162
*                                                                     !!00163
                                                                       !00164
  02 TERM-ID                    PIC X(16).                             !00165
                                                                       !00166
*                                                                     !!00167
*              Location of the originating terminal.                  !!00168
*                                                                     !!00169
                                                                       !00170
  02 TERM-LOCATION.                                                    !00171
                                                                       !00172
*                                                                     !!00173
*              The Owner Name of the originiating terminal.           !!00174
*                                                                     !!00175
                                                                       !00176
     04 TERM-OWNER-NAME         PIC X(22).                             !00177
                                                                       !00178
*                                                                     !!00179
*              The city of the originating terminal.                  !!00180
*                                                                     !!00181
                                                                       !00182
     04 TERM-CITY               PIC X(13).                             !00183
                                                                       !00184
*                                                                     !!00185
*              The street of the originating terminal.                !!00186
*                                                                     !!00187
                                                                       !00188
     04 TERM-ST                 PIC X(3).                              !00189
                                                                       !00190
*                                                                     !!00191
*              The country code of the originating terminal.          !!00192
*                                                                     !!00193
                                                                       !00194
     04 TERM-CNTRY-CDE          PIC X(2).                              !00195
                                                                       !00196
*                                                                     !!00197
*              The sequence number associated with this               !!00198
*              transaction.                                           !!00199
*                                                                     !!00200
                                                                       !00201
  02 SEQ-NUM                    PIC X(12).                             !00202
                                                                       !00203
*                                                                     !!00204
*              The terminal owner's routing/identification number.    !!00205
*                                                                     !!00206
                                                                       !00207
  02 ACQ-INST-ID-NUM            PIC 9(11).                             !00208
                                                                       !00209
*                                                                     !!00210
*              The card issuer's routing/identification number.       !!00211
*                                                                     !!00212
                                                                       !00213
  02 RCV-INST-ID-NUM            PIC 9(11).                             !00214
                                                                       !00215
*                                                                     !!00216
*              Forward Institution identification number.             !!00217
*                                                                     !!00218
                                                                       !00219
  02 FRWD-INST-ID-NUM           PIC 9(11).                             !00220
                                                                       !00221
*                                                                     !!00222
*              The retailer identification number.                    !!00223
*                                                                     !!00224
                                                                       !00225
  02 RETL-ID                    PIC X(19).                             !00226
                                                                       !00227
*                                                                     !!00228
*              The Track 2 data from the card initiating the          !!00229
*              transaction.  The data is used by the Authorization    !!00230
*              process.                                               !!00231
*                                                                     !!00232
                                                                       !00233
  02 TRACK2                     PIC X(40).                             !00234
                                                                       !00235
*                                                                     !!00236
*              This field is not used.                                !!00237
*                                                                     !!00238
                                                                       !00239
  02 FILLER                     PIC X.                                 !00240
                                                                       !00241
*                                                                     !!00242
*              The transaction amount.                                !!00243
*                                                                     !!00244
                                                                       !00245
  02 AMT                        TYPE BINARY 64.                        !00246
                                                                       !00247
*                                                                     !!00248
*              The Transaction Currency Code                          !!00249
*                                                                     !!00250
                                                                       !00251
  02 TRAN-CRNCY-CDE             PIC 9(3).                              !00252
                                                                       !00253
*                                                                     !!00254
*              The Transaction Date                                   !!00255
*                                                                     !!00256
                                                                       !00257
  02 TRAN-DAT                   PIC X(6).                              !00258
                                                                       !00259
*                                                                     !!00260
*              The Transaction Time                                   !!00261
*                                                                     !!00262
                                                                       !00263
  02 TRAN-TIM                   PIC X(8).                              !00264
                                                                       !00265
*                                                                     !!00266
*              The date (YYMMDD) the transaction will be settled by   !!00267
*              the interchange, if an interchange originated the      !!00268
*              transaction.  Otherwise, this field is zero-filled.    !!00269
*                                                                     !!00270
                                                                       !00271
  02 ACQ-ICHG-SETL-DAT          PIC X(6).                              !00272
                                                                       !00273
*                                                                     !!00274
*              The date (YYMMDD) the transaction will be settled by   !!00275
*              the interchange, if an interchange authorized the      !!00276
*              transaction.  Otherwise, this field is zero-filled.    !!00277
*                                                                     !!00278
                                                                       !00279
  02 ISS-ICHG-SETL-DAT          PIC X(6).                              !00280
                                                                       !00281
*                                                                     !!00282
*              The date (YYMMDD) of the NTLF to which the transaction !!00283
*              will be posted.                                        !!00284
*                                                                     !!00285
                                                                       !00286
  02 POST-DAT                   PIC X(6).                              !00287
                                                                       !00288
*                                                                     !!00289
*              The transaction reponse code.                          !!00290
*                                                                     !!00291
                                                                       !00292
  02 RESP-CDE                   PIC X(3).                              !00293
                                                                       !00294
*                                                                     !!00295
*              The Authorization Identification response code.        !!00296
*                                                                     !!00297
                                                                       !00298
  02 AUTH-ID-RESP               PIC X(6).                              !00299
                                                                       !00300
*                                                                     !!00301
*              The transaction reversal code.                         !!00302
*                                                                     !!00303
                                                                       !00304
  02 RVSL-CDE                   PIC 9(2).                              !00305
                                                                       !00306
*                                                                     !!00307
*              The point of service condition code.                   !!00308
*                                                                     !!00309
                                                                       !00310
  02 PT-SRV-COND-CODE           PIC 9(2).                              !00311
                                                                       !00312
*                                                                     !!00313
*              The point of service entry mode.                       !!00314
*                                                                     !!00315
                                                                       !00316
  02 PT-SRV-ENTRY-MDE           PIC 9(3).                              !00317
                                                                       !00318
*                                                                     !!00319
*              Indicates whether the authorization process            !!00320
*              requires a completion message.                         !!00321
*                                                                     !!00322
                                                                       !00323
  02 COMPL-REQ                  PIC X.                                 !00324
                                                                       !00325
*                                                                     !!00326
*                                                                     !!00327
*                                                                     !!00328
                                                                       !00329
  02 HOST-TRACE-NUM             PIC 9(6).                              !00330
                                                                       !00331
*                                                                     !!00332
*              The timestamp indicating when the transaction entered  !!00333
*              the BASE24 system for the first time.  This is set by  !!00334
*              the Device Handler, Interchange Interface, or Host     !!00335
*              Interface process.                                     !!00336
*                                                                     !!00337
*              The Device Handler process loads the timestamp when    !!00338
*              the STM is initialized. The Interchange Interface or   !!00339
*              Host Interface process loads this field when the       !!00340
*              transaction originates from the DPC or Interchange.    !!00341
*                                                                     !!00342
                                                                       !00343
  02 ENTRY-TIM             TYPE BINARY 64.                             !00344
                                                                       !00345
*                                                                     !!00346
*              The timestamp, expressed in Greenwich Mean Time,       !!00347
*              indicating when the transaction exited the BASE24      !!00348
*              system for authorization, either through the Host      !!00349
*              Interface or Interchange Interface process.            !!00350
*                                                                     !!00351
                                                                       !00352
  02 EXIT-TIM              TYPE BINARY 64.                             !00353
                                                                       !00354
*                                                                     !!00355
*              The timestamp, expressed in Greenwich Mean Time,       !!00356
*              indicating when the response to a transaction request  !!00357
*              to an Interchange or a DPC reentered the BASE24 system !!00358
*                                                                     !!00359
                                                                       !00360
  02 RE-ENTRY-TIM          TYPE BINARY 64.                             !00361
                                                                       !00362
*                                                                     !!00363
*              Original transaction data.                             !!00364
*                                                                     !!00365
                                                                       !00366
  02 ORIG-DATA.                                                        !00367
                                                                       !00368
*                                                                     !!00369
*        The message type.                                            !!00370
*                                                                     !!00371
                                                                       !00372
     04 MSG-TYP            PIC X(4).                                   !00373
                                                                       !00374
*                                                                     !!00375
*        The transaction time.                                        !!00376
*                                                                     !!00377
                                                                       !00378
     04 TRN-TIM            PIC X(8).                                   !00379
                                                                       !00380
*                                                                     !!00381
*        The transaction date.                                        !!00382
*                                                                     !!00383
                                                                       !00384
     04 TRN-DAT            PIC X(4).                                   !00385
                                                                       !00386
*                                                                     !!00387
*        The transacton sequence number                               !!00388
*                                                                     !!00389
                                                                       !00390
     04 TRN-SEQ-NUM        PIC X(12).                                  !00391
                                                                       !00392
*                                                                     !!00393
*        The BASE24 posting date.                                     !!00394
*                                                                     !!00395
                                                                       !00396
     04 B24-POST-DAT       PIC X(4).                                   !00397
                                                                       !00398
                                                                       !00399
END                                                                    !00400
