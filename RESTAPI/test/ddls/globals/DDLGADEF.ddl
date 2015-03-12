**FIX2.23  11/10/03  DDLGADEF6003 DDL    AT60DEFS AT07175  C                 ***
**FIX2.23  02/06/03  DDLGADEF6002 DDL    AT60DEFS AT06225  B                 ***
**FIX2.14  03/21/01  DDLGADEF6001 DDL    AT60DEFS AT04326  A                 ***
!*SEQ2.00  01/03/01  DDLGADEF6000 DDL    AT60DEFS                              !
?page  "ADEFS - BASE24-atm Standard Definitions"
?section adefs-history
**********************************************************************!!00005
*                                                                    *!!00006
*                             BASE24-atm                             *!!00007
*                             ----------                             *!!00008
*                                                                    *!!00009
*                     DDL Standard Definitions                       *!!00010
*                                                                    *!!00011
*                   Proprietary Software Product                     *!!00012
*                                                                    *!!00013
*                         ACI Worldwide Inc.                         *!!00014
*                       330 South 108th Avenue                       *!!00015
*                       Omaha, Nebraska  68154                       *!!00016
*                           (402) 390-7600                           *!!00017
*                                                                    *!!00018
*    Copyright by ACI Worldwide Inc. 2000                            *!!00019
*                                                                    *!!00020
*    All Rights Reserved.  No part of this document may be           *!!00021
*    reproduced in any manner without the prior written consent of   *!!00022
*    ACI Worldwide Inc.  This material is a trade secret and its     *!!00023
*    confidentiality is strictly maintained.  Use of any copyright   *!!00024
*    notice does not imply unrestricted or public access to these    *!!00025
*    materials.                                                      *!!00026
*                                                                    *!!00027
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      *!!00028
*                                                                    *!!00029
**********************************************************************!!00030
*                                                                     !!00031
* Record of Changes:                                                  !!00032
*                                                                     !!00033
* Date        Person/Emp #                                            !!00034
* ---------   ------------                                            !!00035
********************************************************************* !!00036
*             Release 6.0                                           * !!00037
********************************************************************* !!00038
* 30NOV2000   jfu/543                                                 !!00039
* Symptom:    Release 6.0 Enhancements                                !!00040
* Problem:    None.                                                   !!00041
* Fix:        Initial Release.                                        !!00042
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00043
*             CUSTMACS flags, and run MAKE.                           !!00044
* Reference:  WO #990108-1 (TDF Expansion)                            !!00045
                                                                       !00045A00
