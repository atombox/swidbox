!*SEQ0.04  11/01/00  DDLGHLTH6000 DDL    BA60DDL    04000                      !
!*SYNC.04  12/09/98  DDLGHLTH5300 DDL    BA53DDL    04000                      !
!*SYNC.03  08/28/98  DDLGHLTH5300 DDL    BA53DDL    03000                      !
!*SYNC.03  08/22/97  DDLGHLTH5100 DDL    BA51DDL    03000                      !
!*SYNC.02  06/25/96  DDLGHLTH5100 DDL    BA51DDL    02000                      !
!*SEQ2.00  10/20/92  DDLGHLTH5100 DDL    BA51DDL                               !
!  2/25/87     3.4     Kueffner!                                       !
!  SYMPTOM:  None.  Modified the SI^PCS^RESP to include performance!   !
!     data now kept in release 4.0 compatable switches.!               !
!  PROBLEM:  No problem as such, this is an enhancement for pcs 3.4.!  !
!  FIX:  None.!                                                        !
!  IMPLEMENTATION DEPENDENCIES:  Requires PCS 3.4 Network module.!     !
!  REFERENCE:  None.!                                                  !
!!                                                                     !
?PAGE "                                           HI-PCS-RQST"
?SECTION HI-PCS-RQST
                                                                       !00021
                                                                       !00022
*                                                                     !!00023
*  HI-PCS-RQST defines the format of the DPC Health request           !!00024
*  message sent from the Health Server to the Host Interface.         !!00025
*                                                                     !!00026
                                                                       !00027
DEFINITION HI-PCS-RQST.                                                !00028
                                                                       !00029
*                                                                     !!00030
*   Field should contain "PCSHEALTH".                                 !!00031
*                                                                     !!00032
    02 CMD                     PIC X(9).                               !00033
                                                                       !00034
*                                                                     !!00035
*   Field specifies the DPC number.                                   !!00036
*                                                                     !!00037
                                                                       !00038
    02 DPC-NUM                  PIC 9(4).                              !00039
                                                                       !00040
    END                                                                !00041
?PAGE "                                           HI-PCS-RESP"
?SECTION HI-PCS-RESP
                                                                       !00046
DEF HI-PCS-RESP.                                                       !00047
                                                                       !00048
*            Field specifies the Host Interface process name the      !!00049
*            request was sent to.                                     !!00050
                                                                       !00051
  02 PRO-NAME                    PIC X(16).                            !00052
                                                                       !00053
  02 DPC.                                                              !00054
                                                                       !00055
*            Field specifies the number of the DPC the performance    !!00056
*            data reflects.                                           !!00057
                                                                       !00058
     04 NUM                      PIC X(4).                             !00059
                                                                       !00060
*            Field specifies the DPC LINK STATUS:                     !!00061
*                VALID VALUES                                         !!00062
*                    "LO" - LOGOFF                                    !!00063
*                    "DN" - DOWN                                      !!00064
*                    "UP" - UP/LOGON                                  !!00065
*                    "SF" - SAF                                       !!00066
*                    "EX" - EXTRACT IN PROGRESS                       !!00067
                                                                       !00068
     04 LINK                     PIC X(2).                             !00069
                                                                       !00070
*            Field specifies if a SAF ack is pending for the DPC.     !!00071
*               VALID VALUES                                          !!00072
*                    "N"     DPC[x].CURRENT.NBR^SAF^PENDING = 0       !!00073
*                    "Y"     DPC[x].CURRENT.NBR^SAF^PENDING > 0       !!00074
                                                                       !00075
     04 SAF-PENDING              PIC X.                                !00076
                                                                       !00077
     04 FILLER                   PIC X.                                !00078
                                                                       !00079
*            Field specifies the percent of outstanding requests      !!00080
                                                                       !00081
     04 PERCENT-OUT              TYPE BINARY 16.                       !00082
                                                                       !00083
*            Field specifies the number of SAF records                !!00084
                                                                       !00085
     04 SAF-CNT                  TYPE BINARY 16.                       !00086
                                                                       !00087
*            Field specifies the duration of the performance periods  !!00088
*            in minutes.                                              !!00089
                                                                       !00090
     04 PERIOD-DUR               TYPE BINARY 16.                       !00091
                                                                       !00092
