**FIX2.28  12/22/09  DDLGPTD 6006 DDL    PS60DDL  PS0D302  F                 ***
**FIX2.28  12/03/08  DDLGPTD 6005 DDL    PS60DDL  PS0C310  E                 ***
**FIX2.28  11/23/06  DDLGPTD 6004 DDL    PS60DDL  PS0A303  D                 ***
**FIX2.23  11/11/03  DDLGPTD 6003 DDL    PS60DDL  PS07087  C                 ***
**FIX2.23  02/13/03  DDLGPTD 6002 DDL    PS60DDL  PS06079  B                 ***
**FIX2.14  03/27/01  DDLGPTD 6001 DDL    PS60DDL  PS04172  A                 ***
!*SEQ2.00  01/03/01  DDLGPTD 6000 DDL    PS60DDL                               !
?page  "PTDX - BASE24-pos Terminal Data files Pathway format"
?section ptdx-history
                                                                       !00000F00
********************************************************************** !00000F01
*                                                                    * !00000F02
*                             BASE24-pos                             * !00000F03
*                             ----------                             * !00000F04
*                                                                    * !00000F05
*      DDL for the BASE24-pos Terminal Data files Pathway format     * !00000F06
*                                                                    * !00000F07
*                   Proprietary Software Product                     * !00000F08
*                                                                    * !00000F09
*                        ACI Worldwide, Inc.                         * !00000F0A
*                        6060 Coventry Drive                         * !00000F0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000F0C
*                          (402) 390-7600                            * !00000F0D
*                                                                    * !00000F0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000F0F
*                                                                    * !00000F0G
*    All Rights Reserved.                                            * !00000F0H
*                                                                    * !00000F0I
********************************************************************** !00000F0J
                                                                       !00000F0K
                                                                       !00005F00
                                                                       !00005F01
                                                                       !00005F02
*                                                                     !!00031
* Record of Changes:                                                  !!00032
*                                                                     !!00033
* Date        Person/Emp #                                            !!00034
* ---------   ------------                                            !!00035
**********************************************************************!!00036
*             Release 6.0                                            *!!00037
**********************************************************************!!00038
* 30NOV2000   ckc/163                                                 !!00039
* Symptom:    Release 6.0 Enhancements                                !!00040
* Problem:    None.                                                   !!00041
* Fix:        Initial Release.                                        !!00042
*             Created PTDX for Pathway message that handles both      !!00043
*             the PTDF and PTD file formats.                          !!00044
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00045
*             CUSTMACS flags, and run MAKE.                           !!00046
* Reference:  WO #981118-3 (Transactions Allowed)                     !!00047
*             WO #990108-1 (PTDF Expansion)                           !!00048
*             WO #000616-1 (Product Separation)                       !!00049
                                                                       !00049A00
* 30MAR2001   ckc/163                                                  !00049A01
* Symptom:    Added 5.3 EMV/MC Support.                                !00049A02
* Problem:    None.                                                    !00049A03
* Fix:        Added the following fields:                              !00049A04
*                 MULT-THREAD-SPDH                                     !00049A05
*                 STAT-RSN-CDE                                         !00049A06
*                 MULT-CRNCY-TTL                                       !00049A07
*                 SFTWR-REL                                            !00049A08
*                 PRE-COMM-FLR-LMT                                     !00049A09
*                 POST-COMM-FLR-LMT                                    !00049A0A
*                 PRE-COMM-LMT-FLG                                     !00049A0B
*                 POST-COMM-LMT-FLG                                    !00049A0C
*                 EMV-TERM-CAP                                         !00049A0D
*                 KEYD-GRP                                             !00049A0E
*             Added the following fields to LK-DATA-PKG:               !00049A0F
*                 EMV-TERM-CAP                                         !00049A0G
*             Modified the following structure in LK-DATA-PKG:         !00049A0H
*                 OVERLY2                                              !00049A0I
*                 Added subfield:     MULT-CRNCY-TTL-DESCR             !00049A0J
*                 Modified subfield:  USER-FLD-OVRLY2                  !00049A0K
*             Added the following structure to LK-DATA-PKG:            !00049A0L
*                 OVERLY19                                             !00049A0M
* Dependency: Restore Release 6.0 files, modify the appropriate        !00049A0N
*             CUSTMACS flags, and run MAKE.                            !00049A0O
* Reference:  WO #990405-01 (Multicurrency 5.3/6.0 Uplift)             !00049A0P
*             WO #000101-1  (General Release 6.0)                      !00049A0Q
*             WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00049A0R
*             WO #010308-01 (Italian Product)                          !00049A0S
                                                                       !00049A0T
                                                                       !00049B00
