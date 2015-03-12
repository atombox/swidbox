**FIX2.28  12/02/08  DDLFTLF 6009 DDL    AT60DDL  AT0C310  I                 ***
**FIX2.28  12/04/07  DDLFTLF 6008 DDL    AT60DDL  AT0B322  H                 ***
**FIX2.24  11/18/04  DDLFTLF 6007 DDL    AT60DDL  AT08265  G                 ***
**FIX2.22  10/25/02  DDLFTLF 6006 DDL    AT60DDL  AT06068  F                 ***
**FIX2.19  01/12/02  DDLFTLF 6005 DDL    AT60DDL  AT05082  E                 ***
**SEQ0.04  11/01/00  DDLFTLF 6004 DDL    AT60DDL  AT04000  D                 ***
**SYNC.04  12/09/98  DDLFTLF 5304 DDL    AT53DDL  AT04000  D                 ***
**FIX2.03  08/28/98  DDLFTLF 5304 DDL    AT53DDL  AT03000  D                 ***
**FIX2.04  12/08/97  DDLFTLF 5104 DDL    AT51DDL  AT03041  D                 ***
**SYNC.03  08/21/97  DDLFTLF 5103 DDL    AT51DDL  AT03000  C                 ***
**SYNC.02  06/28/96  DDLFTLF 5103 DDL    AT51DDL  AT02000  C                 ***
**FIX2.00  06/21/95  DDLFTLF 5103 DDL    AT51DDL  AT51008  C                 ***
**FIX2.00  09/23/93  DDLFTLF 5102 DDL    AT51DDL  AT50295  B                 ***
**FIX2.00  02/19/93  DDLFTLF 5001 DDL    AT50DDL  AT50070  A                 ***
!*SEQ2.00  01/25/93  DDLFTLF 5000 DDL    AT50DDL                               !
                                                                       !00000E00
?PAGE "TLF - BASE24-atm Transaction Log File"
?section tlf-history
********************************************************************** !00000E05
*                                                                    * !00000E06
*                             BASE24-atm                             * !00000E07
*                             ----------                             * !00000E08
*                                                                    * !00000E09
*                 DDL for the Transaction Log File                   * !00000E0A
*                                                                    * !00000E0B
*                   Proprietary Software Product                     * !00000E0C
*                                                                    * !00000E0D
*                         ACI Worldwide Inc.                         * !00000E0E
*                       330 South 108th Avenue                       * !00000E0F
*                       Omaha, Nebraska  68154                       * !00000E0G
*                           (402) 390-7600                           * !00000E0H
*                                                                    * !00000E0I
*    Copyright by ACI Worldwide Inc. 1993 - 2001                     * !00000E0J
*                                                                    * !00000E0K
*    All Rights Reserved.  No part of this document may be           * !00000E0L
*    reproduced in any manner without the prior written consent of   * !00000E0M
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000E0N
*    confidentiality is strictly maintained.  Use of any copyright   * !00000E0O
*    notice does not imply unrestricted or public access to these    * !00000E0P
*    materials.                                                      * !00000E0Q
*                                                                    * !00000E0R
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000E0S
*                                                                    * !00000E0T
********************************************************************** !00000E0U
*                                                                      !00000E0V
* Record of Changes:                                                   !00000E0W
*                                                                      !00000E0X
* Date        Person/Emp #                                             !00000E0Y
* ----------  ------------                                             !00000E0Z
                                                                       !00000E10
                                                                       !00005E00
                                                                       !00005E01
                                                                       !00005E02
**********************************************************************!!00008
*                       RELEASE 5.0                                  *!!00009
**********************************************************************!!00010
* 92/04/01       Release 5.0 Design Team                              !!00011
* --------       -----------------------                              !!00012
* SYMPTOM:       BASE24 Release 5.0 Enhancements                      !!00013
* PROBLEM:       (E) None.                                            !!00014
* FIX:        1. Redefined USER-FLD3 in AUTH to contain the           !!00015
*                Refresh Indicator for the CAF; CAF-REFR-IND.         !!00016
*             2. Created record definitions for the TERM-SETL, TERM-  !!00017
*                CASH, SETL-TTL and KEY-MAINT redefines.              !!00018
*                By making each of the given structures into its own  !!00019
*                record definition, the wasted filler space that      !!00020
*                currently exists in the redefines could be reduced.  !!00021
*                Within the new record definitions, the fields        !!00022
*                that existed as filler space to make the redefines   !!00023
*                the same size as the AUTH structure were reduced     !!00024
*                to 20 or 21 bytes.  Note that the reason for         !!00025
*                using 21 bytes instead of 20 bytes was to maintain   !!00026
*                word boundary alignment for tokwb data.              !!00027
*             3. Added TIM-OFST and USER-FLD7 in TERM-SETL.  Added    !!00028
*                TIM-OFST in TERM-CASH.  Added TIM-OFST               !!00029
*                and USER-FLD9 in SETL-TTL.  Note that the user       !!00030
*                fields were added to maintain word boundary          !!00031
*                alignment for the binary TIM-OFST fields.            !!00032
*             4. Renamed the TLF-KEY-MAINT structure to TLF-EXTR-     !!00033
*                POSITIONS and removed all references to TKP key      !!00034
*                maintenance processing.  Within the TLF-EXTR-        !!00035
*                POSITIONS definition, the space to allow up to       !!00036
*                100 partial extracts was added.  Also, each extract  !!00037
*                position marker was modified to contain an RBA       !!00038
*                field, a PARTIAL-CNT field and a BLK-REC-CNT field.  !!00039
* DEPENDENCIES:  Re-DDL. Recompile all modules that source in the TLF.!!00040
*                Refer to the Release 5.0 Installation Documentation  !!00041
*                for further details.                                 !!00042
* REFERENCE:     BASE24-base Release 5.0 External Specifications      !!00043
*                - Message Tokenization                               !!00044
*                - Super Extract Enhancements                         !!00045
*                BASE24-atm Release 5.0 External Specifications       !!00046
*                - PIN Change Transaction                             !!00047
*                - ATM General Enhancements                           !!00048
*                                                                     !!00049
*                                                                     !!00050
                                                                       !00050A00
* Feb 16, 1993   Bob Cronin                                            !00050A01
* SYMPTOM:       None.                                                 !00050A02
* PROBLEM:       The BULK^READ utility does not correctly process      !00050A03
*                partitioned TLF files when performing extracts.       !00050A04
* FIX:           Added the field PART-NUM to the EXTR-POSITIONS        !00050A05
*                structure in the TLF-EXTR-POSITIONS definition.       !00050A06
*                This field will be used by the BULK^READ utility      !00050A07
*                to allow processing of partitioned files.             !00050A08
* DEPENDENCIES:  None.                                                 !00050A09
* REFERENCE:     BETA Database RPC #002717                             !00050A0A
                                                                       !00050A0B
                                                                       !00050B00
* Sept 22, 1993 Bob Cronin                                             !00050B01
* SYMPTOM:      Incorrect DDL comments.                                !00050B02
* PROBLEM:      None.                                                  !00050B03
* FIX:          1) Added valid values to the comments for the RVSL-RSN !00050B04
*                  field.                                              !00050B05
*               2) Updated the description of the PAN field.           !00050B06
* DEPENDENCIES: None.                                                  !00050B07
* REFERENCES:   1) None.                                               !00050B08
*               2) BETA RPC #003221                                    !00050B09
                                                                       !00050B0A
                                                                       !00050C00
********************************************************************** !00050C01
*                   RELEASE 5.1                                      * !00050C02
********************************************************************** !00050C03
* 95Jun01     MLB/598                                                  !00050C04
* SYMPTOM:    BASE24 Release 5.1 enhancements                          !00050C05
* PROBLEM:    (E) None                                                 !00050C06
* FIX:        1) Modified all file references to use TACL Defines in   !00050C07
*                order to use the MAKE Utility.                        !00050C08
* IMPLEMENT:  Apply fix and re-MAKE                                    !00050C09
* REFERENCE:  1) BASE24 Release 5.1 MAKE Utilization Document          !00050C0A
                                                                       !00050D00
                                                                       !00050D01
* 01OCT1997   KJH/176   BH/177                                         !00050D02
* Symptom:    BASE24 VISA Cash enhancements.                           !00050D03
* Problem:    None.                                                    !00050D04
* Fix:        Added valid values to the comments for the TRAN-CDE      !00050D05
*             field (41,U1), the to and from account                   !00050D06
*             types (70), and reversal codes (30,31).                  !00050D07
* Dependency: Apply fix and remake.                                    !00050D08
* Reference:  WO #970709-2.                                            !00050D09
                                                                       !00050D0A
                                                                       !00050C0B
                                                                       !00050C0C
                                                                       !00050E00
                                                                       !00050E01
*####################################################################  !00050E02
*#            Release 6.0                                           #  !00050E03
*####################################################################  !00050E04
* 08JAN2002   BEM/348                                                  !00050E05
* Symptom:    Release 6.0 Format 2 file support                        !00050E06
* Problem:    None.                                                    !00050E07
* Fix:        Added a TLF-EXTR-POSITIONS-FRMT-2 section to support     !00050E08
*             64 bit RBAs for format 2 files.                          !00050E09
* Dependency: Apply fix to DDLFTLF and run MAKE.                       !00050E0A
* Reference:  WO #000202-01 (Format 2 File Support)                    !00050E0B
                                                                       !00050F00
* 11OCT2002   SG/302                                                   !00050F01
* Symptom:    Offline PIN Management Enhancement 02.                   !00050F02
* Problem:    None.                                                    !00050F03
* Fix:        Added EMV PIN Unblock transaction code and description   !00050F04
*             as part of comment to field T-CDE.                       !00050F05
* Dependency: Apply fix to ATBICIS, ATHISOG, ATHISOS, AUTHG, AUTHS,    !00050F06
*             AUTHTBL, BALIBTBL, COBNAMES, DDLACNST, DDLBCNST,         !00050F07
*             DDLFTLF, DDLGSTM, DDLGTLFX, SVTLFS, TLFS and run MAKE.   !00050F08
* Reference:  WO #020707-15                                            !00050F09
                                                                       !00050F0A
                                                                       !00050G00
* 15OCT2004   dargyj                                                   !00050G01
* Symptom:    Mobile Top-Up Enhancement                                !00050G02
* Problem:    None                                                     !00050G03
* Fix:        Added a new value of "40" for RVSL-RSN. Added a new      !00050G04
*             value of "S" for RESPONDER. Added new values of "25" and !00050G05
*             "26" for TRAN-CDE.                                       !00050G06
* Dependency: Apply fixes to DDLFTLF and run Make.                     !00050G07
*             Refer to BA60UD08.SCNMTOP for a complete listing of      !00050G08
*             dependencies.                                            !00050G09
* Reference:  WO #031001-03                                            !00050G0A
                                                                       !00050G0B
                                                                       !00050H00
