**FIX2.28  12/22/09  DDLFPRDF6007 DDL    PS60DDL  PS0D303  G                 ***
**FIX2.28  12/03/08  DDLFPRDF6006 DDL    PS60DDL  PS0C308  F                 ***
**FIX2.28  11/23/06  DDLFPRDF6005 DDL    PS60DDL  PS0A301  E                 ***
**FIX2.23  11/15/03  DDLFPRDF6004 DDL    PS60DDL  PS07166  D                 ***
**FIX2.23  11/11/03  DDLFPRDF6003 DDL    PS60DDL  PS07084  C                 ***
**FIX2.14  03/22/01  DDLFPRDF6002 DDL    PS60DDL  PS04139  B                 ***
**FIX2.11  01/02/01  DDLFPRDF6001 DDL    PS60DDL  PS04097  A                 ***
!*SEQ0.04  11/01/00  DDLFPRDF6000 DDL    PS60DDL    04000                      !
!*SYNC.04  12/08/98  DDLFPRDF5300 DDL    PS53DDL    04000                      !
!*SYNC.03  08/28/98  DDLFPRDF5300 DDL    PS53DDL    03000                      !
!*SYNC.03  08/22/97  DDLFPRDF5100 DDL    PS51DDL    03000                      !
!*SYNC.02  06/25/96  DDLFPRDF5100 DDL    PS51DDL    02000                      !
!*SEQ2.00  01/26/93  DDLFPRDF5100 DDL    PS51DDL                               !
?PAGE "PRDF - POS Retailer Definition File"
?section prdf-history
                                                                       !00000G00
********************************************************************** !00000G01
*                                                                    * !00000G02
*                            BASE24-pos                              * !00000G03
*                            ----------                              * !00000G04
*                                                                    * !00000G05
*           DDL for the BASE24-pos Retailer Definition File          * !00000G06
*                                                                    * !00000G07
*                   Proprietary Software Product                     * !00000G08
*                                                                    * !00000G09
*                        ACI Worldwide, Inc.                         * !00000G0A
*                        6060 Coventry Drive                         * !00000G0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000G0C
*                          (402) 390-7600                            * !00000G0D
*                                                                    * !00000G0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000G0F
*                                                                    * !00000G0G
*    All Rights Reserved.                                            * !00000G0H
*                                                                    * !00000G0I
********************************************************************** !00000G0J
                                                                       !00000G0K
                                                                       !00000G0L
                                                                       !00000G0M
                                                                       !00000G0N
*                                                                      !00000A0S
* Record of Changes:                                                   !00000A0T
*                                                                      !00000A0U
* Date        Person/Emp #                                             !00000A0V
* ----------  ------------                                             !00000A0W
                                                                       !00000A0X
                                                                       !00005D00
                                                                       !00005D01
                                                                       !00005D02
*****************************************************************     !!00024
*                        RELEASE 5.0                            *     !!00025
*****************************************************************     !!00026
* 1/4/93         Release 5.0 Design Team                        !     !!00027
* --------       -----------------------                        !     !!00028
* SYMPTOM:       BASE24-pos Release 5.0 Enhancements            !     !!00029
* PROBLEM:       (E) None                                       !     !!00030
* FIX:           1. Change the following fields:                !     !!00031
*                   RTLF-NAME --->   USER-FLD7                  !     !!00032
*                   RTLF-NUM  --->   USER-FLD8                  !     !!00033
*                   RTLF-FLG  --->   USER-FLD9                  !     !!00034
*                2. Added the following fields for the check    !     !!00035
*                   authorization enhancement by redefining     !     !!00036
*                   USER-FLD7:                                  !     !!00037
*                   CHK-RTG-GRP                                 !     !!00038
*                   CHK-MRCHNT-ID                               !     !!00039
*                   Added the following field for the check     !     !!00040
*                   authorization enhancement:                  !     !!00041
*                   CHK-PROVIDER                                !     !!00042
*                3. Added another address field for a second    !     !!00043
*                   line of address information, ADDR-EXT.      !     !!00044
*                4. Redefined the SRV struct to be SRV-INFO.    !     !!00045
*                   It contains information on the alternate    !     !!00046
*                   merchant ids.  Also added were informational!     !!00047
*                   fields for SRV-INFO:  NUM-ALT-MRCHNT and    !     !!00048
*                   SRV-INFO-LGTH.                              !     !!00049
*                5. Added MAIL-PO-SIC-CDE.  Adjusted USER-FLD4. !     !!00050
*                6. Combined USER-FLD3, USER-FLD7, USER-FLD8    !     !!00051
*                   and USER-FLD9 with USER-FLD6.               !     !!00052
*                7. Increased RETAILER.CITY from 13 bytes to    !     !!00053
*                   18 bytes.                                   !     !!00054
* DEPENDENCIES:  Re-compile DDLS and those processes that       !     !!00055
*                require DDLFPRDF.  Refer to Release 5.0        !     !!00056
*                Installation Documentation for further         !     !!00057
*                details.                                       !     !!00058
* REFERENCES:    BASE24-pos Release 5.0 External Specifications !     !!00059
*                - POS Cutover                                  !     !!00060
*                - Check Authorization                          !     !!00061
*                - POS General Enhancements                     !     !!00062
*                - AMEX Data Collection                         !     !!00063
*                                                               !    |!!00064
                                                                       !00064A00
