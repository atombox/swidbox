**FIX2.19  01/12/02  DDLGVSM 6003 DDL    BA60DDL  BA05171  C                 ***
**SEQ0.04  11/01/00  DDLGVSM 6002 DDL    BA60DDL  BA04000  B                 ***
**SYNC.04  12/09/98  DDLGVSM 5302 DDL    BA53DDL  BA04000  B                 ***
**SYNC.03  08/28/98  DDLGVSM 5302 DDL    BA53DDL  BA03000  B                 ***
**SYNC.03  08/22/97  DDLGVSM 5102 DDL    BA51DDL  BA03000  B                 ***
**FIX2.04  04/01/97  DDLGVSM 5102 DDL    BA51DDL  BA02082  B                 ***
**SYNC.02  06/25/96  DDLGVSM 5101 DDL    BA51DDL  BA02000  A                 ***
**FIX2.00  06/06/95  DDLGVSM 5101 DDL    BA51DDL  BA51040  A                 ***
!*SEQ2.00  10/20/92  DDLGVSM 5100 DDL    BA51DDL                               !
********************************************************************** !00000C00
*                                                                    * !00000C01
*                               BASE24                               * !00000C02
*                               ------                               * !00000C03
*                                                                    * !00000C04
*                 DDLs for the Visa Security Module                  * !00000C05
*                                                                    * !00000C06
*                   Proprietary Software Product                     * !00000C07
*                                                                    * !00000C08
*                         ACI Worldwide Inc.                         * !00000C09
*                       330 South 108th Avenue                       * !00000C0A
*                       Omaha, Nebraska  68154                       * !00000C0B
*                           (402) 390-7600                           * !00000C0C
*                                                                    * !00000C0D
*    Copyright by ACI Worldwide Inc. 1992 - 2001                     * !00000C0E
*                                                                    * !00000C0F
*    All Rights Reserved.  No part of this document may be           * !00000C0G
*    reproduced in any manner without the prior written consent of   * !00000C0H
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000C0I
*    confidentiality is strictly maintained.  Use of any copyright   * !00000C0J
*    notice does not imply unrestricted or public access to these    * !00000C0K
*    materials.                                                      * !00000C0L
*                                                                    * !00000C0M
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000C0N
*                                                                    * !00000C0O
********************************************************************** !00000C0P
?page   "VSMREQ - Visa Security Module Requests"
                                                                       !00000C0S
!#####################################################################!!00003
!#                                                                   #!!00004
!#  This file contains DDL definitions for message formats used by   #!!00005
!#  the Visa Security Module (VSM).  Refer to Visa's VSM Operations  #!!00006
!#  Manual for further information.                                  #!!00007
!#                                                                   #!!00008
!#####################################################################!!00009
                                                                       !00009C00
*                                                                      !00009C01
* Record of Changes:                                                   !00009C02
*                                                                      !00009C03
* Date        Person/Emp #                                             !00009C04
* ----------  ------------                                             !00009C05
                                                                       !00009C06
                                                                       !00010C00
                                                                       !00010C01
                                                                       !00010C02
                                                                       !00012A00
*********************************************************************  !00012A01
*                  RELEASE 5.1                                      *  !00012A02
*********************************************************************  !00012A03
* 01JUN95     JMS/583                                                  !00012A04
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00012A05
* PROBLEM:    <E> None.                                                !00012A06
* FIX:        Removed old history sections not associated with a       !00012A07
*             specific Fix level.                                      !00012A08
* IMPLEMENT:  None.                                                    !00012A09
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00012A0A
                                                                       !00012B00
* 02/26/96    JJD/1474 - RPS/1810 - jms/583                            !00012B01
* SYMPTOM:    Base24-CARD Release 5.1 Enhancement.                     !00012B02
* PROBLEM:    <E> None.                                                !00012B03
* FIX:        Modified VSMREQ and VSMRSP to support the RACAL command  !00012B04
*             CW/CX.  Modified VSMREQ and VSRSP to support the RACAL   !00012B05
*             command ee, ja, pa, pe, ef, gb, pf                       !00012B06
* IMPLEMENT:  Apply fix and Remake.                                    !00012B07
* REFERENCE:  960130-001                                               !00012B08
                                                                       !00012B09
                                                                       !00012C03
********************************************************************   !00012C04
*             Release 6.0                                          *   !00012C05
********************************************************************   !00012C06
* 08JAN2002   TLE/310                                                  !00012C07
* Symptom:    Uplift DUKPT to Release 6.0.                             !00012C08
* Problem:    None.                                                    !00012C09
* Fix:        Modified VSMREQ and VSMRSP to support the RACAL commands !00012C0A
*             CI/CJ and A0/A1.                                         !00012C0B
* Dependency: Apply fix to DDLGVSM and run MAKE.                       !00012C0C
* Reference:  WO #011003-04.                                           !00012C0D
                                                                       !00012C0E
                                                                       !00012C0F
                                                                       !00012C0G
                                                                       !00012C0H
