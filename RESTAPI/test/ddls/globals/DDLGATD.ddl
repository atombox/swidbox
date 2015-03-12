**FIX2.28  09/30/11  DDLGATD 6012 DDL    AT60DDL  AT0F041  L                 ***
**FIX2.28  12/22/09  DDLGATD 6011 DDL    AT60DDL  AT0D321  K                 ***
**FIX2.28  12/04/07  DDLGATD 6010 DDL    AT60DDL  AT0B321  J                 ***
**FIX2.26  11/17/05  DDLGATD 6009 DDL    AT60DDL  AT09334  I                 ***
**FIX2.24  11/18/04  DDLGATD 6008 DDL    AT60DDL  AT08223  H                 ***
**FIX2.23  11/10/03  DDLGATD 6007 DDL    AT60DDL  AT07174  G                 ***
**FIX2.23  02/26/03  DDLGATD 6006 DDL    AT60DDL  AT06307  F                 ***
**FIX2.23  02/25/03  DDLGATD 6005 DDL    AT60DDL  AT06272  E                 ***
**FIX2.23  02/06/03  DDLGATD 6004 DDL    AT60DDL  AT06224  D                 ***
**FIX2.23  12/08/02  DDLGATD 6003 DDL    AT60DDL  AT06109  C                 ***
**FIX2.22  06/12/02  DDLGATD 6002 DDL    AT60DDL  AT05310  B                 ***
**FIX2.17  11/11/01  DDLGATD 6001 DDL    AT60DDL  AT05036  A                 ***
!*SEQ2.00  01/03/01  DDLGATD 6000 DDL    AT60DDL                               !
?page "ATDX - BASE24-atm Terminal Data files Pathway format"
?section atdx-history
                                                                       !00000K00
********************************************************************** !00000K01
*                                                                    * !00000K02
*                             BASE24-atm                             * !00000K03
*                             ----------                             * !00000K04
*                                                                    * !00000K05
*      DDL for the BASE24-atm Terminal Data files Pathway format     * !00000K06
*                                                                    * !00000K07
*                   Proprietary Software Product                     * !00000K08
*                                                                    * !00000K09
*                        ACI Worldwide, Inc.                         * !00000K0A
*                        6060 Coventry Drive                         * !00000K0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000K0C
*                          (402) 390-7600                            * !00000K0D
*                                                                    * !00000K0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000K0F
*                                                                    * !00000K0G
*    All Rights Reserved.                                            * !00000K0H
*                                                                    * !00000K0I
********************************************************************** !00000K0J
                                                                       !00000K0K
                                                                       !00005K00
                                                                       !00005K01
                                                                       !00005K02
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
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00043
*             CUSTMACS flags, and run MAKE.                           !!00044
* Reference:  WO #981118-3 (Transactions Allowed)                     !!00045
*             WO #990108-1 (TDF Expansion)                            !!00046
*             WO #000616-1 (Product Separation)                       !!00047
                                                                       !00047A00
**********************************************************************!!00047A01
* 26SEP2001   MEP/2128                                                 !00047A02
* Symptom:    Release 6.0 EMV Support.                                 !00047A03
* Problem:    None.                                                    !00047A04
* Fix:        Added the following structure:                           !00047A05
*                 EMV-TERM-CAP                                         !00047A06
* Dependency: Restore Release 6.0 files, modify the appropriate        !00047A07
*             CUSTMACS flags, and run MAKE.                            !00047A08
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00047A09
                                                                       !00047B00
* 01JUN2002   JFP/1694  CKC/163                                        !00047B01
* Symptom:    Transaction Security Service Enhancement                 !00047B02
* Problem:    None.                                                    !00047B03
* Fix:        Added SEC-DEV-TYP and LN-IND fields to ATDX structure    !00047B04
*             so the requesters will know the value of the             !00047B05
*             SECURE-DEV-TYP and LN-IND LCONF parameters.              !00047B06
* Dependency: Apply fixes to DDLGATD, ATDTG, SVTDFLTG, SVTDFLTS,       !00047B07
*             RQATDS, SVATDTS, and all device specific requesters      !00047B08
*             and servers and run MAKE.                                !00047B09
* Reference:  WO #000211-01                                            !00047B0A
                                                                       !00047B0B
                                                                       !00047C00