*********************************************************************  !00064A01
*            Release 6.0                                            *  !00064A02
*********************************************************************  !00064A03
* 30NOV2000   JAS/497                                                  !00064A04
* Symptom:    Release 6.0 Enhancements                                 !00064A05
* Problem:    None.                                                    !00064A06
* Fix:        Added RTLR-TXN-PRFL and ACQ-TXN-PRFL fields.             !00064A07
*             Removed the ADMIN-TRANS field.                           !00064A08
*             Added USER-FLD3 for 16 bytes.                            !00064A09
* Dependency: Restore Release 6.0 files, modify the appropriate        !00064A0A
*             CUSTMACS flags, and run MAKE.                            !00064A0B
* Reference:  WO #981118-3 (Transactions Allowed)                      !00064A0C
                                                                       !00064C00
                                                                       !00064C01
                                                                       !00064C02
* 30MAR2001   CDM/633                                                  !00065B03
* Symptom:    Release 6.0 Enhancements                                 !00065B04
* Problem:    None.                                                    !00065B05
* Fix:        - Added AST-PRFL to incorporate UK Infrastructure.       !00065B06
*             - Added USER-FLD-ACI, USER-FLD-REGN, and USER-FLD-CUST.  !00065B07
* Dependency: Restore Release 6.0 files, modify the appropriate        !00065B08
*             CUSTMACS flags, and run MAKE.                            !00065B09
* Reference:  WO #000101-1 (General Release 6.0)                       !00065B0A
                                                                       !00065C03
* 15OCT2003   jfu/543                                                  !00065C04
* Symptom:    SPDH Additional Data Fields                              !00065C05
* Problem:    None                                                     !00065C06
* Fix:        Added EMV-CAPABLE field and reduced USER-FLD-ACI by      !00065C07
*             1 byte.                                                  !00065C08
* Dependency: Apply fix to DDLFPRDF and run Make.  Refer to            !00065C09
*             BA60UD07.SCNSADF for a complete listing of dependencies. !00065C0A
* Reference:  WO #001109-02                                            !00065C0B
                                                                       !00065C0C
                                                                       !00065D00
* 10NOV2003   jfu/543                                                  !00065D01
* Symptom:    Misleading comments for the acquirer tranaction profile  !00065D02
*             field.                                                   !00065D03
* Problem:    Same as symptom.                                         !00065D04
* Fix:        Modified the comments for the acquirer transaction       !00065D05
*             profile field.                                           !00065D06
*             Removed history sections prior to release 5.0.           !00065D07
* Dependency: Apply fix to DDLFPRDF and run Make.                      !00065D08
* Reference:  Case #349107                                             !00065D09
                                                                       !00065D0A
                                                                       !00065E00
* 14OCT2006   bartond                                                  !00065E01
* Symptom:    AMEX SE Number Additional Validation Enhancement         !00065E02
* Problem:    None.                                                    !00065E03
* Fix:        Added SRV-EST-NUM-CHK field and reduced USER-FLD-ACI     !00065E04
*             by 1 byte.                                               !00065E05
* Dependency: Apply fix to DDLFPRDF and run Make.                      !00065E06
*             Refer to BA60UD0A.SCNAXSE for a complete listing of      !00065E07
*             dependencies.                                            !00065E08
* Reference:  WO #051128-05                                            !00065E09
                                                                       !00065E0A
                                                                       !00065F00
* 17OCT2008   BhattaD                                                  !00065F01
* Symptom:    Support Additional Flexibility in EMV Processing.        !00065F02
* Problem:    None.                                                    !00065F03
* Fix:        Added EMV-DELAYED-AUTH-SPPT field and reduced            !00065F04
*             USER-FLD-ACI by 1 byte.                                  !00065F05
* Dependency: Apply fix to DDLFPRDF and run Make. Refer to             !00065F06
*             BA60UD0C.SCNFLEX for a complete listing of dependencies. !00065F07
* Reference:  WO #080102-02                                            !00065F08
                                                                       !00065F09
                                                                       !00065G00
* 06NOV2009   DebS                                                     !00065G01
* Symptom:    Network 2008 Mandates for POS Acquiring.                 !00065G02
* Problem:    None.                                                    !00065G03
* Fix:        Added a new field AUTH-PARTIAL-AMT to support partial    !00065G04
*             authorization and thereby reduced the size of the        !00065G05
*             USER-FLD-ACI by 1 byte.                                  !00065G06
* Dependency: Apply fix to DDLFPRDF and run Make.                      !00065G07
*             Refer to BA60UD0D.SCNNETM for a complete listing of      !00065G08
*             dependencies.                                            !00065G09
* Reference:  WO #080605-01                                            !00065G0A
                                                                       !00065G0B
*********************************************************************  !00065B0B
                                                                       !00065B0C
?page "PRDF - BASE24-pos Retailer Definition File"
?SECTION PRDF
                                                                       !00065B0H
                                                                       !00065A05
*#####################################################################!!00066
*#                        Retailer Definition File                   #!!00067
*#####################################################################!!00068
                                                                       !00068A00