*            Field specifies the request time limit in seconds.       !!00093
                                                                       !00094
     04 RQST-LMT                 TYPE BINARY 32.                       !00095
                                                                       !00096
*            PERIOD[0]   reflects the current period being processed  !!00097
*            PERIOD[1-2] reflect the two previous periods             !!00098
                                                                       !00099
     04 PERIOD                   OCCURS 3 TIMES.                       !00100
                                                                       !00101
*            Field specifies the total number of completed requests   !!00102
*            for the period.                                          !!00103
                                                                       !00104
        06 NUM-RQSTS             TYPE BINARY 16.                       !00105
                                                                       !00106
*            Field specifies the percent of requests which were timed !!00107
*            out.                                                     !!00108
                                                                       !00109
        06 PERCENT-TIMED-OUT     TYPE BINARY 16.                       !00110
                                                                       !00111
*            Field specifies the average response time for the DPC    !!00112
*            in seconds.  A timeout is assumed to have a response time!!00113
*            equal to the value in the request time limit field.      !!00114
                                                                       !00115
         06 AVG-RESP-TIME        TYPE BINARY 16.                       !00116
                                                                       !00117
*            Unused station table entries should be blank filled.     !!00118
                                                                       !00119
      04 STA-TBL                 OCCURS 32 TIMES.                      !00120
                                                                       !00121
*            Field specifies the symbolic name of the station         !!00122
                                                                       !00123
                                                                       !00124
         06 NAME                 PIC X(16).                            !00125
                                                                       !00126
*            Field specifies the station status                       !!00127
*               VALID VALUES    PATHWAY VALUES                        !!00128
*                   " "              "    "                           !!00129
*                   "0"              "DOWN"                           !!00130
*                   "1"              "UP  "                           !!00131
*                   "2"              "RESP"                           !!00132
*                   "3"              "LOG "                           !!00133
*                   "4"              "ACK "                           !!00134
                                                                       !00135
         06 STAT                 PIC X.                                !00136
                                                                       !00137
  END.                                                                 !00138
?PAGE "                                           SI-PCS-RQST"
?SECTION SI-PCS-RQST
*                                                                     !!00143
*  SI-PCS-RQST defines the format of the Switch Health request        !!00144
*  message sent from the Health Server to a Switch Interface.         !!00145
*                                                                     !!00146
                                                                       !00147
DEFINITION SI-PCS-RQST.                                                !00148
                                                                       !00149
*                                                                     !!00150
*   Field should contain "PCSHEALTH".                                 !!00151
*                                                                     !!00152
    02 CMD                     PIC X(9).                               !00153
                                                                       !00154
    END                                                                !00155
                                                                       !00156
?PAGE "                                           SI-PCS-RESP"
?SECTION SI-PCS-RESP
                                                                       !00161
DEF SI-PCS-RESP.                                                       !00162
                                                                       !00163
*            Field specifies the Switch Interface process name the    !!00164
                                                                       !00165
*            request was sent to.  From NET.MYNAME:  Symbolic name.   !!00166
                                                                       !00167
                                                                       !00168
                                                                       !00169
                                                                       !00170
  02 PRO-NAME                    PIC X(16).                            !00171
                                                                       !00172
                                                                       !00173
*            Switch station table.  Most switches have only two       !!00174
*            stations, however BIC can support four.                  !!00175
                                                                       !00176
                                                                       !00177
  02 STA-TBL                     OCCURS 4 TIMES.                       !00178
                                                                       !00179
                                                                       !00180
*            NAME is from PCT.STATION.NAME.  It is the switch         !!00181
*            processes station name(s).                               !!00182
                                                                       !00183
                                                                       !00184
     04 NAME                     PIC X(16).                            !00185
                                                                       !00186
*            Field specifies if the LINK is up:                       !!00187
*                  VALID VALUE     PATHWAY VALUE                      !!00188
*                       0              "N"                            !!00189
*                      -1              "Y"                            !!00190
                                                                       !00191
      04 LINK-UP.                                                      !00192
                                                                       !00193
                                                                       !00194
*            LINK-UP.ACQ is from PCT.STATION.UP.                      !!00195
                                                                       !00196
                                                                       !00197
         06  ACQ                 TYPE  BINARY 16.                      !00198
                                                                       !00199
                                                                       !00200
*            LINK-UP.ISS is from PCT.STATION.UP.                      !!00201
                                                                       !00202
                                                                       !00203
         06  ISS                 TYPE  BINARY 16.                      !00204
                                                                       !00205
