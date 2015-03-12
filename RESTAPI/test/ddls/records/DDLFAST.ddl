**FIX2.26  11/17/05  DDLFAST 6001 DDL    BP60DDL  BP09304  A                 ***
!*SEQ0.04  11/01/00  DDLFAST 6000 DDL    BP60DDL    04000                      !
!*SYNC.04  12/08/98  DDLFAST 5300 DDL    BP53DDL    04000                      !
!*SYNC.03  08/28/98  DDLFAST 5300 DDL    BP53DDL    03000                      !
!*SYNC.03  08/22/97  DDLFAST 5100 DDL    BP51DDL    03000                      !
!*SYNC.02  06/25/96  DDLFAST 5100 DDL    BP51DDL    02000                      !
!*SEQ2.00  11/10/92  DDLFAST 5100 DDL    BP51DDL                               !
?PAGE "AST - Auth Selection Table"
?SECTION AST-HISTORY
********************************************************************** !00000A02
*                                                                    * !00000A03
*                             BASE24-pos                             * !00000A04
*                             ----------                             * !00000A05
*                                                                    * !00000A06
*             DDL for the BASE24 Authorization Selection Table       * !00000A07
*                                                                    * !00000A08
*                    Proprietary Software Product                    * !00000A09
*                                                                    * !00000A0A
*                          ACI Worldwide Inc.                        * !00000A0B
*                        330 South 108th Avenue                      * !00000A0C
*                        Omaha, Nebraska  68154                      * !00000A0D
*                            (402) 390-7600                          * !00000A0E
*                                                                    * !00000A0F
*    Copyright by ACI Worldwide Inc. 1992-2005                       * !00000A0G
*                                                                    * !00000A0H
*    All Rights Reserved.                                            * !00000A0I
*                                                                    * !00000A0J
********************************************************************** !00000A0K
*                                                                      !00000A0L
* Record of Changes:                                                   !00000A0M
*                                                                      !00000A0N
* Date        Person                                                   !00000A0O
* ---------   -------                                                  !00000A0P
*********************************************************************  !00000A0Q
*             Release 6.0                                           *  !00000A0R
*********************************************************************  !00000A0S
* 14OCT2005   AlbeldR                                                  !00000A0T
* Symptom:    Expanded AST/RTBL Enhancement                            !00000A0U
* Problem:    None.                                                    !00000A0V
* Fix:        The number of array entries has been increased           !00000A0W
*             from 36 to 48.                                           !00000A0X
* Dependency: Apply fix to DDLFAST and run MAKE. Refer to              !00000A0Y
*             BA60UD09.SCNRTBL for a complete listing of               !00000A0Z
*             dependencies.                                            !00000A0a
* Reference:  WO #041002-11                                            !00000A0b
*                                                                      !00000A0c
*********************************************************************  !00000A0d
?SECTION AST
                                                                       !00000A0g
*********************************************************************  !00000A0h
*               Auth Selection Table                                *  !00000A0i
*********************************************************************  !00000A0j
*                                                                   *  !00000A0k
*   Identification                                                  *  !00000A0l
*                                                                   *  !00000A0m
*     This file is used to set up authorization routing for credit  *  !00000A0n
*     cards. Based upon the key entered, the primary and alternate  *  !00000A0o
*     destinations for authorization will be found.                 *  !00000A0p
*                                                                   *  !00000A0q
*   Security                                                        *  !00000A0r
*                                                                   *  !00000A0s
*     The AST is secured under Tandem's group level security so that*  !00000A0t
*     only authorized network operators may access (or start        *  !00000A0u
*     programs which will access) the file.                         *  !00000A0v
*                                                                   *  !00000A0w
*       USER ID         = <BASE24 node name>.*                      *  !00000A0x
*       FILE CODE       = 0                                         *  !00000A0y
*       ACCESS SECURITY = GGGG                                      *  !00000A0z
*                                                                   *  !00000A10
*   Usage                                                           *  !00000A11
*                                                                   *  !00000A12
*       Authorization     I    Sequential              Shared       *  !00000A13
*       File Maintenance  I/O  Random(Primary)         Shared       *  !00000A14
*                                                                   *  !00000A15
*********************************************************************  !00000A16
                                                                       !00000A17
