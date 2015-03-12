**FIX2.22  03/14/02  BALIBGDS6002 DDL    BA60LIB  BA05295  B                 ***
**FIX2.17  09/27/01  BALIBGDS6001 DDL    BA60LIB  BA05034  A                 ***
!*SEQ2.00  01/03/01  BALIBGDS6000 DDL    BA60LIB                               !
?page  "BALIBGDS - BASE24 Library Definitions"
?section balibgds-history
**********************************************************************!!00005
*                                                                    *!!00006
*                               BASE24                               *!!00007
*                               ------                               *!!00008
*                                                                    *!!00009
*                   DDL for the BASE24 Libraries                     *!!00010
*                                                                    *!!00011
*                   Proprietary Software Product                     *!!00012
*                                                                    *!!00013
*                         ACI Worldwide Inc.                         *!!00014
*                       330 South 108th Avenue                       *!!00015
*                       Omaha, Nebraska  68154                       *!!00016
*                           (402) 390-7600                           *!!00017
*                                                                    *!!00018
*                                                                    *!!00019
*    Copyright by ACI Worldwide Inc. 2000                            *!!00020
*                                                                    *!!00021
*    All Rights Reserved.  No part of this document may be           *!!00022
*    reproduced in any manner without the prior written consent of   *!!00023
*    ACI Worldwide Inc.  This material is a trade secret and its     *!!00024
*    confidentiality is strictly maintained.  Use of any copyright   *!!00025
*    notice does not imply unrestricted or public access to these    *!!00026
*    materials.                                                      *!!00027
*                                                                    *!!00028
**********************************************************************!!00029
*                                                                     !!00030
* Record of Changes:                                                  !!00031
*                                                                     !!00032
* Date        Person/Emp #                                            !!00033
* ---------   ------------                                            !!00034
********************************************************************* !!00035
*             Release 6.0                                           * !!00036
********************************************************************* !!00037
* 30NOV2000   jfu/543                                                 !!00038
* Symptom:    Release 6.0 Enhancements                                !!00039
* Problem:    None.                                                   !!00040
* Fix:        Initial Release.                                        !!00041
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00042
*             CUSTMACS flags, and run MAKE.                           !!00043
* Reference:  WO #981118-3 (Transactions Allowed)                     !!00044
*             WO #990108-1 (TDF/PTDF Expansion)                       !!00045
                                                                       !00045A00
* 12SEP2001   jfu/543                                                  !00045A01
* Symptom:    The description for the constant                         !00045A02
*             tdf-extmem-act-rec-release-l was the same as the         !00045A03
*             tdf-extmem-act-rec-retain-l constant.                    !00045A04
* Problem:    Same as symptom.                                         !00045A05
* Fix:        Corrected the description for the constant               !00045A06
*             tdf-extmem-act-rec-release-l.                            !00045A07
* Dependency: Apply fix to BALIBGDS and reMAKE.                        !00045A08
* Reference:  Case #338469                                             !00045A09
                                                                       !00045A0A
                                                                       !00045B00
* 01MAR2002   jfu/543                                                  !00045B01
* Symptom:    Dynamic Data Table full errors may occur more            !00045B02
*             frequently after applying SCNs AT05131 and AT05117 to    !00045B03
*             the BASE24-atm NCR 5XXX and Diebold 10XX/478X device     !00045B04
*             handlers respectively.                                   !00045B05
* Problem:    The device handlers were not handling the last message   !00045B06
*             area correctly on a multiple leg transaction, and        !00045B07
*             therefore the device handler was changed to set the      !00045B08
*             extended memory action flag to retain the extended       !00045B09
*             memory copy for a terminal instead of releasing it       !00045B0A
*             after a good completion.  With this modification, the    !00045B0B
*             dynamic records for a terminal could be left in          !00045B0C
*             extended memory when the customer canceled the next leg  !00045B0D
*             of the transaction, since the device does not notify     !00045B0E
*             the device handler about this situation.                 !00045B0F
* Fix:        Added TDF-PARAM-OPT-PROD definition.                     !00045B0G
* Dependency: Apply fix to BALIBGDS and reMAKE.                        !00045B0H
* Reference:  Case #343380.                                            !00045B0I
                                                                       !00045B0J
********************************************************************* !!00046
                                                                       !00047
?section balibgds-deflist
?deflist
                                                                       !00052
?comments
?tal   =balib_gdt
                                                                       !00057
?section tdf-assigns-exist-constants
?setsection tdf-assigns-exist-constants
?page "TDF Assigns Exist Constants"
*#####################################################################!!00064
*#                                                                   #!!00065
*#                  TDF Assigns Exist Constants                      #!!00066
*#                                                                   #!!00067
*#  The following constants are used to distinguish whether the old  #!!00068
*#  TDF assigns, TDF assigns, or both sets of assigns were retrieved #!!00069
*#  from the LNCF.                                                   #!!00070
*#                                                                   #!!00071
*#####################################################################!!00072
                                                                       !00073
?nocobol
                                                                       !00076
*             No assigns for the terminal data files were retrieved   !!00077
*             from the LNCF.                                          !!00078
                                                                       !00079
constant tdf-assign-exist-null-l        value 0.                       !00080
                                                                       !00081
*             The old TDF assign was retrieved from the LNCF.         !!00082
                                                                       !00083
constant tdf-assign-exist-old-tdf-l     value 1.                       !00084
                                                                       !00085
*             The TDF assigns were retrieved from the LNCF.           !!00086
                                                                       !00087
constant tdf-assign-exist-tdf-l         value 2.                       !00088
                                                                       !00089
*             Both the old TDF assign and TDF assigns were retrieved  !!00090
*             from the LNCF.                                          !!00091
                                                                       !00092
constant tdf-assign-exist-both-l        value 3.                       !00093
                                                                       !00094
?notal
?cobol =balib_gdx
                                                                       !00099
def tdf-assign-exist-null-c             type binary 16                 !00100
                                        value tdf-assign-exist-null-l. !00101
                                                                       !00102
def tdf-assign-exist-old-tdf-c          type binary 16                 !00103
                                        value                          !00104
                                        tdf-assign-exist-old-tdf-l.    !00105
                                                                       !00106
def tdf-assign-exist-tdf-c              type binary 16                 !00107
                                        value tdf-assign-exist-tdf-l.  !00108
                                                                       !00109
def tdf-assign-exist-both-c             type binary 16                 !00110
                                        value tdf-assign-exist-both-l. !00111
                                                                       !00112
?nocobol
?tal =balib_gdt
                                                                       !00117
?section tdf-extmem-rec-act-constants
?setsection tdf-extmem-rec-act-constants
?page "TDF Extended Memory Record Action Constants"
*#####################################################################!!00124
*#                                                                   #!!00125
*#                  TDF Extended Memory Record Action Constants      #!!00126
*#                                                                   #!!00127
*#  The following constants are used by the TDF Library routines     #!!00128
*#  LIB_TDF_WRITE and LIB_TDF_WRITE_PROD.                            #!!00129
*#                                                                   #!!00130
*#  If the application does store multiple terminals in extended     #!!00131
*#  memory simultaneously, the application must specify the action   #!!00132
*#  to be performed on a terminal's record in the TDF Extended       #!!00133
*#  Memory segment.                                                  #!!00134
*#                                                                   #!!00135
*#####################################################################!!00136
                                                                       !00137