* 07FEB2003   JJD/615                                                  !00049B01
* Symptom:    POS Enhancements.                                        !00049B02
* Problem:    None.                                                    !00049B03
* Fix:        Added support for the fields MAC-PENDING-FLG, PIN-       !00049B04
*             PENDING-FLG, DATA-PENDING-FLG, DPC-NUM, RCNCL-ENT,       !00049B05
*             ENHNC-PRE-AUTH-FLG, PRE-AUTH-CHRGBCK-FLG,                !00049B06
*             BAL-RTRN-FLG and DATA-ENCRYPT-TYP to the PTDX            !00049B07
*             definition. Removed USER-FLD4 from the PTDX definition.  !00049B08
*             Modified the following structures in LK-DATA-PKG:        !00049B09
*                 OVERLY6                                              !00049B0A
*                 Added subfields RCNCL-ENT-DESCR, ENHNC-PRE-AUTH-     !00049B0B
*                 DESCR and PRE-AUTH-CHRGBCK-DESCR                     !00049B0C
*                 Modified subfield USER-FLD-OVRLY6.                   !00049B0D
*                                                                      !00049B0E
*                 OVERLY7                                              !00049B0F
*                 Added subfield DATA-ENCR-TYP-DESCR                   !00049B0G
*                 Modified subfield USER-FLD-OVRLY7                    !00049B0H
* Dependency: Apply fix to DDLGPTD and remake. Refer to                !00049B0I
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00049B0J
* Reference:  WO #020606-01                                            !00049B0K
                                                                       !00049C00
* 15OCT2003   RKK/299                                                  !00049C01
* Symptom:    SPDH Enhanced Multi-Threading                            !00049C02
* Problem:    None.                                                    !00049C03
* Fix:        Added REC-TYP-DESCR                                      !00049C04
* Dependency: Apply fix to DDLGPTD and remake.  Refer to               !00049C05
*             BA60UD07.SCNSEMT for a complete listing of dependencies. !00049C06
* Reference:  WO #001109-01                                            !00049C07
                                                                       !00049C08
* 15OCT2003   sjt/272                                                  !00049C09
* Symptom:    Dual Site Processing                                     !00049C0A
* Problem:    None.                                                    !00049C0B
* Fix:        Add field DUAL-SITE-IND and remove USER-FLD3.            !00049C0C
*             Add DUAL-SITE-DESCR and modify USER-FLD-OVRLY1.          !00049C0D
* Dependency: Apply fix to DDLGPTD and run MAKE. Refer to              !00049C0E
*             BA60UD07.SCNDUALS for a complete listing of              !00049C0F
*             dependencies.                                            !00049C0G
* Reference:  WO #030930-01                                            !00049C0H
                                                                       !00049C0I
* 15OCT2003   RKK/299                                                  !00049C0J
* Symptom:    SPDH Additional Data Fields                              !00049C0K
* Problem:    None.                                                    !00049C0L
* Fix:        Added TERM-ATTEND-IND, TERM-LOC-IND, CRD-CAPTR-IND,      !00049C0M
*             CRDHLDR-ACTVT-TERM-IND, TERM-INPUT-CAP-IND and           !00049C0N
*             description fields in OVRLY19.                           !00049C0O
* Dependency: Apply fix to DDLGPTD and remake.                         !00049C0P
*             Refer to BA60UD07.SCNSADF for a complete listing of      !00049C0Q
*             dependencies.                                            !00049C0R
* Reference:  WO #001109-02                                            !00049C0S
                                                                       !00049C0T
                                                                       !00049D00
* 14OCT2006   jaganas                                                  !00049D01
* Symptom:    Add Additional Values to PTD/ATD Enhancement.            !00049D02
* Problem:    None                                                     !00049D03
* Fix:        Added TERM-OUTPUT-CAP-IND, CRDHLDR-AUTHN-CAP-IND,        !00049D04
*             TERM-OUTPUT-CAP-IND-DESCR, CRDHLDR-AUTHN-CAP-IND-DESCR.  !00049D05
*             Modified TBL-LOOK-UP-GRP, USER-FLD-OVRLY1,               !00049D06
*             USER-FLD-OVRLY2, USER-FLD-OVRLY3, USER-FLD-OVRLY4,       !00049D07
*             USER-FLD-OVRLY5, USER-FLD-OVRLY6, USER-FLD-OVRLY7,       !00049D08
*             USER-FLD-OVRLY18 and USER-FLD-OVRLY19.                   !00049D09
* Dependency: Apply fix to DDLGPTD and run Make. Refer to              !00049D0A
*             BA60UD0A.SCNPTD for a complete listing of dependencies.  !00049D0B
* Reference:  WO #051128-05                                            !00049D0C
                                                                       !00049D0D
                                                                       !00049B0L
                                                                       !00049E00
* 17OCT2008   MhaskaS                                                  !00049E01
* Symptom:    MSD/CVN 17 Support.                                      !00049E02
* Problem:    None.                                                    !00049E03
* Fix:        Added CTLS-INPUT-CAP-IND.                                !00049E04
* Dependency: Apply fix to DDLGPTD and run Make. Refer to              !00049E05
*             BA60UD0C.SCNCV17 for a complete listing of dependencies. !00049E06
* Reference:  WO #080703-01                                            !00049E07
                                                                       !00049E08
                                                                       !00049F00
