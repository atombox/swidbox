**FIX2.14  04/23/01  DDLGPBFX6008 DDL    BA60DDL  BA04433  H                 ***
**FIX2.14  03/21/01  DDLGPBFX6007 DDL    BA60DDL  BA04357  G                 ***
**SEQ0.04  11/01/00  DDLGPBFX6006 DDL    BA60DDL  BA04000  F                 ***
**SYNC.04  12/09/98  DDLGPBFX5306 DDL    BA53DDL  BA04000  F                 ***
**SYNC.03  08/28/98  DDLGPBFX5306 DDL    BA53DDL  BA03000  F                 ***
**SYNC.03  08/22/97  DDLGPBFX5106 DDL    BA51DDL  BA03000  F                 ***
**SYNC.02  06/25/96  DDLGPBFX5106 DDL    BA51DDL  BA02000  F                 ***
**FIX2.00  12/08/95  DDLGPBFX5106 DDL    BA51DDL  BA51245  F                 ***
**FIX2.00  11/13/95  DDLGPBFX5105 DDL    BA51DDL  BA51218  E                 ***
**FIX2.00  06/06/95  DDLGPBFX5104 DDL    BA51DDL  BA51033  D                 ***
**FIX2.00  01/20/95  DDLGPBFX5103 DDL    BA51DDL  BA50284  C                 ***
**FIX2.00  09/24/93  DDLGPBFX5002 DDL    BA50DDL  BA50255  B                 ***
**FIX2.00  02/09/93  DDLGPBFX5001 DDL    BA50DDL  BA50064  A                 ***
!*SEQ2.00  10/20/92  DDLGPBFX5000 DDL    BA50DDL                               !
                                                                       !00000G00
?section PBF-Refresh-history
********************************************************************** !00000G03
*                                                                    * !00000G04
*                              BASE24                                * !00000G05
*                              ------                                * !00000G06
*                                                                    * !00000G07
*                   DDL for the PBF Refresh Format                   * !00000G08
*                                                                    * !00000G09
*                    Proprietary Software Product                    * !00000G0A
*                                                                    * !00000G0B
*                         ACI Worldwide Inc.                         * !00000G0C
*                       330 South 108th Avenue                       * !00000G0D
*                       Omaha, Nebraska  68154                       * !00000G0E
*                           (402) 390-7600                           * !00000G0F
*                                                                    * !00000G0G
*    Copyright by ACI Worldwide Inc. 1993 - 2001                     * !00000G0H
*                                                                    * !00000G0I
*    All Rights Reserved.  No part of this document may be           * !00000G0J
*    reproduced in any manner without the prior written consent of   * !00000G0K
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000G0L
*    confidentiality is strictly maintained.  Use of any copyright   * !00000G0M
*    notice does not imply unrestricted or public access to these    * !00000G0N
*    materials.                                                      * !00000G0O
*                                                                    * !00000G0P
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000G0Q
*                                                                    * !00000G0R
********************************************************************** !00000G0S
*                                                                      !00000G0T
* Record of Changes:                                                   !00000G0U
*                                                                      !00000G0V
* Date        Person/Emp #                                             !00000G0W
* ---------   ------------                                             !00000G0X
                                                                       !00000G0Y
                                                                       !00005G00
                                                                       !00005G01
                                                                       !00005G02
* 930126         RRC                                                   !00062A02
* SYMPTOM:       None.                                                 !00062A03
* PROBLEM (C) :  The HOLD-AMT field was defined as a PIC X(19) when it !00062A04
*                be a PIC 9(18).                                       !00062A05
* FIX:           Changed the HOLD-AMT field to be a PIC 9(18).         !00062A06
* DEPENDENCIES:  Re-DDL.  All modules that source in the CAF must      !00062A07
*                be recompiled.  Refer to the Release 5.0 Installation !00062A08
*                Documentation for further details.                    !00062A09
* REFERENCE:     BETA Database RPC #002752                             !00062A0A
                                                                       !00062A0B
**********************************************************************!!00063
                                                                       !00063B00
* 93/09/22       DCS                                                   !00063B01
* SYMPTOM:       None.                                                 !00063B02
* PROBLEM:       None.                                                 !00063B03
* FIX:           1.  Updated the comments pertaining to the POSPBFX-   !00063B04
*                    DISPLAY, TLRPBFX-DISPLAY, CRLINEPBFX-DISPLAY,     !00063B05
*                    NAMPBFX-DISPLAY, and PREAUTHPBFX-DISPLAY          !00063B06
*                    definitions to indicate that the presence of      !00063B07
*                    each segment is controlled at the FIID level      !00063B08
*                    via the IDF FIID-SEG-MAP indicator field.         !00063B09
*                2.  Added a record segment overview.                  !00063B0A
* DEPENDENCIES:  None.                                                 !00063B0B
* REFERENCE:     RPC #004172.                                          !00063B0C
********************************************************************** !00063B0D
                                                                       !00063C00
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                    * !00063C01
********************************************************************** !00063C02
*                                                                      !00063C03
* 94/08/22       Rel 1.0 TB Design Team - JMS/583                      !00063C04
* SYMPTOM:       BASE24-telebanking Initial Release                    !00063C05
* PROBLEM:       (E) None.                                             !00063C06
* FIX:           Added the TBPBFX-DISPLAY definition for PBFXD         !00063C07
*                segment 14.                                           !00063C08
* DEPENDENCIES:  Re-DDL.  All modules that source in the PBFXD or      !00063C09
*                TBPBFX-DISPLAY definition must be recompiled.         !00063C0A
* REFERENCE:     BASE24 Telebanking System Specification               !00063C0B
*                Work Order Number TB930301-01                         !00063C0C
*                                                                      !00063C0D
                                                                       !00063D00
*********************************************************************  !00063D01
*                  RELEASE 5.1                                      *  !00063D02
*********************************************************************  !00063D03
* 01JUN95     JMS/583                                                  !00063D04
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00063D05
* PROBLEM:    <E> None.                                                !00063D06
* FIX:        Removed old history sections not associated with a       !00063D07
*             specific Fix level.                                      !00063D08
* IMPLEMENT:  None.                                                    !00063D09
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00063D0A
                                                                       !00063D0B
                                                                       !00063E00
*********************************************************************  !00063E01
*                                                                      !00063E02
* 95NOV9     SLA                                                       !00063E03
* SYMPTOM:   None.                                                     !00063E04
* PROBLEM:   <E> None.                                                 !00063E05
* FIX:       Modified comments in the Telebanking segment to           !00063E06
*            reflect support for payment transactions.                 !00063E07
* IMPLEMENT: None.                                                     !00063E08
* REFERENCE: Work Order 950425-1.                                      !00063E09
*                                                                      !00063E0A
*********************************************************************  !00063E0B
                                                                       !00063F00