**********************************************************************!!00109
?section vsmreq
                                                                       !00112
!#####################################################################!!00113
!#                                                                   #!!00114
!#  VSMREQ:  This is the message format for all requests to the VSM. #!!00115
!#                                                                   #!!00116
!#####################################################################!!00117
                                                                       !00118
def vsmreq.                                                            !00119
*                                                                     !!00120
*   Start of Text:                                                    !!00121
*                                                                     !!00122
    02  stx         pic x(1).                                          !00123
                                                                       !00124
*                                                                     !!00125
*   Host-assigned user header:                                        !!00126
*                                                                     !!00127
    02  hdr         pic x(4).                                          !00128
                                                                       !00129
*                                                                     !!00130
*   Transaction Code (determines function to be performed by VSM).  An!!00131
*   asterisk next to a tran code means that the VSM utilities use that!!00132
*   particular tran code; the remaining tran codes are listed here    !!00133
*   only for reference and possible future enhancement:               !!00134
*                                                                     !!00135
*       PIN Generation and Encryption:                                !!00136
*       --------------------------------------------------------------!!00137
*       EE= Derive and encrypt a PIN using the IBM method             !!00138
*       JA= Generate and encrypt a random 4-digit PIN                 !!00139
*   [*] DE= Generate an IBM offset for an existing PIN                !!00140
*   [*] CE= Generate a Diebold offset for an existing PIN             !!00141
*   [*] DG= Generate a Visa PIN Verification Value                    !!00142
*       BA= Encrypt a clear PIN for database storage (auth state req) !!00143
                                                                       !00143C00
*       A0= Generate a Key                                             !00143C01
                                                                       !00143C02
*                                                                     !!00144
*       Mailer Printing:                                              !!00145
*       --------------------------------------------------------------!!00146
*       PA= Define format of a PIN mailer or key conveyance document  !!00147
*       PC= Continuation of PA transaction                            !!00148
*       PE= Print a PIN mailer or key conveyance document (auth state)!!00149
*       PG= Verify cryptography related to printing of PIN mailer     !!00150
*       OA= Print a PIN solicitation-only mailer (auth state)         !!00151
*       RC= Verify cryptography related to printing of solicitation   !!00152
*       NG= Decrypt a PIN and encrypt an account number (for printing !!00153
*           mailers on a host device; auth state required)            !!00154
*                                                                     !!00155
*       Processing PIN Solicitation Data for Host Use:                !!00156
*       --------------------------------------------------------------!!00157
*       QA= Load PIN solicitation data to VSM                         !!00158
*       QC= Final load of PIN solicitation data to VSM                !!00159
*       QE= Enable manual loading of PIN solicitation data from VSM   !!00160
*       QG= Disable manual loading of PIN solicitation data from VSM  !!00161
*       QG= Disable manual loading of PIN solicitation data from VSM  !!00162
*       ZZ= VSM response to terminal entry of host solicitation data  !!00163
*                                                                     !!00164
*       PIN Verification:                                             !!00165
*       --------------------------------------------------------------!!00166
*   [*] DA, EA= Verify PIN with the IBM method                        !!00167
*   [*] CG, EG= Verify PIN using the Diebold algorithm                !!00168
*       BC, BE= Verify PIN using the encrypted-PIN method             !!00169
*   [*] EC, DC= Verify PIN using Visa PVV                             !!00170
*                                                                     !!00171
*       Visa CVV Functions:                                           !!00172
*       --------------------------------------------------------------!!00173
*   [*] AY, AZ= Translate a CVK pair from encryption under an old LMK !!00174
*               to encryption under a new LMK                         !!00175
*   [*] CY, CZ= Verify card with track 1 or track 2 CVV               !!00176
*                                                                     !!00177
*       PIN Translation:                                              !!00178
*       --------------------------------------------------------------!!00179
*   [*] CA= Translate an encrypted PIN block from a Local Key to an   !!00180
*           Interchange Working Key                                   !!00181
*   [*] CC= Translate an encrypted PIN block from one working key to  !!00182
*           another working key                                       !!00183
                                                                       !00183C00
*       CI= Translate a PIN from BDK Encryption to an Interchange Key  !00183C01
*           Encryption.                                                !00183C02
                                                                       !00183C03
*       BG= Translate a host-stored encrypted PIN from old Master Key !!00184
*           pair/old encrypted-PIN length to new Master Key pair/new  !!00185
*           encrypted-PIN length                                      !!00186
*   [*] JC= Translate PIN from TPK to LMK encryption                  !!00187
*   [*] JE= Translate PIN from ZWK to LMK encryption                  !!00188
*                                                                     !!00189
*       Interchange Key Management:                                   !!00190
*       --------------------------------------------------------------!!00191
*       OC= Generate a Zone Control Master Key component and create   !!00192
*           a component mailer (auth state required)                  !!00193
*       GG= Create a Zone Control Master Key component and related    !!00194
*           check value (auth state required)                         !!00195
                                                                       !00196
