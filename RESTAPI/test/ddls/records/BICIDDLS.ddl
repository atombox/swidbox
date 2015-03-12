**FIX2.28  06/25/09  BICIDDLS6006 DDL    SW60BABI SW0D338  F                 ***
**FIX2.24  12/23/04  BICIDDLS6005 DDL    SW60BABI SW09091  E                 ***
**FIX2.23  07/24/03  BICIDDLS6004 DDL    SW60BABI SW07258  D                 ***
**FIX2.23  01/03/03  BICIDDLS6003 DDL    SW60BABI SW06165  C                 ***
**FIX2.19  01/12/02  BICIDDLS6002 DDL    SW60BABI SW05137  B                 ***
**FIX2.14  03/15/01  BICIDDLS6001 DDL    SW60BABI SW04319  A                 ***
!*SEQ0.04  11/01/00  BICIDDLS6000 DDL    SW60BABI   04000                      !
!*SYNC.04  12/08/98  BICIDDLS5300 DDL    SW53BABI   04000                      !
!*SYNC.03  08/28/98  BICIDDLS5300 DDL    SW53BABI   03000                      !
!*SYNC.03  08/25/97  BICIDDLS5100 DDL    SW51BABI   03000                      !
!*SEQ2.00  04/09/97  BICIDDLS5100 DDL    SW51BABI                              !
?PAGE "TITLE"
*********************************************************************  !00000A00
*                                                                   *  !00000A01
*                               BASE24                              *  !00000A02
*                               ------                              *  !00000A03
*                                                                   *  !00000A04
*                BIC ISO Interchange Interface DDLs                 *  !00000A05
*                                                                   *  !00000A06
*                   Proprietary Software Product                    *  !00000A07
*                                                                   *  !00000A08
*                         ACI Worldwide Inc.                        *  !00000A09
*                       330 South 108th Avenue                      *  !00000A0A
*                       Omaha, Nebraska  68154                      *  !00000A0B
*                           (402) 390-7600                          *  !00000A0C
*                                                                   *  !00000A0D
*    Copyright by ACI Worldwide Inc. 1989 - 2000                    *  !00000A0E
*                                                                   *  !00000A0F
*    All Rights Reserved.  No part of this document may be          *  !00000A0G
*    reproduced in any manner without the prior written consent of  *  !00000A0H
*    ACI Worldwide Inc.  This material is a trade secret and its    *  !00000A0I
*    confidentiality is strictly maintained.  Use of any copyright  *  !00000A0J
*    notice does not imply unrestricted or public access to these   *  !00000A0K
*    materials.                                                     *  !00000A0L
*                                                                   *  !00000A0M
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.     *  !00000A0N
*                                                                   *  !00000A0O
*********************************************************************  !00000A0P
                                                                       !00000A0Q
?page
*                                                                      !00000A0T
* Record of Changes:                                                   !00000A0U
*                                                                      !00000A0V
* Date        Person/Emp #                                             !00000A0W
* ---------   ------------                                             !00000A0X
                                                                       !00000A0Y
                                                                       !00003A00
                                                                       !00003A01
                                                                       !00003A02
* 06/10/89      1         ENGEL                                       !!00026
* SYMPTOM:      The first two bytes of the pan in the ILF.PRIKEY      !!00027
*               garbage.                                              !!00028
* PROBLEM:      (P) The pan was preceeded by the TRAN^TIM in the      !!00029
*               prikey.                                               !!00030
*               This field was only an INT and yet an ASCII^DOUBLE was!!00031
*               done on the field.  This effectively overwrote the    !!00032
*               first two bytes of the pan.                           !!00033
* FIX:          Changed the TRAN^TIM field of the ILF.PRIKEY to be a  !!00034
*               DOUBLE.                                               !!00035
* DEPENDENCIES: Re-ddl and recompile all BIC ISO source.              !!00036
* REFERENCE:    RPC #119214.                                          !!00037
                                                                       !00038
**********************************************************************!!00039
*                            RELEASE 5.0                             *!!00040
**********************************************************************!!00041
* 04/01/92      Release 5.0 Design Team                               !!00042
* SYMPTOM:      BASE24 Release 5.0 Security Enhancements              !!00043
* PROBLEM:      (E) None.                                             !!00044
* FIX:          1.  28 fields were either added or modified within the!!00045
*                   PIN and OPTIONS substructs of the PCT to support  !!00046
*                   the new definition of the KEYF.  The entire MAC   !!00047
*                   substruct was added to the PCT as well.  See the  !!00048
*                   KEYF DDL for more information on each specific    !!00049
*                   field.                                            !!00050
*               2.  Changed the use and valid values of the VERSION-  !!00051
*                   NUM field.  This field will be used to indicate   !!00052
*                   what release level format the ISO messages should !!00053
*                   be in.                                            !!00054
*               3.  Modified the MSG structure to be 3980 bytes long  !!00055
*                   instead of 2000 bytes long.                       !!00056
* DEPENDENCIES: Recompile DDLBICI.                                    !!00057
* REFERENCE:    BASE24 Release 5.0 Security External Specifications   !!00058
*               - Dynamic Key Management (HISO, HISF, BICI, BIC)      !!00059
*               - Double Length Keys Support                          !!00060
*               BASE24 Release 5.0 Security Impact Assessments        !!00061
*               - KEYA/KEYF File Split.                               !!00062
*               BASE24-base Release 5.0 External Specifications       !!00063
*               - Message Tokenization                                !!00064
*                                                                     !!00065
* 03/17/93      kjw                                                   !!00066
* SYMPTOM:      None.                                                 !!00067
* PROBLEM:      (E) Adding 5-day settlement to this module.           !!00068
* FIX:          Changed code so interface will bypass ILF creation and!!00069
*               totals message processing on weekends and holidays    !!00070
*               when ICF settlement flag is set to 0.                 !!00071
* DEPENDENCIES: Apply fix to babicis, and ATM or POS modules as       !!00072
*               needed, recompile and bind.                           !!00073
* REFERENCE:    RPE R920504-06                                        !!00074
*                                                                     !!00075
* 06/01/93      kjw                                                   !!00076
* SYMPTOM:      None.                                                 !!00077
* PROBLEM:      (E) Added currency conversion support to BIC ISO.     !!00078
* FIX:          Added fields to PCT for currency conversion.          !!00079
* DEPENDENCIES: Recompile DDLBICI.                                    !!00080
* REFERENCE:    RPE R930112-01.                                       !!00081
*                                                                     !!00082
**********************************************************************!!00083
*                            RELEASE 5.1                             *!!00084
**********************************************************************!!00085
* 09/01/96      DTW/1779                                              !!00086
* SYMPTOM:      BASE24-Switch Release 5.1 Enhancements.               !!00087
* PROBLEM:      (E) None.                                             !!00088
* FIX:          Remove directives and source statements and add a     !!00089
*               MAKE file.                                            !!00090
* IMPLEMEMT     Applied fix to BICIDDLS, BABIMM, and make BICIDDLS    !!00091
*               and BABICIS.                                          !!00092
* REF:          BASE24 Release 5.1 MAKE Document Utilization.         !!00093
*                                                                     !!00094
* 95/02/28      Lovejoy/800    DTW/1779                               !!00095
* SYMPTOM:      BASE24 Surcharging                                    !!00096
* PROBLEM:      (E) None.                                             !!00097
* FIX:          Added two new fields to the TTL structure             !!00098
*               for fees.                                             !!00099
* DEPENDENCIES: Recompile the ISO BIC interface after this DDL        !!00100
*               has been re-compiled.                                 !!00101
* REFERENCE:    RPE #941018-1, ATM Surcharging External Specification !!00102
                                                                       !00102A00