?comments
                                                                       !00000A1A
                                                                       !00005A00
                                                                       !00005A01
                                                                       !00005A02
*                                                                     !!00045
*             The Authorization Selection Table File (AST) defines    !!00046
*             authorization routing for credit and debit card         !!00047
*             transactions.  It contains one record for each retailer !!00048
*             sponsor in the system.  Each record indicates a primary !!00049
*             authorizer, up to two secondary authorizers, and a      !!00050
*             default action in the event that all authorizers        !!00051
*             specified are unavailable to authorize the transaction. !!00052
*             Furthermore, each record takes into consideration       !!00053
*             special parameters such as floor limits and whether the !!00054
*             card issuer is on-us or not-on-us.                      !!00055
*                                                                     !!00056
*             The AST is used primarily by the Router logic in the    !!00057
*             Device Handler/Router/Authorization process             !!00058
*                                                                     !!00059
*             From the parameters in the AST, Router is able to       !!00060
*             determine the appropriate authorizing entity for any    !!00061
*             given transaction type.                                 !!00062
*                                                                     !!00063
*             The following pages describe the fields included in an  !!00064
*             AST record.                                             !!00065
*                                                                     !!00066
*             LCONF ASSIGN:       BP-AST                              !!00067
*                                                                     !!00068
                                                                       !00069
RECORD AST.                      FILE IS "AST" KEY-SEQUENCED.          !00070
                                                                       !00071
                                                                       !00072
*                                                                     !!00073
*             The primary key to this file, which is defined by the   !!00074
*             values present in the following two fields.             !!00075
*                                                                     !!00076
  02 PRI-KEY                        KEYTAG 0.                          !00077
*                                                                     !!00078
*             The FIID of the financial institution or interchange to !!00079
*             which the information contained in this AST record      !!00080
*             applies.  The network participant (i.e., card issuer,   !!00081
*             interchange, terminal owner, or retailer sponsor)       !!00082
*             specifies the FIID that controls its transactions.  The !!00083
*             FIID must be unique within the logical network.         !!00084
*             Financial institution FIIDs are defined in the          !!00085
*             Institution Definition File (IDF), and Interchange      !!00086
*             FIIDs are defined in the Interchange Configuration File !!00087
*             (ICF).                                                  !!00088
*                                                                     !!00089
*             BASE24-pos Router uses one of three possible FIID       !!00090
*             values to locate an AST record containing an            !!00091
*             authorization table entry that matches the service and  !!00092
*             issuer codes received with the transaction.             !!00093
*                                                                     !!00094
*             If no CPF record exists and the TERM-FIID field in the  !!00095
*             BASE24-pos Standard Internal Message (PSTM) contains an !!00096
*             entry other than zeros or blanks, Router attempts to    !!00097
*             locate a valid AST record using the FIID in the TERM-   !!00098
*             FIID field in the PSTM.                                 !!00099
*                                                                     !!00100
*             If no CPF record exists and the TERM-FIID field in the  !!00101
*             PSTM contains zeros or blanks, Router reads the POS     !!00102
*             Retailer Definition File (PRDF) and attempts to locate  !!00103
*             a valid AST record using the FIID in the RKEY.FIID      !!00104
*             field in the retailer sponsor's PRDF record.            !!00105
*                                                                     !!00106
*             If a CPF record exists, Router reads the CPF and        !!00107
*             attempts to locate a valid AST record using the FIID    !!00108
*             contained in the FIID field in the Base segment of the  !!00109
*             CPF record.  When a CPF record exists and a valid AST   !!00110
*             record cannot be located using this FIID, Router can    !!00111
*             make a second attempt to locate a valid AST record,     !!00112
*             depending on the source of the transaction and the      !!00113
*             value of the POS-RTAU-AST-ROUTE param in the Logical    !!00114
*             Network Configuration File (LCONF).  The POS-RTAU-AST-  !!00115
*             ROUTE param setting specifies whether Router makes the  !!00116
*             second attempt to locate a valid AST record when the    !!00117
*             transaction originated at a POS device or a host.       !!00118
*                                                                     !!00119
*             o  If the transaction originated at a POS device or a   !!00120
*                host and the POS-RTAU-AST-ROUTE param is set to 0    !!00121
*                (normal routing), Router does not make a second      !!00122
*                attempt to locate a valid AST record.                !!00123
*                                                                     !!00124
*             o  If the transaction originated at a POS device or a   !!00125
*                host and the POS-RTAU-AST-ROUTE param is set to 1    !!00126
*                (enhanced routing), Router searches for a valid AST  !!00127
*                record using the FIID in the TERM-FIID field in the  !!00128
*                PSTM, if available, or the RKEY.FIID field in the    !!00129
*                retailer sponsor's PRDF record.                      !!00130
*                                                                     !!00131
*             o  If the transaction originated at an interchange,     !!00132
*                Router searches for a valid AST record using the     !!00133
*                FIID in the TERM-FIID field in the PSTM regardless   !!00134
*                of the POS-RTAU-AST-ROUTE param setting.             !!00135
*                                                                     !!00136
*             The Interchange Interface obtains the value for the     !!00137
*             TERM-FIID field in the PSTM from the PRIKEY.FIID field  !!00138
*             in the interchange's ICF record.  The Device Handler    !!00139
*             obtains the value for the TERM-FIID field in the PSTM   !!00140
*             from the TERM-OWNER.FIID field in the terminal's POS    !!00141
*             Terminal Data File (PTDF) record.                       !!00142
*                                                                     !!00143
     04 FIID                        TYPE *.                            !00144