*   [*] IA= Generate and encrypt an Acquirer Working Key or Issuer    !!00197
                                                                       !00198
*           Working Key                                               !!00199
*       FG= Generate and encrypt a pair of PIN Verification Keys and  !!00200
*           related check values                                      !!00201
                                                                       !00202
*       FA= Translate a Working Key from a Zone Master Key to a VSM   !!00203
                                                                       !00204
*           Master Key pair                                           !!00205
*       FC= Translate a local key from a Zone Master Key to a VSM     !!00206
*           Master Key pair                                           !!00207
*       FE= Translate a local key from a VSM Master Key pair to a     !!00208
*           Zone Master Key                                           !!00209
*   [*] GE= Translate a Zone Control Master key from old Master Key   !!00210
*           pair to a new Master Key pair                             !!00211
*                                                                     !!00212
                                                                       !00213
*   [*] GC= Translate a Zone Working Key from encryption under a      !!00214
*           Local Master Key to encryption under the Zone Master Key. !!00215
*                                                                     !!00216
                                                                       !00217
                                                                       !00218
*   [*] KA= Generate a key check value for one of the following:      !!00219
*           ZMK, ZWK, TAK, TMK, TPK, or PVK.                          !!00220
*                                                                     !!00221
                                                                       !00222
*       Terminal and Local Key Management:                            !!00223
*       --------------------------------------------------------------!!00224
*       OE= Generate an initial Terminal Master Key and print it on a !!00225
*           conveyance mailer (auth state required)                   !!00226
*   [*] HC= Generate and encrypt a new Terminal Master Key for        !!00227
*           downline loading                                          !!00228
*       AE= Encrypt Terminal PIN Key for new Terminal Master Key under!!00229
*           the current Terminal Master Key                           !!00230
*       IG= Create a Docutel Master Key for host or VSM storage       !!00231
*       OG= Generate an initial Terminal Communication Key and print  !!00232
*           it on a conveyance mailer (auth state required)           !!00233
*   [*] HA= Generate and encrypt a Terminal Authentication Key.       !!00234
*       AG= Encrypt Terminal Comm. Key under Terminal Master Key      !!00235
*   [*] AA= Translate Terminal Master Key or Terminal PIN Key from    !!00236
*           old Master Key pair to new Master Key pair                !!00237
*   [*] AC= Translate Terminal Communications Key from old Master Key !!00238
*           pair to new Master Key pair                               !!00239
*   [*] KC= Translate a ZWK from an old LMK to a new LMK              !!00240
*                                                                     !!00241
*       Managing User Storage:                                        !!00242
*       --------------------------------------------------------------!!00243
*       LE= Transfer some or all of the data stored in internal user  !!00244
*           memory to the host computer                               !!00245
*   [*] LA= Load or restore encrypted keys or other user data to      !!00246
*           internal user memory                                      !!00247
*   [*] LC= Verify the presence of a valid, encrypted Diebold         !!00248
*           Propietary Algorithm Table in internal user memory        !!00249
*                                                                     !!00250
*                                                                     !!00251
*       Message Authentication Functions:                             !!00252
*       --------------------------------------------------------------!!00253
*   [*] MG= Translate a TAK from LMK to ZMK encryption                !!00254
*   [*] MI= Translate a TAK from ZMK to LMK encryption                !!00255
*   [*] MK= Generate a MAC                                            !!00256
*   [*] MM= Verify a MAC                                              !!00257
*   [*] SC= Translate PIN and Generate MAC                            !!00258
*                                                                     !!00259
*       General Support Functions:                                    !!00260
*       --------------------------------------------------------------!!00261
*       NC= Check VSM firmware, processor, and Master Keys            !!00262
*       RA= Cancel authorized state                                   !!00263
*       HE= Encrypt data under the Terminal Communications Key        !!00264
*       HG= Decrypt data using the Terminal Communications Key        !!00265
*       IC= Encrypt the Docutel Test Pattern under a Terminal         !!00266
*           Communications Key                                        !!00267
*   [*] IE= Encrypt the Docutel Test Pattern under a Terminal         !!00268
*           Master Key or Terminal PIN Key                            !!00269
*                                                                     !!00270
*                                                                     !!00271
    02  tran-cde    pic x(2).                                          !00272
                                                                       !00273