*********************************************************************  !00102A01
*             Release 6.0                                           *  !00102A02
*********************************************************************  !00102A03
* 30NOV2000   jfu/543                                                  !00102A04
* Symptom:    Release 6.0 Enhancements                                 !00102A05
* Problem:    None.                                                    !00102A06
* Fix:        Changed the comments regarding the releases supported    !00102A07
*             by this interface.                                       !00102A08
* Dependency: Restore Release 6.0 files, modify the appropriate        !00102A09
*             CUSTMACS flags, and run MAKE.                            !00102A0A
* Reference:  WO #010129-01 (Release Indicator)                        !00102A0B
                                                                       !00102B00
* 20AUG2001   chh/174                                                  !00102B01
* Symptom:    Triple/Single DES Enhancement                            !00102B02
* Problem:    None.                                                    !00102B03
* Fix:        Expanded 5 fields in the PCT.SECURE structure from       !00102B04
*             16 to 32 bytes and added field MAC-KEY-LGTH under        !00102B05
*             PCT.OPTIONS.                                             !00102B06
* Dependency: Apply fixes to BABICIG, BABICIM, BABICIS, BICIDDLS,      !00102B07
*             HISWUTLS, SECUTILS and run MAKE.                         !00102B08
*             Replace BABILOGM.                                        !00102B09
* Reference:  WO #000211-01                                            !00102B0A
                                                                       !00102B0B
                                                                       !00102C00
* 25NOV2002   DOO/1693                                                 !00102C01
* Symptom:    Multiple Currency, Format 2, Discretionary Data, and     !00102C02
*             Switch Token Enhancements.                               !00102C03
* Problem:    None.                                                    !00102C04
* Fix:        1.  Added Multiple Currency compatibility support.       !00102C05
*             2.  Added Format 2 file support.                         !00102C06
*             3.  Added Switch Token Support                           !00102C07
*             Modified sections: ITF                                   !00102C08
*                                PCT                                   !00102C09
*             New section: BICI-SWI-TKN-DATA                           !00102C0A
* Dependency: Apply fixes to DDLFICFE, RQICFES, SCRNICFE, BICIDDLM,    !00102C0B
*             BICIDDLS, BABICIS, BABICIG, ATBICIS, and PSBICIS and     !00102C0C
*             re-MAKE.  Replace BABILOGM.                              !00102C0D
* Reference:  WO #020627-01                                            !00102C0E
                                                                       !00102C0F
                                                                       !00102D00
* 04JUN2003   BN/517                                                   !00102D01
* Symptom:    Enhancement to support Irish Reciprocity.                !00102D02
* Problem:    None.                                                    !00102D03
* Fix:        Add swi-id into PCT to store the Switch ID from ICF/ICFE !00102D04
* Dependency: Apply fix to BICIDDLS and re-MAKE.                       !00102D05
* Reference:  WO #030504-06                                            !00102D06
                                                                       !00102E00
* 15DEC2004   engelk                                                   !00102E01
* Symptom:    Error 10, duplicate key error, on SAF.                   !00102E02
* Problem:    The 3 word timestamp used as a key into the SAF file     !00102E03
*             not unique enough in times of high capacity with         !00102E04
*             communications issues.                                   !00102E05
* Fix:        Modified the SAF file definition's prikey to support a   !00102E06
*             four word julian timestamp.                              !00102E07
* Dependency: Apply fixes to BICIDDLS and BABICIS.  Run MAKE.          !00102E08
*             At a time when the active SAF file is empty and traffic  !00102E09
*             is low, log the interface off and stop it.  Remove the   !00102E0A
*             old SAF file and replace it with a new SAF file created  !00102E0B
*             using the BICIFUP file created by MAKE.  Start the       !00102E0C
*             interface using the new object created by MAKE.          !00102E0D
* Reference:  Case #388842                                             !00102E0E
                                                                       !00102E0F
                                                                       !00102F00
* 23JUN2009   wielerk                                                  !00102F01
* Symptom:    SAF fails to work on overworked BIC, error 10 is         !00102F02
*             displayed many times when volume is heavy.               !00102F03
* Problem:    The interface has a key for the SAF that is constrained  !00102F04
*             by heavy volume as it is a 4 word timestamp. It is       !00102F05
*             possible to have more than 1 message within a            !00102F06
*             millisecond. Duplicates are not allowed and messages     !00102F07
*             are dropped without being added to the SAF.              !00102F08
* Fix:        Added a sequence number to SAF.PRIKEY.                   !00102F09
*             Modified the PCT.SAF to add a 4 word variable to         !00102F0A
*             hold the timestamp value of a SAF record added.          !00102F0B
* Dependency: Apply fixes to BABICIG, BABICIS and BICIDDLS. Run Make.  !00102F0C
* Reference:  Case #499636.                                            !00102F0D
                                                                       !00102F0E
                                                                       !00102D07
*********************************************************************  !00102A0C
                                                                       !00102A0D
                                                                       !00103
?SECTION SAF
?PAGE "Store and Forward"
Record saf.  File is "SAF" key-sequenced.                              !00108
    02  prikey            keytag 0.                                    !00109
        04  dpc-num       type binary 16.                              !00110
                                                                       !00111E00
        04  timestmp      type binary 64.                              !00111E01
                                                                       !00111F00
        04  seq-num       type binary 16.                              !00111F01
                                                                       !00111F02
    02  msg-lgth          type binary 16.                              !00112
    02  prod-id           type binary 16.                              !00113
    02  msg               pic x(3980).                                 !00114
end.                                                                   !00115
                                                                       !00116
?SECTION ICFBICI
?PAGE "Switch-dependent data for ICF"
                                                                       !00121
Definition icfbici.                                                    !00122
                                                                       !00123
