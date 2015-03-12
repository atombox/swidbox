!*SEQ0.04  11/01/00  DDLGPEM 6000 DDL    AT60DDL    04000                      !
!*SYNC.04  12/09/98  DDLGPEM 5300 DDL    AT53DDL    04000                      !
!*SYNC.03  08/28/98  DDLGPEM 5300 DDL    AT53DDL    03000                      !
!*SYNC.03  08/21/97  DDLGPEM 5100 DDL    AT51DDL    03000                      !
!*SYNC.02  06/28/96  DDLGPEM 5100 DDL    AT51DDL    02000                      !
!*SEQ2.00  01/25/93  DDLGPEM 5100 DDL    AT51DDL                               !
?PAGE "PEM - Print Statement External Message Format"
?SECTION PEM
**********************************************************************!!00005
*                         History Section                            *!!00006
* 09Jul90   J. Samson                                                *!!00007
* SYMPTOM:  None.                                                    *!!00008
* PROBLEM:  (E) None.                                                *!!00009
* FIX:  An enhancement was made to BASE24-atm Device Handlers to     *!!00010
*       support Statement Print Data Compression.  The purpose of    *!!00011
*       this enhancement is to reduce the amount of data passed      *!!00012
*       between BASE24 and the Host during Statement Print trans-    *!!00013
*       actions.  Two fields are added to the existing message       *!!00014
*       format.  These fields will use the first 4 bytes of USER-FLD *!!00015
*       in the STATEMENTS structure of the PEM.                      *!!00016
* DEPENDENCIES: Re-ddl.                                              *!!00017
* REFERENCE: RPE #R900309-8                                          *!!00018
**********************************************************************!!00019
                                                                       !00020
*              PRINT STATEMENT EXTERNAL MESSAGE                       !!00021
*                                                                     !!00022
*  This STRUCT definition represents the standard external message    !!00023
*  passed between BASE24 and a host DPC.                              !!00024
                                                                       !00025
DEFINITION PEM.                                                        !00026
                                                                       !00027
*                Routing Data.                                        !!00028
                                                                       !00029
  02 ROUTE.                                                            !00030
                                                                       !00031
*                This field is used to indicate the status of a       !!00032
*                message at the system level.  If 0, the response code!!00033
*                field is used to determine the disposition of the    !!00034
*                message.  This field will be set by the Host         !!00035
*                Interface and used by AUTH.  Valid codes follow.     !!00036
*                                                                     !!00037
*                    "00" = no error                                  !!00038
*                    "11" = destination not available                 !!00039
*                    "12" = line down                                 !!00040
*                    "20" = originator not available                  !!00041
*                    "21" = unknown message type                      !!00042
*                    "22" = unknown card number                       !!00043
                                                                       !00044
     03 STAT                   PIC 9(2).                               !00045
                                                                       !00046
*                The field PATH was broken down so that "ORIGI-TYPE"  !!00047
*                was defined.                                         !!00048
                                                                       !00049
     03 PATH.                                                          !00050
                                                                       !00051
*               This field will indicate what product to send this    !!00052
*               message to.                                           !!00053
                                                                       !00054
        05 PRODUCT-IND         PIC X(2).                               !00055
                                                                       !00056
*           This field carries the release number of the host         !!00057
*           destination DPC.                                          !!00058
                                                                       !00059
        05 RELEASE-NUM         PIC X(2).                               !00060
                                                                       !00061
*           This field carries the DPC location number used for       !!00062
*           authorization routing to a specific host.                 !!00063
                                                                       !00064
        05 DPC-NUMBER          PIC 9(4).                               !00065
                                                                       !00066
        05 FILLER              PIC X(4).                               !00067
        05 ORIGI-TYPE          PIC X.                                  !00068
        05 FILLER              PIC X(09).                              !00069
                                                                       !00070
*                ANSI X9.2:  Data Element number 1.                   !!00071
*                                                                     !!00072
*                This field contains the specific message type.       !!00073
*                Valid codes follow.                                  !!00074
*                                                                     !!00075
*                    "0205" = request - Device Handler Modules        !!00076
*                    "0215" = response - AUTH Module                  !!00077
                                                                       !00078
  02 TYP                       PIC 9(4).                               !00079
                                                                       !00080