*             Indicates that no action is required for the terminal's !!00138
*             data records in extended memory.  Note that this action !!00139
*             is taken when all of a terminal's data in extended      !!00140
*             memory has not been completely written to disk.         !!00141
                                                                       !00142
constant tdf-extmem-act-recs-none-l     value 1.                       !00143
                                                                       !00144
*             Indicates that the terminal's data records should be    !!00145
*             retained in extended memory.  Note that this action is  !!00146
*             taken when a request is sent to the authorization       !!00147
*             entity.                                                 !!00148
                                                                       !00149
constant tdf-extmem-act-recs-retain-l   value 2.                       !00150
                                                                       !00151
*             Indicates that the terminal's data records should be    !!00152
*             released from extended memory.  Note that this action is!!00153
*             usually taken when a response is sent to the acquirer.  !!00154
                                                                       !00155
constant tdf-extmem-act-recs-release-l  value 3.                       !00156
                                                                       !00157
*             Indicates that the terminal's data records should be    !!00158
*             expelled from extended memory.  Note that this action is!!00159
*             taken when a native mode message is sent to the wrong   !!00160
*             device handler (i.e., the device handler process name is!!00161
*             incorrect in the terminal data file).                   !!00162
                                                                       !00163
constant tdf-extmem-act-recs-expel-l    value 4.                       !00164
                                                                       !00165
*             Indicates that no action is required for the terminal's !!00166
*             data record in extended memory.  Note that this action  !!00167
*             is taken when all of a terminal's data in extended      !!00168
*             memory has not been completely written to disk.         !!00169
                                                                       !00170
constant tdf-extmem-act-rec-none-l      value 5.                       !00171
                                                                       !00172
*             Indicates that the terminal's data records should be    !!00173
*             retained in extended memory.  Note that this action is  !!00174
*             taken when a request is sent to the authorization       !!00175
*             entity.                                                 !!00176
                                                                       !00177
constant tdf-extmem-act-rec-retain-l    value 6.                       !00178
                                                                       !00179
*             Indicates that the terminal's data record should be     !!00180
*             released from extended memory.  Note that this action is!!00181
                                                                       !00182A00
                                                                       !00182A01
*             usually taken when a response is sent to the acquirer.  !!00182A02
*                                                                     !!00182A03
                                                                       !00182A04
                                                                       !00184
constant tdf-extmem-act-rec-release-l   value 7.                       !00185
                                                                       !00186
*             Indicates that the terminal's data record should be     !!00187
*             expelled from extended memory.  Note that this action is!!00188
                                                                       !00189A00
*             taken when a native mode message is sent to the wrong   !!00189A01
                                                                       !00189A02
*             device handler (i.e., the device handler process name is!!00190
*             incorrect in the terminal data file).                   !!00191
                                                                       !00192
constant tdf-extmem-act-rec-expel-l     value 8.                       !00193
                                                                       !00194
*             Indicates that the extended memory action flag was not  !!00195
*             passed by the application.                              !!00196
                                                                       !00197
constant tdf-extmem-act-undef-l         value -1.                      !00198
                                                                       !00199
?section tdf-extmem-rec-ofst-constants
?setsection tdf-extmem-rec-ofst-constants
?page "TDF Extended Memory Record Offset Constants"
*#####################################################################!!00206
*#                                                                   #!!00207
*#                  TDF Extended Memory Record Offset Constants      #!!00208
*#                                                                   #!!00209
*#  The following constants are used by the TDF Library routines     #!!00210
*#  that handle the tables within the TDF Extended Memory segment.   #!!00211
*#                                                                   #!!00212
*#  If the application does store multiple terminals in extended     #!!00213
*#  memory simultaneously, the application must specify the action   #!!00214
*#  to be performed on a terminal's record in the TDF Extended       #!!00215
*#  Memory segment.                                                  #!!00216
*#                                                                   #!!00217
*#####################################################################!!00218
                                                                       !00219
constant tdf-rec-ofst-null-l            value -1 type binary 32.       !00220
                                                                       !00221
?cobol =balib_gdx
                                                                       !00224
?section tdf-io-constants
?setsection tdf-io-constants
?page "TDF Input-Output Constants"
*#####################################################################!!00231
*#                                                                   #!!00232
*#                  TDF Input/Output Constants                       #!!00233
*#                                                                   #!!00234
*#  The following constants are used by the TDF Library routines     #!!00235
*#  in I/O operations.                                               #!!00236
*#                                                                   #!!00237
*#####################################################################!!00238
                                                                       !00239
?nocobol
                                                                       !00242
*             Constants pertaining to the IO-TYP field in the         !!00243
*             TDF-PARAM-IO definition.                                !!00244
                                                                       !00245
constant tdf-io-typ-read-l              value 0.                       !00246
constant tdf-io-typ-write-l             value 1.                       !00247
                                                                       !00248
*             Please refer to the READ-MODE-CONSTANTS section in the  !!00249
*             BA60DDL.DDLBCNST file for the constants used with       !!00250
*             READ-TYP field in the TDF-PARAM-IO definition.          !!00251
*                                                                     !!00252
*             Constants pertaining to the WRITE-TYP field in the      !!00253
*             TDF-PARAM-IO definition.  Please refer to the           !!00254
*             WRITE-MODE-CONSTANTS section in the BA60DDL.DDLBCNST    !!00255
*             file for the rest of the constants used with the        !!00256
*             WRITE-TYP field.                                        !!00257
                                                                       !00258
constant tdf-wm-none-l                  value 99.                      !00259
                                                                       !00260
*             Constants pertaining to the READ-RETRY-LMT field in the !!00261
*             TDF-PARAM-IO definition.                                !!00262
                                                                       !00263
constant tdf-read-retry-lmt-undef-l     value -1.                      !00264
constant tdf-read-retry-lmt-dflt-l      value  3.                      !00265
                                                                       !00266
*             Constants pertaining to the READ-DELAY-TIM field in the !!00267
*             TDF-PARAM-IO definition.                                !!00268
                                                                       !00269
constant tdf-read-delay-tim-dflt-l      value 50 type binary 32.       !00270
constant tdf-read-delay-tim-undef-l     value -1 type binary 32.       !00271
                                                                       !00272
?notal
?cobol =balib_gdx
                                                                       !00277
def tdf-io-typ-read-c                   type binary 16                 !00278
                                        value tdf-io-typ-read-l.       !00279
                                                                       !00280
def tdf-io-typ-write-c                  type binary 16                 !00281
                                        value tdf-io-typ-write-l.      !00282
                                                                       !00283
def tdf-wm-none-c                       type binary 16                 !00284
                                        value tdf-wm-none-l.           !00285
                                                                       !00286
def tdf-read-retry-lmt-undef-c          type binary 16                 !00287
                                        value                          !00288
                                        tdf-read-retry-lmt-undef-l.    !00289
                                                                       !00290
