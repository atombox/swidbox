**FIX2.28  06/26/08  DDLFDCCD6002 DDL    BA60DDL  BA0C129  B                 ***
**FIX2.28  01/24/08  DDLFDCCD6001 DDL    BA60DDL  BA0C034  A                 ***
!*SEQ2.08  10/15/07  DDLFDCCD6000 DDL    BA60DDL                               !
?page "DCCDREC - Dynamic Currency Conversion Data file"
?section dccd-history
**********************************************************************!!00005
*                                                                    *!!00006
*                               BASE24                               *!!00007
*                               ------                               *!!00008
*                                                                    *!!00009
*         DDL for the Dynamic Currency Conversion Data file          *!!00010
*                                                                    *!!00011
*                   Proprietary Software Product                     *!!00012
*                                                                    *!!00013
*                         ACI Worldwide, Inc.                        *!!00014
*                       330 South 108th Avenue                       *!!00015
*                       Omaha, Nebraska  68154                       *!!00016
*                           (402) 390-7600                           *!!00017
*                                                                    *!!00018
*    Copyright by ACI Worldwide, Inc. 2007                           *!!00019
*                                                                    *!!00020
*    All Rights Reserved.                                            *!!00021
*                                                                    *!!00022
**********************************************************************!!00023
*                                                                     !!00024
* Record of Changes:                                                  !!00025
*                                                                     !!00026
* Date        Person                                                  !!00027
* ---------   ------------                                            !!00028
* 12OCT2007   eschlis                                                 !!00029
* Symptom:    ATM Dynamic Currency Conversion.                        !!00030
* Problem:    None.                                                   !!00031
* Fix:        Initial release.                                        !!00032
* Dependency: Apply fixes to BADDLM and BADDLMM. Restore DDLFDCCD and !!00033
*             run Make.                                               !!00034
*             Refer to BA60UD0B.SCNDCC for a complete listing of      !!00035
*             dependencies.                                           !!00036
* Reference:  WO #061227-02                                           !!00037
                                                                       !00037A00
* 24JAN2008   eschlis                                                  !00037A01
* Symptom:    Customers require BIN data longer than six digits.       !00037A02
* Problem:    More of the card number than the first six digits may    !00037A03
*             be required to identify whether DCC is supported for     !00037A04
*             a card.                                                  !00037A05
* Fix:        Expanded the starting BIN and ending BIN in the BIN      !00037A06
*             Currency record to 12 characters. Adjusted user          !00037A07
*             fields accordingly.                                      !00037A08
* Dependency: Apply fixes to DDLFDCCD, SCRNDCCD, RQDCCDS, and          !00037A09
*             SVDCCDS. Replace BA60LOGM.ATAUTH and BA60UD0B.SCNDCC.    !00037A0A
*             Run Make.                                                !00037A0B
* Reference:  Case #452963.                                            !00037A0C
                                                                       !00037A0D
                                                                       !00037B00
* 25JUN2008   eschlis                                                  !00037B01
* Symptom:    A currency of wildcards (***) in the Currency Data       !00037B02
*             record causes an error "-0010- - INVALID NUMBER          !00037B03
*             FORMAT". Wildcards need to be allowed in that field.     !00037B04
* Problem:    The currency is defined as a numeric field,              !00037B05
*             disallowing wildcard characters.                         !00037B06
* Fix:        Changed the currency in the Currency Data record from    !00037B07
*             type CRNCY-CDE to PIC X(3).                              !00037B08
* Dependency: Apply fix to DDLFDCCD. Apply fix to RQDCCDS and          !00037B09
*             SCRNDCCD on the BA60AFT subvolume. Run Make.             !00037B0A
*             Replace BA60UD0B.SCNDCC.                                 !00037B0B
* Reference:  Case #468648                                             !00037B0C
                                                                       !00037B0D
********************************************************************  !!00038
                                                                       !00039
?section dccd-prikey
?setsection dccd-prikey
?deflist
                                                                       !00046
?comments
                                                                       !00049
*             The values in the following fields form the primary     !!00050
*             key to records in the DCCD.                             !!00051
                                                                       !00052
definition dccd-prikey.                                                !00053
                                                                       !00054
*             Record type. Valid values are:                          !!00055
*               BC - BIN Currency Record.                             !!00056
*               CD - Currency Data Record.                            !!00057
                                                                       !00058
  02 rec-typ                            pic XX.                        !00059
                                                                       !00060
*             Key data specific to the record type                    !!00061
                                                                       !00062
  02 typ-specific-key                   pic X(22).                     !00063
                                                                       !00064