* 06NOV2009   GangarJ                                                  !00049F01
* Symptom:    Network 2008 Mandates for POS Acquiring.                 !00049F02
* Problem:    None.                                                    !00049F03
* Fix:        Increased the size of the PRE-AUTH-LESS-FLG-DESCR        !00049F04
*             field to 17 bytes and thereby decreased the size of      !00049F05
*             the USER-FLD-OVRLY6 field by 4 bytes.                    !00049F06
* Dependency: Apply fix to DDLGPTD and run Make.                       !00049F07
*             Refer to BA60UD0D.SCNNETM for a complete listing of      !00049F08
*             dependencies.                                            !00049F09
* Reference:  WO #080605-01                                            !00049F0A
                                                                       !00049F0B
**********************************************************************!!00050
                                                                       !00051
?section ptdx
?setsection ptdx
**********************************************************************!!00056
*                                                                    *!!00057
*              BASE24-pos Terminal Data file - Pathway format        *!!00058
*                                                                    *!!00059
*   Changes to the PTDF or PTD DDLs must be reflected here.          *!!00060
*                                                                    *!!00061
**********************************************************************!!00062
                                                                       !00063
?comments
                                                                       !00066
*             The PTDX structure is used by the PTD requester and     !!00067
*             server to handle processing of the data fields for both !!00068
*             the PTDF and PTD file structures.                       !!00069
*                                                                     !!00070
*             The terminal data for the strategic device handlers     !!00071
*             is maintained in the PTD files.  The PTD record         !!00072
*             layouts do not contain a hard-coded maximum size for    !!00073
*             device specific data.  Instead, the PTD record layouts  !!00074
*             are defined based on the requirements of each device    !!00075
*             handler.  Therefore, these terminals have a separate    !!00076
*             DEV-DATA area.                                          !!00077
*                                                                     !!00078
*             The terminal data for the non-strategic device handlers !!00079
*             is maintained in the PTDF.  The PTDF record layout      !!00080
*             contains a hard-coded maximum size for device specific  !!00081
*             data.  These terminals have a separate DEV-DATA area.   !!00082
*                                                                     !!00083
*             Please refer to the PTD and PTDF definitions for field  !!00084
*             descriptions.                                           !!00085
                                                                       !00086
DEFINITION PTDX.                                                       !00087
                                                                       !00088
02 TERM-ID                              TYPE TDF-PRIKEY.               !00089
02 DH-PRO-NAME                          TYPE SYM-NAME.                 !00090
                                                                       !00091
02 TERM-OWNER.                                                         !00092
   04 LN                                TYPE *.                        !00093
   04 FIID                              TYPE *.                        !00094
   04 RETAILER-GRP                      PIC X(4).                      !00095
   04 RETAILER-REGN                     TYPE REGN.                     !00096
   04 RETAILER-ID                       PIC X(19).                     !00097
                                                                       !00098
02 USER-FLD1                            PIC X.                         !00099
                                                                       !00099A00
02 MULT-THREAD-SPDH.                                                   !00099A01
   04 SITE-ID                           PIC X(16).                     !00099A02
   04 REC-TYP                           PIC X.                         !00099A03
   04 USER-FLD1-MULT-THREAD             PIC X.                         !00099A04
                                                                       !00099A05
02 DYN-LAST-AFM                         TYPE LAST-AFM.                 !00100
02 STAT-LAST-AFM                        TYPE LAST-AFM.                 !00101
02 LAST-TRAN                            TYPE LAST-TRAN.                !00102
02 DYN-CORE-LGTH                        TYPE BINARY 16.                !00103
02 DYN-DEV-INFO-OFST                    TYPE BINARY 16.                !00104
02 DYN-DEV-INFO-LGTH                    TYPE BINARY 16.                !00105
02 DYN-DEV-DATA-OFST                    TYPE BINARY 16.                !00106
02 DYN-DEV-DATA-LGTH                    TYPE BINARY 16.                !00107
02 STATIC-CORE-LGTH                     TYPE BINARY 16.                !00108
02 STATIC-DEV-INFO-OFST                 TYPE BINARY 16.                !00109
02 STATIC-DEV-INFO-LGTH                 TYPE BINARY 16.                !00110
02 STATIC-DEV-DATA-OFST                 TYPE BINARY 16.                !00111
02 STATIC-DEV-DATA-LGTH                 TYPE BINARY 16.                !00112
                                                                       !00113
02 RTTN                                 TYPE ID-NUM.                   !00114
02 TERM-GRP                             PIC X(4).                      !00115
02 TERM-TYP                             PIC X(2).                      !00116
02 PIN-PAD-CHAR                         PIC X.                         !00117
                                                                       !00118
02 ENCR-PIN.                                                           !00119
   04 PIN-VAL-TERM                      PIC X.                         !00120
   04 PIN-ENCRYPT-TYP                   PIC X(2).                      !00121
   04 ENCR-KEYS.                                                       !00122
      06 M-KEY                          TYPE KEYX.                     !00123
      06 P-KEY                          TYPE KEYX.                     !00124
                                                                       !00125