* 21NOV2002   ml/298                                                   !00047C01
* Symptom:    ATD Infrastructure Enhancement.                          !00047C02
* Problem:    None.                                                    !00047C03
* Fix:        Added the TERM-LOC-IND for future use.                   !00047C04
* Dependency: Apply fix to DDLFATD, DDLGATD, SETLS, SVATDTS and run    !00047C05
*             MAKE.                                                    !00047C06
* Reference:  WO #000101-01 (General Release)                          !00047C07
* 21NOV2002   MEP/2128                                                 !00047C08
* Symptom:    Multiple Currency Dispense Enhancement                   !00047C09
* Problem:    None.                                                    !00047C0A
* Fix:        Added four occurrences of selection currency fields      !00047C0B
*             to ATDS1-CORE.  These are for the Diebold 10XX/478X      !00047C0C
*             and NCR 5XXX device handlers.                            !00047C0D
* Dependency: Apply fix to DDLFATD, DDLGATD, SVATDTS and run MAKE.     !00047C0E
* Reference:  WO #020716-03 (Multi-Currency ATM Dispense)              !00047C0F
*                                                                      !00047C0G
* 21NOV2002   CLR/451                                                  !00047C0H
* Symptom:    Dynamic Key Management Support                           !00047C0I
* Problem:    None.                                                    !00047C0J
* Fix:        Added the DKM structure to ATDD1-CORE.                   !00047C0K
* Dependency: Apply fix to DDLFATD, DDLGATD, SVATDTS and run MAKE.     !00047C0L
* Reference:  WO #020716-05 (General Security Enhancements)            !00047C0M
                                                                       !00047C0N
                                                                       !00047D00
* 29JAN2003   EDA/2121                                                 !00047D01
* Symptom:    Uplift Merchant Banking Center to Release 6.0            !00047D02
* Problem:    None.                                                    !00047D03
* Fix:        Added MBC, NUM-MX, AMT-MX, HOPR-RCD, and CRNCY-ACCPT.    !00047D04
* Dependency: Apply fixes to RQT10XXS, SCRN10XX, SV10XXTG,             !00047D05
*             SV10XXTM, SV10XXTS, RQATDS, SVATDTBL, SVATDTG,           !00047D06
*             SVATDTS, DDLGATD, C100DDLM, C100DDLS, and run MAKE.      !00047D07
*             Refer to BA60UD06.SCNMBC for a complete list of          !00047D08
*             dependencies.                                            !00047D09
* Reference:  WO #001008-01                                            !00047D0A
                                                                       !00047D0B
                                                                       !00047E00
* 05FEB2003   SAG/302                                                  !00047E01
* Symptom:    Offline PIN Management - Enhancement 04.                 !00047E02
* Problem:    None.                                                    !00047E03
* Fix:        Added SCRIPT-FLAGS to indicate what type of scripts      !00047E04
*             are being sent to the ATM.                               !00047E05
* Dependency: Apply fix to DDLFATD, DDLGATD and run MAKE.              !00047E06
*             Refer to BA60UD06.SCNPPN50 for a complete listing of     !00047E07
*             dependencies.                                            !00047E08
* Reference:  WO #020707-15                                            !00047E09
                                                                       !00047E0A
                                                                       !00047F00
* 21FEB2003   CLR/451                                                  !00047F01
* Symptom:    Dynamic Key Management Support in TDF.                   !00047F02
* Problem:    None.                                                    !00047F03
* Fix:        Added MAC-CONS-ERR-CNTR to DKM structure to support      !00047F04
*             DKM in the TDF.                                          !00047F05
* Dependency: Apply fix to DDLFTDF, DDLGATD, SVATDTS and run MAKE.     !00047F06
* Reference:  WO #020716-05 (General Security Enhancements)            !00047F07
                                                                       !00047F08
                                                                       !00047A0A
                                                                       !00047G00