*       Stand-in authorization:                                       !!00124
*             0 - not supported (default)                             !!00125
*             1 - supported                                           !!00126
*                                                                     !!00127
*       Screen values:                                                !!00128
*            "Y"                                                      !!00129
*            "N"                                                      !!00130
                                                                       !00131
    02 acq-stand-in                 pic 9.                             !00132
                                                                       !00133
*       Stand-in authorization:                                       !!00134
*             0 - not supported (default)                             !!00135
*             1 - supported                                           !!00136
*                                                                     !!00137
*       Screen values:                                                !!00138
*            "Y"                                                      !!00139
*            "N"                                                      !!00140
                                                                       !00141
    02 iss-stand-in                 pic 9.                             !00142
                                                                       !00143
*       Cutover status:                                               !!00144
*             0 - Equal (default)                                     !!00145
*             1 - Master                                              !!00146
*             2 - Slave                                               !!00147
                                                                       !00148
    02 ctvr-stat                    pic 9.                             !00149
                                                                       !00150
*       Fixed Length Format:                                          !!00151
*             0 - not supported (default)                             !!00152
*             1 - supported                                           !!00153
                                                                       !00154
    02  fixed-lgth-frmt             pic 9.                             !00155
                                                                       !00156
*       Version Number of the Interchange that is to be passed        !!00157
*       between the BIC ISO process and the Co-network.               !!00158
                                                                       !00159
*       Valid values are:                                             !!00160
                                                                       !00161A00
                                                                       !00161A01
*                           00 = Release 4                            !
*                           01 = Release 5                            !
*                      02 - 59 = Future Use                           !
*                           60 = Release 6                             !00161A08
*                      61 - 99 = Future Use                            !00161A09
                                                                       !00161A0A
                                                                       !00164
    02  version-num                 pic 99.                            !00165
                                                                       !00166
*       The following field is used for characters which the host     !!00167
*       interface must include at the start of any message to a       !!00168
*       given DPC.  Up to 9 bytes are allowed and they are stored     !!00169
*       here in hex character display format.  These are the ASCII    !!00170
*       ( not EBCDIC ) codes.  They will be translated to EBCDIC      !!00171
*       along with the rest of the message, if this DPC is connected  !!00172
*       by an EBCDIC line, at the time of message transmission.       !!00173
*       Left-justify, blank fill on the right.                        !!00174
                                                                       !00175
    02  data-prefix-chars           pic x(18).                         !00176
                                                                       !00177
*       Time limit in minutes that BASE24 will wait after cutover     !!00178
*       before transmitting a Reconciliation message.                 !!00179
                                                                       !00180
    02  setl                        type binary 16.                    !00181
                                                                       !00182
*       Maximum number of minutes to elapse between Interchange       !!00183
*       Totals File ( ITF ) updates.  Default is 30 minutes.          !!00184
                                                                       !00185
    02  itf-updt-interval           type binary 16.                    !00186
                                                                       !00187
*       Maximum number of transactions to be processed between        !!00188
*       Interchange Totals File ( ITF ) updates.  Default is 200.     !!00189
                                                                       !00190
    02  itf-updt-max-trans          type binary 16.                    !00191
                                                                       !00192
*       This field indicates the type of protocol message header      !!00193
*       processing to be performed by the BIC ISO Interface process.  !!00194
                                                                       !00195
*       Valid values are:                                             !!00196
*         00 = None. No special protocol processing required.         !!00197
*              Performed by the Nucleus Process. Used for             !!00198
*              Burroughs protocol. (Default)                          !!00199
*         01 = SNA/CICS Protocol                                      !!00200
*         02 = Bisync Multipoint Protocol                             !!00201
*         03 = ETAN X.25 Protocol                                     !!00202
*         04-99 = Reserved for Future Use                             !!00203
                                                                       !00204
*           Required field on an AFT add or update. Spaces not        !!00205
*           allowed. Default value = '00'.                            !!00206
                                                                       !00207
    02  proto-typ                   pic x(2).                          !00208
*                                                                     !!00209
*       PROD-IND(0)  = N/A                                            !!00210
*       PROD-IND(1)  = ATM,                                           !!00211
*       PROD-IND(2)  = POS,                                           !!00212
*       PROD-IND(3)  = N/A                                            !!00213
*       PROD-IND(4)  = PCS,                                           !!00214
*       PROD-IND(5)  = N/A,                                           !!00215
*       PROD-IND(6)  = N/A,                                           !!00216
*       PROD-IND(7)  = N/A,                                           !!00217
*       PROD-IND(8)  = N/A,                                           !!00218
*       PROD-IND(9)  = N/A,                                           !!00219
*       PROD-IND(10) = N/A,                                           !!00220
*       PROD-IND(11) = N/A,                                           !!00221
*       PROD-IND(12) THRU PROD-IND(15) ARE RESERVED FOR FUTURE USE.   !!00222
                                                                       !00223
*       SCREEN values should be "N" or "Y"                            !!00224
                                                                       !00225
    02  prod-ind                    pic x(16).                         !00226
                                                                       !00227
*       BIC ISO supports up to 20 stations ( the two stations         !!00228
*       specified in the ICFBASE segment will be ignored )            !!00229
*                                                                     !!00230
*       Station Types:                                                !!00231
*                                                                     !!00232
*       Any unused entries must be blank-filled.                      !!00233
                                                                       !00234
    02  sta                         occurs 20 times.                   !00235
        04  nam                     type sym-name.                     !00236
        04  typ                     pic x.                             !00237
                                                                       !00238
*                                                                     !!00239
*             Specifies the release level of the BASE24 ISO           !!00240
*             messages.  Valid values are:                            !!00241
*                                                                     !!00242
*             01 = Current BASE24 release                             !!00243
*             02 = Previous BASE24 release                            !!00244
*                                                                     !!00245
  02 REL-IND                            PIC X(2).                      !00246
                                                                       !00247
*             Specifies the conversion amounts for multiple currency  !!00248
*             support. First character indicates the decimal point    !!00249
*             position in this field, ie., 61000000 would indicate    !!00250
*             1.000000 should be used as a conversion amount.         !!00251
*                                                                     !!00252
*             Buy rate indicates the factor to be used if buying the  !!00253
*             shared currency. An acquired transaction will have the  !!00254
*             amounts multiplied by this rate to convert to the shared!!00255
*             currency.                                               !!00256
                                                                       !00257
*             Sell rate indicates the factor to be used if selling the!!00258
*             shared currency. An issuer transaction will have the    !!00259
*             amounts multiplied by this factor to convert from the   !!00260
*             shared currency to the local currency.                  !!00261
*                                                                     !!00262
    02 buy-rate                           type binary 32.              !00263
    02 sell-rate                          type binary 32.              !00264
    end.                                                               !00265
                                                                       !00266