02 KEY-LGTH                             PIC X.                         !00126
                                                                       !00127
02 MAC-DATA.                                                           !00128
   04 MAC-ENCRYPT-TYP                   PIC X(2).                      !00129
   04 ENCR-KEYS.                                                       !00130
      06 MAS-KEY                        PIC X(16).                     !00131
      06 MAC-KEY                        PIC X(16).                     !00132
                                                                       !00133
02 DES-WORK-AREA                        TYPE BINARY 16                 !00134
                                        OCCURS 52 TIMES.               !00135
                                                                       !00136
02 M-KEY-CHK-VALUE                      PIC X(3).                      !00137
02 MAS-KEY-CHK-VALUE                    PIC X(3).                      !00138
02 CRNCY-CDE                            TYPE *.                        !00139
02 DEACTIVATE-FLG                       PIC X.                         !00140
02 TIM-OFST                             TYPE BINARY 16.                !00141
02 TRAN-SEQ-NUM                         TYPE BINARY 64.                !00142
02 NUM-SRV                              TYPE BINARY 16.                !00143
                                                                       !00144
02 SRV                                  OCCURS 30 TIMES.               !00145
   04 TYP                               PIC X(2).                      !00146
   04 NP-FLR-LMT                        TYPE BINARY 32.                !00147
   04 CA-FLR-LMT                        TYPE BINARY 32.                !00148
   04 MO-FLR-LMT                        TYPE BINARY 32.                !00149
   04 TRAN-LMT                          TYPE BINARY 32.                !00150
   04 DB-CNT                            TYPE BINARY 16.                !00151
   04 DB                                TYPE BINARY 64.                !00152
   04 CR-CNT                            TYPE BINARY 16.                !00153
   04 CR                                TYPE BINARY 64.                !00154
   04 ADJ-CNT                           TYPE BINARY 16.                !00155
   04 ADJ                               TYPE BINARY 64.                !00156
   04 TRAN-PROFILE                      PIC X.                         !00157
   04 ELEC-FOLLOWUP                     PIC X.                         !00158
                                                                       !00159
02 POST-DAT                             TYPE DAT.                      !00160
02 BAL-FLG                              PIC X.                         !00161
02 USER-FLD2                            PIC X.                         !00162
02 LAST-SETL-DAT                        TYPE BINARY 32.                !00163
02 LAST-SETL-TIM                        TYPE BINARY 16.                !00164
02 CLERK-ID                             PIC X(6).                      !00165
02 BILLING-INFO                         PIC X(10).                     !00166
                                                                       !00167
02 CLERK-TOTS.                                                         !00168
   04 DB-CNT                            TYPE BINARY 16.                !00169
   04 DB-AMT                            TYPE BINARY 64.                !00170
   04 CR-CNT                            TYPE BINARY 16.                !00171
   04 CR-AMT                            TYPE BINARY 64.                !00172
   04 ADJ-CNT                           TYPE BINARY 16.                !00173
   04 ADJ-AMT                           TYPE BINARY 64.                !00174
   04 CASH-CNT                          TYPE BINARY 16.                !00175
   04 CASH-AMT                          TYPE BINARY 64.                !00176
   04 CHK-CNT                           TYPE BINARY 16.                !00177
   04 CHK-AMT                           TYPE BINARY 64.                !00178
                                                                       !00179
02 BATCH.                                                              !00180
   04 DB-CNT                            TYPE BINARY 16.                !00181
   04 DB                                TYPE BINARY 64.                !00182
   04 CR-CNT                            TYPE BINARY 16.                !00183
   04 CR                                TYPE BINARY 64.                !00184
   04 ADJ-CNT                           TYPE BINARY 16.                !00185
   04 ADJ                               TYPE BINARY 64.                !00186
                                                                       !00187
02 BATCH-DC.                                                           !00188
   04 DB-CNT                            TYPE BINARY 16.                !00189
   04 DB                                TYPE BINARY 64.                !00190
   04 CR-CNT                            TYPE BINARY 16.                !00191
   04 CR                                TYPE BINARY 64.                !00192
   04 ADJ-CNT                           TYPE BINARY 16.                !00193
   04 ADJ                               TYPE BINARY 64.                !00194
                                                                       !00195
02 SHIFT.                                                              !00196
   04 DB-CNT                            TYPE BINARY 16.                !00197
   04 DB                                TYPE BINARY 64.                !00198
   04 CR-CNT                            TYPE BINARY 16.                !00199
   04 CR                                TYPE BINARY 64.                !00200
   04 ADJ-CNT                           TYPE BINARY 16.                !00201
   04 ADJ                               TYPE BINARY 64.                !00202
                                                                       !00203
02 SHIFT-DC.                                                           !00204
   04 DB-CNT                            TYPE BINARY 16.                !00205
   04 DB                                TYPE BINARY 64.                !00206
   04 CR-CNT                            TYPE BINARY 16.                !00207
   04 CR                                TYPE BINARY 64.                !00208
   04 ADJ-CNT                           TYPE BINARY 16.                !00209
   04 ADJ                               TYPE BINARY 64.                !00210
                                                                       !00211