*            Field specifies if logged on to the switch:              !!00206
*                  VALID VALUE     PATHWAY VALUE                      !!00207
*                       0              "N"                            !!00208
*                      -1              "Y"                            !!00209
                                                                       !00210
      04 LOGON.                                                        !00211
                                                                       !00212
                                                                       !00213
*            LOGON.ACQ is from PCT.STATION.LOGON.                     !!00214
                                                                       !00215
                                                                       !00216
         06  ACQ                 TYPE  BINARY 16.                      !00217
                                                                       !00218
                                                                       !00219
*            LOGON.ISS is from PCT.STATION.LOGON.                     !!00220
                                                                       !00221
                                                                       !00222
         06  ISS                 TYPE  BINARY 16.                      !00223
                                                                       !00224
                                                                       !00225
*            TRAFFIC-FLAG is from PCT.STATION.TRAFFIC.                !!00226
                                                                       !00227
*            Field specifies if there has been traffic since the      !!00228
*            last network management message:                         !!00229
*                  VALID VALUE     PATHWAY VALUE                      !!00230
*                       0              "N"                            !!00231
*                      -1              "Y"                            !!00232
                                                                       !00233
      04 TRAFFIC-FLG             TYPE BINARY 16.                       !00234
                                                                       !00235
*            Field specifies the current and maximum number of        !!00236
*            consecutive timeouts.                                    !!00237
                                                                       !00238
      04 TIMEOUTS.                                                     !00239
                                                                       !00240
                                                                       !00241
*            TIMEOUTS.CUR is from PCT.STATION.TIMEOUT^CTR.            !!00242
                                                                       !00243
                                                                       !00244
          06 CUR              TYPE BINARY 16.                          !00245
                                                                       !00246
                                                                       !00247
*            TIMEOUTS.MAX is from PCT.STATION.TIMEOUT^MAX.            !!00248
                                                                       !00249
                                                                       !00250
          06 MAX              TYPE BINARY 16.                          !00251
                                                                       !00252
*            Field specifies the current and maximum number of        !!00253
*            outstanding requests.                                    !!00254
                                                                       !00255
  02 RQST-OUT.                                                         !00256
                                                                       !00257
                                                                       !00258
*            RQST-OUT.CUR is PCT.RQST.OUT^CTR + PCT.RQST.IN^CTR.      !!00259
                                                                       !00260
                                                                       !00261
     04 CUR                   TYPE BINARY 16.                          !00262
                                                                       !00263
                                                                       !00264
*            RQST-OUT.MAX is PCT.RQST.OUT^MAX + PCT.RQST.IN^MAX.      !!00265
                                                                       !00266
                                                                       !00267
     04 MAX                   TYPE BINARY 16.                          !00268
                                                                       !00269
                                                                       !00270
*            ILF-PERCENT is from PCS.ILF.PERCENT.                     !!00271
                                                                       !00272
*            Field specifies the percent that the ILF is full.        !!00273
                                                                       !00274
  02 ILF-PERCENT              TYPE BINARY 16.                          !00275
                                                                       !00276
                                                                       !00277
                                                                       !00278
*            ILF-PERCENT is from PCS.SAF.PERCENT.                     !!00279
                                                                       !00280
*           Field specifies the percent that the ISAF is full.        !!00281
                                                                       !00282
  02 ISAF-PERCENT             TYPE BINARY 16.                          !00283
                                                                       !00284
*            Field specifies the current and maximum number of        !!00285
*            active timers.                                           !!00286
                                                                       !00287
  02 TIMERS.                                                           !00288
                                                                       !00289
                                                                       !00290
*            TIMERS.CUR is from TCB^G.TIMER^DEPTH.                    !!00291
                                                                       !00292
                                                                       !00293
     04 CUR                   TYPE BINARY 16.                          !00294
                                                                       !00295
                                                                       !00296
*            TIMERS.CUR is from NUM^OF^TIMERS^L.                      !!00297
                                                                       !00298
                                                                       !00299
     04 MAX                   TYPE BINARY 16.                          !00300
                                                                       !00301
                                                                       !00302
*           SAF-PENDING is from PCT.SAF.IN^PROGRESS.                  !!00303
                                                                       !00304
