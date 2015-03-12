**FIX2.24  11/18/04  DDLFPBF 6006 DDL    BA60DDL  BA08214  F                 ***
**FIX2.14  03/21/01  DDLFPBF 6005 DDL    BA60DDL  BA04342  E                 ***
**SEQ0.04  11/01/00  DDLFPBF 6004 DDL    BA60DDL  BA04000  D                 ***
**SYNC.04  12/09/98  DDLFPBF 5304 DDL    BA53DDL  BA04000  D                 ***
**SYNC.03  08/28/98  DDLFPBF 5304 DDL    BA53DDL  BA03000  D                 ***
**SYNC.03  08/22/97  DDLFPBF 5104 DDL    BA51DDL  BA03000  D                 ***
**SYNC.02  06/25/96  DDLFPBF 5104 DDL    BA51DDL  BA02000  D                 ***
**FIX2.00  12/08/95  DDLFPBF 5104 DDL    BA51DDL  BA51242  D                 ***
**FIX2.00  11/13/95  DDLFPBF 5103 DDL    BA51DDL  BA51205  C                 ***
**FIX2.00  06/06/95  DDLFPBF 5102 DDL    BA51DDL  BA51016  B                 ***
**FIX2.00  01/20/95  DDLFPBF 5101 DDL    BA51DDL  BA50277  A                 ***
!*SEQ2.00  10/20/92  DDLFPBF 5000 DDL    BA50DDL                               !
?nocomments
?deflist
?PAGE "PBFBASE - Positive Balance File (internal)"
?SECTION PBFBASE
                                                                       !00009
************************************************************************
*                         History Section                              *
************************************************************************
                                                                       !00016B00
                                                                       !00016B01
                                                                       !00016B02
                                                                       !00062A00
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   *  !00062A01
*********************************************************************  !00062A02
*                                                                      !00062A03
* 94/08/22        Rel 1.0 TB Design Team - JMS/583                     !00062A04
* SYMPTOM:        BASE24-telebanking Initial Release                   !00062A05
* PROBLEM:        None.                                                !00062A06
* FIX:            Added the TBPBF definition for PBF segment 14.       !00062A07
* DEPENDENCIES:   Re-DDL.                                              !00062A08
* REFERENCE:      BASE24 Telebanking System Specification              !00062A09
*                 Work Order Number TB930301-01                        !00062A0A
*                                                                      !00062A0B
*********************************************************************  !00062A0C
                                                                       !00062B03
*                  RELEASE 5.1                                      *  !00062B04
*********************************************************************  !00062B05
*                                                                      !00062B06
* 95JUN01    JMS/583                                                   !00062B07
* SYMPTOM:   BASE24-BASE RELEASE 5.1 ENHANCEMENTS                      !00062B08
* PROBLEM:   (E) NONE.                                                 !00062B09
* FIX:       Removed AFS, EFTPOS, and Cash Manager products.           !00062B0A
* IMPLEMENT: Remove reference to these products in all modules.        !00062B0B
*            Re-compile DDL's. Apply related fix to the PBF requestor  !00062B0C
*            and server and recompile.  All modules that source in the !00062B0D
*            PBF must be recompiled.                                   !00062B0E
* REFERENCE: 950201-001                                                !00062B0F
*                                                                      !00062B0G
*********************************************************************  !00062B0H
                                                                       !00062C00
*                                                                      !00062C01
* 95AUG18    SLA                                                       !00062C02
* SYMPTOM:   None.                                                     !00062C03
* PROBLEM:   <E> None.                                                 !00062C04
* FIX:       Modified comments in the Telebanking segment to           !00062C05
*            reflect support for payments supported in BASE24-billpay. !00062C06
* IMPLEMENT: All modules that source in the PBF must be recompiled.    !00062C07
* REFERENCE: Work Order 950425-1.                                      !00062C08
*                                                                      !00062C09
*********************************************************************  !00062C0A
                                                                       !00062C0B
                                                                       !00062D00
*                                                                      !00062D01
* 95/11/14        DPS/1064 - bdc/1448                                  !00062D02
* SYMPTOM:        Release 1.0 Customer Service/Fraud Control           !00062D03
* PROBLEM:        (E) None.                                            !00062D04
* FIX:            Added the CSFCPBF definition for PBF segment 21.     !00062D05
* DEPENDENCIES:   Re-DDL.                                              !00062D06
* REFERENCE:      Work order #950212-3.                                !00062D07
*                                                                      !00062D08
                                                                       !00062E00
********************************************************************           9
*             Release 6.0                                          *   !00062E03
********************************************************************   !00062E04
* 30MAR2001   SJL/306, TLE/310                                         !00062E05
* Symptom:    Release 6.0 Enhancements                                 !00062E06
* Problem:    None                                                     !00062E07
* Fix:        - Updated DDL to add a currency code (CRNCY-CDE) to      !00062E08
*               the account for Multi-Currency processing.             !00062E09
*             - Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST    !00062E0A
*               to the end of the Base Segment.                        !00062E0B
* Dependency: Restore Release 6.0 files, modify the appropriate        !00062E0C
*             CUSTMACS flags, and run MAKE.                            !00062E0D
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00062E0E
*             WO #990405-01 (Multicurrency 5.3/6.0 Uplift)             !00062E0F
*             WO #000101-1 (General Release 6.0)                       !00062E0G
                                                                       !00062F00
* 15OCT2004   koeppenk                                                 !00062F01
* Symptom:    Stored Value Dormancy/Escheatment 6.0 Uplift             !00062F02
* Problem:    None.                                                    !00062F03
* Fix:        Added the following fields to the BASE segment           !00062F04
*             for Dormancy/Escheatment:                                !00062F05
*                 DORMANCY-DAT, BAL-PRIOR-TO-DORMANCY-FEE,             !00062F06
*                 CRD-ACTVT-ST and SV-RPT-TS.                          !00062F07
*             Reduced the size of USER-FLD-ACI in the BASE             !00062F08
*             segment by 23 bytes.                                     !00062F09
* Dependency: Apply fix to DDLFPBF, RQPBFS, SCRNPBF and AUTHLIBS       !00062F0A
*             and run Make.                                            !00062F0B
*             Refer to BA60UD08.SCNSVDE for a complete listing of      !00062F0C
*             dependencies.                                            !00062F0D
* Reference:  WO #020715-15                                            !00062F0E
*                                                                      !00062F0F
* 15OCT2004   koeppenk                                                 !00062F0G
* Symptom:    Version 5 PBF was two bytes longer than version 4 PBF.   !00062F0H
* Problem:    The PBF requester sometimes had a problem reading the    !00062F0I
*             record that was added by AUTHLIBS for Stored Value       !00062F0J
*             activations.                                             !00062F0K
* Fix:        Added ACI-FLD1 to ensure word boundary for               !00062F0L
*             new Dormancy/Escheatment fields.                         !00062F0M
*             Modified field USER-FLD-ACI from PIC X(27) to            !00062F0N
*             PIC X(26).                                               !00062F0O
* Dependency: Apply fix to DDLFPBF and run Make.                       !00062F0P
* Reference:  case #380564.                                            !00062F0Q
*********************************************************************  !00062F0R
                                                                       !00062F0S
                                                                       !00062F0T
                                                                       !00062F0U
                                                                       !00062F0V