*                                                                     !!00145
*             The retailer ID of the retailer to which the AST        !!00146
*             information applies.                                    !!00147
*                                                                     !!00148
*             The retailer is defined in the POS Retailer Definition  !!00149
*             File (PRDF).  The Device Handler/Router/Authorization   !!00150
*             process uses the retailer id to locate an AST record.   !!00151
*             If it cannot find a match on a specific retailer ID,    !!00152
*             it checks for a match on the retailer program (set in   !!00153
*             the RETAILER-PROG field of the PRDF).  If a retailer    !!00154
*             program is not found and an AST record containing one   !!00155
*             asterisk exists, the Device Handler/Router/             !!00156
*             Authorization process uses the routing parameters in    !!00157
*             that AST record.                                        !!00158
*                                                                     !!00159
*             If the transaction is a check guarantee or check        !!00160
*             verification transaction, the check routing group       !!00161
*             field from the PRDF, if non-blank, will be used to      !!00162
*             match on this field.  If the check routing group        !!00163
*             field is blank, the retailer id will be used to match   !!00164
*             on this field.                                          !!00165
*                                                                     !!00166
     04 RETAILER-ID                 PIC X(19).                         !00167
                                                                       !00168
                                                                       !00168A00
*                                                                     !!00168A01
*             Reserved for future use.                                !!00168A02
*                                                                     !!00168A03
  02 USER-FLD0                      PIC X(5).                          !00168A04
                                                                       !00168A05
                                                                       !00169
*                                                                     !!00170
*             This area is reserved for user comments concerning this !!00171
*             record.                                                 !!00172
*                                                                     !!00173
  02 COMMENTS                       PIC X(30).                         !00174
                                                                       !00174A00
                                                                       !00174A01
*                                                                     !!00174A02
*             USER-FLD-ACI is reserved for future BASE24 product use  !!00174A03
*             only. The designation of "product use only" provides    !!00174A04
*             ACI with the ability to deplete the number of bytes     !!00174A05
*             available within USER-FLD-ACI as product enhancements   !!00174A06
*             are introduced.  When product enhancements require the  !!00174A07
*             addition of new fields within this file, the procedure  !!00174A08
*             to be followed is to deplete bytes from USER-FLD-ACI    !!00174A09
*             and use that number of bytes to define new fields. The  !!00174A0A
*             new field definition(s) should precede the              !!00174A0B
*             USER-FLD-ACI field.                                     !!00174A0C
*                                                                     !!00174A0D
  02 USER-FLD-ACI                 PIC X(15).                           !00174A0E
                                                                       !00174A0F
                                                                       !00174A0G
*                                                                     !!00175
*             Reserved for future use.                                !!00176
*                                                                     !!00177
  02 USER-FLD1                      PIC X.                             !00178
                                                                       !00179
                                                                       !00179A00
*                                                                     !!00179A01
*             USER-FLD-CUST is reserved for BASE24 customer use only. !!00179A02
*             Only customers are allowed to use USER-FLD-CUST space.  !!00179A03
*                                                                     !!00179A04
  02 USER-FLD-CUST                PIC X(10).                           !00179A05
                                                                       !00179A06
                                                                       !00180