*           Field specifies if a SAF ack is pending.                  !!00305
*               VALID VALUES     PATHWAY VALUES                       !!00306
*                    0               "N"                              !!00307
*                   -1               "Y"                              !!00308
                                                                       !00309
  02 SAF-PENDING              TYPE BINARY 16.                          !00310
                                                                       !00311
                                                                       !00312
*           MM-IN-PERF is from PCT.TIMERS.PERF.  It is the performance!!00313
*           interval (minutes) expressed in double integer format.    !!00314
                                                                       !00315
  02 MM-IN-PERF               TYPE BINARY 32.                          !00316
                                                                       !00317
*           The following block contains ATM performance data.        !!00318
                                                                       !00319
  02 ATM-PERF.                                                         !00320
                                                                       !00321
*           PRESENT is from PCT.ATM.PRESENT.  It indicates whether    !!00322
*           the switch is maintaining ATM performance data.           !!00323
*               VALID VALUES     PATHWAY VALUES                       !!00324
*                    0               "N"    -  Data will be zeros.    !!00325
*                   -1               "Y"                              !!00326
                                                                       !00327
     04 PRESENT               TYPE BINARY 16.                          !00328
                                                                       !00329
*           OUT-RQST-LMT is from PCT.ATM.TIMERS.OUTBOUND.  It is the  !!00330
*           outbound request time limit (seconds) represented in      !!00331
*           double integer format.                                    !!00332
                                                                       !00333
     04 OUT-RQST-LMT          TYPE BINARY 32.                          !00334
                                                                       !00335
*           IN-RQST-LMT is from PCT.ATM.TIMERS.INBOUND.  It is the    !!00336
*           inbound request time limit (seconds) represented in       !!00337
*           double integer format.                                    !!00338
                                                                       !00339
     04 IN-RQST-LMT           TYPE BINARY 32.                          !00340
                                                                       !00341
*           ATM performance data.  A maximum of five periods are      !!00342
*           maintained, current and four previous periods.  Bin zero  !!00343
*           is the current period, bin 1 is the previous period, bin  !!00344
*           2 is the period prior to bin 1, etc.                      !!00345
                                                                       !00346
     04 PERF                  OCCURS 5 TIMES.                          !00347
                                                                       !00348
*           ATM outbound request performance data.                    !!00349
                                                                       !00350
        06 OUT-RQST.                                                   !00351
                                                                       !00352
*          OUT-RQST.CNT is from PCT.ATM.PERF.OUT-RQST.COUNT.  It      !!00353
*          the total number of outbound requests per period.          !!00354
                                                                       !00355
           08 CNT             TYPE BINARY 32.                          !00356
                                                                       !00357
*          OUT-RQST.TIMEOUTS is PCT.ATM.PERF.OUT-RQST.TIMEOUTS.       !!00358
*          It's the total number of outbound requests which timed out !!00359
*          per period.                                                !!00360
                                                                       !00361
           08 TIMEOUTS        TYPE BINARY 32.                          !00362
                                                                       !00363
*          OUT-RQST.TTL-TIME is PCT.ATM.PERF.OUT-RQST.TTL-TIME.       !!00364
*          It represents the total time which the switch waited for   !!00365
*          outbound requests to be returned:  For requests which      !!00366
*          did not timeout, the response time.  For requests which    !!00367
*          timed out, the outbound request limit.                     !!00368
                                                                       !00369
           08 TTL-TIME        TYPE BINARY 64.                          !00370
                                                                       !00371
*           ATM inbound request performance data.                     !!00372
                                                                       !00373
        06 IN-RQST.                                                    !00374
                                                                       !00375
*          IN-RQST.CNT is from PCT.ATM.PERF.IN-RQST.COUNT.  It        !!00376
*          the total number of outbound requests per period.          !!00377
                                                                       !00378
           08 CNT             TYPE BINARY 32.                          !00379
                                                                       !00380
*          IN-RQST.TIMEOUTS is PCT.ATM.PERF.IN-RQST.TIMEOUTS.         !!00381
*          It's the total number of outbound requests which timed out !!00382
*          per period.                                                !!00383
                                                                       !00384
           08 TIMEOUTS        TYPE BINARY 32.                          !00385
                                                                       !00386