*                                                                      !00063F01
* 95/11/14        DPS/1064 - bdc/1448                                  !00063F02
* SYMPTOM:        Release 1.0 Customer Service/Fraud Control           !00063F03
* PROBLEM:        (E) None.                                            !00063F04
* FIX:            Added the CSFCPBFX-DISPLAY definition for PBFXD      !00063F05
*                 segment 21.                                          !00063F06
* DEPENDENCIES:   Re-DDL.  All modules that source in the PBFXD        !00063F07
*                 or CSFCPBFX-DISPLAY definition must be recompiled.   !00063F08
* REFERENCE:      Work order #950212-3.                                !00063F09
                                                                       !00063F0A
* 95/11/14        DPS/1064 - bdc/1448                                  !00063F0B
* SYMPTOM:        None.                                                !00063F0C
* PROBLEM:        Two fields in the new CSFC segment were defined as   !00063F0D
*                 PIC X(19) but should have been PIC X(18).  The       !00063F0E
*                 fields are PRIOR-YTD-INTRST and MIN-AMT-DUE.         !00063F0F
* FIX:            Changed fields from PIC X(19) to PIC X(18).          !00063F0G
* DEPENDENCIES:   Re-DDL.  All modules that source in the PBFXD        !00063F0H
*                 or CSFCPBFX-DISPLAY definition must be recompiled.   !00063F0I
* REFERENCE:      Work Order #950212-3.                                !00063F0J
                                                                       !00063F0K
                                                                       !00063F0L
                                                                       !00063F0M
                                                                       !00063F0N
                                                                       !00063F0O
                                                                       !00063G00
*********************************************************************  !00063G01
*             Release 6.0                                           *  !00063G02
*********************************************************************  !00063G03
* 30MAR2001   jw/850                                                   !00063G04
* Symptom:    Added 5.3 MC Support.                                    !00063G05
* Problem:    None.                                                    !00063G06
* Fix:        Added crncy-cde and user-fld1 to the PBFXBASE-DISPLAY    !00063G07
*             section.                                                 !00063G08
* Dependency: Restore Release 6.0 files, modify the appropriate        !00063G09
*             CUSTMACS flags, and run MAKE.                            !00063G0A
* Reference:  WO #990405-01 (Multicurrency 5.3/6.0 Uplift)             !00063G0B
                                                                       !00063H00
* 20APR2001   jfu/543                                                  !00063H01
* Symptom:    Release 6.0 Enhancements                                 !00063H02
* Problem:    None                                                     !00063H03
* Fix:        Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST      !00063H04
*             to the end of the PBFXBASE-DISPLAY section.              !00063H05
* Dependency: Restore Release 6.0 files, modify the appropriate        !00063H06
*             CUSTMACS flags, and run MAKE.                            !00063H07
* Reference:  WO #000101-1 (General Release 6.0)                       !00063H08
*********************************************************************  !00063H09
                                                                       !00063H0A
                                                                       !00063H0B
*##################################################################### !00063G0C
*#            Positive Balance File - Refresh Format                 # !00063G0D
*##################################################################### !00063G0E
*                                                                      !00063G0F
*             The Positive Balance File - Refresh Format (PBFX)        !00063G0G
*             contains a record for each PBF record to be refreshed/   !00063G0H
*             replaced in the existing database.                       !00063G0I
*                                                                      !00063G0J
********************************************************************** !00063G0K
                                                                       !00063G0L
                                                                       !00064G00
                                                                       !00064G01
                                                                       !00064G02
                                                                       !00090B00
*                                                                      !00090B01
*  Record Segmentation Overview                                        !00090B02
*  ----------------------------                                        !00090B03
*                                                                      !00090B04
*  Many BASE24 files contain segmented records that allow for the      !00090B05
*  integration of various combinations of BASE24 products.  This       !00090B06
*  segmentation affects the refresh input file records in that         !00090B07
*  different segments can be included in the refresh records           !00090B08
*  depending on the combination of BASE24 products in use.             !00090B09
*                                                                      !00090B0A
*  The Refresh process determines the segments that should be present  !00090B0B
*  in a particular input record based on the FIID-SEG-MAP field in     !00090B0C
*  the Base segment of the Institution Definition File (IDF).  When    !00090B0D
*  Refresh processes the Refresh File Header (RFH) for a file,         !00090B0E
*  Refresh reads the IDF record for each institution in the refresh    !00090B0F
*  group.  Refresh builds a table containing the values from the       !00090B0G
*  FIID-SEG-MAP field for each institution.  During refresh            !00090B0H
*  processing, Refresh uses the FIID in the refresh record (the value  !00090B0I
*  from the FIID field from the Base segment of the CAF or NEG, or     !00090B0J
*  from the CRD-ISS field in the Refresh Bank Header (RBH) for PBF     !00090B0K
*  refreshes) to select an entry from the table.  Refresh uses the     !00090B0L
*  entry it selected to parse through the input file record's          !00090B0M
*  segments and to build the appropriate disk segments in the          !00090B0N
*  refreshed file record.                                              !00090B0O
*                                                                      !00090B0P
*  Contained within this DDL source file are a number of               !00090B0Q
*  "definitions" that represent the segments of a refresh input        !00090B0R
*  record.  Some segments correspond to a specific BASE24 product,     !00090B0S
*  while others correspond to a specific BASE24 product feature.  The  !00090B0T
*  Refresh process uses the FIID-SEG-MAP for the appropriate           !00090B0U
*  institution in order to determine which segments are present in     !00090B0V
*  the input record, and from the input data, which segments must be   !00090B0W
*  present in the disk record.                                         !00090B0X
*                                                                      !00090B0Y
*                                                                      !00090B0Z
*  Variable Length Segments                                            !00090B10
*  ------------------------                                            !00090B11
*                                                                      !00090B12
*  Some segments store data that is not required for every disk        !00090B13
*  record.  For example, if an institution supports preauthorized      !00090B14
*  holds and stores the hold information in the CAF, not every CAF     !00090B15
*  record for that institution will include a Preauthorized Holds      !00090B16
*  segment.  Likewise, not every CAF refresh record for that           !00090B17
*  institution will include a Preauthorized Holds segment.  The        !00090B18
*  segment, whether in the database or in the refresh input file,      !00090B19
*  only contains data if that individual CAF record has preauthorized  !00090B1A
*  holds associated with it.  For records that do not have             !00090B1B
*  preauthorized holds associated with them, the refresh record        !00090B1C
*  segment contains only a length and count field.  The segment will   !00090B1D
*  not be present in the corresponding refreshed disk record.          !00090B1E
*                                                                      !00090B1F
*  The following table summarizes the variable length segments that    !00090B1G
*  can be present within the refresh input file and how to set the     !00090B1H
*  LGTH field for the segment if the FIID-SEG-MAP field in the IDF     !00090B1I
*  indicates the institution uses the segment.  The LGTH field value   !00090B1J
*  is set at the individual record level, based on whether the         !00090B1K
*  segment contains data for the record.                               !00090B1L
*                                                                      !00090B1M
*                            LGTH Field Setting                        !00090B1N
*  PBFX Segment               No Data     Data                         !00090B1O
*  -------------------        -------     ----                         !00090B1P
*  crlinepbfx-display         0004        0026                         !00090B1Q
*  preauthpbfx-display        0006@       based on number of holds     !00090B1R
*                                                                      !00090B1S
*                                                                      !00090B1T
*  @ Includes a pre-auth-cnt value of "00".                            !00090B1U
*                                                                      !00090B1V
*  For further information on the setting of field values, please      !00090B1W
*  refer to the appropriate segment definition within this file.       !00090B1X
*                                                                      !00090B1Y
********************************************************************** !00090B1Z
                                                                       !00090B20
                                                                       !00091