*********************************************************************  !00068A01
*                                                                   *  !00068A02
*   Identification                                                  *  !00068A03
*                                                                   *  !00068A04
*     The PRDF contains one record for each merchant in the         *  !00068A05
*     logical network controlled by the BASE24 network.  Each       *  !00068A06
*     record contains information about a merchant for use in       *  !00068A07
*     validating POS transactions.                                  *  !00068A08
*                                                                   *  !00068A09
*   Security                                                        *  !00068A0A
*                                                                   *  !00068A0B
*     The PRDF is secured under Tandem's group level security so    *  !00068A0C
*     only authorized network operators may access (or start        *  !00068A0D
*     programs which access) the file.                              *  !00068A0E
*                                                                   *  !00068A0F
*       USER ID         = <BASE24 node name>.*                      *  !00068A0G
*       FILE CODE       = 0                                         *  !00068A0H
*       ACCESS SECURITY = GGGG                                      *  !00068A0I
*                                                                   *  !00068A0J
*   Usage                                                           *  !00068A0K
*                                                                   *  !00068A0L
*       DH/Router         I    Random (Primary)           Shared    *  !00068A0M
*       File Maintenance  I/O  Random (Primary)           Shared    *  !00068A0N
*                                                                   *  !00068A0O
*********************************************************************  !00068A0P
                                                                       !00068A0Q
                                                                       !00069A00
                                                                       !00069A01
                                                                       !00069A02
                                                                       !00096
?comments
*                                                                     !!00099
*             The POS Retailer Definition File (PRDF) contains one    !!00100
*             record for each retailer participating in the BASE24-   !!00101
*             pos system.  Each record contains information about the !!00102
*             retailer which is used by the system to validate POS    !!00103
*             transactions.                                           !!00104
*                                                                     !!00105
*             The following information is included in each record:   !!00106
*             settlement parameters, cutover times, card types        !!00107
*             accepted by the retailer, services offered by the       !!00108
*             retailer, whether credit card transactions are checked  !!00109
*             against the national negative card files before being   !!00110
*             routed to an interchange, and the types of reports to   !!00111
*             be created for the retailer.                            !!00112
*                                                                     !!00113
*             The PRDF also contains two fields that are used         !!00114
*             exclusively by financial institutions that have         !!00115
*             incorporated BASE24-pos CRT Authorization into their    !!00116
*             facility.  These are the DEBIT-SUPPORT-FLG and the DFT- !!00117
*             CAPTURE-FLG.                                            !!00118
*                                                                     !!00119
*             The following pages describe the fields included in a   !!00120
*             PRDF record.                                            !!00121
*                                                                     !!00122
*             LCONF ASSIGN:       POS-PRDF                            !!00123
*                                                                     !!00124
RECORD PRDF.  FILE IS "PRDF" KEY-SEQUENCED.                            !00125
                                                                       !00126
                                                                       !00127
  02 RKEY                        KEYTAG "AA" duplicates not allowed.   !00128
                                                                       !00129
                                                                       !00130
*                                                                     !!00131
*             The FIID, as defined in the Institution Definition File !!00132
*             (IDF), of the financial institution with which this     !!00133
*             retailer is associated.  The FIID is an identifier that !!00134
*             must be unique within the logical network.              !!00135
*                                                                     !!00136
     04 FIID                     TYPE *.                               !00137
                                                                       !00138
                                                                       !00139
*                                                                     !!00140
*             The retailer group to which this retailer belongs. The  !!00141
*             value in this field is optionally used to group         !!00142
*             retailers for reporting purposes.  When used, this      !!00143
*             value must match the value in the TERM-OWNER.RETAILER-  !!00144
*             GRP field in the PTDF records for this retailer's       !!00145
*             terminals.                                              !!00146
*                                                                     !!00147
     04 GRP                      PIC X(4).                             !00148
                                                                       !00149
                                                                       !00150
*                                                                     !!00151
*             The region group to which this retailer belongs.  The   !!00152
*             value in this field is optionally used to group         !!00153
*             retailers by region for reporting purposes.  When used, !!00154
*             this value must match the value in the TERM-            !!00155
*             OWNER.RETAILER-REGN field in the PTDF records for this  !!00156
*             retailer's terminals.                                   !!00157
*                                                                     !!00158
     04 REGN                     TYPE *.                               !00159
                                                                       !00160
                                                                       !00161
*                                                                     !!00162
*             A unique identifier, retailer ID, used to represent     !!00163
*             this retailer throughout the BASE24 system.  This       !!00164
*             identifier is to a retailer what an FIID is to an       !!00165
*             institution.  The value in this field is the primary    !!00166
*             key to this file.                                       !!00167
*                                                                     !!00168
     04 RETAILER-ID              PIC X(19) keytag 0.                   !00169
                                                                       !00170
*                                                                     !!00171
*             The values in the following fields are used to further  !!00172
*             define the retailer and the environment in which the    !!00173
*             retailer operates.                                      !!00174
*                                                                     !!00175
  02 RETAILER.                                                         !00176
                                                                       !00177
                                                                       !00178
*                                                                     !!00179
*             The name of the retailer defined in this record.        !!00180
*                                                                     !!00181
     04 NAME                     PIC X(40).                            !00182
                                                                       !00183
                                                                       !00184
*                                                                     !!00185
*             The address of the retailer defined in this record.     !!00186
*                                                                     !!00187
     04 ADDR                     PIC X(25).                            !00188
                                                                       !00189
*                                                                     !!00190
*             The second line of the address of the retailer          !!00191
*             defined in this record.                                 !!00192
*                                                                     !!00193
     04 ADDR-EXT                 PIC X(25).                            !00194
                                                                       !00195