02 DAILY.                                                              !00212
   04 DB-CNT                            TYPE BINARY 16.                !00213
   04 DB                                TYPE BINARY 64.                !00214
   04 CR-CNT                            TYPE BINARY 16.                !00215
   04 CR                                TYPE BINARY 64.                !00216
   04 ADJ-CNT                           TYPE BINARY 16.                !00217
   04 ADJ                               TYPE BINARY 64.                !00218
                                                                       !00219
02 DAILY-DC.                                                           !00220
   04 DB-CNT                            TYPE BINARY 16.                !00221
   04 DB                                TYPE BINARY 64.                !00222
   04 CR-CNT                            TYPE BINARY 16.                !00223
   04 CR                                TYPE BINARY 64.                !00224
   04 ADJ-CNT                           TYPE BINARY 16.                !00225
   04 ADJ                               TYPE BINARY 64.                !00226
                                                                       !00227
02 CUR-NET.                                                            !00228
   04 DB-CNT                            TYPE BINARY 16.                !00229
   04 DB                                TYPE BINARY 64.                !00230
   04 CR-CNT                            TYPE BINARY 16.                !00231
   04 CR                                TYPE BINARY 64.                !00232
   04 ADJ-CNT                           TYPE BINARY 16.                !00233
   04 ADJ                               TYPE BINARY 64.                !00234
                                                                       !00235
02 CUR-NET-DC.                                                         !00236
   04 DB-CNT                            TYPE BINARY 16.                !00237
   04 DB                                TYPE BINARY 64.                !00238
   04 CR-CNT                            TYPE BINARY 16.                !00239
   04 CR                                TYPE BINARY 64.                !00240
   04 ADJ-CNT                           TYPE BINARY 16.                !00241
   04 ADJ                               TYPE BINARY 64.                !00242
                                                                       !00243
02 PRE-NET.                                                            !00244
   04 DB-CNT                            TYPE BINARY 16.                !00245
   04 DB                                TYPE BINARY 64.                !00246
   04 CR-CNT                            TYPE BINARY 16.                !00247
   04 CR                                TYPE BINARY 64.                !00248
   04 ADJ-CNT                           TYPE BINARY 16.                !00249
   04 ADJ                               TYPE BINARY 64.                !00250
                                                                       !00251
02 PRE-NET-DC.                                                         !00252
   04 DB-CNT                            TYPE BINARY 16.                !00253
   04 DB                                TYPE BINARY 64.                !00254
   04 CR-CNT                            TYPE BINARY 16.                !00255
   04 CR                                TYPE BINARY 64.                !00256
   04 ADJ-CNT                           TYPE BINARY 16.                !00257
   04 ADJ                               TYPE BINARY 64.                !00258
                                                                       !00259
02 TERM-CUTOVER-TC                      PIC 9.                         !00260
                                                                       !00261C00
02 DUAL-SITE-IND                        PIC X.                         !00261C01
                                                                       !00261C02
02 NUM-SHIFTS                           TYPE BINARY 16.                !00262
                                                                       !00263
02 TERM.                                                               !00264
   04 DAT                               TYPE BINARY 32.                !00265
   04 TIM                               TYPE BINARY 32.                !00266
                                                                       !00267
02 NUM-BATCHES                          TYPE BINARY 16.                !00268
02 SHIFT-NUM                            TYPE BINARY 16.                !00269
02 BATCH-NUM                            TYPE BINARY 16.                !00270
02 SEQ-NUM                              TYPE BINARY 16.                !00271
02 LOG-TOTALS                           PIC X.                         !00272
02 WAIT-CONFIRM-FLG                     PIC X.                         !00273
02 MAIL-DATA                            TYPE MAIL-CONF-DEF.            !00274
                                                                       !00274A00
02 STAT-RSN-CDE                         PIC X(2).                      !00274A01
                                                                       !00274A02
                                                                       !00274B00
02 MAC-PENDING-FLG                      PIC X.                         !00274B01
02 PIN-PENDING-FLG                      PIC X.                         !00274B02
02 DATA-PENDING-FLG                     PIC X.                         !00274B03
02 DATA-ENCRYPT-TYP                     PIC X(2).                      !00274B04
                                                                       !00274B05
                                                                       !00275
02 REL-NUM                              PIC 9(2).                      !00276
02 LOAD-FIL-NAM                         PIC X(35).                     !00277
                                                                       !00278B00
                                                                       !00278B01
02 LOG-RT-CDE                           TYPE BINARY 16.                !00279
02 TERM-NAM-LOC                         PIC X(25).                     !00280
                                                                       !00281
02 TERM-CITY-ST.                                                       !00282
   04 CITY                              PIC X(13).                     !00283
   04 ST                                PIC X(3).                      !00284
                                                                       !00285
02 CNTRY-CDE                            PIC X(2).                      !00286
02 ACQ-TXN-PRFL                         TYPE PRFL.                     !00287
02 TERM-OWNER-NAM                       PIC X(22).                     !00288
02 TERM-SIC-CDE                         PIC 9(4).                      !00289
                                                                       !00290