?SECTION ILF-TTL
?PAGE "BIC ISO ILF TTL Format"
Definition ilf-ttl.                                                    !00271
    02  setl-dat                    type dat.                          !00272
    02  num-cr                      pic 9(10).                         !00273
    02  num-cr-rvsl                 pic 9(10).                         !00274
    02  num-db                      pic 9(10).                         !00275
    02  num-db-rvsl                 pic 9(10).                         !00276
    02  num-xfer                    pic 9(10).                         !00277
    02  num-xfer-rvsl               pic 9(10).                         !00278
    02  num-inq                     pic 9(10).                         !00279
    02  num-auth                    pic 9(10).                         !00280
    02  amt-cr                      pic 9(16).                         !00281
    02  amt-cr-rvsl                 pic 9(16).                         !00282
    02  amt-db                      pic 9(16).                         !00283
    02  amt-db-rvsl                 pic 9(16).                         !00284
    02  amt-net-setl.                                                  !00285
        04  ind                     pic x.                             !00286
        04  amt                     pic 9(16).                         !00287
    02  amt-cr-tran-fees            pic 9(16).                         !00288
    02  amt-db-tran-fees            pic 9(16).                         !00289
end.                                                                   !00290
                                                                       !00291
?SECTION TTL
?PAGE "BIC ISO TTL Format"
Definition ttl.                                                        !00296
    02  num-cr                      type binary 32.                    !00297
    02  num-cr-rvsl                 type binary 32.                    !00298
    02  num-db                      type binary 32.                    !00299
    02  num-db-rvsl                 type binary 32.                    !00300
    02  num-xfer                    type binary 32.                    !00301
    02  num-xfer-rvsl               type binary 32.                    !00302
    02  num-inq                     type binary 32.                    !00303
    02  num-auth                    type binary 32.                    !00304
    02  amt-cr                      type binary 64.                    !00305
    02  amt-cr-rvsl                 type binary 64.                    !00306
    02  amt-db                      type binary 64.                    !00307
    02  amt-db-rvsl                 type binary 64.                    !00308
    02  amt-net-setl                type binary 64.                    !00309
    02  amt-cr-tran-fees            type binary 64.                    !00310
    02  amt-db-tran-fees            type binary 64.                    !00311
end.                                                                   !00312
                                                                       !00313
?SECTION ILF-INFO
Definition ilf-info.                                                   !00316
    02  dat                         type *.                            !00317
    02  fcb                         type fcb.                          !00318
    02  last-addr                   type binary 32.                    !00319
    02  last-rvsl-addr              type binary 32.                    !00320
end.                                                                   !00321
                                                                       !00322
                                                                       !00322C00
?SECTION ILF-INFO-FRMT2
Definition ilf-info-frmt2.                                             !00322C03
    02  last-addr                   type binary 64.                    !00322C04
    02  last-rvsl-addr              type binary 64.                    !00322C05
end.                                                                   !00322C06
?SECTION PCT
?PAGE "BIC ISO Process Control Table Format"
                                                                       !00322C0B
Definition pct.                                                        !00327
    02  fiid                        pic x(4).                          !00328
    02  ln                          pic x(4).                          !00329
    02  swi-typ                     pic x(4).                          !00330
    02  term-id                     pic x(16).                         !00331
    02  inst.                                                          !00332
        04 lgth                     type binary 16.                    !00333
        04 id                       pic x(15).                         !00334
    02  acq-id-num                  pic x(11).                         !00335
                                                                       !00335D00
    02  swi-id                      pic x(11).                         !00335D01
    02  reserved                    pic x.                             !00335D02
                                                                       !00335D03
    02  sic                         pic x(4).                          !00336
    02  crncy-cde                   pic x(3).                          !00337
    02  bal-display                 pic x.                             !00338
    02  timers.                                                        !00339
        04  nmm                     type binary 32.                    !00340
        04  xnmm                    type binary 32.                    !00341
        04  wft                     type binary 32.                    !00342
        04  perf                    type binary 32.                    !00343
        04  old-key-timer-lmt       type binary 32.                    !00344
                                                                       !00345
*            Time Limit that BASE24 will wait after cutover           !!00346
*            before transmitting a reconciliation message.            !!00347
                                                                       !00348
        04  setl                    type binary 32.                    !00349
                                                                       !00350
*            Time Limit that BASE24 will wait before the ITF          !!00351
*            record is updated.                                       !!00352
                                                                       !00353
        04  ttls                    type binary 32.                    !00354
                                                                       !00355
    02  options.                                                       !00356
        04  nmm-enabled             type binary 16.                    !00357
        04  acquirer                type binary 16.                    !00358
        04  issuer                  type binary 16.                    !00359
        04  ack-to-swi              type binary 16.                    !00360
        04  ack-from-swi            type binary 16.                    !00361
        04  t-o-max                 type binary 16.                    !00362
        04  acq-stand-in            type binary 16.                    !00363
        04  iss-stand-in            type binary 16.                    !00364
                                                                       !00365B00
        04  logon                   pic x(18).                         !00365B01
                                                                       !00365B02
        04  ctvr                    type binary 16.                    !00366
        04  version-num             pic x(2).                          !00367
        04  fixed-lgth-frmt         type binary 16.                    !00368
        04  proto-typ               pic x(2).                          !00369
                                                                       !00370
*         KEY-PROC-TYP contains the ASCII representation of           !!00371
*         KEYF.INTERFACE.KEY-PROC-TYP.                                !!00372
                                                                       !00373
        04  key-proc-typ            pic x.                             !00374
                                                                       !00375
*         KEY-LGTH contains the integer representation of             !!00376
*         KEYF.INTERFACE.KEY-LGTH.                                    !!00377
                                                                       !00378
        04  key-lgth                type binary 16.                    !00379
                                                                       !00380
*         NUM-KEYS contains the ASCII representation of               !!00381
*         KEYF.INTERFACE.NUM-KEYS.                                    !!00382
                                                                       !00383
        04  num-keys                pic x.                             !00384
                                                                       !00385
*         ORG-ID contains the ASCII representation of                 !!00386
*         KEYF.INTERFACE.ORG-ID.                                      !!00387
                                                                       !00388
        04  rcv-id                  pic x(16).                         !00389
                                                                       !00390