*#####################################################################!!00063
*#      POSITIVE BALANCE FILE -  internal program data structure     #!!00064
*#####################################################################!!00065
                                                                       !00066
*1  3.1.2.14  Positive Balance File                                   !!00067
*1  3.1.2.14.1  Identification                                        !!00068
*1                                                                    !!00069
*1      The Positive Balance File (PBF) contains one record for every !!00070
*1      application account tied to a card account number whose card  !!00071
*1      issuer uses the positive balance method of authorization.  The!!00072
*1      key to the record is account number and type of account so it !!00073
*1      would seem that institutions should keep their PBFs separate  !!00074
*1      to avoid duplicate records.  This record contains an available!!00075
*1      balance field and a ledger balance field and will support DDA,!!00076
*1      savings, and credit card accounts.                            !!00077
*1                                                                    !!00078
*1      This file is used to authorize transaction requests involving !!00079
*1      these accounts without having to forward requests to a host   !!00080
*1      back-end authorization system.                                !!00081
*1                                                                    !!00082
*1  3.1.2.14.2  Security                                              !!00083
*1                                                                    !!00084
*1      The PBF is secured under Tandem's group level security so that!!00085
*1      only authorized network operators may access (or start        !!00086
*1      programs which will access) the file.                         !!00087
*1                                                                    !!00088
*1      USER ID         = <Base24 node name>.*                        !!00089
*1      FILE CODE       = 0                                           !!00090
*1      ACCESS SECURITY = GGGG                                        !!00091
*1                                                                    !!00092
*1  3.1.2.14.3  Usage                                                 !!00093
*1                                                                    !!00094
*3       Auth         i/o          RAND (  )    r       shared        !!00095
*3       Full Refr    create       SEQ                                !!00096
*3       File maint   i/o          RAND (  )    r       shared        !!00097
*1                                                                    !!00098
**********************************************************************!!00099
                                                                       !00100
?comments
*                                                                     !!00103
*             The Positive Balance File (PBF) contains one record for !!00104
*             each application account tied to a card account number  !!00105
*             whose card issuer uses the Positive Balance             !!00106
*             Authorization Method.  Institutions can maintain up to  !!00107
*             three different PBFs:  one for Demand Deposit Accounts  !!00108
*             (DDA), one for Savings (SAV) accounts, and one for      !!00109
*             Credit (CCD) accounts.                                  !!00110
*                                                                     !!00111
*             Each PBF record contains available and ledger balances  !!00112
*             used by BASE24 to authorize transaction requests        !!00113
*             without having to forward them to a host back-end       !!00114
*             authorization system.                                   !!00115
*                                                                     !!00116
*             The key to the file is the institution's FIID, the      !!00117
*             application account number and the type of account.     !!00118
*                                                                     !!00119
*             The following pages describe the fields included in a   !!00120
*             PBF record.  The information below summarizes other     !!00121
*             information specific to the PBF.                        !!00122
*                                                                     !!00123
*             LCONF ASSIGN:       PBF                                 !!00124
*                                                                     !!00125
*             The following fields make up the Base segment of the    !!00126
*             Positive Balance File (PBF).                            !!00127
DEFINITION PBFBASE.                                                    !00128
                                                                       !00129
                                                                       !00130
*                                                                     !!00131
  02 BASE-SEG                     TYPE *.                              !00132
                                                                       !00133
  02 PRIKEY.                                                           !00134
*                                                                     !!00135
*             The FIID of the financial institution that maintains    !!00136
*             the account.  The FIID is an identifier which must be   !!00137
*             unique within the logical network.                      !!00138
*                                                                     !!00139
     04 FIID                   TYPE *.                                 !00140
*                                                                     !!00141
*             The account number identifying the application account  !!00142
*             whose information is carried in this record.            !!00143
*             Currently, BASE24 only supports a 19-digit account      !!00144
*             number.                                                 !!00145
*                                                                     !!00146
     04 NUM                    TYPE ACCT.                              !00147
                                                                       !00148
                                                                       !00149
*                                                                     !!00150
*             Indicates the type of account for this PBF record.  The !!00151
*             general ranges of values supported by all BASE24        !!00152
*             products are:                                           !!00153
*                                                                     !!00154
*             01 - 09 = Checking (non-credit accounts).               !!00155
*             11 - 19 = Savings (non-credit accounts).                !!00156
*             31 - 39 = Credit (credit accounts).                     !!00157
*                                                                     !!00158
*             Specific values reserved by one or more BASE24 products !!00159
*             are listed below.  (Note that not all of these account  !!00160
*             types are supported by all BASE24 products.)            !!00161
*                                                                     !!00162
*             01      = Checking                                      !!00163
*             11      = Savings                                       !!00164
*             12      = Individual retirement (IRA)                   !!00165
*             13      = Certified deposit                             !!00166
*             21      = NOW                                           !!00167
*             31      = Credit                                        !!00168
*             32      = Credit line                                   !!00169
*             41      = Installment                                   !!00170
*             42      = Mortgage                                      !!00171
*             43      = Commercial                                    !!00172
*             50      = Utility                                       !!00173
*             51 - 55 = Utility (1 to 5)                              !!00174
*             90      = General ledger                                !!00175
*                                                                     !!00176
     04  TYP                   PIC 9(2).                               !00177
                                                                       !00178
                                                                       !00179
*                                                                     !!00180
*             The current status of the application account.  Values  !!00181
*             are:                                                    !!00182
*                                                                     !!00183
*             0, A, B, C          = No relationhsip (inactive         !!00184
*                                   account)                          !!00185
*             1, D, E, F, G, H, I = Open                              !!00186
*             2, J, K, L          = Restricted to deposits            !!00187
*             3, M, N, O, P, Q, R = Open primary account              !!00188
*             4, S, T, U          = Restricted primary account        !!00189
*             9, V, X, W, Y, Z    = Closed                            !!00190
*                                                                     !!00191
*             NOTE:  BASE24 does not distinguish between the          !!00192
*             alphabetic and numeric values grouped together above.   !!00193
*             The alphabetic values are intended to give institutions !!00194
*             a wider range of values for assigning account statuses. !!00195
*                                                                     !!00196
 02 ACCT-STAT                     PIC X.                               !00197
                                                                       !00198
*                                                                     !!00199
*             This field is not used.                                 !!00200
*                                                                     !!00201
 02 USER-FLD1                     PIC X(2).                            !00202
                                                                       !00203
                                                                       !00204
*                                                                     !!00205
*             The available balance for non-credit accounts.          !!00206
*                                                                     !!00207
*             Withdrawals and purchases from non-credit accounts are  !!00208
*             subtracted from this amount.  Deposit credits are added !!00209
*             to this amount, as are refunds to purchase              !!00210
*             authorizations for non-credit accounts.                 !!00211
*                                                                     !!00212
*             This amount equals the amount in the LEDG-BAL field     !!00213
*             minus the amount in the AMT-ON-HLD field.               !!00214
*                                                                     !!00215
  02 AVAIL-BAL                 TYPE BINARY 64.                         !00216
                                                                       !00217
                                                                       !00218