* 12OCT2007   WisharJ                                                  !00050H01
* Symptom:    Shared NDC+ BNA Support                                  !00050H02
* Problem:    None.                                                    !00050H03
* Fix:        Amended comments for the dep-typ field to include the    !00050H04
*             new value of '4' for a BNA depository.                   !00050H05
* Dependency: Apply fixes to DDLFTLF and run Make.                     !00050H06
*             Refer to BA60UD0B.SCNWNBN for a complete listing of      !00050H07
*             dependencies.                                            !00050H08
* Reference:  WO #051129-01                                            !00050H09
                                                                       !00050H0A
                                                                       !00050I00
* 17OCT2008   eschlis                                                  !00050I01
* Symptom:    TERM-TYP values of 04 and 11 are no longer valid for     !00050I02
*             BASE24.                                                  !00050I03
* Problem:    Version 9 comment changes.                               !00050I04
* Fix:        Replaced the list of valid terminal types with a         !00050I05
*             reference to other sources for this information.         !00050I06
* Dependency: Apply fix to DDLFTLF and run Make.                       !00050I07
* Reference:  Case #450136                                             !00050I08
                                                                       !00050I09
*####################################################################  !00050E0C
                                                                       !00050E0D
?PAGE "TLF - BASE24-atm Transaction Log File"
?SECTION TLF
*#################################################################### !!00050E0I
*#  BASE24-atm Transaction Log File                                 # !!00050E0J
*#################################################################### !!00050E0K
*                                                                   *  !00050E0L
*   Identification                                                  *  !00050E0M
*                                                                   *  !00050E0N
*     The Transaction Log File (TLF) contains a record of every     *  !00050E0O
*     card-originated transaction processed by BASE24 for a single  *  !00050E0P
*     24 hour period.  It also contains settlement records for each *  !00050E0Q
*     EFT terminal in the system.  This file is an audit record at  *  !00050E0R
*     the transaction level of the system's processing and is       *  !00050E0S
*     extracted daily to provide detailed transaction data to the   *  !00050E0T
*     participating institutions for processing on their host       *  !00050E0U
*     systems.                                                      *  !00050E0V
*                                                                   *  !00050E0W
*     Records are written to the TLF sequentially but at any time,  *  !00050E0X
*     there are two TLFs accessible to the system for logging.      *  !00050E0Y
*     Which TLF is to be used is determined by the transaction      *  !00050E0Z
*     posting date.  This is derived from the current business date *  !00050E10
*     of the terminal at which the transaction originated.          *  !00050E11
*                                                                   *  !00050E12
*     When network settlement occurs, a new TLF is created and the  *  !00050E13
*     oldest TLF is closed to the on-line system and is available   *  !00050E14
*     for reporting and extract processing.  The accessibility of   *  !00050E15
*     two TLFs to the on-line system allows individual EFT terminals*  !00050E16
*     to be cutover at different times during the day.  Thus, one   *  !00050E17
*     terminal may have a posting date of 860717 while another has  *  !00050E18
*     a posting date of 860716.  At network settlement time, all    *  !00050E19
*     terminals must have the same posting date.                    *  !00050E1A
*                                                                   *  !00050E1B
*   Security                                                        *  !00050E1C
*                                                                   *  !00050E1D
*     The TLF is secured under Tandem's group level security so that*  !00050E1E
*     only authorized network operators may access (or start        *  !00050E1F
*     programs which will access) the file.                         *  !00050E1G
*                                                                   *  !00050E1H
*     USER ID         = <BASE24 node name>.*                        *  !00050E1I
*     FILE CODE       = 0                                           *  !00050E1J
*     ACCESS SECURITY = GGGG                                        *  !00050E1K
*                                                                   *  !00050E1L
*   Usage                                                           *  !00050E1M
*                                                                   *  !00050E1N
*     Device Handler    I    Random                  shared            !00050E1O
*     Auth              O    Sequential              shared         *  !00050E1P
*     Settlement        Create/O                     shared         *  !00050E1Q
*     Reporting         I    Random                  shared         *  !00050E1R
*     Refresh           I    Sequential              shared         *  !00050E1S
*     Extract           I/O  Random/Sequential       shared         *  !00050E1T
*                                                                   *  !00050E1U
*********************************************************************  !00050E1V
?comments
?page "HEAD"
?section HEAD
                                                                       !00050E20
                                                                       !00054E00
                                                                       !00054E01
                                                                       !00054E02
*                                                                     !!00107
*              The Transaction Log File (TLF) contains a record of    !!00108
*              every financial transaction (approved or denied)       !!00109
*              processed by BASE24-atm during a single processing day.!!00110
*              It also contains settlement records for each ATM in the!!00111
*              system.  This file is an audit record at the           !!00112
*              transaction level of the system's processing.          !!00113
*                                                                     !!00114
*              The TLF is used by the BASE24-atm report programs to   !!00115
*              produce their reports and can also be extracted daily  !!00116
*              to provide detailed transaction data for processing by !!00117
*              a host.                                                !!00118
*                                                                     !!00119
*              Records are written to the TLF sequentially, and each  !!00120
*              TLF record has two alternate keys which allow for      !!00121
*              perusal of the file via BASE24-atm file maintenance    !!00122
*              functions.                                             !!00123
*                                                                     !!00124
*              A new TLF is created by the Settlement Initiator       !!00125
*              process at logical network cutover. Once a new TLF is  !!00126
*              created, the previous TLF is closed and is available   !!00127
*              for reporting and extract processing.                  !!00128
*                                                                     !!00129
*              The following pages describe the fields included in a  !!00130
*              TLF record. The information below summarizes other     !!00131
*              information specific to the TLF.                       !!00132
*                                                                     !!00133
*              LCONF ASSIGN:       TLF                                !!00134
*                                                                     !!00135
                                                                       !00136
*                                                                     !!00137
*              The following fields contain header information for all!!00138
*              TLF records.                                           !!00139
*                                                                     !!00140
                                                                       !00141
DEFINITION HEAD.                                                       !00142
                                                                       !00143
*                                                                     !!00144
*             The date and time the record was logged.  The value in  !!00145
*             this field is generated via a call to Tandem's          !!00146
*             JULIANTIMESTAMP utility.  It is used for time tracking  !!00147
*             purposes.                                               !!00148
*                                                                     !!00149
                                                                       !00150
     04 DAT-TIM                 TYPE BINARY 64.                        !00151
                                                                       !00152
                                                                       !00153
*                                                                     !!00154
*             The type of TLF record logged.  The value in this field !!00155
*             is set by the process that creates the TLF record       !!00156
*             (i.e. Authorization, Device Handler or Settlement).     !!00157
*                                                                     !!00158
*             00 = Extract position record                            !!00159
*             01 = Customer transaction                               !!00160
*             04 = Administrative transaction record                  !!00161
*             20 = Exception caused by invalid data in the STM        !!00162
*                  but the transaction was posted.                    !!00163
*             21 = Exception caused by invalid data in the STM        !!00164
*                  and the transaction was not posted.                !!00165
*             22 = Exception (for future use)                         !!00166
*                                                                     !!00167
*             In situations where financial transactions cannot be    !!00168
*             processed because of invalid dates or invalid Track 2   !!00169
*             data, the Authorization process logs the transactions   !!00170
*             to the TLF as exceptions (REC-TYP 20 or 21).  Exception !!00171
*             transactions are included as details in the BASE24-atm  !!00172
*             reports but are not included in the BASE24-atm          !!00173
*             settlement totals.                                      !!00174
*                                                                     !!00175
                                                                       !00176
     04 REC-TYP                 TYPE CHARACTER 02.                     !00177
                                                                       !00178
*                                                                     !!00179
*             The PPD name (without the initial "$") of the           !!00180
*             Authorization process that logged the record to the     !!00181
*             TLF.                                                    !!00182
*                                                                     !!00183
                                                                       !00184
     04 AUTH-PPD                PIC X(4).                              !00185
                                                                       !00186
*                                                                     !!00187
*             The values in the following fields identify the         !!00188
*             terminal where the transaction originated.              !!00189
*                                                                     !!00190
                                                                       !00191
     04 TERM.                                                          !00192
                                                                       !00193
*                                                                     !!00194
*             The logical network associated with the terminal.       !!00195
*                                                                     !!00196
                                                                       !00197
        06 LN                   TYPE *.                                !00198
                                                                       !00199
*                                                                     !!00200
*             The FIID of the financial institution owning the        !!00201
*             terminal.                                               !!00202
*                                                                     !!00203
                                                                       !00204
        06 FIID                 TYPE *.                                !00205
                                                                       !00206
*                                                                     !!00207
*             The terminal ID of the terminal originating the         !!00208
*             transaction.                                            !!00209
                                                                       !00210
*                                                                     !!00211
        06 TERM-ID              TYPE SYM-NAME.                         !00212
                                                                       !00213
*                                                                     !!00214
*             The values in the following fields identify the card    !!00215
*             issuer and cardholder associated with the transaction.  !!00216
*                                                                     !!00217
                                                                       !00218
     04 CRD.                                                           !00219
                                                                       !00220
*                                                                     !!00221
*             The logical network associated with the card issuer.    !!00222
*                                                                     !!00223
                                                                       !00224
        06 LN                   TYPE *.                                !00225
                                                                       !00226
*                                                                     !!00227
*             The FIID of the card issuer.                            !!00228
*                                                                     !!00229
                                                                       !00230
        06 FIID                 TYPE *.                                !00231
                                                                       !00232
*                                                                     !!00233
                                                                       !00233B00
*             The cardholder's Primary Account Number (PAN) for        !00233B01
*             card initiated transactions.  This field will contain    !00233B02
*             an AFT group number and user number for DCT              !00233B03
*             initiated transactions.                                  !00233B04
                                                                       !00233B05
                                                                       !00234B00
                                                                       !00234B01
*                                                                     !!00235
                                                                       !00236
        06 PAN                  TYPE *.                                !00237
                                                                       !00238
*                                                                     !!00239
*             The member number associated with the cardholder's      !!00240
*             account number.                                         !!00241
*                                                                     !!00242
                                                                       !00243
        06 MBR-NUM              TYPE *.                                !00244
                                                                       !00245
*                                                                     !!00246
*             The branch ID associated with the terminal originating  !!00247
*             the transaction.                                        !!00248
*                                                                     !!00249
                                                                       !00250
     04 BRCH-ID                 TYPE BRCH.                             !00251
                                                                       !00252