*         ORG-ID contains the ASCII representation of                 !!00391
*         KEYF.INTERFACE.ORG-ID.                                      !!00392
                                                                       !00393
        04  org-id                  pic x(16).                         !00394
        04  prefix.                                                    !00395
            06  lgth                type binary 16.                    !00396
            06  chars               pic x(9).                          !00397
                                                                       !00397C00
        04  mult-crncy              pic x.                             !00397C01
                                                                       !00397C02
        04  atm.                                                       !00398
            06  present             type binary 16.                    !00399
            06  id                  type binary 16.                    !00400
        04  pos.                                                       !00401
            06  present             type binary 16.                    !00402
            06  id                  type binary 16.                    !00403
                                                                       !00403B00
        04  mac-key-lgth            type binary 16.                    !00403B01
                                                                       !00403B02
    02  status.                                                        !00404
        04  ctvr-ack                type binary 16.                    !00405
        04  sta-ctr                 type binary 16.                    !00406
        04  sta-next                type binary 16.                    !00407
        04  linkup                  type binary 16.                    !00408
        04  logon                   type binary 16.                    !00409
        04  reserved                type binary 16.                    !00410
    02  outbound.                                                      !00411
        04  ctr                     type binary 16.                    !00412
        04  max                     type binary 16.                    !00413
        04  eighty                  type binary 16.                    !00414
        04  ninety                  type binary 16.                    !00415
    02  inbound.                                                       !00416
        04  ctr                     type binary 16.                    !00417
        04  max                     type binary 16.                    !00418
        04  eighty                  type binary 16.                    !00419
        04  ninety                  type binary 16.                    !00420
    02  pin.                                                           !00421
        04  out-typ                 pic x.                             !00422
        04  in-typ                  pic x.                             !00423
        04  out-blk                 pic x.                             !00424
        04  in-blk                  pic x.                             !00425
        04  out-pan                 pic x.                             !00426
        04  in-pan                  pic x.                             !00427
        04  out-pad                 pic x.                             !00428
        04  in-pad                  pic x.                             !00429
        04  b24-flag                pic x.                             !00430
                                                                       !00431
*         PIN-KEY-VARIANT is an integer representation of             !!00432
*         KEYF.INTERFACE.PIN-KEY-VARIANT.                             !!00433
                                                                       !00434
        04  pin-key-variant         type binary 16.                    !00435
        04  clear-key               pic x(16).                         !00436
        04  encrypt-key             pic x(16).                         !00437
                                                                       !00438
*         ENCRYPT-KEY-CHK is an ASCII (HEX) representation of         !!00439
*         KEYF.INTERFACE.INTERM-KEY-CHK-VALUES.                       !!00440
                                                                       !00441
        04  encrypt-key-chk         pic x(6).                          !00442
        04  exchange-key            pic x(16).                         !00443
                                                                       !00444
*         EXCHANGE-KEY2 is an ASCII (HEX) representation of           !!00445
*         KEYF.INTERFACE.EXCHNG-KEY-2.                                !!00446
                                                                       !00447
        04  exchange-key-extnd      pic x(16).                         !00448
                                                                       !00449
*         EXCHANGE-KEY-CHK is an ASCII representation of              !!00450
*         KEYF.INTERFACE.EXCHNG-KEY-CHK-VALUES.                       !!00451
                                                                       !00452
        04  exchange-key-chk        pic x(6).                          !00453
                                                                       !00454
*        OUT-KEY[0].KEY-VALUE contains the ASCII (HEX) representation !!00455
*        of KEYF.INTERFACE.OUTBOUND.PIN.KEY1.                         !!00456
*        OUT-KEY[0].CHK-DIGITS contains the ASCII (HEX)               !!00457
*        representation of KEYF.INTERFACE.OUTBOUND.PIN.KEY-CHK-VALUE1.!!00458
*                                                                     !!00459
*        OUT-KEY[1].KEY-VALUE contains the ASCII (HEX) representation !!00460
*        of KEYF.INTERFACE.OUTBOUND.PIN.KEY2.                         !!00461
*        OUT-KEY[1].CHK-DIGITS contains the ASCII (HEX)               !!00462
*        representation of KEYF.INTERFACE.OUTBOUND.PIN.KEY-CHK-VALUE2.!!00463
                                                                       !00464
        04  out-key                 occurs 2 times.                    !00465
                                                                       !00466B00
            06  key-value           pic x(32).                         !00466B01
                                                                       !00466B02
            06  chk-digits          pic x(6).                          !00467
                                                                       !00468
*         OUT-KEY-COUNTER contains the double integer                 !!00469
*         representation of KEYF.INTERFACE.OUTBOUND.PIN.KEY-CNTR.     !!00470
*         It is used as a tool for the synchronization of keys.       !!00471
                                                                       !00472
        04  out-key-counter         type binary 32.                    !00473
                                                                       !00474
*         OUT-CURR-INDEX contains the integer representation of       !!00475
*         KEYF.INTERFACE.OUTBOUND.PIN.CURR-INDX.                      !!00476
                                                                       !00477
        04  out-curr-index          type binary 16.                    !00478
                                                                       !00479
*         IN-KEY[0].KEY-VALUE contains the ASCII representation of    !!00480
*         KEYF.INTERFACE.INBOUND.PIN.KEY1.                            !!00481
*         IN-KEY[0].CHK-DIGITS contains the ASCII representation of   !!00482
*         KEYF.INTERFACE.INBOUND.PIN.KEY-CHK-VALUE1.                  !!00483
*                                                                     !!00484
*         IN-KEY[1].KEY-VALUE contains the ASCII representation of    !!00485
*         KEYF.INTERFACE.INBOUND.PIN.KEY2.                            !!00486
*         IN-KEY[1].CHK-DIGITS contains the ASCII representation of   !!00487
*         KEYF.INTERFACE.INBOUND.PIN.KEY-CHK-VALUE2.                  !!00488
                                                                       !00489
        04  in-key                  occurs 2 times.                    !00490
                                                                       !00491B00
            06  key-value           pic x(32).                         !00491B01
                                                                       !00491B02
            06  chk-digits          pic x(6).                          !00492
                                                                       !00493
*         IN-KEY-COUNTER contains the integer representation of       !!00494
*         KEYF.INTERFACE.INBOUND.PIN.KEY-CNTR.                        !!00495
                                                                       !00496
        04  in-key-counter          type binary 32.                    !00497
                                                                       !00498
*         IN-CURR-INDEX contains the ASCII representation of          !!00499
*         KEYF.INTERFACE.INBOUND.PIN.CURR-INDX.                       !!00500
                                                                       !00501
        04  in-curr-index           type binary 16.                    !00502
                                                                       !00503
*         PIN-KEY-TIMER-LMT contains the INT(32) representation of    !!00504
*         KEYF.INTERFACE.PIN-KEY-TIMER-LMT.                           !!00505
                                                                       !00506
        04  pin-key-timer-lmt       type binary 32.                    !00507
                                                                       !00508
*         PIN-KEY-TRAN-LMT contains the INT(32) representation of     !!00509
*         KEYF.INTERFACE.PIN-KEY-TRAN-LMT.                            !!00510
                                                                       !00511
        04  pin-key-tran-lmt        type binary 32.                    !00512
                                                                       !00513
*         IN-KEY-TRAN-CNT contains an integer counter of all inbound  !!00514
*         transactions.  It is used in threshold processing.          !!00515
                                                                       !00516
        04  in-key-tran-cnt         type binary 32.                    !00517
                                                                       !00518