*                                                                     !!00219
*             The available credit for credit accounts.               !!00220
*                                                                     !!00221
*             Purchases and cash advances made from credit accounts   !!00222
*             are subtracted from this amount.                        !!00223
*                                                                     !!00224
*             This amount equals the amount in the CR-LMT field minus !!00225
*             the amount in the CR-BAL field.                         !!00226
*                                                                     !!00227
  02 AVAIL-CR                  REDEFINES AVAIL-BAL TYPE BINARY 64.     !00228
                                                                       !00229
                                                                       !00230
                                                                       !00231
*                                                                     !!00232
*             The current account balance for non-credit accounts.    !!00233
*                                                                     !!00234
*             Withdrawals and purchases from non-credit accounts are  !!00235
*             subtracted from this amount.  Deposits are added to     !!00236
*             this amount, as are refunds to purchase authorizations  !!00237
*             for non-credit accounts.                                !!00238
*                                                                     !!00239
  02 LEDG-BAL                  TYPE BINARY 64.                         !00240
                                                                       !00241
                                                                       !00242
                                                                       !00243
*                                                                     !!00244
*             The credit limit for credit accounts.  The amount in    !!00245
*             this field is the maximum amount of credit to be        !!00246
*             extended on the account.                                !!00247
*                                                                     !!00248
  02 CR-LMT                    REDEFINES LEDG-BAL TYPE BINARY 64.      !00249
                                                                       !00250
                                                                       !00251
                                                                       !00252
*                                                                     !!00253
*             The total amount of non-credit account funds being held !!00254
*             and not available to the cardholder.                    !!00255
*                                                                     !!00256
*             An example of held funds might be a deposit for which   !!00257
*             no deposit credit is granted.  Although the deposit     !!00258
*             amount is credited to the ledger balance, a cardholder  !!00259
*             cannot make use of the funds until they are verified or !!00260
*             cleared.                                                !!00261
*                                                                     !!00262
  02 AMT-ON-HLD                TYPE BINARY 64.                         !00263
                                                                       !00264
                                                                       !00265
*                                                                     !!00266
*             The current credit balance for credit accounts.  The    !!00267
*             amount in this field is the total amount of charges on  !!00268
*             the account.                                            !!00269
*                                                                     !!00270
*             Purchases and cash advances made from credit accounts   !!00271
*             are added to this amount.  The amount of refunds for    !!00272
*             purchases from a credit account is subtracted from this !!00273
*             amount.                                                 !!00274
*                                                                     !!00275
  02 CR-BAL                    REDEFINES AMT-ON-HLD  TYPE BINARY 64.   !00276
                                                                       !00277
                                                                       !00278
                                                                       !00279
*                                                                     !!00280
*             The amount of overdraft protection available for non-   !!00281
*             credit accounts.                                        !!00282
*                                                                     !!00283
*             The amount in this field is added to the available      !!00284
*             balance (the amount in the AVAIL-BAL field) to obtain   !!00285
*             the maximum transaction amount available to the         !!00286
*             cardholder.  Thus, it is possible for the available     !!00287
*             balance (the amount in the AVAIL-BAL field) to be a     !!00288
*             negative amount.                                        !!00289
*                                                                     !!00290
  02 OVRDRFT-LMT               TYPE BINARY 32.                         !00291
                                                                       !00292
                                                                       !00293
                                                                       !00294
*                                                                     !!00295
*             For non-credit accounts, the value in this field is the !!00296
*             date (YYMMDD) of the last deposit or transfer to the    !!00297
*             account.                                                !!00298
*                                                                     !!00299
*             For credit accounts, the value in this field is the     !!00300
*             date (YYMMDD) of the last payment to the account.       !!00301
*                                                                     !!00302
  02 LAST-DEP-DAT              TYPE DAT.                               !00303
                                                                       !00304
*                                                                     !!00305
*             For non-credit accounts, the value in this field is the !!00306
*             amount of the last deposit or transfer to the account.  !!00307
*                                                                     !!00308
*             For credit accounts, the value in this field is the     !!00309
*             amount of the last payment to the account.              !!00310
*                                                                     !!00311
  02 LAST-DEP-AMT              TYPE BINARY 64.                         !00312
                                                                       !00313
*                                                                     !!00314
*             For non-credit accounts, the value in this field is the !!00315
*             date (YYMMDD) of the last withdrawal, transfer, or      !!00316
*             payment from the account.                               !!00317
*                                                                     !!00318
*             For credit accounts, the value in this field is the     !!00319
*             date (YYMMDD) of the last charge to the account.        !!00320
*                                                                     !!00321
  02 LAST-WDL-DAT              TYPE DAT.                               !00322
                                                                       !00323
*                                                                     !!00324
*             For non-credit accounts, the value in this field is the !!00325
*             amount of the last withdrawal, transfer, or payment     !!00326
*             from the account.                                       !!00327
*                                                                     !!00328
*             For credit accounts, the value in this field is the     !!00329
*             amount of the last charge to the account.               !!00330
*                                                                     !!00331
  02 LAST-WDL-AMT              TYPE BINARY 64.                         !00332
                                                                       !00333
                                                                       !00334
*                                                                     !!00335
*             The total amount of cash paid out during the current    !!00336
*             processing day.                                         !!00337
*                                                                     !!00338
*             The value in this field can be reset to zero by the     !!00339
*             Refresh process when the record is refreshed or by the  !!00340
*             Authorization process upon first use of the record      !!00341
*             during a new processing day.                            !!00342
*                                                                     !!00343
*             The value in this field is not used by BASE24-pos.      !!00344
*                                                                     !!00345
  02 CASH-OUT-TODAY            TYPE BINARY 64.                         !00346
                                                                       !00347
                                                                       !00348
*                                                                     !!00349
*             The total amount of cash deposited during the current   !!00350
*             processing day.                                         !!00351
*                                                                     !!00352
*             The value in this field can be reset to zero by the     !!00353
*             Refresh process when the record is refreshed or by the  !!00354
*             Authorization process upon first use of the record      !!00355
*             during a new processing day.                            !!00356
*                                                                     !!00357
*             The value in this field is not used by BASE24-pos.      !!00358
*                                                                     !!00359
  02 CASH-IN-TODAY             TYPE BINARY 64.                         !00360
                                                                       !00360E00
                                                                       !00360E01
*                                                                      !00360E02
*             This is the ISO numeric code for the currency of the     !00360E03
*             account.                                                 !00360E04
*                                                                      !00360E05
  02 CRNCY-CDE                 TYPE *.                                 !00360E06
                                                                       !00360E07
                                                                       !00361E00
                                                                       !00361E01
                                                                       !00362
                                                                       !00362E00
*                                                                      !00362E01
*             This field is not used.                                  !00362E02
*                                                                      !00362E03
  02 USER-FLD2                 PIC X(17).                              !00362E04
                                                                       !00362E05
                                                                       !00363E00
                                                                       !00363E01
                                                                       !00363E02
                                                                       !00367
                                                                       !00368
                                                                       !00369