02 SRV-REP.                                                            !00291
   04 NAM                               PIC X(25).                     !00292
   04 ADDR                              PIC X(25).                     !00293
   04 CITY-ST                           PIC X(16).                     !00294
   04 CNTRY                             PIC X(2).                      !00295
   04 PHONE                             TYPE PHONE-NUM.                !00296
                                                                       !00297
                                                                       !00297A00
02 MULT-CRNCY-TTL                       PIC 9.                         !00297A01
                                                                       !00297A02
                                                                       !00298A00
                                                                       !00298A01
02 PRE-AUTH-HLD                         TYPE BINARY 16.                !00299
02 PRE-AUTH-DFT-AMT                     TYPE BINARY 32.                !00300
02 DFLT-CHK-ID                          PIC X(2).                      !00301
02 DFLT-TC                              PIC 9(2).                      !00302
02 APPRV-CDE-LGTH                       TYPE BINARY 16.                !00303
02 ADJ-LMT-CNT                          TYPE BINARY 16.                !00304
02 ADJ-LMT-AMT                          TYPE BINARY 64.                !00305
02 RETURN-LMT-CNT                       TYPE BINARY 16.                !00306
02 RETURN-LMT-AMT                       TYPE BINARY 64.                !00307
02 PRE-AUTH-LESS-AMT-FLG                PIC X.                         !00308
02 ADJ-FLG                              PIC X.                         !00309
02 SALES-DFT-FLG                        PIC X.                         !00310
02 TERM-PROTO                           PIC X.                         !00311
02 BAL-SUPPORT                          PIC 9.                         !00312
02 TKN-RETRV-OPT                        PIC X.                         !00313
02 LANGUAGE-IND                         TYPE BINARY 16.                !00314
02 CLERK-FLAG                           TYPE BINARY 16.                !00315
02 POSTAL-CDE                           TYPE *.                        !00316
                                                                       !00317
02 TERM-PHONE.                                                         !00318
   04 NUM                               TYPE PHONE-NUM.                !00319
   04 BAUD-RATE                         PIC 9(2).                      !00320
                                                                       !00321
02 RTE-GRP                              PIC X(11).                     !00322
02 COMPLETE-TRACK2-DATA                 PIC X.                         !00323
02 MAIL-PO-SIC-CDE                      PIC 9(4).                      !00324
02 CITY-EXT                             PIC X(5).                      !00325
02 CLERK-TTL-FLG                        PIC X.                         !00326
                                                                       !00326A00
02 SFTWR-REL                            PIC X(8).                      !00326A01
02 PRE-COMM-FLR-LMT                     TYPE BINARY 16.                !00326A02
02 POST-COMM-FLR-LMT                    TYPE BINARY 16.                !00326A03
02 PRE-COMM-LMT-FLG                     PIC 9.                         !00326A04
02 POST-COMM-LMT-FLG                    PIC 9.                         !00326A05
                                                                       !00326A06
02 EMV-TERM-CAP                         TYPE *.                        !00326A07
02 KEYD-GRP                             PIC X(4).                      !00326A08
                                                                       !00326A09
                                                                       !00326B00
02 DPC-NUM                              PIC X(4).                      !00326B01
02 RCNCL-ENT                            PIC X.                         !00326B02
02 ENHNC-PRE-AUTH-FLG                   PIC X.                         !00326B03
02 PRE-AUTH-CHRGBCK-FLG                 PIC X.                         !00326B04
02 BAL-RTRN-FLG                         PIC X.                         !00326B05
                                                                       !00326C00
02 TERM-ATTEND-IND                      PIC X.                         !00326C01
02 TERM-LOC-IND                         PIC X.                         !00326C02
02 CRD-CAPTR-IND                        PIC X.                         !00326C03
02 CRDHLDR-ACTVT-TERM-IND               PIC X.                         !00326C04
02 TERM-INPUT-CAP-IND                   PIC X.                         !00326C05
                                                                       !00326D00
02 TERM-OUTPUT-CAP-IND                  PIC X.                         !00326D01
02 CRDHLDR-AUTHN-CAP-IND                PIC X.                         !00326D02
                                                                       !00326D03
                                                                       !00326E00
02 CTLS-INPUT-CAP-IND                   PIC X.                         !00326E01
                                                                       !00326E02
                                                                       !00326C07
                                                                       !00326B06
                                                                       !00327
02 DYN-DATA-AREA                        PIC X(3928).                   !00328
                                                                       !00329
*             This redefinition is used for the PTDF fields           !!00330
*             not supported in the PTD files.                         !!00331
                                                                       !00332