*               ANSI X9.2:  Data Element number 2.                    !!00081
*                                                                     !!00082
*               This field starts out as 64 bits of information, where!!00083
*               each bit signifies the absence or presence ( binary 0 !!00084
*               or 1 , respectively ) of a data element in the        !!00085
*               message.  Since transparent data transmission is not  !!00086
*               supported, the field is converted to display format   !!00087
*               by doing a "hexout", i.e., each four bits of          !!00088
*               information is converted to the display form of a     !!00089
*               hex digit (64/4 = 16).                                !!00090
                                                                       !00091
  02 BYTE-MAP                  PIC X(16).                              !00092
  02 CARD-ACCT.                                                        !00093
                                                                       !00094
*               ANSI X9.2:  Data Element number 3, Bit Map position 1.!!00095
*                                                                     !!00096
*               Length of account number field, right justified       !!00097
                                                                       !00098
     03 LEN                    PIC 9(2).                               !00099
                                                                       !00100
*               ANSI X9.2:  Data Element number 4.                    !!00101
*                                                                     !!00102
*               Account number                                        !!00103
                                                                       !00104
     03 NUM                    PIC X(19).                              !00105
                                                                       !00106
  02 TRAN-CDE.                                                         !00107
*               ANSI X9.2:  Data Element number 5, Bit Map position 2.!!00108
*               Where TYP is part A, or processing code,              !!00109
*                     FROM-ACCT-TYP (part B) is the primary account type
*                     TO-ACCT-TYP (part C) is the secondary account type
*                                                                     !!00114
*               Type of transaction                                   !!00115
     03 TYP                    PIC X(2).                               !00116
*               "From" account                                        !!00117
     03 FROM-ACCT-TYP          PIC X(2).                               !00118
                                                                       !00119
*                Not used, zero filled.                               !!00120
     03 TO-ACCT-TYP            PIC X(2).                               !00121
                                                                       !00122
*               ANSI X9.2:  Data Element number 9, Bit Map position 6.!!00123
*                                                                     !!00124
*                Host sequence number                                 !!00125
                                                                       !00126
  02 TRACE-NO                  PIC 9(6).                               !00127
                                                                       !00128
*               ANSI X9.2:  Data Element number 10, Bit Map position 7.
*                                                                     !!00131
*                This field reflects the date this transaction began  !!00132
*                (month and day only).                                !!00133
                                                                       !00134
  02 TRAN-DAT                  PIC X(4).                               !00135
                                                                       !00136
*               ANSI X9.2:  Data Element number 11, Bit Map position 8.
*                                                                     !!00139
*                BASE24 settlement date for this transaction          !!00140
                                                                       !00141
  02 POST-DAT                  PIC X(4).                               !00142
                                                                       !00143
*               ANSI X9.2:  Data Element number 12, Bit Map position 9.
*                                                                     !!00146
*                Date forwarded to Host                               !!00147
                                                                       !00148
  02 TRANSMISSION-DAT          PIC X(4).                               !00149
                                                                       !00150
*               ANSI X9.2:  Data Element number 13, Bit Map position 10.
*                                                                     !!00153
*                Time transaction began                               !!00154
                                                                       !00155
  02 TRAN-TIM.                                                         !00156
     04  HH                    PIC 99.                                 !00157
     04  MINUTE                PIC 99.                                 !00158
     04  SS                    PIC 99.                                 !00159
                                                                       !00160
*               ANSI X9.2:  Data Element number 16, Bit Map position 13.
*                                                                     !!00163
*                This field contains the routing/transit number from  !!00164
*                the TDF.                                             !!00165
                                                                       !00166
  02 RTTN                      PIC 9(10).                              !00167
                                                                       !00168
*               ANSI X9.2:  Data Element number 17, Bit Map position 14.
*                                                                     !!00171
*                Card Issuer Routing or Identification Number.  (See  !!00172
*                field ROUTING-NUMBER of IDF.)                        !!00173
                                                                       !00174
  02 ISSUER-ROUTING-NUMBER     PIC 9(10).                              !00175
                                                                       !00176