*                                                                     !!00370
*             An indicator that identifies the last file maintenance  !!00371
*             action on this record. The value in this field includes !!00372
*             the user who performed the update, the time at which it !!00373
*             was done, and the type of update.                       !!00374
*                                                                     !!00375
  02 LAST-FM                   TYPE *.                                 !00376
                                                                       !00377
                                                                       !00378
*                                                                     !!00379
*             An indicator that identifies the last transaction to    !!00380
*             update this record.  The value in this field insures    !!00381
*             against multiple or incomplete updates due to process   !!00382
*             failure and restart and occurs in every record that is  !!00383
*             updated by the online system.                           !!00384
*                                                                     !!00385
  02 LAST-TRAN                 TYPE *.                                 !00386
                                                                       !00387
                                                                       !00387F00
*             The date a Stored Value Dormancy Fee was assessed.       !00387F01
                                                                       !00387F02
  02 DORMANCY-DAT              TYPE DAT.                               !00387F03
                                                                       !00387F04
*             The PBF Balance prior to a Dormancy Fee being assessed.  !00387F05
                                                                       !00387F06
  02 BAL-PRIOR-TO-DORMANCY-FEE TYPE BINARY 64.                         !00387F07
                                                                       !00387F08
*             The Stored Value card activation state.                  !00387F09
                                                                       !00387F0A
  02 CRD-ACTVT-ST              PIC X(3).                               !00387F0B
                                                                       !00387F0C
*             Ensures word alignment.                                  !00387F0D
                                                                       !00387F0E
  02 ACI-FLD1                  PIC X.                                  !00387F0F
                                                                       !00387F0G
*             The date and time is used to track when the PBF is       !00387F0H
*             altered by Stored Value Bulk Database Management,        !00387F0I
*             and Dormancy/Escheatment to ensure that multiple         !00387F0J
*             CAFs using the same account do not alter or activate     !00387F0K
*             the same PBF multiple times.                             !00387F0L
                                                                       !00387F0M
 02 SV-RPT-TS                     TYPE BINARY 16 OCCURS 3 TIMES.       !00387F0N
                                                                       !00387F0O
                                                                       !00387E00
*             USER-FLD-ACI is reserved for future BASE24 product use   !00387E01
*             only. The designation of "product use only" provides     !00387E02
*             ACI with the ability to deplete the number of bytes      !00387E03
*             available within USER-FLD-ACI as product enhancements    !00387E04
*             are introduced.  When product enhancements require the   !00387E05
*             addition of new fields within this file, the procedure   !00387E06
*             to be followed is to deplete bytes from USER-FLD-ACI     !00387E07
*             and use that number of bytes to define new fields. The   !00387E08
*             new field definition(s) should precede the               !00387E09
*             USER-FLD-ACI field.                                      !00387E0A
                                                                       !00387E0B
                                                                       !00387F0P
  02 USER-FLD-ACI                 PIC X(26).                           !00387F0Q
                                                                       !00387F0R
                                                                       !00387F0S
                                                                       !00387F0T
                                                                       !00387E0D
                                                                       !00387F0U
                                                                       !00387F0V
*             USER-FLD-REGN is reserved for ACI regional use only.     !00387F0W
*             Only ACI regions are allowed to use USER-FLD-REGN space. !00387F0X
                                                                       !00387F0Y
                                                                       !00387E0H
  02 USER-FLD-REGN                PIC X(50).                           !00387E0I
                                                                       !00387E0J
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !00387E0K
*             Only customers are allowed to use USER-FLD-CUST space.   !00387E0L
                                                                       !00387E0M
  02 USER-FLD-CUST                PIC X(50).                           !00387E0N
                                                                       !00387E0O
                                                                       !00387E0P
END                                                                    !00388
                                                                       !00389
                                                                       !00390
?page "POS PBF Segment"
?section POSPBF
                                                                       !00395
*             The following fields make up the POS segment of the     !!00396
*             Positive Balance File (PBF).                            !!00397
  DEFINITION POSPBF.                                                   !00398
                                                                       !00399
                                                                       !00400
*                                                                     !!00401
 02 SEG-LGTH                      TYPE *.                              !00402
                                                                       !00403
                                                                       !00404
*                                                                     !!00405
*             The balance of credit transactions associated with this !!00406
*             account for which the paperwork has not been received.  !!00407
*                                                                     !!00408
 02 TTL-FLOAT                     TYPE BINARY 64.                      !00409
                                                                       !00410
                                                                       !00411
*                                                                     !!00412
*             The amount of credit used by this account since the     !!00413
*             last refresh.                                           !!00414
*                                                                     !!00415
 02 CUR-FLOAT                     TYPE BINARY 64.                      !00416
                                                                       !00417
                                                                       !00418
*                                                                     !!00419
*             The number of days this account has been delinquent.    !!00420
*                                                                     !!00421
*             The default value is zero.  The value in this field is  !!00422
*             used with the Parametric Authorization Method.          !!00423
*                                                                     !!00424
 02 DAYS-DELINQ                   TYPE BINARY 16.                      !00425
                                                                       !00426
                                                                       !00427
*                                                                     !!00428
*             The number of months this account has been active.      !!00429
*                                                                     !!00430
*             The default value is zero.  The value in this field is  !!00431
*             used with the Parametric Authorization Method.          !!00432
*                                                                     !!00433
 02 MONTHS-ACTIVE                 TYPE BINARY 16.                      !00434
                                                                       !00435
                                                                       !00436
*                                                                     !!00437
*             The number of times this account has been delinquent    !!00438
*             for one statement cycle.  The default value is zero.    !!00439
*             The value in this field is used with the Parametric     !!00440
*             Authorization Method.                                   !!00441
*                                                                     !!00442
 02 CYCLE-1                       TYPE BINARY 16.                      !00443
                                                                       !00444
                                                                       !00445
*                                                                     !!00446
*             The number of times this account has been delinquent    !!00447
*             for two statement cycles.  The default value is zero.   !!00448
*             The value in this field is used with the Parametric     !!00449
*             Authorization Method.                                   !!00450
*                                                                     !!00451
 02 CYCLE-2                       TYPE BINARY 16.                      !00452
                                                                       !00453
                                                                       !00454
*                                                                     !!00455
*             The number of times this account has been delinquent    !!00456
*             for three statement cycles.  The default value is zero. !!00457
*             The value in this field is used with the Parametric     !!00458
*             Authorization Method.                                   !!00459
*                                                                     !!00460
 02 CYCLE-3                       TYPE BINARY 16.                      !00461
                                                                       !00462
*                                                                     !!00463
*             This field is not used.                                 !!00464
*                                                                     !!00465
 02 USER-FLD3                     PIC X(20).                           !00466
                                                                       !00467
END                                                                    !00468
                                                                       !00469
?page "Teller Segment"
?section TLRPBF
                                                                       !00474
*             The following fields make up the Teller segment of the  !!00475
*             Positive Balance File (PBF).                            !!00476
  DEFINITION TLRPBF.                                                   !00477
                                                                       !00478
*                                                                     !!00479
                                                                       !00480
    02  SEG-LGTH                        TYPE *.                        !00481
                                                                       !00482