*                                                                     !!00253
*             The region ID associated with the terminal originating  !!00254
*             the transaction.                                        !!00255
*                                                                     !!00256
                                                                       !00257
     04 REGN-ID                 TYPE REGN.                             !00258
                                                                       !00259
END                                                                    !00260
                                                                       !00261
?page "AUTH"
?section AUTH
                                                                       !00266
*                                                                     !!00267
*             The following fields are included in financial          !!00268
*             transaction records logged to the TLF.  Financial       !!00269
*             transaction records are identified by values of 01,     !!00270
*             20 or 21 in the REC-TYP field in the TLF header.        !!00271
*                                                                     !!00272
                                                                       !00273
DEFINITION AUTH.                                                       !00274
                                                                       !00275
*                                                                     !!00276
*             A code used to determine whether an envelope or a       !!00277
*             check was involved in the transaction.  The value in    !!00278
*             this field is set by Authorization at the time the      !!00279
*             record is logged.  Valid values are:                    !!00280
*                                                                     !!00281
*             30 = An envelope was used.                              !!00282
*             31 = An envelope was not used.                          !!00283
*             32 = A check was used.                                  !!00284
*                                                                     !!00285
*             If a check was used in the transaction, Authorization   !!00286
*             will set this field to 32.  If a check was not used in  !!00287
*             the transaction and the transaction is a deposit,       !!00288
*             split deposit, deposit with cash back, payment          !!00289
*             enclosed, or message to financial institution,          !!00290
*             Authorization will set the value in this field to 30.   !!00291
*             Otherwise, it will set the value in this field to 31.   !!00292
*                                                                     !!00293
                                                                       !00294
     04 TYP-CDE                 PIC X(2).                              !00295
                                                                       !00296
*                                                                     !!00297
*             The type of message associated with this record.  Valid !!00298
*             values are:                                             !!00299
*                                                                     !!00300
*             0210 = Authorization response                           !!00301
*             0220 = Authorization advice (force post)                !!00302
*             0420 = Reversal                                         !!00303
*             5400 = Transaction adjustment                           !!00304
*             9980 = Information--money in drawer                     !!00305
*             9991 = Log request                                      !!00306
*                                                                     !!00307
                                                                       !00308
     04 TYP                     PIC 9(4).                              !00309
                                                                       !00310
*                                                                     !!00311
*             A code used to determine the status of a message at the !!00312
*             system level.  Valid values are:                        !!00313
*                                                                     !!00314
*             00 = No error                                           !!00315
*             01 = Processing error                                   !!00316
*             02 = Security device failure                            !!00317
*             11 = Destination not available                          !!00318
*             12 = Line down                                          !!00319
*                                                                     !!00320
                                                                       !00321
     04 RTE-STAT                PIC 9(2).                              !00322
                                                                       !00323
*                                                                     !!00324
*             An indicator identifying where the transaction          !!00325
*             originated.  Valid values are:                          !!00326
*                                                                     !!00327
*             1 = Device controlled by BASE24                         !!00328
*             2 = Device Handler                                      !!00329
*             3 = Authorization                                       !!00330
*             4 = Host Interface                                      !!00331
*             5 = Host                                                !!00332
*             6 = Interchange Interface                               !!00333
*             7 = Interchange                                         !!00334
*                                                                     !!00335
     04 ORIGINATOR              PIC X.                                 !00336
                                                                       !00337
*                                                                     !!00338
*             An indicator identifying where the response message     !!00339
*             (0210) was generated.  Valid values are:                !!00340
*                                                                     !!00341
*             0 = Default, the response has not been generated yet    !!00342
*             1 = Device controlled by BASE24                         !!00343
*             2 = Device Handler                                      !!00344
*             3 = Authorization                                       !!00345
*             4 = Host Interface                                      !!00346
*             5 = Host                                                !!00347
*             6 = Interchange Interface                               !!00348
*             7 = Interchange                                         !!00349
                                                                       !00350G00
*             S = Secondary Authorizer                                !!00350G01
                                                                       !00350G02
                                                                       !00351
     04 RESPONDER               PIC X.                                 !00352
                                                                       !00353
*                                                                     !!00354
*             The time the transaction entered the BASE24 system.     !!00355
*                                                                     !!00356
                                                                       !00357
     04 ENTRY-TIM               TYPE BINARY 64.                        !00358
                                                                       !00359
*                                                                     !!00360
*             The time the Host Interface or Interchange Interface    !!00361
*             transmitted the request to an authorizing entity.       !!00362
*                                                                     !!00363
                                                                       !00364
     04 EXIT-TIM                TYPE BINARY 64.                        !00365
                                                                       !00366
*                                                                     !!00367
*             The time the Host Interface or Interchange Interface    !!00368
*             received a response to its original request from the    !!00369
*             authorizing entity.                                     !!00370
*                                                                     !!00371
                                                                       !00372
     04 RE-ENTRY-TIM            TYPE BINARY 64.                        !00373
                                                                       !00374
*                                                                     !!00375
*             The date (YYMMDD) on which the transaction began.       !!00376
*                                                                     !!00377
                                                                       !00378
     04 TRAN-DAT                TYPE DAT.                              !00379
                                                                       !00380
*                                                                     !!00381
*             The time (HHMMSSHH) the transaction entered the BASE24  !!00382
*             system from a device, interchange, or acquirer host.    !!00383
*                                                                     !!00384
                                                                       !00385
     04 TRAN-TIM                TYPE TIM.                              !00386
                                                                       !00387
*                                                                     !!00388
*             The date (YYMMDD) on which the transaction will be      !!00389
*             settled.                                                !!00390
*                                                                     !!00391
                                                                       !00392
     04 POST-DAT                TYPE DAT.                              !00393
                                                                       !00394
*                                                                     !!00395
*             The date (YYMMDD) this transaction will be settled by   !!00396
*             the interchange originating the transaction, if the     !!00397
*             transaction originates through an interchange.          !!00398
*                                                                     !!00399
                                                                       !00400
     04 ACQ-ICHG-SETL-DAT       TYPE DAT.                              !00401
                                                                       !00402
*                                                                     !!00403
*             The date (YYMMDD) this transaction will be settled by   !!00404
*             the interchange authorizing the transaction, if an      !!00405
*             interchange was involved in processing.                 !!00406
*                                                                     !!00407
                                                                       !00408
     04 ISS-ICHG-SETL-DAT       TYPE DAT.                              !00409
                                                                       !00410
*                                                                     !!00411
*             The sequence number associated with this transaction.   !!00412
*             If the ATM does not generate a sequence number, the     !!00413
*             associated process generates one.  This field remains   !!00414
*             unchanged through the life of the transaction.  This    !!00415
*             field is set by the Device Handler, Interchange         !!00416
*             Interface, or Host Interface process.                   !!00417
*                                                                     !!00418
                                                                       !00419
     04 SEQ-NUM                 PIC X(12).                             !00420
                                                                       !00421
                                                                       !00421I00
*                                                                      !00421I01
*             The type of terminal at which this transaction was       !00421I02
*             initiated. Refer to the ATD and TDF DDL files for a      !00421I03
*             list of valid values for this field                      !00421I04
*                                                                      !00421I05
                                                                       !00421I06
                                                                       !00422I00
                                                                       !00422I01
                                                                       !00422I02
     04 TERM-TYP                PIC 99.                                !00453
                                                                       !00454
*                                                                     !!00455
*             The time difference (plus or minus in minutes) between  !!00456
*             the terminal location and the Tandem processor location.!!00457
*             This field is filled with the TIM-OFST from the TDF.    !!00458
*                                                                     !!00459
                                                                       !00460
     04 TIM-OFST                TYPE BINARY 16.                        !00461
                                                                       !00462
*                                                                     !!00463
*             The routing or transit number of the terminal owner.    !!00464
*                                                                     !!00465
                                                                       !00466
     04 ACQ-INST-ID-NUM         TYPE ID-NUM.                           !00467
                                                                       !00468
*                                                                     !!00469
*             The card-issuer routing or identification number.       !!00470
*                                                                     !!00471
                                                                       !00472
     04 RCV-INST-ID-NUM         TYPE ID-NUM.                           !00473
                                                                       !00474
*                                                                     !!00475
*             The values in the following fields define the           !!00476
*             transaction code.                                       !!00477
*                                                                     !!00478
                                                                       !00479
     04 TRAN-CDE                TYPE CHARACTER 06.                     !00480
     04 TRAN-CDE-R REDEFINES TRAN-CDE.                                 !00481
                                                                       !00482
*                                                                     !!00483
                                                                       !00483G00
*             The type of transaction.  The following codes are        !00483G01
*             supported by BASE24-atm; but be aware that not all of    !00483G02
*             the codes listed are supported by all ATMs.              !00483G03
*                                                                      !00483G04
*             NOTE 1: The transaction codes of 25 and 26 are only      !00483G05
*             supported with the definitions-based model of            !00483G06
*             BASE24-atm Mobile Top-Up. The BASE24-atm Transaction     !00483G07
*             Context Manager and certain Mobile Operator Interfaces   !00483G08
*             process these transaction codes. BASE24-atm              !00483G09
*             Authorization does not recognize these codes.            !00483G0A
*                                                                      !00483G0B
*             Valid values are:                                        !00483G0C
                                                                       !00483G0D
                                                                       !00484G00
                                                                       !00484G01
                                                                       !00484G02
*                                                                     !!00488
*             03 = Check Guarantee                                    !!00489
*             04 = Check Verify                                       !!00490
*             10 = Withdrawal                                         !!00491
*             11 = Cash Check                                         !!00492
*             20 = Deposit                                            !!00493
*             24 = Deposit with Cash Back                             !!00494
                                                                       !00494G00
*             25 = Mobile Top-Up (NOTE 1)                              !00494G01
*             26 = Mobile Top-Up with Funds (NOTE 1)                   !00494G02
                                                                       !00494G03
*             30 = Balance Inquiry                                    !!00495
*             40 = Transfer                                           !!00496
                                                                       !00496D00
*             41 = Load Value                                          !00496D01
                                                                       !00496D02
*             50 = Payment from/to                                    !!00497
*             51 = Payment Enclosed                                   !!00498
*             60 = Message Enclosed to Financial Institution          !!00499
*             61 = Log Only                                           !!00500
*             62 = Card Review                                        !!00501
*             70 = Statement print                                    !!00502
*             81 = PIN change                                         !!00503
                                                                       !00503F00
*             82 = EMV PIN Unblock                                     !00503F01
                                                                       !00503F02
                                                                       !00503F03
                                                                       !00503F04