def tdf-read-retry-lmt-dflt-c           type binary 16                 !00291
                                        value                          !00292
                                        tdf-read-retry-lmt-dflt-l.     !00293
                                                                       !00294
def tdf-read-delay-tim-dflt-c           type binary 32                 !00295
                                        value                          !00296
                                        tdf-read-delay-tim-dflt-l.     !00297
                                                                       !00298
def tdf-read-delay-tim-undef-c          type binary 32                 !00299
                                        value                          !00300
                                        tdf-read-delay-tim-undef-l.    !00301
                                                                       !00302
?tal   =balib_gdt
                                                                       !00305
?section tdf-keyposn-constants
?setsection tdf-keyposn-constants
?page "TDF Keyposition Constants"
*#####################################################################!!00312
*#                                                                   #!!00313
*#                  TDF Keyposition Constants                        #!!00314
*#                                                                   #!!00315
*#  The following constants are used by the TDF Libraries to         #!!00316
*#  keyposition or position into the TDFs.                           #!!00317
*#                                                                   #!!00318
*#####################################################################!!00319
                                                                       !00320
?nocobol
                                                                       !00323
*             Please refer to the POSN-TYP-CONSTANTS section in the   !!00324
*             BA60DDL.DDLBCNST file for the constants used with the   !!00325
*             POSN-TYP field in the TDF-PARAM-KEYPOSN definition.     !!00326
*                                                                     !!00327
*             Please refer to the KEYPOSN-MDE-CONSTANTS section in    !!00328
*             the BA60DDL.DDLBCNST file for the constants used with   !!00329
*             the KEY-MDE field in the TDF-PARAM-KEYPOSN definition.  !!00330
*                                                                     !!00331
*             Please refer to the ATD sections in the AT60SRC.ATDDLTAL!!00332
*             file or the PTD sections in the PS60SRC.PSDDLTAL file   !!00333
*             for the literals used with the KEY-SPEC field in        !!00334
*             the TDF-PARAM-KEYPOSN definition.                       !!00335
                                                                       !00336
*             Indicates the maximum length for a key in the TDF.      !!00337
                                                                       !00338
constant tdf-key-lgth-max-l             value 256.                     !00339
                                                                       !00340
?notal
?cobol =balib_gdx
                                                                       !00345
def tdf-key-lgth-max-c                  type binary 16                 !00346
                                        value tdf-key-lgth-max-l.      !00347
                                                                       !00348
?tal   =balib_gdt
                                                                       !00351
?section tdf-merge-rec-typ-constants
?setsection tdf-merge-rec-typ-constants
?page "TDF Merge Record Type Constants"
*#####################################################################!!00358
*#                                                                   #!!00359
*#                  TDF Merge Record Type Constants                  #!!00360
*#                                                                   #!!00361
*#  The following constants are the various values for the record    #!!00362
*#  type parameters used by the TDF Library routine LIB_TDF_MERGE.   #!!00363
*#                                                                   #!!00364
*#####################################################################!!00365
                                                                       !00366
?nocobol
                                                                       !00369
*             If an application wishes to read the data file starting !!00370
*             at the beginning, the application should set the current!!00371
*             record type to this constant and set the current key to !!00372
*             spaces.                                                 !!00373
*                                                                     !!00374
*             If an application wishes to read the data file starting !!00375
*             at a specified value, the application should set the    !!00376
*             current record type to this constant and set the current!!00377
*             key to the specified value.                             !!00378
                                                                       !00379
constant tdf-merge-rec-typ-null-l       value 0.                       !00380
                                                                       !00381
*             When this constant is returned in the current record    !!00382
*             type field, this constant indicates that an old TDF     !!00383
*             record is being returned.                               !!00384
*                                                                     !!00385
*             When this constant is returned in the next record type  !!00386
*             field, this constant indicates that the next available  !!00387
*             record is an old TDF record.  The application can obtain!!00388
*             the next terminal's data by moving this constant to the !!00389
*             current record type field, moving the value in the next !!00390
*             key field to the current key field, and calling         !!00391
*             LIB_TDF_MERGE again.                                    !!00392
                                                                       !00393
constant tdf-merge-rec-typ-old-tdf-l    value 1.                       !00394
                                                                       !00395
*             When this constant is returned in the current record    !!00396
*             type field, this constant indicates that a TDF record   !!00397
*             is being returned.                                      !!00398
*                                                                     !!00399
*             When this constant is returned in the next record type  !!00400
*             field, this constant indicates that the next available  !!00401
*             record is a TDF record.  The application can obtain the !!00402
*             next terminal's data by moving this constant to the     !!00403
*             current record type field, moving the value in the next !!00404
*             key field to the current key field, and calling         !!00405
*             LIB_TDF_MERGE again.                                    !!00406
                                                                       !00407
constant tdf-merge-rec-typ-tdf-l        value 2.                       !00408
                                                                       !00409
*             When this constant is returned in the current record    !!00410
*             type field, this constant indicates that an error       !!00411
*             occurred while attempting to read terminal data from the!!00412
*             old TDF for the current key field.                      !!00413
*                                                                     !!00414
*             When this constant is returned in the next record type  !!00415
*             field, this constant indicates that an error occurred   !!00416
*             while attempting to read terminal data from the old     !!00417
*             TDF for the next key field.                             !!00418
                                                                       !00419
constant tdf-merge-rec-typ-oldtdf-err-l value -1.                      !00420
                                                                       !00421
*             When this constant is returned in the current record    !!00422
*             type field, this constant indicates that an error       !!00423
*             occurred while attempting to read terminal data from the!!00424
*             TDF for the current key field.                          !!00425
*                                                                     !!00426
*             When this constant is returned in the next record type  !!00427
*             field, this constant indicates that an error occurred   !!00428
*             while attempting to read terminal data from the TDF for !!00429
*             the next key field.                                     !!00430
                                                                       !00431
constant tdf-merge-rec-typ-tdf-err-l    value -2.                      !00432
                                                                       !00433
*             When this constant is returned in the current record    !!00434
*             type field, this constant indicates that no terminal    !!00435
*             data is being returned.  The end of terminal data has   !!00436
*             been reached.                                           !!00437
*                                                                     !!00438
*             When this constant is returned in the next record type  !!00439
*             field, this constant indicates that a value is not being!!00440
*             returned in the next key field.  The end of the terminal!!00441
*             data was reached after placing values in the current key!!00442
*             field.                                                  !!00443
                                                                       !00444
constant tdf-merge-rec-typ-endof-data-l value -9.                      !00445
                                                                       !00446
?notal
?cobol =balib_gdx
                                                                       !00451
def tdf-merge-rec-typ-null-c            type binary 16                 !00452
                                        value                          !00453
                                        tdf-merge-rec-typ-null-l.      !00454
                                                                       !00455
def tdf-merge-rec-typ-old-tdf-c         type binary 16                 !00456
                                        value                          !00457
                                        tdf-merge-rec-typ-old-tdf-l.   !00458
                                                                       !00459
def tdf-merge-rec-typ-tdf-c             type binary 16                 !00460
                                        value tdf-merge-rec-typ-tdf-l. !00461
                                                                       !00462
