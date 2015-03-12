**FIX2.24  11/18/04  DDLGSVHX6001 DDL    PS60DDL  PS08223  A                 ***
!*SEQ2.05  04/05/02  DDLGSVHX6000 DDL    PS60DDL                               !
?page "header and modification history"
**********************************************************************!!00003
*                                                                    *!!00004
*                        BASE24-stored value                         *!!00005
*                        -------------------                         *!!00006
*                                                                    *!!00007
*                  Stored Value History Extract DDL                  *!!00008
*                                                                    *!!00009
*                    Proprietary Software Product                    *!!00010
*                                                                    *!!00011
*                         ACI Worldwide Inc.                         *!!00012
*                       330 South 108th Avenue                       *!!00013
*                       Omaha, Nebraska  68154                       *!!00014
*                           (402) 390-7600                           *!!00015
*                                                                    *!!00016
*    Copyright by ACI Worldwide Inc. 2002                            *!!00017
*                                                                    *!!00018
*    All Rights Reserved.  No part of this document may be           *!!00019
*    reproduced in any manner without the prior written consent of   *!!00020
*    ACI Worldwide Inc.  This material is a trade secret and its     *!!00021
*    confidentiality is strictly maintained.  Use of any copyright   *!!00022
*    notice does not imply unrestricted or public access to these    *!!00023
*    materials.                                                      *!!00024
*                                                                    *!!00025
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      *!!00026
*                                                                    *!!00027
**********************************************************************!!00028
                                                                       !00029
?page
* Record of Changes:                                                  !!00032
*                                                                     !!00033
* Date        Person/Emp #                                            !!00034
* ---------   ------------                                            !!00035
* 15AUG2000   JEK/2070                                                !!00036
* Symptom:    Stored Value Enhancement                                !!00037
* Problem:    None                                                    !!00038
* Fix:        Initial Release                                         !!00039
* Dependency: None                                                    !!00040
* Reference:  WO #000307-42                                           !!00041
                                                                       !00042
*                                                                    !!!00043
* 04OCT2000   SCR/2072                                               !!!00044
* Symptom:    POS Stored Value 5.3 Uplift                            !!!00045
* Problem:    None.                                                  !!!00046
* Fix:        Uplift POS Stored Value enhancement from 5.1.2 to 5.3  !!!00047
* Dependency: None.                                                  !!!00048
* Reference:  WO #001018-41                                          !!!00049
                                                                       !00049A00
                                                                       !00049A01
* 15OCT2004   koeppenk                                                 !00049A02
* Symptom:    Stored Value Dormancy/Escheatment 6.0 Uplift             !00049A03
* Problem:    None.                                                    !00049A04
* Fix:        Added a new Alternate Key, ALTKEY4 that includes a new   !00049A05
*             ACCOUNT NUMBER field, also added a new 30 byte user      !00049A06
*             field for future enhancements.  Added new BDM,           !00049A07
*             Dormancy, and Escheatment values for MSG-TYP field.      !00049A08
* Dependency: Apply fix to DDLGSVHX and re-make SVHFXS.                !00049A09
*             Refer to BA60UD08.SCNSVDE for a complete listing of      !00049A0A
*             dependencies.                                            !00049A0B
* Reference:  WO #020715-15                                            !00049A0C
                                                                       !00049A0D
                                                                       !00050
                                                                       !00051
?PAGE "SVHX - Stored Value History Extract "
?SECTION SVHX
                                                                       !00056
DEFINITION SVHX.                                                       !00057
                                                                       !00058
02  PRIKEY.                                                            !00059
                                                                       !00060
*                                                                     !!00061
*       The financial institution associated with the                 !!00062
*       customer who initiated the transaction.                       !!00063
*       This field is left-justified, blank-filled.                   !!00064
*                                                                     !!00065
    04  FIID            PIC X(04).                                     !00066
                                                                       !00067
*                                                                     !!00068
*       The card number (PAN) identifying the card (left-             !!00069
*       justified, blank-filled).  This field contains the card       !!00070
*       number carried in Track 2 of the card.  BASE24                !!00071
*       currently supports a 19-digit maximum PAN length.             !!00072
*                                                                     !!00073
    04  CARD-NUM        PIC X(19).                                     !00074
                                                                       !00075
*                                                                     !!00076
*       The date and time the record was logged. The value in         !!00077
*       this field is generated via a call to Tandem's                !!00078
*       JULIANTIMESTAMP utility.                                      !!00079
*                                                                     !!00080
    04  TRAN-DAT-TIM    PIC X(19).                                     !00081
                                                                       !00082