*                                                                     !!00181
*             An indicator identifying the last transaction to update !!00182
*             this record.  The value in this field ensures against   !!00183
*             multiple or incomplete updates due to process failure   !!00184
*             and restart. This field occurs in every record that is  !!00185
*             updated by the online system.                           !!00186
*                                                                     !!00187
  02 LAST-TRAN                      TYPE *.                            !00188
                                                                       !00189
                                                                       !00190
*                                                                     !!00191
*             An indicator identifying the last file maintenance      !!00192
*             action on this record.  This includes the user who      !!00193
*             performed the update, the time at which it was done,    !!00194
*             and the type of update.                                 !!00195
*                                                                     !!00196
  02 LAST-FM                        TYPE *.                            !00197
                                                                       !00198
*                                                                     !!00199
*             The number of services for which routing parameters are !!00200
*             being set up in this record.  The services totaled in   !!00201
*             the value in this field are specified in the AUTH-TBL-  !!00202
*             CONF.SRV fields in this record.                         !!00203
*                                                                     !!00204
  02 NUM-OF-SERVICES           TYPE BINARY 16 UNSIGNED.                !00205
                                                                       !00206
*                                                                     !!00207
*             The table used by the AST Server to sort entries in the !!00208
*             AST record.  Entries are sorted first by service, then  !!00209
*             by card issuer.  Once sorted, the entries are placed in !!00210
*             the AUTH-TBL field of this record and displayed         !!00211
*             whenever the record is viewed via BASE24 files          !!00212
*             maintenance.                                            !!00213
*                                                                     !!00214
*             The AUTH-TBL-CONF table is defined by the following     !!00215
*             three fields.                                           !!00216
*                                                                     !!00217
                                                                       !00217A00
  02 AUTH-TBL-CONF             OCCURS 48 TIMES.                        !00217A01
                                                                       !00217A02
                                                                       !00218A00
                                                                       !00218A01
                                                                       !00219
                                                                       !00220
*                                                                     !!00221
*             A numeric code representing service types for which     !!00222
*             routing parameters can be set.  These codes are used by !!00223
*             the AST Server for sorting purposes.  Valid codes are:  !!00224
*                                                                     !!00225
*             00    = VISA debit                                      !!00226
*             01    = VISA dual                                       !!00227
*             02    = VISA credit                                     !!00228
*             03    = MasterCard debit                                !!00229
*             04    = MasterCard dual                                 !!00230
*             05    = MasterCard credit                               !!00231
*             06    = American Express                                !!00232
*             07    = Discover                                        !!00233
*             08    = Private label credit                            !!00234
*             09    = Carte Blanche                                   !!00235
*             10    = Diners Club                                     !!00236
*             11    = Special Check                                   !!00237
*             12    = Proprietary debit                               !!00238
*             13    = Demonstration                                   !!00239
*             14    = All services (**)                               !!00240
*             15-35 = Reserved                                        !!00241
*                                                                     !!00242
*             Services entered in the AUTH-TBL.SRV field, but not     !!00243
*             initially defined in the AUTH-TBL-CONF.SRV field, are   !!00244
*             placed at the end of the AUTH-TBL-CONF.SRV field and    !!00245
*             assigned codes 15 through 35.                           !!00246
*                                                                     !!00247
     04  SRV                   PIC XX.                                 !00248
*                                                                     !!00249
*             The number of each service type defined in the          !!00250
*             previous field in this record.  The value in this       !!00251
*             field is used by the AST Server for sorting             !!00252
*             purposes.                                               !!00253
*                                                                     !!00254
     04  NUM                   TYPE BINARY 16.                         !00255
*                                                                     !!00256
*             The position of each entry in the AUTH-TBL.SRV field.   !!00257
*             The first position is zero.  The value in this field is !!00258
*             used by the AST Server.                                 !!00259
*                                                                     !!00260
     04  OFST                  TYPE BINARY 16.                         !00261
                                                                       !00262
                                                                       !00263
*                                                                     !!00264
*             This field is reserved for future use.                  !!00265
*                                                                     !!00266
  02 LMT-FACTOR                TYPE BINARY 16.                         !00267
                                                                       !00268