def tdf-merge-rec-typ-oldtdf-err-c      type binary 16                 !00463
                                        value                          !00464
                                    tdf-merge-rec-typ-oldtdf-err-l.    !00465
                                                                       !00466
def tdf-merge-rec-typ-tdf-err-c         type binary 16                 !00467
                                        value                          !00468
                                        tdf-merge-rec-typ-tdf-err-l.   !00469
                                                                       !00470
def tdf-merge-rec-typ-endof-data-c      type binary 16                 !00471
                                        value                          !00472
                                    tdf-merge-rec-typ-endof-data-l.    !00473
                                                                       !00474
?tal   =balib_gdt
                                                                       !00477
?section tdf-rec-size-constant
?setsection tdf-rec-size-constant
?page "TDF Record Size Constant"
*#####################################################################!!00484
*#                                                                   #!!00485
*#                  TDF Record Size Constant                         #!!00486
*#                                                                   #!!00487
*#  The following constant represents the maximum record size for    #!!00488
*#  a record in the TDFs.                                            #!!00489
*#                                                                   #!!00490
*#####################################################################!!00491
                                                                       !00492
?nocobol
                                                                       !00495
constant tdf-rs-max-l                   value rs-max-key-seq-l.        !00496
                                                                       !00497
?notal
?cobol =balib_gdx
                                                                       !00502
def tdf-rs-max-c                        type binary 16                 !00503
                                        value tdf-rs-max-l.            !00504
                                                                       !00505
?tal   =balib_gdt
                                                                       !00508
?section tdf-rec-typ-constants
?setsection tdf-rec-typ-constants
?page "TDF Record Type Constants"
*#####################################################################!!00515
*#                                                                   #!!00516
*#                  TDF Record Type Constants                        #!!00517
*#                                                                   #!!00518
*#  The following constants are the various values for the record    #!!00519
*#  type field (REC-TYP) in the TDF-PARAM-FILES definition.          #!!00520
*#                                                                   #!!00521
*#  Each TDF file contains records of only one type.                 #!!00522
*#                                                                   #!!00523
*#####################################################################!!00524
                                                                       !00525
?nocobol
                                                                       !00528
*             The null record type is used when the record number is  !!00529
*             unused (this particular TDF file is not opened, and     !!00530
*             therefore is unused).                                   !!00531
                                                                       !00532
constant tdf-rec-typ-null-l             value 0.                       !00533
                                                                       !00534
*             Dynamic data is data that can be changed during the     !!00535
*             online transaction path, such as terminal transaction   !!00536
*             totals.                                                 !!00537
                                                                       !00538
constant tdf-rec-typ-dyn-l              value 1.                       !00539
                                                                       !00540
*             Static data is data that cannot be changed during the   !!00541
*             online transaction path, such as the terminal address   !!00542
*             information.                                            !!00543
                                                                       !00544
constant tdf-rec-typ-static-l           value 2.                       !00545
                                                                       !00546
?notal
?cobol =balib_gdx
                                                                       !00551
def tdf-rec-typ-null-c                  type binary 16                 !00552
                                        value tdf-rec-typ-null-l.      !00553
                                                                       !00554
def tdf-rec-typ-dyn-c                   type binary 16                 !00555
                                        value tdf-rec-typ-dyn-l.       !00556
                                                                       !00557
def tdf-rec-typ-static-c                type binary 16                 !00558
                                        value tdf-rec-typ-static-l.    !00559
                                                                       !00560
?tal   =balib_gdt
                                                                       !00563
?section tdf-recs-max-constants
?setsection tdf-recs-max-constants
?page "TDF Records Maximum Constants"
*#####################################################################!!00570
*#                                                                   #!!00571
*#                  TDF Records Maximum Constants                    #!!00572
*#                                                                   #!!00573
*#  The following constants represent the maximum number of TDF      #!!00574
*#  records for a terminal.                                          #!!00575
*#                                                                   #!!00576
*#####################################################################!!00577
                                                                       !00578
?nocobol
                                                                       !00581
*             This value includes disk records only.  It does not     !!00582
*             include the last message data that is only kept in      !!00583
*             extended memory.                                        !!00584
                                                                       !00585
constant tdf-recs-max-l                 value 10.                      !00586
                                                                       !00587
*             This value includes disk records and the last message   !!00588
*             data that is only kept in extended memory.              !!00589
                                                                       !00590
constant tdf-recs-max-plus-one-l        value 11.                      !00591
                                                                       !00592
?notal
?cobol =balib_gdx
                                                                       !00597
def tdf-recs-max-c                      type binary 16                 !00598
                                        value tdf-recs-max-l.          !00599
                                                                       !00600
def tdf-recs-max-plus-one-c             type binary 16                 !00601
                                        value                          !00602
                                        tdf-recs-max-plus-one-l.       !00603
                                                                       !00604
?tal   =balib_gdt
                                                                       !00607