?page "PBFXD - Balance File Refresh Format (DISPLAY)"
?SECTION PBFXBASE-DISPLAY
                                                                       !00096
                                                                       !00097
                                                                       !00098
?comments
*            The following fields make up the Base segment of the     !!00101
*            Positive Balance File (PBF) Refresh Format.              !!00102
DEFINITION PBFXBASE-DISPLAY.                                           !00103
                                                                       !00104
                                                                       !00105
                                                                       !00105H00
*             The length of the Base segment.  The value in this       !00105H01
*             field must be set to 0300.                               !00105H02
                                                                       !00105H03
                                                                       !00105H04
                                                                       !00106H00
                                                                       !00106H01
                                                                       !00106H02
 02 LGTH                        PIC 9(4).                              !00110
                                                                       !00111
                                                                       !00112
*                                                                     !!00113
*             A record number indicating the position of this record  !!00114
*             on the refresh tape.  The value in this field should    !!00115
*             always be one greater than that in the previous record  !!00116
*             on the tape.                                            !!00117
*                                                                     !!00118
*             Header and trailer records must be reflected in this    !!00119
*             count as well as individual PBF records.                !!00120
*                                                                     !!00121
 02 CNT                         PIC 9(9).                              !00122
                                                                       !00123
                                                                       !00124
*                                                                     !!00125
*             The primary key of the file record.                     !!00126
*                                                                     !!00127
 02 PRIKEY.                                                            !00128
                                                                       !00129
                                                                       !00130
*                                                                     !!00131
*             The FIID of the institution that maintains the PBF      !!00132
*             account.                                                !!00133
*                                                                     !!00134
   04 FIID                      TYPE *.                                !00135
                                                                       !00136
                                                                       !00137
*                                                                     !!00138
*             The account number of this account.  The entry in this  !!00139
*             field is left-justified and blank-filled on the right.  !!00140
*                                                                     !!00141
   04 NUM                       PIC X(19).                             !00142
                                                                       !00143
                                                                       !00144
                                                                       !00145
*                                                                     !!00146
*             A code indicating the type of account.  The general     !!00147
*             ranges of values supported by all BASE24 products are:  !!00148
*                                                                     !!00149
*             01 - 09 = Checking (non-credit accounts).               !!00150
*             11 - 19 = Savings (non-credit accounts).                !!00151
*             31 - 39 = Credit (credit accounts).                     !!00152
*                                                                     !!00153
*             Specific values reserved by one or more BASE24 products !!00154
*             are listed below.  (Note that not all of these account  !!00155
*             types are supported by all BASE24 products.)            !!00156
*                                                                     !!00157
*             01      = Checking                                      !!00158
*             11      = Savings                                       !!00159
*             12      = Individual retirement (IRA)                   !!00160
*             13      = Certified deposit                             !!00161
*             21      = NOW                                           !!00162
*             31      = Credit                                        !!00163
*             32      = Credit line                                   !!00164
*             41      = Installment                                   !!00165
*             42      = Mortgage                                      !!00166
*             43      = Commercial                                    !!00167
*             50      = Utility                                       !!00168
*             51 - 55 = Utility (1 to 5)                              !!00169
*             90      = General ledger                                !!00170
*                                                                     !!00171
   04 TYP                      PIC X(2).                               !00172
                                                                       !00173
                                                                       !00174
*                                                                     !!00175
*             A code indicating the status of the account.  Values    !!00176
*             are:                                                    !!00177
*                                                                     !!00178
*             0, A, B, C          = No relationhsip (inactive         !!00179
*                                   account)                          !!00180
*             1, D, E, F, G, H, I = Open                              !!00181
*             2, J, K, L          = Restricted to deposits            !!00182
*             3, M, N, O, P, Q, R = Open primary account              !!00183
*             4, S, T, U          = Restricted primary account        !!00184
*             9, V, X, W, Y, Z    = Closed                            !!00185
*                                                                     !!00186
*             NOTE:  BASE24 does not distinguish between the          !!00187
*             alphabetic and numeric values grouped together above.   !!00188
*             The alphabetic values are intended to give institutions !!00189
*             a wider range of values for assigning account statuses. !!00190
*                                                                     !!00191
 02 ACCT-STAT                   PIC X.                                 !00192
                                                                       !00193
                                                                       !00194
*                                                                     !!00195
*             A code indicating the operation to be performed on the  !!00196
*             PBF record.  Valid values are:                          !!00197
*                                                                     !!00198
*             A = Add                                                 !!00199
*             C = Change                                              !!00200
*             D = Delete                                              !!00201
*             F = Full-file change                                    !!00202
*                                                                     !!00203
*             Values of A, C, and D are intended for use with         !!00204
*             partial-file refreshes.  The value of F is required for !!00205
*             full-file refreshes.                                    !!00206
*                                                                     !!00207
 02 REC-TYP                    PIC X.                                  !00208
                                                                       !00209
                                                                       !00210
*                                                                     !!00211
*             For non-credit accounts, this field contains the        !!00212
*             available balance.                                      !!00213
*                                                                     !!00214
*             For credit accounts, this field contains the available  !!00215
*             credit.                                                 !!00216
*                                                                     !!00217
*             For negative amounts, Refresh expects the sign bit to   !!00218
*             be embedded in the low-order byte of the field.  (In    !!00219
*             other words, use of the zoned-data format is required.) !!00220
*                                                                     !!00221
 02 AVAIL-BAL                  PIC 9(18).                              !00222
                                                                       !00223
                                                                       !00224
*                                                                     !!00225
*             For non-credit accounts, this field contains the ledger !!00226
*             balance.                                                !!00227
*                                                                     !!00228
*             For credit accounts, this field contains the credit     !!00229
*             limit.                                                  !!00230
*                                                                     !!00231
*             For negative amounts, Refresh expects the sign bit to   !!00232
*             be embedded in the low-order byte of the field.  (In    !!00233
*             other words, use of the zoned-data format is required.) !!00234
*                                                                     !!00235
 02 LEDG-BAL                   PIC 9(18).                              !00236
                                                                       !00237
                                                                       !00238