*               ANSI X9.2:  Data Element number 36, Bit Map position 33.
*                                                                     !!00179
*                This field contains a 3-digit code in the following  !!00180
*                format.                                              !!00181
*                (AU)                                                 !!00182
*                                                                     !!00183
*                    "crr", where                                     !!00184
*                        c = card disposition                         !!00185
*                            0, 5 => return the card                  !!00186
*                            1, 6 => retain the card                  !!00187
*                       rr = reason code                              !!00188
*                            > 09 => request has been denied          !!00189
                                                                       !00190
  02 RESP-CDE-R                PIC X(8).                               !00191
  02 RESP-CDE REDEFINES RESP-CDE-R.                                    !00192
     04 FILLER                 PIC X(5).                               !00193
     04 RESP                   PIC X(3).                               !00194
                                                                       !00195
                                                                       !00196
*               ANSI X9.2:  Data Element number 38, Bit Map position 35.
*                                                                     !!00199
*                This field is initialized from the TDF and contains  !!00200
*                the ATM location city and state.                     !!00201
                                                                       !00202
  02 TERM-CITY-ST              PIC X(15).                              !00203
                                                                       !00204
*               ANSI X9.2:  Data Element number 42, Bit Map position 39.
*                                                                     !!00207
  02 PIN                       PIC X(16).                              !00208
                                                                       !00209
*               ANSI X9.2:  Data Element number 53, Bit Map position 50.
*                                                                     !!00212
*                This field contains the number of the "from" account !!00213
*                of a transaction.  If no "from" account is needed or !!00214
*                known, it is set to zero by the Device Handler.  In  !!00215
*                the case of primary accounts, it is set by AUTH.     !!00216
                                                                       !00217
  02 FROM-ACCT.                                                        !00218
     04 LTH                    PIC X(2).                               !00219
     04 NUM                    PIC X(19).                              !00220
                                                                       !00221
                                                                       !00222
*               ANSI X9.2:  Data Element number 56, Bit Map position 53.
*                                                                     !!00225
  02 TERM.                                                             !00226
                                                                       !00227
*                This field contains the terminal owner id from the   !!00228
*                TDF record for this ATM.                             !!00229
                                                                       !00230
     04 OWNER                  PIC X(4).                               !00231
                                                                       !00232
*                This field describes point of transaction origination.
                                                                       !00235
     04 TERM-NAME-LOC          PIC X(25).                              !00236
                                                                       !00237
*                The name of the financial institution which owns     !!00238
*                the terminal.                                        !!00239
                                                                       !00240
     04 TERM-OWNER-NAME        PIC X(25).                              !00241
                                                                       !00242
*                This field contains the ATM ID name from the TDF.    !!00243
                                                                       !00244
     04 ATM-ID                 PIC X(16).                              !00245
                                                                       !00246
*                This field contains the ATM branch number from the   !!00247
*                TDF.                                                 !!00248
                                                                       !00249
     04 BRANCH-ID              PIC X(4).                               !00250
                                                                       !00251
*                This field contains the ATM region number from the   !!00252
*                TDF.                                                 !!00253
                                                                       !00254
     04 REGION-ID              PIC X(4).                               !00255
                                                                       !00256
*                This field contains the sequence number associated   !!00257
*                with this transaction by the ATM.                    !!00258
                                                                       !00259
     04 REC-NUM                PIC 9(6).                               !00260
                                                                       !00261
*                This field contains the ATM type from the TDF.       !!00262
                                                                       !00263
     04 TYP                    PIC 99.                                 !00264
                                                                       !00265
*                This field contains the time difference between the  !!00266
*                transaction-initiating terminal and the Tandem       !!00267
*                processor location. It is the signed number of       !!00268
*                minutes to be added to the BASE24 Tandem system time !!00269
*                in order to obtain the terminal local time.          !!00270
                                                                       !00271
     04 TIM-OFST                PIC S999.                              !00272
                                                                       !00273
*               ANSI X9.2:  Data Element number 57, Bit Map position 54.
*                                                                     !!00276
  02 CARD.                                                             !00277
*                Length of card issuer FI-ID.                         !!00278
                                                                       !00279
     04 FIID-LEN               PIC 99.                                 !00280
                                                                       !00281