* 15OCT2003   sjt/272                                                  !00047G01
* Symptom:    Dual Site Processing.                                    !00047G02
* Problem:    None.                                                    !00047G03
* Fix:        Added the DUAL-SITE-IND to ATDX structure                !00047G04
* Dependency: Apply fixes to DDLGATD and run MAKE. Refer to            !00047G05
*             BA60UC07.SCNDUALS for a complete listing of              !00047G06
*             dependencies.                                            !00047G07
* Reference:  WO #030930-01                                            !00047G08
                                                                       !00047G09
                                                                       !00047H00
* 15OCT2004   watsonl                                                  !00047H01
* Symptom:    Wincor NDC+ EMV Enhancement.                             !00047H02
* Problem:    None.                                                    !00047H03
* Fix:        Added the NATV-MSG-FRMT field to the ATDX structure.     !00047H04
* Dependency: Apply fix to DDLGATD and run MAKE. Refer to              !00047H05
*             BA60UD08.SCNIWN5 for a complete listing of dependencies. !00047H06
* Reference:  WO #020719-01.                                           !00047H07
                                                                       !00047H08
                                                                       !00047I00
* 14OCT2005   WisharJ                                                  !00047I01
* Symptom:    Shared 912 AKDS enhancement                              !00047I02
*             Shared NDC+ AKDS enhancement.                            !00047I03
* Problem:    None.                                                    !00047I04
* Fix:        Add the EPP-FRMT, HDWR and KEY-SIGNER fields to the      !00047I05
*             ATDX structure.                                          !00047I06
* Dependency: Apply fix to DDLGATD and run Make. Refer to              !00047I07
*             BA60UD09.SCNWDAK and BA60UD09.SCNWNAK for complete lists !00047I08
*             of dependencies.                                         !00047I09
* Reference:  WO #041129-01 (Shared 912 AKDS)                          !00047I0A
*             WO #030917-03 (Shared NDC+ AKDS).                        !00047I0B
                                                                       !00047I0C
                                                                       !00047J00
* 12OCT2007   WisharJ                                                  !00047J01
* Symptom:    Shared NDC+ BNA Support                                  !00047J02
* Problem:    None.                                                    !00047J03
* Fix:        Add the NIDF-PRFL field to the ATDX structure.           !00047J04
* Dependency: Apply fix to DDLGATD and run Make. Refer to              !00047J05
*             BA60UD0B.SCNWNBN for a complete listing of dependencies. !00047J06
* Reference:  WO #051129-01                                            !00047J07
*                                                                      !00047J08
* 12OCT2007   WisharJ                                                  !00047J09
* Symptom:    None.                                                    !00047J0A
* Problem:    Incorrect field description for NATV-MSG-FRMT.           !00047J0B
* Fix:        Modified comments only. Updated description              !00047J0C
*             of NATV-MSG-FRMT field.                                  !00047J0D
* Dependency: Apply fix to DDLGATD and run Make.                       !00047J0E
* Reference:  Case #429513                                             !00047J0F
                                                                       !00047J0G
                                                                       !00047K00
* 06NOV2009   DebS                                                     !00047K01
* Symptom:    Diebold Agilis 2.3 Upgrade.                              !00047K02
* Problem:    None.                                                    !00047K03
* Fix:        Added new field ENV-RJCT-CNT in the ATDX definition to   !00047K04
*             register the envelope rejects count.                     !00047K05
* Dependency: Apply fix to DDLGATD. Run Make.                          !00047K06
*             Refer to BA60UD0D.SCNDAU for a complete listing          !00047K07
*             of dependencies.                                         !00047K08
* Reference:  WO #090204-02                                            !00047K09
                                                                       !00047K0A
                                                                       !00047L00
* 27SEP2011   WisharJ                                                  !00047L01
* Symptom:    NCR Enhanced AKDS                                        !00047L02
* Problem:    None.                                                    !00047L03
* Fix:        Added the ENHANCED-SCHEME and VAR-LGTH-EPP-SN fields     !00047L04
*             to the ATDX structure.                                   !00047L05
* Dependency: Apply fix to DDLGATD.  Run Make.                         !00047L06
*             Refer to BA60UD0F.SCNRKL for a complete listing of       !00047L07
*             dependencies.                                            !00047L08
* Reference:  WO #001257                                               !00047L09
                                                                       !00047L0A