*                                                                     !!00239
*             For non-credit accounts, this field contains the total  !!00240
*             amount of funds being held and not available to the     !!00241
*             cardholder.                                             !!00242
*                                                                     !!00243
*             For credit accounts, this field contains the credit     !!00244
*             balance.                                                !!00245
*                                                                     !!00246
 02 AMT-ON-HLD                 PIC 9(18).                              !00247
                                                                       !00248
                                                                       !00249
*                                                                     !!00250
*             For non-credit accounts, this field contains the amount !!00251
*             of overdraft protection available.                      !!00252
*                                                                     !!00253
*             The value in this field is not used for credit          !!00254
*             accounts.                                               !!00255
*                                                                     !!00256
*             For negative amounts, Refresh expects the sign bit to   !!00257
*             be embedded in the low-order byte of the field.  (In    !!00258
*             other words, use of the zoned-data format is required.) !!00259
*                                                                     !!00260
 02 OVRDRFT-LMT                PIC 9(10).                              !00261
                                                                       !00262
                                                                       !00263
                                                                       !00264
*                                                                     !!00265
*             For non-credit accounts, this field contains the date   !!00266
*             (YYMMDD) of the last deposit or transfer to the         !!00267
*             account.                                                !!00268
*                                                                     !!00269
*             For credit accounts, this field contains the date       !!00270
*             (YYMMDD) of the last payment to the account.            !!00271
*                                                                     !!00272
 02 LAST-DEP-DAT               PIC 9(6).                               !00273
                                                                       !00274
                                                                       !00275
*                                                                     !!00276
*             For non-credit accounts, this field contains the amount !!00277
*             of the last deposit or transfer to the account.         !!00278
*                                                                     !!00279
*             For credit accounts, this field contains the amount of  !!00280
*             the last payment to the account.                        !!00281
*                                                                     !!00282
 02 LAST-DEP-AMT               PIC 9(15).                              !00283
                                                                       !00284
                                                                       !00285
*                                                                     !!00286
*             For non-credit accounts, this field contains the date   !!00287
*             (YYMMDD) of the last withdrawal, transfer, or payment   !!00288
*             from the account.                                       !!00289
*                                                                     !!00290
*             For credit accounts, this field contains the date       !!00291
*             (YYMMDD) of the last charge to the account.             !!00292
*                                                                     !!00293
 02 LAST-WDL-DAT               PIC 9(6).                               !00294
                                                                       !00295
                                                                       !00296
*                                                                     !!00297
*             For non-credit accounts, this field contains the amount !!00298
*             of the last withdrawal, transfer, or payment from the   !!00299
*             account.                                                !!00300
*                                                                     !!00301
*             For credit accounts, this field contains the amount of  !!00302
*             the last charge to the account.                         !!00303
*                                                                     !!00304
 02 LAST-WDL-AMT               PIC 9(15).                              !00305
                                                                       !00305G00
*                                                                      !00305G01
*             This is the currency of the account.                     !00305G02
*                                                                      !00305G03
 02 CRNCY-CDE                  TYPE *.                                 !00305G04
*                                                                      !00305G05
*             This field is not used and should be space filled.       !00305G06
*                                                                      !00305G07
 02 USER-FLD1                  PIC X.                                  !00305G08
                                                                       !00305G09
                                                                       !00305H00
*             USER-FLD-ACI is reserved for future BASE24 product use   !00305H01
*             only. The designation of "product use only" provides     !00305H02
*             ACI with the ability to deplete the number of bytes      !00305H03
*             available within USER-FLD-ACI as product enhancements    !00305H04
*             are introduced.  When product enhancements require the   !00305H05
*             addition of new fields within this file, the procedure   !00305H06
*             to be followed is to deplete bytes from USER-FLD-ACI     !00305H07
*             and use that number of bytes to define new fields. The   !00305H08
*             new field definition(s) should precede the               !00305H09
*             USER-FLD-ACI field.                                      !00305H0A
                                                                       !00305H0B
  02 USER-FLD-ACI                 PIC X(50).                           !00305H0C
                                                                       !00305H0D
*             USER-FLD-REGN is reserved for ACI regional use only.     !00305H0E
*             Only ACI regions are allowed to use USER-FLD-REGN space. !00305H0F
                                                                       !00305H0G
  02 USER-FLD-REGN                PIC X(50).                           !00305H0H
                                                                       !00305H0I
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !00305H0J
*             Only customers are allowed to use USER-FLD-CUST space.   !00305H0K
                                                                       !00305H0L
  02 USER-FLD-CUST                PIC X(50).                           !00305H0M
                                                                       !00305H0N
                                                                       !00306
END                                                                    !00307
                                                                       !00308
                                                                       !00309
?page "POS PBFXD Segment"
?section POSPBFX-DISPLAY
                                                                       !00314
*            The following fields make up the POS segment of the      !!00315
*            Positive Balance File (PBF) Refresh Format.              !!00316
DEFINITION POSPBFX-DISPLAY.                                            !00317
                                                                       !00318
                                                                       !00319
*                                                                     !!00320
                                                                       !00320B00
*             The length of the BASE24-pos segment.  The value in      !00320B01
*             this field must be set to 0042.  The presence of this    !00320B02
*             segment is controlled at the FIID level via the IDF      !00320B03
*             FIID-SEG-MAP indicator field.                            !00320B04
                                                                       !00320B05
                                                                       !00321B00
                                                                       !00321B01
                                                                       !00321B02
*                                                                     !!00323
  02 SEGX-LGTH                 TYPE *.                                 !00324
                                                                       !00325
                                                                       !00326
                                                                       !00327
*                                                                     !!00328
*             The total amount of transactions on the account for     !!00329
*             which the paperwork has not been received.              !!00330
*                                                                     !!00331
  02 TTL-FLOAT                 PIC 9(15).                              !00332
                                                                       !00333
                                                                       !00334
*                                                                     !!00335
*             The number of days the account has been delinquent.     !!00336
*                                                                     !!00337
  02 DAYS-DELINQ               PIC 99.                                 !00338
                                                                       !00339
                                                                       !00340
*                                                                     !!00341
*             The number of months the account has been active.       !!00342
*             Months active is defined by the institution.            !!00343
*                                                                     !!00344
  02 MONTHS-ACTIVE             PIC 99.                                 !00345
                                                                       !00346
                                                                       !00347
*                                                                     !!00348
*             The number of times the account has been one cycle      !!00349
*             delinquent.  One-cycle delinquencies are defined by the !!00350
*             institution.                                            !!00351
*                                                                     !!00352
  02 CYCLE-1                   PIC 99.                                 !00353
                                                                       !00354
                                                                       !00355