?section tdf-merge-buf
?setsection tdf-merge-buf
?page "TDF Merge Buffer"
*#####################################################################!!00614
*#                                                                   #!!00615
*#                  TDF Merge Buffer Definition                      #!!00616
*#                                                                   #!!00617
*#  The following definition is an I/O buffer used by the TDF library#!!00618
*#  routine LIB_TDF_MERGE.                                           #!!00619
*#                                                                   #!!00620
*#  The applications that call the TDF Library procedure             #!!00621
*#  LIB_TDF_MERGE must declare a TDF I/O buffer and a TDF Merge I/O  #!!00622
*#  buffer.                                                          #!!00623
*#                                                                   #!!00624
*#  The TDF I/O buffer located in extended memory contains a         #!!00625
*#  terminal's data records from the TDFs.                           #!!00626
*#                                                                   #!!00627
*#  The TDF Merge I/O buffer (defined in the definition) located in  #!!00628
*#  extended memory contains the terminal's data record from the old #!!00629
*#  TDF based on the current key field.  In addition, it may contain #!!00630
*#  another record from the TDF or from the old TDF based on I/O     #!!00631
*#  performed to obtain the next key value.  Before an application   #!!00632
*#  calls the TDF Library procedure LIB_TDF_MERGE, it must call the  #!!00633
*#  TDF Library procedure LIB_TDF_ADDR_SET to set the fields in the  #!!00634
*#  TDF Parameters for Address structure.                            #!!00635
*#                                                                   #!!00636
*#   TDF                TDF Merge                                    #!!00637
*#   I/O buffer         I/O buffer                                   #!!00638
*#  ------------    ------------------                               #!!00639
*#  |TDF rec 1 |    | OLD-TDF rec    |                               #!!00640
*#  |          |    |                |                               #!!00641
*#  |----------|    |----------------|                               #!!00642
*#  |TDF rec 2 |    | NXT-OLD-TDF rec|                               #!!00643
*#  |          |    |     or         |                               #!!00644
*#  |----------|    | NXT-TDF rec    |                               #!!00645
*#  |TDF rec 3 |    ------------------                               #!!00646
*#  |          |                                                     #!!00647
*#  |----------|                                                     #!!00648
*#  |  .       |                                                     #!!00649
*#  |  .       |                                                     #!!00650
*#  |  .       |                                                     #!!00651
*#  ------------                                                     #!!00652
*#                                                                   #!!00653
*#  When calling the TDF Library procedure LIB_TDF_MERGE, the        #!!00654
*#  application must pass the TDF Parameter for Address structure    #!!00655
*#  that contain the addresses in the TDF I/O buffer, and pass a     #!!00656
*#  pointer to the beginning of the TDF I/O Merge buffer.            #!!00657
*#                                                                   #!!00658
*#  After a successful call, if the current record type is a TDF     #!!00659
*#  record (TDF-MERGE-REC-TYP-TDF-L), the current data record will   #!!00660
*#  be returned at the appropriate address in the TDF I/O buffer.    #!!00661
*#  If the current record type is an old TDF record                  #!!00662
*#  (TDF-MERGE-REC-TYP-OLD-TDF-L), the current data record will be   #!!00663
*#  returned in the OLD-TDF record area of the TDF I/O Merge buffer. #!!00664
*#                                                                   #!!00665
*#  Optionally, if an application wishes to peek at the next         #!!00666
*#  terminal's data without performing another I/O, it can locate    #!!00667
*#  the data by examining the current and next record type fields    #!!00668
*#  according to the table below:                                    #!!00669
*#                                                                   #!!00670
*#  ---------------------------------------------------------------  #!!00671
*#  Current      Next         Next                                   #!!00672
*#  Record Type  Record Type  Record location                        #!!00673
*#  -----------  -----------  -------------------------------------  #!!00674
*#  TDF          TDF          TDF-MERGE-BUF.NXT-TDF                  #!!00675
*#                                                                   #!!00676
*#  TDF          old TDF      TDF-MERGE-BUF.OLD-TDF                  #!!00677
*#                                                                   #!!00678
*#  old TDF      ...-TDF-L    appropriate address in TDF I/O buffer  #!!00679
*#                            based on the record number             #!!00680
*#                                                                   #!!00681
*#  old TDF      old TDF      TDF-MERGE-BUF.NXT-OLD-TDF              #!!00682
*#                                                                   #!!00683
*#  other combinations        next record was not returned           #!!00684
*#  ---------------------------------------------------------------  #!!00685
*#                                                                   #!!00686
*#  OLD-TDF Rec Examples:                                            #!!00687
*#                                                                   #!!00688
*#  1a.  The current record type is TDF-MERGE-REC-TYP-OLD-TDF-L.     #!!00689
*#                                                                   #!!00690
*#  1b.  The current terminal's data will be returned in TDF Merge   #!!00691
*#       I/O buffer.                                                 #!!00692
*#                                                                   #!!00693
*#             TDF                TDF Merge                          #!!00694
*#             I/O buffer         I/O buffer                         #!!00695
*#            ------------    ------------------                     #!!00696
*#  Next ---> |TDF rec 1 |    | OLD-TDF rec    | <--- Current        #!!00697
*#  Record    |(term DEF)|    | (term ABC)     |      Record         #!!00698
*#            |----------|    |----------------|                     #!!00699
*#            |TDF rec 2 |    | NXT-OLD-TDF rec|                     #!!00700
*#            |          |    | (term GHI)     |                     #!!00701
*#            |----------|    |                |                     #!!00702
*#            |TDF rec 3 |    ------------------                     #!!00703
*#            |          |                                           #!!00704
*#            |----------|                                           #!!00705
*#            |  .       |                                           #!!00706
*#            |  .       |                                           #!!00707
*#            |  .       |                                           #!!00708
*#            ------------                                           #!!00709
*#                                                                   #!!00710
*#  2a.  The current record type is TDF_MERGE_REC_TYP_TDF_L.         #!!00711
*#  2b.  The next    record type is TDF_MERGE_REC_TYP_OLD_TDF_L.     #!!00712
*#                                                                   #!!00713
*#  2c.  The next terminal's data will be returned in TDF Merge I/O  #!!00714
*#       buffer.                                                     #!!00715
*#                                                                   #!!00716
*#                TDF                TDF Merge                       #!!00717
*#                I/O buffer         I/O buffer                      #!!00718
*#               ------------    ------------------                  #!!00719
*#  Current ---> |TDF rec 1 |    | OLD-TDF rec    | <--- Next        #!!00720
*#  Record       |(term DEF)|    | (term GHI)     |      Record      #!!00721
*#               |----------|    |----------------|                  #!!00722
*#               |TDF rec 2 |    | NXT-OLD-TDF rec|                  #!!00723
*#               |          |    | (term JKL)     |                  #!!00724
*#               |----------|    |                |                  #!!00725
*#               |TDF rec 3 |    ------------------                  #!!00726
*#               |          |                                        #!!00727
*#               |----------|                                        #!!00728
*#               |  .       |                                        #!!00729
*#               |  .       |                                        #!!00730
*#               |  .       |                                        #!!00731
*#               ------------                                        #!!00732
*#                                                                   #!!00733
*#  NXT-OLD-TDF Rec Example:                                         #!!00734
*#                                                                   #!!00735
*#  3a.  The current record type is TDF-MERGE-REC-TYP-OLD-TDF-L.     #!!00736
*#  3b.  The next    record type is TDF-MERGE-REC-TYP-OLD-TDF-L.     #!!00737
*#                                                                   #!!00738
*#  3c.  The next terminal's data will be returned in TDF Merge      #!!00739
*#       I/O buffer.                                                 #!!00740
*#                                                                   #!!00741
*#       TDF                TDF Merge                                #!!00742
*#       I/O buffer         I/O buffer                               #!!00743
*#      ------------    ------------------                           #!!00744
*#      |TDF rec 1 |    | OLD-TDF rec    | <--- Current              #!!00745
*#      |(term PQR)|    | (term JKL)     |      Record               #!!00746
*#      |----------|    |----------------|                           #!!00747
*#      |TDF rec 2 |    | NXT-OLD-TDF rec| <--- Next                 #!!00748
*#      |          |    | (term MNO)     |      Record               #!!00749
*#      |----------|    |                |                           #!!00750
*#      |TDF rec 3 |    ------------------                           #!!00751
*#      |          |                                                 #!!00752
*#      |----------|                                                 #!!00753
*#      |  .       |                                                 #!!00754
*#      |  .       |                                                 #!!00755
*#      |  .       |                                                 #!!00756
*#      ------------                                                 #!!00757
*#                                                                   #!!00758
*#  NXT-TDF Rec Example:                                             #!!00759
*#                                                                   #!!00760
*#  4a.  The current record type is TDF_MERGE_REC_TYP_TDF_L.         #!!00761
*#  4b.  The next    record type is TDF_MERGE_REC_TYP_TDF_L.         #!!00762
*#                                                                   #!!00763
*#  4c.  The next terminal's data will be returned in TDF Merge I/O  #!!00764
*#       buffer.                                                     #!!00765
*#                                                                   #!!00766
*#                TDF                TDF Merge                       #!!00767
*#                I/O buffer         I/O buffer                      #!!00768
*#               ------------    ------------------                  #!!00769
*#  Current ---> |TDF rec 1 |    | OLD-TDF rec    |                  #!!00770
*#  Record       |(term PQR)|    | (term VWX)     |                  #!!00771
*#               |----------|    |----------------|                  #!!00772
*#               |TDF rec 2 |    | NXT-TDF rec    | <--- Next        #!!00773
*#               |          |    | (term STU)     |      Record      #!!00774
*#               |----------|    |                |                  #!!00775
*#               |TDF rec 3 |    ------------------                  #!!00776
*#               |          |                                        #!!00777
*#               |----------|                                        #!!00778
*#               |  .       |                                        #!!00779
*#               |  .       |                                        #!!00780
*#               |  .       |                                        #!!00781
*#               ------------                                        #!!00782
*#                                                                   #!!00783
*#####################################################################!!00784
                                                                       !00785