02 PTDF-BUF       REDEFINES DYN-DATA-AREA.                             !00333
   04 DDD                               PIC X(900).                    !00334
                                                                       !00335
   04 TKN-BUF                           PIC X(450).                    !00336
   04 CRDS-RET                          TYPE BINARY 16.                !00337
   04 RECONCILE-MODE                    PIC X.                         !00338
   04 CUST-BAL-DSPY                     PIC 9.                         !00339
   04 BEG-TRAN-CNTL-NUM                 TYPE BINARY 32.                !00340
   04 END-TRAN-CNTL-NUM                 TYPE BINARY 32.                !00341
                                                                       !00342
   04 ALLOWED-TRANS                     PIC X OCCURS 30 TIMES.         !00343
   04 BATCH-CUTOVER-CNT                 TYPE BINARY.                   !00344
                                                                       !00345
   04 AFS.                                                             !00346
      06 SRV-MODE                       PIC X.                         !00347
                                                                       !00348
   04 USER-FLD-PTDF-BUF                 PIC X(2533).                   !00349
                                                                       !00350
*             Start of common area.                                   !!00351
                                                                       !00352
02 ERR-INFO.                                                           !00353
   04 OVERLAY-NUM                       TYPE BINARY 16.                !00354
   04 ERR-CNT                           TYPE BINARY 16.                !00355
                                                                       !00356
   04 SCRN-TBL                          OCCURS 45 TIMES.               !00357
      06 FLD-IDX                        TYPE BINARY 16.                !00358
                                                                       !00359
02 ERR-POSN-IND                         TYPE BINARY 16                 !00360
                                        OCCURS 45 TIMES.               !00361
                                                                       !00362
02 FUNC-KEY                             PIC X(2).                      !00363
02 SCRN-ACCESS-INFO-LGNT                PIC X(288).                    !00364
                                                                       !00365