*             U1 = SVC Balance Inquiry                                 !00503D01
                                                                       !00503D02
*                                                                     !!00504
                                                                       !00505
        06 T-CDE                PIC X(2).                              !00506
                                                                       !00507
*                                                                     !!00508
*             The type of from account.  Values are:                  !!00509
*                                                                     !!00510
*             01 = Checking                                           !!00511
*             11 = Savings                                            !!00512
*             31 = Credit                                             !!00513
                                                                       !00513D00
*             70 = Electronic purse                                    !00513D01
                                                                       !00513D02
*                                                                     !!00514
                                                                       !00515
        06 T-FROM               PIC X(2).                              !00516
                                                                       !00517
*                                                                     !!00518
*             The type of to account.  Values are:                    !!00519
*                                                                     !!00520
*             01 = Checking                                           !!00521
*             11 = Savings                                            !!00522
*             31 = Credit                                             !!00523
                                                                       !00523D00
*             70 = Electronic purse                                    !00523D01
                                                                       !00523D02
*                                                                     !!00524
                                                                       !00525
        06 T-TO                 PIC X(2).                              !00526
                                                                       !00527
*                                                                     !!00528
*             The account number of the from account for the          !!00529
*             transaction.  If the from account is not needed or      !!00530
*             known, this field contains zeros.                       !!00531
*                                                                     !!00532
                                                                       !00533
     04 FROM-ACCT               TYPE ACCT.                             !00534
                                                                       !00535
*                                                                     !!00536
*             This field is not used.                                 !!00537
*                                                                     !!00538
     04 USER-FLD1               PIC X.                                 !00539
                                                                       !00540
*                                                                     !!00541
*             The account number of the to account for the            !!00542
*             transaction.  If the to account is not needed or        !!00543
*             known, this field contains zeros.                       !!00544
*                                                                     !!00545
                                                                       !00546
     04 TO-ACCT                 TYPE ACCT.                             !00547
                                                                       !00548
*                                                                     !!00549
*             An indicator used to determine whether the transaction  !!00550
*             is a primary-account transaction, a multiple-account    !!00551
*             transaction, or a fast cash transaction.   Valid values !!00552
*             are:                                                    !!00553
*                                                                     !!00554
*             0 = A primary-account transaction--the ATM where the    !!00555
*                 transaction originated does not support multiple    !!00556
*                 account selection.                                  !!00557
*             1 = A multiple-account transaction--the ATM where the   !!00558
*                 transaction originated does support multiple        !!00559
*                 account selection.                                  !!00560
*             2 = A fast cash transaction.                            !!00561
*                                                                     !!00562
                                                                       !00563
     04 MULT-ACCT               PIC 9.                                 !00564
                                                                       !00565
*                                                                     !!00566
*             The transaction amount requested.  In the case of force !!00567
*             post (0220) or reversal (0420) messages, this field     !!00568
*             contains the amount originally requested.  For          !!00569
*             Adjustment (5400) messages, this field indicates the    !!00570
*             original completion amount. Note that for deposit with  !!00571
*             cash back transactions, this field contains the         !!00572
*             deposit amount.  For split desposit transactions, this  !!00573
*             field contains the deposit amount for the first         !!00574
*             account involved in the transaction.                    !!00575
*                                                                     !!00576
                                                                       !00577
     04 AMT-1                   TYPE BINARY 64.                        !00578
                                                                       !00579
*                                                                     !!00580
*             For most reversal (0420) messages, this field contains  !!00581
*             the actual completion amount of the transaction.        !!00582
*             For reversal messages for deposit with cash-back        !!00583
*             transactions, this field contains the cash-back         !!00584
*             amount.  For reversal messages for split deposit        !!00585
*             transactions, this field contains the deposit amount    !!00586
*             for the second account involved in the transaction.     !!00587
*                                                                     !!00588
*             For most response (0210) messages, this field contains  !!00589
*             a balance amount.  This is the credit balance, for      !!00590
*             credit accounts; and it is the ledger balance for       !!00591
*             non-credit accounts.  For response messages for deposit !!00592
*             with cash back transactions, this field contains the    !!00593
*             cash-back amount.  For reponse messages for split       !!00594
*             deposit transactions, this field contains the deposit   !!00595
*             amount for the second account involved in the           !!00596
*             transaction.                                            !!00597
*                                                                     !!00598
*             For most request (0200) messages, this field contains   !!00599
*             zeros.  For request messages for deposit with cash-     !!00600
*             back transactions, this field contains the cash-back    !!00601
*             amount.  For request messages for split deposit         !!00602
*             transactions, this field contains the deposit amount    !!00603
*             for the second account involved in the transaction.     !!00604
*                                                                     !!00605
*             For adjustment (5400) messages, this field indicates    !!00606
*             the updated completion amount.                          !!00607
*                                                                     !!00608
                                                                       !00609
     04 AMT-2                   TYPE BINARY 64.                        !00610
                                                                       !00611
*                                                                     !!00612
*             For most response (0210) messages, this field contains  !!00613
*             a balance amount.  This is the available balance for    !!00614
*             non-credit accounts; and it is the available credit     !!00615
*             for credit accounts. For response messages for deposit  !!00616
*             with cash-back transactions and split deposit           !!00617
*             transactions this field contains zeroes.                !!00618
*                                                                     !!00619
*             For a reversal (0420) message which is the result of a  !!00620
*             deposit with cash back transaction, this field          !!00621
*             contains the deposit amount if the deposit part of the  !!00622
*             transaction did not complete successfully, and it       !!00623
*             contains the completed amount of the cash back part     !!00624
*             of the transaction if the deposit completed, but the    !!00625
*             cash back did not complete successfully.  This is the   !!00626
*             only type of reversal that utilizes this field.         !!00627
*                                                                     !!00628
                                                                       !00629
     04 AMT-3                   TYPE BINARY 64.                        !00630
                                                                       !00631
*                                                                     !!00632
*             The amount of credit given on a deposit.                !!00633
*                                                                     !!00634
*             For a split deposit transaction, this field contains    !!00635
*             the amount of credit given to the first account         !!00636
*             involved in the transaction.                            !!00637
*                                                                     !!00638
                                                                       !00639
     04 DEP-BAL-CR              TYPE BINARY 32.                        !00640
                                                                       !00641
*                                                                     !!00642
*             An indicator used to determine the type of depository   !!00643
*             used at the terminal.  Valid values are:                !!00644
*                                                                     !!00645
*             0 = Normal envelope depository                          !!00646
*             1 = Commercial depository (e.g., Securomatic)           !!00647
*             3 = Check depository                                    !!00648
                                                                       !00648H00
*             4 = BNA depository (Cash depository)                     !00648H01
                                                                       !00648H02
*                                                                     !!00649
                                                                       !00650
     04 DEP-TYP                PIC 9.                                  !00651
                                                                       !00652
*                                                                     !!00653
*             The values in the following fields define the response  !!00654
*             code assigned by the transaction authorizer.            !!00655
*                                                                     !!00656
                                                                       !00657
     04 RESP-CDE                PIC X(3).                              !00658
     04 RESP-CDE-R REDEFINES RESP-CDE.                                 !00659
                                                                       !00660
*                                                                     !!00661
*             An indicator used to determine whether the card was     !!00662
*             returned or retained.  Values are:                      !!00663
*                                                                     !!00664
*             0 = Card was returned                                   !!00665
*             1 = Card was retained                                   !!00666
*                                                                     !!00667
                                                                       !00668
        06 RESP-BYTE-1       PIC X.                                    !00669
                                                                       !00670
*                                                                     !!00671
*             A code identifying the reason the transaction was       !!00672
*             approved or denied.  For a listing of the BASE24        !!00673
*             transaction response codes, please refer to the         !!00674
*             BASE24-atm Transaction Processing Manual.               !!00675
*                                                                     !!00676
                                                                       !00677
        06 RESP-BYTE-2       PIC X(2).                                 !00678
                                                                       !00679
*                                                                     !!00680
*             The terminal name and location of the terminal that     !!00681
*             acquired the transaction.                               !!00682
*                                                                     !!00683
                                                                       !00684
     04 TERM-NAME-LOC           PIC X(25).                             !00685
                                                                       !00686
*                                                                     !!00687
*             The name of the financial institution that owns the     !!00688
*             terminal that acquired the transaction.                 !!00689
*                                                                     !!00690
                                                                       !00691
     04 TERM-OWNER-NAME         PIC X(22).                             !00692
                                                                       !00693
*                                                                     !!00694
*             The city in which the terminal that acquired the        !!00695
*             transaction is located.                                 !!00696
*                                                                     !!00697
                                                                       !00698
     04 TERM-CITY               PIC X(13).                             !00699
                                                                       !00700
*                                                                     !!00701
*             The state in which the terminal that acquired the       !!00702
*             transaction is located.                                 !!00703
*                                                                     !!00704
                                                                       !00705
     04 TERM-ST-X               PIC X(3).                              !00706
                                                                       !00707
*                                                                     !!00708
*             A code indicating the country in which the terminal     !!00709
*             that acquired the transaction is located.               !!00710
*                                                                     !!00711
                                                                       !00712
     04 TERM-CNTRY-X            PIC X(2).                              !00713
                                                                       !00714
*                                                                     !!00715
*             The original data elements apply to transaction         !!00716
*             reversals (0420) and adjustments (5400) only.  If this  !!00717
*             transaction is a reversal or adjustment, these fields   !!00718
*             contain information on the original transaction.        !!00719
*                                                                     !!00720
                                                                       !00721
     04 ORIG.                                                          !00722
                                                                       !00723
*                                                                     !!00724
*             The sequence number that identifies the original        !!00725
*             transaction.                                            !!00726
*                                                                     !!00727
                                                                       !00728
        06  OSEQ-NUM            PIC X(12).                             !00729
                                                                       !00730
*                                                                     !!00731
*             The date of the original transaction.                   !!00732
*                                                                     !!00733
                                                                       !00734
        06  OTRAN-DAT           PIC X(4).                              !00735
                                                                       !00736
*                                                                     !!00737
*             The time of the original transaction.                   !!00738
*                                                                     !!00739
                                                                       !00740
        06  OTRAN-TIM           PIC X(8).                              !00741
                                                                       !00742
*                                                                     !!00743
*             The BASE24 posting date of the original transaction.    !!00744
*                                                                     !!00745
                                                                       !00746
        06  B24-POST-DAT        PIC X(4).                              !00747
                                                                       !00748