DEFINITION tdf-merge-buf.                                              !00786
                                                                       !00787
*             Contains the old TDF record.                            !!00788
                                                                       !00789
    04 OLD-TDF.                                                        !00790
       06 REC-DATA                      PIC X                          !00791
                                        OCCURS RS-MAX-REL-L TIMES.     !00792
                                                                       !00793
*             Contains the next old TDF record.                       !!00794
                                                                       !00795
    04 NXT-OLD-TDF.                                                    !00796
       06 REC-DATA                      PIC X                          !00797
                                        OCCURS RS-MAX-REL-L TIMES.     !00798
                                                                       !00799
*             Contains the next TDF record.                           !!00800
                                                                       !00801
    04 NXT-TDF REDEFINES NXT-OLD-TDF.                                  !00802
       06 REC-DATA                      PIC X                          !00803
                                        OCCURS RS-MAX-REL-L TIMES.     !00804
                                                                       !00805
END                                                                    !00806
                                                                       !00807
?section tdf-param-addr
?setsection tdf-param-addr
?page "TDF Parameters for Address"
*#################################################################### !!00814
*#                                                                  # !!00815
*#                  TDF Parameters for Address Definition           # !!00816
*#                                                                  # !!00817
*#  The TDF Parameters for Address definition contains the          # !!00818
*#  addresses of where in extended memory each record for this      # !!00819
*#  terminal begins.                                                # !!00820
*#                                                                  # !!00821
*#  If the application does not store multiple terminals in         # !!00822
*#  extended memory simultaneously, the application should call the # !!00823
*#  TDF library LIB-TDF-ADDR-SET once.  After the fields in this    # !!00824
*#  structure have been set by LIB-TDF-ADDR-SET, this structure's   # !!00825
*#  fields should not be updated.                                   # !!00826
*#                                                                  # !!00827
*#  If the application does store multiple terminals in extended    # !!00828
*#  memory simultaneously, the application must set the fields in   # !!00829
*#  this structure to their null values (i.e., NIL-EXT-ADDR-L) on   # !!00830
*#  the first call to the TDF Libraries for a specific terminal.    # !!00831
*#  On subsequent calls to the TDF Libraries for this terminal, the # !!00832
*#  TDF Libraries will set the appropriate field in this structure  # !!00833
*#  based on the record number field in the TDF Parameters for an   # !!00834
*#  I/O structure.  In summary, an application will reset the       # !!00835
*#  fields in this structure after processing a network message.    # !!00836
*#  The TDF Libraries will set the fields in this structure as      # !!00837
*#  records for a specified terminal are retrieved from the TDFs.   # !!00838
*#                                                                  # !!00839
*#################################################################### !!00840
                                                                       !00841
DEFINITION tdf-param-addr.                                             !00842
                                                                       !00843
*             Address record array.  This array contains the address  !!00844
*             of every record in the TDFs for this terminal.  The     !!00845
*             position in the array is based on the record number.    !!00846
*             For example, position zero contains the address of      !!00847
*             where in extended memory the last message data for the  !!00848
*             retrieved TDF record begins, position one contains the  !!00849
*             address of where in extended memory the record 01 data  !!00850
*             for the retrieved TDF record begins, ...                !!00851
                                                                       !00852
    04 ADDR-REC                         TYPE BINARY 32 OCCURS          !00853
                                        TDF-RECS-MAX-PLUS-ONE-L        !00854
                                        TIMES.                         !00855
END                                                                    !00856
                                                                       !00857
?section tdf-param-extmem
?setsection tdf-param-extmem
?page "TDF Parameters from Extended Memory"
*#################################################################### !!00864
*#                                                                  # !!00865
*#                  TDF Parameters for Extended Memory definition   # !!00866
*#                                                                  # !!00867
*#  The TDF Parameters for Extended Memory definition contains      # !!00868
*#  the fields required for applications storing multiple terminals # !!00869
*#  in extended memory simultaneously.                              # !!00870
*#                                                                  # !!00871
*#################################################################### !!00872
                                                                       !00873
DEFINITION tdf-param-extmem.                                           !00874
                                                                       !00875
*             Indicates whether the TDF extended memory segment is a  !!00876
*             flat segment.                                           !!00877
                                                                       !00878
    04 FLAT-SEG                        TYPE BINARY 16.                 !00879
                                                                       !00880
*             Contains the unique number by which the TDF extended    !!00881
*             memory segment is referred to in a call to              !!00882
*             SEGMENT_USE_.                                           !!00883
                                                                       !00884
    04 SEG-ID                          TYPE BINARY 16.                 !00885
                                                                       !00886
*             Contains the base address of the TDF extended memory    !!00887
*             segment.                                                !!00888
                                                                       !00889
    04 SEG-ADDR                        TYPE BINARY 32.                 !00890
                                                                       !00891
*             Contains the base address of the Terminal Table in the  !!00892
*             TDF extended memory segment.                            !!00893
                                                                       !00894
    04 TBL-ADDR                        TYPE BINARY 32.                 !00895
                                                                       !00896
*             Contains the base address of a terminal inside the      !!00897
*             Terminal Table in the TDF extended memory segment.      !!00898
*                                                                     !!00899
*             Applications must perform a separate call to the TDF    !!00900
*             Libraries for every TDF record that must be retrieved   !!00901
*             for a terminal.  On the first call to the TDF Libraries !!00902
*             for a specific terminal, applications must reset this   !!00903
*             field to NIL-EXT-ADDR-L.  On subsequent calls to the    !!00904
*             TDF Libraries for this terminal, applications should    !!00905
*             not modify this field.  In summary, applications will   !!00906
*             reset this field after processing a network message.    !!00907
                                                                       !00908
    04 TERM-TBL-ENTRY-ADDR             TYPE BINARY 32.                 !00909
                                                                       !00910
*             Contains the offset of the key data for the TDF.        !!00911
                                                                       !00912
    04 KEY-OFST                        TYPE BINARY 16.                 !00913
                                                                       !00914
*             Indicates whether TDF release logic is being performed. !!00915
                                                                       !00916
    04 PRO-RELEASE                     TYPE BINARY 16.                 !00917
                                                                       !00918
END                                                                    !00919
                                                                       !00920
?section tdf-param-files
?setsection tdf-param-files
?page "TDF Parameters for Address"
*#################################################################### !!00927
*#                                                                  # !!00928
*#                  TDF Parameters for Files definition             # !!00929
*#                                                                  # !!00930
*#  The TDF Parameters for Files definition contains the information# !!00931
*#  about each terminal data file.                                  # !!00932
*#                                                                  # !!00933
*#################################################################### !!00934
                                                                       !00935