*         OUT-KEY-TRAN-CNT contains an integer counter of all outbound!!00519
*         transactions.  It is used in threshold processing.          !!00520
                                                                       !00521
        04  out-key-tran-cnt        type binary 32.                    !00522
                                                                       !00523
*         PIN-ERR-LMT contains the integer representation of          !!00524
*         KEYF.INTERFACE.PIN-ERR-LMT.                                 !!00525
                                                                       !00526
        04  pin-err-lmt             type binary 16.                    !00527
                                                                       !00528
*         IN-ERR-CNT contains an integer counter of all inbound       !!00529
*         transactions that have a PIN processing error.  It is used  !!00530
*         in threshold processing.                                    !!00531
                                                                       !00532
        04  in-err-cnt              type binary 16.                    !00533
                                                                       !00534
*         OUT-ERR-CNT contains an integer counter of all outbound     !!00535
*         transactions that have a PIN processing error.  It is used  !!00536
*         in threshold processing.                                    !!00537
                                                                       !00538
        04  out-err-cnt             type binary 16.                    !00539
                                                                       !00540
*         CONS-PIN-ERR-LMT contains the integer representation of     !!00541
*         KEYF.INTERFACE.CONS-PIN-ERR-LMT.                            !!00542
                                                                       !00543
        04  cons-pin-err-lmt        type binary 16.                    !00544
                                                                       !00545
*         IN-CONS-ERR-CNT contains an integer counter of consecutive  !!00546
*         inbound transactions that have a PIN processing error.  It  !!00547
*         is used in threshold processing.                            !!00548
                                                                       !00549
        04  in-cons-err-cnt         type binary 16.                    !00550
                                                                       !00551
*         OUT-CONS-ERR-CNT contains an integer counter of consecutive !!00552
*         outbound transactions that have a PIN processing error.  It !!00553
*         is used in threshold processing.                            !!00554
                                                                       !00555
        04  out-cons-err-cnt        type binary 16.                    !00556
        04  reserved2               pic x(16).                         !00557
                                                                       !00558
    02  mac.                                                           !00559
                                                                       !00560
*         MAC-TYP contains the representation of the                  !!00561
*         KEYF.INTERFACE.MAC-TYP.                                     !!00562
                                                                       !00563
        04  mac-typ                 pic x.                             !00564
                                                                       !00565
*         MAC-DATA-TYP contains the representation of the             !!00566
*         KEYF.INTERFACE.MAC-TYP.                                     !!00567
                                                                       !00568
        04  mac-data-typ            pic x.                             !00569
                                                                       !00570
*         FULL-MSG-MAC contains the representation of the             !!00571
*         KEYF.INTERFACE.FULL-MSG-MAC.                                !!00572
                                                                       !00573
        04  full-msg-mac            type binary 16.                    !00574
                                                                       !00575
*        OUT-KEY[0].KEY-VALUE contains the ASCII (HEX) representation !!00576
*        of KEYF.INTERFACE.OUTBOUND.MAC.KEY1.                         !!00577
*        OUT-KEY[0].CHK-DIGITS contains the ASCII (HEX)               !!00578
*        representation of KEYF.INTERFACE.OUTBOUND.MAC.KEY-CHK-VALUE1.!!00579
*                                                                     !!00580
*        OUT-KEY[1].KEY-VALUE contains the ASCII (HEX) representation !!00581
*        of KEYF.INTERFACE.OUTBOUND.MAC.KEY2.                         !!00582
*        OUT-KEY[1].CHK-DIGITS contains the ASCII (HEX)               !!00583
*        representation of KEYF.INTERFACE.OUTBOUND.MAC.KEY-CHK-VALUE2.!!00584
                                                                       !00585
        04  out-key                 occurs 2 times.                    !00586
                                                                       !00587B00
            06  key-value           pic x(32).                         !00587B01
                                                                       !00587B02
            06  chk-digits          pic x(6).                          !00588
                                                                       !00589
*         OUT-KEY-COUNTER contains the double integer                 !!00590
*         representation of KEYF.INTERFACE.OUTBOUND.MAC.KEY-CNTR.     !!00591
*         It is used as a tool for the synchronization of keys.       !!00592
                                                                       !00593
        04  out-key-counter         type binary 32.                    !00594
                                                                       !00595
*         OUT-CURR-INDEX contains the integer representation of       !!00596
*         KEYF.INTERFACE.OUTBOUND.MAC.CURR-INDX.                      !!00597
                                                                       !00598
        04  out-curr-index          type binary 16.                    !00599
                                                                       !00600
*         IN-KEY[0].KEY-VALUE contains the ASCII representation of    !!00601
*         KEYF.INTERFACE.INBOUND.MAC.KEY1.                            !!00602
*         IN-KEY[0].CHK-DIGITS contains the ASCII representation of   !!00603
*         KEYF.INTERFACE.INBOUND.MAC.KEY-CHK-VALUE1.                  !!00604
*                                                                     !!00605
*         IN-KEY[1].KEY-VALUE contains the ASCII representation of    !!00606
*         KEYF.INTERFACE.INBOUND.MAC.KEY2.                            !!00607
*         IN-KEY[1].CHK-DIGITS contains the ASCII representation of   !!00608
*         KEYF.INTERFACE.INBOUND.MAC.KEY-CHK-VALUE2.                  !!00609
                                                                       !00610
        04  in-key                  occurs 2 times.                    !00611
                                                                       !00612B00
            06  key-value           pic x(32).                         !00612B01
                                                                       !00612B02
            06  chk-digits          pic x(6).                          !00613
                                                                       !00614
*         IN-KEY-COUNTER contains the integer representation of       !!00615
*         KEYF.INTERFACE.INBOUND.MAC.KEY-CNTR.                        !!00616
                                                                       !00617
        04  in-key-counter          type binary 32.                    !00618
                                                                       !00619
*         IN-CURR-INDEX contains the ASCII representation of          !!00620
*         KEYF.INTERFACE.INBOUND.MAC.CURR-INDX.                       !!00621
                                                                       !00622
        04  in-curr-index           type binary 16.                    !00623
                                                                       !00624
*         EXCHANGE-KEY is an ASCII (HEX) representation of            !!00625
*         KEYF.INTERFACE.MAC-EXCHNG-KEY.                              !!00626
                                                                       !00627
        04  exchange-key            pic x(16).                         !00628
                                                                       !00629
*         EXCHANGE-KEY2 is an ASCII (HEX) representation of           !!00630
*         KEYF.INTERFACE.MAC-EXCHNG-KEY-2.                            !!00631
                                                                       !00632
        04  exchange-key-extnd      pic x(16).                         !00633
                                                                       !00634