**********************************************************************!!00048
                                                                       !00049
?section atdx
?setsection atdx
**********************************************************************!!00054
*              BASE24-atm Terminal Data file - Pathway format        *!!00055
*                                                                    *!!00056
*   Changes to the TDF or ATD DDLs must be reflected here.           *!!00057
*                                                                    *!!00058
**********************************************************************!!00059
                                                                       !00060
?comments
                                                                       !00063
*             The ATDX structure is used by the ATD requester and     !!00064
*             server to handle processing of the data fields for both !!00065
*             the TDF and ATD file structures.                        !!00066
*                                                                     !!00067
*             The terminal data for the strategic device handlers     !!00068
*             is maintained in the ATD files.  The ATD record         !!00069
*             layouts do not contain a hard-coded maximum size for    !!00070
*             device specific data.  Instead, the ATD record layouts  !!00071
*             are defined based on the requirements of each device    !!00072
*             handler.                                                !!00073
*                                                                     !!00074
*             The terminal data for the non-strategic device handlers !!00075
*             is maintained in the TDF.  The TDF record layout        !!00076
*             contains a hard-coded maximum size for device specific  !!00077
*             data.  These terminals redefine the DYN-DEV-INFO and    !!00078
*             DYN-DEV-DATA areas of the ATDX definition.              !!00079
*                                                                     !!00080
*             Please refer to the ATD and TDF definitions for field   !!00081
*             descriptions.                                           !!00082
                                                                       !00083