*             Key data for a BIN currency record. During transaction  !!00065
*             processing, the range of BINs defined by                !!00066
*             PRIKEY.BIN-CRNCY-KEY.STRT-BIN below and by              !!00067
*             BIN-CRCY-DATA.END-BIN (see the main DCCD definition)    !!00068
*             is matched against the card's Bank Identification       !!00069
*             Number, that is, the first six digits of the PAN.       !!00070
*             For example, a starting BIN of 400000 and an            !!00071
*             ending BIN of 400005 will result in a match for card    !!00072
*             40000200000000000. Because the ranges are not allowed   !!00073
*             to overlap, there will be at most one match for         !!00074
*             each BIN.                                               !!00075
                                                                       !00076
  02 bin-crncy-key                      redefines typ-specific-key.    !00077
                                                                       !00078
*             Beginning BIN for the range defined by this record.     !!00079
                                                                       !00080
                                                                       !00081A00
      04 strt-bin                       pic x(12).                     !00081A01
                                                                       !00081A02
                                                                       !00082
*             Space-filled to ensure the correct number of bytes for  !!00083
*             this structure.                                         !!00084
                                                                       !00085
                                                                       !00086A00
      04 user-fld-strt-bin              pic x(10).                     !00086A01
                                                                       !00086A02
                                                                       !00087
*             Key data for a currency data record. During transaction !!00088
*             processing, these records are searched by the following !!00089
*             hierarchy:                                              !!00090
*                                                                     !!00091
*                DCC profile       Issuer         Currency            !!00092
*                                    designator     code              !!00093
*                                                                     !!00094
*                Exact match       Exact match    Exact match         !!00095
*                Exact match       Exact match        ***             !!00096
*                Exact match         **           Exact match         !!00097
*                Exact match         **               ***             !!00098
*                ****************  Exact match    Exact match         !!00099
*                ****************  Exact match        ***             !!00100
*                ****************    **           Exact match         !!00101
*                ****************    **               ***             !!00102
                                                                       !00103
  02 crncy-data-key                     redefines typ-specific-key.    !00104
                                                                       !00105
*             The DCC profile for the terminal. Matched against the   !!00106
*             profile in the DCC Status Token. Wildcards              !!00107
*             (****************) match any terminal for which DCC is  !!00108
*             supported.                                              !!00109
                                                                       !00110
       04 dcc-prfl                      type prfl.                     !00111
                                                                       !00112
*             The issuer to whom this transaction is expected to      !!00113
*             be routed. Matched against the issuer designator from   !!00114
*             the BIN currency record. Wildcards (**) will match any  !!00115
*             issuer as long as a BIN currency record is defined      !!00116
*             for the BIN.                                            !!00117
                                                                       !00118
       04 iss-designator                pic xx.                        !00119
                                                                       !00120
*             The currency code with which the BIN is associated.     !!00121
*             Matched against the currency code in the BIN currency   !!00122
*             record. Wildcards (***) will match any currency as long !!00123
*             a BIN currency record is defined for the BIN.           !!00124
                                                                       !00125
                                                                       !00126B00
       04 crncy-cde                     pic x(3).                      !00126B01
                                                                       !00126B02
                                                                       !00127
*             Field ensures even alignment of the data following the  !!00128
*             key.                                                    !!00129
                                                                       !00130
       04 user-fld-crncy-cde            pic x.                         !00131
                                                                       !00132
end                                                                    !00133
                                                                       !00134
?nocomments
                                                                       !00137
?section dccd
?setsection dccd
********************************************************************* !!00142
*                    Dynamic Currency Conversion Data file          * !!00143
********************************************************************* !!00144
*                                                                   * !!00145
*   Identification                                                  * !!00146
*                                                                   * !!00147
*      The Dynamic Currency Conversion Data file (DCCD) contains    * !!00148
*      data that is required to build the DCCDEMT. It holds         * !!00149
*      two types of records:                                        * !!00150
*        - BIN Currency Record. Maps each Bank Identification       * !!00151
*          Number (BIN) to an ISO currency code and an issuer ID.   * !!00152
*          Primary key is the record type and a BIN representing    * !!00153
*          the starting BIN of the range to which the record        * !!00154
*          applies. Each record also contains an ending BIN, which  * !!00155
*          is not part of the Enscribe key; however, the range      * !!00156
*          defined must not overlap with any other record.          * !!00157
*        - Currency Data Record. Maps each terminal DCC profile,    * !!00158
*          issuer ID, and currency code to the mark-up rates and    * !!00159
*          other data needed for DCC processing.                    * !!00160
*                                                                   * !!00161
*  Security                                                         * !!00162
*                                                                   * !!00163
*      The DCCD is secured under Tandem's group level security so   * !!00164
*      that only authorized network operators may access (or start  * !!00165
*      programs which will access) the file.                        * !!00166
*                                                                   * !!00167
*      USER ID         = <Base24 node name>.*                       * !!00168
*      FILE CODE       = 0                                          * !!00169
*      ACCESS SECURITY = GGGG                                       * !!00170
*                                                                   * !!00171
*   Usage                                                           * !!00172
*                                                                   * !!00173
*       EMT BUILD         I    Sequential              Shared       * !!00174
*       File Maintenance  I/O  Random(Primary)         Shared       * !!00175
*                                                                   * !!00176
********************************************************************* !!00177
                                                                       !00178