*             A flag indicating whether additional security is to be  !!00483
*             enforced when accessing the data in this record.  Valid !!00484
*             values are:                                             !!00485
*                                                                     !!00486
*             0 = Normal                                              !!00487
*             1 = Confidential indicator                              !!00488
*                                                                     !!00489
*             The system default is 0.  This field is for future use. !!00490
                                                                       !00491
    02  CONFIDENTIAL-FLG                PIC X.                         !00492
                                                                       !00493
*             A flag indicating to the Authorization process whether  !!00494
*             Stop Payments or Warnings have been placed on the       !!00495
*             application account.  Valid values are:                 !!00496
*                                                                     !!00497
*             0 = No stops or warnings                                !!00498
*             1 = Stops                                               !!00499
*             2 = Warnings                                            !!00500
*             3 = Stops and Warnings                                  !!00501
*                                                                     !!00502
*             Detail information on stop payments is in the Stop      !!00503
*             Payment File (SPF).  Detail information on warnings is  !!00504
*             in the Warning/Hold/Float File (WHFF).                  !!00505
                                                                       !00506
    02  SP-STAT                         PIC X.                         !00507
                                                                       !00508
*             The total amount of year-to-date accrued interest on    !!00509
*             the account.  The value in this field is used for       !!00510
*             informational purposes only and is maintained by the    !!00511
*             institution through the Refresh process.                !!00512
                                                                       !00513
    02  ACCRUED-INTEREST-YTD            TYPE BINARY 64.                !00514
                                                                       !00515
*             The total amount of credit given to this account for    !!00516
*             deposits for the current day.  The value in this field  !!00517
*             is cleared daily by the Refresh process and is used to  !!00518
*             keep the institution at a reasonable risk on            !!00519
*             unverified deposits.                                    !!00520
                                                                       !00521
    02  AMT-DEP-CR                      TYPE BINARY 64.                !00522
                                                                       !00523
*             The total number of deposits accepted for the current   !!00524
*             day for this account.  The value in this field is       !!00525
*             cleared daily by the Refresh process and is used to     !!00526
*             keep the institution at a reasonable risk on            !!00527
*             unverified deposits.                                    !!00528
                                                                       !00529
    02  NUM-OF-DEP                      TYPE BINARY 16.                !00530
                                                                       !00531
*             The total deposit amount for the current day for this   !!00532
*             account.  The value in this field is cleared daily by   !!00533
*             the Refresh process or when the first deposit amount is !!00534
*             received after midnight.  The value in this field is    !!00535
*             utilized by the Authorization process to determine the  !!00536
*             amount to be subtracted from the values in the AMT-DEP- !!00537
*             CR and AVAIL-BAL fields when a transaction reversal is  !!00538
*             received.                                               !!00539
                                                                       !00540
    02  TTL-DEP-AMT                     TYPE BINARY 64.                !00541
                                                                       !00542
*             The ledger balance of the account as of the last        !!00543
*             refresh.  The value in this field is informational only !!00544
*             and will not be used by BASE24-teller except for screen !!00545
*             displays.  The value in this field is maintained by the !!00546
*             Host.                                                   !!00547
                                                                       !00548
    02  STRT-BAL                        TYPE BINARY 64.                !00549
                                                                       !00550
*             The customer's passbook balance as of the last passbook !!00551
*             update.                                                 !!00552
                                                                       !00553
    02  PASSBOOK-BAL                    TYPE BINARY 64.                !00554
                                                                       !00555
*             The number of entries in the No Book File (NBF) for the !!00556
*             account.                                                !!00557
                                                                       !00558
    02  NBF-REC-CNT                     TYPE BINARY 16.                !00559
                                                                       !00560
*             The location of the signature card for this account.    !!00561
*             If used, the value in this field is updated via the     !!00562
*             Refresh process.                                        !!00563
                                                                       !00564
    02  SIG-CRD-LOC                     PIC X(9).                      !00565
                                                                       !00566
*             A flag indicating whether this account is a passbook    !!00567
*             account.  Valid values are:                             !!00568
*                                                                     !!00569
*             Y = Yes, this is a passbook account.                    !!00570
*             N = No, this is not a passbook account.                 !!00571
*                                                                     !!00572
*             The system default is N.                                !!00573
                                                                       !00574
    02  PASSBOOK-IND                    PIC X.                         !00575
                                                                       !00576
*             The Customer Class flag that determines how much cash   !!00577
*             is available to the customer after a check deposit.     !!00578
*             There are ten possible options that are defined by each !!00579
*             institution and maintained on the Institution           !!00580
*             Definition File (IDF).  Valid values are 0 through 9.   !!00581
                                                                       !00582
    02  CUST-CLASS                      PIC X.                         !00583
                                                                       !00584
*             This field is not used.                                 !!00585
                                                                       !00586
    02  USER-FLD4                       PIC X.                         !00587
                                                                       !00588
*             The maximum amount of cash (in multiples of 1,000) that !!00589
*             can be withdrawn from this account.  If this field      !!00590
*             contains zeros, this means that the account involved is !!00591
*             exempt from limit checking.                             !!00592
                                                                       !00593
    02  CASHOUT-LMT                     TYPE BINARY 16.                !00594
                                                                       !00595
*             The maximum amount of cash (in multiples of 1,000) that !!00596
*             can be deposited in this account.  If this field        !!00597
*             contains zeros, this means that the account involved is !!00598
*             exempt from limit checking.                             !!00599
                                                                       !00600
    02  CASHIN-LMT                      TYPE BINARY 16.                !00601
                                                                       !00602
*             The Currency Transaction Report counter, indicating the !!00603
*             number of reports filled out for a given account during !!00604
*             a calendar day.  The value in this field is set to zero !!00605
*             when the values in the CASH-OUT and CASH-IN fields on   !!00606
*             PBF Screen 1 are cleared.  The value in this field is   !!00607
*             logged to the Teller Transaction Log File (TTLF) with   !!00608
*             each financial transaction.  The value in this field is !!00609
*             incremented by the Device Handler process.              !!00610
                                                                       !00611
    02  CNTR-CNT                        PIC X.                         !00612
                                                                       !00613
*             This field is not used.                                 !!00614
                                                                       !00615
    02  USER-FLD5                       PIC X(29).                     !00616
                                                                       !00617
END                                                                    !00618
                                                                       !00618B00
?page "TELEBANKING PBF Segment"
?section TBPBF
                                                                       !00618B05
                                                                       !00619B00
                                                                       !00619B01
                                                                       !00619B02
*             The following fields make up the Telebanking             !00660A06
*             segment of the Positive Balance File (PBF).              !00660A07
                                                                       !00660C00
                                                                       !00660C01
                                                                       !00660C02
  DEFINITION TBPBF.                                                    !00660A08
                                                                       !00660A09
 02 SEG-LGTH                      TYPE *.                              !00660A0A
                                                                       !00660A0B
*             The minimum cash advance amount, in whole currency       !00660A0C
*             units (e.g., dollars), allowed by BASE24-telebanking.    !00660A0D
*             A value of zero indicates no minimum is required.        !00660A0E
*             This field applies to transactions which debit the       !00660A0F
                                                                       !00660C03