*                                                                     !!00356
*             The number of times the account has been two cycles     !!00357
*             delinquent.  Two-cycle delinquencies are defined by the !!00358
*             institution.                                            !!00359
*                                                                     !!00360
  02 CYCLE-2                   PIC 99.                                 !00361
                                                                       !00362
                                                                       !00363
*                                                                     !!00364
*             The number of times the account has been three cycles   !!00365
*             delinquent.  Three-cycle delinquencies are defined by   !!00366
*             the institution.                                        !!00367
*                                                                     !!00368
  02 CYCLE-3                   PIC 99.                                 !00369
                                                                       !00370
                                                                       !00371
*                                                                     !!00372
*             This field is not used and should be space filled.      !!00373
*                                                                     !!00374
  02 USER-FLD2                 PIC X.                                  !00375
                                                                       !00376
                                                                       !00377
END                                                                    !00378
?page "Teller PBFXD Segment"
?section TLRPBFX-DISPLAY
                                                                       !00383
*            The following fields make up the Teller segment of the   !!00384
*            Positive Balance File (PBF) Refresh Format.              !!00385
DEFINITION TLRPBFX-DISPLAY.                                            !00386
                                                                       !00387
                                                                       !00388
*                                                                     !!00389
                                                                       !00389B00
*             The length of the BASE24-teller segment.  The value in   !00389B01
*             this field must be set to 0084.  The presence of this    !00389B02
*             segment is controlled at the FIID level via the IDF      !00389B03
*             FIID-SEG-MAP indicator field.                            !00389B04
                                                                       !00389B05
                                                                       !00390B00
                                                                       !00390B01
                                                                       !00390B02
*                                                                     !!00392
    02  LGTH                            PIC 9(4).                      !00393
                                                                       !00394
                                                                       !00395
                                                                       !00396
*                                                                     !!00397
*             Currently not used by BASE24-teller.                    !!00398
*                                                                     !!00399
    02  CONFIDENTIAL-FLG                PIC X.                         !00400
                                                                       !00401
                                                                       !00402
                                                                       !00403
*                                                                     !!00404
*             A flag indicating if stop payments or warnings have     !!00405
*             been placed on this account.  Valid values are:         !!00406
*                                                                     !!00407
*             0 = No stops or warnings                                !!00408
*             1 = Stops                                               !!00409
*             2 = Warnings                                            !!00410
*             3 = Stops and Warnings                                  !!00411
*                                                                     !!00412
    02  SP-STAT                         PIC X.                         !00413
                                                                       !00414
*                                                                     !!00415
*             The year-to-date accrued interest on this account.      !!00416
*                                                                     !!00417
    02  ACCRUED-INTEREST-YTD            PIC 9(18).                     !00418
                                                                       !00419
                                                                       !00420
*                                                                     !!00421
*             The ledger balance of the account as of the last        !!00422
*             refresh.                                                !!00423
*                                                                     !!00424
    02  STRT-BAL                        PIC 9(18).                     !00425
                                                                       !00426
                                                                       !00427
*                                                                     !!00428
*             The customer's passbook balance as of the last passbook !!00429
*             update.                                                 !!00430
*                                                                     !!00431
    02  PASSBOOK-BAL                    PIC 9(18).                     !00432
                                                                       !00433
                                                                       !00434
*                                                                     !!00435
*             The number of entries for the account in the No Book    !!00436
*             File (NBF).                                             !!00437
*                                                                     !!00438
    02  NBF-REC-CNT                     PIC 9(4).                      !00439
                                                                       !00440
                                                                       !00441
*                                                                     !!00442
*             The location of the signature card for the account.     !!00443
*                                                                     !!00444
    02  SIG-CRD-LOC                     PIC X(9).                      !00445
                                                                       !00446
                                                                       !00447
*                                                                     !!00448
*             A flag indicating whether the account is a passbook     !!00449
*             account.  Valid values are:                             !!00450
*                                                                     !!00451
*             Y = Yes, this is a passbook account.                    !!00452
*             N = No, this is not a passbook account.                 !!00453
*                                                                     !!00454
    02  PASSBOOK-IND                    PIC X.                         !00455
                                                                       !00456
                                                                       !00457
*                                                                     !!00458
*             A flag that specifies how much cash is available to the !!00459
*             customer after a check deposit.  There are ten possible !!00460
*             options that are defined by each institution and        !!00461
*             maintained on the Institution Definition File (IDF).    !!00462
*             Valid values are 0 through 9.                           !!00463
*                                                                     !!00464
    02  CUST-CLASS                      PIC X.                         !00465
                                                                       !00466
                                                                       !00467
*                                                                     !!00468
*             The maximum amount (in thousands) that may be disbursed !!00469
*             on the account via BASE24-teller during a processing    !!00470
*             day.  If this field contains zeros, this means that the !!00471
*             account involved is exempt from limit checking.         !!00472
*                                                                     !!00473
    02  CASHOUT-LMT                     PIC 9(4).                      !00474
                                                                       !00475
                                                                       !00476
                                                                       !00477
*                                                                     !!00478
*             The maximum amount (in thousands) that may be deposited !!00479
*             to the account via BASE24-teller during a processing    !!00480
*             day.  If this field contains zeros, this means that the !!00481
*             account involved is exempt from limit checking.         !!00482
*                                                                     !!00483
    02  CASHIN-LMT                      PIC 9(4).                      !00484
                                                                       !00485
                                                                       !00486
*                                                                     !!00487
*             This field is not used and should be space filled.      !!00488
*                                                                     !!00489
    02  USER-FLD1                       PIC X.                         !00490
                                                                       !00491
END                                                                    !00492
                                                                       !00493
                                                                       !00493C00
?page "Telebanking PBFXD Segment"
?section TBPBFX-DISPLAY
                                                                       !00493C05
*             The following fields make up the Telebanking segment     !00493C06
*             of the Positive Balance File (PBF) Refresh Format.       !00493C07
                                                                       !00493C08
DEFINITION TBPBFX-DISPLAY.                                             !00493C09
                                                                       !00493C0A
*             The length of the Telebanking segment.  The value        !00493C0B
*             in this field must be set to 0004 or 0084 dependent      !00493C0C
*             on whether a Telebanking segment is present or not.      !00493C0D
*             The presence of this segment is controlled at the        !00493C0E
*             FIID level via the IDF FIID-SEG-MAP indicator field.     !00493C0F
*             If configured to be supported, each PBF input record     !00493C0G
*             must contain this segment.  The segment length will      !00493C0H
*             vary depending on whether the PBF record contains        !00493C0I
*             Telebanking data.                                        !00493C0J
                                                                       !00493C0K
    02  LGTH                            PIC 9(4).                      !00493C0L
                                                                       !00493C0M