DEFINITION ATDX.                                                       !00084
                                                                       !00085
 02 TERM                                TYPE TDF-PRIKEY.               !00086
                                                                       !00087
 02 TERM-OWNER.                                                        !00088
    04 LN                               TYPE *.                        !00089
    04 FIID                             TYPE *.                        !00090
    04 REGN-ID                          TYPE REGN.                     !00091
    04 BRCH-ID                          TYPE BRCH.                     !00092
                                                                       !00093
 02 DH-PRO-NAME                         TYPE SYM-NAME.                 !00094
                                                                       !00095
 02 DYN-LAST-AFM                        TYPE LAST-AFM.                 !00096
 02 STATIC-LAST-AFM                     TYPE LAST-AFM.                 !00097
                                                                       !00098
 02 LAST-TRAN                           TYPE *.                        !00099
                                                                       !00100
 02 DYN-CORE-LGTH                       TYPE BINARY 16.                !00101
 02 DYN-DEV-INFO-OFST                   TYPE BINARY 16.                !00102
 02 DYN-DEV-INFO-LGTH                   TYPE BINARY 16.                !00103
 02 DYN-DEV-DATA-OFST                   TYPE BINARY 16.                !00104
 02 DYN-DEV-DATA-LGTH                   TYPE BINARY 16.                !00105
                                                                       !00106
 02 STATIC-CORE-LGTH                    TYPE BINARY 16.                !00107
 02 STATIC-DEV-INFO-OFST                TYPE BINARY 16.                !00108
 02 STATIC-DEV-INFO-LGTH                TYPE BINARY 16.                !00109
 02 STATIC-DEV-DATA-OFST                TYPE BINARY 16.                !00110
 02 STATIC-DEV-DATA-LGTH                TYPE BINARY 16.                !00111
                                                                       !00112
 02 TERM-TYP                            PIC X(2).                      !00113
 02 LOG-RTE-CDE                         TYPE BINARY 16.                !00114
 02 ADM-PHONE                           TYPE PHONE-NUM.                !00115
 02 AUTH-PRO-NAME                       TYPE SYM-NAME.                 !00116
 02 INST-ID-NUM                         TYPE ID-NUM.                   !00117
 02 ALT-RTE-GRP                         TYPE ID-NUM.                   !00118
 02 ACQ-TXN-PRFL                        TYPE PRFL.                     !00119
 02 TERM-OWNER-NAME                     PIC X(22).                     !00120
 02 TERM-NAME-LOC                       PIC X(25).                     !00121
 02 TERM-CITY                           PIC X(13).                     !00122
 02 TERM-ST-X                           PIC X(3).                      !00123
 02 TERM-CNTRY-X                        PIC X(2).                      !00124
 02 TERM-ST                             PIC 9(2).                      !00125
 02 TERM-CNTY                           PIC 9(3).                      !00126
 02 TERM-CNTRY                          PIC 9(3).                      !00127
 02 MULT-ACCT                           PIC X.                         !00128
 02 SHRG-GRP                            PIC X OCCURS 24 TIMES.         !00129
                                                                       !00130
 02 POST-DAT                            TYPE DAT.                      !00131
 02 TIM-OFST                            TYPE BINARY 16.                !00132
 02 TRAN-SEQ-NUM                        TYPE BINARY 32.                !00133
 02 USER-DEFINED-AREA                   PIC X(70).                     !00134
                                                                       !00135
 02 CORE-HOPR                           TYPE HOPPER OCCURS 6 TIMES.    !00136
                                                                       !00137
 02 NUM-DEP                             TYPE BINARY 16.                !00138
 02 AMT-DEP                             TYPE BINARY 64.                !00139
 02 NUM-CMRCL-DEP                       TYPE BINARY 16.                !00140
 02 AMT-CMRCL-DEP                       TYPE BINARY 64.                !00141
 02 NUM-PAY                             TYPE BINARY 16.                !00142
 02 AMT-PAY                             TYPE BINARY 64.                !00143
 02 NUM-MSG                             TYPE BINARY 16.                !00144
 02 NUM-CHK                             TYPE BINARY 16.                !00145
 02 AMT-CHK                             TYPE BINARY 64.                !00146
 02 NUM-LOGONLY                         TYPE BINARY 16.                !00147
 02 CRDS-RET                            TYPE BINARY 16.                !00148
 02 TERM-DB                             TYPE BINARY 64.                !00149
 02 TERM-CR                             TYPE BINARY 64.                !00150
 02 ON-US-DB                            TYPE BINARY 64.                !00151
 02 ON-US-CR                            TYPE BINARY 64.                !00152
 02 AMT-CRNCY-CDE                       TYPE CRNCY-CDE.                !00153
 02 POSTAL-CDE                          TYPE *.                        !00154
                                                                       !00155
 02 SSBC.                                                              !00156
    04 CHK-SUPPORT                      PIC X(1).                      !00157
    04 USER-FLDSSBC                     PIC X(1).                      !00158
    04 BIN-GRP                          PIC 9(4).                      !00159
    04 DFLT-BIN                         PIC X.                         !00160
    04 DEP-BIN                          OCCURS 4 TIMES.                !00161
       06 SSBC-NUM-CHK                  TYPE BINARY 16.                !00162
       06 SSBC-AMT-CHK                  TYPE BINARY 64.                !00163
       06 SEQ-NUM                       TYPE BINARY 16.                !00164
                                                                       !00165
 02 TERM-SUR-PROFILE                    PIC X(4).                      !00166
 02 NUM-LOAD-VALUE                      TYPE BINARY 16.                !00167
 02 AMT-LOAD-VALUE                      TYPE BINARY 64.                !00168
 02 NCD-RTE-GRP                         TYPE ID-NUM.                   !00169
 02 TKN-RETRV-OPT                       PIC X.                         !00170
 02 BAL-FLG                             PIC X.                         !00171
 02 CUTOVER-PEND                        PIC 9.                         !00172
 02 NEW-POST-DAT                        TYPE DAT.                      !00173
 02 LAST-SETL-DAT                       TYPE BINARY 32.                !00174
 02 LAST-SETL-TIM                       TYPE BINARY 16.                !00175
                                                                       !00175A00
 02 EMV-TERM-CAP                        TYPE *.                        !00175A01
 02 EMV-TERM-CAP-SCRN                   TYPE EMV-TERM-CAP-COBOL.       !00175A02
                                                                       !00175A03
                                                                       !00176
*             Dynamic device information data area.                   !!00177
                                                                       !00178
 02 DYN-DEV-INFO                        PIC X(3000).                   !00179
                                                                       !00180