*                                                                     !!00749
*             The type of currency involved in the original           !!00750
*             transaction.                                            !!00751
*                                                                     !!00752
                                                                       !00753
     04 ORIG-CRNCY-CDE              TYPE CRNCY-CDE.                    !00754
                                                                       !00755
*                                                                     !!00756
*             This field is not used.                                 !!00757
*                                                                     !!00758
                                                                       !00759
     04 USER-FLD2                   PIC X(30).                         !00760
                                                                       !00761
*                                                                     !!00762
*             The following fields are defined for multiple currency  !!00763
*             support, but they are not currently used by BASE24-atm. !!00764
*                                                                     !!00765
                                                                       !00766
     04 MULT-CRNCY                  REDEFINES USER-FLD2.               !00767
                                                                       !00768
*                                                                     !!00769
*             A code identifying the type of currency used in the     !!00770
*             authorization response.                                 !!00771
*                                                                     !!00772
                                                                       !00773
       06 AUTH-CRNCY-CDE            TYPE CRNCY-CDE.                    !00774
                                                                       !00775
*                                                                     !!00776
*             The exchange rate of the authorizing institution.  The  !!00777
*             value in this field is used to compute the final        !!00778
*             settlement amount.  The first digit contains the offset !!00779
*             of the decimal point from the right-hand side.  Unless  !!00780
*             multiple currencies are involved, the default value is  !!00781
*             61000000.                                               !!00782
*                                                                     !!00783
                                                                       !00784
       06 AUTH-CONV-RATE            PIC 9(8).                          !00785
                                                                       !00786
*                                                                     !!00787
*             A code identifying the type of currency used by the     !!00788
*             settlement entity.                                      !!00789
*                                                                     !!00790
                                                                       !00791
       06 SETL-CRNCY-CDE            TYPE CRNCY-CDE.                    !00792
                                                                       !00793
*                                                                     !!00794
*             The exchange rate of the settlement entity.  The value  !!00795
*             in this field is used to compute the final settlement   !!00796
*             amount.  The first digit contains the offset of the     !!00797
*             decimal point from the right-hand side.  Unless         !!00798
*             multiple currencies are involved, the default value is  !!00799
*             61000000.                                               !!00800
*                                                                     !!00801
                                                                       !00802
       06 SETL-CONV-RATE            PIC 9(8).                          !00803
                                                                       !00804
*                                                                     !!00805
*             The day and time when the exchange rate was applied.    !!00806
*             The value in this field is generated via a call to      !!00807
*             Tandem's JULIANTIMESTAMP utility. It is used for time   !!00808
*             tracking purposes.                                      !!00809
*                                                                     !!00810
                                                                       !00811
       06 CONV-DAT-TIM               TYPE BINARY 64.                   !00812
                                                                       !00813
*                                                                     !!00814
*             An indicator used to identify the reason for a reversal !!00815
*             (0420) or adjustment (5400) message type.               !!00816
*                                                                     !!00817
*             Valid values for a reversal message (0420) are:         !!00818
*                                                                     !!00819
*             01 = Time-out                                           !!00820
*             02 = Command reject                                     !!00821
*             03 = Destination not available                          !!00822
*             08 = Transaction canceled                               !!00823
*             10 = Hardware error                                     !!00824
*             20 = Suspect transaction                                !!00825
                                                                       !00825D00
*             30 = Funds side of stored value tran failed              !00825D01
*             31 = SVC side of stored value tran failed                !00825D02
                                                                       !00825G00
                                                                       !00825G01
*             40 = Split Routing Enabled; Secondary Service Not        !00825G02
*                  Approved                                           !!00825G03
                                                                       !00825G04
*             Valid values for an adjustment message (5400) are:      !!00827
*                                                                     !!00828
*             12 = Original amount incorrect                          !!00829
*             13 = ATM malfunction                                    !!00830
*             14 = Suspicious reveral override                        !!00831
*             15 = Misdispense reversal override                      !!00832
*             16 = Duplicate transaction                              !!00833
*             17 = Reconcilation error                                !!00834
*             18 = PLUS add cash withdrawal or advance                !!00835
                                                                       !00835B00
*             21 = Message Authentication Code (MAC) failure           !00835B01
*             22 = MAC key synchronization error                       !00835B02
*             23 = Message replay error                                !00835B03
*             24 = Invalid MAC                                         !00835B04
                                                                       !00835B05
*                                                                     !!00836
                                                                       !00837
     04 RVSL-RSN                 PIC 99.                               !00838
                                                                       !00839
*                                                                     !!00840
*             The PIN offset value.                                   !!00841
*                                                                     !!00842
*             This is calculated by the Authorization                 !!00843
*             process when the institution allows its cardholders to  !!00844
*             select or change their PINs.                            !!00845
*                                                                     !!00846
                                                                       !00847
     04 PIN-OFST                PIC X(16).                             !00848
                                                                       !00849
*                                                                     !!00850
*             An indicator used to identify the sharing group used to !!00851
*             allow the transaction, if it was a not-on-us            !!00852
*             transaction; otherwise, this field contains a zero.     !!00853
*                                                                     !!00854
                                                                       !00855
     04 SHRG-GRP                PIC X.                                 !00856
                                                                       !00857
*                                                                     !!00858
*             An indicator used to determine which destination        !!00859
*             performed the final authorization.  Valid values are:   !!00860
*                                                                     !!00861
*             A = Alternate destination                               !!00862
*             P = Primary destination                                 !!00863
*                                                                     !!00864
                                                                       !00865
     04 DEST-ORDER               PIC X.                                !00866
                                                                       !00867
*                                                                     !!00868
*             The host-generated transaction sequence number used for !!00869
*             logging and extract purposes only.                      !!00870
*                                                                     !!00871
                                                                       !00872
     04 AUTH-ID-RESP             PIC X(6).                             !00873
                                                                       !00874
*                                                                     !!00875
*             The values in the following fields indicate to Refresh  !!00876
*             when to impact the PBF and how to impact the balances   !!00877
*             when impacting is required.  All are set by             !!00878
*             Authorization according to the transaction type.        !!00879
*                                                                     !!00880
                                                                       !00881
     04 REFR.                                                          !00882
                                                                       !00883
                                                                       !00884
*                                                                     !!00885
*             An indicator used to determine whether this record      !!00886
*             should be considered when impacting a newly refreshed   !!00887
*             set of account records.  Valid values are:              !!00888
*                                                                     !!00889
*             0 = Do not use this record for impacting.               !!00890
*             1 = Use this record for impacting.                      !!00891
*                                                                     !!00892
                                                                       !00893
        06  IMP-IND             PIC X.                                 !00894
                                                                       !00895
*                                                                     !!00896
*             An indicator used to define how the value in the AVAIL- !!00897
*             BAL field is impacted in the PBF account records.  The  !!00898
*             first occurrence defines impacting on the from account  !!00899
*             and the second occurrence defines impacting on the to   !!00900
*             account.  Valid values are:                             !!00901
*                                                                     !!00902
*             0 = No effect on balance                                !!00903
*             1 = Add to balance                                      !!00904
*             2 = Subtract from balance                               !!00905
*                                                                     !!00906
                                                                       !00907
        06  AVAIL-IMP           PIC X  OCCURS 2 TIMES.                 !00908
                                                                       !00909
*                                                                     !!00910
*             An indicator used to define how the value in the LEDG-  !!00911
*             BAL field is impacted in the PBF account records.  The  !!00912
*             first occurrence defines impacting on the from account  !!00913
*             and the second occurrence defines impacting on the to   !!00914
*             account.  Valid values are:                             !!00915
*                                                                     !!00916
*             0 = No effect on balance                                !!00917
*             1 = Add to balance                                      !!00918
*             2 = Subtract from balance                               !!00919
*                                                                     !!00920
                                                                       !00921
        06  LEDG-IMP            PIC X  OCCURS 2 TIMES.                 !00922
                                                                       !00923
*                                                                     !!00924
*             An indicator used to define how the value in the AMT-   !!00925
*             ON-HLD field is impacted in the PBF account records.    !!00926
*             The first occurrence defines impacting on the from      !!00927
*             account and the second occurrence defines impacting on  !!00928
*             the to account.  Valid values are:                      !!00929
*                                                                     !!00930
*             0 = No effect on balance                                !!00931
*             1 = Add to balance                                      !!00932
*             2 = Subtract from balance                               !!00933
*                                                                     !!00934
                                                                       !00935
        06  HLD-AMT-IMP         PIC X  OCCURS 2 TIMES.                 !00936
                                                                       !00937
*                                                                     !!00938
*             An indicator used to determine when transaction         !!00939
*             impacting can be terminated.  The value in this field   !!00940
*             is set by Authorization from a corresponding field in   !!00941
*             the IDF.                                                !!00942
*                                                                     !!00943
*             When Refresh finishes refreshing the CAF, it begins     !!00944
*             impacting the file with new transactions being added to !!00945
*             the TLF.  At that time, it increments the value in the  !!00946
*             CAF1 field in the IDF (A to B, B to C, C to D,          !!00947
*             etc.) and sends a message to Authorization containing   !!00948
*             the refreshed CAF file name and the new value in the    !!00949
*             CAF1 field.  Thus, when transactions begin              !!00950
*             appearing in the TLF with the new value in the          !!00951
*             CAF-REFR-IND field, refresh knows that Authorization    !!00952
*             is using the refreshed CAF and that it can stop         !!00953
*             impacting the CAF.                                      !!00954
*                                                                     !!00955
                                                                       !00956
        06  CAF-REFR-IND        PIC X.                                 !00957
                                                                       !00958
*                                                                     !!00959
*             This field is not used.                                 !!00960
*                                                                     !!00961
                                                                       !00962
        06  USER-FLD3           PIC X.                                 !00963
                                                                       !00964
*                                                                     !!00965
*             An indicator identifying how deposits at an ATM impact  !!00966
*             settlement.  Valid values are:                          !!00967
*                                                                     !!00968
*             0 = Deposits do not impact settlement.                  !!00969
*             1 = Envelope deposits do impact settlement.             !!00970
*             2 = Commercial deposits do impact settlement.           !!00971
*             3 = Both envelope and commercial deposits do impact     !!00972
*                 settlement.                                         !!00973
*                                                                     !!00974
                                                                       !00975
     04 DEP-SETL-IMP-FLG        PIC X.                                 !00976
                                                                       !00977
*                                                                     !!00978
*             An indicator used to determine whether adjustments      !!00979
*             impact settlement.  Valid values are:                   !!00980
*                                                                     !!00981
*             0 = Adjustments do not impact settlement.               !!00982
*             1 = Adjustments impact settlement.                      !!00983
*                                                                     !!00984
                                                                       !00985
     04 ADJ-SETL-IMP-FLG        PIC X.                                 !00986
                                                                       !00987