*         EXCHANGE-KEY-CHK is an ASCII representation of              !!00635
*         KEYF.INTERFACE.MAC-EXCHNG-KEY-CHK-VALUES.                   !!00636
                                                                       !00637
        04  exchange-key-chk        pic x(6).                          !00638
                                                                       !00639
*         MAC-KEY-VARIANT is an integer representation of             !!00640
*         KEYF.INTERFACE.MAC-KEY-VARIANT.                             !!00641
                                                                       !00642
        04  mac-key-variant         type binary 16.                    !00643
                                                                       !00644
*         MAC-KEY-TIMER-LMT contains the INT(32) representation of    !!00645
*         KEYF.INTERFACE.MAC-KEY-TIMER-LMT.                           !!00646
                                                                       !00647
        04  mac-key-timer-lmt       type binary 32.                    !00648
                                                                       !00649
*         MAC-KEY-TRAN-LMT contains the INT(32) representation of     !!00650
*         KEYF.INTERFACE.MAC-KEY-TRAN-LMT.                            !!00651
                                                                       !00652
        04  mac-key-tran-lmt        type binary 32.                    !00653
                                                                       !00654
*         IN-KEY-TRAN-CNT contains an integer counter of all inbound  !!00655
*         transactions.  It is used in threshold processing.          !!00656
                                                                       !00657
        04  in-key-tran-cnt         type binary 32.                    !00658
                                                                       !00659
*         OUT-KEY-TRAN-CNT contains an integer counter of all outbound!!00660
*         transactions.  It is used in threshold processing.          !!00661
                                                                       !00662
        04  out-key-tran-cnt        type binary 32.                    !00663
                                                                       !00664
*         MAC-ERR-LMT contains the integer representation of          !!00665
*         KEYF.INTERFACE.MAC-ERR-LMT.                                 !!00666
                                                                       !00667
        04  mac-err-lmt             type binary 16.                    !00668
                                                                       !00669
*         IN-ERR-CNT contains an integer counter of all inbound       !!00670
*         transactions that have a MAC processing error.  It is used  !!00671
*         in threshold processing.                                    !!00672
                                                                       !00673
        04  in-err-cnt              type binary 16.                    !00674
                                                                       !00675
*         OUT-ERR-CNT contains an integer counter of all outbound     !!00676
*         transactions that have a MAC processing error.  It is used  !!00677
*         in threshold processing.                                    !!00678
                                                                       !00679
        04  out-err-cnt             type binary 16.                    !00680
                                                                       !00681
*         CONS-MAC-ERR-LMT contains the integer representation of     !!00682
*         KEYF.INTERFACE.CONS-MAC-ERR-LMT.                            !!00683
                                                                       !00684
        04  cons-mac-err-lmt        type binary 16.                    !00685
                                                                       !00686
*         IN-CONS-ERR-CNT contains an integer counter of consecutive  !!00687
*         inbound transactions that have a MAC processing error.  It  !!00688
*         is used in threshold processing.                            !!00689
                                                                       !00690
        04  in-cons-err-cnt         type binary 16.                    !00691
                                                                       !00692
*         OUT-CONS-ERR-CNT contains an integer counter of consecutive !!00693
*         outbound transactions that have a MAC processing error.  It !!00694
*         is used in threshold processing.                            !!00695
                                                                       !00696
        04  out-cons-err-cnt        type binary 16.                    !00697
                                                                       !00698
*         KMAC-SYNC-ERR-LMT contains the integer representation of    !!00699
*         KEYF.INTERFACE.KMAC-SYNC-ERR-LMT.                           !!00700
                                                                       !00701
        04  kmac-sync-err-lmt       type binary 16.                    !00702
                                                                       !00703
*         IN-KMAC-SYNC-ERR-CNT contains an integer counter of         !!00704
*         inbound transactions that have a KMAC sync error.  It       !!00705
*         is used in threshold processing.                            !!00706
                                                                       !00707
        04  in-kmac-sync-err-cnt    type binary 16.                    !00708
                                                                       !00709
*         OUT-KMAC-SYNC-ERR-CNT contains an integer counter of        !!00710
*         outbound transactions that have a KMAC sync error.  It      !!00711
*         is used in threshold processing.                            !!00712
                                                                       !00713
        04  out-kmac-sync-err-cnt   type binary 16.                    !00714
                                                                       !00715
    02  saf.                                                           !00716
        04  fcb                     type *.                            !00717
        04  ctr                     type binary 32.                    !00718
        04  addr                    type binary 32.                    !00719
        04  pending                 type binary 16.                    !00720
        04  ferror                  type binary 16.                    !00721
        04  retry-max               type binary 16.                    !00722
        04  retry-ctr               type binary 16.                    !00723
                                                                       !00723F00
        04  sav-key                 type binary 64.                    !00723F01
                                                                       !00723F02
        04  reserved                type binary 16.                    !00724
    02  sta occurs 20 times.                                           !00725
        04  nam                     type binary 16 occurs 8 times.     !00726
        04  up                      type binary 16.                    !00727
        04  logon                   type binary 16.                    !00728
        04  traffic                 type binary 16.                    !00729
        04  pending                 type binary 16.                    !00730
        04  t-o-ctr                 type binary 16.                    !00731
        04  typ                     pic x.                             !00732
        04  reserved                pic x.                             !00733
    02  setl.                                                          !00734
        04  bic-tim                 type binary 16.                    !00735
        04  local-tim               type binary 16.                    !00736
        04  bic-dat                 type dat.                          !00737
        04  rpt-tim                 type binary 16.                    !00738
        04  rpt-pri                 type binary 16.                    !00739
        04  rpt-cpu                 type binary 16.                    !00740
        04  keep-ttls               type binary 16.                    !00741
        04  seven-days              type binary 16.                    !00742
        04  holiday                 type dat occurs 16 times.          !00743
    02  crncy.                                                         !00744
        04  buy-rate                pic x(8).                          !00745
        04  sell-rate               pic x(8).                          !00746
    02  ilf.                                                           !00747
        04  ferror                  type binary 16.                    !00748
        04  cur                     type ilf-info.                     !00749
        04  fltg                    type ilf-info.                     !00750
        04  nxt.                                                       !00751
            06  dat                 type *.                            !00752
                                                                       !00752C00
    02  ilf-frmt2.                                                     !00752C01
        04  cur                     type ilf-info-frmt2.               !00752C02
        04  fltg                    type ilf-info-frmt2.               !00752C03
                                                                       !00752C04
    02  itf.                                                           !00753
        04  fcb                     type *.                            !00754
        04  updt-max-trans          type binary 16.                    !00755
        04  updt-trans-ctr          type binary 32.                    !00756
end.                                                                   !00757
                                                                       !00758