*          IN-RQST.TTL-TIME is PCT.ATM.PERF.IN-RQST.TTL-TIME.         !!00387
*          It represents the total time which the switch waited for   !!00388
*          outbound requests to be returned:  For requests which      !!00389
*          did not timeout, the response time.  For requests which    !!00390
*          timed out, the outbound request limit.                     !!00391
                                                                       !00392
           08 TTL-TIME        TYPE BINARY 64.                          !00393
                                                                       !00394
*           The following block contains POS performance data.        !!00395
                                                                       !00396
  02 POS-PERF.                                                         !00397
                                                                       !00398
*           PRESENT is from PCT.POS.PRESENT.  It indicates whether    !!00399
*           the switch is maintaining POS performance data.           !!00400
*               VALID VALUES     PATHWAY VALUES                       !!00401
*                    0               "N"    -  Data will be zeros.    !!00402
*                   -1               "Y"                              !!00403
                                                                       !00404
     04 PRESENT               TYPE BINARY 16.                          !00405
                                                                       !00406
*           OUT-RQST-LMT is from PCT.POS.TIMERS.OUTBOUND.  It is the  !!00407
*           outbound request time limit (seconds) represented in      !!00408
*           double integer format.                                    !!00409
                                                                       !00410
     04 OUT-RQST-LMT          TYPE BINARY 32.                          !00411
                                                                       !00412
*           IN-RQST-LMT is from PCT.POS.TIMERS.INBOUND.  It is the    !!00413
*           inbound request time limit (seconds) represented in       !!00414
*           double integer format.                                    !!00415
                                                                       !00416
     04 IN-RQST-LMT           TYPE BINARY 32.                          !00417
                                                                       !00418
*           POS performance data.  A maximum of five periods are      !!00419
*           maintained, current and four previous periods.  Bin zero  !!00420
*           is the current period, bin 1 is the previous period, bin  !!00421
*           2 is the period prior to bin 1, etc.                      !!00422
                                                                       !00423
     04 PERF                  OCCURS 5 TIMES.                          !00424
                                                                       !00425
*           POS outbound request performance data.                    !!00426
                                                                       !00427
        06 OUT-RQST.                                                   !00428
                                                                       !00429
*          OUT-RQST.CNT is from PCT.POS.PERF.OUT-RQST.COUNT.  It      !!00430
*          the total number of outbound requests per period.          !!00431
                                                                       !00432
           08 CNT             TYPE BINARY 32.                          !00433
                                                                       !00434
*          OUT-RQST.TIMEOUTS is PCT.POS.PERF.OUT-RQST.TIMEOUTS.       !!00435
*          It's the total number of outbound requests which timed out !!00436
*          per period.                                                !!00437
                                                                       !00438
           08 TIMEOUTS        TYPE BINARY 32.                          !00439
                                                                       !00440
*          OUT-RQST.TTL-TIME is PCT.POS.PERF.OUT-RQST.TTL-TIME.       !!00441
*          It represents the total time which the switch waited for   !!00442
*          outbound requests to be returned:  For requests which      !!00443
*          did not timeout, the response time.  For requests which    !!00444
*          timed out, the outbound request limit.                     !!00445
                                                                       !00446
           08 TTL-TIME        TYPE BINARY 64.                          !00447
                                                                       !00448
*           POS inbound request performance data.                     !!00449
                                                                       !00450
        06 IN-RQST.                                                    !00451
                                                                       !00452
*          IN-RQST.CNT is from PCT.POS.PERF.IN-RQST.COUNT.  It        !!00453
*          the total number of outbound requests per period.          !!00454
                                                                       !00455
           08 CNT             TYPE BINARY 32.                          !00456
                                                                       !00457
*          IN-RQST.TIMEOUTS is PCT.POS.PERF.IN-RQST.TIMEOUTS.         !!00458
*          It's the total number of outbound requests which timed out !!00459
*          per period.                                                !!00460
                                                                       !00461
           08 TIMEOUTS        TYPE BINARY 32.                          !00462
                                                                       !00463
*          IN-RQST.TTL-TIME is PCT.POS.PERF.IN-RQST.TTL-TIME.         !!00464
*          It represents the total time which the switch waited for   !!00465
*          outbound requests to be returned:  For requests which      !!00466
*          did not timeout, the response time.  For requests which    !!00467
*          timed out, the outbound request limit.                     !!00468
                                                                       !00469
           08 TTL-TIME        TYPE BINARY 64.                          !00470
                                                                       !00471
                                                                       !00472
  END.                                                                 !00473