*             The minimum cash advance amount, in whole currency       !00493C0N
*             units (e.g., dollars), allowed by BASE24-telebanking.    !00493C0O
*             A value of zero indicates no minimum is required.        !00493C0P
*             This field applies to transactions which debit the       !00493C0Q
                                                                       !00493E00
*             account.                                                 !00493E01
*             Note: This field is relevant only for credit-type        !00493E02
*             accounts.                                                !00493E03
                                                                       !00493E04
                                                                       !00493E05
                                                                       !00493E06
                                                                       !00493E07
*                                                                      !00493C0T
*             This amount cannot exceed the amounts specified in the   !00493C0U
*             amount limit fields in this segment of the PBF, if       !00493C0V
*             those limit amounts are non-zero.                        !00493C0W
                                                                       !00493C0X
    02  CASH-ADV-MIN                    PIC 9(15).                     !00493C0Y
                                                                       !00493C0Z
*             The standard increment, in whole currency units (e.g.,   !00493C10
*             dollars), over the minimum cash advance amount required  !00493C11
*             by BASE24-telebanking.  A value of zero indicates no     !00493C12
*             increment is required.  This field applies to            !00493C13
*             transactions which debit the account.  Note: This field  !00493C14
*             is relevant only for credit-type accounts.               !00493C15
*                                                                      !00493C16
*             For example, if the value in the CASH-ADV-MIN field is   !00493C17
*             set to $100 and the value in the CASH-ADV-INCR field is  !00493C18
*             set to $50, then allowable cash advance amounts include  !00493C19
*             $100, $150, $200, etc.                                   !00493C1A
                                                                       !00493C1B
    02  CASH-ADV-INCR                   PIC 9(15).                     !00493C1C
                                                                       !00493C1D
*             The following sets of limits define limits for transfers !00493C1E
                                                                       !00493E08
*             (intrabank) and payments during the usage period         !00493E09
*             specified in the Telebanking segment of the IDF.         !00493E0A
                                                                       !00493E0B
                                                                       !00493E0C
                                                                       !00493E0D
                                                                       !00493E0E
                                                                       !00493E0F
                                                                       !00493C1H
    02  PRD-LMT.                                                       !00493C1I
                                                                       !00493C1J
        04  XFER.                                                      !00493C1K
                                                                       !00493C1L
*             The maximum amount of money which may be debited from    !00493C1M
*             the account during the specified usage period for        !00493C1N
                                                                       !00493E0G
*             transfer and payment transactions involving this account !00493E0H
*             as the FROM account.  This is expressed in whole units   !00493E0I
*             of the account-issuing FI's currency.                    !00493E0J
                                                                       !00493E0K
                                                                       !00493E0L
                                                                       !00493E0M
                                                                       !00493E0N
                                                                       !00493C1R
            06  AMT                     PIC 9(15).                     !00493C1S
                                                                       !00493C1T
*             The maximum number of times money may be debited from    !00493C1U
*             the account during the specified usage period for        !00493C1V
                                                                       !00493E0O
*             transfer and payment transactions involving this account !00493E0P
*             as the FROM account.                                     !00493E0Q
                                                                       !00493E0R
                                                                       !00493E0S
                                                                       !00493E0T
                                                                       !00493E0U
                                                                       !00493C1Y
            06  CNT                     PIC 9(4).                      !00493C1Z
                                                                       !00493C20
*             The following sets of limits define limits for transfers !00493C21
                                                                       !00493E0V
*             (intrabank) and payments during the usage cycle          !00493E0W
*             specified in the Telebanking segment of the IDF.         !00493E0X
                                                                       !00493E0Y
                                                                       !00493E0Z
                                                                       !00493E10
                                                                       !00493E11
                                                                       !00493C24
    02  CYC-LMT.                                                       !00493C25
                                                                       !00493C26
        04  XFER.                                                      !00493C27
                                                                       !00493C28
*             The maximum amount of money which may be debited from    !00493C29
*             the account during the specified usage period for        !00493C2A
                                                                       !00493E12
*             transfer and payment transactions involving this account !00493E13
*             as the FROM account.  This is expressed in whole units   !00493E14
*             of the account-issuing FI's currency.                    !00493E15
                                                                       !00493E16
                                                                       !00493E17
                                                                       !00493E18
                                                                       !00493E19
                                                                       !00493C2E
            06  AMT                     PIC 9(15).                     !00493C2F
                                                                       !00493C2G
*             The maximum number of times money may be debited from    !00493C2H
*             the account during the specified usage period for        !00493C2I
                                                                       !00493E1A
*             transfer and payment transactions involving this account !00493E1B
*             as the FROM account.                                     !00493E1C
                                                                       !00493E1D
                                                                       !00493E1E
                                                                       !00493E1F
                                                                       !00493E1G
                                                                       !00493C2L
            06  CNT                     PIC 9(4).                      !00493C2M
                                                                       !00493C2N
*             This field contains the date that the period usage       !00493C2O
*             accumulators were last reset to zero.                    !00493C2P
                                                                       !00493C2Q
    02  LAST-PRD-RESET-DAT              TYPE DAT.                      !00493C2R
                                                                       !00493C2S
*             This field contains the date that the cycle usage        !00493C2T
*             accumulators were last reset to zero.                    !00493C2U
                                                                       !00493C2V
    02  LAST-CYC-RESET-DAT              TYPE DAT.                      !00493C2W
                                                                       !00493C2X
END                                                                    !00493C2Y
                                                                       !00493C2Z
?page "Credit Line PBFXD Segment"
?section CRLINEPBFX-DISPLAY
                                                                       !00493C30
                                                                       !00493C31
*            The following fields make up the Credit Line segment of  !!00498
*            the Positive Balance File (PBF) Refresh Format.          !!00499
  DEFINITION CRLINEPBFX-DISPLAY.                                       !00500
                                                                       !00501
                                                                       !00502
                                                                       !00502B00
*             The length of the credit line segment.  The value        !00502B01
*             in this field must be set to 0004 or 0026 dependent      !00502B02
*             on whether a credit line segment is present or not.      !00502B03
*             The presence of this segment is controlled at the        !00502B04
*             FIID level via the IDF FIID-SEG-MAP indicator field.     !00502B05
                                                                       !00502B06
                                                                       !00503B00
                                                                       !00503B01
                                                                       !00503B02
                                                                       !00508
    02  LGTH                            PIC 9(4).                      !00509
                                                                       !00510
*             The account type associated with the backup             !!00511
*             account.  The account type will represent the           !!00512
*             actual PBF account type and will be used as             !!00513
*             part of the key to read the PBF record for the          !!00514
*             backup account.                                         !!00515
                                                                       !00516
    02 CR-LINE-ACCT-TYP              PIC X(2).                         !00517
                                                                       !00518