?SECTION TTL-TBL
?PAGE "TTL Table Format"
Definition ttl-tbl.                                                    !00763
    02  cur.                                                           !00764
        04  dat                 type *.                                !00765
        04  acq                 type ttl.                              !00766
        04  iss                 type ttl.                              !00767
        04  itf-stat            type binary 16.                        !00768
        04  acq-stat            type binary 16.                        !00769
        04  iss-stat            type binary 16.                        !00770
    02  prev.                                                          !00771
        04  dat                 type *.                                !00772
        04  acq                 type ttl.                              !00773
        04  iss                 type ttl.                              !00774
        04  itf-stat            type binary 16.                        !00775
        04  acq-stat            type binary 16.                        !00776
        04  iss-stat            type binary 16.                        !00777
    02  nxt.                                                           !00778
        04  dat                 type *.                                !00779
        04  acq                 type ttl.                              !00780
        04  iss                 type ttl.                              !00781
        04  itf-stat            type binary 16.                        !00782
        04  acq-stat            type binary 16.                        !00783
        04  iss-stat            type binary 16.                        !00784
end.                                                                   !00785
                                                                       !00786
?SECTION ITF
?PAGE "Interchange Totals File"
Record itf.                         File is "ITF" key-sequenced.       !00791
    02  prikey                      keytag 0.                          !00792
        04  swi-typ                 pic x(4).                          !00793
        04  fiid                    type *.                            !00794
    02  prev.                                                          !00795
        04  dat                     type *.                            !00796
        04  acq-ttl                 type ttl.                          !00797
        04  iss-ttl                 type ttl.                          !00798
        04  itf-stat                type binary 16.                    !00799
        04  acq-stat                type binary 16.                    !00800
        04  iss-stat                type binary 16.                    !00801
    02  cur.                                                           !00802
        04  dat                     type *.                            !00803
        04  acq-ttl                 type ttl.                          !00804
        04  iss-ttl                 type ttl.                          !00805
        04  itf-stat                type binary 16.                    !00806
        04  acq-stat                type binary 16.                    !00807
        04  iss-stat                type binary 16.                    !00808
    02  nxt.                                                           !00809
        04  dat                     type *.                            !00810
        04  acq-ttl                 type ttl.                          !00811
        04  iss-ttl                 type ttl.                          !00812
        04  itf-stat                type binary 16.                    !00813
        04  acq-stat                type binary 16.                    !00814
        04  iss-stat                type binary 16.                    !00815
    02  ilf-info                    occurs 4 times.                    !00816
        04  closed-flg              type binary 16.                    !00817
        04  dat                     type *.                            !00818
        04  last-rec-addr           type binary 32.                    !00819
        04  last-rvsl-addr          type binary 32.                    !00820
                                                                       !00820C00
    02  ilf-info-frmt2              occurs 4 times.                    !00820C01
        04  last-rec-addr           type binary 64.                    !00820C02
        04  last-rvsl-addr          type binary 64.                    !00820C03
                                                                       !00820C04
end.                                                                   !00821
                                                                       !00822
?SECTION HDR
?PAGE "BIC ISO Message Header"
Definition hdr.                                                        !00827
    02  strt-of-txt                 pic x(3).                          !00828
    02  prod-ind                    pic x(2).                          !00829
    02  rel-num                     pic x(2).                          !00830
    02  stat                        pic x(3).                          !00831
    02  orig-resp                   pic x(2).                          !00832
    02  typ                         pic x(4).                          !00833
    02  pbit-map                    pic x(16).                         !00834
    02  sbit-map                    pic x(16).                         !00835
end.                                                                   !00836
                                                                       !00837
?SECTION PRIKEY
?PAGE "PRIKEY DEFINITION"
Definition prikey.                                                     !00842
    02  tran-tim                    type binary 32.                    !00843
    02  pan                         pic x(19).                         !00844
    02  ref-num                     pic x(12).                         !00845
    02  tran-dat                    pic x(4).                          !00846
    02  term-id                     pic x(16).                         !00847
end.                                                                   !00848
                                                                       !00849
?SECTION SUSPENSE
?PAGE "SUSPENSE DEFINITION"
Definition susp-bici.                                                  !00854
    02  prikey                      type *.                            !00855
    02  user-fld1                   pic x.                             !00856
    02  rec-typ                     type binary 16.                    !00857
    02  orig-net-pro                type binary 16                     !00858
                                    occurs 8 times.                    !00859
    02  msg                         type binary 16                     !00860
                                    occurs 1990 times.                 !00861
    02  msg-lgth                    type binary 16.                    !00862
end.                                                                   !00863
                                                                       !00864
?SECTION TRAN
?PAGE "TRANSACTION DEFINITION"
Definition tran.                                                       !00869
    02  b24                         pic x(6).                          !00870
    02  ims                         pic x(9).                          !00871
    02  length                      type binary 16.                    !00872
end.                                                                   !00873
                                                                       !00873C00
?SECTION BICI-SWI-TKN-DATA
?PAGE "BIC ISO Switch Token"
*********************************************************************  !00873C05
*                                                                   *  !00873C06
*                       BIC ISO Switch Token                        *  !00873C07
*                                                                   *  !00873C08
*  This definition reflects the changes necessary to support the    *  !00873C09
*  Switch Token in the BIC ISO Interface.                           *  !00873C0A
*                                                                   *  !00873C0B
*********************************************************************  !00873C0C
                                                                       !00873C0D
definition bici-swi-tkn-data.                                          !00873C0E
                                                                       !00873C0F
*         The length of the token data (includes the FIID and the data !00873C0G
*         present in the data buffer).                                 !00873C0H
    02  lgth                        type binary 16.                    !00873C0I
                                                                       !00873C0J
*         The FIID assigned to the interface.  The value in the FIID   !00873C0K
*         will match the value in the Interchange Configuration File   !00873C0L
*         (ICF/ICFE).                                                  !00873C0M
    02  fiid                        pic x(4).                          !00873C0N
                                                                       !00873C0O
*         BIC ISO specific data used in the Switch Token.              !00873C0P
    02  buf                         pic x(20).                         !00873C0Q
                                                                       !00873C0R
*         BIC ISO specific data used in the Switch Token.              !00873C0S
    02  bici                        redefines buf.                     !00873C0T
                                                                       !00873C0U
        04  ver                     pic x(2).                          !00873C0V
                                                                       !00873C0W
*         Bit map position = 7  ( Transmission Date and Time).         !00873C0X
        04  swi-txn-dat-tim         pic x(10).                         !00873C0Y
                                                                       !00873C0Z
*         Bit map position = 11 ( System Trace Audit Number ).         !00873C0a
        04  trace-num               pic x(6).                          !00873C0b
                                                                       !00873C0c
*         Bit map position = 39 ( Response Code ).                     !00873C0d
        04  resp-cde                pic x(2).                          !00873C0e
end.                                                                   !00873C0f
                                                                       !00873C0g