02  ALTKEY1.                                                           !00083
                                                                       !00084
*                                                                     !!00085
*       The financial institution associated with the                 !!00086
*       customer who initiated the transaction.                       !!00087
*       This field is left-justified, blank-filled.                   !!00088
*                                                                     !!00089
    04  FIID            PIC X(04).                                     !00090
                                                                       !00091
*                                                                     !!00092
*       The card number (PAN) identifying the card (left-             !!00093
*       justified, blank-filled).  This field contains the card       !!00094
*       number carried in Track 2 of the card.  BASE24                !!00095
*       currently supports a 19-digit maximum PAN length.             !!00096
*                                                                     !!00097
    04  CARD-NUM        PIC X(19).                                     !00098
                                                                       !00099
*                                                                     !!00100
*        A code indentifying the type of transaction.  Valid          !!00101
*        values are:                                                  !!00102
*                                                                     !!00103
*        10 = Normal purchase                                         !!00104
*        11 = Preauthorization purchase                               !!00105
*        12 = Preauthorization purchase completion                    !!00106
*        13 = Mail/phone order                                        !!00107
*        14 = Merchandise return                                      !!00108
*        15 = Cash advance                                            !!00109
*        16 = Card verification                                       !!00110
*        17 = Balance inquiry                                         !!00111
*        18 = Purchase with cash back                                 !!00112
*        19 = Check verification                                      !!00113
*        20 = Check guarantee                                         !!00114
*        21 = Purchase adjustment                                     !!00115
*        22 = Adjustment - merchandise return                         !!00116
*        23 = Adjustment - cash advance                               !!00117
*        24 = Adjustment - purchase with cash back                    !!00118
*        25 = Stored Value card activation                            !!00119
*        26 = Stored Value additional card activation                 !!00120
*        27 = Stored Value replenishment transaction                  !!00121
*        28 = Stored Value full redemption                            !!00122
*                                                                     !!00123
     04  TRAN-CDE        PIC X(2).                                     !00124
                                                                       !00125
*                                                                     !!00126
*       The date and time the record was logged. The value in         !!00127
*       this field is generated via a call to Tandem's                !!00128
*       JULIANTIMESTAMP utility.                                      !!00129
*                                                                     !!00130
    04  TRAN-DAT-TIM     PIC X(19).                                    !00131
                                                                       !00132
02  ALTKEY2.                                                           !00133
                                                                       !00134
*                                                                     !!00135
*       The financial institution associated with the                 !!00136
*       customer who initiated the transaction.                       !!00137
*       This field is left-justified, blank-filled.                   !!00138
*                                                                     !!00139
    04  FIID            PIC X(04).                                     !00140
                                                                       !00141
*                                                                     !!00142
*       An identifier for the retailer or merchant that owns or       !!00143
*       operates the terminal at which this transaction               !!00144
*       originated.                                                   !!00145
*                                                                     !!00146
    04  RETL-ID         PIC X(19).                                     !00147
                                                                       !00148
*                                                                     !!00149
*       The date and time the record was logged. The value in         !!00150
*       this field is generated via a call to Tandem's                !!00151
*       JULIANTIMESTAMP utility.                                      !!00152
*                                                                     !!00153
    04  TRAN-DAT-TIM     PIC X(19).                                    !00154
                                                                       !00155
02  ALTKEY3.                                                           !00156
                                                                       !00157
*                                                                     !!00158
*       The financial institution associated with the                 !!00159
*       customer who initiated the transaction.                       !!00160
*       This field is left-justified, blank-filled.                   !!00161
*                                                                     !!00162
    04  FIID            PIC X(04).                                     !00163
                                                                       !00164
*                                                                     !!00165
*       An identifier for the retailer or merchant that owns or       !!00166
*       operates the terminal at which this transaction               !!00167
*       originated.                                                   !!00168
*                                                                     !!00169
    04  RETL-ID         PIC X(19).                                     !00170
                                                                       !00171
*                                                                     !!00172
*       A unique identifier, terminal ID, for the terminal,           !!00173
*       which is used to access the appropriate PTDF record.          !!00174
*       This field contains the network symbolic station name.        !!00175
*                                                                     !!00176
    04  TERM-ID         PIC X(16).                                     !00177
                                                                       !00178
*                                                                     !!00179
*       The date and time the record was logged. The value in         !!00180
*       this field is generated via a call to Tandem's                !!00181
*       JULIANTIMESTAMP utility.                                      !!00182
*                                                                     !!00183
    04  TRAN-DAT-TIM     PIC X(19).                                    !00184
                                                                       !00184A00