*                                                                     !!00269
*             The number of entries in the AUTH-TBL field.            !!00270
*                                                                     !!00271
  02 NUM-AUTH-ENTRIES          TYPE BINARY 16 UNSIGNED.                !00272
                                                                       !00273
*                                                                     !!00274
*             The authorization routing table used by Router to       !!00275
*             determine the appropriate destination for transaction   !!00276
*             requests.                                               !!00277
*                                                                     !!00278
                                                                       !00278A00
  02 AUTH-TBL                  OCCURS 0 TO 48 TIMES                    !00278A01
                                                                       !00278A02
                                                                       !00279A00
                                                                       !00279A01
                               DEPENDING ON NUM-AUTH-ENTRIES.          !00280
                                                                       !00281
                                                                       !00282
*                                                                     !!00283
*             A code entered by the user to identify the types of     !!00284
*             services for which routing parameters are being         !!00285
*             defined.                                                !!00286
*                                                                     !!00287
*             One- or two-character codes are used to identify card   !!00288
*             types in files throughout BASE24.  The same codes must  !!00289
*             be used for a particular card type in all of the files. !!00290
*             These codes are also used to identify service types in  !!00291
*             BASE24-pos.  Codes used in this field are either        !!00292
*             reserved by BASE24 or user-defined. Reserved codes are  !!00293
*             to be used only as defined, and include:                !!00294
*                                                                     !!00295
*             AD = Administrative (BASE24-atm only)                   !!00296
*             AX = American Express credit                            !!00297
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00298
*                  only)                                              !!00299
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00300
*                  CC-CZ)                                             !!00301
*             CB = Carte Blanche credit                               !!00302
*             D  = Demonstration (BASE24-atm only)                    !!00303
*             DC = Diners Club credit                                 !!00304
*             DS = Discover (Sears) credit                            !!00305
*             M  = MasterCard credit                                  !!00306
*             MD = MasterCard debit (See BASE24-pos note below)       !!00307
*             MM = MasterCard dual (See BASE24-pos note below)        !!00308
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00309
*             SC = Special, Check (BASE24-pos only)                   !!00310
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00311
*                  Check Application only)                            !!00312
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00313
*                  Application only)                                  !!00314
*             V  = VISA credit                                        !!00315
*             VD = VISA debit (See BASE24-pos note below)             !!00316
*             VV = VISA dual (See BASE24-pos note below)              !!00317
*                                                                     !!00318
*             Codes with a first character of C, except code CB, are  !!00319
*             recommended to identify private label credit cards.     !!00320
*                                                                     !!00321
*             Codes with a first character of P are required to       !!00322
*             identify proprietary debit cards.  BASE24 treats cards  !!00323
*             with proprietary debit codes and codes MD and VD as     !!00324
*             debit cards and treats cards with all other codes as    !!00325
*             credit cards.                                           !!00326
*                                                                     !!00327
*             Administrative (AD), Business deposit (BD),             !!00328
*             Demonstration (D), Special purpose (SP), and Super      !!00329
*             teller (ST) are special-use card types used by          !!00330
*             BASE24-atm.                                             !!00331
*                                                                     !!00332
*             Business deposit (BD) is also a special-use card type   !!00333
*             used by BASE24-teller to identify cards that can only   !!00334
*             be used to initiate deposit transactions.               !!00335
*             BASE24-teller does not perform any other processing     !!00336
*             based on card type; however, BASE24 guidelines should   !!00337
*             still be used when establishing card types for          !!00338
*             BASE24-teller.                                          !!00339
*                                                                     !!00340
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00341
*             processed as debit or credit card types, based on the   !!00342
*             default combo card type specified in the CPF.           !!00343
*                                                                     !!00344
*             Special, Check (SC) is a special-use card type used to  !!00345
*             initiate BASE24-pos check guarantee and check           !!00346
*             verification transactions only.                         !!00347
*                                                                     !!00348
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00349
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00350
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00351
*             BASE24-pos automatically includes the MD and MM card    !!00352
*             types with the MasterCard credit (M) card type, and     !!00353
*             automatically includes the VD and VV card types with    !!00354
*             the VISA credit (V) card type.                          !!00355
*                                                                     !!00356
*             User-defined Codes:  The user can add any one- or two-  !!00357
*             character code not included in the reserved code list   !!00358
*             above, according to the following guidelines:           !!00359
*                                                                     !!00360
*             o  The first character must be alphabetic (A, B, D-O,   !!00361
*                and Q-Z).                                            !!00362
*                                                                     !!00363
*             o  The second character can be A-Z, 0-9, or a blank.    !!00364
*                                                                     !!00365
*             o  A valid COBNAMES table entry is recommended for each !!00366
*                user-defined code.                                   !!00367
*                                                                     !!00368
*                                                                     !!00369
     04 SRV                         PIC XX.                            !00370
                                                                       !00371
                                                                       !00372