*                                                                     !!00988
*             An indicator used to determine when transaction         !!00989
*             impacting can be terminated.  The value in this field   !!00990
*             is set by Authorization from a corresponding field in   !!00991
*             the IDF.                                                !!00992
*                                                                     !!00993
*             When Refresh finishes refreshing the PBF, it begins     !!00994
*             impacting the file with new transactions being added to !!00995
*             the TLF.  At that time, it increments the value in the  !!00996
*             REFR-IND field in the IDF (A to B, B to C, C to D,      !!00997
*             etc.) and sends a message to Authorization containing   !!00998
*             the refreshed PBF file name and the new value in the    !!00999
*             REFR-IND field.  Thus, when transactions begin          !!01000
*             appearing in the TLF with the new value in the REFR-IND !!01001
*             field, Refresh knows that Authorization is using the    !!01002
*             refreshed PBF and that it can stop impacting the PBF.   !!01003
*                                                                     !!01004
*             The first three settings (PBF1, PBF2, and PBF3) are     !!01005
*             present because an institution may have three separate  !!01006
*             PBFs used for BASE24-atm and, therefore, multiple       !!01007
*             refresh schedules:  one for checking accounts (PBF1),   !!01008
*             one for savings accounts (PBF2), and one for credit     !!01009
*             accounts (PBF3).  If only one PBF is maintained, only   !!01010
*             the PBF1 field is used.  The PBF4 field is used in      !!01011
*             situations when a CPBF (used in conjunction with        !!01012
*             BASE24-cash manager) is used instead of a PBF.          !!01013
*                                                                     !!01014
                                                                       !01015
     04 REFR-IND.                                                      !01016
        06  PBF1                PIC X.                                 !01017
        06  PBF2                PIC X.                                 !01018
        06  PBF3                PIC X.                                 !01019
        06  PBF4                PIC X.                                 !01020
                                                                       !01021
*                                                                     !!01022
*             Taken from the RQST.USER-FLD5 in the STM.  (The         !!01023
*             RQST.USER-FLD5 field in the STM is not used by BASE24-  !!01024
*             atm; but, it is routinely moved into the TLF record.)   !!01025
*                                                                     !!01026
                                                                       !01027
     04 USER-FLD4               PIC X(16).                             !01028
                                                                       !01029
*                                                                     !!01030
*             An identification number used to identify the           !!01031
*             forwarding institution.                                 !!01032
*                                                                     !!01033
                                                                       !01034
     04 FRWD-INST-ID-NUM        TYPE ID-NUM.                           !01035
                                                                       !01036
*                                                                     !!01037
*             An identification number used to identify the card      !!01038
*             acceptor for a request message (0200) originating from  !!01039
*             an acquirer host.                                       !!01040
*                                                                     !!01041
                                                                       !01042
     04 CRD-ACCPT-ID-NUM       TYPE ID-NUM.                            !01043
                                                                       !01044
*                                                                     !!01045
*             An identification number used to identify the card      !!01046
*             issuer for a response message (0210) originating from   !!01047
*             an authorizing host.                                    !!01048
*                                                                     !!01049
                                                                       !01050
     04 CRD-ISS-ID-NUM         TYPE ID-NUM.                            !01051
                                                                       !01052
END                                                                    !01053
                                                                       !01054
?page "TLF-TERM-SETL"
?section TLF-TERM-SETL
                                                                       !01059
DEFINITION TLF-TERM-SETL.                                              !01060
02 HEAD               TYPE *.                                          !01061
                                                                       !01062
*                                                                     !!01063
*             The following fields are included in terminal balancing !!01064
*             records logged to the TLF.  Terminal balancing records  !!01065
*             are identified by a value of 04 in the REC-TYP field in !!01066
*             the TLF header.  These records are further identified   !!01067
*             by values of 05, 06, or 09 in the TERM-SETL.ADMIN-CDE   !!01068
*             field.                                                  !!01069
*                                                                     !!01070
                                                                       !01071
  02 TERM-SETL.                                                        !01072
                                                                       !01073
*                                                                     !!01074
*             The date (YYMMDD) the administrative transaction        !!01075
*             occurred.                                               !!01076
*                                                                     !!01077
                                                                       !01078
    04  ADMIN-DAT                   TYPE DAT.                          !01079
                                                                       !01080
*                                                                     !!01081
*             The time (HHMMSSTT) the administrative transaction      !!01082
*             occurred.                                               !!01083
*                                                                     !!01084
                                                                       !01085
    04  ADMIN-TIM                   TYPE TIM.                          !01086
                                                                       !01087
*                                                                     !!01088
*             An indicator used to determine how the terminal was cut !!01089
*             over.  Values are:                                      !!01090
*                                                                     !!01091
*             05 = Terminal cutover via the Device Handler.           !!01092
*             06 = Terminal cutover via CRT.                          !!01093
*             09 = Forced cutover via Settlement Initiator.           !!01094
*                                                                     !!01095
                                                                       !01096
    04  ADMIN-CDE                   PIC 9(2).                          !01097
                                                                       !01098
*                                                                     !!01099
*             The following fields contain the hopper values from the !!01100
*             TDF just prior to the terminal being balanced.          !!01101
*                                                                     !!01102
                                                                       !01103
    04  HOPR                         OCCURS 6 TIMES.                   !01104
                                                                       !01105
*                                                                     !!01106
*             A code used to identify the contents of the hopper.     !!01107
*             Valid values are:                                       !!01108
*                                                                     !!01109
*             00 = Cash                                               !!01110
*             01 = Coin                                               !!01111
*                                                                     !!01112
                                                                       !01113
        06  CONTENTS                 PIC X(2).                         !01114
                                                                       !01115
*                                                                     !!01116
*             The amount of currency in the hopper at the start of    !!01117
*             the current balancing period.                           !!01118
*                                                                     !!01119
                                                                       !01120
        06  BEG-CASH                 TYPE BINARY 64.                   !01121
                                                                       !01122
*                                                                     !!01123
*             The amount of currency added to the hopper during the   !!01124
*             current balancing period.                               !!01125
*                                                                     !!01126
                                                                       !01127
        06  CASH-INCR                TYPE BINARY 64.                   !01128
                                                                       !01129
*                                                                     !!01130
*             The amount of currency removed from the hopper during   !!01131
*             the current balancing period.                           !!01132
*                                                                     !!01133
                                                                       !01134
        06  CASH-DECR                TYPE BINARY 64.                   !01135
                                                                       !01136
*                                                                     !!01137
*             The amount of currency dispensed from the hopper        !!01138
*             through customer withdrawals between terminal balancing !!01139
*             periods.                                                !!01140
*                                                                     !!01141
                                                                       !01142
        06  CASH-OUT                 TYPE BINARY 64.                   !01143
                                                                       !01144
*                                                                     !!01145
*             The amount of currency remaining in the hopper at the   !!01146
*             end of the balancing period.                            !!01147
*                                                                     !!01148
                                                                       !01149
        06  END-CASH                 TYPE BINARY 64.                   !01150
                                                                       !01151
*                                                                     !!01152
*             A code identifying the currency in the hopper.  Valid   !!01153
*             values are listed in the booklet "Codes for the         !!01154
*             Representation of Currencies and Funds", ISO 4217:1990. !!01155
*                                                                     !!01156
                                                                       !01157
        06  CRNCY-CDE                TYPE *.                           !01158
                                                                       !01159
*                                                                     !!01160
*             This field is not used.                                 !!01161
*                                                                     !!01162
                                                                       !01163
        06  USER-FLD5                PIC X.                            !01164
                                                                       !01165
*                                                                     !!01166
*             The number of envelope deposits accepted at the         !!01167
*             terminal since the last terminal balancing transaction. !!01168
*                                                                     !!01169
                                                                       !01170
    04  NUM-DEP                      TYPE BINARY 16.                   !01171
                                                                       !01172
*                                                                     !!01173
*             The unverified amount of the deposits accepted at the   !!01174
*             terminal since the last terminal balancing transaction. !!01175
*                                                                     !!01176
                                                                       !01177
    04  AMT-DEP                      TYPE BINARY 64.                   !01178
                                                                       !01179
*                                                                     !!01180
*             The number of envelope deposits accepted in the         !!01181
*             commercial (e.g., Securomatic) depository since the     !!01182
*             last terminal balancing transaction.                    !!01183
*                                                                     !!01184
                                                                       !01185
    04  NUM-CMRCL-DEP                TYPE BINARY 16.                   !01186
                                                                       !01187
*                                                                     !!01188
*             The unverified amount of the deposits accepted in the   !!01189
*             commercial (e.g., Securomatic) depository since the     !!01190
*             last terminal balancing transaction.                    !!01191
*                                                                     !!01192
                                                                       !01193
    04  AMT-CMRCL-DEP                TYPE BINARY 64.                   !01194
                                                                       !01195
*                                                                     !!01196
*             The number of envelope payments accepted at the         !!01197
*             terminal since the last terminal balancing transaction. !!01198
*                                                                     !!01199
                                                                       !01200
    04  NUM-PAY                      TYPE BINARY 16.                   !01201
                                                                       !01202
*                                                                     !!01203
*             The unverified amount of payments accepted at the       !!01204
*             terminal since the last terminal balancing transaction. !!01205
*                                                                     !!01206
                                                                       !01207
    04  AMT-PAY                      TYPE BINARY 64.                   !01208
                                                                       !01209
*                                                                     !!01210
*             The number of messages-to-institution transaction       !!01211
*             envelopes accepted since the last terminal balancing    !!01212
*             transaction.                                            !!01213
*                                                                     !!01214
                                                                       !01215
    04  NUM-MSG                      TYPE BINARY 16.                   !01216
                                                                       !01217
*                                                                     !!01218
*             The total number of checks received (i.e. cashed        !!01219
*             or deposited) since the terminal was last balanced.     !!01220
*                                                                     !!01221
                                                                       !01222
    04  NUM-CHK                      TYPE BINARY 16.                   !01223
                                                                       !01224
*                                                                     !!01225
*             The unverified total amount of checks received          !!01226
*             (i.e. cashed or deposited) since the terminal was       !!01227
*             last balanced. terminal balancing transaction.          !!01228
*                                                                     !!01229
                                                                       !01230
    04  AMT-CHK                      TYPE BINARY 64.                   !01231
                                                                       !01232
*                                                                     !!01233
*             The number of log-only transactions performed since the !!01234
*             last terminal balancing transaction.                    !!01235
*                                                                     !!01236
                                                                       !01237
    04  NUM-LOGONLY                  TYPE BINARY 16.                   !01238
                                                                       !01239