*             account.                                                 !00660C04
                                                                       !00660C05
                                                                       !00660C06
                                                                       !00660C07
*             Note : This field is relevant only for credit-type       !00660A0H
*             accounts.                                                !00660A0I
*                                                                      !00660A0J
*             This amount cannot exceed the amounts specified in the   !00660A0K
*             amount limit fields in this segment of the PBF, if       !00660A0L
*             those limit amounts are non-zero.                        !00660A0M
*                                                                      !00660A0N
*                  Allowed values : 0 - 999,999,999,999,999            !00660A0O
*                  Default value  : 0                                  !00660A0P
                                                                       !00660A0Q
 02 CASH-ADV-MIN                  TYPE BINARY 64.                      !00660A0R
                                                                       !00660A0S
*                                                                      !00660A0T
*             The standard increment, in whole currency units (e.g.,   !00660A0U
*             dollars), over the minimum cash advance amount required  !00660A0V
*             by BASE24-telebanking.  A value of zero indicates no     !00660A0W
*             increment is required.                                   !00660A0X
*             This field applies to transactions which debit the       !00660A0Y
*             account.                                                 !00660A0Z
*             Note : This field is relevant only for credit-type       !00660A10
*             accounts.                                                !00660A11
*                                                                      !00660A12
*             For example, if the value in the CASH-ADV-MIN field is   !00660A13
*             set to $100 and the value in the CASH-ADV-INCR field is  !00660A14
*             set to $50, then allowable cash advance amounts include  !00660A15
*             $100, $150, $200, etc.                                   !00660A16
*                                                                      !00660A17
*                  Allowed values : 0 - 999,999,999,999,999            !00660A18
*                  Default value  : 0                                  !00660A19
                                                                       !00660A1A
 02 CASH-ADV-INCR                 TYPE BINARY 64.                      !00660A1B
                                                                       !00660A1C
*             The following sets of limits define limits for transfers !00660A1D
                                                                       !00660C08
*             (intrabank) and payments during the usage period         !00660C09
*             specified in the Telebanking segment of the IDF.         !00660C0A
                                                                       !00660C0B
                                                                       !00660C0C
                                                                       !00660C0D
                                                                       !00660C0E
                                                                       !00660A1G
 02 PRD-LMT.                                                           !00660A1H
                                                                       !00660A1I
    04 XFER.                                                           !00660A1J
                                                                       !00660A1K
*             The maximum amount of money which may be debited from    !00660A1L
*             the account during the specified usage period for        !00660A1M
                                                                       !00660C0F
*             transfer and payment transactions involving this account !00660C0G
*             as the FROM account.  This is expressed in whole units   !00660C0H
*             of the account-issuing FI's currency.                    !00660C0I
                                                                       !00660C0J
                                                                       !00660C0K
                                                                       !00660C0L
                                                                       !00660C0M
*                                                                      !00660A1Q
*                  Allowed values : 0 - 999,999,999,999,999            !00660A1R
*                  Default value  : 0                                  !00660A1S
                                                                       !00660A1T
       06 AMT                                  TYPE BINARY 64.         !00660A1U
                                                                       !00660A1V
*             The maximum number of times money may be debited from    !00660A1W
*             the account during the specified usage period for        !00660A1X
                                                                       !00660C0N
*             transfer and payment transactions involving this         !00660C0O
*             account as the FROM account.                             !00660C0P
                                                                       !00660C0Q
                                                                       !00660C0R
                                                                       !00660C0S
                                                                       !00660C0T
*                                                                      !00660A20
*                  Allowed values : 0 - 9999                           !00660A21
*                  Default value  : 0                                  !00660A22
                                                                       !00660A23
       06 CNT                                  TYPE BINARY.            !00660A24
                                                                       !00660A25
*             The following sets of limits define limits for transfers !00660A26
                                                                       !00660C0U
*             (intrabank) and payments during the usage cycle          !00660C0V
*             specified in the Telebanking segment of the IDF.         !00660C0W
                                                                       !00660C0X
                                                                       !00660C0Y
                                                                       !00660C0Z
                                                                       !00660C10
                                                                       !00660A29
 02 CYC-LMT.                                                           !00660A2A
                                                                       !00660A2B
    04 XFER.                                                           !00660A2C
                                                                       !00660A2D
*             The maximum amount of money which may be debited from    !00660A2E
*             the account during the specified usage period for        !00660A2F
                                                                       !00660C11
*             transfer and payment transactions involving this account !00660C12
*             as the FROM account.  This is expressed in whole units   !00660C13
*             of the account-issuing FI's currency.                    !00660C14
                                                                       !00660C15
                                                                       !00660C16
                                                                       !00660C17
                                                                       !00660C18
*                                                                      !00660A2J
*                  Allowed values : 0 - 999,999,999,999,999            !00660A2K
*                  Default value  : 0                                  !00660A2L
                                                                       !00660A2M
       06 AMT                                  TYPE BINARY 64.         !00660A2N
                                                                       !00660A2O
*             The maximum number of times money may be debited from    !00660A2P
*             the account during the specified usage period for        !00660A2Q
                                                                       !00660C19
*             transfer and payment transactions involving this account !00660C1A
*             as the FROM account.                                     !00660C1B
                                                                       !00660C1C
                                                                       !00660C1D
                                                                       !00660C1E
                                                                       !00660C1F
*                                                                      !00660A2T
*                  Allowed values : 0 - 9999                           !00660A2U
*                  Default value  : 0                                  !00660A2V
                                                                       !00660A2W
       06 CNT                                  TYPE BINARY.            !00660A2X
                                                                       !00660A2Y
*             The following sets of usages accumulate usages for       !00660A2Z
                                                                       !00660C1G
*             transfers (intrabank) and payments during the usage      !00660C1H
*             period specified in the Telebanking segment of the IDF.  !00660C1I
                                                                       !00660C1J
                                                                       !00660C1K
                                                                       !00660C1L
                                                                       !00660C1M
                                                                       !00660A32
 02 PRD-USE.                                                           !00660A33
                                                                       !00660A34
    04 XFER.                                                           !00660A35
                                                                       !00660A36
*             The amount of money which has been debited from the      !00660A37
                                                                       !00660C1N
*             account during the specified usage period for transfer   !00660C1O
*             and payment transactions involving this account as the   !00660C1P
*             FROM account.  This is expressed in fractional units     !00660C1Q
*             of the account-issuing FI's currency.                    !00660C1R
                                                                       !00660C1S
                                                                       !00660C1T
                                                                       !00660C1U
                                                                       !00660C1V
*                                                                      !00660A3C
*                  Allowed values : 0 - 999,999,999,999,999            !00660A3D
*                  Default value  : 0                                  !00660A3E
                                                                       !00660A3F
       06 AMT                                  TYPE BINARY 64.         !00660A3G
                                                                       !00660A3H
*             The number of times money has been debited from          !00660A3I
*             the account during the specified usage period for        !00660A3J
                                                                       !00660C1W