*                                                                     !!00274
*   Variable data field(s) (the format varies by tran-cde; only       !!00275
*   those formats currently used by the VSM utilities are             !!00276
*   represented here ... in alphabetical order ... refer to VSM       !!00277
*   documentation for others. Note that unused space within each      !!00278
*   request set is not defined as filler or as userdata.              !!00279
*                                                                     !!00280
    02  var-data    pic x(890).                                        !00281
                                                                       !00282
                                                                       !00282C00
                                                                       !00282C01
    02  a0 redefines var-data.                                         !00282C02
        04  mode            pic x.      ! 0 - Generate key            !
                                        ! 1 - Generate key and encrypt!
                                        ! under ZMK                   !
        04  key-typ         pic x(3).   ! Key type 001 for KPE        !
        04  lmk-key-scheme  pic x.      ! Key length/scheme for       !
                                        ! encrypting key under LMK    !
        04  zmk             pic x(16).  ! Only present if mode = 1    !
        04  zmk-key-scheme  pic x.      ! Key scheme only present if  !
                                        ! mode = 1                    !
        04  atalla-variant  pic 9(1).   ! Optional, for use in systems!
                                        ! with atalla equipment. Only !
                                        ! present if mode = 1         !
                                                                       !00282C0R
                                                                       !00282C0S
    02  aa-ac-ge-kc redefines var-data.                                !00283
        04  xkey    pic x(16).      ! Key to be translated            !!00284
                                                                       !00285
    02  ay redefines var-data.                                         !00286
        04  cvka    pic x(16).      ! CVK A to be translated          !!00287
        04  cvkb    pic x(16).      ! CVK B to be translated          !!00288
                                                                       !00289
    02  ca-cc redefines var-data.                                      !00290
        04  skey    pic x(16).      ! Terminal Key or Working Key     !!00291
        04  dkey    pic x(16).      ! Issuer/Acquirer Working Key     !!00292
        04  maxpin  pic 9(2).       ! Maximum PIN Length (=12)        !!00293
        04  epin    pic 9(16).      ! E.SKEY[ PIN ]                   !!00294
        04  spbt    pic 9(2).       ! Source PIN Block Type           !!00295
        04  dpbt    pic 9(2).       ! Dest.  PIN Block Type           !!00296
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00297
                                                                       !00298
    02  ce    redefines var-data.                                      !00299
        04  idx-flag    pic x(1).   ! VSM identifier "K"              !!00300
        04  dnt-idx     pic x(3).   ! Index location  X'000' to '5FF' !!00301
        04  algo-num    pic x(2).   ! Diebold algorithm number        !!00302
        04  epin        pic x(16).  ! E.LMK/02-03[ PIN ]              !!00303
        04  pan         pic 9(12).  ! rightmost 12 digits of pan      !!00304
        04  valdata     pic x(16).  ! Validation Data                 !!00305
                                                                       !00306
    02  cg-eg redefines var-data.                                      !00307
        04  pkey        pic x(16).  ! PIN Encryption Key              !!00308
        04  idx-flag    pic x(1).   ! VSM identifier "K"              !!00309
        04  dnt-idx     pic x(3).   ! Index location  X'000' to '5FF' !!00310
        04  algo-num    pic x(2).   ! Diebold algorithm number        !!00311
        04  epin        pic x(16).  ! E.PKEY[ PIN ]                   !!00312
        04  pbt         pic 9(2).   ! PIN block type                  !!00313
        04  pan         pic 9(12).  ! Rightmost 12 digits of pan      !!00314
        04  valdata     pic x(16).  ! Validation Data                 !!00315
        04  offset      pic x(4).   ! Diebold offset value            !!00316
                                                                       !00317
                                                                       !00317C00
                                                                       !00317C01
    02  ci  redefines var-data.                                        !00317C02
        04  dkey        pic x(32).  ! Derivation Key E.LMK/28-29      !
        04  skey        pic x(16).  ! E.LMK/06-07                     !
        04  ksn-descr   pic x(3).   ! Descriptor fo the KSN from tran !
        04  ksn         pic x(20).  ! Key Serial Number from tran     !
        04  epin        pic x(16).  ! PIN block from external message !
        04  dpbt        pic 9(2).   ! Destination PIN block           !
        04  pan         pic 9(12).  ! rightmost 12 digits of pan      !
                                                                       !00317C0H
                                                                       !00317B00
    02  cw redefines var-data.                                         !00317B01
        04  cvka        pic x(16).  ! Visa CVK A!                      !00317B02
        04  cvkb        pic x(16).  ! Visa CVK B!                      !00317B03
        04  pan         pic x(25).  ! Variable length account number!  !00317B04
        04  delimiter   pic x(1).   ! Value ";"!                       !00317B05
        04  exp-dat     pic x(4).   ! Card expiration date!            !00317B06
        04  serv-cde    pic x(3).   ! Card service code!               !00317B07
                                                                       !00317B08
    02  cy redefines var-data.                                         !00318
        04  cvka        pic x(16).  ! Visa CVK A                      !!00319
        04  cvkb        pic x(16).  ! Visa CVK B                      !!00320
        04  cvv         pic x(3).   ! CVV encoded on card             !!00321
        04  pan         pic x(25).  ! Variable length account number  !!00322
        04  delimiter   pic x(1).   ! Value ";"                       !!00323
        04  exp-dat     pic x(4).   ! Card expiration date            !!00324
        04  serv-cde    pic x(3).   ! Card service code               !!00325
                                                                       !00326
    02  da-ea redefines var-data.                                      !00327
        04  pkey    pic x(16).      ! PIN Encryption Key              !!00328
        04  pvk     pic x(16).      ! PIN Verification Key            !!00329
        04  maxpin  pic 9(2).       ! Maximum PIN Length (=12)        !!00330
        04  epin    pic x(16).      ! E.PKEY[ PIN ]                   !!00331
        04  pbt     pic 9(2).       ! PIN Block Type                  !!00332
        04  chklen  pic 9(2).       ! PIN Check Length                !!00333
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00334
        04  dectab  pic 9(16).      ! Decimalization Table            !!00335
        04  valdata pic x(12).      ! Validation Data                 !!00336
        04  offset  pic x(12).      ! IBM Offset Value                !!00337
                                                                       !00338
    02  de    redefines var-data.                                      !00339
        04  pvk     pic x(16).      ! PIN Verification Key            !!00340
        04  epin    pic x(16).      ! E.LMK/02-03[ PIN ]              !!00341
        04  chklen  pic 9(2).       ! PIN Check Length                !!00342
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00343
        04  dectab  pic 9(16).      ! Decimalization Table            !!00344
        04  valdata pic x(12).      ! Validation Data                 !!00345
                                                                       !00346
    02  dg    redefines var-data.                                      !00347
        04  pvk1    pic x(16).      ! 1st of 2 PIN Verification Keys  !!00348
        04  pvk2    pic x(16).      ! 2nd of 2 PIN Verification Keys  !!00349
        04  epin    pic x(16).      ! E.LMK/02-03[ PIN ]              !!00350
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00351
        04  pvki    pic 9(1).       ! PIN Verification Key Indicator  !!00352
                                                                       !00353
    02  ec-dc redefines var-data.                                      !00354
        04  pkey    pic x(16).      ! PIN Encryption Key              !!00355
        04  pvk1    pic x(16).      ! 1st of 2 PIN Verification Keys  !!00356
        04  pvk2    pic x(16).      ! 2nd of 2 PIN Verification Keys  !!00357
        04  epin    pic x(16).      ! E.PKEY[ PIN ]                   !!00358
        04  pbt     pic 9(2).       ! PIN Block Type                  !!00359
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00360
        04  pvki    pic 9(1).       ! PIN Verification Key Indicator  !!00361
        04  pvv     pic 9(4).       ! PIN Verification Value          !!00362
                                                                       !00362B00
    02  ee    redefines var-data.                                      !00362B01
        04  pvk     pic x(16).      ! PIN Verification Key!            !00362B02
        04  pofst   pic x(12).      ! PIN offset!                      !00362B03
        04  chklen  pic 9(2).       ! PIN Check Length!                !00362B04
        04  pan     pic 9(12).      ! rightmost 12 digits of pan!      !00362B05
        04  dectab  pic 9(16).      ! Decimalization Table!            !00362B06
        04  valdata pic x(12).      ! Validation Data!                 !00362B07
                                                                       !00362B08
                                                                       !00363
    02  fa-fc-fe redefines var-data.                                   !00364
                                                                       !00365
                                                                       !00366
        04  zcmk    pic x(16).       ! Zone Control Master Key        !!00367
        04  xkey    pic x(16).       ! Key to be translated           !!00368
        04  atalla-variant pic 9(1). ! Optional, for use in systems   !!00369
                                     ! with atalla eqiupment.         !!00370
                                                                       !00371
                                                                       !00372
    02  gc  redefines var-data.                                        !00373
        04  zcmk    pic x(16).       ! Zone Control Master Key        !!00374
        04  xkey    pic x(16).       ! Key to be translated           !!00375
        04  atalla-variant pic 9(1). ! Optional, for use in systems   !!00376
                                     ! with atalla eqiupment.         !!00377
                                                                       !00378
                                                                       !00379
                                                                       !00380
                                                                       !00381
                                                                       !00382
    02  ha redefines var-data.                                         !00383
        04  tmk     pic x(16).      ! E.TMK/14-15[ TMK ]              !!00384
                                                                       !00385
    02  hc redefines var-data.                                         !00386
        04  tmk     pic x(16).      ! E.TMK/14-15[ TMK ]              !!00387
                                                                       !00388
    02  ia redefines var-data.                                         !00389
        04  zcmk    pic x(16).       ! Zone Control Master Key        !!00390
        04  atalla-variant pic 9(1). ! Optional, for use in systems   !!00391
                                     ! with atalla equipment          !!00392
                                                                       !00393
                                                                       !00394
    02  ic-ie redefines var-data.                                      !00395
        04  tpk     pic x(16).      ! E.TMK/14-15[ TPK ]              !!00396
                                                                       !00396B00
    02  ja    redefines var-data.                                      !00396B01
        04  pan     pic 9(12).      ! rightmost 12 digits of pan!      !00396B02
                                                                       !00396B03
                                                                       !00397
    02  jc    redefines var-data.                                      !00398
        04  tkey    pic x(16).      ! Terminal/working key            !!00399
        04  epin    pic 9(16).      ! E.TKEY[ PIN ]                   !!00400
        04  pbt     pic 9(2).       ! Pin Block Type                  !!00401
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00402
                                                                       !00403
    02  je    redefines var-data.                                      !00404
        04  skey    pic x(16).      ! E.LMK/06-07[ ZWK ] (store)      !!00405
        04  epin    pic 9(16).      ! E.ZWK[ PIN ]                    !!00406
        04  pbt     pic 9(2).       ! Pin Block Type                  !!00407
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00408
                                                                       !00409
    02  ka redefines var-data.                                         !00410
        04  xkey       pic x(16).   ! Key to be translated            !!00411
        04  key-type   pic x(2).    ! Key type identifier             !!00412
                                                                       !00413
                                                                       !00414
    02  la redefines var-data.                                         !00415
        04  idx-flag    pic x(1).   ! VSM identifier "K"              !!00416
        04  dnt-idx     pic x(3).   ! Index location X '000' to '5FF' !!00417
        04  block-count pic x(2).   ! Number of 16 byte blocks to load!!00418
        04  dnt         pic x(512). ! VSM encrypted Diebold num table !!00419
                                                                       !00420
    02  lc redefines var-data.                                         !00421
        04  idx-flag    pic x(1).   ! VSM identifier "K"              !!00422
        04  dnt-idx     pic x(3).   ! Index location X '000' to '5FF' !!00423
                                                                       !00424
    02  mg  redefines var-data.                                        !00425
        04  zmk     pic x(16).       ! E.LMK/04-05 [ ZMK ]            !!00426
        04  tak     pic x(16).       ! E.LMK/16-17 [ TAK ]            !!00427
        04  atalla-variant pic 9(1). ! Optional, for use in systems   !!00428
                                     ! with atalla equipment          !!00429
                                                                       !00430
    02  mi  redefines var-data.                                        !00431
        04  zmk     pic x(16).       ! E.LMK/04-05 [ ZMK ]            !!00432
        04  tak     pic x(16).       ! E.ZMK [ TAK ]                  !!00433
        04  atalla-variant pic 9(1). ! Optional, for use in systems   !!00434
                                     ! with atalla equipment          !!00435
                                                                       !00436
    02  mk    redefines var-data.                                      !00437
        04  tak     pic x(16).      ! Terminal Key                    !!00438
        04  len     pic x(3).       ! Data length (in Hex)            !!00439
        04  data    pic x(800).     ! Data to be MACed                !!00440
                                                                       !00441
    02  mm    redefines var-data.                                      !00442
        04  tak     pic x(16).      ! Terminal Key                    !!00443
        04  mac     pic x(8).       ! The MAC to be verified          !!00444
        04  len     pic x(3).       ! Data length (in Hex)            !!00445
        04  data    pic x(800).     ! Data to be MACed                !!00446
                                                                       !00446B00
    02  pa    redefines var-data.                                      !00446B01
        04  data    pic x(800).     ! print format!                    !00446B02
                                                                       !00446B03
    02  pe    redefines var-data.                                      !00446B04
        04  type    pic x.          ! document type!                   !00446B05
        04  pan     pic 9(12).      ! rightmost 12 digits of pan!      !00446B06
        04  pin     pic x(16).      ! E.LMK/02-03[ PIN ]!              !00446B07
        04  data    pic x(800).     ! print data!                      !00446B08
                                                                       !00446B09
                                                                       !00447
    02  sc    redefines var-data.                                      !00448
        04  tak     pic x(16).      ! Terminal Key                    !!00449
        04  skey    pic x(16).      ! Terminal Key or Working Key     !!00450
        04  dkey    pic x(16).      ! Issuer/Acquirer Working Key     !!00451
        04  maxpin  pic 9(2).       ! Maximum PIN Length (=12)        !!00452
        04  epin    pic 9(16).      ! E.SKEY[ PIN ]                   !!00453
        04  spbt    pic 9(2).       ! Source PIN Block Type           !!00454
        04  dpbt    pic 9(2).       ! Dest.  PIN Block Type           !!00455
        04  pan     pic 9(12).      ! rightmost 12 digits of pan      !!00456
        04  pinflg  pic 9(1).       ! "0" - exclude PIN from MAC      !!00457
                                    ! "1" - include PIN in MAC        !!00458
        04  chartyp pic 9(1).       ! for the PIN  "0" - ASCII        !!00459
                                    !              "1" - EBCDIC       !!00460
        04  dataptr pic x(3).       ! where to insert the PIN in      !!00461
                                    ! the MAC data                    !!00462
        04  len     pic x(3).       ! Data length (in Hex)            !!00463
        04  data    pic x(800).     ! Data to be MACed                !!00464
                                                                       !00465
*                                                                     !!00466
*   Echo-back user data field:                                        !!00467
*                                                                     !!00468
    02  echo-back   pic x(32).                                         !00469
                                                                       !00470
*                                                                     !!00471
*   End of Text:                                                      !!00472
*                                                                     !!00473
    02  etx         pic x(1).                                          !00474
                                                                       !00475
end                                                                    !00476
                                                                       !00477
?section vsmrsp
?page   "VSMRSP - Visa Security Module Response"
!#####################################################################!!00482
!#                                                                   #!!00483
!#  VSMRSP:  This is the message format for all responses from a VSM #!!00484
!#                                                                   #!!00485
!#####################################################################!!00486
                                                                       !00487
def vsmrsp.                                                            !00488
*                                                                     !!00489
*   Start of Text:                                                    !!00490
*                                                                     !!00491
    02  stx         pic x(1).                                          !00492
                                                                       !00493
*                                                                     !!00494
*   Host-assigned user header:                                        !!00495
*                                                                     !!00496
    02  hdr         pic x(4).                                          !00497
                                                                       !00498
*                                                                     !!00499
*   Transaction Code (determines function was performed by VSM; in    !!00500
*   general, this is the same as VSMREQ.TRAN-CDE, except the second   !!00501
*   character is incremented by one.  EG, if the request tran-cde was !!00502
*   'CC' then the response tran-cde would be 'CD'):                   !!00503
*                                                                     !!00504
    02  tran-cde    pic x(2).                                          !00505
*                                                                     !!00506
*   Return Code:                                                      !!00507
*                                                                     !!00508
*       00= No Error                                                  !!00509
*       01= PINs do not match, or, input working key parity error     !!00510
*           or MAC not verified, key synchromization error            !!00511
*       10= Source key parity error                                   !!00512
*       11= Destination key parity error                              !!00513
*       12= No keys loaded, or keys not available after PIN           !!00514
*           solicitation data loaded to VSM via QA or QC transaction  !!00515
*       13= Master Key parity error                                   !!00516
*       14= PIN from host database is invalid                         !!00517
*       15= Invalid input data (invalid format, invalid characters, or!!00518
*           not enough data provided)                                 !!00519
*       16= Terminal not ready                                        !!00520
*       17= VSM not in authorized state, and/or not enabled for       !!00521
*           clear PIN output                                          !!00522
*       18= Document format definition not loaded                     !!00523
*       19= Specified Diebold Table is invalid                        !!00524
*       20= PIN block does not contain valid values                   !!00525
*       21= Invalid index value, or index/block count would cause     !!00526
*           an overflow condition                                     !!00527
*       22= Invalid account number                                    !!00528
*       23= Invalid PIN block format code                             !!00529
*       24= PIN is < 4 or > 12 digits                                 !!00530
*       25= TAK/ZAK Parity Error                                      !!00531
*       30= Invalid reference number                                  !!00532
*       31= Insufficient entries for batch                            !!00533
*       32= Cryptographic check of PIN and reference number failed    !!00534
*       40= Invalid PROM checksum                                     !!00535
*       41= Internal hardware/software error (bad RAM, etc)           !!00536
*       80= Data length error                                         !!00537
*                                                                     !!00538
    02  resp-cde    pic x(2).                                          !00539
                                                                       !00540
*                                                                     !!00541
*   Variable data field(s) (the format varies by tran-cde; only       !!00542
*   those formats currently used by the VSM utilities are             !!00543
*   represented here ... in alphabetical order ... refer to VSM       !!00544
*   documentation for others. Note that unused space within each      !!00545
*   request should NOT be defined as filler or as userdata.           !!00546
*                                                                     !!00547
                                                                       !00548
    02  var-data    pic x(48).                                         !00549
                                                                       !00550
                                                                       !00550C00
    02  a1 redefines var-data.                                         !00550C01
        04  skey         pic x(16). ! E.LMK / 06-07 [ZWK] (store)     !
        04  dkey         pic x(16). ! E.ZMK (distribution)            !
                                    ! only present if mode = 1        !
        04  check-value  pic x(6).                                     !00550C08
                                                                       !00550C09
                                                                       !00550C0A
    02  ab-ad-gf-kd redefines var-data.                                !00551
        04  xkey    pic x(16).      ! Translated key                  !!00552
                                                                       !00553
    02  az redefines var-data.                                         !00554
        04  cvka    pic x(16).      ! Translated CVK A                !!00555
        04  cvkb    pic x(16).      ! Translated CVK B                !!00556
                                                                       !00557
    02  cb-cd redefines var-data.                                      !00558
        04  pinlen  pic 9(2).       ! Length of returned PIN          !!00559
        04  epin    pic x(16).      ! E.DKEY[ PIN ]                   !!00560
        04  dpbt    pic 9(2).       ! Dest. PIN Block Type            !!00561
                                                                       !00562
    02  cf    redefines var-data.                                      !00563
        04  offset  pic X(12).      ! Diebold offset value            !!00564
                                                                       !00564C00
                                                                       !00564C01
    02  cj  redefines var-data.                                        !00564C02
        04  pinlen  pic 9(2).       ! Length of returned PIN          !
        04  epin    pic x(16).      ! E.KEY[ PIN ]                    !
        04  dpbt    pic 9(2).       ! Destination PIN block type      !
                                                                       !00564C09
                                                                       !00564C0A
                                                                       !00564B00
    02  cx    redefines var-data.                                      !00564B01
        04  cvv     pic X(3).       ! Visa CVV value!                  !00564B02
                                                                       !00564B03
                                                                       !00565
    02  df    redefines var-data.                                      !00566
        04  offset  pic X(12).      ! IBM offset value                !!00567
                                                                       !00568
    02  dh    redefines var-data.                                      !00569
        04  offset  pic X(12).      ! Visa PVV value                  !!00570
                                                                       !00570B00
    02  ef    redefines var-data.                                      !00570B01
        04  pin    pic x(16).       ! E.LMK/02-03[ PIN ]!              !00570B02
                                                                       !00570B03
                                                                       !00571
    02  fb-fd-ff redefines var-data.                                   !00572
        04  xkey    pic x(16).      ! Translated key                  !!00573
                                                                       !00574
        04  check-value pic x(16).  ! Result of encrypting 64 binary  !!00575
                                    ! zeroes with the ZPK.            !!00576
                                                                       !00576B00
    02  gb  redefines var-data.                                        !00576B01
        04  pin     pic x(16).      ! pin encrypted under LMK pair!    !00576B02
                                    ! 02-03!                           !00576B03
                                                                       !00576B04
                                                                       !00577
                                                                       !00578
    02  gd  redefines var-data.                                        !00579
        04  xkey    pic x(16).      ! Translated key                  !!00580
        04  check-value pic x(16).                                     !00581
                                                                       !00582
                                                                       !00583
    02  hb redefines var-data.                                         !00584
        04  etak    pic x(16).      ! E.TMK [TAK] (distribution)      !!00585
        04  tak     pic x(16).      ! E.LMK/16-17 [TAK] (storage)     !!00586
                                                                       !00587
    02  hd redefines var-data.                                         !00588
        04  etpk    pic x(16).      ! E.TMK      [ TPK ]              !!00589
        04  tpk     pic x(16).      ! E.TMK/14-15[ TPK ]              !!00590
                                                                       !00591
    02  ib redefines var-data.                                         !00592
        04  dkey    pic x(16).      ! E.ZMK[ ZWK ] (distribution)     !!00593
        04  skey    pic x(16).      ! E.LMK/06-07[ ZWK ] (store)      !!00594
        04  check-value  pic x(16). ! Results of encrypting 64        !!00595
                                    ! binary zeros with the ZWK       !!00596
                                                                       !00597
                                                                       !00598
    02  id-if redefines var-data.                                      !00599
        04  vc     pic x(16).       ! E.TPK[ VC ]                     !!00600
                                                                       !00601
    02  jd    redefines var-data.                                      !00602
        04  epin   pic x(16).       ! E.LMK/02-03[ PIN ]              !!00603
                                                                       !00604
    02  jf    redefines var-data.                                      !00605
        04  epin   pic x(16).       ! E.LMK/02-03[ PIN ]              !!00606
                                                                       !00607
    02  kb redefines var-data.                                         !00608
        04  check-value   pic x(16). ! Result of encrypting 64 binary !!00609
                                     ! zeros with the ZPK.            !!00610
                                                                       !00611
    02  mh redefines var-data.                                         !00612
        04  tak           pic x(16). ! E.ZMK [ TAK ]                  !!00613
        04  check-value   pic x(16). ! Result of encrypting 64 binary !!00614
                                     ! zeros with the TAK.            !!00615
                                                                       !00616
    02  mj redefines var-data.                                         !00617
        04  tak           pic x(16). ! E.LMK/16-17 [ TAK ]            !!00618
        04  check-value   pic x(16). ! Result of encrypting 64 binary !!00619
                                     ! zeros with the TAK.            !!00620
                                                                       !00621
    02  ml    redefines var-data.                                      !00622
        04  mac    pic x(8).        ! The computed MAC                !!00623
                                                                       !00623B00
    02  pf    redefines var-data.                                      !00623B01
        04  pin-ref pic 9(16).      ! The cryptographic check on the!  !00623B02
                                    ! PIN and solicitation reference!  !00623B03
                                    ! number!                          !00623B04
                                                                       !00623B05
                                                                       !00624
    02  sd    redefines var-data.                                      !00625
        04  pinlen  pic 9(2).       ! Length of returned PIN          !!00626
        04  epin    pic x(16).      ! E.ZPK[ PIN ]                    !!00627
        04  mac     pic x(8).       ! The computed MAC                !!00628
                                                                       !00629
                                                                       !00630
*                                                                     !!00631
*   Echo-back user data field:                                        !!00632
*                                                                     !!00633
    02  echo-back   pic x(32).                                         !00634
                                                                       !00635
*                                                                     !!00636
*   End of Text:                                                      !!00637
*                                                                     !!00638
    02  etx         pic x(1).                                          !00639
                                                                       !00640
end                                                                    !00641