*                                                                     !!00196
*             The city in which the retailer defined in this record   !!00197
*             is located.                                             !!00198
*                                                                     !!00199
     04 CITY                     PIC X(18).                            !00200
                                                                       !00201
                                                                       !00202
                                                                       !00203
*                                                                     !!00204
*             The county in which the retailer defined in this record !!00205
*             is located.                                             !!00206
*                                                                     !!00207
     04 CNTY                     PIC X(3).                             !00208
                                                                       !00209
                                                                       !00210
*                                                                     !!00211
*             The postal ZIP code corresponding to the location of    !!00212
*             the retailer defined in this record.                    !!00213
*                                                                     !!00214
     04 POSTAL-CDE               PIC X(10).                            !00215
                                                                       !00216
*                                                                     !!00217
*             Reserved for future use.                                !!00218
*                                                                     !!00219
     04 USER-FLD2                PIC X(2).                             !00220
                                                                       !00221
                                                                       !00222
                                                                       !00223
                                                                       !00224
                                                                       !00225
                                                                       !00226
*                                                                     !!00227
*             The state in which the retailer defined in this record  !!00228
*             is located.                                             !!00229
*                                                                     !!00230
     04 ST                       PIC X(3).                             !00231
                                                                       !00232
                                                                       !00233
*                                                                     !!00234
*             The country in which the retailer defined in this       !!00235
*             record is located.                                      !!00236
*                                                                     !!00237
     04 CNTRY                    PIC X(2).                             !00238
                                                                       !00239
                                                                       !00240
*                                                                     !!00241
*             The Route Transit Number, transit/routing number, or    !!00242
*             issuer identification number of the retailer defined in !!00243
*             this record.  This field is currently not used.         !!00244
*                                                                     !!00245
     04 RTTN                     TYPE ID-NUM.                          !00246
                                                                       !00247
*                                                                     !!00248
*             Reserved for future use.                                !!00249
*                                                                     !!00250
     04 USER-FLD1                PIC XX.                               !00251
                                                                       !00252
                                                                       !00253
*                                                                     !!00254
*             The account number at the retailer's financial          !!00255
*             institution for the retailer defined in this record.    !!00256
*                                                                     !!00257
     04 ACCT                     TYPE ACCT.                            !00258
                                                                       !00259
                                                                       !00260
*                                                                     !!00261
*             The telephone number of the retailer defined in this    !!00262
*             record.                                                 !!00263
*                                                                     !!00264
     04 PHONE                    TYPE PHONE-NUM.                       !00265
                                                                       !00266
                                                                       !00267
*                                                                     !!00268
*             The after-hours telephone number of the retailer        !!00269
*             defined in this record.                                 !!00270
*                                                                     !!00271
     04 AFT-HRS-PHONE            TYPE PHONE-NUM.                       !00272
                                                                       !00273
                                                                       !00274
*                                                                     !!00275
*             The service establishment number assigned by American   !!00276
*             Express to the retailer defined in this record.  This   !!00277
*             field is currently not used.                            !!00278
*                                                                     !!00279
     04 SRV-EST-NUM              PIC 9(10).                            !00280
                                                                       !00281
                                                                       !00282
*                                                                     !!00283
*             The Standard Industrial Classification (SIC) code       !!00284
*             indicating the retailer's line of business.  This       !!00285
*             code pertains to all transactions other than mail/      !!00286
*             phone order transactions.                               !!00287
*                                                                     !!00288
     04 SIC-CDE                  PIC 9(4).                             !00289
                                                                       !00290
                                                                       !00291
*                                                                     !!00292
*             The telephone number used by the retailer to call in    !!00293
*             referral authorization requests.  These referral calls  !!00294
*             are received by a CRT operator who incorporates the     !!00295
*             BASE24-pos CRT Authorization facility to approve or     !!00296
*             deny the transaction requests.                          !!00297
*                                                                     !!00298
     04 RFRL-PHONE               TYPE PHONE-NUM.                       !00299
                                                                       !00300
                                                                       !00301
*                                                                     !!00302
*             Information that may be required for Automated          !!00303
*             Clearinghouse (ACH) processing of transactions from this!!00304
*             retailer.  Any information entered in this field is     !!00305
*             merely passed along by BASE24-pos; it in no way affects !!00306
*             BASE24-pos processing.                                  !!00307
*                                                                     !!00308
     04 ACH-COMPANY-ID           PIC X(10).                            !00309
                                                                       !00310
                                                                       !00311
                                                                       !00312
                                                                       !00313
*                                                                     !!00314
*             A code used to determine whether transactions can be    !!00315
*             performed through BASE24-pos CRT Authorization using    !!00316
*             debit cards.  The value in this field is used           !!00317
*             exclusively with BASE24-pos CRT Authorization.  Valid   !!00318
*             values are:                                             !!00319
*                                                                     !!00320
*             N = No, do not support transactions performed with      !!00321
*                 debit cards through CRT Authorization.              !!00322
*             Y = Yes, support transactions performed with debit      !!00323
*                 cards through CRT Authorization.                    !!00324
*                                                                     !!00325
  02 DEBIT-SUPPORT-FLG           PIC X.                                !00326
                                                                       !00327