*                This field reflects the FI-ID of the card issuer.    !!00282
                                                                       !00283
     04 CARD-FIID              PIC X(4).                               !00284
                                                                       !00285
*                Pin offset for pin.                                  !!00286
                                                                       !00287
     04 PIN-OFST               PIC X(16).                              !00288
                                                                       !00289
*               ANSI X9.2:  Data Element number 58, Bit Map position 55.
*                                                                     !!00292
  02 MISC.                                                             !00293
                                                                       !00294
*                This field reflects the date this transaction will be!!00295
*                settled by the interchange, if there was an inter-   !!00296
*                change (e.g. CIRRUS, PLUS) involved in processing    !!00297
*                this transaction.                                    !!00298
                                                                       !00299
     04 ICHG-SETT-DAT          PIC X(4).                               !00300
                                                                       !00301
  02 TRACK2.                                                           !00302
*               ANSI X9.2:  Data Element number 67, Bit Map position 62.
*                                                                     !!00305
*                Length of Track 2 data                               !!00306
     03 LEN                    PIC 99.                                 !00307
*               ANSI X9.2:  Data Element number 68.                   !!00308
*                                                                     !!00309
*                Actual Track 2 data                                  !!00310
     03 T2DATA                 PIC X(37).                              !00311
                                                                       !00312
*   Statements contain up to 9 lines of information per page          !!00313
*   request coming from the Host.                                     !!00314
                                                                       !00315
  02 STATEMENTS.                                                       !00316
                                                                       !00317
*   Page-indicator contains the current page number of item requests  !!00318
*   if numeric, the last page of statements if "LP", or the summary   !!00319
*   page if "SP". A "1P" indicates the account(s) fill only one       !!00320
*   page.  This will notify Auth to log this transaction.             !!00321
                                                                       !00322
     04 PAGE-INDICATOR         PIC X(2).                               !00323
                                                                       !00324
*   Last-Statement-Date is Host filled and represents how far back    !!00325
*   these statements go.                                              !!00326
                                                                       !00327
     04 LAST-STATEMENT-DATE.                                           !00328
                                                                       !00329
        06  YY                 PIC X(2).                               !00330
                                                                       !00331
        06  MM                 PIC X(2).                               !00332
                                                                       !00333
        06  DD                 PIC X(2).                               !00334
                                                                       !00335
*   Header-lines will contain the number of lines in the header as    !!00336
*   defined and sent by the Host.                                     !!00337
                                                                       !00338
     04 HEADER-LINES           PIC X(2).                               !00339
                                                                       !00340
*   Column-lines will contain the number of characters per line as    !!00341
*   defined and sent by the Host.                                     !!00342
                                                                       !00343
     04 COLUMN-LINES           PIC X(2).                               !00344
                                                                       !00345
*   Stmt-field will contain the actual statement lines as sent by the !!00346
*   Host.  Header information will also be contained here.  The Device!!00347
*   Handler will use the HEADER-LINES and COLUMN-LINES fields to de-  !!00348
*   termine how to format the statements.                             !!00349
                                                                       !00350
     04 STMT-FIELD             PIC X(360).                             !00351
                                                                       !00352
                                                                       !00353
*           The Format field will indicate to the Host what           !!00354
*           format the Device Handler supports for Statement Print    !!00355
*           transactions.  Valid values are:                          !!00356
*                                                                     !!00357
*             "0" - Columnar Format (default)                         !!00358
*             "1" - BASE24-atm Data Compression Format                !!00359
                                                                       !00360
     04 FRMT                   PIC X.                                  !00361
                                                                       !00362
*           The Printer Size field will indicate to the Host what     !!00363
*           size of printer is supported at the Device Handler.       !!00364
*           If the Device Handler does not support Data               !!00365
*           Compression then this field will be zeroes.               !!00366
                                                                       !00367
     04 PRNT-SIZ               PIC X(3).                               !00368
                                                                       !00369
                                                                       !00370
*   Filler reserved for future use by Host.                           !!00371
                                                                       !00372
                                                                       !00373
     04 USER-FIELD             PIC X(8).                               !00374
                                                                       !00375
                                                                       !00376
                                                                       !00377
                                                                       !00378
END                                                                    !00379