*                                                                     !!01240
*             The estimated number of envelopes deposited at the      !!01241
*             terminal.  This number is computed by the process       !!01242
*             creating the terminal settlement record by adding the   !!01243
*             values from the following fields in the TDF:  NUM-DEP,  !!01244
*             NUM-PAY, NUM-MSG and NUM-CHK.                           !!01245
*                                                                     !!01246
                                                                       !01247
    04  TTL-ENV                      TYPE BINARY 16.                   !01248
                                                                       !01249
*                                                                     !!01250
*             The number of cards retained since the last terminal    !!01251
*             balancing transaction.                                  !!01252
*                                                                     !!01253
                                                                       !01254
    04  CRDS-RET                     TYPE BINARY 16.                   !01255
                                                                       !01256
*                                                                     !!01257
*             A code indicating the type of currency used to          !!01258
*             represent the terminal's amount fields (i.e., the       !!01259
*             nation that printed the currency).  Valid               !!01260
*             values are listed in the "ISO Codes for the             !!01261
*             Representation of Currencies and Funds", 4217-1990.     !!01262
*                                                                     !!01263
                                                                       !01264
    04  SETL-CRNCY-CDE               TYPE CRNCY-CDE.                   !01265
                                                                       !01266
*                                                                     !!01267
*             This field is not used.                                 !!01268
*                                                                     !!01269
                                                                       !01270
     04 USER-FLD7                    PIC X.                            !01271
                                                                       !01272
*                                                                     !!01273
*             The time difference (plus or minus in minutes) between  !!01274
*             the terminal location and the Tandem processor location.!!01275
*             This field is filled with the TIM-OFST from the TDF.    !!01276
*                                                                     !!01277
                                                                       !01278
     04 TIM-OFST                     TYPE BINARY 16.                   !01279
                                                                       !01280
*                                                                     !!01281
*             This field is not used.                                 !!01282
*                                                                     !!01283
                                                                       !01284
    04  SETL-AREA                    PIC X(20).                        !01285
END                                                                    !01286
                                                                       !01287
?page "TLF-TERM-CASH"
?section TLF-TERM-CASH
                                                                       !01292
DEFINITION TLF-TERM-CASH.                                              !01293
02 HEAD               TYPE *.                                          !01294
                                                                       !01295
*                                                                     !!01296
*             The following fields are included in Terminal Cash      !!01297
*             Adjustment records logged to the TLF. Terminal Cash     !!01298
*             Adjustment records are identified by a value of 04 in   !!01299
*             the REC-TYP field in the TLF header.  These records are !!01300
*             further identified by values of 01, 02, 03, 04, 07, and !!01301
*             08 in the TERM-CASH.ADMIN-CDE field.                    !!01302
*                                                                     !!01303
                                                                       !01304
  02 TERM-CASH.                                                        !01305
                                                                       !01306
*                                                                     !!01307
*             The date (YYMMDD) the administrative transaction        !!01308
*             occurred.                                               !!01309
*                                                                     !!01310
                                                                       !01311
    04  ADMIN-DAT                   TYPE DAT.                          !01312
                                                                       !01313
*                                                                     !!01314
*             The time (HHMMSSTT) the administrative transaction      !!01315
*             occurred.                                               !!01316
*                                                                     !!01317
                                                                       !01318
    04  ADMIN-TIM                   TYPE TIM.                          !01319
                                                                       !01320
*                                                                     !!01321
*             A code indicating a transaction type that involves      !!01322
*             increases and decreases of currency.  This code also    !!01323
*             identifies whether the transaction was performed by a   !!01324
*             Device Handler or at a CRT.  Valid values are:          !!01325
*                                                                     !!01326
*             01 = Initialize cash, hopper #n (Device Handler).       !!01327
*             02 = Initialize cash, hopper #n (CRT).                  !!01328
*             03 = Increase cash, hopper #n (Device Handler).         !!01329
*             04 = Increase cash, hopper #n (CRT).                    !!01330
*             07 = Decrease cash, hopper #n (Device Handler).         !!01331
*             08 = Decrease cash, hopper #n (CRT).                    !!01332
*                                                                     !!01333
                                                                       !01334
     04  ADMIN-CDE                    PIC 9(2).                        !01335
                                                                       !01336
*                                                                     !!01337
*             The number of the hopper being affected by the          !!01338
*             administrative transaction.                             !!01339
*                                                                     !!01340
                                                                       !01341
     04  HOPR-NUM                     PIC X.                           !01342
                                                                       !01343
*                                                                     !!01344
*             The contents contained in the hopper.  Valid values     !!01345
*             are:                                                    !!01346
*                                                                     !!01347
*             00 = Cash                                               !!01348
*             01 = Coin                                               !!01349
*                                                                     !!01350
                                                                       !01351
     04  HOPR-CONTENTS                PIC X(2).                        !01352
                                                                       !01353
*                                                                     !!01354
*             The amount of increase or decrease to the hopper        !!01355
*             because of the administrative transaction.              !!01356
*                                                                     !!01357
                                                                       !01358
     04  AMT                          PIC 9(12).                       !01359
                                                                       !01360
*                                                                     !!01361
*             A code identifying the type of currency used for the    !!01362
*             administrative transaction.  Valid                      !!01363
*             values are listed in the "ISO Codes for the             !!01364
*             Representation of Currencies and Funds", 4217-1990.     !!01365
*                                                                     !!01366
                                                                       !01367
     04  CRNCY-CDE                    TYPE *.                          !01368
                                                                       !01369
*                                                                     !!01370
*             The time difference (plus or minus in minutes) between  !!01371
*             the terminal location and the Tandem processor location.!!01372
*             This field is filled with the TIM-OFST from the TDF.    !!01373
*                                                                     !!01374
                                                                       !01375
     04 TIM-OFST                      TYPE BINARY 16.                  !01376
                                                                       !01377
*                                                                     !!01378
*             This field is not used.                                 !!01379
*                                                                     !!01380
                                                                       !01381
     04  CASH-AREA                    PIC X(20).                       !01382
END                                                                    !01383
                                                                       !01384
?page "TLF-SETL-TTL"
?section TLF-SETL-TTL
                                                                       !01389
DEFINITION TLF-SETL-TTL.                                               !01390
02 HEAD               TYPE *.                                          !01391
                                                                       !01392
*                                                                     !!01393
*             The following fields are included in Terminal           !!01394
*             Settlement records logged to the TLF. Terminal          !!01395
*             Settlement records are identified by a value of 04 in   !!01396
*             the REC-TYP field in the TLF header. These records are  !!01397
*             further identified by values of 20, 21, and 22 in the   !!01398
*             SETL-TTL.ADMIN-CDE field.                               !!01399
*                                                                     !!01400
                                                                       !01401
  02 SETL-TTL.                                                         !01402
                                                                       !01403
*                                                                     !!01404
*             The date (YYMMDD) the administrative transaction        !!01405
*             occurred.                                               !!01406
*                                                                     !!01407
                                                                       !01408
    04  ADMIN-DAT                   TYPE DAT.                          !01409
                                                                       !01410
*                                                                     !!01411
*             The time (HHMMSSTT) the administrative transaction      !!01412
*             occurred.                                               !!01413
*                                                                     !!01414
                                                                       !01415
    04  ADMIN-TIM                   TYPE TIM.                          !01416
                                                                       !01417
*                                                                     !!01418
*             An indicator used to determine the type of settlement   !!01419
*             transaction and originator of the transaction.  Valid   !!01420
*             values are:                                             !!01421
*                                                                     !!01422
*             20 = Terminal totals sent by the CRT                    !!01423
*             21 = Terminal totals sent by the Device Handler         !!01424
*             22 = Terminal totals sent by the Settlement Initiator   !!01425
*                                                                     !!01426
                                                                       !01427
     04  ADMIN-CDE                    PIC 9(2).                        !01428
                                                                       !01429
*                                                                     !!01430
*             The unverified amount of terminal debits since the      !!01431
*             terminal was last balanced.  The amount in this field   !!01432
*             consists of debits from the institution's point of      !!01433
*             view.  Transaction amounts are added to the balance in  !!01434
*             this field for:                                         !!01435
*                                                                     !!01436
*             o  On-us and not-on-us deposits.  This includes         !!01437
*                all types of deposit transactions (i.e. deposit      !!01438
*                transactions, split deposit transactions and deposit !!01439
*                with cash back transactions).  Note that these       !!01440
*                transactions are supported for envelop, commercial   !!01441
*                and check deposit types.                             !!01442
*                                                                     !!01443
*             o  On-us and not-on-us payment-enclosed transactions    !!01444
*                                                                     !!01445
*             o  On-us and not-on-us transfers                        !!01446
*                                                                     !!01447
*             o  On-us and not-on-us payments between accounts        !!01448
*                                                                     !!01449
                                                                       !01450
     04  TERM-DB                      PIC 9(12).                       !01451
                                                                       !01452
                                                                       !01453
*                                                                     !!01454
*             The total amount of terminal credits since the terminal !!01455
*             was last balanced.  The amount in this field consists   !!01456
*             of credits from the institution's point of view.        !!01457
*             Transaction amounts are added to the balance in this    !!01458
*             field for:                                              !!01459
*                                                                     !!01460
*             o  On-us and not-on-us withdrawals                      !!01461
*                                                                     !!01462
*             o  On-us and not-on-us cash checks                      !!01463
*                                                                     !!01464
*             o  On-us and not-on-us deposits with cash back.  Note   !!01465
*                that only the cash back amount is included in the    !!01466
*                TERM-CR amount.                                      !!01467
*                                                                     !!01468
*             o  On-us and not-on-us transfers                        !!01469
*                                                                     !!01470
*             o  On-us and not-on-us payments between accounts        !!01471
*                                                                     !!01472
                                                                       !01473
     04  TERM-CR                      PIC 9(12).                       !01474
                                                                       !01475
*                                                                     !!01476
*             The total amount of on-us debits since the terminal was !!01477
*             last balanced. The amount in this field consists of     !!01478
*             debits from the customer's point of view.  Transaction  !!01479
*             amounts are added to the balance in this field for:     !!01480
*                                                                     !!01481
*             o  On-us withdrawals                                    !!01482
*                                                                     !!01483
*             o  On-us cash checks                                    !!01484
*                                                                     !!01485
*             o  On-us and not-on-us deposits with cash back.  Note   !!01486
*                that only the cash back amount is included in the    !!01487
*                ON-US-DB amount.                                     !!01488
*                                                                     !!01489
*             o  On-us transfers                                      !!01490
*                                                                     !!01491
*             o  On-us payments between accounts                      !!01492
*                                                                     !!01493
                                                                       !01494
     04  ON-US-DB                    PIC 9(12).                        !01495
                                                                       !01496