*                                                                     !!00328
*             The retailer's previous reporting (posting) date        !!00329
*             (YYMMDD).                                               !!00330
*                                                                     !!00331
  02 PRE-POST-DAT                TYPE BINARY 32.                       !00332
*                                                                     !!00333
*             The retailer's current reporting (posting) date         !!00334
*             (YYMMDD).                                               !!00335
*                                                                     !!00336
  02 CUR-POST-DAT                TYPE BINARY 32.                       !00337
*                                                                     !!00338
*             The retailer's next reporting (posting) date (YYMMDD).  !!00339
*                                                                     !!00340
  02 NXT-POST-DAT                TYPE BINARY 32.                       !00341
                                                                       !00342
                                                                       !00343
*                                                                     !!00344
*             The POS balancing and settlement window start time      !!00345
*             (HHMM) for the retailer.                                !!00346
*                                                                     !!00347
  02 RETAILER-BAL-AND-CUTVR-STRT  TYPE BINARY 16.                      !00348
                                                                       !00349
                                                                       !00350
*                                                                     !!00351
*             The POS balancing and settlement window end time (HHMM) !!00352
*             for the retailer.                                       !!00353
*                                                                     !!00354
  02 RETAILER-BAL-AND-CUTVR-END TYPE BINARY 16.                        !00355
                                                                       !00356
                                                                       !00357
*                                                                     !!00358
*             A code identifying the retailer program(s) in which     !!00359
*             this retailer participates.  Valid values are:          !!00360
*                                                                     !!00361
*             A = AID (MasterCard)                                    !!00362
*             B = TIRF & AID                                          !!00363
*             N = Non-dial                                            !!00364
*             R = Regular (default)                                   !!00365
*             T = TIRF (VISA)                                         !!00366
*             W = Pre-existing qualified Interlink supermarket        !!00367
*             X = Pre-existing Interlink merchant                     !!00368
*             Y = Qualified Interlink supermarket                     !!00369
*             Z = All programs                                        !!00370
*             0 = No program                                          !!00371
*                                                                     !!00372
  02 RETAILER-PROG               PIC X.                                !00373
                                                                       !00374
                                                                       !00375
*                                                                     !!00376
*             A code identifying the method by which the retailer     !!00377
*             settles transactions.  Valid values are:                !!00378
*                                                                     !!00379
*             0 = Paper                                               !!00380
*             1 = Draft capture by card type (default)                !!00381
*                                                                     !!00382
  02 SETL                        PIC 9.                                !00383
                                                                       !00384
                                                                       !00385
*                                                                     !!00386
*             The routing group to which check guarantee/verification !!00387
*             transactions belong.  BASE24-pos Router uses this value !!00388
*             instead of the retailer ID when searching for the       !!00389
*             appropriate Authorization Selection Table (AST) record  !!00390
*             to route check guarantee/verification transactions.     !!00391
*                                                                     !!00392
  02 CHK-RTG-GRP               PIC X(11).                              !00393
                                                                       !00394
*                                                                     !!00395
*             The ID by which the check acceptance vendor refers to   !!00396
*             the merchant.                                           !!00397
*                                                                     !!00398
  02 CHK-MRCHNT-ID             PIC X(15).                              !00399
*                                                                     !!00400
*             Reserved for future use.                                !!00401
*                                                                     !!00402
  02 USER-FLD6                 PIC X(14).                              !00403
                                                                       !00404
*                                                                     !!00405
*             An indicator that identifies the last transaction to    !!00406
*             update this record.  This field ensures against multiple!!00407
*             or incomplete updates due to process failure and        !!00408
*             restart.  This field occurs in every record that is     !!00409
*             updated by the online system.                           !!00410
*                                                                     !!00411
  02 LAST-TRAN                 TYPE *.                                 !00412
                                                                       !00413
                                                                       !00414
*                                                                     !!00415
*             An indicator that identifies the last file maintenance  !!00416
*             action on this record.  This includes the user who      !!00417
*             performed the update, the time at which it was done,    !!00418
*             and the type of update.                                 !!00419
*                                                                     !!00420
  02 LAST-FM                   TYPE *.                                 !00421
                                                                       !00422
                                                                       !00423
*                                                                     !!00424
*             The values in the following three fields define the     !!00425
*             parameters used to generate the Daily Merchant Activity !!00426
*             Report for this retailer.                               !!00427
*                                                                     !!00428
  02 MERCH-ACTIVITY-RPT.                                               !00429
                                                                       !00430
                                                                       !00431