*             The account number associated with the backup           !!00519
*             account.  This account number will represent            !!00520
*             the actual PBF account number and will be used          !!00521
*             as part of the key to read the PBF record for           !!00522
*             the backup account.  The account number will            !!00523
*             be left-justified and blank-filled.                     !!00524
                                                                       !00525
    02 CR-LINE-ACCT                  PIC X(19).                        !00526
                                                                       !00527
*             This field is not used and should be space filled.      !!00528
                                                                       !00529
    02 USER-FLD                      PIC X.                            !00530
                                                                       !00531
END                                                                    !00532
                                                                       !00533
?page "Customer Short Name PBFXD Segment"
?section NAMPBFX-DISPLAY
*            The following fields make up the Customer Short Name     !!00538
*            segment of the Positive Balance File (PBF) Refresh       !!00539
*            Format.                                                  !!00540
DEFINITION NAMPBFX-DISPLAY.                                            !00541
                                                                       !00542
                                                                       !00542B00
*             The length of the customer short name segment.  The      !00542B01
*             value in this field must be set to 0044.  The presence   !00542B02
*             of this segment is controlled at the FIID level via the  !00542B03
*             IDF FIID-SEG-MAP indicator field.                        !00542B04
                                                                       !00542B05
                                                                       !00543B00
                                                                       !00543B01
                                                                       !00543B02
                                                                       !00545B00
*                                                                      !00545B01
                                                                       !00545B02
    02  LGTH                            PIC 9(4).                      !00546
                                                                       !00547
*             The customer short name, left-justified and             !!00548
*             blank-filled.                                           !!00549
                                                                       !00550
    02  CUST-SHORT-NAM                  PIC X(40).                     !00551
                                                                       !00552
END                                                                    !00553
                                                                       !00554
                                                                       !00554F00
?page "CUSTOMER SERVICE/FRAUD CONTROL PBFXD SEGMENT"
?section CSFCPBFX-DISPLAY
                                                                       !00554F05
*             The following fields make up the Customer Service/       !00554F06
*             Fraud Control segment of the PBF.  The presence of       !00554F07
*             this segment is controlled at the FIID level via         !00554F08
*             the IDF FIID-SEG-MAP indicator field.  This segment      !00554F09
*             is not required.  If this segment is not present,        !00554F0A
*             the LGTH must be set to 0004.                            !00554F0B
                                                                       !00554F0C
DEFINITION CSFCPBFX-DISPLAY.                                           !00554F0D
                                                                       !00554F0E
*             The length of the Customer Service/Fraud Control         !00554F0F
*             segment.  The segment length will vary depending         !00554F0G
*             on the number of cycles present in the record.           !00554F0H
*             Possible lengths are:                                    !00554F0I
*                                                                      !00554F0J
*             00 cycles = 0070 bytes                                   !00554F0K
*             01 cycles = 0100 bytes                                   !00554F0L
*             02 cycles = 0130 bytes                                   !00554F0M
*             03 cycles = 0160 bytes                                   !00554F0N
*             04 cycles = 0190 bytes                                   !00554F0O
*             05 cycles = 0220 bytes                                   !00554F0P
*             06 cycles = 0250 bytes                                   !00554F0Q
*             07 cycles = 0280 bytes                                   !00554F0R
*             08 cycles = 0310 bytes                                   !00554F0S
*             09 cycles = 0340 bytes                                   !00554F0T
*             10 cycles = 0370 bytes                                   !00554F0U
*             11 cycles = 0400 bytes                                   !00554F0V
*             12 cycles = 0430 bytes                                   !00554F0W
                                                                       !00554F0X
                                                                       !00554F0Y
 02 LGTH                          PIC 9(4).                            !00554F0Z
                                                                       !00554F10
*             Prior year-to-date interest.  For credit                 !00554F11
*             accounts, this represents the amount of                  !00554F12
*             interest charged.  For debit accounts,                   !00554F13
*             this represents the amount of interest                   !00554F14
*             earned.  This field is optional; the                     !00554F15
*             default is zero.                                         !00554F16
                                                                       !00554F17
 02 PRIOR-YTD-INTRST              PIC X(18).                           !00554F18
                                                                       !00554F19
*             Current interest rate.  For credit                       !00554F1A
*             accounts, this will be the rate of                       !00554F1B
*             interest charged.  For debit accounts,                   !00554F1C
*             this will be the rate of interest                        !00554F1D
*             earned.  This field is optional; the                     !00554F1E
*             default is zeroes.  If data is entered,                  !00554F1F
*             the first byte will indicate the scale                   !00554F1G
*             (number of digits to the right of the                    !00554F1H
*             decimal point).                                          !00554F1I
                                                                       !00554F1J
 02 CUR-INTRST-RATE               PIC 9(8).                            !00554F1K
                                                                       !00554F1L
*             Cash advance interest rate for a credit                  !00554F1M
*             account.  This field is optional; the                    !00554F1N
*             default is zeroes.  If data is entered,                  !00554F1O
*             the first byte will indicate the scale                   !00554F1P
*             (number of digits to the right of the                    !00554F1Q
*             decimal point).                                          !00554F1R
                                                                       !00554F1S
 02 CASH-ADV-INTRST-RATE          PIC 9(8).                            !00554F1T
                                                                       !00554F1U
*             Minimum amount due for a credit account.                 !00554F1V
*             This field is optional; the default is                   !00554F1W
*             zero.                                                    !00554F1X
                                                                       !00554F1Y
 02 MIN-AMT-DUE                   PIC X(18).                           !00554F1Z
                                                                       !00554F20
*             Next payment due date (YYMMDD) for a                     !00554F21
*             credit account.  This field is optional;                 !00554F22
*             the default is spaces.                                   !00554F23
                                                                       !00554F24
 02 NEXT-PMNT-DUE-DAT             TYPE DAT.                            !00554F25
                                                                       !00554F26
*             Date the Credit Limit/Overdraft Limit                    !00554F27
*             was last changed in the format YYMMDD.                   !00554F28
*             This field is optional; the default is                   !00554F29
*             spaces.                                                  !00554F2A
                                                                       !00554F2B
 02 CR-OVRDFT-LMT-CHNG-DAT        TYPE DAT.                            !00554F2C
                                                                       !00554F2D
*             Number of cycles present in this record.                 !00554F2E
*             A record may contain up to 12 cycles.                    !00554F2F
                                                                       !00554F2G
 02 CYC-CNT                       PIC X(2).                            !00554F2H
                                                                       !00554F2I
 02 CYC-DATA                      OCCURS 12 TIMES.                     !00554F2J
                                                                       !00554F2K
    04 DB-CR-HIST                 PIC 9(10).                           !00554F2L
                                                                       !00554F2M
*             Debit account history.                                   !00554F2N
                                                                       !00554F2O
    04 DB-HIST                    REDEFINES DB-CR-HIST.                !00554F2P
                                                                       !00554F2Q