*             transfer and payment transactions involving this         !00660C1X
*             account as the FROM account.                             !00660C1Y
                                                                       !00660C1Z
                                                                       !00660C20
                                                                       !00660C21
                                                                       !00660C22
*                                                                      !00660A3M
*                  Allowed values : 0 - 9999                           !00660A3N
*                  Default value  : 0                                  !00660A3O
                                                                       !00660A3P
       06 CNT                                  TYPE BINARY.            !00660A3Q
                                                                       !00660A3R
*             The following sets of usages accumulate usages for       !00660A3S
                                                                       !00660C23
*             transfers (intrabank) and payments during the usage      !00660C24
*             cycle specified in the Telebanking segment of the IDF.   !00660C25
                                                                       !00660C26
                                                                       !00660C27
                                                                       !00660C28
                                                                       !00660C29
                                                                       !00660A3V
 02 CYC-USE.                                                           !00660A3W
                                                                       !00660A3X
    04 XFER.                                                           !00660A3Y
                                                                       !00660A3Z
*             The amount of money which has been debited from the      !00660A40
*             account during the specified usage period for transfer   !00660A41
                                                                       !00660C2A
*             and payment transactions involving this account as the   !00660C2B
*             FROM account.  This is expressed in fractional units     !00660C2C
*             of the account-issuing FI's currency.                    !00660C2D
                                                                       !00660C2E
                                                                       !00660C2F
                                                                       !00660C2G
                                                                       !00660C2H
*                                                                      !00660A45
*                  Allowed values : 0 - 999,999,999,999,999            !00660A46
*                  Default value  : 0                                  !00660A47
                                                                       !00660A48
       06 AMT                                  TYPE BINARY 64.         !00660A49
                                                                       !00660A4A
*             The number of times money has been debited from          !00660A4B
*             the account during the specified usage period for        !00660A4C
                                                                       !00660C2I
*             transfer and payment transactions involving this         !00660C2J
*             account as the FROM account.                             !00660C2K
                                                                       !00660C2L
                                                                       !00660C2M
                                                                       !00660C2N
                                                                       !00660C2O
*                                                                      !00660A4F
*                  Allowed values : 0 - 9999                           !00660A4G
*                  Default value  : 0                                  !00660A4H
                                                                       !00660A4I
       06 CNT                                  TYPE BINARY.            !00660A4J
                                                                       !00660A4K
*             This field contains the date that the period usage       !00660A4L
*             accumulators were last reset to zero.                    !00660A4M
                                                                       !00660A4N
  02 LAST-PRD-RESET-DAT           TYPE DAT.                            !00660A4O
                                                                       !00660A4P
*             This field contains the date that the cycle usage        !00660A4Q
*             accumulators were last reset to zero.                    !00660A4R
                                                                       !00660A4S
  02 LAST-CYC-RESET-DAT           TYPE DAT.                            !00660A4T
                                                                       !00660A4U
END                                                                    !00660A4V
                                                                       !00660A4W
?page "CREDIT LINE PBF Segment"
?section CRLINEPBF
                                                                       !00660A50
                                                                       !00660A51
*             The following fields make up the Credit Line            !!00665
*             segment of the Positive Balance File (PBF).             !!00666
  DEFINITION CRLINEPBF.                                                !00667
                                                                       !00668
 02 SEG-LGTH                      TYPE *.                              !00669
                                                                       !00670
*             The account type associated with the credit line/       !!00671
*             backup account.  The account type will represent        !!00672
*             the actual PBF account type and will be used as         !!00673
*             part of the key to read the PBF record for the          !!00674
*             credit line/backup account.                             !!00675
                                                                       !00676
 02 CR-LINE-ACCT-TYP              PIC X(2).                            !00677
                                                                       !00678
*             The account number associated with the credit line/     !!00679
*             backup account.  This account number will represent     !!00680
*             the actual PBF account number and will be used          !!00681
*             as part of the key to read the PBF record for           !!00682
*             the credit line/backup account.  The account number     !!00683
*             will be left-justified and blank-filled.                !!00684
                                                                       !00685
 02 CR-LINE-ACCT                  PIC X(19).                           !00686
                                                                       !00687
*             This field is not used.                                 !!00688
                                                                       !00689
 02 USER-FLD                      PIC X.                               !00690
                                                                       !00691
END                                                                    !00692
                                                                       !00693
?page "CUSTOMER SHORT NAME PBF Segment"
?section NAMPBF
*             The following fields make up the Customer Short Name    !!00698
*             segment of the Positive Balance File (PBF).             !!00699
DEFINITION NAMPBF.                                                     !00700
                                                                       !00701
 02 SEG-LGTH                      TYPE *.                              !00702
                                                                       !00703
*             Customer short name, left-justified and blank-          !!00704
*             filled                                                  !!00705
                                                                       !00706
 02 CUST-SHORT-NAM                PIC X(40).                           !00707
                                                                       !00708
END                                                                    !00709
                                                                       !00710
                                                                       !00710D00
?page "CUSTOMER SERVICE/FRAUD CONTROL PBF SEGMENT"
?section CSFCPBF
                                                                       !00710D05
*             The following fields make up the Customer                !00710D06
*             Service/Fraud Control segment of the PBF.                !00710D07
                                                                       !00710D08
DEFINITION CSFCPBF.                                                    !00710D09
                                                                       !00710D0A
*             The length of the Customer Service/Fraud                 !00710D0B
*             Control segment.  This varies depending                  !00710D0C
*             on the number of cycles associated with                  !00710D0D
*             the PBF record.                                          !00710D0E
                                                                       !00710D0F
 02 SEG-LGTH                      TYPE *.                              !00710D0G
                                                                       !00710D0H
*             Prior year-to-date interest.  For credit                 !00710D0I
*             accounts, this represents the amount of                  !00710D0J
*             interest charged.  For debit accounts,                   !00710D0K
*             this represents the amount of interest                   !00710D0L
*             earned.  This field is optional; the                     !00710D0M
*             default is zero.                                         !00710D0N
                                                                       !00710D0O
 02 PRIOR-YTD-INTRST              TYPE BINARY 64.                      !00710D0P
                                                                       !00710D0Q
*             Current interest rate.  For credit                       !00710D0R
*             accounts, this will be the rate of                       !00710D0S
*             interest charged.  For debit accounts,                   !00710D0T
*             this will be the rate of interest earned.                !00710D0U
*             This field is optional; the default                      !00710D0V
*             is zeroes.  If data is entered, the first                !00710D0W
*             byte will indicate the scale (number of                  !00710D0X
*             digits to the right of the decimal point).               !00710D0Y
                                                                       !00710D0Z
 02 CUR-INTRST-RATE               PIC 9(8).                            !00710D10
                                                                       !00710D11
*             Cash advance interest rate for credit                    !00710D12
*             accounts.  This field is optional;                       !00710D13
*             the default is zeroes.  If data is entered,              !00710D14
*             the first byte will indicate the scale                   !00710D15
*             (number of digits to the right of the decimal            !00710D16
*             point).                                                  !00710D17
                                                                       !00710D18
 02 CASH-ADV-INTRST-RATE          PIC 9(8).                            !00710D19
                                                                       !00710D1A