*                                                                     !!00432
*             The printer location where the Daily Merchant Activity  !!00433
*             Reports for this retailer are to be printed.  This      !!00434
*             field must contain a valid Tandem system and Spooler    !!00435
*             location name (for example, \ACI2.$S.#LP).  The default !!00436
*             value is $S.#RETL.                                      !!00437
*                                                                     !!00438
     04 PRNT-LOC                       PIC X(16).                      !00439
                                                                       !00440
                                                                       !00441
*                                                                     !!00442
*             A flag indicating the type of reports to generate.      !!00443
*             Valid values are:                                       !!00444
*                                                                     !!00445
*             0 = Full reports (default value)                        !!00446
*             1 = Full reports--print totals separately               !!00447
*             2 = Totals only                                         !!00448
*             3 = No report                                           !!00449
*                                                                     !!00450
     04 RPT-CREATION-FLG               PIC X.                          !00451
                                                                       !00452
                                                                       !00453
*                                                                     !!00454
*             The number of days to retain historical data in the POS !!00455
*             Retailer Reporting File (PRRF) for this retailer for    !!00456
*             the purpose of periodic report generation.  Valid       !!00457
*             values are 0 through 999.  The default value is 7.      !!00458
*                                                                     !!00459
     04 PERIODIC-FILE-RET              PIC X(3).                       !00460
                                                                       !00461
                                                                       !00462A00
                                                                       !00462A01
                                                                       !00462A02
*                                                                     !!00493
*             Standard Industrial Classification (SIC) code for       !!00494
*             Mail/Phone Order transactions.                          !!00495
*                                                                     !!00496
  02 MAIL-PO-SIC-CDE           PIC 9(4).                               !00497
*                                                                     !!00498
*             Reserved for future use.                                !!00499
*                                                                     !!00500
  02 USER-FLD4                 PIC X(9).                               !00501
*                                                                     !!00502
*             A code which identifies the entity that guarantees the  !!00503
*             funds for a check guarantee/verification transaction    !!00504
*             (e.g., TeleCredit, TeleCheck, etc.).  Valid values are: !!00505
*             0 = None                                                !!00506
*             1 = TeleCheck                                           !!00507
*             2 = TeleCredit, LA                                      !!00508
*             3 = TeleCredit, Tampa                                   !!00509
*             4 = JBS                                                 !!00510
*                                                                     !!00511
  02 CHK-PROVIDER              PIC X.                                  !00512
                                                                       !00513
                                                                       !00513A00
*             Profile used as part of the key to read the APCF         !00513A01
*             to determine if an Admin card is required for a          !00513A02
*             specific transaction.                                    !00513A03
                                                                       !00513A04
  02 RTLR-TXN-PRFL             TYPE PRFL.                              !00513A05
                                                                       !00513A06
*             Profile used as part of the key to read the APCF         !00513A07
*             to determine if a specific transaction is allowed        !00513A08
                                                                       !00513D00
*             at terminals owned by this retailer."                    !00513D01
                                                                       !00513D02
                                                                       !00513A0A
  02 ACQ-TXN-PRFL              TYPE PRFL.                              !00513A0B
                                                                       !00513A0C
*             Reserved for future use.                                 !00513A0D
                                                                       !00513A0E
  02 USER-FLD3                 PIC X(16).                              !00513A0F
                                                                       !00513A0G
                                                                       !00514
*                                                                     !!00515
*             The number of services supported by this retailer.      !!00516
*                                                                     !!00517
                                                                       !00518
  02 NUM-SRV                  TYPE BINARY 16 UNSIGNED.                 !00519
                                                                       !00520
*                                                                     !!00521
*             The number of alternate merchant ids in the SRV-INFO    !!00522
*             struct.                                                 !!00523
*                                                                     !!00524
  02 NUM-ALT-MRCHNT           TYPE BINARY 16.                          !00525
                                                                       !00526
                                                                       !00526B00
*             AST-PRFL is a user defined value used in                 !00526B01
*             conjunction with the Cardholder FIID to access           !00526B02
*             the Authorization Selection Table(AST)to determine       !00526B03
*             limits and routing requirements for certain types        !00526B04
*             of transactions (e.g., SWITCH Card Transactions).        !00526B05
*             Use of AST-PRFL allows interchange limits to be          !00526B06
*             varied by card type using standard AST limit             !00526B07
*             processing.                                              !00526B08
                                                                       !00526B09
  02 AST-PRFL                 TYPE PRFL.                               !00526B0A
                                                                       !00526B0B
                                                                       !00526C00
*             Indicates whether the retailer is EMV capable.  Valid    !00526C01
*             values are:                                              !00526C02
*                                                                      !00526C03
*             Y = Yes, the retailer is EMV capable.                    !00526C04
*             N = No, the retailer is not EMV capable.                 !00526C05
                                                                       !00526C06
  02 EMV-CAPABLE              PIC X.                                   !00526C07
                                                                       !00526C08
                                                                       !00526E00
*             Indicates whether the additional validation (including   !00526E01
*             check digit verification) should be performed on the     !00526E02
*             AMEX Service Establishment Number.  Valid values are:    !00526E03
*                                                                      !00526E04
*             Y = Yes, perform additional validation.                  !00526E05
*             N = No, do not perform additional validation.            !00526E06
                                                                       !00526E07
  02 SRV-EST-NUM-CHK          PIC X.                                   !00526E08
                                                                       !00526E09
                                                                       !00526E0A
                                                                       !00526F00
*             Indicates whether the retailer supports EMV delayed      !00526F01
*             authorizations. Valid values are:                        !00526F02
*                                                                      !00526F03
*             Y = Yes, the retailer supports delayed authorizations.   !00526F04
*             N = No, the retailer does not support delayed auths.     !00526F05
                                                                       !00526F06
  02 EMV-DELAYED-AUTH-SPPT    PIC X.                                   !00526F07
                                                                       !00526F08
                                                                       !00526G00
*             Specifies whether the retailer allows partial            !00526G01
*             authorizations for all transaction types, only for       !00526G02
*             transactions not involving cash, or not for any          !00526G03
*             transactions.                                            !00526G04
*             0 = Not Allowed                                          !00526G05
*             1 = Lesser Allowed                                       !00526G06
*             2 = Non-Cash Only                                        !00526G07
                                                                       !00526G08
  02 AUTH-PARTIAL-AMT         PIC X.                                   !00526G09
                                                                       !00526G0A
*             USER-FLD-ACI is reserved for future BASE24 product use   !00526B0C
*             only.  The designation of "product use only" provides    !00526B0D
*             ACI with the ability to deplete the number of bytes      !00526B0E
*             available within USER-FLD-ACI as product enhancements    !00526B0F
*             are introduced.  When product enhancements require the   !00526B0G
*             addition of new fields within this file, the procedure   !00526B0H
*             to be followed is to deplete bytes from USER-FLD-ACI     !00526B0I
*             and use that number of bytes to define new fields.  The  !00526B0J
*             new field definition(s) should precede the USER-FLD-ACI  !00526B0K
*             field.                                                   !00526B0L
                                                                       !00526B0M
                                                                       !00526C09
                                                                       !00526E0B
                                                                       !00526F09
                                                                       !00526G0B
  02 USER-FLD-ACI             PIC X(46).                               !00526G0C
                                                                       !00526G0D
                                                                       !00526G0E
                                                                       !00526G0F
                                                                       !00526F0B
                                                                       !00526E0D
                                                                       !00526C0B
                                                                       !00526B0O
*             USER-FLD-REGN is reserved for ACI regional use only.     !00526B0P
*             Only ACI regions are allowed to use USER-FLD-REGN        !00526B0Q
*             space.                                                   !00526B0R
                                                                       !00526B0S
  02 USER-FLD-REGN            PIC X(50).                               !00526B0T
                                                                       !00526B0U
*             USER-FLD-CUST is reserved for customer use only.         !00526B0V
*             Only customers are allowed to use USER-FLD-CUST          !00526B0W
*             space.                                                   !00526B0X
                                                                       !00526B0Y
  02 USER-FLD-CUST            PIC X(50).                               !00526B0Z
                                                                       !00526B10
                                                                       !00526B11
*                                                                     !!00527
*             The length of the information in the SRV-INFO struct.   !!00528
*                                                                     !!00529
  02 SRV-INFO-LGTH            TYPE BINARY 16 UNSIGNED.                 !00530
                                                                       !00531
*                                                                     !!00532
*             For each service provided by this retailer, the         !!00533
*             following fields contain parameters which determine     !!00534
*             how transactions are to be handled.                     !!00535
*                                                                     !!00536
*             SRV-INFO consists of the following fields:              !!00537
*                                                                     !!00538
*             TYP:                   PIC XX.                          !!00539
*                                                                     !!00540
*             One- or two-character codes are used to identify card   !!00541
*             types in files throughout BASE24.  The same codes must  !!00542
*             be used for a particular card type in all of the files. !!00543
*             These codes are also used to identify service types in  !!00544
*             BASE24-pos.  Codes used in this field are either        !!00545
*             reserved by BASE24 or user-defined. Reserved codes are  !!00546
*             to be used only as defined, and include:                !!00547
*                                                                     !!00548
*             AD = Administrative (BASE24-atm only)                   !!00549
*             AX = American Express credit                            !!00550
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00551
*                  only)                                              !!00552
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00553
*                  CC-CZ)                                             !!00554
*             CB = Carte Blanche credit                               !!00555
*             D  = Demonstration (BASE24-atm only)                    !!00556
*             DC = Diners Club credit                                 !!00557
*             DS = Discover (Sears) credit                            !!00558
*             M  = MasterCard credit                                  !!00559
*             MD = MasterCard debit (See BASE24-pos note below)       !!00560
*             MM = MasterCard dual (See BASE24-pos note below)        !!00561
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00562
*             SC = Special, Check (BASE24-pos only)                   !!00563
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00564
*                  Check Application only)                            !!00565
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00566
*                  Application only)                                  !!00567
*             V  = VISA credit                                        !!00568
*             VD = VISA debit (See BASE24-pos note below)             !!00569
*             VV = VISA dual (See BASE24-pos note below)              !!00570
*                                                                     !!00571
*             Codes with a first character of C, except code CB, are  !!00572
*             recommended to identify private label credit cards.     !!00573
*                                                                     !!00574
*             Codes with a first character of P are required to       !!00575
*             identify proprietary debit cards.  BASE24 treats cards  !!00576
*             with proprietary debit codes and codes MD and VD as     !!00577
*             debit cards and treats cards with all other codes as    !!00578
*             credit cards.                                           !!00579
*                                                                     !!00580
*             Administrative (AD), Business deposit (BD),             !!00581
*             Demonstration (D), Special purpose (SP), and Super      !!00582
*             teller (ST) are special-use card types used by          !!00583
*             BASE24-atm.                                             !!00584
*                                                                     !!00585
*             Business deposit (BD) is also a special-use card type   !!00586
*             used by BASE24-teller to identify cards that can only   !!00587
*             be used to initiate deposit transactions.               !!00588
*             BASE24-teller does not perform any other processing     !!00589
*             based on card type; however, BASE24 guidelines should   !!00590
*             still be used when establishing card types for          !!00591
*             BASE24-teller.                                          !!00592
*                                                                     !!00593
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00594
*             processed as debit or credit card types, based on the   !!00595
*             default combo card type specified in the CPF.           !!00596
*                                                                     !!00597
*             Special, Check (SC) is a special-use card type used to  !!00598
*             initiate BASE24-pos check guarantee and check           !!00599
*             verification transactions only.                         !!00600
*                                                                     !!00601
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00602
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00603
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00604
*             BASE24-pos automatically includes the MD and MM card    !!00605
*             types with the MasterCard credit (M) card type, and     !!00606
*             automatically includes the VD and VV card types with    !!00607
*             the VISA credit (V) card type.                          !!00608
*                                                                     !!00609
*             User-defined Codes:  The user can add any one- or two-  !!00610
*             character code not included in the reserved code list   !!00611
*             above, according to the following guidelines:           !!00612
*                                                                     !!00613
*             o  The first character must be alphabetic (A, B, D-O,   !!00614
*                and Q-Z).                                            !!00615
*                                                                     !!00616
*             o  The second character can be A-Z, 0-9, or a blank.    !!00617
*                                                                     !!00618
*             o  A valid COBNAMES table entry is recommended for each !!00619
*                user-defined code.                                   !!00620
*                                                                     !!00621
*             DFT-CAPTURE-FLG:       PIC X.                           !!00622
*                                                                     !!00623
*             The default draft capture value used for transactions   !!00624
*             being performed through BASE24-pos CRT Authorization.   !!00625
*             If a CRT authorization operator does not enter a value  !!00626
*             in the DRAFT CAPTURE field on the Online Transaction    !!00627
*             (OLT) screen, the value in this field is used to        !!00628
*             determine whether draft capture is being used with the  !!00629
*             transaction for this retailer.  The value in this field !!00630
*             is used exclusively for transactions being performed    !!00631
*             through BASE24-pos CRT Authorization.  Valid values     !!00632
*             are:                                                    !!00633
*                                                                     !!00634
*             0 = Authorize only                                      !!00635
*             1 = Authorize and capture                               !!00636
*                                                                     !!00637
*             USER-FLD5:             PIC X.                           !!00638
*                                                                     !!00639
*             HIT-NNEG:              TYPE BINARY 16.                  !!00640
*                                                                     !!00641
*             A code indicating whether transactions associated with  !!00642
*             this service type should be checked against the         !!00643
*             appropriate national negative file prior to being sent  !!00644
*             to the primary destination specified in the             !!00645
*             Authorization Selection File (AST) for further          !!00646
*             authorization.                                          !!00647
*                                                                     !!00648
*             0 = Do not access national negative file.               !!00649
*             1 = Access national negative file prior to forwarding   !!00650
*                 to authorization destination.                       !!00651
*                                                                     !!00652
*             OVERRIDE-DEST:        PIC X(16).                        !!00653
*                                                                     !!00654
*             An authorization destination that overrides the primary !!00655
*             authorization destinations established in the           !!00656
*             Authorization Selection Table File (AST) for this       !!00657
*             retailer and service type.  Valid values are:           !!00658
*                                                                     !!00659
*             o  Symbolic name of the destination process.            !!00660
*                                                                     !!00661
*             o  NEGN = National negative file using online floor     !!00662
*                limits.                                              !!00663
*                                                                     !!00664
*             o  NEGF = National negative file using offline floor    !!00665
*                limits.                                              !!00666
*                                                                     !!00667
*             TRAN-LMT:             TYPE BINARY 32.                   !!00668
*                                                                     !!00669
*             The transaction amount limit, in whole currency units,  !!00670
*             for this retailer.  Transactions for amounts exceeding  !!00671
*             this limit are denied.  This limit does not apply to    !!00672
*             cards with VIP status.  If a value greater than zero is !!00673
*             specified in the SRV.TRAN-LMT field of the POS Terminal !!00674
*             Data File (PTDF) as well as this field, the lower of    !!00675
*             the two values is used as the limit.  If this field     !!00676
*             contains zeros, the SRV.TRAN-LMT field in the PTDF is   !!00677
*             used (and vice-versa).  If the SRV.TRAN-LMT fields in   !!00678
*             both the PRDF and PTDF contain zeros, no limit is       !!00679
*             checked.                                                !!00680
*                                                                     !!00681
*             ALT-MRCHNT-IDX:       TYPE BINARY 16.                   !!00682
*                                                                     !!00683
*             Identifies which occurrence of the ALT-MRCHNT-ID field  !!00684
*             pertains to this service type.                          !!00685
*                                                                     !!00686
*                                                                     !!00687
*             Following all of the services (which contain each of    !!00688
*             the fields above) is:                                   !!00689
*                                                                     !!00690
*             ALT-MRCHNT-ID          PIC X(15) OCCURS 0 to 30 TIMES.  !!00691
*                                                                     !!00692
*             The retailers' alternate merchant id for the specified  !!00693
*             service.  The number of alternate merchant id numbers   !!00694
*             depends on the number of services and which services    !!00695
*             have alternate merchant id numbers (see ALT-MRCHNT-IDX  !!00696
*             above).                                                 !!00697
*                                                                     !!00698
                                                                       !00699
  02 SRV-INFO.                                                         !00700
                                                                       !00701
     04 SRV-INFO-DATA         PIC X OCCURS 0 TO 1290 TIMES             !00702
                              DEPENDING ON SRV-INFO-LGTH.              !00703
                                                                       !00704
END                                                                    !00705
?nocomments
                                                                       !00705A00
?setsection
                                                                       !00705A03