DEFINITION tdf-param-files.                                            !00936
                                                                       !00937
*             File array.  This array contains the file information   !!00938
*             of every terminal data file that the application is     !!00939
*             processing.  The position in the array is based on the  !!00940
*             record number.  Remember that each occurrence is one    !!00941
*             copy of the structure.  For example, position zero      !!00942
*             contains the file information about the terminal data   !!00943
*             file containing the last message data, position one     !!00944
*             contains the file information about the terminal data   !!00945
*             file containing the record 01 data, ...                 !!00946
*                                                                     !!00947
*             Even though the last message data will not be contained !!00948
*             in a terminal data file, position zero is reserved for  !!00949
*             the last message data.  However, the first occurrence of!!00950
*             the record length field (i.e., position zero) will be   !!00951
*             used by applications storing multiple terminals in      !!00952
*             extended memory simultaneously to specify the length of !!00953
*             the last message data for a terminal.                   !!00954
                                                                       !00955
    04 FILES                            OCCURS TDF-RECS-MAX-PLUS-ONE-L !00956
                                        TIMES.                         !00957
                                                                       !00958
*             Contains the Tandem file name of this TDF.              !!00959
                                                                       !00960
       06 NAM.                                                         !00961
          08 FNAME                      TYPE FNAME.                    !00962
          08 USER-FLD-NAM               PIC X.                         !00963
                                                                       !00964
*             Contains the Tandem C-series file name of this TDF.     !!00965
*             The old Tandem C-series NSK calls expects a 12 word     !!00966
*             field, so the NAM field is redefined in this way        !!00967
*             to satisfy calls to NSK routines and to fully redefine  !!00968
*             the NAM structure.                                      !!00969
                                                                       !00970
       06 NAM-OLD REDEFINES NAM         TYPE BINARY 16                 !00971
                                        OCCURS 18 TIMES.               !00972
                                                                       !00973
*             Contains the Tandem system number of this TDF.          !!00974
*                                                                     !!00975
*             If the file is not open, the value for the field must be!!00976
*             set to NULL-FILE-NUM-L.                                 !!00977
                                                                       !00978
       06 NUM                           TYPE BINARY 16.                !00979
                                                                       !00980
*             Contains the type of records stored in this TDF.  Valid !!00981
*             values are:                                             !!00982
*                                                                     !!00983
*             TDF-REC-TYP-DYN-L                                       !!00984
*             TDF-REC-TYP-STATIC-L                                    !!00985
                                                                       !00986
       06 REC-TYP                       TYPE BINARY 16.                !00987
                                                                       !00988
*             Contains the maximum length, in bytes, of a record in   !!00989
*             this TDF.                                               !!00990
                                                                       !00991
       06 REC-LGTH                      TYPE BINARY 16.                !00992
                                                                       !00993
*             Contains the number of bytes read from the TDF.  The    !!00994
*             application should move the value in this field to the  !!00995
*             CNT-READ field of the TDF Parameters for an I/O         !!00996
*             structure before calling the TDF Library LIB-TDF-WRITE. !!00997
                                                                       !00998
       06 CNT-READ                      TYPE BINARY 16.                !00999
                                                                       !01000
END                                                                    !01001
                                                                       !01002
?section tdf-param-io
?setsection tdf-param-io
?page "TDF Parameters for Input-Output"
*#################################################################### !!01009
*#                                                                  # !!01010
*#                  TDF Parameters for an I/O Definition            # !!01011
*#                                                                  # !!01012
*#  The TDF Parameters for an I/O definition contains the fields    # !!01013
*#  required by the TDF Libraries to perform an I/O on the TDFs.    # !!01014
*#                                                                  # !!01015
*#################################################################### !!01016
                                                                       !01017
DEFINITION TDF-PARAM-IO.                                               !01018
                                                                       !01019
                                                                       !01020
*             Indicates the type of I/O required.  Valid  values are: !!01021
*                                                                     !!01022
*             TDF-IO-TYP-READ-L                                       !!01023
*             TDF-IO-TYP-WRITE-L                                      !!01024
                                                                       !01025
    04 IO-TYP                           TYPE BINARY 16.                !01026
                                                                       !01027
*             Indicates the record number to be read or written.      !!01028
                                                                       !01029
    04 REC-NUM                          TYPE BINARY 16.                !01030
                                                                       !01031
*             Indicates the type of read to perform on the TDF.       !!01032
*             Please refer to the TDF-IO-CONSTANTS section in this    !!01033
*             file for the valid values for this field.               !!01034
                                                                       !01035
    04 READ-TYP                         TYPE BINARY 16.                !01036
                                                                       !01037
*             Indicates the type of write to perform on the TDF.      !!01038
*             Please refer to the TDF-IO-CONSTANTS section in this    !!01039
*             file for the valid values for this field.               !!01040
                                                                       !01041
    04 WRITE-TYP REDEFINES READ-TYP     TYPE BINARY 16.                !01042
                                                                       !01043
*             Contains the maximum number of bytes to be read from the!!01044
*             TDF.                                                    !!01045
                                                                       !01046
    04 READ-CNT                        TYPE BINARY 16.                 !01047
                                                                       !01048
*             Contains the maximum number of bytes to write to the    !!01049
*             TDF.                                                    !!01050
                                                                       !01051
    04 WRITE-CNT REDEFINES READ-CNT    TYPE BINARY 16.                 !01052
                                                                       !01053
*             Contains the number of bytes read from the TDF.         !!01054
                                                                       !01055
    04 CNT-READ                        TYPE BINARY 16.                 !01056
                                                                       !01057
*             Contains the number of bytes written to the TDF.        !!01058
                                                                       !01059
    04 CNT-WRITTEN REDEFINES CNT-READ  TYPE BINARY 16.                 !01060
                                                                       !01061
*             Contains the maximum number of times a read is retried  !!01062
*             if the record is locked.  If the application wishes to  !!01063
*             use the TDF Library's default, set this field to        !!01064
*             TDF-READ-RETRY-LMT-UNDEF-L.                             !!01065
                                                                       !01066
    04 READ-RETRY-LMT                  TYPE BINARY 16.                 !01067
                                                                       !01068
*             Contains the delay time between consecutive read        !!01069
*             attempts.  If the application wishes to use the TDF     !!01070
*             Library's default, set this field to set this field to  !!01071
*             TDF-READ-DELAY-TIM-UNDEF-L.                             !!01072
                                                                       !01073
    04 READ-DELAY-TIM                  TYPE BINARY 32.                 !01074
                                                                       !01075
END                                                                    !01076
                                                                       !01077
?section tdf-param-keyposn
?setsection tdf-param-keyposn
?page "TDF Parameters for Keyposition"
*#################################################################### !!01084
*#                                                                  # !!01085
*#                  TDF Parameters for the Keyposition Definition   # !!01086
*#                                                                  # !!01087
*#  The TDF Parameters for the Keyposition definition contains      # !!01088
*#  the fields required by the TDF Libraries to position or         # !!01089
*#  keyposition into the TDFs.                                      # !!01090
*#                                                                  # !!01091
*#################################################################### !!01092
                                                                       !01093