*             Number of times the account did not have                 !00554F2R
*             sufficient funds for the particular cycle.               !00554F2S
*             This field is optional; the default is                   !00554F2T
*             zero.                                                    !00554F2U
                                                                       !00554F2V
       06 NSF                     PIC 9(5).                            !00554F2W
                                                                       !00554F2X
*             Number of times account was overdrawn                    !00554F2Y
*             for the particular cycle.  This field                    !00554F2Z
*             is optional; the default is zero.                        !00554F30
                                                                       !00554F31
       06 OVRDFT                  PIC 9(5).                            !00554F32
                                                                       !00554F33
*             Credit account history.                                  !00554F34
                                                                       !00554F35
    04 CR-HIST                    REDEFINES DB-CR-HIST.                !00554F36
                                                                       !00554F37
*             Number of delinquent payments for the                    !00554F38
*             particular cycle.  This field is optional;               !00554F39
*             the default is zero.                                     !00554F3A
                                                                       !00554F3B
       06 NUM-DELINQ              PIC 9(5).                            !00554F3C
                                                                       !00554F3D
*             Number of times the credit limit was                     !00554F3E
*             exceeded during the particular cycle.                    !00554F3F
*             This field is optional; the default is                   !00554F3G
*             zero.                                                    !00554F3H
                                                                       !00554F3I
       06 NUM-CR-LMT-EXCEED       PIC 9(5).                            !00554F3J
                                                                       !00554F3K
*             Account balance for the particular cycle.                !00554F3L
*             This field is optional; the default is                   !00554F3M
*             zero.                                                    !00554F3N
                                                                       !00554F3O
    04 ACCT-BAL                   PIC X(18).                           !00554F3P
                                                                       !00554F3Q
*             Account status for the particular cycle.                 !00554F3R
*             This field is optional; the default is                   !00554F3S
*             a space.                                                 !00554F3T
                                                                       !00554F3U
    04 ACCT-STAT                  PIC X.                               !00554F3V
                                                                       !00554F3W
*             Reserved for future use.                                 !00554F3X
                                                                       !00554F3Y
    04 USER-FLD1                  PIC X.                               !00554F3Z
                                                                       !00554F40
END                                                                    !00554F41
                                                                       !00554F42
?page "Preauthorization PBFXD Segment"
?section PREAUTHPBFX-DISPLAY
                                                                       !00554F47
*            The following fields make up the Preauthorization holds  !!00559
*            segment of the Positive Balance File (PBF) Refresh       !!00560
*            Format.                                                  !!00561
DEFINITION PREAUTHPBFX-DISPLAY.                                        !00562
                                                                       !00563
                                                                       !00563B00
*             The length of the Preauthorization segment.  The         !00563B01
*             presence of this segment is controlled at the FIID level !00563B02
*             via the IDF FIID-SEG-MAP indicator field.  If configured !00563B03
*             to be supported, each PBF input record must contain this !00563B04
*             segment.  The segment length will vary depending on the  !00563B05
*             number of preauthorization holds in this PBF record.     !00563B06
*             Possible lengths are:                                    !00563B07
*                                                                      !00563B08
*             00 pre-auths = 0006 bytes                                !00563B09
*             01 pre-auth  = 0050 bytes                                !00563B0A
*             02 pre-auths = 0094 bytes                                !00563B0B
*             03 pre-auths = 0138 bytes                                !00563B0C
*             04 pre-auths = 0182 bytes                                !00563B0D
*             05 pre-auths = 0226 bytes                                !00563B0E
*             06 pre-auths = 0270 bytes                                !00563B0F
*             07 pre-auths = 0314 bytes                                !00563B0G
*             08 pre-auths = 0358 bytes                                !00563B0H
*             09 pre-auths = 0402 bytes                                !00563B0I
*             10 pre-auths = 0446 bytes                                !00563B0J
                                                                       !00563B0K
                                                                       !00564B00
                                                                       !00564B01
                                                                       !00564B02
                                                                       !00579
    02  LGTH                            PIC 9(4).                      !00580
                                                                       !00581
*             The number of Preauthorization holds contained          !!00582
*             in this segment.  The valid values are from "00"        !!00583
*             to "10".                                                !!00584
                                                                       !00585
    02  PRE-AUTH-CNT                    PIC X(2).                      !00586
                                                                       !00587
*             This Preauthorization structure has all of the          !!00588
*             information needed for the Preauthorization             !!00589
*             hold.  There will be from zero to ten of                !!00590
*             these Preauthorization entries.                         !!00591
                                                                       !00592
    02  PRE-AUTH                        OCCURS 10 TIMES.               !00593
                                                                       !00594
*             The Preauthorization sequence number for this           !!00595
*             hold entry.  This field contains numeric values.        !!00596
                                                                       !00597
        04  SEQ-NUM                     PIC X(12).                     !00598
                                                                       !00599
*             The hold amount for the Preauthorization hold.          !!00600
*             The field is numeric values, right-justified and        !!00601
*             zero-filled.                                            !!00602
                                                                       !00603
                                                                       !00604A00
        04  HOLD-AMT                    PIC 9(18).                     !00604A01
                                                                       !00604A02
                                                                       !00605
*             The Preauthorization expiration timestamp for           !!00606
*             this hold entry.                                        !!00607
                                                                       !00608
        04  PR-TS.                                                     !00609
                                                                       !00610
*             The expiration timestamp date.  The format for          !!00611
*             this field is YYMMDD.                                   !!00612
                                                                       !00613
            06  DAT                     TYPE DAT.                      !00614
                                                                       !00615
*             The expiration timestamp time.  The format for          !!00616
*             this field is HHMMSSTT.                                 !!00617
                                                                       !00618
            06  TIM                     TYPE TIM.                      !00619
                                                                       !00620
END                                                                    !00621
                                                                       !00622
?page
?nodeflist
?section PBFXD
                                                                       !00629
                                                                       !00630
DEFINITION PBFXD.                                                      !00631
                                                                       !00632
 02 SEG0           TYPE PBFXBASE-DISPLAY.                              !00633
 02 SEG2           TYPE POSPBFX-DISPLAY.                               !00634
 02 SEG3           TYPE TLRPBFX-DISPLAY.                               !00635
                                                                       !00635C00
 02 SEG14          TYPE TBPBFX-DISPLAY.                                !00635C01
                                                                       !00635C02
 02 SEG15          TYPE CRLINEPBFX-DISPLAY.                            !00636
 02 SEG16          TYPE NAMPBFX-DISPLAY.                               !00637
                                                                       !00637F00
 02 SEG21          TYPE CSFCPBFX-DISPLAY.                              !00637F01
                                                                       !00637F02
 02 SEG22          TYPE PREAUTHPBFX-DISPLAY.                           !00638
END                                                                    !00639
                                                                       !00640
?deflist