*             Minimum amount due for credit accounts.                  !00710D1B
*             This field is optional; the default                      !00710D1C
*             is zero.                                                 !00710D1D
                                                                       !00710D1E
 02 MIN-AMT-DUE                   TYPE BINARY 64.                      !00710D1F
                                                                       !00710D1G
*             Next payment due date (YYMMDD) for credit                !00710D1H
*             accounts.  This field is optional;                       !00710D1I
*             the default is spaces.                                   !00710D1J
                                                                       !00710D1K
 02 NEXT-PMNT-DUE-DAT             TYPE DAT.                            !00710D1L
                                                                       !00710D1M
*             Date the Credit Limit/Overdraft Limit                    !00710D1N
*             was last changed in the format YYMMDD.                   !00710D1O
*             This field is optional; the default                      !00710D1P
*             is spaces.                                               !00710D1Q
                                                                       !00710D1R
 02 CR-OVRDFT-LMT-CHNG-DAT        TYPE DAT.                            !00710D1S
                                                                       !00710D1T
*             Number of cycles present in this record.                 !00710D1U
*             A record may contain information for                     !00710D1V
*             up to 12 cycles.                                         !00710D1W
                                                                       !00710D1X
 02 CYC-CNT                       TYPE BINARY 16 UNSIGNED.             !00710D1Y
                                                                       !00710D1Z
 02 CYC-DATA                      OCCURS 12 TIMES.                     !00710D20
                                                                       !00710D21
    04 DB-CR-HIST                 PIC 9(10).                           !00710D22
                                                                       !00710D23
*             Debit account history.                                   !00710D24
                                                                       !00710D25
    04 DB-HIST                    REDEFINES DB-CR-HIST.                !00710D26
                                                                       !00710D27
*             Number of times the account did not have                 !00710D28
*             sufficient funds for the particular cycle.               !00710D29
*             This field is optional; the default is                   !00710D2A
*             zero.                                                    !00710D2B
                                                                       !00710D2C
       06 NSF                     PIC 9(5).                            !00710D2D
                                                                       !00710D2E
*             Number of times account was overdrawn                    !00710D2F
*             for the particular cycle.  This field is                 !00710D2G
*             optional; the default is zero.                           !00710D2H
                                                                       !00710D2I
       06 OVRDFT                  PIC 9(5).                            !00710D2J
                                                                       !00710D2K
*             Credit account history.                                  !00710D2L
                                                                       !00710D2M
    04 CR-HIST                    REDEFINES DB-CR-HIST.                !00710D2N
                                                                       !00710D2O
*             Number of delinquent payments for the                    !00710D2P
*             particular cycle.  This field is optional;               !00710D2Q
*             the default is zero.                                     !00710D2R
                                                                       !00710D2S
       06 NUM-DELINQ              PIC 9(5).                            !00710D2T
                                                                       !00710D2U
*             Number of times the credit limit was                     !00710D2V
*             exceeded during the particular cycle.                    !00710D2W
*             This field is optional; the default is                   !00710D2X
*             zero.                                                    !00710D2Y
                                                                       !00710D2Z
       06 NUM-CR-LMT-EXCEED       PIC 9(5).                            !00710D30
                                                                       !00710D31
*             Account balance for the particular cycle.                !00710D32
*             This field is optional; the default is                   !00710D33
*             zero.                                                    !00710D34
                                                                       !00710D35
    04 ACCT-BAL                   TYPE BINARY 64.                      !00710D36
                                                                       !00710D37
*             Account status for the particular cycle.                 !00710D38
*             Valid values for this field are the same                 !00710D39
*             as the valid values for the ACCT-STAT                    !00710D3A
*             field in the BASE segment.  This field                   !00710D3B
*             is optional; the default is a space.                     !00710D3C
                                                                       !00710D3D
    04 ACCT-STAT                  PIC X.                               !00710D3E
                                                                       !00710D3F
*             Reserved for future use; default is spaces.              !00710D3G
                                                                       !00710D3H
    04 USER-FLD1                  PIC X.                               !00710D3I
                                                                       !00710D3J
END                                                                    !00710D3K
                                                                       !00710D3L
?page "PREAUTH PBF Segment"
?section PREAUTHPBF
                                                                       !00710D3Q
*             The following fields make up the Preauthorization hold  !!00715
*             segment of the Positive Balance File (PBF).             !!00716
  DEFINITION PREAUTHPBF.                                               !00717
                                                                       !00718
 02 SEG-LGTH                      TYPE *.                              !00719
                                                                       !00720
*                                                                     !!00721
*             The following fileds contain preauthorized hold amount  !!00722
*             information created by BASE24-pos.  Please note that    !!00723
*             even though the number of occurrences are fixed, the    !!00724
*             information within this segment is stored as though it  !!00725
*             were variable length.                                   !!00726
*                                                                     !!00727
 02 PRE-AUTH                      OCCURS 10 TIMES.                     !00728
                                                                       !00729
                                                                       !00730
*                                                                     !!00731
*             The sequence number of the preauthorized hold.          !!00732
*                                                                     !!00733
    04 SEQ-NUM                      PIC X(12).                         !00734
                                                                       !00735
                                                                       !00736
*                                                                     !!00737
*             The amount, in whole and fractional currency units      !!00738
*             (e.g., dollars and cents), of the preauthorized hold.   !!00739
*                                                                     !!00740
    04 HOLD-AMT                     TYPE BINARY 64.                    !00741
                                                                       !00742
                                                                       !00743
*                                                                     !!00744
*             The date and time the hold amount is cleared and no     !!00745
*             longer taken into consideration during Authorization    !!00746
*             processing.                                             !!00747
*                                                                     !!00748
    04 PR-TIMESTAMP                 TYPE BINARY 16 OCCURS 3 TIMES.     !00749
                                                                       !00750
                                                                       !00751
*                                                                     !!00752
*             This field is not used.                                 !!00753
*                                                                     !!00754
    04 USER-FLD6                    PIC XX.                            !00755
                                                                       !00756
END                                                                    !00757
?nocomments
?nodeflist
?page
?section PBF
                                                                       !00766
                                                                       !00767
RECORD PBF.            FILE IS "PBF" KEY-SEQUENCED.                    !00768
                                                                       !00769
 02 SEG0                TYPE PBFBASE.                                  !00770
 02 SEG2                TYPE POSPBF.                                   !00771
 02 SEG3                TYPE TLRPBF.                                   !00772
                                                                       !00773B00
                                                                       !00773B01
                                                                       !00773B02
 02 SEG14               TYPE TBPBF.                                    !00775A01
                                                                       !00775A02
 02 SEG15               TYPE CRLINEPBF.                                !00776
 02 SEG16               TYPE NAMPBF.                                   !00777
                                                                       !00777D00
 02 SEG21               TYPE CSFCPBF.                                  !00777D01
                                                                       !00777D02
 02 SEG22               TYPE PREAUTHPBF.                               !00778
                                                                       !00779
KEY 0 IS PRIKEY.                                                       !00780
                                                                       !00781
END                                                                    !00782
                                                                       !00783
                                                                       !00784
?deflist