02 LK-DATA-PKG.                                                        !00366
   04 TYPE-CNT-1                        TYPE BINARY 16.                !00367
   04 TYPE-CNT-2                        TYPE BINARY 16.                !00368
   04 TYPE-CNT-3                        TYPE BINARY 16.                !00369
   04 NEW-PG-NUM                        TYPE BINARY 16.                !00370
   04 NUM-OF-DECIMALS                   TYPE BINARY 16.                !00371
   04 SCRN-DEACTIVATE-FLG               PIC X.                         !00372
   04 SCRN-ADJ-LMT-AMT                  PIC X(16).                     !00373
   04 SCRN-RETURN-LMT-AMT               PIC X(16).                     !00374
   04 LOG-TOTALS.                                                      !00375
      06 LOG-TTL-BATCH                  PIC X.                         !00376
      06 LOG-TTL-SHIFT                  PIC X.                         !00377
      06 LOG-TTL-DAY                    PIC X.                         !00378
      06 LOG-TTL-NETWORK                PIC X.                         !00379
      06 LOG-TTL-SERVICE                PIC X.                         !00380
   04 SCRN-M-KEY-CHK-VALUE              PIC X(4).                      !00381
   04 SCRN-MAS-KEY-CHK-VALUE            PIC X(4).                      !00382
                                                                       !00382A00
   04 EMV-TERM-CAP                      TYPE EMV-TERM-CAP-COBOL.       !00382A01
                                                                       !00382A02
                                                                       !00383
                                                                       !00384D00
   04 TBL-LOOK-UP-GRP                   PIC X(240).                    !00384D01
                                                                       !00384D02
                                                                       !00385
   04 OVRLY1      REDEFINES TBL-LOOK-UP-GRP.                           !00386
      06 DFLT-CHK-ID-DESCR              PIC X(13).                     !00387
      06 DEACTIVATE-FLG-DESCR           PIC X(15).                     !00388
      06 TERM-PROTO-DESCR               PIC X(28).                     !00389
      06 TERM-TYPE-DESCR                PIC X(24).                     !00390
      06 BAUD-RATE-DESCR                PIC X(7).                      !00391
                                                                       !00391C00
      06 REC-TYP-DESCR                  PIC X(11).                     !00391C01
      06 DUAL-SITE-DESCR                PIC X(9).                      !00391C02
                                                                       !00391C03
                                                                       !00392C00
                                                                       !00392D00
      06 USER-FLD-OVRLY1                PIC X(133).                    !00392D01
                                                                       !00392D02
                                                                       !00392C02
                                                                       !00393
   04 OVRLY2      REDEFINES TBL-LOOK-UP-GRP.                           !00394
      06 CUST-BAL-DISPLAY-DESCR         PIC X(20).                     !00395
      06 RECONCILE-MODE-DESCR           PIC X(20).                     !00396
      06 CRNCY-CDE-ALL.                                                !00397
         08 USER-FLD-CRNCY              PIC X(7).                      !00398
         08 CRNCY-CDE-DESCR             PIC X(5).                      !00399
                                                                       !00399A00
      06 MULT-CRNCY-TTL-DESCR           PIC X(14).                     !00399A01
                                                                       !00399D00
      06 USER-FLD-OVRLY2                PIC X(174).                    !00399D01
                                                                       !00399D02
                                                                       !00399A03
                                                                       !00400A00
                                                                       !00400A01
                                                                       !00401
   04 OVRLY3      REDEFINES TBL-LOOK-UP-GRP.                           !00402
      06 TERM-CUTOVER-TC-DESCR          PIC X(27).                     !00403
      06 BAL-SUPPORT-DESCR              PIC X(24).                     !00404
                                                                       !00405D00
      06 USER-FLD-OVRLY3                PIC X(189).                    !00405D01
                                                                       !00405D02
                                                                       !00406
   04 OVRLY4      REDEFINES TBL-LOOK-UP-GRP.                           !00407
      06 BAL-FLG-DESCR                  PIC X(30).                     !00408
                                                                       !00409D00
      06 USER-FLD-OVRLY4                PIC X(210).                    !00409D01
                                                                       !00409D02
                                                                       !00410
   04 OVRLY5      REDEFINES TBL-LOOK-UP-GRP.                           !00411
      06 CLERK-FLG-DESCR                PIC X(17).                     !00412
                                                                       !00413D00
      06 USER-FLD-OVRLY5                PIC X(223).                    !00413D01
                                                                       !00413D02
                                                                       !00414
   04 OVRLY6      REDEFINES TBL-LOOK-UP-GRP.                           !00415
      06 DEFAULT-DESCR                  PIC X(20).                     !00416
      06 ADJ-FLG-DESCR                  PIC X(13).                     !00417
      06 SALES-DFT-FLG-DESCR            PIC X(13).                     !00418
      06 CLERK-TTL-FLG-DESCR            PIC X(13).                     !00419
                                                                       !00419F00
      06 PRE-AUTH-LESS-FLG-DESCR        PIC X(17).                     !00419F01
                                                                       !00419F02
                                                                       !00420F00
                                                                       !00420F01
      06 TKN-RETRV-OPT-DESCR            PIC X(9).                      !00421
                                                                       !00421B00
      06 RCNCL-ENT-DESCR                PIC X(20).                     !00421B01
      06 ENHNC-PRE-AUTH-DESCR           PIC X(16).                     !00421B02
      06 PRE-AUTH-CHRGBCK-DESCR         PIC X(15).                     !00421B03
                                                                       !00421D00
                                                                       !00421F00
      06 USER-FLD-OVRLY6                PIC X(104).                    !00421F01
                                                                       !00421F02
                                                                       !00421F03
                                                                       !00421F04
                                                                       !00421D02
                                                                       !00421B05
                                                                       !00422B00
                                                                       !00422B01
                                                                       !00423
   04 OVRLY7      REDEFINES TBL-LOOK-UP-GRP.                           !00424
      06 PIN-ENCR-TYP-DESCR             PIC X(30).                     !00425
      06 MAC-ENCR-TYP-DESCR             PIC X(30).                     !00426
                                                                       !00426B00
      06 DATA-ENCR-TYP-DESCR            PIC X(19).                     !00426B01
                                                                       !00426D00
      06 USER-FLD-OVRLY7                PIC X(161).                    !00426D01
                                                                       !00426D02
                                                                       !00426B03
                                                                       !00427B00
                                                                       !00427B01
                                                                       !00428
   04 OVRLY18     REDEFINES TBL-LOOK-UP-GRP.                           !00429
      06 DELIVERY-MDE-OUT-DESCR         PIC X(21).                     !00430
      06 DELIVERY-MDE-IN-DESCR          PIC X(21).                     !00431
      06 SCROLL-THRU-DESCR              PIC X(39).                     !00432
                                                                       !00433D00
      06 USER-FLD-OVRLY18               PIC X(159).                    !00433D01
                                                                       !00433D02
                                                                       !00433A00
   04 OVRLY19     REDEFINES TBL-LOOK-UP-GRP.                           !00433A01
      06 PRE-COMM-LMT-FLG-DESCR         PIC X(18).                     !00433A02
      06 POST-COMM-LMT-FLG-DESCR        PIC X(18).                     !00433A03
                                                                       !00433C00
      06 TERM-ATTEND-IND-DESCR          PIC X(30).                     !00433C01
      06 TERM-LOC-IND-DESCR             PIC X(30).                     !00433C02
      06 CRD-CAPTR-IND-DESCR            PIC X(13).                     !00433C03
      06 CRDHLDR-ACTVT-TERM-DESCR       PIC X(32).                     !00433C04
      06 TERM-INPUT-CAP-IND-DESCR       PIC X(30).                     !00433C05
                                                                       !00433C06
                                                                       !00433C07
                                                                       !00433E00
      06 CTLS-INPUT-CAP-IND-DESCR       PIC X(16).                     !00433E01
                                                                       !00433E02
                                                                       !00433D03
      06 TERM-OUTPUT-CAP-IND-DESCR      PIC X(22).                     !00433D04
      06 CRDHLDR-AUTHN-CAP-IND-DESCR    PIC X(31).                     !00433D05
                                                                       !00433E03
                                                                       !00433E04
                                                                       !00433D07
                                                                       !00433D08
                                                                       !00433D09
                                                                       !00433C09
                                                                       !00433A05
                                                                       !00434
END                                                                    !00435
                                                                       !00436
?setsection