*             Device information data area for terminals stored in    !!00181
*             the TDF.  This area redefines the device information    !!00182
*             data area of the terminals in the ATD.                  !!00183
                                                                       !00184
 02 TDF-DEV-INFO REDEFINES DYN-DEV-INFO.                               !00185
                                                                       !00186
    04 DEV-INFO                         PIC X(280).                    !00187
                                                                       !00188
*             These fields are not supported in the ATD files, but    !!00189
*             they are needed for terminals stored in the TDF.        !!00190
                                                                       !00191
    04 TERM-STA-NUM                     TYPE BINARY 16.                !00192
                                                                       !00193
    04 NOT-ON-US-CRD-ADNL.                                             !00194
       06 TRAN-ADNL                     PIC X OCCURS 5 TIMES.          !00195
                                                                       !00196
    04 NOT-ON-US-CRD.                                                  !00197
       06 TRAN                          PIC X OCCURS 16 TIMES.         !00198
                                                                       !00199
    04 USER-FLD-TDF-DEV-INFO            PIC X(2697).                   !00200
                                                                       !00201
*             Static device information data area.                    !!00202
                                                                       !00203
 02 STATIC-DEV-INFO                     PIC X(3990).                   !00204
                                                                       !00205
*             Dynamic device dependent data area.                     !!00206
                                                                       !00207
 02 DYN-DEV-DATA                        PIC X(3000).                   !00208
                                                                       !00209
*             Contains error information.                             !!00210
                                                                       !00211
 02 ERR-INFO.                                                          !00212
    04 OVERLAY-NUM                      TYPE BINARY 16.                !00213
    04 ERR-CNT                          TYPE BINARY 16.                !00214
                                                                       !00215
    04 SCRN-TBL                         OCCURS 44 TIMES.               !00216
       06 FLD-IDX                       TYPE BINARY 16.                !00217
       06 HOPR-IDX                      TYPE BINARY 16.                !00218
                                                                       !00219
*             Common DPM hopper area.                                 !!00220
                                                                       !00221
 02 HOPR-DPM                            TYPE HOPPER                    !00222
                                        OCCURS 2 TIMES.                !00223
*             Common CDA hopper area.                                 !!00224
                                                                       !00225
 02 HOPR-CDA                            TYPE HOPPER-CDA                !00226
                                        OCCURS 4 TIMES.                !00227
                                                                       !00228
*             Common area for the PIN master key's check digits.      !!00229
                                                                       !00230
 02 M-KEY-CHK-VALUE                     PIC X(4).                      !00231
                                                                       !00232
                                                                       !00232B00
*             Value of SECURE-DEV-TYP LCONF parameter.                 !00232B01
                                                                       !00232B02
 02 SEC-DEV-TYP                         PIC X(3).                      !00232B03
                                                                       !00232B04
*             Value of LN-IND LCONF parameter.                         !00232B05
                                                                       !00232B06
 02 LN-IND                              PIC X(2).                      !00232B07
                                                                       !00232B08
                                                                       !00232G00
*             This field denotes the dual site mode of a               !00232G01
*             terminal as either Local or Remote.                      !00232G02
                                                                       !00232G03
 02 DUAL-SITE-IND                    PIC X.                            !00232G04
                                                                       !00232G05
                                                                       !00232C00
 02 DKM.                                                               !00232C01
    04 PIN-TXN-CNTR                     TYPE BINARY 16.                !00232C02
    04 PIN-ERR-CNTR                     TYPE BINARY 16.                !00232C03
    04 MAC-TXN-CNTR                     TYPE BINARY 16.                !00232C04
    04 MAC-ERR-CNTR                     TYPE BINARY 16.                !00232C05
                                                                       !00232F00
    04 MAC-CONS-ERR-CNTR                TYPE BINARY 16.                !00232F01
                                                                       !00232F02
    04 KEY-CHNG-TS                      TYPE BINARY 64.                !00232C06
                                                                       !00232E00
*             Script processing fields from the EMV Response Token.    !00232E01
                                                                       !00232E02
 02 SCRIPT-FLAGS                        PIC X OCCURS 2 TIMES.          !00232E03
                                                                       !00232E04
 02 SELCT-CRNCY-CDE                     TYPE CRNCY-CDE OCCURS 4 TIMES. !00232C07
 02 TERM-LOC-IND                        PIC X.                         !00232C08
                                                                       !00232C09
                                                                       !00232D00