*                                                                     !!00373
*             A code used to establish different routing parameters   !!00374
*             for on-us versus not-on-us cards for the same service.  !!00375
*             In other words, based on issuer codes for each service  !!00376
*             type, a separate set of routing parameters can be set   !!00377
*             up for on-us and not-on-us cards; or, one set of        !!00378
*             parameters can be set up for all cards within a         !!00379
*             service, regardless of card issuer.  Valid issuer       !!00380
*             codes are:                                              !!00381
*                                                                     !!00382
*             00-29 = On-us                                           !!00383
*             30-99 = Not-on-us                                       !!00384
*             *_    = All                                             !!00385
*                                                                     !!00386
     04 ISS                         PIC XX.                            !00387
                                                                       !00388
*                                                                     !!00389
*             A text description of the corresponding issuer.         !!00390
*                                                                     !!00391
     04 ISS-DESC                    PIC X(10).                         !00392
                                                                       !00393
                                                                       !00394
*                                                                     !!00395
*             The floor limit, in whole currency units (e.g.,         !!00396
*             dollars), for purchase transactions.                    !!00397
*                                                                     !!00398
*             The value in this field is used only if it is less than !!00399
*             the value in the SRV.NP-FLR-LMT field in the POS        !!00400
*             Terminal Data File (PTDF) or if the PTDF SRV.NP-FLR-    !!00401
*             LMT value is zero.  Zeros in this field invoke the      !!00402
*             routing action specified in the OVER-LMT table.  Valid  !!00403
*             values are 0 through 999,999,999.                       !!00404
*                                                                     !!00405
     04 PR-FLR-LMT                  TYPE BINARY 32.                    !00406
*                                                                     !!00407
*             The floor limit, in whole currency units (e.g.,         !!00408
*             dollars), for cash advance transactions.                !!00409
*                                                                     !!00410
*             The value in this field is used only if it is less than !!00411
*             the value in the SRV.CA-FLR-LMT field in the POS        !!00412
*             Terminal Data File (PTDF) or if the PTDF SRV.CA-FLR-    !!00413
*             LMT value is zero.  Zeros in this field invoke the      !!00414
*             routing action specified in the OVER-LMT table.  Valid  !!00415
*             values are 0 through 999,999,999.                       !!00416
*                                                                     !!00417
     04 CA-FLR-LMT                  TYPE BINARY 32.                    !00418
*                                                                     !!00419
*             The floor limit, in whole currency units (e.g.,         !!00420
*             dollars), for mail/phone order transactions.            !!00421
*                                                                     !!00422
*             The value in this field is used if it is less than      !!00423
*             the value in the SRV.MO-FLR-LMT field in the POS        !!00424
*             Terminal Data File (PTDF) or if the PTDF SRV.MO-FLR-    !!00425
*             LMT value is zero.  Zeros in this field invoke the      !!00426
*             routing action specified in the OVER-LMT table.  Valid  !!00427
*             values are 0 through 999,999,999.                       !!00428
*                                                                     !!00429
     04 MO-FLR-LMT                  TYPE BINARY 32.                    !00430
                                                                       !00431
                                                                       !00432
*                                                                     !!00433
*             The values in the following fields are used to          !!00434
*             determine routing for transactions over a specified     !!00435
*             floor limit as described by the above LMT fields.       !!00436
*             The following fields indicate the primary and alternate !!00437
*             authorizers for each entry in the AUTH-TBL.  The actual !!00438
*             values are set in the Routing Table File (RTBL) and     !!00439
*             used here.                                              !!00440
*                                                                     !!00441
     04 OVER-LMT.                                                      !00442