DEFINITION TDF-PARAM-KEYPOSN.                                          !01094
                                                                       !01095
*             Indicates the type of position to perform.  Please      !!01096
*             refer to the TDF-KEYPOSN-CONSTANTS section in this      !!01097
*             file for the valid values for this field.               !!01098
*                                                                     !!01099
*             If a keyposition into the TDF is not required by a      !!01100
*             application, the application should set the field to    !!01101
*             PM-SEQ-L.                                               !!01102
                                                                       !01103
    04 POSN-TYP                        TYPE BINARY 16.                 !01104
                                                                       !01105
*             Contains the KEYPOSITION key specifier for the TDF.     !!01106
                                                                       !01107
    04 KEY-SPEC                        TYPE BINARY 16.                 !01108
                                                                       !01109
*             Contains the length of the key data for the TDF.        !!01110
                                                                       !01111
    04 KEY-LGTH                        TYPE BINARY 16.                 !01112
                                                                       !01113
*             Contains the KEYPOSITION search mode for the TDF.       !!01114
*                                                                     !!01115
*             Please refer to the TDF-KEYPOSN-CONSTANTS section in    !!01116
*             this file for the valid values for this field.          !!01117
                                                                       !01118
    04 KEY-MDE                         TYPE BINARY 16.                 !01119
                                                                       !01120
END                                                                    !01121
                                                                       !01122
?section tdf-param-lncf
?setsection tdf-param-lncf
?page "TDF Parameters from LNCF"
*#################################################################### !!01129
*#                                                                  # !!01130
*#                  TDF Parameters from the LNCF definition         # !!01131
*#                                                                  # !!01132
*#  The TDF Parameters from the LNCF definition contains the values # !!01133
*#  that were retrieved by the application from the Logical Network # !!01134
*#  Configuration File for storing multiple terminals in extended   # !!01135
*#  memory simultaneously.                                          # !!01136
*#                                                                  # !!01137
*#  The values in these fields will help determine the amount of    # !!01138
*#  extended memory required to store the data from the TDF.        # !!01139
*#                                                                  # !!01140
*#################################################################### !!01141
                                                                       !01142
DEFINITION tdf-param-lncf.                                             !01143
                                                                       !01144
*             Contains the maximum number of terminals to be managed  !!01145
*             in the terminal table.  This is for saving each         !!01146
*             record's memory disposition information.                !!01147
                                                                       !01148
    04 MAX-TERMS-IN-TERM-TBL           TYPE BINARY 32.                 !01149
                                                                       !01150
*             Contains the maximum number of terminals in the Dynamic !!01151
*             Data Table.  More than one dynamic data record may exist!!01152
*             for a terminal.  Note that the terminal's last message  !!01153
*             data, including the token data, is saved in the Dynamic !!01154
*             Data Table.  MAX-TERMS-IN-DYN-TBL must be smaller than  !!01155
*             or equal to MAX-TERMS-IN-TERM-TBL, and is the number of !!01156
*             terminals expected to ever be processing transactions   !!01157
*             simultaneously.                                         !!01158
                                                                       !01159
    04 MAX-TERMS-IN-DYN-TBL            TYPE BINARY 32.                 !01160
                                                                       !01161
*             Contains the maximum number of terminals in the Static  !!01162
*             Data Table.  More than one static data record may exist !!01163
*             for a terminal.  MAX-TERMS-IN-STATIC-TBL must be smaller!!01164
*             than or equal to MAX-TERMS-IN-TERM-TBL and must not be  !!01165
*             smaller than MAX-TERMS-IN-DYN-TBL.                      !!01166
                                                                       !01167
    04 MAX-TERMS-IN-STATIC-TBL         TYPE BINARY 32.                 !01168
                                                                       !01169
END                                                                    !01170
                                                                       !01171
                                                                       !01171B00
?section tdf-param-opt-prod
?setsection tdf-param-opt-prod
?page "TDF Parameters - Optional per Product"
*####################################################################  !01171B07
*#                                                                  #  !01171B08
*#                  TDF Parameters - Optional per Product           #  !01171B09
*#                                                                  #  !01171B0A
*#  The TDF Optional Parameters per Product definition contains     #  !01171B0B
*#  those parameters that optional, but differ from product to      #  !01171B0C
*#  product.                                                        #  !01171B0D
*#                                                                  #  !01171B0E
*####################################################################  !01171B0F
                                                                       !01171B0G
DEFINITION tdf-param-opt-prod.                                         !01171B0H
                                                                       !01171B0I
*             The following area is reserved for product specific      !01171B0J
*             information.                                             !01171B0K
                                                                       !01171B0L
    04 PROD-SPECIFIC.                                                  !01171B0M
       06 RSRVD                        TYPE BINARY 16                  !01171B0N
                                       OCCURS 6 TIMES.                 !01171B0O
                                                                       !01171B0P
    04 ATM REDEFINES PROD-SPECIFIC.                                    !01171B0Q
                                                                       !01171B0R
*             Indicates whether the dynamic records are being          !01171B0S
*             retained, since the device handler is waiting for        !01171B0T
*             the next leg of a multiple leg transaction.              !01171B0U
                                                                       !01171B0V
       06 MULT-LEG-TXN                 TYPE BINARY 16.                 !01171B0W
                                                                       !01171B0X
*             Contains the number of centi-seconds the device          !01171B0Y
*             handler waits for the next leg of a multiple leg         !01171B0Z
*             transaction before the library routines may remove the   !01171B10
*             dynamic data for a terminal.  If the field contains      !01171B11
*             zeroes, this processing is disabled.                     !01171B12
                                                                       !01171B13
       06 MULT-LEG-TXN-RETN            TYPE BINARY 32.                 !01171B14
                                                                       !01171B15
*             This field is reserved for future use.                   !01171B16
                                                                       !01171B17
       06 USER-FLD1-ATM                TYPE BINARY 16.                 !01171B18
                                                                       !01171B19
*             This field is reserved for future use.                   !01171B1A
                                                                       !01171B1B
       06 USER-FLD2-ATM                TYPE BINARY 32.                 !01171B1C
                                                                       !01171B1D
    04 POS REDEFINES PROD-SPECIFIC.                                    !01171B1E
                                                                       !01171B1F
*             This field is reserved for future use.                   !01171B1G
                                                                       !01171B1H
       06 USER-FLD1-POS                TYPE BINARY 16.                 !01171B1I
                                                                       !01171B1J
*             This field is reserved for future use.                   !01171B1K
                                                                       !01171B1L
       06 USER-FLD2-POS                TYPE BINARY 32.                 !01171B1M
                                                                       !01171B1N
*             This field is reserved for future use.                   !01171B1O
                                                                       !01171B1P
       06 USER-FLD3-POS                TYPE BINARY 16.                 !01171B1Q
                                                                       !01171B1R
*             This field is reserved for future use.                   !01171B1S
                                                                       !01171B1T
       06 USER-FLD4-POS                TYPE BINARY 32.                 !01171B1U
                                                                       !01171B1V
END                                                                    !01171B1W
                                                                       !01171B1X