*            This field specifies whether Merchant Banking Center      !00232D01
*            features are supported by this terminal. Valid values     !00232D02
*            are Y or N. Default value N.                              !00232D03
*                                                                      !00232D04
                                                                       !00232D05
 02 MBC                                 PIC X.                         !00232D06
*             The number of Money Exchange transactions completed      !00232D07
*             during the current balance period.                       !00232D08
                                                                       !00232D09
 02 NUM-MX                              TYPE BINARY 16.                !00232D0A
                                                                       !00232D0B
*             The unverified amount of Money Exchange transactions     !00232D0C
*             completed during the current balance period.             !00232D0D
                                                                       !00232D0E
 02 AMT-MX                              TYPE BINARY 64.                !00232D0F
                                                                       !00232D0G
*             The following fields contain the coin denomination,      !00232D0H
*             number of coins in a roll and the number of rolls in     !00232D0I
*             each RCD hopper used by the terminal.                    !00232D0J
*                                                                      !00232D0K
*             There will be a total of 6 RCD hoppers.                  !00232D0L
*                                                                      !00232D0M
*             NOTE:  For various system displays and when logging      !00232D0N
*             terminal totals to the TLF, the hopper roll counts       !00232D0O
*             are converted to monetary amount figures by multiplying  !00232D0P
*             the roll counts by the corresponding hopper coins in a   !00232D0Q
*             roll and coin values.                                    !00232D0R
                                                                       !00232D0S
 02 HOPR-RCD                            OCCURS 6 TIMES.                !00232D0T
    04 CONTENTS                         PIC X(2).                      !00232D0U
    04 COIN-VAL                         TYPE BINARY 32.                !00232D0V
    04 COINS-IN-A-ROLL                  TYPE BINARY 16.                !00232D0W
    04 STD-BEG-CASH                     TYPE BINARY 32.                !00232D0X
    04 BEG-CASH                         TYPE BINARY 32.                !00232D0Y
    04 CASH-INCR                        TYPE BINARY 32.                !00232D0Z
    04 CASH-DECR                        TYPE BINARY 32.                !00232D0a
    04 CASH-OUT                         TYPE BINARY 32.                !00232D0b
    04 END-CASH                         TYPE BINARY 32.                !00232D0c
    04 CRNCY-CDE                        TYPE CRNCY-CDE.                !00232D0d
    04 USER-FLD                         PIC X.                         !00232D0e
                                                                       !00232D0f
*             The following fields contain data relating to cash       !00232D0g
*             accepted by the Currency Acceptor(CA) device.            !00232D0h
                                                                       !00232D0i
 02 CRNCY-ACCPT.                                                       !00232D0j
    04 CRNCY-CDE                        TYPE CRNCY-CDE.                !00232D0k
    04 USER-FLD                         PIC X.                         !00232D0l
    04 CASH-IN-VAULT                    TYPE BINARY 64.                !00232D0m
                                                                       !00232D0n
                                                                       !00232H00
                                                                       !00232J00
*             The NATV-MSG-FRMT field is used by the device handler    !00232J01
*             to distinguish between terminals sending 'standard       !00232J02
*             format' native messages and those sending 'non-standard  !00232J03
*             format' messages. For example, if the NCR 5XXX Device    !00232J04
*             Handler receives a message in native NDC format, that    !00232J05
*             is 'standard format'. If the Diebold 10XX Device Handler !00232J06
*             recieves a message in Wincor 912 emulation format, that  !00232J07
*             is 'non-standard format'.                                !00232J08
*             This field is used when processing enhancements such as  !00232J09
*             EMV, AKDS, BNA, CPM etc.                                 !00232J0A
*                                                                      !00232J0B
*                 '0' (standard format) (default)                      !00232J0C
*                 '1' (non-standard format)                            !00232J0D
                                                                       !00232J0E
                                                                       !00232J0F
                                                                       !00232J0G
                                                                       !00232J0H
 02 NATV-MSG-FRMT                       PIC X.                         !00232H07
                                                                       !00232H08
                                                                       !00232I00