*                                                                     !!00443
*             The primary authorizer for this entry in the AUTH-TBL   !!00444
*             field.  Router forwards transaction requests to this    !!00445
*             entity first.                                           !!00446
*                                                                     !!00447
        06 PRI                      PIC XX.                            !00448
*                                                                     !!00449
*             The first alternate authorizer for this entry in        !!00450
*             AUTH-TBL field.  Router forwards transaction requests   !!00451
*             to this entity if the primary authorizer is             !!00452
*             unavailable.                                            !!00453
*                                                                     !!00454
        06 ALT1                     PIC XX.                            !00455
*                                                                     !!00456
*             The second alternate authorizer for this entry in       !!00457
*             AUTH-TBL field.  Router forwards transaction requests   !!00458
*             to this entity if the first alternate authorizer is     !!00459
*             unavailable.                                            !!00460
*                                                                     !!00461
        06 ALT2                     PIC XX.                            !00462
                                                                       !00463
                                                                       !00464
*                                                                     !!00465
*             A code indicating the action to be taken if none of the !!00466
*             authorizers defined in the previous three fields are    !!00467
*             available and the transaction amount is less than       !!00468
*             the value in the OFF-LMT field in this record.  Valid   !!00469
*             values are:                                             !!00470
*                                                                     !!00471
*             0 = Decline the transaction                             !!00472
*             1 = Authorize blind                                     !!00473
*             2 = Issue a call for authorization                      !!00474
*                                                                     !!00475
        06 DFLT-ACTION             PIC X.                              !00476
                                                                       !00477
                                                                       !00478
*                                                                     !!00479
*             The values in the following fields are used to          !!00480
*             determine routing for transactions under a specified    !!00481
*             floor limit as described by the above LMT fields.       !!00482
*             The following fields indicate the primary and alternate !!00483
*             authorizers for each entry in the AUTH-TBL.  The actual !!00484
*             values are set in the Routing Table File (RTBL) and     !!00485
*             used here.                                              !!00486
*                                                                     !!00487
*                                                                     !!00488
     04 UNDER-LMT.                                                     !00489
*                                                                     !!00490
*             The primary authorizer for this entry in the AUTH-TBL   !!00491
*             field.  Router forwards transaction requests to this    !!00492
*             entity first.                                           !!00493
*                                                                     !!00494
        06 PRI                      PIC XX.                            !00495
*                                                                     !!00496
*             The first alternate authorizer for this entry in the    !!00497
*             AUTH-TBL field.  Router forwards transaction requests   !!00498
*             to this entity if the primary authorizer is             !!00499
*             unavailable.                                            !!00500
*                                                                     !!00501
        06 ALT1                     PIC XX.                            !00502
*                                                                     !!00503
*             The second alternate authorizer for this entry in the   !!00504
*             AUTH-TBL field.  Router forwards transaction requests   !!00505
*             to this entity if the first alternate authorizer is     !!00506
*             unavailable.                                            !!00507
*                                                                     !!00508
        06 ALT2                     PIC XX.                            !00509
                                                                       !00510
                                                                       !00511
*                                                                     !!00512
*             A code indicating what action should be taken if none   !!00513
*             of the authorizers defined in the previous three fields !!00514
*             are available and the transaction amount is less than   !!00515
*             or equal to the value in the OFF-LMT field in this      !!00516
*             record.  Valid values are:                              !!00517
*                                                                     !!00518
*             0 = Decline the transaction                             !!00519
*             1 = Authorize blind                                     !!00520
*             2 = Issue a call for authorization                      !!00521
*                                                                     !!00522
        06 DFLT-ACTION             PIC X.                              !00523
                                                                       !00524
                                                                       !00525
*                                                                     !!00526
*             The offline floor limit, in whole currency units (e.g., !!00527
*             dollars), allowed by the card issuer when both the      !!00528
*             primary and alternate authorizers for a card type are   !!00529
*             unavailable.  If the transaction amount is less than or !!00530
*             equal to the value in this field, the default action    !!00531
*             defined in the applicable DFLT-ACTION field is used to  !!00532
*             process the transaction.                                !!00533
*                                                                     !!00534
     04 OFF-LMT                    TYPE BINARY 32.                     !00535
                                                                       !00536
END                                                                    !00537
?nocomments