* 20MAR2001   AMK/1964 JJD/615                                         !00045A01
* Symptom:    Uplift the DialUp Device Handlers to 5.3                 !00045A02
* Problem:    None.                                                    !00045A03
* Fix:        Added support for dial-up ATMs.                          !00045A04
*             Added a definition for DIAL-UP.                          !00045A05
* Dependency: New subvolume AT53PN50 (includes atpn50fm, atpn50mm,     !00045A06
*             n50dlug, n50dlum, n50dlus). New files ddlfadcf,          !00045A07
*             n50dluds and n50updt. Apply fixes to atddlm, atddlmm,    !00045A08
*             atmfm, atmmm, atn50m, atn50mm, at5070, cnfg5070,         !00045A09
*             cnn50doc, custmacs, ddlftdf, flgsdoc, n50g, n50m, n50s,  !00045A0A
*             rqt5080s, scrn5080 and remake.                           !00045A0B
* Reference:  None.  (retro of AT5P112 from WO #991123-1)              !00045A0C
                                                                       !00045A0D
                                                                       !00045B00
* 29JAN2003   EDA/2121                                                 !00045B01
* Symptom:    Uplift Merchant Banking Center to Release 6.0            !00045B02
* Problem:    None.                                                    !00045B03
* Fix:        Added a definition hopper-rcd.                           !00045B04
* Dependency: Apply fixes to DDLGADEF and run MAKE.                    !00045B05
*             Refer to BA60UD06.SCNMBC for a complete list of          !00045B06
*             dependencies.                                            !00045B07
* Reference:  WO #001008-01                                            !00045B08
                                                                       !00045B09
                                                                       !00045C00
* 15OCT2003   CLR/451                                                  !00045C01
* Symptom:    Forced Cutover Audit Enhancement                         !00045C02
* Problem:    None.                                                    !00045C03
* Fix:        Added a definition atddl-fca-data.                       !00045C04
* Dependency: Apply fixes to DDLGADEF and run MAKE.                    !00045C05
*             Refer to BA60UD07.SCNFCA for a complete list of          !00045C06
*             dependencies.                                            !00045C07
* Reference:  WO #020716-04                                            !00045C08
                                                                       !00045C09
********************************************************************* !!00046
                                                                       !00047
?section adefs-deflist
?deflist
********************************************************************* !!00052
*              BASE24-atm DDL Standard Definitions                  * !!00053
********************************************************************* !!00054
*                                                                   * !!00055
*  These are definitions for certain data structures which occur    * !!00056
*  repeatedly throughout the BASE24 DDLs.  These fields are used    * !!00057
*  in DDL structures subsequently as " TYPE *" when the field name   *!!00058
*  matches the type definition, or as " TYPE <def name>" where the   *!!00059
*  field name does not match the definition name.                   * !!00060
*                                                                   * !!00061
*  When adding a NEW DEF, it is to be placed in alphabetical order  * !!00062
*  and the below list updated accordingly.                          * !!00063
*                                                                   * !!00064
*  DEF NAME             DATE ADDED            DATE LAST MODIFIED    * !!00065
*  -------------------  --------------------  --------------------- * !!00066
*  atd-stm              Release 6.0                                 * !!00067
                                                                       !00067A00
*  dial-up              Release 6.0                                 *  !00067A01
                                                                       !00067A02
                                                                       !00067C00
*  atdd1-fca-data       Release 6.0                                    !00067C01
*      (NOTE: ATDD1-FCA-DATA def is intentionally at the bottom of  *  !00067C02
*       the output due to the other def structures needed)          *  !00067C03
                                                                       !00067C04
*  hopper               Release 6.0                                 * !!00068
*  hopper-cda           Release 6.0                                 * !!00069
*  intertransaction     Release 6.0                                 * !!00070
*                                                                   * !!00071
********************************************************************* !!00072
                                                                       !00073
?comments
                                                                       !00076
?section atd-stm
?setsection atd-stm
                                                                       !00081
*             The following fields from the STM are required for      !!00082
*             reversal processing.                                    !!00083
*                                                                     !!00084
*             This data is only needed by the device handlers when the!!00085
*             last message is no longer in extended memory.           !!00086
*                                                                     !!00087
*             For further information about these fields from the     !!00088
*             STM, please refer to BA60DDL.DDLGSTM.                   !!00089
                                                                       !00090
DEFINITION ATD-STM.                                                    !00091
                                                                       !00092
     04 TRAN-CDE                        PIC X(2).                      !00093
                                                                       !00094
     04 FROM-ACCT-TYP                   PIC X(2).                      !00095
                                                                       !00096
     04 TO-ACCT-TYP                     PIC X(2).                      !00097
                                                                       !00098
     04 RTE.                                                           !00099
                                                                       !00100
        06 RESPONDER                    PIC X.                         !00101
        06 USER-FLD1-RTE                PIC X.                         !00102
                                                                       !00103
     04 CRD-LN                          TYPE LN.                       !00104
                                                                       !00105
     04 RCV-INST-ID-NUM                 TYPE ID-NUM.                   !00106
                                                                       !00107
     04 USER-FLD1                       PIC X.                         !00108
                                                                       !00109
     04 CRD-FIID                        TYPE FIID.                     !00110
                                                                       !00111
     04 TRAN-DAT                        TYPE DAT.                      !00112
                                                                       !00113
     04 TRAN-TIM                        TYPE TIM.                      !00114
                                                                       !00115
     04 POST-DAT                        TYPE DAT.                      !00116
                                                                       !00117
     04 ACQ-ICHG-SETL-DAT               TYPE DAT.                      !00118
                                                                       !00119
     04 ISS-ICHG-SETL-DAT               TYPE DAT.                      !00120
                                                                       !00121
     04 SEQ-NUM                         PIC X(12).                     !00122
                                                                       !00123
     04 RQST.                                                          !00124
                                                                       !00125
        06 TRACK2                       PIC X(40).                     !00126
                                                                       !00127
        06 PIN-OFST                     PIC X(16).                     !00128
                                                                       !00129
        06 MBR-NUM                      TYPE *.                        !00130
                                                                       !00131
        06 USER-FLD1-RQST               PIC X.                         !00132
                                                                       !00133
        06 FROM-ACCT                    TYPE ACCT.                     !00134
                                                                       !00135
        06 TO-ACCT                      TYPE ACCT.                     !00136
                                                                       !00137
        06 AMT-1                        TYPE BINARY 64.                !00138
                                                                       !00139
        06 AMT-2                        TYPE BINARY 64.                !00140
                                                                       !00141
        06 DEP-BAL-CR                   TYPE BINARY 32.                !00142
                                                                       !00143
        06 COMPL-REQ                    PIC X.                         !00144
                                                                       !00145
        06 RESP                         PIC X(3).                      !00146
                                                                       !00147
        06 ORIG.                                                       !00148
                                                                       !00149
           08 SEQ-NUM                   PIC X(12).                     !00150
                                                                       !00151
           08 TRAN-DAT                  PIC X(4).                      !00152
                                                                       !00153
           08 TRAN-TIM                  TYPE TIM.                      !00154
                                                                       !00155
           08 B24-POST-DAT              PIC X(4).                      !00156
                                                                       !00157
        06 TRACE-NUM                    PIC 9(6).                      !00158
                                                                       !00159
        06 PRI-DEST                     TYPE SYM-NAME.                 !00160
                                                                       !00161
        06 ALT-DEST                     TYPE SYM-NAME.                 !00162
                                                                       !00163
        06 AUTH-DEST                    TYPE SYM-NAME.                 !00164
                                                                       !00165
        06 DEST-ORDER                   PIC X.                         !00166
                                                                       !00167
        06 USER-FLD2-RQST               PIC X.                         !00168
                                                                       !00169
     04 CRD-ACCPT-ID-NUM                TYPE ID-NUM.                   !00170
                                                                       !00171
     04 FRWD-INST-ID-NUM                TYPE ID-NUM.                   !00172
                                                                       !00173
     04 CRD-ISS-ID-NUM                  TYPE ID-NUM.                   !00174
                                                                       !00175
     04 TRACK3                          PIC X(107).                    !00176
                                                                       !00177
     04 AUTH-ID-RESP                    PIC X(6).                      !00178
                                                                       !00179
END                                                                    !00180
                                                                       !00181
                                                                       !00181A00
?section dial-up
?setsection dial-up
                                                                       !00181A05
*             The following fields contain the Dial-Up information     !00181A06
*             used by the Dial-Up terminals.                           !00181A07
                                                                       !00181A08
DEFINITION DIAL-UP.                                                    !00181A09
                                                                       !00181A0A
*                                                                      !00181A0B
*             Message type from the Dial-Up Header.                    !00181A0C
*                                                                      !00181A0D
     04 MSG-TYP                PIC X(2).                               !00181A0E
                                                                       !00181A0F
*                                                                      !00181A0G
*             NEFS station name that the request came in on and that   !00181A0H
*             the response needs to be sent back on.                   !00181A0I
*                                                                      !00181A0J
     04 SRC-STA-NAM            PIC X(16).                              !00181A0K
                                                                       !00181A0L
*                                                                      !00181A0M
*             This field stores the sequence number (MSG^TRANS) used   !00181A0N
*             by the Nucleus for a response message.                   !00181A0O
*                                                                      !00181A0P
     04 SEQNUM                 PIC X(6).                               !00181A0Q
                                                                       !00181A0R
*                                                                      !00181A0S
*             Timer type associated with the last Peak Load Timer that !00181A0T
*             expired.                                                 !00181A0U
*                                                                      !00181A0V
     04 PEAK-LOAD-TIMER-TYP    TYPE BINARY 16.                         !00181A0W
                                                                       !00181A0X
*                                                                      !00181A0Y
*             Command Pending Flag.  This will indicate the number of  !00181A0Z
*             commands that are pending in the queue.                  !00181A10
*                                                                      !00181A11
     04 CMD-PENDING            TYPE BINARY 16.                         !00181A12
                                                                       !00181A13
*                                                                      !00181A14
*             Flag indicating if a buffered command has been           !00181A15
*             processed.                                               !00181A16
*                                                                      !00181A17
     04 CMD-SENT               PIC X.                                  !00181A18
                                                                       !00181A19
*                                                                      !00181A1A
*             Flag indicating if the current message is an I'm Alive   !00181A1B
*             message.                                                 !00181A1C
*                                                                      !00181A1D
     04 IM-ALIVE               PIC X.                                  !00181A1E
                                                                       !00181A1F
*                                                                      !00181A1G
*             Flag indicating under what conditions a transaction      !00181A1H
*             request was received.                                    !00181A1I
*                                                                      !00181A1J
     04 TRAN-RCVD              PIC X.                                  !00181A1K
                                                                       !00181A1L
*                                                                      !00181A1M
*             Field contains the active command from the ADCF.         !00181A1N
*                                                                      !00181A1O
     04 SAV.                                                           !00181A1P
                                                                       !00181A1Q
*                                                                      !00181A1R
*             Name of the command from the 9500 command string.        !00181A1S
*                                                                      !00181A1T
        06 CMD-NAM             PIC X(15).                              !00181A1U
                                                                       !00181A1V
*                                                                      !00181A1W
*             Command options from the 9500 command string.            !00181A1X
*                                                                      !00181A1Y
        06 CMD-OPT             PIC X(8).                               !00181A1Z
                                                                       !00181A20
END                                                                    !00181A21
?section hopper
?setsection hopper
                                                                       !00181A26
                                                                       !00186
*             The following fields contain the content, cash value,   !!00187
*             and number of bills for each hopper used by the         !!00188
*             terminal.                                               !!00189
                                                                       !00190
DEFINITION HOPPER.                                                     !00191
                                                                       !00192
*             The first set of HOPR fields always contains            !!00193
*             information on the lowest bill denomination; the next   !!00194
*             set of HOPR fields always contains information on the   !!00195
*             next higher bill denomination, and so on.               !!00196
*                                                                     !!00197
*             Terminal type determines the number of hoppers          !!00198
*             available in the terminal, and thus, the number of      !!00199
*             occurrences required.                                   !!00200
*                                                                     !!00201
*             NOTE:  For various system displays and when logging     !!00202
*             terminal totals to the TLF, the hopper bill counts are  !!00203
*             converted to monetary amount figures by multiplying the !!00204
*             bill counts by the corresponding hopper bill values.    !!00205
                                                                       !00206
*             Indicates the contents of the hopper.  Valid values are:!!00207
*                                                                     !!00208
*             00    = Bills in the hopper (default value)             !!00209
*             01    = Coins in the hopper.  Note that coins in the    !!00210
*                     hopper are only supported by the IBM 4730 device!!00211
*                     handler and the Diebold 1000 Device Handler with!!00212
*                     the Self-Service Banking (SSB) add-on product   !!00213
*                     installed.                                      !!00214
*             02    = Traveler's cheques in the hopper.               !!00215
*                                                                     !!00216
*             03-10 = Cash value/non-value items in the hopper.  Cash !!00217
*                     value items will have a value from 03-10 in this!!00218
*                     field and a non-zero value in the bill value    !!00219
*                     field.  Non-value items will have a value from  !!00220
*                     03-10 in this field and a zero value in the bill!!00221
*                     value field.                                    !!00222
                                                                       !00223
     04 CONTENTS                        PIC X(2).                      !00224
                                                                       !00225
*             The denomination of the bills, the cash value of the    !!00226
*             non-currency items in the hopper or the denomination of !!00227
*             the traveler's cheques.  This may contain a value of    !!00228
*             zero if the hopper contains non-value items.            !!00229
                                                                       !00230
     04 BILL-VAL                        TYPE BINARY 32.                !00231
                                                                       !00232
*             The standard number of bills, cash value items,         !!00233
*             non-value items or traveler's cheques used to replenish !!00234
*             the hopper.  The use of a standard replenishment amount !!00235
*             is valid only for cartridge dispensers where the        !!00236
*             hopper is replenished by replacing the cartridge.       !!00237
                                                                       !00238
     04 STD-BEG-CASH                    TYPE BINARY 32.                !00239
                                                                       !00240
*             The number of bills, cash value items, non-value items  !!00241
*             or traveler's cheques in the hopper at the beginning    !!00242
*             of the terminal's current balancing period.             !!00243
                                                                       !00244
     04 BEG-CASH                        TYPE BINARY 32.                !00245
                                                                       !00246
*             The number of bills, cash value items, non-value items  !!00247
*             or traveler's cheques added to the hopper via mid-point !!00248
*             adjustments during the current balancing period.        !!00249
                                                                       !00250
     04 CASH-INCR                       TYPE BINARY 32.                !00251
                                                                       !00252
*             The number of bills, cash value items, non-value items  !!00253
*             or traveler's cheques removed from the hopper via       !!00254
*             mid-point adjustments during the current balancing      !!00255
*             period.                                                 !!00256
                                                                       !00257
     04 CASH-DECR                       TYPE BINARY 32.                !00258
                                                                       !00259
*             The number of bills, cash value items, non-value items  !!00260
*             or traveler's cheques dispensed from the hopper or      !!00261
*             removed from the hopper for customer withdrawals or     !!00262
*             non-currency dispense transactions during the current   !!00263
*             balancing period.                                       !!00264
                                                                       !00265
     04 CASH-OUT                        TYPE BINARY 32.                !00266
                                                                       !00267
*             The current number of bills, cash value items, non-value!!00268
*             items or traveler's cheques in the hopper.              !!00269
                                                                       !00270
     04 END-CASH                        TYPE BINARY 32.                !00271
                                                                       !00272
*             The type of currency in the hopper.                     !!00273
*             Refer to the "Codes for the Representation of Currencies!!00274
*             and Funds ISO", 4217-1981 to determine the proper code. !!00275
*             Example:  840 (The U.S. currency code).                 !!00276
                                                                       !00277
     04 CRNCY-CDE                       TYPE *.                        !00278
                                                                       !00279
*             This field is not used.                                 !!00280
                                                                       !00281
     04 USER-FLD-HOPPER                 PIC X.                         !00282
                                                                       !00283
END                                                                    !00284
                                                                       !00285
?section hopper-cda
?setsection hopper-cda
                                                                       !00290
DEFINITION HOPPER-CDA.                                                 !00291
                                                                       !00292
*             Configurable Dispense Algorithm Enhancement.            !!00293
                                                                       !00294
*             These fields are used only when the DISP-ALGO field has !!00295
*             a value of 2.                                           !!00296
                                                                       !00297
*             Used by the terminal when performing a dispense         !!00298
*             function.  If the amount remaining to dispense is equal !!00299
*             to or greater than the threshold value, bills of that   !!00300
*             denomination will be used.  Each value threshold        !!00301
*             corresponds to a hopper defined in the HOPR field.      !!00302
*                                                                     !!00303
*             Valid Range:  1 - 99999999                              !!00304
                                                                       !00305
     04 STRT-DISP-AMT                   TYPE BINARY 32.                !00306
                                                                       !00307
*             Used by the terminal when performing a dispense         !!00308
*             function.  If the original amount to be dispensed is    !!00309
*             equal to or greater than the segregate threshold value, !!00310
*             as many bills as possible will be used of that          !!00311
*             denomination.  Each segregate threshold corresponds     !!00312
*             to a hopper defined in the HOPR field.                  !!00313
*                                                                     !!00314
*             Valid Range:  1 - 99999999                              !!00315
                                                                       !00316
     04 STOP-DISP-AMT                   TYPE BINARY 32.                !00317
                                                                       !00318
*             The maximum number of bills of the corresponding hopper !!00319
*             denomination which will be used in any one dispense     !!00320
*             operation.                                              !!00321
*                                                                     !!00322
*             Valid Range:  1 - 9999                                  !!00323
                                                                       !00324
     04 MAX-BILLS                       TYPE BINARY 16.                !00325
                                                                       !00326
*             Used by the terminal when performing a dispense         !!00327
*             function.  If the original amount to be dispensed is    !!00328
*             equal to or greater than the non-value threshold,       !!00329
*             one item will be dispensed from the non-value hopper.   !!00330
*             Each non-value threshold corresponds to a hopper        !!00331
*             defined in the HOPR field.                              !!00332
*                                                                     !!00333
*             Valid Range:  1 - 99999999                              !!00334
                                                                       !00335
     04 NON-VAL-DISP                    TYPE BINARY 32.                !00336
                                                                       !00337
END                                                                    !00338
                                                                       !00339
                                                                       !00339B00
?section hopper-rcd
?setsection hopper-rcd
                                                                       !00339B05
DEFINITION HOPPER-RCD.                                                 !00339B06
                                                                       !00339B07
*             The following fields contain the coin denomination,      !00339B08
*             number of coins in a roll and the number of rolls in     !00339B09
*             each RCD hopper used by the terminal.                    !00339B0A
*                                                                      !00339B0B
*                                                                      !00339B0C
*             NOTE:  For various system displays and when logging      !00339B0D
*             terminal totals to the TLF, the hopper roll counts       !00339B0E
*             are converted to monetary amount figures by multiplying  !00339B0F
*             the roll counts by the corresponding hopper coins in a   !00339B0G
*             roll and coin values.                                    !00339B0H
                                                                       !00339B0I
*             Indicates the contents of the hopper. Valid value:       !00339B0J
*             '11' = Coin rolls in the hopper (default value).         !00339B0K
                                                                       !00339B0L
     04 CONTENTS           PIC X(2).                                   !00339B0M
                                                                       !00339B0N
*             The denomination or the face value of the coin.          !00339B0O
                                                                       !00339B0P
     04 COIN-VAL           TYPE BINARY 32.                             !00339B0Q
                                                                       !00339B0R
*             The number of coins in a roll.                           !00339B0S
                                                                       !00339B0T
     04 COINS-IN-A-ROLL    TYPE BINARY 16.                             !00339B0U
                                                                       !00339B0V
*             The standard number of rolls used to replenish the RCD   !00339B0W
*             hopper.  The use of a standard replenishment number is   !00339B0X
*             valid only for cartridge RCD dispensers where the        !00339B0Y
*             hopper is replenished by replacing the RCD cartridge.    !00339B0Z
                                                                       !00339B0a
     04 STD-BEG-CASH       TYPE BINARY 32.                             !00339B0b
                                                                       !00339B0c
*             The number of rolls in the RCD hopper at the beginning   !00339B0d
*             of the terminal's current balancing period.              !00339B0e
                                                                       !00339B0f
     04 BEG-CASH            TYPE BINARY 32.                            !00339B0g
                                                                       !00339B0h
*             The number of rolls added to the RCD hopper via mid-     !00339B0i
*             point adjustments during the current balancing period.   !00339B0j
                                                                       !00339B0k
     04 CASH-INCR          TYPE BINARY 32.                             !00339B0l
                                                                       !00339B0m
*             The number of rolls removed from the RCD hopper via      !00339B0n
*             mid-point adjustments during the current balancing       !00339B0o
*             period.                                                  !00339B0p
                                                                       !00339B0q
     04 CASH-DECR          TYPE BINARY 32.                             !00339B0r
                                                                       !00339B0s
*             The number of rolls dispensed from the RCD hopper or     !00339B0t
*             removed from the RCD hopper for customer money exchanges !00339B0u
*             during the current balancing period.                     !00339B0v
                                                                       !00339B0w
     04 CASH-OUT           TYPE BINARY 32.                             !00339B0x
                                                                       !00339B0y
*             The current number of rolls in the RCD hopper.           !00339B0z
                                                                       !00339B10
     04 END-CASH           TYPE BINARY 32.                             !00339B11
                                                                       !00339B12
*             The type of currency in the RCD hopper.                  !00339B13
*                                                                      !00339B14
*             Refer to "Codes for the Representation of Currencies     !00339B15
*             and Funds ISO", 4217-1981 to determine the proper code.  !00339B16
*             Example:  840 (The U.S. currency code).                  !00339B17
                                                                       !00339B18
     04 CRNCY-CDE          TYPE CRNCY-CDE.                             !00339B19
                                                                       !00339B1A
*             This field is not used.                                  !00339B1B
                                                                       !00339B1C
     04 USER-FLD           PIC X.                                      !00339B1D
END                                                                    !00339B1E
                                                                       !00339B1F
?section intertransaction
?setsection intertransaction
                                                                       !00339B1K
                                                                       !00344
DEFINITION INTERTRANSACTION.                                           !00345
                                                                       !00346
*             The following fields define the processing parameters   !!00347
*             for intertransaction timers.                            !!00348
                                                                       !00349
*             The starting time of the workday peak usage             !!00350
*             window for this device.                                 !!00351
*                                                                     !!00352
*             Valid Range:  0000 - 2359 (The default value is 0000.)  !!00353
                                                                       !00354
     04 WRKDAY-STRT-PEAK-WINDOW        TYPE BINARY 16.                 !00355
                                                                       !00356
*             The ending time of the workday peak usage               !!00357
*             window for this device.                                 !!00358
*                                                                     !!00359
*             Valid Range:  0000 - 2359 (The default value is 0000.)  !!00360
                                                                       !00361
     04 WRKDAY-END-PEAK-WINDOW         TYPE BINARY 16.                 !00362
                                                                       !00363
*             The amount of time, in minutes, to use when setting     !!00364
*             the inactivity timer during the workday peak time.      !!00365
*             For peak inactivity timer processing to occur,          !!00366
*             this field must contain a value greater than zeroes     !!00367
*             when the WRKDAY-STRT-PEAK-WINDOW field and              !!00368
*             the WRKDAY-END-PEAK-WINDOW field both contain           !!00369
*             values greater than zeroes.                             !!00370
*                                                                     !!00371
*             Valid Range:  00 - 99.                                  !!00372
                                                                       !00372A00
*             Valid Range:  000 - 999.  (Dial-Up enabled terminals)    !00372A01
                                                                       !00372A02
                                                                       !00373
     04 WRKDAY-PEAK-INTERVAL           TYPE BINARY 16.                 !00374
                                                                       !00375
*             The starting time of the weekend/holiday peak           !!00376
*             usage window for this device.                           !!00377
*                                                                     !!00378
*             Valid Range:  0000 - 2359 (The default value is 0000.)  !!00379
                                                                       !00380
     04 WKND-STRT-PEAK-WINDOW          TYPE BINARY 16.                 !00381
                                                                       !00382
*             The ending time of the weekend/holiday peak             !!00383
*             usage window for this device.                           !!00384
*                                                                     !!00385
*             Valid Range:  0000 - 2359 (The default value is 0000.)  !!00386
                                                                       !00387
     04 WKND-END-PEAK-WINDOW           TYPE BINARY 16.                 !00388
                                                                       !00389
*             The amount of time, in minutes, to use when setting     !!00390
*             the inactivity timer during the weekend/holiday peak    !!00391
*             time.  For weekend/holiday peak inactivity timer        !!00392
*             processing to occur, this field must contain a value    !!00393
*             greater than zeroes when the WKND-STRT-PEAK-WINDOW      !!00394
*             field and the WNKD-END-PEAK-WINDOW field both contain   !!00395
*             values greater than zeroes.                             !!00396
*                                                                     !!00397
*             Valid Range:  00 - 99.                                  !!00398
                                                                       !00398A00
*             Valid Range:  000 - 999.  (Dial-Up enabled terminals)    !00398A01
                                                                       !00398A02
                                                                       !00399
     04 WKND-PEAK-INTERVAL             TYPE BINARY 16.                 !00400
                                                                       !00401
*             The amount of time, in minutes, to use when setting the !!00402
*             inactivity timer during the nonpeak time (i.e. not in   !!00403
*             either of the defined peak periods).                    !!00404
*                                                                     !!00405
*             Valid Range:  00 - 99.                                  !!00406
                                                                       !00406A00
*             Valid Range:  000 - 999.  (Dial-Up enabled terminals)    !00406A01
                                                                       !00406A02
                                                                       !00407
     04 NON-PEAK-INTERVAL              TYPE BINARY 16.                 !00408
                                                                       !00409
*             The number of consecutive time outs to allow before the !!00410
*             Device Handler process stops timing inactivity from this!!00411
*             device.  This field is required when workday or weekend/!!00412
*             holiday peak inactivity timer processing is configured. !!00413
*                                                                     !!00414
*             Valid Range:  00 - 99.                                  !!00415
                                                                       !00416
     04 TIMEOUTS-ALLWD                 TYPE BINARY 16.                 !00417
                                                                       !00418
END                                                                    !00419
                                                                       !00420
?section atdd1-fca-data
?setsection atdd1-fca-data
                                                                       !00420C04
*             The following fields contain the Forced Cutover Audit    !00420C05
*             information used by the Forced Cutover Audit extension   !00420C06
*             modules.                                                 !00420C07
                                                                       !00420C08
DEFINITION ATDD1-FCA-DATA.                                             !00420C09
                                                                       !00420C0A
*             Date (YYMMDD) and time (HHMM) the FCA-DATA fields are    !00420C0B
*             initialized.                                             !00420C0C
                                                                       !00420C0D
      04  DAT-TIM.                                                     !00420C0E
                                                                       !00420C0F
          06  DAT                      TYPE *.                         !00420C0G
          06  TIM                      PIC 9(4).                       !00420C0H
                                                                       !00420C0I
*             Refer to the individual field descriptions in the        !00420C0J
*             HOPPER definition.                                       !00420C0K
                                                                       !00420C0L
      04 HOPR                          TYPE HOPPER OCCURS 6 TIMES.     !00420C0M
                                                                       !00420C0N
*             Refer to the individual field descriptions in the        !00420C0O
*             ATDD1-CORE definition.                                   !00420C0P
                                                                       !00420C0Q
      04 NUM-DEP                       TYPE BINARY 16.                 !00420C0R
      04 NUM-CMRCL-DEP                 TYPE BINARY 16.                 !00420C0S
      04 NUM-PAY                       TYPE BINARY 16.                 !00420C0T
      04 NUM-MSG                       TYPE BINARY 16.                 !00420C0U
      04 CRDS-RET                      TYPE BINARY 16.                 !00420C0V
      04 NUM-CHK                       TYPE BINARY 16.                 !00420C0W
                                                                       !00420C0X
END                                                                    !00420C0Y
                                                                       !00420C0Z
?setsection
                                                                       !00420C0c