*             The format of AKDS that the EPP in the ATM will          !00232I01
*             support. Valid Values are:                               !00232I02
*                 '0' (***********)                                    !00232I03
*                 '1' (Signature)                                      !00232I04
*                 '2' (Certificate)                                    !00232I05
*                 '3' (Both)                                           !00232I06
                                                                       !00232I07
 02  EPP-FRMT                           PIC X.                         !00232I08
                                                                       !00232I09
*             The manufacturer of the ATM device.                      !00232I0A
*             Valid Values are:                                        !00232I0B
*                 '0' (**********)                                     !00232I0C
*                 '1' (Wincor)                                         !00232I0D
*                 '2' (NCR)                                            !00232I0E
*                 '3' (Diebold)                                        !00232I0F
*                 '4' (Fujitsu)                                        !00232I0G
*                 '5' (De La Rue)                                      !00232I0H
*                 '6' (Triton)                                         !00232I0I
*                 '7' (Olivetti)                                       !00232I0J
                                                                       !00232I0K
  02  HDWR                             PIC X.                          !00232I0L
                                                                       !00232I0M
*             An identifier used to indicate which organization is     !00232I0N
*             acting as the Certificate Authority. The value in this   !00232I0O
*             field will be used as a key to read the correct entry    !00232I0P
*             in the Host Public Key Primary or Secondary Datasources  !00232I0Q
*             in the TSS database. This is a free format text field.   !00232I0R
*             A default value of "HOST" will be used by TSS if this    !00232I0S
*             field is spaces.                                         !00232I0T
                                                                       !00232I0U
 02  KEY-SIGNER                         PIC X(16).                     !00232I0V
                                                                       !00232I0W
                                                                       !00232J0I
*             Profile used as the key to read the NIDF to determine    !00232J0J
*             the notes (bills) that are accepted and potentially      !00232J0K
*             recycled at an ATM supporting the Shared BNA             !00232J0L
*             enhancement.                                             !00232J0M
                                                                       !00232J0N
 02  NIDF-PRFL                          TYPE PRFL.                     !00232J0O
                                                                       !00232K00
*                                                                      !00232K01
*             The following field is used by the Diebold device        !00232K02
*             handler to determine the number of envelopes in the      !00232K03
*             reject bin. The valid value ranges between 0-99.         !00232K04
*                                                                      !00232K05
 02 ENV-RJCT-CNT                        PIC X(2).                      !00232K06
                                                                       !00232K07
                                                                       !00232L00
                                                                       !00232L01
*             Indicates whether the ATM supports the NCR enhanced      !00232L02
*             AKDS scheme. Valid Values are:                           !00232L03
                                                                       !00232L04
*             'Y' = NCR enhanced AKDS Scheme is supported              !00232L05
*             'N' = NCR enhanced AKDS Scheme is not supported          !00232L06
*             ' ' = NCR enhanced AKDS Scheme status unknown, AKDS      !00232L07
*                   not yet attempted.                                 !00232L08
                                                                       !00232L09
  02 ENHANCED-SCHEME                   PIC X.                          !00232L0A
                                                                       !00232L0B
*             Indicates whether the ATM supports variable length       !00232L0C
*             EPP Serial Numbers. Valid Values are:                    !00232L0D
                                                                       !00232L0E
*             'Y' = Variable length EPP Serial numbers are supported   !00232L0F
*             'N' = Variable length EPP Serial numbers are not         !00232L0G
*                   supported                                          !00232L0H
*             ' ' = Variable length EPP Serial numbers status unknown, !00232L0I
*                   AKDS not yet attempted.                            !00232L0J
                                                                       !00232L0K
  02 VAR-LGTH-EPP-SN                   PIC X.                          !00232L0L
                                                                       !00232L0M
                                                                       !00232J0P
*             This field is reserved for future use by ACI.            !00232I0X
                                                                       !00232I0Y
 02  USER-FLD-ACI                       PIC X.                         !00232I0Z
                                                                       !00232I0a
END                                                                    !00233
                                                                       !00234
?setsection