*                                                                     !!01497
*             The total amount of on-us credits since the terminal    !!01498
*             was last balanced. The amount in this field consists of !!01499
*             credits from the customer's point of view.  Transaction !!01500
*             amounts are added to the balance in this field for:     !!01501
*                                                                     !!01502
*             o  On-us deposits.  This includes                       !!01503
*                all types of deposit transactions (i.e. deposit      !!01504
*                transactions, split deposit transactions and deposit !!01505
*                with cash back transactions).  Note that these       !!01506
*                transactions are supported for envelop, commercial   !!01507
*                and check deposit types.                             !!01508
*                                                                     !!01509
*             o  On-us payment enclosed transactions                  !!01510
*                                                                     !!01511
*             o  On-us transfers                                      !!01512
*                                                                     !!01513
*             o  On-us payments between accounts                      !!01514
*                                                                     !!01515
                                                                       !01516
     04  ON-US-CR                    PIC 9(12).                        !01517
                                                                       !01518
*                                                                     !!01519
*             A code indicating the type of currency used during      !!01520
*             settlement.  Valid values are listed in the "ISO Codes  !!01521
*             for the Representation of Currencies and Funds",        !!01522
*             4217-1990.                                              !!01523
*                                                                     !!01524
                                                                       !01525
     04  CRNCY-CDE                   TYPE *.                           !01526
                                                                       !01527
*                                                                     !!01528
*             This field is not used.                                 !!01529
*                                                                     !!01530
                                                                       !01531
     04 USER-FLD9                    PIC X.                            !01532
                                                                       !01533
*                                                                     !!01534
*             The time difference (plus or minus in minutes) between  !!01535
*             the terminal location and the Tandem processor location.!!01536
*             This field is filled with the TIM-OFST from the TDF.    !!01537
*                                                                     !!01538
                                                                       !01539
     04 TIM-OFST                     TYPE BINARY 16.                   !01540
                                                                       !01541
*                                                                     !!01542
*             This field is not used.                                 !!01543
*                                                                     !!01544
                                                                       !01545
     04  TTL-AREA                    PIC X(20).                        !01546
                                                                       !01547
END                                                                    !01548
                                                                       !01549
?page "TLF-EXTR-POSITIONS"
?section TLF-EXTR-POSITIONS
                                                                       !01549E02
                                                                       !01554
DEFINITION TLF-EXTR-POSITIONS.                                         !01555
02 HEAD               TYPE *.                                          !01556
                                                                       !01557
*             The following fields are included in Terminal           !!01558
*             Extract position record.  The Extract position          !!01559
*             record is the first record in the TLF file and is       !!01560
*             created by the Settlement process when the TLF is       !!01561
*             created.  The Extract position record is used by the    !!01562
*             Super Extract process to allow muliple extracts and     !!01563
*             re-extracts of the TLF file.                            !!01564
*             The Extract position record contains 00 in              !!01565
*             the REC-TYP field in the TLF header.                    !!01566
*                                                                     !!01567
                                                                       !01568
*                                                                     !!01569
*             A value one less than the number of partial             !!01570
*             extracts that have been performed on the TLF            !!01571
*             file.  This value will be used to access the            !!01572
*             last entry in the EXTR-POSITIONS array of               !!01573
*             extract position markers that has been filled.          !!01574
*                                                                     !!01575
                                                                       !01576
02  PARTIAL-CNT                    TYPE BINARY 16.                     !01577
                                                                       !01578
*                                                                     !!01579
*             The values in the following fields are used to          !!01580
*             hold the location of the last record extracted          !!01581
*             in the corresponding partial extract.  Up to 100        !!01582
*             partial extracts can be tracked in a given TLF file.    !!01583
*                                                                     !!01584
                                                                       !01585
02  EXTR-POSITIONS                 OCCURS 100 TIMES.                   !01586
                                                                       !01587
*                                                                     !!01588
*             The relative byte address of the beginning of the       !!01589
*             TLF data block that contained the last TLF record       !!01590
*             extracted in the corresponding partial extract.         !!01591
*                                                                     !!01592
                                                                       !01593
    04  RBA                        TYPE BINARY 32.                     !01594
                                                                       !01595
*                                                                     !!01596
*             The number of the record in the block of the last       !!01597
*             TLF record extracted in the corresponding partial       !!01598
*             extract.                                                !!01599
*                                                                     !!01600
                                                                       !01601
    04  BLK-REC-CNT                TYPE BINARY 16.                     !01602
                                                                       !01603
                                                                       !01603A00
*                                                                      !01603A01
*              For a partitioned TLF log file, this field contains     !01603A02
*              the number of the partition within the TLF file that    !01603A03
*              contained the last TLF record extracted in the          !01603A04
*              in the corresponding partial extract.                   !01603A05
*                                                                      !01603A06
    04  PART-NUM                   TYPE BINARY 16.                     !01603A07
                                                                       !01603A08
                                                                       !01603A09
*                                                                     !!01604
*             This field is not used.                                 !!01605
*                                                                     !!01606
                                                                       !01607
02  USER-FLD10                     PIC X(20).                          !01608
END                                                                    !01609
                                                                       !01610
RECORD TLF.                     FILE IS "TLYYMMDD" ENTRY-SEQUENCED.    !01611
02 HEAD               TYPE *.                                          !01612
02 AUTH               TYPE *.                                          !01613
key "TR" is head.term.                                                 !01614
key "CR" is head.crd.                                                  !01615
END                                                                    !01616
                                                                       !01617
                                                                       !01617E00
                                                                       !01620
                                                                       !01620E00
?page "TLF-EXTR-POSITIONS-FRMT-2"
?section TLF-EXTR-POSITIONS-FRMT-2
                                                                       !01620E05
DEFINITION TLF-EXTR-POSITIONS-FRMT-2.                                  !01620E06
02 HEAD               TYPE *.                                          !01620E07
                                                                       !01620E08
*             The following fields are included in Terminal            !01620E09
*             Extract position record.  The Extract position           !01620E0A
*             record is the first record in the TLF file and is        !01620E0B
*             created by the Settlement process when the TLF is        !01620E0C
*             created.  The Extract position record is used by the     !01620E0D
*             Super Extract process to allow muliple extracts and      !01620E0E
*             re-extracts of the TLF file.                             !01620E0F
*             The Extract position record contains 00 in               !01620E0G
*             the REC-TYP field in the TLF header.                     !01620E0H
*                                                                      !01620E0I
                                                                       !01620E0J
*                                                                      !01620E0K
*             A value one less than the number of partial              !01620E0L
*             extracts that have been performed on the TLF             !01620E0M
*             file.  This value will be used to access the             !01620E0N
*             last entry in the EXTR-POSITIONS array of                !01620E0O
*             extract position markers that has been filled.           !01620E0P
*                                                                      !01620E0Q
                                                                       !01620E0R
02  PARTIAL-CNT                    TYPE BINARY 16.                     !01620E0S
                                                                       !01620E0T
*                                                                      !01620E0U
*             The values in the following fields are used to           !01620E0V
*             hold the location of the last record extracted           !01620E0W
*             in the corresponding partial extract.  Up to 100         !01620E0X
*             partial extracts can be tracked in a given TLF file.     !01620E0Y
*                                                                      !01620E0Z
                                                                       !01620E10
02  EXTR-POSITIONS-FRMT-2          OCCURS 100 TIMES.                   !01620E11
                                                                       !01620E12
*                                                                      !01620E13
*             The format 2 file relative byte address of the           !01620E14
*             beginning of the TLF data block that contained           !01620E15
*             the last TLF record extracted in the corresponding       !01620E16
*             partial extract.                                         !01620E17
*                                                                      !01620E18
                                                                       !01620E19
    04  RBA-FRMT-2                 TYPE BINARY 64.                     !01620E1A
                                                                       !01620E1B
*                                                                      !01620E1C
*             The number of the record in the block of the last        !01620E1D
*             TLF record extracted in the corresponding partial        !01620E1E
*             extract.                                                 !01620E1F
*                                                                      !01620E1G
                                                                       !01620E1H
    04  BLK-REC-CNT                TYPE BINARY 16.                     !01620E1I
                                                                       !01620E1J
                                                                       !01620E1K
*                                                                      !01620E1L
*              For a partitioned TLF log file, this field contains     !01620E1M
*              the number of the partition within the TLF file that    !01620E1N
*              contained the last TLF record extracted in the          !01620E1O
*              in the corresponding partial extract.                   !01620E1P
*                                                                      !01620E1Q
    04  PART-NUM                   TYPE BINARY 16.                     !01620E1R
                                                                       !01620E1S
                                                                       !01620E1T
*                                                                      !01620E1U
*             This field is not used.                                  !01620E1V
*                                                                      !01620E1W
                                                                       !01620E1X
02  USER-FLD10                     PIC X(20).                          !01620E1Y
END                                                                    !01620E1Z
                                                                       !01620E20
?NOTAL
                                                                       !01620E23
?page "TLF-COB-BUF"
?section TLF-COB-BUF"
                                                                       !01620E28
                                                                       !01625
DEFINITION TLF-COB-BUF.                                                !01626
*                                                                     !!01627
*             This definition is used by COBOL reports and perusal    !!01628
*             programs to process the multiple TLF record definitions.!!01629
*                                                                     !!01630
02 TLF-AUTH-BUF.                                                       !01631
  04 HEAD                  TYPE *.                                     !01632
  04 TLF-AUTH              TYPE AUTH.                                  !01633
  04 AUTH-BUF              PIC X(3598).                                !01634
02 TLF-TERM-SETL-BUF REDEFINES TLF-AUTH-BUF.                           !01635
  04 TLF-TERM-SETL         TYPE TLF-TERM-SETL.                         !01636
  04 TERM-SETL-BUF         PIC X(3630).                                !01637
02 TLF-TERM-CASH-BUF REDEFINES TLF-AUTH-BUF.                           !01638
  04 TLF-TERM-CASH         TYPE TLF-TERM-CASH.                         !01639
  04 TERM-CASH-BUF         PIC X(3940).                                !01640
02 TLF-SETL-TTL-BUF  REDEFINES TLF-AUTH-BUF.                           !01641
  04 TLF-SETL-TTL          TYPE TLF-SETL-TTL.                          !01642
  04 SETL-TTL-BUF          PIC X(3906).                                !01643
END                                                                    !01644
                                                                       !01645
?TAL =atddl_atddltal
                                                                       !01645C02