?comments
                                                                       !00181
*             The Dynamic Currency Conversion Data file (DCCD)        !!00182
*             contains the data required to map a DCC-eligible        !!00183
*             transaction to the data used in DCC processing,         !!00184
*             including the currency code and description,            !!00185
*             issuer ID, and mark-up rate. DCC processing can be      !!00186
*             configured by the Bank Identification Number (BIN) on   !!00187
*             the card, the currency associated with the BIN, the     !!00188
*             terminal from which the transaction originated, and     !!00189
*             the interchange to which it is expected to be sent.     !!00190
*                                                                     !!00191
*             The following pages describe the fields included in an  !!00192
*             DCCD record.  The information below summarizes other    !!00193
*             information specific to the DCCD.                       !!00194
                                                                       !00195
record dccd.           file is "DCCD" key-sequenced,                   !00196
                       maxextents 100, ext (4,32).                     !00197
                                                                       !00198
*             The values in the following fields form the primary     !!00199
*             key to records in the DCCD.                             !!00200
                                                                       !00201
  02 prikey                             type dccd-prikey.              !00202
                                                                       !00203
*             Data specific to the record type.                       !!00204
                                                                       !00205
  02 typ-specific-data                  pic X(52).                     !00206
                                                                       !00207
*             Data specific to the BIN Currency record                !!00208
                                                                       !00209
  02 bin-crncy-data                     redefines typ-specific-data.   !00210
                                                                       !00211
*             Ending BIN of the range to which this record applies.   !!00212
*             Must not be less than the starting BIN in the primary   !!00213
*             key. Also, the range defined by the starting and        !!00214
*             ending BINs must not overlap any other record.          !!00215
                                                                       !00216
                                                                       !00217A00
     04 end-bin                         pic x(12).                     !00217A01
                                                                       !00217A02
                                                                       !00218
*             A code designating the issuer to whom transactions      !!00219
*             are expected to be routed for the BIN. This is          !!00220
*             user-defined; however, BASE24 assumes that issuers      !!00221
*             beginning with "M" are MasterCard brands (MasterCard,   !!00222
*             Cirrus, etc.) and issuers beginning with "V" are Visa   !!00223
*             brands.                                                 !!00224
                                                                       !00225
     04 iss-designator                  pic xx.                        !00226
                                                                       !00227
*             Currency code for this range of BINs.                   !!00228
                                                                       !00229
     04 crncy-cde                       type *.                        !00230
                                                                       !00231
*             Ensures the correct number of bytes for the record.     !!00232
                                                                       !00233
                                                                       !00234A00
     04 user-fld-crncy-cde              pic x(35).                     !00234A01
                                                                       !00234A02
                                                                       !00235
*             Data specific to the Currency Data record.              !!00236
                                                                       !00237
  02 crncy-data                         redefines typ-specific-data.   !00238
                                                                       !00239
*             Description of the currency, e.g., "UK POUNDS". Spaces  !!00240
*             indicate to use the ISO alphabetic currency code (for   !!00241
*             example, "GBP" if the numeric code is 826). If the      !!00242
*             currency code (PRIKEY.CRNCY-DATA-KEY.CRNCY-CDE) is      !!00243
*             wildcards, then spaces must be used and will cause the  !!00244
*             appropriate ISO code to be used for the BIN currency.   !!00245
                                                                       !00246
      04 crncy-descr                    pic x(20).                     !00247
                                                                       !00248
*             Mark-up percentage when converting into this currency,  !!00249
*             expressed in hundredths of a percent (for instance,     !!00250
*             100 = 1%).                                              !!00251
                                                                       !00252
      04 pcnt-mark-up                   type binary 16.                !00253
                                                                       !00254
*             Reserved for future BASE24 product use.                 !!00255
                                                                       !00256
      04 user-fld-aci                   pic x(30).                     !00257
                                                                       !00258
  02 last-fm                            type *.                        !00259
                                                                       !00260
  key 0 is prikey.                                                     !00261
                                                                       !00262
  end                                                                  !00263
                                                                       !00264
?setsection