02  ALTKEY4.                                                           !00184A01
                                                                       !00184A02
*                                                                      !00184A03
*       The financial institution associated with the                  !00184A04
*       customer who initiated the transaction.                        !00184A05
*       This field is left-justified, blank-filled.                    !00184A06
*                                                                      !00184A07
    04  FIID             PIC X(04).                                    !00184A08
*                                                                      !00184A09
*       The PBF account number associated with the Stored Value        !00184A0A
*       card. It is left-justified and blank filled.  Currently        !00184A0B
*       BASE24 supports a maximum 19 digit account number.             !00184A0C
*                                                                      !00184A0D
    04  NUM              TYPE ACCT.                                    !00184A0E
*                                                                      !00184A0F
*       The date and time the record was logged. The value in          !00184A0G
*       this field is generated via a call to Tandem's                 !00184A0H
*       JULIANTIMESTAMP utility.                                       !00184A0I
*                                                                      !00184A0J
    04  TRAN-DAT-TIM    PIC X(19).                                     !00184A0K
                                                                       !00184A0L
                                                                       !00185
02  DETL.                                                              !00186
                                                                       !00187
*                                                                     !!00188
*       The amount of the transaction, in whole and fractional        !!00189
*       currency units (e.g., dollars and cents).                     !!00190
*                                                                     !!00191
    04  AMT             PIC X(19).                                     !00192
                                                                       !00193
*                                                                     !!00194
*       The debit/credit indicator for the amount of the transaction. !!00195
*                                                                     !!00196
    04  DB-CR-IND       PIC X(1).                                      !00197
                                                                       !00198
*                                                                     !!00199
*       A code identifying special transactions.  Valid               !!00200
*       values are:                                                   !!00201
*                                                                     !!00202
*        A = ADJUSTMENT                                               !!00203
                                                                       !00203A00
*        B = BULK DATABASE MAINTENANCE                                 !00203A01
                                                                       !00203A02
*        C = CHARGEBACK                                               !!00204
                                                                       !00204A00
*        D = DORMANCY                                                  !00204A01
*        E = ESCHEATMENT                                               !00204A02
                                                                       !00204A03
*        F = FORCED POST                                              !!00205
*        R = REVERSAL                                                 !!00206
*        S = SUSPECT                                                  !!00207
*        U = FILE UPDATE/TRANSFER ADVICE(HYPERCOM TRANSACTION)        !!00208
*                                                                     !!00209
    04  MSG-TYP         PIC X(1).                                      !00210
                                                                       !00211
*                                                                     !!00212
*       The response code for the transaction.  For a listing         !!00213
*       of the valid codes, refer to the BASE24-pos Transaction       !!00214
*       Processing Manual.                                            !!00215
*                                                                     !!00216
    04  RESP-CDE        PIC X(3).                                      !00217
                                                                       !00218
*                                                                     !!00219
*       The member number, or card sequence number, for the           !!00220
*       card.  When multiple cards are issued with the same           !!00221
*       card number, the value in this field distinguishes            !!00222
*       between the cards.  If an institution is not using            !!00223
*       member numbers, the value in this field will be 000.          !!00224
*                                                                     !!00225
    04  MBR-NUM         PIC X(03).                                     !00226
                                                                       !00227
*                                                                     !!00228
*       The reference number.  This number is a unique                !!00229
*       identifier for each transaction in the file.                  !!00230
*       The key letters "B24" in the first three                      !!00231
*       positions are reserved for BASE24 use.                        !!00232
*       When transactions are written to the SVHF by                  !!00233
*       BASE24 they will be identified with a                         !!00234
*       reference number beginning with "B24",                        !!00235
*       followed by a two-byte product identifier.                    !!00236
*       This field is left-justified, blank-filled.                   !!00237
*                                                                     !!00238
    04  REF-NUM         PIC X(12).                                     !00239
                                                                       !00240
*                                                                     !!00241
*       The balance of the stored value card after the current        !!00242
*       transaction, in whole and fractional currency units           !!00243
*       (e.g., dollars and cents).                                    !!00244
*                                                                     !!00245
    04  BAL             PIC X(19).                                     !00246
                                                                       !00246A00
*                                                                      !00246A01
*       Reserved for future use by ACI.                                !00246A02
*                                                                      !00246A03
    04  USER-FLD1       PIC X(30).                                     !00246A04
                                                                       !00246A05
END                                                                    !00247
