**FIX2.28  12/02/08  DDLFOMF 6011 DDL    BA60DDL  BA0C305  K                 ***
**FIX2.28  12/04/07  DDLFOMF 6010 DDL    BA60DDL  BA0B351  J                 ***
**FIX2.28  11/23/06  DDLFOMF 6009 DDL    BA60DDL  BA0A388  I                 ***
**FIX2.28  11/23/06  DDLFOMF 6008 DDL    BA60DDL  BA0A309  H                 ***
**FIX2.26  11/17/05  DDLFOMF 6007 DDL    BA60DDL  BA09312  G                 ***
**FIX2.24  11/18/04  DDLFOMF 6006 DDL    BA60DDL  BA08213  F                 ***
**FIX2.23  11/10/03  DDLFOMF 6005 DDL    BA60DDL  BA07156  E                 ***
**FIX2.23  02/13/03  DDLFOMF 6004 DDL    BA60DDL  BA06242  D                 ***
**FIX2.19  01/12/02  DDLFOMF 6003 DDL    BA60DDL  BA05216  C                 ***
**FIX2.14  05/14/01  DDLFOMF 6002 DDL    BA60DDL  BA04492  B                 ***
**FIX2.14  03/21/01  DDLFOMF 6001 DDL    BA60DDL  BA04350  A                 ***
!*SEQ2.00  01/08/01  DDLFOMF 6000 DDL    BA60DDL                               !
**********************************************************************!! CSM
*   CSM HISTORY:                                                      !! CSM
*                                                                     !! CSM
*    CSM:       Description                                           !! CSM
*   ---------   ---------------------------------------------         !! CSM
*   07MAR2011   CSMs to DDLFOMF Version 6.0.10   John Shelton         !! CSM
*   CSM  #47    TRANSACTION BLOCKING                                  !! CSM
*                                                                     !! CSM
*               - New constant tbf-appl-cde-l added, value "R0".      !! CSM
*               - New Definition added for  tbf-appl-cde-c.           !! CSM
*                                                                     !! CSM
**********************************************************************!! CSM
?page "OMF - Online Maintenance audit File"
?section omf-history
**********************************************************************!!00005
*                                                                    *!!00006
*                               BASE24                               *!!00007
*                               ------                               *!!00008
*                                                                    *!!00009
*          DDL for the BASE24 Online Maintenance Audit File          *!!00010
*                                                                    *!!00011
*                   Proprietary Software Product                     *!!00012
*                                                                    *!!00013
*                         ACI Worldwide Inc.                         *!!00014
*                       330 South 108th Avenue                       *!!00015
*                       Omaha, Nebraska  68154                       *!!00016
*                           (402) 390-7600                           *!!00017
*                                                                    *!!00018
*                                                                    *!!00019
*    Copyright by ACI Worldwide Inc. 1992 - 2000                     *!!00020
*                                                                    *!!00021
*    All Rights Reserved.  No part of this document may be           *!!00022
*    reproduced in any manner without the prior written consent of   *!!00023
*    ACI Worldwide Inc.  This material is a trade secret and its     *!!00024
*    confidentiality is strictly maintained.  Use of any copyright   *!!00025
*    notice does not imply unrestricted or public access to these    *!!00026
*    materials.                                                      *!!00027
*                                                                    *!!00028
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      *!!00029
*                                                                    *!!00030
**********************************************************************!!00031
*                                                                     !!00032
* Record of Changes:                                                  !!00033
*                                                                     !!00034
* Date        Person/Emp #                                            !!00035
* ---------   ------------                                            !!00036
********************************************************************* !!00037
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   * !!00038
********************************************************************* !!00039
* 08-22-94  JAS - JMS/583                                             !!00040
* SYMPTOM:  BASE24-telebanking Initial Release                        !!00041
* PROBLEM:  (E) None.                                                 !!00042
* FIX:      Updated list for APPL-CDE values.  Added the following    !!00043
*           codes:  58, 65-69, 87-8A, 90-94, 9A, 9B, M0-MD, N0-N3,    !!00044
*                   P0-P9, Q0-Q2                                      !!00045
* DEPENDENCIES:  None.                                                !!00046
* REFERENCE:  Work Order TB930301-01                                  !!00047
                                                                       !00048
********************************************************************* !!00049
*                  RELEASE 5.1                                      * !!00050
********************************************************************* !!00051
* 95JUN01    JMS/583                                                  !!00052
* SYMPTOM:   BASE24-BASE RELEASE 5.1 ENHANCEMENTS                     !!00053
* PROBLEM:   (E) NONE.                                                !!00054
* FIX:       Removed AFS, EFTPOS, and Cash Manager products.          !!00055
* IMPLEMENT: None.  Updated comments only.                            !!00056
* REFERENCE: 950201-001                                               !!00057
*                                                                     !!00058
* 95NOV9     SLA/435                                                  !!00059
* SYMPTOM:   None.                                                    !!00060
* PROBLEM:   <E> None.                                                !!00061
* FIX:       Modified comments to reflect support for new and         !!00062
*            modified Telebanking and BillPay Files and Tables.       !!00063
* IMPLEMENT: None.                                                    !!00064
* REFERENCE: Work Order 950425-1.                                     !!00065
                                                                       !00066
* 95/11/14        DPS/1064 -BDC/1448                                  !!00067
* SYMPTOM:        None.                                               !!00068
* PROBLEM:        (E) None.                                           !!00069
* FIX:            BASE24 Release 1.0 Customer Service/Fraud Control   !!00070
*                 Updated list for APPL-CDE values.  Added the        !!00071
*                 following codes: CI, CM, CS, CT, FA, FP, FS.        !!00072
* DEPENDENCIES:   None.                                               !!00073
* REFERENCE:      Work order #950212-3.                               !!00074
*                                                                     !!00075
* 01OCT1997   KJH/176   BH/177                                        !!00076
* Symptom:    BASE24 VISA Cash Enhancement.                           !!00077
* Problem:    None.                                                   !!00078
* Fix:        Updated list for APPL-CDE values.  Added code B0 for    !!00079
*             the CNRF.                                               !!00080
* Dependency: Apply fix and remake.                                   !!00081
* Reference:  WO #970709-2.                                           !!00082
********************************************************************  !!00083
*             Release 6.0                                          *  !!00084
********************************************************************  !!00085
* 30NOV2000   JAS/479                                                 !!00086
* Symptom:    BASE24 Release 6.0 Enhancements                         !!00087
* Problem:    None.                                                   !!00088
* Fix:        Created the OMF-APPL-CDE-CONSTANTS section.             !!00089
*             The application code literals that were defined in      !!00090
*               the OMF extract globals file are now defined in       !!00091
*               the OMF-APPL-CDE-CONSTANTS section.                   !!00092
*             The application code defines in the BASE24 ITS          !!00093
*               constants files are now defined in the                !!00094
*               OMF-APPL-CDE-CONSTANTS section.                       !!00095
*             Removed the Application Code comments from the          !!00096
*               OMF-HEADER section.                                   !!00097
*             Added the folowing application codes:                   !!00098
*               BASE24 Acquirer Processing Code File (APCF); UX       !!00099
*               BASE24 Issuer Processing Code File (IPCF); UA         !!00100
*               BASE24 Processing Code Description File (PDF); UT     !!00101
*               BASE24 Transaction Code File (TCF); UU                !!00102
*               BASE24-atm Terminal Definition Dynamic file (ATDD1); 28
*               BASE24-atm Terminal Definition Static file (ATDS1); 2B!!00105
*               BASE24-atm Terminal Receipt Profile (TRF); 27         !!00106
*               BASE24-pos Terminal Definition Dynamic file (PTDD1);2E!!00107
*               BASE24-pos Terminal Definition Static file (PTDS1); 2F!!00108
*             Modified comments on the following file:                !!00109
*               Logical Network Configuration File (LCONF/LNCF); Q0   !!00110
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00111
*             CUSTMACS flags, and run MAKE.                           !!00112
* Reference:  WO #971118-2 (PITABLE Expansion)                        !!00113
*             WO #981118-3 (Transactions Allowed)                     !!00114
*             WO #990108-1 (TDF/PTDF Expansion)                       !!00115
                                                                       !00115A00
* 30MAR2001   CLR/471                                                  !00115A01
* Symptom:    Added 5.3 EMV Support                                    !00115A02
* Problem:    None.                                                    !00115A03
* Fix:        Added the following to OMF-APPL-CDE-CONSTANTS:           !00115A04
*               BASE24-base Exchange Rate File (ERF); 2C               !00115A05
*               BASE24-base KEYI file (KEYI); 3B                       !00115A06
* Dependency: Restore Release 6.0 files, modify the appropriate        !00115A07
*             CUSTMACS flags, and run MAKE.                            !00115A08
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00115A09
                                                                       !00115A0A
                                                                       !00115B00
* 27APR2001   EDA/2121  bjk/1691                                       !00115B01
* Symptom:    BASE24 Release 5.3 PRISM Components                      !00115B02
* Problem:    None.                                                    !00115B03
* Fix:        Added literals ptbl-appl-cde-l and semf-appl-cde-l.      !00115B04
*             Literals moved from OMFXG to DDLFOMF in Release 6.0.     !00115B05
* Dependency: Customers should refer to the update guide,              !00115B06
*             PI53SRC.PRMUPDT, when making the code with the           !00115B07
*             prm_on flag set to true.                                 !00115B08
* Reference:  (Retro of BA5P169 from WO #000613-007)                   !00115B09
                                                                       !00115C00
                                                                       !00115C01
* 08JAN2002   TLE/310                                                  !00115C02
* Symptom:    Uplift DUKPT to Release 6.0.                             !00115C03
* Problem:    None.                                                    !00115C04
* Fix:        Added the following to OMF-APPL-CDE-CONSTANTS:           !00115C05
*               KEYD file (KEYD); 7H                                   !00115C06
* Dependency: Apply fix to DDLFOMF, RQKEYDS and reMake.                !00115C07
* Reference:  WO #011003-04                                            !00115C08
*                                                                      !00115C09
* 08JAN2002   ALR/455                                                  !00115C0A
* Symptom:    Triple/Single DES Enhancement                            !00115C0B
* Problem:    None.                                                    !00115C0C
* Fix:        Added the following to OMF-APPL-CDE-CONSTANTS:           !00115C0D
*               KEY6 file (KEY6); 0F                                   !00115C0E
* Dependency: Apply fix to DDLFOMF, RQKEY6S, and reMake.               !00115C0F
* Reference:  WO #000211-01                                            !00115C0G
                                                                       !00115D00
* 07FEB2003   JJD/615                                                  !00115D01
* Symptom:    POS Enhancements.                                        !00115D02
* Problem:    None.                                                    !00115D03
* Fix:        Added the RCDF OMF application code constant of 80.      !00115D04
* Dependency: Apply fix to DDLFOMF and reMake.  Refer to               !00115D05
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00115D06
* Reference:  WO #020606-01                                            !00115D07
                                                                       !00115D08
                                                                       !00115C0H
                                                                       !00115B0A
                                                                       !00115E00
* 15OCT2003   cdm/633                                                  !00115E01
* Symptom:    BASE24 Surcharging Enhancements                          !00115E02
* Problem:    None                                                     !00115E03
* Fix:        Added the TSRF OMF application code constant of 3C.      !00115E04
* Dependency: Apply fix to DDLFOMF and run MAKE.  Refer to             !00115E05
*             BA60UD07.SCNSRCH for a complete listing of dependencies. !00115E06
* Reference:  WO #020807-03                                            !00115E07
                                                                       !00115E08
                                                                       !00115E09
                                                                       !00115F00
* 15OCT2004   CarlsoB/dargyj                                           !00115F01
* Symptom:    Mobile Top-Up Enhancement                                !00115F02
* Problem:    None                                                     !00115F03
* Fix:        Added support for the Split Transaction Routing File     !00115F04
*             (STRF) OMF application code constant of 3D.              !00115F05
*             Added constants appl-strf-d and strf-appl-cde-l, with a  !00115F06
*             value of 3D.                                             !00115F07
*             Added def strf-appl-cde-c with a value of 3D.            !00115F08
*             Added support for the Mobile Operator File (MOF) OMF     !00115F09
*             application code constant of G5.                         !00115F0A
*             Added constants appl-mof-d and mof-appl-cde-l, with a    !00115F0B
*             value of G5.                                             !00115F0C
*             Added def mof-appl-cde-c with a value of G5.             !00115F0D
* Dependency: Apply fixes to DDLOMF and run Make.                      !00115F0E
*             Refer to BA60UD08.SCNMTOP for a complete listing of      !00115F0F
*             dependencies.                                            !00115F0G
* Reference:  WO #031001-03                                            !00115F0H
                                                                       !00115F0I
* 15OCT2004   koeppenk                                                 !00115F0J
* Symptom:    Stored Value Dormancy/Escheatment 6.0 Uplift             !00115F0K
* Problem:    None.                                                    !00115F0L
* Fix:        Added the SVDF OMF application code constant of 7I.      !00115F0M
* Dependency: Apply fix to DDLFOMF, PSOMFXG, PSOMFXS                   !00115F0N
*             and re-make.                                             !00115F0O
*             Refer to BA60UD08.SCNSVDE for a complete listing of      !00115F0P
*             dependencies.                                            !00115F0Q
* Reference:  WO #020715-15                                            !00115F0R
                                                                       !00115F0S
                                                                       !00115G00
* 14OCT2005   dargyj                                                   !00115G01
* Symptom:    BASE24-inventory Initial Release                         !00115G02
* Problem:    None                                                     !00115G03
* Fix:        Added support for the BASE24-inventory Stock             !00115G04
*             Configuration File (NSCF) OMF application code constant  !00115G05
*             of V7. Added constants appl-nscf-d and nscf-appl-cde-l,  !00115G06
*             with a value of V7.                                      !00115G07
*             Added def nscf-appl-cde-c with a value of V7.            !00115G08
* Dependency: Apply fixes to DDLFOMF and run Make.                     !00115G09
*             Refer to BA60UD09.SCNINV for a complete listing of       !00115G0A
*             dependencies.                                            !00115G0B
* Reference:  WO #041223-01                                            !00115G0C
                                                                       !00115G0D
                                                                       !00115H00
* 14OCT2006   gaitonp                                                  !00115H01
* Symptom:    TDD2 Record Cleanup Enhancement                          !00115H02
* Problem:    None                                                     !00115H03
* Fix:        Added support for the TDD2 Record Cleanup Enhancement.   !00115H04
* Dependency: Apply fix to DDLFOMF and run Make. Refer to              !00115H05
*             BA60UD0A.SCNTDD2 for a complete listing of               !00115H06
*             dependencies.                                            !00115H07
* Reference:  WO #051212-02                                            !00115H08
                                                                       !00115H09
                                                                       !00115I00
* 15NOV2006   funter                                                   !00115I01
* Symptom:    Account changes on CACT are not appearing on OMF         !00115I02
*             Extracts.                                                !00115I03
* Problem:    OMF Extract is not reading CACT file changes since       !00115I04
*             CACT changes are being written with application code     !00115I05
*             N0 (zero) and OMF DDL has application code NO.           !00115I06
* Fix:        Correct OMF cact-appl-cde to N0.                         !00115I07
* Dependency: Apply fix to DDLFOMF and run Make.                       !00115I08
* Reference:  Case #422441                                             !00115I09
                                                                       !00115I0A
                                                                       !00115J00
* 12OCT2007   WisharJ                                                  !00115J01
* Symptom:    Shared NDC+ BNA Support                                  !00115J02
* Problem:    None                                                     !00115J03
* Fix:        Added support for the BASE24-atm Note ID File (NIDF)     !00115J04
*             OMF application code constant of 3E.                     !00115J05
*             Added constants appl-nidf-d and nidf-appl-cde-l,         !00115J06
*             with a value of 3E.                                      !00115J07
*             Added def nidf-appl-cde-c with a value of 3E.            !00115J08
* Dependency: Apply fix to DDLFOMF and run Make.                       !00115J09
*             Refer to BA60UD0B.SCNWNBN for a complete listing of      !00115J0A
*             dependencies.                                            !00115J0B
* Reference:  WO #051129-01                                            !00115J0C
                                                                       !00115J0D
* 12OCT2007   WisharJ                                                  !00115J0E
* Symptom:    Missing constants for the PRF and the TQF.               !00115J0F
* Problem:    None                                                     !00115J0G
* Fix:        Added constants for the PRF and TQF.                     !00115J0H
*             Added constants prf-appl-cde-c, and tqf-appl-cde-c.      !00115J0I
* Dependency: Apply fix to DDLFOMF and run Make.                       !00115J0J
* Reference:  Case #429513.                                            !00115J0K
                                                                       !00115J0L
* 12OCT2007   eschlis                                                  !00115J0M
* Symptom:    ATM Dynamic Currency Conversion.                         !00115J0N
* Problem:    None.                                                    !00115J0O
* Fix:        Added DCCD-APPL-CDE-L and DCCD-APPL-CDE-C with a value   !00115J0P
*             of 2D.                                                   !00115J0Q
* Dependency: Apply fix to DDLFOMF and run Make. Refer to              !00115J0R
*             BA60UD0B.SCNDCC for a complete listing of                !00115J0S
*             dependencies.                                            !00115J0T
* Reference:  WO #061227-02                                            !00115J0U
                                                                       !00115J0V
* 12OCT2007   KrishnG                                                  !00115J0W
* Symptom:    PCI - Audit Enhancement                                  !00115J0X
* Problem:    None.                                                    !00115J0Y
* Fix:        Added new file maintenance types of 'E' (read), 'F'      !00115J0Z
*             (read next), 'I' (institution security error), and       !00115J0a
*             'J' (file operation security error) to support           !00115J0b
*             auditing of user access to sensitive information.        !00115J0c
* Dependency: Apply fix to DDLFOMF and run Make. Refer to              !00115J0d
*             BA60UD0B.SCNAUDT for a complete list of dependencies.    !00115J0e
* Reference:  WO #070423-02                                            !00115J0f
                                                                       !00115J0g
                                                                       !00115K00
* 17OCT2008   WisharJ                                                  !00115K01
* Symptom:    FM-TYP of "O" no longer referenced in BASE24.            !00115K02
* Problem:    Version 9 comment changes.                               !00115K03
* Fix:        Removed "O" from the list of valid values for FM-TYP.    !00115K04
* Dependency: Apply fix to DDLFOMF and run Make.                       !00115K05
* Reference:  Case #450136.                                            !00115K06
                                                                       !00115K07
* 17OCT2008   SchieuR                                                  !00115K08
* Symptom:    PCI - Event and Trace Messages Enhancement               !00115K09
* Problem:    None                                                     !00115K0A
* Fix:        Added constants appl-lmcf-d and lmcf-appl-cde-l with a   !00115K0B
*             value of 3F.  Added def lmcf-appl-cde-c with a value of  !00115K0C
*             3F.                                                      !00115K0D
* Dependency: Apply fix to DDLFOMF and run Make.  Refer to             !00115K0E
*             BA60UD0C.SCNPCIE for a complete listing of dependencies. !00115K0F
* Reference:  WO #070104-03                                            !00115K0G
                                                                       !00115K0H
********************************************************************  !!00116
?deflist
?page "omf-header - Online Maintenance File header format"
?section omf-header
?comments
DEFINITION OMF-HEADER.                                                 !00125
                                                                       !00126
                                                                       !00127
*             A code identifying the file whose activity is           !!00128
*             represented by this record.  Each BASE24 file is        !!00129
*             assigned its own file code which allows for             !!00130
*             distinguishing OMF records.  Please refer to the        !!00131
*             OMF-APPL-CDE-CONSTANTS section for the list of valid    !!00132
*             application codes.                                      !!00133
                                                                       !00134
 02  APPL-CDE                PIC X(2).                                 !00135
                                                                       !00136
*             Identifies the type of file maintenance performed and   !!00137
*             the timing of the image contained in the OMF record.    !!00138
*             Valid codes are:                                        !!00139
*                                                                     !!00140
*             A = Added record.  When a record is added to an         !!00141
*                 application file, that record is written to the OMF !!00142
*                 with the value in the FM-TYP field set to A.        !!00143
*             B = Updated record; before-image.  When a record is     !!00144
*                 updated in an application file, a copy of the       !!00145
*                 record prior to the update is written to the OMF    !!00146
*                 with the value in the FM-TYP field set to B.        !!00147
*             C = Updated record; after-image.  When a record is      !!00148
*                 updated in an application file, a copy of the       !!00149
*                 record after the update is written to the OMF with  !!00150
*                 the value in the FM-TYP field set to C.             !!00151
*             D = Deleted record.  When a record is deleted from an   !!00152
*                 application file, that record is written to the OMF !!00153
*                 with the value in the FM-TYP field set to D.        !!00154
                                                                       !00154J00
*             E = Read record.  When a record is read from an          !00154J01
*                 application file, that record is written to the OMF  !00154J02
*                 with the value in the FM-TYP field set to E.         !00154J03
*             F = Read next record.  When a next record is read from   !00154J04
*                 an application file, that record is written to the   !00154J05
*                 OMF with the value in the FM-TYP field set to F.     !00154J06
*             I = Institution security error.  When an institution     !00154J07
*                 security error occurs, a record is written to the    !00154J08
*                 OMF with the value in the FM-TYP field set to I.     !00154J09
*                 (For this type of record, the REC-IMAGE field in     !00154J0A
*                 the OMF contains spaces.)                            !00154J0B
*             J = File operation security error.  When a file          !00154J0C
*                 operation security error occurs, a record is         !00154J0D
*                 written to the OMF with the value in the FM-TYP      !00154J0E
*                 field set to J.  (For this type of record, the       !00154J0F
*                 REC-IMAGE field in the OMF contains spaces.)         !00154J0G
                                                                       !00154J0H
                                                                       !00155K00
                                                                       !00155K01
                                                                       !00155K02
*             S = Logon security check.  When an operator attempts to !!00160
*                 log on to BASE24, a record is written to the OMF    !!00161
*                 with the value in the FM-TYP field set to S.  If    !!00162
*                 the logon is rejected or has an error, the RECORD-  !!00163
*                 IMAGE field in the OMF contains the server-         !!00164
*                 generated error message.                            !!00165
                                                                       !00166
 02 FM-TYP                   PIC X(1).                                 !00167
                                                                       !00168
*             Date and time the OMF record was written to the file in !!00169
*             YYMMDD HHMMSSTT format (left-justified and padded with  !!00170
*             blanks).                                                !!00171
                                                                       !00172
 02 FM-DAT                   PIC X(16).                                !00173
                                                                       !00174
*             The current logical network of the user at the time the !!00175
*             record was logged.                                      !!00176
                                                                       !00177
 02 LNET                     TYPE LN.                                  !00178
                                                                       !00179
*             The current FIID of the user at the time the record was !!00180
*             logged.  If the operator is SUPER.GROUP, the value in   !!00181
*             this field can be ****.                                 !!00182
                                                                       !00183
 02  FIID                    TYPE *.                                   !00184
                                                                       !00185
*             The current region of the user at the time the          !!00186
*             record was logged.  If the operator is SUPER.GROUP, the !!00187
*             value in this field can be ****.                        !!00188
                                                                       !00189
 02  REGN                    TYPE *.                                   !00190
                                                                       !00191
*             The current branch of the user at the time the          !!00192
*             record was logged.  If the operator is SUPER.GROUP, the !!00193
*             value in this field can be ****.                        !!00194
                                                                       !00195
 02  BRCH                    TYPE *.                                   !00196
                                                                       !00197
*             The terminal ID of the physical terminal where the      !!00198
*             BASE24 operator is performing the file maintenance      !!00199
*             operations.                                             !!00200
                                                                       !00201
 02  TERM-ID                 TYPE SYM-NAME.                            !00202
                                                                       !00203
*             This field is not used.                                 !!00204
                                                                       !00205
 02  FILLER                  PIC X(1).                                 !00206
                                                                       !00207
*             The user group number specified at logon by the BASE24  !!00208
*             operator.                                               !!00209
                                                                       !00210
 02  USER-GRP                TYPE BINARY.                              !00211
                                                                       !00212
*             The user number specified at logon by the BASE24        !!00213
*             operator.                                               !!00214
                                                                       !00215
 02  USER-NUM                TYPE BINARY 32.                           !00216
                                                                       !00217
END                                                                    !00218
                                                                       !00219
?PAGE "OMF - On-Line Maintenance Audit File"
?SECTION OMF
                                                                       !00224
*                                                                     !!00225
*              The Online Maintenance File (OMF) contains records of  !!00226
*              daily additions, deletions, and updates made to the    !!00227
*              BASE24 application files.  The OMF provides an audit   !!00228
*              trail of file maintenance operations.  This includes   !!00229
*              information on the BASE24 operators that have logged on!!00230
*              and performed operations, the times file operations    !!00231
*              were performed, and the actual records that were       !!00232
*              affected.                                              !!00233
*                                                                     !!00234
*              OMFs are entry-sequenced files that are created and    !!00235
*              written to by the Pathway servers that handle file     !!00236
*              maintenance operations.  Up to 10 OMFs can be created  !!00237
*              each day, depending on the number of file maintenance  !!00238
*              operations.  If an OMF is full and a server needs to   !!00239
*              write a record, the server simply creates and opens a  !!00240
*              new file.  If 10 OMFS have already been created and    !!00241
*              filled, the server abends.                             !!00242
*                                                                     !!00243
*              The naming convention for the OMF is A<yymmdd><n>,     !!00244
*              where <yymmdd> is the date and <n> is the sequence     !!00245
*              number of the file.  For example, if there are four    !!00246
*              OMFs for 10/15/95, they would be named A9510150,       !!00247
*              A9510151, A9510152, and A9510153.                      !!00248
*                                                                     !!00249
*              The following pages describe the fields included in an !!00250
*              OMF record.                                            !!00251
*                                                                     !!00252
*              LCONF ASSIGN:       OMF                                !!00253
*                                                                     !!00254
RECORD OMF.  FILE IS "AYYMMDDX" ENTRY-SEQUENCED.                       !00255
                                                                       !00256
 02 OMF-HEADER               TYPE OMF-HEADER.                          !00257
                                                                       !00258
*             Indicates the number of bytes for the record image.     !!00259
*             The range of values is 0 to 4010.  At length 0 only the !!00260
*             audit headers are sent.                                 !!00261
                                                                       !00262
 02 REC-IMAGE-LEN            TYPE BINARY 16 UNSIGNED.                  !00263
                                                                       !00264
*             Records are placed in this field to be audited. Device- !!00265
*             dependent and Last Tran data from the TDF/PTDF/TTDF will!!00266
*             be converted to EBCDIC.  This will cause any binary data!!00267
*             contained in these fields to be unreadable.             !!00268
                                                                       !00269
 02 REC-IMAGE.                                                         !00270
                                                                       !00271
*             The application file record being audited is placed in  !!00272
*             this field.  Since file records vary in format, they    !!00273
*             are left-justified in this field with any unused        !!00274
*             positions padded with blanks.                           !!00275
                                                                       !00276
    03 REC-IMAGE-VAR         PIC X(1)                                  !00277
                                                                       !00278
                             OCCURS 0 TO 4010 TIMES                    !00279
                             DEPENDING ON REC-IMAGE-LEN.               !00280
                                                                       !00281
END                                                                    !00282
                                                                       !00283
?section omf-appl-cde-constants
?setsection omf-appl-cde-constants
?page "OMF Application Code Constants"
*#####################################################################!!00290
*#                                                                   #!!00291
*#                  File Application Code Constants                  #!!00292
*#                                                                   #!!00293
*#  The following constants are the various values that specify a    #!!00294
*#  file's application code.  These constants are for general use    #!!00295
*#  by any and all application modules.                              #!!00296
*#                                                                   #!!00297
*#####################################################################!!00298
                                                                       !00299
?nocobol
                                                                       !00302
*             File Application Code constants                         !!00303
                                                                       !00304
*             Initial logon security check                            !!00305
                                                                       !00306
constant msg-sec-00-appl-cde-l          value "00".                    !00307
                                                                       !00308
*             Customer reserved application codes; "01" thru "06"     !!00309
                                                                       !00310
constant customer-rsrvd-01-appl-cde-l   value "01".                    !00311
constant customer-rsrvd-02-appl-cde-l   value "02".                    !00312
constant customer-rsrvd-03-appl-cde-l   value "03".                    !00313
constant customer-rsrvd-04-appl-cde-l   value "04".                    !00314
constant customer-rsrvd-05-appl-cde-l   value "05".                    !00315
constant customer-rsrvd-06-appl-cde-l   value "06".                    !00316
                                                                       !00317
*             Security check upon attempt to access menus, also       !!00318
*             called the "After logon" security check                 !!00319
                                                                       !00320
constant after-logon-sec-appl-cde-l     value "07".                    !00321
                                                                       !00322
*             Customer reserved application codes; "08" thru "09"     !!00323
                                                                       !00324
constant customer-rsrvd-08-appl-cde-l   value "08".                    !00325
constant customer-rsrvd-09-appl-cde-l   value "09".                    !00326
                                                                       !00327
*             BASE24 Key File (KEYF)                                  !!00328
                                                                       !00329
constant keyf-appl-cde-l                value "0A".                    !00330
                                                                       !00331
*             BASE24 External Message File (EMF)                      !!00332
                                                                       !00333
constant emf-appl-cde-l                 value "0B".                    !00334
constant appl-emf-d                     value emf-appl-cde-l.          !00335
                                                                       !00336
*             BASE24 Extract Configuration File (ECF)                 !!00337
                                                                       !00338
constant ecf-appl-cde-l                 value "0C".                    !00339
                                                                       !00340
*             BASE24 ITS Interchange Maintenance Log File (MLF)       !!00341
                                                                       !00342
constant its-mlf-appl-cde-l             value "0D".                    !00343
                                                                       !00344
*             BASE24 switches Interchange Maintenance Log File (MLF)  !!00345
                                                                       !00346
constant switch-mlf-appl-cde-l          value "0E".                    !00347
                                                                       !00348
                                                                       !00348C00
*             BASE24 KEY6 file (KEY6)                                  !00348C01
                                                                       !00348C02
constant key6-appl-cde-l                value "0F".                    !00348C03
                                                                       !00348C04
*             BASE24 Security file (SEC)                              !!00349
                                                                       !00350
constant sec-appl-cde-l                 value "10".                    !00351
                                                                       !00352
*             Unused application code; "11"                           !!00353
                                                                       !00354
constant unused-11-appl-cde-l           value "11".                    !00355
                                                                       !00356
*             Unused application code; "12"                           !!00357
                                                                       !00358
constant unused-12-appl-cde-l           value "12".                    !00359
                                                                       !00360
*             Unused application code; "13"                           !!00361
                                                                       !00362
constant unused-13-appl-cde-l           value "13".                    !00363
                                                                       !00364
*             Unused application code; "14"                           !!00365
                                                                       !00366
constant unused-14-appl-cde-l           value "14".                    !00367
                                                                       !00368
*             Unused application code; "15"                           !!00369
                                                                       !00370
constant unused-15-appl-cde-l           value "15".                    !00371
                                                                       !00372
*             Unused application code; "16"                           !!00373
                                                                       !00374
constant unused-16-appl-cde-l           value "16".                    !00375
                                                                       !00376
*             Unused application code; "17"                           !!00377
                                                                       !00378
constant unused-17-appl-cde-l           value "17".                    !00379
                                                                       !00380
*             Unused application code; "18"                           !!00381
                                                                       !00382
constant unused-18-appl-cde-l           value "18".                    !00383
                                                                       !00384
*             Unused application code; "19"                           !!00385
                                                                       !00386
constant unused-19-appl-cde-l           value "19".                    !00387
                                                                       !00388
*             Unused application code; "1A"                           !!00389
                                                                       !00390
constant unused-1A-appl-cde-l           value "1A".                    !00391
                                                                       !00392
*             Unused application code; "1B"                           !!00393
                                                                       !00394
constant unused-1B-appl-cde-l           value "1B".                    !00395
                                                                       !00396
*             BASE24-atm Diebold 10XX/478X Operater Identification    !!00397
*             File (OIF)                                              !!00398
                                                                       !00399
constant oif-appl-cde-l                 value "1C".                    !00400
                                                                       !00401
*             BASE24 User/FIID Region and branch file (UFIR)          !!00402
                                                                       !00403
constant ufir-appl-cde-l                value "1E".                    !00404
constant appl-ufir-d                    value ufir-appl-cde-l.         !00405
                                                                       !00406
*             BASE24 User/Product Files Relation file (UPFR)          !!00407
                                                                       !00408
constant upfr-appl-cde-l                value "1F".                    !00409
                                                                       !00410
*             BASE24 CRT Authorization Security file (CSEC)           !!00411
                                                                       !00412
constant csec-appl-cde-l                value "1G".                    !00413
                                                                       !00414
                                                                       !00415
*             BASE24 Institution Definition File (IDF)                !!00416
                                                                       !00417
constant idf-appl-cde-l                 value "20".                    !00418
constant appl-idf-d                     value idf-appl-cde-l.          !00419
                                                                       !00420
*             BASE24-atm Terminal Data File (TDF)                     !!00421
                                                                       !00422
constant tdf-appl-cde-l                 value "21".                    !00423
                                                                       !00424
*             BASE24-teller Terminal Data File (TTDF)                 !!00425
                                                                       !00426
constant ttdf-appl-cde-l                value "22".                    !00427
                                                                       !00428
*             BASE24-pos Terminal Data File (PTDF)                    !!00429
                                                                       !00430
constant ptdf-appl-cde-l                value "23".                    !00431
                                                                       !00432
*             BASE24-pos Retailer Definition File (PRDF)              !!00433
                                                                       !00434
constant prdf-appl-cde-l                value "24".                    !00435
                                                                       !00436
*             BASE24-teller Transaction File (TTF)                    !!00437
                                                                       !00438
constant ttf-appl-cde-l                 value "25".                    !00439
                                                                       !00440
*             BASE24-teller Override Response File (ORF)              !!00441
                                                                       !00442
constant orf-appl-cde-l                 value "26".                    !00443
                                                                       !00444
*             BASE24-atm Terminal Receipt File (TRF)                  !!00445
                                                                       !00446
constant trf-appl-cde-l                 value "27".                    !00447
                                                                       !00448
*             BASE24-atm Terminal Data Dynamic file - general data    !!00449
*             (ATDD1)                                                 !!00450
                                                                       !00451
constant atdd1-appl-cde-l               value "28".                    !00452
                                                                       !00453
*             BASE24-mail Mail Box Address File (MBAF)                !!00454
                                                                       !00455
constant mbaf-appl-cde-l                value "29".                    !00456
                                                                       !00457
*             ACI's standard BASE24-pos device handler ISO Response   !!00458
*             file (AIRS)                                             !!00459
                                                                       !00460
constant airs-appl-cde-l                value "2A".                    !00461
                                                                       !00462
*             BASE24-atm Terminal Data Static file - general data     !!00463
*             (ATDS1)                                                 !!00464
                                                                       !00465
constant atds1-appl-cde-l               value "2B".                    !00466
                                                                       !00466A00
                                                                       !00466A01
*             BASE24-base Exchange Rate File (ERF)                     !00466A02
                                                                       !00466A03
constant erf-appl-cde-l                 value "2C".                    !00466A04
                                                                       !00466A05
                                                                       !00466J00
*             BASE24 Dynamic Currency Conversion Data file (DCCD)      !00466J01
                                                                       !00466J02
constant dccd-appl-cde-l                value "2D".                    !00466J03
                                                                       !00466J04
                                                                       !00467
*             BASE24-pos Terminal Data Dynamic file - general data    !!00468
*             (PTDD1)                                                 !!00469
                                                                       !00470
constant ptdd1-appl-cde-l               value "2E".                    !00471
                                                                       !00472
*             BASE24-pos Terminal Data Static file - general data     !!00473
*             (PTDS1)                                                 !!00474
                                                                       !00475
constant ptds1-appl-cde-l               value "2F".                    !00476
                                                                       !00477
                                                                       !00477H00
*             BASE24-atm Terminal Data Dynamic file - scratch pad      !00477H01
*             data (ATDD2)                                             !00477H02
                                                                       !00477H03
constant atdd2-appl-cde-l               value "2G".                    !00477H04
                                                                       !00477H05
*             BASE24-pos Terminal Data Dynamic file - scratch pad      !00477H06
*             data (PTDD2)                                             !00477H07
                                                                       !00477H08
constant ptdd2-appl-cde-l               value "2H".                    !00477H09
                                                                       !00477H0A
*             BASE24-atm Transaction Log File (TLF)                   !!00478
                                                                       !00479
constant tlf-appl-cde-l                 value "30".                    !00480
                                                                       !00481
*             BASE24-atm Reports file (RPTS)                          !!00482
                                                                       !00483
constant arpts-appl-cde-l               value "31".                    !00484
                                                                       !00485
*             BASE24-teller Transaction Log File (TTLF)               !!00486
                                                                       !00487
constant ttlf-appl-cde-l                value "32".                    !00488
                                                                       !00489
*             BASE24-pos Transaction Log File (PTLF)                  !!00490
                                                                       !00491
constant ptlf-appl-cde-l                value "33".                    !00492
                                                                       !00493
*             BASE24-pos Card Hisotry File (CHF)                      !!00494
                                                                       !00495
constant chf-appl-cde-l                 value "35".                    !00496
                                                                       !00497
*             BASE24-pos Card Authorization Parameters File (CAPF)    !!00498
                                                                       !00499
constant capf-appl-cde-l                value "36".                    !00500
                                                                       !00501
*             BASE24-pos BIN Short File (BSF)                         !!00502
                                                                       !00503
constant bsf-appl-cde-l                 value "37".                    !00504
                                                                       !00505
*             BASE24-atm Self-Service Banking Corporate Check File    !!00506
*             (CCF)                                                   !!00507
                                                                       !00508
constant ccf-appl-cde-l                 value "38".                    !00509
                                                                       !00510
*             BASE24-atm Self-Service Banking Check Status File (CSF) !!00511
                                                                       !00512
constant csf-appl-cde-l                 value "39".                    !00513
                                                                       !00514
*             BASE24 Key Authorization file (KEYA)                    !!00515
                                                                       !00516
constant keya-appl-cde-l                value "3A".                    !00517
constant appl-keya-d                    value keya-appl-cde-l.         !00518
                                                                       !00518A00
                                                                       !00518A01
                                                                       !00518C00
*             BASE24 KEYI file (KEYI)                                  !00518C01
                                                                       !00518C02
                                                                       !00518A03
constant keyi-appl-cde-l                value "3B".                    !00518A04
                                                                       !00518A05
                                                                       !00518E00
*             BASE24 Transaction Code/Subtype Relationship file (TSRF) !00518E01
                                                                       !00518E02
constant tsrf-appl-cde-l                value "3C".                    !00518E03
                                                                       !00518E04
                                                                       !00518F00
constant appl-strf-d                    value "3D".                    !00518F01
constant strf-appl-cde-l                value appl-strf-d.             !00518F02
                                                                       !00518F03
                                                                       !00518J00
*             BASE24-atm Note ID File (NIDF)                           !00518J01
                                                                       !00518J02
constant appl-nidf-d                    value "3E".                    !00518J03
constant nidf-appl-cde-l                value appl-nidf-d.             !00518J04
                                                                       !00518J05
                                                                       !00518K00
*             BASE24 Log Message Configuration File (LMCF)             !00518K01
                                                                       !00518K02
constant appl-lmcf-d                    value "3F".                    !00518K03
constant lmcf-appl-cde-l                value appl-lmcf-d.             !00518K04
                                                                       !00518K05
                                                                       !00519
*             BASE24 Card Prefix File (CPF)                           !!00520
                                                                       !00521
constant cpf-appl-cde-l                 value "40".                    !00522
                                                                       !00523
*             BASE24 Interchange Prefix File (IPF)                    !!00524
                                                                       !00525
constant ipf-appl-cde-l                 value "41".                    !00526
                                                                       !00527
*             BASE24 Interchange Configuration File (ICF)             !!00528
                                                                       !00529
constant icf-appl-cde-l                 value "42".                    !00530
                                                                       !00531
*             BASE24 Interchange Identification File (IIF)            !!00532
                                                                       !00533
constant iif-appl-cde-l                 value "43".                    !00534
                                                                       !00535
*             BASE24-pos Visa II Terminal file (VVT)                  !!00536
                                                                       !00537
constant vvt-appl-cde-l                 value "44".                    !00538
                                                                       !00539
*             BASE24-pos Visa II Configuration file (VVC)             !!00540
                                                                       !00541
constant vvc-appl-cde-l                 value "45".                    !00542
                                                                       !00543
*             BASE24 switch BIN Block File (BBF)                      !!00544
                                                                       !00545
constant bbf-appl-cde-l                 value "46".                    !00546
                                                                       !00547
*             Unused Application Code; "47"                           !!00548
                                                                       !00549
constant unused-47-appl-cde-l                value "47".               !00550
                                                                       !00551
*             BASE24-pos Hypercom T7 Configuration file (HPTC)        !!00552
                                                                       !00553
constant hptc-appl-cde-l                value "48".                    !00554
                                                                       !00555
*             Unused Application Code; "49"                           !!00556
                                                                       !00557
constant unused-49-appl-cde-l           value "49".                    !00558
                                                                       !00559
*             BASE24 Negative card file (NEG)                         !!00560
                                                                       !00561
constant neg-appl-cde-l                 value "50".                    !00562
                                                                       !00563
*             BASE24-pos National Negative Files (NNF)                !!00564
                                                                       !00565
constant nnf-appl-cde-l                 value "51".                    !00566
                                                                       !00567
*             BASE24 Host Configuration File (HCF)                    !!00568
                                                                       !00569
constant hcf-appl-cde-l                 value "52".                    !00570
                                                                       !00571
*             Unused application code; "53"                           !!00572
                                                                       !00573
constant unused-53-appl-cde-l           value "53".                    !00574
                                                                       !00575
*             BASE24 Token file (TKN)                                 !!00576
                                                                       !00577
constant tkn-appl-cde-l                 value "54".                    !00578
constant appl-tkn-d                     value tkn-appl-cde-l.          !00579
                                                                       !00580
*             BASE24 Usage Accumulation File (UAF)                    !!00581
                                                                       !00582
constant uaf-appl-cde-l                 value "55".                    !00583
                                                                       !00584
*             BASE24-atm Receipt configuration file (RCPT)            !!00585
                                                                       !00586
constant rcpt-appl-cde-l                value "56".                    !00587
                                                                       !00588
*             BASE24-pos Hypercom Configuration File (HPCF)           !!00589
                                                                       !00590
constant hpcf-appl-cde-l                value "57".                    !00591
                                                                       !00592
*             BASE24 Surcharge File (SURF)                            !!00593
                                                                       !00594
constant surf-appl-cde-l                value "58".                    !00595
                                                                       !00596
*             BASE24 Interchange Configuration File Enhanced (ICFE)   !!00597
                                                                       !00598
constant icfe-appl-cde-l                value "59".                    !00599
                                                                       !00600
*             BASE24 Positive Balance File (PBF)                      !!00601
                                                                       !00602
constant pbf-appl-cde-l                 value "60".                    !00603
constant appl-pbf-d                     value pbf-appl-cde-l.          !00604
                                                                       !00605
*             BASE24 Stop Payment File (SPF)                          !!00606
                                                                       !00607
constant spf-appl-cde-l                 value "61".                    !00608
                                                                       !00609
*             BASE24-teller No Book File (NBF)                        !!00610
                                                                       !00611
constant nbf-appl-cde-l                 value "62".                    !00612
                                                                       !00613
*             BASE24-teller Warning/Hold/Float File (WHFF)            !!00614
                                                                       !00615
constant whff-appl-cde-l                value "63".                    !00616
                                                                       !00617
*             BASE24 Account Routing File (ARF)                       !!00618
                                                                       !00619
constant arf-appl-cde-l                 value "64".                    !00620
                                                                       !00621
*             BASE24 Destination file (DEST)                          !!00622
                                                                       !00623
constant dest-appl-cde-l                value "65".                    !00624
constant appl-dest-d                    value dest-appl-cde-l.         !00625
                                                                       !00626
*             BASE24 Source Class Map file (SCM)                      !!00627
                                                                       !00628
constant scm-appl-cde-l                 value "66".                    !00629
constant appl-scm-d                     value scm-appl-cde-l.          !00630
                                                                       !00631
*             BASE24 Object file (OBJ)                                !!00632
                                                                       !00633
constant obj-appl-cde-l                 value "67".                    !00634
constant appl-obj-d                     value obj-appl-cde-l.          !00635
                                                                       !00636
*             BASE24 Extended Memory Table file (EMT)                 !!00637
                                                                       !00638
constant emt-appl-cde-l                 value "68".                    !00639
constant appl-emt-d                     value emt-appl-cde-l.          !00640
                                                                       !00641
*             BASE24 EMT/Object Relationship File (EORF)              !!00642
                                                                       !00643
constant eorf-appl-cde-l                value "69".                    !00644
constant appl-eorf-d                    value eorf-appl-cde-l.         !00645
                                                                       !00646
                                                                       !00647
*             BASE24 Card Authorization File (CAF)                    !!00648
                                                                       !00649
constant caf-appl-cde-l                 value "70".                    !00650
                                                                       !00651
*             BASE24-pos Authorization Selection Table (AST)          !!00652
                                                                       !00653
constant ast-appl-cde-l                 value "71".                    !00654
                                                                       !00655
*             BASE24-pos Routing Table file (RTBL)                    !!00656
                                                                       !00657
constant rtbl-appl-cde-l                value "72".                    !00658
                                                                       !00659
*             BASE24 Administrative file (ADMN)                       !!00660
                                                                       !00661
constant admn-appl-cde-l                value "73".                    !00662
                                                                       !00663
*             BASE24-pos Check Authorization Routing Table (CART)     !!00664
                                                                       !00665
constant cart-appl-cde-l                value "74".                    !00666
                                                                       !00667
*             BASE24-pos Referral log File (PRF)                      !!00668
                                                                       !00669
constant prf-appl-cde-l                 value "75".                    !00670
                                                                       !00671
*             BASE24-pos Terminal Queue File (TQF)                    !!00672
                                                                       !00673
constant tqf-appl-cde-l                 value "76".                    !00674
                                                                       !00675
*             BASE24-pos CRT Authorization Retailer Usage             !!00676
*             Accumulation File (CRUF)                                !!00677
                                                                       !00678
constant cruf-appl-cde-l                value "77".                    !00679
                                                                       !00680
*             Internal use only - BASE24 switch's testdata file (QASW)!!00681
                                                                       !00682
constant qasw-appl-cde-l                value "78".                    !00683
                                                                       !00684
*             BASE24 Switch Terminal ID File (STF)                    !!00685
                                                                       !00686
constant stf-appl-cde-l                 value "79".                    !00687
                                                                       !00688
*             ACI's Standard BASE24-pos Device Handler Configuration  !!00689
*             File (ACNF)                                             !!00690
                                                                       !00691
constant acnf-appl-cde-l                value "7A".                    !00692
                                                                       !00693
*             ACI's Standard BASE24-pos Device Handler Response       !!00694
*             file (ARSP)                                             !!00695
                                                                       !00696
constant arsp-appl-cde-l                value "7B".                    !00697
                                                                       !00698
*             BASE24-pos Merchant Host Interface Device Handler       !!00699
*             Configuration File (MCNF)                               !!00700
                                                                       !00701
constant mcnf-appl-cde-l                value "7C".                    !00702
                                                                       !00703
*             BASE24-pos Merchant Host Interface Host Configuration   !!00704
*             File (MHCF)                                             !!00705
                                                                       !00706
constant mhcf-appl-cde-l                value "7D".                    !00707
                                                                       !00708
*             BASE24-pos Merchant Host Interface Device Handler       !!00709
*             Response file (MRSP)                                    !!00710
                                                                       !00711
constant mrsp-appl-cde-l                value "7E".                    !00712
                                                                       !00713
*             BASE24-pos Merchant Host Interface Totals Configuration !!00714
*             File (MTCF)                                             !!00715
                                                                       !00716
constant mtcf-appl-cde-l                value "7F".                    !00717
                                                                       !00718
*             BASE24-pos Merchant Host Interface Regulation-E file    !!00719
*             (MREG)                                                  !!00720
                                                                       !00721
constant mreg-appl-cde-l                value "7G".                    !00722
                                                                       !00723
                                                                       !00723C00
*             BASE24 KEYD file (KEYD)                                  !00723C01
                                                                       !00723C02
constant keyd-appl-cde-l                value "7H".                    !00723C03
                                                                       !00723F00
*             BASE24 Dormancy file (SVDF)                              !00723F01
                                                                       !00723F02
constant svdf-appl-cde-l                value "7I".                    !00723F03
                                                                       !00723F04
                                                                       !00723C04
*             Unused application code; "80"                           !!00724
                                                                       !00725
                                                                       !00726D00
constant rcdf-appl-cde-l                value "80".                    !00726D01
                                                                       !00726D02
                                                                       !00727
*             Unused application code; "81"                           !!00728
                                                                       !00729
constant unused-81-appl-cde-l           value "81".                    !00730
                                                                       !00731
*             Unused application code; "82"                           !!00732
                                                                       !00733
constant unused-82-appl-cde-l           value "82".                    !00734
                                                                       !00735
*             Unused application code; "83"                           !!00736
                                                                       !00737
constant unused-83-appl-cde-l           value "83".                    !00738
                                                                       !00739
*             Unused application code; "84"                           !!00740
                                                                       !00741
constant unused-84-appl-cde-l           value "84".                    !00742
                                                                       !00743
*             Unused application code; "85"                           !!00744
                                                                       !00745
constant unused-85-appl-cde-l           value "85".                    !00746
                                                                       !00747
*             Unused application code; "86"                           !!00748
                                                                       !00749
constant unused-86-appl-cde-l           value "86".                    !00750
                                                                       !00751
*             BASE24 Assign/Object Relationship File (AORF)           !!00752
                                                                       !00753
constant aorf-appl-cde-l                value "87".                    !00754
constant appl-aorf-d                    value aorf-appl-cde-l.         !00755
                                                                       !00756
*             BASE24 Assign/Process Relationship File (APRF)          !!00757
                                                                       !00758
constant aprf-appl-cde-l                value "88".                    !00759
constant appl-aprf-d                    value aprf-appl-cde-l.         !00760
                                                                       !00761
*             BASE24 Assign file (ASGN)                               !!00762
                                                                       !00763
constant asgn-appl-cde-l                value "89".                    !00764
constant appl-asgn-d                    value asgn-appl-cde-l.         !00765
                                                                       !00766
*             BASE24 EMT/Process type Relationship File (EPRF)        !!00767
                                                                       !00768
constant eprf-appl-cde-l                value "8A".                    !00769
constant appl-eprf-d                    value eprf-appl-cde-l.         !00770
                                                                       !00771
*             BASE24 Process/Object Relationship File (PORF)          !!00772
                                                                       !00773
constant porf-appl-cde-l                value "90".                    !00774
constant appl-porf-d                    value porf-appl-cde-l.         !00775
                                                                       !00776
*             BASE24 Process file (PRO)                               !!00777
                                                                       !00778
constant pro-appl-cde-l                 value "91".                    !00779
constant appl-pro-d                     value pro-appl-cde-l.          !00780
                                                                       !00781
*             BASE24 Server Class/Process Relationship File (SPRF)    !!00782
                                                                       !00783
constant sprf-appl-cde-l                value "92".                    !00784
constant appl-sprf-d                    value sprf-appl-cde-l.         !00785
                                                                       !00786
*             BASE24 Process Type File (PTF)                          !!00787
                                                                       !00788
constant ptf-appl-cde-l                 value "93".                    !00789
constant appl-ptf-d                     value ptf-appl-cde-l.          !00790
                                                                       !00791
*             BASE24 Server Class Type file (SCT)                     !!00792
                                                                       !00793
constant sct-appl-cde-l                 value "94".                    !00794
constant appl-sct-d                     value sct-appl-cde-l.          !00795
                                                                       !00796
*             Customer reserved application codes; "95" thru "99"     !!00797
                                                                       !00798
constant customer-rsrvd-95-appl-cde-l   value "95".                    !00799
constant customer-rsrvd-96-appl-cde-l   value "96".                    !00800
constant customer-rsrvd-97-appl-cde-l   value "97".                    !00801
constant customer-rsrvd-98-appl-cde-l   value "98".                    !00802
constant customer-rsrvd-99-appl-cde-l   value "99".                    !00803
                                                                       !00804
*             BASE24 Event Suppression File (ESF)                     !!00805
                                                                       !00806
constant esf-appl-cde-l                 value "9A".                    !00807
constant appl-esf-d                     value esf-appl-cde-l.          !00808
                                                                       !00809
*             BASE24 Log Partition File (LPF)                         !!00810
                                                                       !00811
constant lpf-appl-cde-l                 value "9B".                    !00812
constant appl-lpf-d                     value lpf-appl-cde-l.          !00813
                                                                       !00814
*             Bank Table (BANK)                                       !!00815
                                                                       !00816
constant bank-appl-cde-l                value "A0".                    !00817
                                                                       !00818
*             Bank Branch Table (BKBR)                                !!00819
                                                                       !00820
constant bkbr-appl-cde-l                value "A1".                    !00821
                                                                       !00822
*             Bank Notice Table (BKNT)                                !!00823
                                                                       !00824
constant bknt-appl-cde-l                value "A2".                    !00825
                                                                       !00826
*             Bank transaction Advice table (BKAV)                    !!00827
                                                                       !00828
constant bkav-appl-cde-l                value "A3".                    !00829
                                                                       !00830
*             Vendor Budget category table (VBUD)                     !!00831
                                                                       !00832
constant vbud-appl-cde-l                value "A4".                    !00833
                                                                       !00834
*             Cleanup Configuration Table (CLPT)                      !!00835
                                                                       !00836
constant clpt-appl-cde-l                value "A5".                    !00837
                                                                       !00838
*             Customer Billpay Table (CBPT)                           !!00839
                                                                       !00840
constant cbpt-appl-cde-l                value "A6".                    !00841
                                                                       !00842
*             Customer/Vendor Table (CVND)                            !!00843
                                                                       !00844
constant cvnd-appl-cde-l                value "A7".                    !00845
                                                                       !00846
*             Billpay reserved application code; "A8"                 !!00847
                                                                       !00848
constant billpay-rsrvd-A8-appl-cde-l    value "A8".                    !00849
                                                                       !00850
*             Billpay reserved application code; "A9"                 !!00851
                                                                       !00852
constant billpay-rsrvd-A9-appl-cde-l    value "A9".                    !00853
                                                                       !00854
*             Billpay History Table                                   !!00855
                                                                       !00856
constant hist-appl-cde-l                value "AA".                    !00857
                                                                       !00858
*             Billpay reserved application code; "AB"                 !!00859
                                                                       !00860
constant billpay-rsrvd-AB-appl-cde-l    value "AB".                    !00861
                                                                       !00862
*             Billpay reserved application code; "AC"                 !!00863
                                                                       !00864
constant billpay-rsrvd-AC-appl-cde-l    value "AC".                    !00865
                                                                       !00866
*             Billpay reserved application code; "AD"                 !!00867
                                                                       !00868
constant billpay-rsrvd-AD-appl-cde-l    value "AD".                    !00869
                                                                       !00870
*             Billpay reserved application code; "AE"                 !!00871
                                                                       !00872
constant billpay-rsrvd-AE-appl-cde-l    value "AE".                    !00873
                                                                       !00874
*             Billpay reserved application code; "AF"                 !!00875
                                                                       !00876
constant billpay-rsrvd-AF-appl-cde-l    value "AF".                    !00877
                                                                       !00878
*             Response Text Table (RTXT)                              !!00879
                                                                       !00880
constant rtxt-appl-cde-l                value "AG".                    !00881
                                                                       !00882
*             Retry Table (RTRY)                                      !!00883
                                                                       !00884
constant rtry-appl-cde-l                value "AH".                    !00885
                                                                       !00886
*             Vendor Table (VNDR)                                     !!00887
                                                                       !00888
constant vndr-appl-cde-l                value "AI".                    !00889
                                                                       !00890
*             Vendor Branch Table (VNDB)                              !!00891
                                                                       !00892
constant vndb-appl-cde-l                value "AJ".                    !00893
                                                                       !00894
*             Vendor Mask Table (VNDM)                                !!00895
                                                                       !00896
constant vndm-appl-cde-l                value "AK".                    !00897
                                                                       !00898
*             Billpay reserved application code; "AL"                 !!00899
                                                                       !00900
constant billpay-rsrvd-AL-appl-cde-l    value "AL".                    !00901
                                                                       !00902
*             Billing Group Table (BLG)                               !!00903
                                                                       !00904
constant blg-appl-cde-l                 value "AM".                    !00905
                                                                       !00906
*             Billing Rate Table (BLRT)                               !!00907
                                                                       !00908
constant blrt-appl-cde-l                value "AN".                    !00909
                                                                       !00910
*             Billing Type Table (BLTY)                               !!00911
                                                                       !00912
constant blty-appl-cde-l                value "AO".                    !00913
                                                                       !00914
*             Billpay reserved application code; "AP"                 !!00915
                                                                       !00916
constant billpay-rsrvd-AP-appl-cde-l    value "AP".                    !00917
                                                                       !00918
*             Rate Table (RATE)                                       !!00919
                                                                       !00920
constant rate-appl-cde-l                value "AQ".                    !00921
                                                                       !00922
*             Rate Group Table (RATG)                                 !!00923
                                                                       !00924
constant ratg-appl-cde-l                value "AR".                    !00925
                                                                       !00926
*             Service Provider Table (SVPT)                           !!00927
                                                                       !00928
constant svpt-appl-cde-l                value "AS".                    !00929
                                                                       !00930
*             Billpay reserved application code; "AT"                 !!00931
                                                                       !00932
constant billpay-rsrvd-AT-appl-cde-l    value "AT".                    !00933
                                                                       !00934
*             Billpay reserved application code; "AU"                 !!00935
                                                                       !00936
constant billpay-rsrvd-AU-appl-cde-l    value "AU".                    !00937
                                                                       !00938
*             Billpay reserved application code; "AV"                 !!00939
                                                                       !00940
constant billpay-rsrvd-AV-appl-cde-l    value "AV".                    !00941
                                                                       !00942
*             Billpay reserved application code; "AW"                 !!00943
                                                                       !00944
constant billpay-rsrvd-AW-appl-cde-l    value "AW".                    !00945
                                                                       !00946
*             Billpay reserved application code; "AX"                 !!00947
                                                                       !00948
constant billpay-rsrvd-AX-appl-cde-l    value "AX".                    !00949
                                                                       !00950
*             Billpay reserved application code; "AY"                 !!00951
                                                                       !00952
constant billpay-rsrvd-AY-appl-cde-l    value "AY".                    !00953
                                                                       !00954
*             Billpay reserved application code; "AZ"                 !!00955
                                                                       !00956
constant billpay-rsrvd-AZ-appl-cde-l    value "AZ".                    !00957
                                                                       !00958
*             BASE24 Smart Card Chip Number Range File (CNRF)         !!00959
                                                                       !00960
constant cnrf-appl-cde-l                value "B0".                    !00961
                                                                       !00962
*             Customer/Card Information File (CCIF)                   !!00963
                                                                       !00964
constant ccif-appl-cde-l                value "CI".                    !00965
constant appl-ccif-d                    value ccif-appl-cde-l.         !00966
                                                                       !00967
*             Customer/Card Memo File (CCMF)                          !!00968
                                                                       !00969
constant ccmf-appl-cde-l                value "CM".                    !00970
constant appl-ccmf-d                    value ccmf-appl-cde-l.         !00971
                                                                       !00972
*             Customer Information Screens (CIS)                      !!00973
                                                                       !00974
constant cis-appl-cde-l                 value "CS".                    !00975
constant appl-cis-d                     value cis-appl-cde-l.          !00976
                                                                       !00977
*             Customer Service Transaction Perusal (CSTP)             !!00978
                                                                       !00979
constant cstp-appl-cde-l                value "CT".                    !00980
constant appl-cstp-d                    value cstp-appl-cde-l.         !00981
                                                                       !00982
*             Fraud Authorization Parameters File (FAPF)              !!00983
                                                                       !00984
constant fapf-appl-cde-l                value "FA".                    !00985
constant appl-fapf-d                    value fapf-appl-cde-l.         !00986
                                                                       !00987
                                                                       !00987B00
*             Prism Routing Table File (PTBL)                          !00987B01
                                                                       !00987B02
constant ptbl-appl-cde-l                value "FB".                    !00987B03
                                                                       !00987B04
*             Scoring Engine Master File (SEMF)                        !00987B05
                                                                       !00987B06
constant semf-appl-cde-l                value "FC".                    !00987B07
                                                                       !00987B08
*             Logoff records                                          !!00988
                                                                       !00989
constant msg-sec-ff-appl-cde-l          value "FF".                    !00990
                                                                       !00991
*             Fraud Parameters File (FPF)                             !!00992
                                                                       !00993
constant fpf-appl-cde-l                 value "FP".                    !00994
constant appl-fpf-d                     value fpf-appl-cde-l.          !00995
                                                                       !00996
*             Fraud Suspect File (FSF)                                !!00997
                                                                       !00998
constant fsf-appl-cde-l                 value "FS".                    !00999
constant appl-fsf-d                     value fsf-appl-cde-l.          !01000
                                                                       !01001
*             Distributor Reserved Applicaton Codes; "G0" thru "GZ"   !!01002
                                                                       !01003
constant dist-rsrvd-G0-appl-cde-l       value "G0".                    !01004
                                                                       !01005
*             Distributor Reserved Application Code                   !!01006
                                                                       !01007
constant dist-rsrvd-G1-appl-cde-l       value "G1".                    !01008
                                                                       !01009
*             Distributor Reserved Application Code                   !!01010
                                                                       !01011
constant dist-rsrvd-G2-appl-cde-l       value "G2".                    !01012
                                                                       !01013
*             Distributor Reserved Application Code                   !!01014
                                                                       !01015
constant dist-rsrvd-G3-appl-cde-l       value "G3".                    !01016
                                                                       !01017
*             Distributor Reserved Application Code                   !!01018
                                                                       !01019
constant dist-rsrvd-G4-appl-cde-l       value "G4".                    !01020
                                                                       !01021
                                                                       !01021F00
*             BASE24 Mobile Operator File (MOF)                        !01021F01
                                                                       !01021F02
constant appl-mof-d                     value "G5".                    !01021F03
constant mof-appl-cde-l                 value appl-mof-d.              !01021F04
                                                                       !01021F05
                                                                       !01022F00
                                                                       !01022F01
                                                                       !01022F02
*             Distributor Reserved Application Code                   !!01026
                                                                       !01027
constant dist-rsrvd-G6-appl-cde-l       value "G6".                    !01028
                                                                       !01029
*             Distributor Reserved Application Code                   !!01030
                                                                       !01031
constant dist-rsrvd-G7-appl-cde-l       value "G7".                    !01032
                                                                       !01033
*             Distributor Reserved Application Code                   !!01034
                                                                       !01035
constant dist-rsrvd-G8-appl-cde-l       value "G8".                    !01036
                                                                       !01037
*             Distributor Reserved Application Code                   !!01038
                                                                       !01039
constant dist-rsrvd-G9-appl-cde-l       value "G9".                    !01040
                                                                       !01041
*             Distributor Reserved Application Code                   !!01042
                                                                       !01043
constant dist-rsrvd-GA-appl-cde-l       value "GA".                    !01044
                                                                       !01045
*             Distributor Reserved Application Code                   !!01046
                                                                       !01047
constant dist-rsrvd-GB-appl-cde-l       value "GB".                    !01048
                                                                       !01049
*             Distributor Reserved Application Code                   !!01050
                                                                       !01051
constant dist-rsrvd-GC-appl-cde-l       value "GC".                    !01052
                                                                       !01053
*             Distributor Reserved Application Code                   !!01054
                                                                       !01055
constant dist-rsrvd-GD-appl-cde-l       value "GD".                    !01056
                                                                       !01057
*             Distributor Reserved Application Code                   !!01058
                                                                       !01059
constant dist-rsrvd-GE-appl-cde-l       value "GE".                    !01060
                                                                       !01061
*             Distributor Reserved Application Code                   !!01062
                                                                       !01063
constant dist-rsrvd-GF-appl-cde-l       value "GF".                    !01064
                                                                       !01065
*             Distributor Reserved Application Code                   !!01066
                                                                       !01067
constant dist-rsrvd-GG-appl-cde-l       value "GG".                    !01068
                                                                       !01069
*             Distributor Reserved Application Code                   !!01070
                                                                       !01071
constant dist-rsrvd-GH-appl-cde-l       value "GH".                    !01072
                                                                       !01073
*             Distributor Reserved Application Code                   !!01074
                                                                       !01075
constant dist-rsrvd-GI-appl-cde-l       value "GI".                    !01076
                                                                       !01077
*             Distributor Reserved Application Code                   !!01078
                                                                       !01079
constant dist-rsrvd-GJ-appl-cde-l       value "GJ".                    !01080
                                                                       !01081
*             Distributor Reserved Application Code                   !!01082
                                                                       !01083
constant dist-rsrvd-GK-appl-cde-l       value "GK".                    !01084
                                                                       !01085
*             Distributor Reserved Application Code                   !!01086
                                                                       !01087
constant dist-rsrvd-GL-appl-cde-l       value "GL".                    !01088
                                                                       !01089
*             Distributor Reserved Application Code                   !!01090
                                                                       !01091
constant dist-rsrvd-GM-appl-cde-l       value "GM".                    !01092
                                                                       !01093
*             Distributor Reserved Application Code                   !!01094
                                                                       !01095
constant dist-rsrvd-GN-appl-cde-l       value "GN".                    !01096
                                                                       !01097
*             Distributor Reserved Application Code                   !!01098
                                                                       !01099
constant dist-rsrvd-GO-appl-cde-l       value "GO".                    !01100
                                                                       !01101
*             Distributor Reserved Application Code                   !!01102
                                                                       !01103
constant dist-rsrvd-GP-appl-cde-l       value "GP".                    !01104
                                                                       !01105
*             Distributor Reserved Application Code                   !!01106
                                                                       !01107
constant dist-rsrvd-GQ-appl-cde-l       value "GQ".                    !01108
                                                                       !01109
*             Distributor Reserved Application Code                   !!01110
                                                                       !01111
constant dist-rsrvd-GR-appl-cde-l       value "GR".                    !01112
                                                                       !01113
*             Distributor Reserved Application Code                   !!01114
                                                                       !01115
constant dist-rsrvd-GS-appl-cde-l       value "GS".                    !01116
                                                                       !01117
*             Distributor Reserved Application Code                   !!01118
                                                                       !01119
constant dist-rsrvd-GT-appl-cde-l       value "GT".                    !01120
                                                                       !01121
*             Distributor Reserved Application Code                   !!01122
                                                                       !01123
constant dist-rsrvd-GU-appl-cde-l       value "GU".                    !01124
                                                                       !01125
*             Distributor Reserved Application Code                   !!01126
                                                                       !01127
constant dist-rsrvd-GV-appl-cde-l       value "GV".                    !01128
                                                                       !01129
*             Distributor Reserved Application Code                   !!01130
                                                                       !01131
constant dist-rsrvd-GW-appl-cde-l       value "GW".                    !01132
                                                                       !01133
*             Distributor Reserved Application Code                   !!01134
                                                                       !01135
constant dist-rsrvd-GX-appl-cde-l       value "GX".                    !01136
                                                                       !01137
*             Distributor Reserved Application Code                   !!01138
                                                                       !01139
constant dist-rsrvd-GY-appl-cde-l       value "GY".                    !01140
                                                                       !01141
*             Distributor Reserved Application Code                   !!01142
                                                                       !01143
constant dist-rsrvd-GZ-appl-cde-l       value "GZ".                    !01144
                                                                       !01145
*             Distributor Reserved Application Codes; "H0" thru "HZ"  !!01146
                                                                       !01147
constant dist-rsrvd-H0-appl-cde-l       value "H0".                    !01148
                                                                       !01149
*             Distributor Reserved Application Code                   !!01150
                                                                       !01151
constant dist-rsrvd-H1-appl-cde-l       value "H1".                    !01152
                                                                       !01153
*             Distributor Reserved Application Code                   !!01154
                                                                       !01155
constant dist-rsrvd-H2-appl-cde-l       value "H2".                    !01156
                                                                       !01157
*             Distributor Reserved Application Code                   !!01158
                                                                       !01159
constant dist-rsrvd-H3-appl-cde-l       value "H3".                    !01160
                                                                       !01161
*             Distributor Reserved Application Code                   !!01162
                                                                       !01163
constant dist-rsrvd-H4-appl-cde-l       value "H4".                    !01164
                                                                       !01165
*             Distributor Reserved Application Code                   !!01166
                                                                       !01167
constant dist-rsrvd-H5-appl-cde-l       value "H5".                    !01168
                                                                       !01169
*             Distributor Reserved Application Code                   !!01170
                                                                       !01171
constant dist-rsrvd-H6-appl-cde-l       value "H6".                    !01172
                                                                       !01173
*             Distributor Reserved Application Code                   !!01174
                                                                       !01175
constant dist-rsrvd-H7-appl-cde-l       value "H7".                    !01176
                                                                       !01177
*             Distributor Reserved Application Code                   !!01178
                                                                       !01179
constant dist-rsrvd-H8-appl-cde-l       value "H8".                    !01180
                                                                       !01181
*             Distributor Reserved Application Code                   !!01182
                                                                       !01183
constant dist-rsrvd-H9-appl-cde-l       value "H9".                    !01184
                                                                       !01185
*             Distributor Reserved Application Code                   !!01186
                                                                       !01187
constant dist-rsrvd-HA-appl-cde-l       value "HA".                    !01188
                                                                       !01189
*             Distributor Reserved Application Code                   !!01190
                                                                       !01191
constant dist-rsrvd-HB-appl-cde-l       value "HB".                    !01192
                                                                       !01193
*             Distributor Reserved Application Code                   !!01194
                                                                       !01195
constant dist-rsrvd-HC-appl-cde-l       value "HC".                    !01196
                                                                       !01197
*             Distributor Reserved Application Code                   !!01198
                                                                       !01199
constant dist-rsrvd-HD-appl-cde-l       value "HD".                    !01200
                                                                       !01201
*             Distributor Reserved Application Code                   !!01202
                                                                       !01203
constant dist-rsrvd-HE-appl-cde-l       value "HE".                    !01204
                                                                       !01205
*             Distributor Reserved Application Code                   !!01206
                                                                       !01207
constant dist-rsrvd-HF-appl-cde-l       value "HF".                    !01208
                                                                       !01209
*             Distributor Reserved Application Code                   !!01210
                                                                       !01211
constant dist-rsrvd-HG-appl-cde-l       value "HG".                    !01212
                                                                       !01213
*             Distributor Reserved Application Code                   !!01214
                                                                       !01215
constant dist-rsrvd-HH-appl-cde-l       value "HH".                    !01216
                                                                       !01217
*             Distributor Reserved Application Code                   !!01218
                                                                       !01219
constant dist-rsrvd-HI-appl-cde-l       value "HI".                    !01220
                                                                       !01221
*             Distributor Reserved Application Code                   !!01222
                                                                       !01223
constant dist-rsrvd-HJ-appl-cde-l       value "HJ".                    !01224
                                                                       !01225
*             Distributor Reserved Application Code                   !!01226
                                                                       !01227
constant dist-rsrvd-HK-appl-cde-l       value "HK".                    !01228
                                                                       !01229
*             Distributor Reserved Application Code                   !!01230
                                                                       !01231
constant dist-rsrvd-HL-appl-cde-l       value "HL".                    !01232
                                                                       !01233
*             Distributor Reserved Application Code                   !!01234
                                                                       !01235
constant dist-rsrvd-HM-appl-cde-l       value "HM".                    !01236
                                                                       !01237
*             Distributor Reserved Application Code                   !!01238
                                                                       !01239
constant dist-rsrvd-HN-appl-cde-l       value "HN".                    !01240
                                                                       !01241
*             Distributor Reserved Application Code                   !!01242
                                                                       !01243
constant dist-rsrvd-HO-appl-cde-l       value "HO".                    !01244
                                                                       !01245
*             Distributor Reserved Application Code                   !!01246
                                                                       !01247
constant dist-rsrvd-HP-appl-cde-l       value "HP".                    !01248
                                                                       !01249
*             Distributor Reserved Application Code                   !!01250
                                                                       !01251
constant dist-rsrvd-HQ-appl-cde-l       value "HQ".                    !01252
                                                                       !01253
*             Distributor Reserved Application Code                   !!01254
                                                                       !01255
constant dist-rsrvd-HR-appl-cde-l       value "HR".                    !01256
                                                                       !01257
*             Distributor Reserved Application Code                   !!01258
                                                                       !01259
constant dist-rsrvd-HS-appl-cde-l       value "HS".                    !01260
                                                                       !01261
*             Distributor Reserved Application Code                   !!01262
                                                                       !01263
constant dist-rsrvd-HT-appl-cde-l       value "HT".                    !01264
                                                                       !01265
*             Distributor Reserved Application Code                   !!01266
                                                                       !01267
constant dist-rsrvd-HU-appl-cde-l       value "HU".                    !01268
                                                                       !01269
*             Distributor Reserved Application Code                   !!01270
                                                                       !01271
constant dist-rsrvd-HV-appl-cde-l       value "HV".                    !01272
                                                                       !01273
*             Distributor Reserved Application Code                   !!01274
                                                                       !01275
constant dist-rsrvd-HW-appl-cde-l       value "HW".                    !01276
                                                                       !01277
*             Distributor Reserved Application Code                   !!01278
                                                                       !01279
constant dist-rsrvd-HX-appl-cde-l       value "HX".                    !01280
                                                                       !01281
*             Distributor Reserved Application Code                   !!01282
                                                                       !01283
constant dist-rsrvd-HY-appl-cde-l       value "HY".                    !01284
                                                                       !01285
*             Distributor Reserved Application Code                   !!01286
                                                                       !01287
constant dist-rsrvd-HZ-appl-cde-l       value "HZ".                    !01288
                                                                       !01289
*             Switch Reserved Application Codes; "I0" thru "IZ"       !!01290
                                                                       !01291
*             BASE Interface Blocked BIN File (BBF)                   !!01292
                                                                       !01293
constant base-bbf-appl-cde-l            value "I0".                    !01294
                                                                       !01295
*             BASE Interface Institution Identification File (IIF)    !!01296
                                                                       !01297
constant base-iif-appl-cde-l            value "I1".                    !01298
                                                                       !01299
*             PLUS Interface Proprietary member center File (PPF)     !!01300
                                                                       !01301
constant plus-ppf-appl-cde-l            value "I2".                    !01302
                                                                       !01303
*             VISA Interface Blocked BIN File (BBF)                   !!01304
                                                                       !01305
constant visa-bbf-appl-cde-l            value "I3".                    !01306
                                                                       !01307
*             VISA Interface Institution Identification File (IIF)    !!01308
                                                                       !01309
constant visa-iif-appl-cde-l            value "I4".                    !01310
                                                                       !01311
*             BNET Interface Institution Identification File (IIF)    !!01312
                                                                       !01313
constant bnet-iif-appl-cde-l            value "I5".                    !01314
                                                                       !01315
*             Interface Interlink Services File (ISF)                 !!01316
                                                                       !01317
constant intf-isf-appl-cde-l            value "I6".                    !01318
                                                                       !01319
*             Switch Dispute File (SDF)                               !!01320
                                                                       !01321
constant sdf-appl-cde-l                 value "I7".                    !01322
                                                                       !01323
*             AOS 8.2 Interface Optional Data Configuration File      !!01324
*             (ODCF)                                                  !!01325
                                                                       !01326
constant aos82-odcf-appl-cde-l          value "I8".                    !01327
                                                                       !01328
*             AOS 8.2 Interface Maintenance Log File (MLF)            !!01329
                                                                       !01330
constant aos82-mlf-appl-cde-l           value "I9".                    !01331
                                                                       !01332
*             AOS 8.2 Interface Network Identification File (NIF)     !!01333
                                                                       !01334
constant aos82-nif-appl-cde-l           value "IA".                    !01335
                                                                       !01336
*             Interface Station Name File (SNF)                       !!01337
                                                                       !01338
constant intf-snf-appl-cde-l            value "IC".                    !01339
                                                                       !01340
*             VISA/PLUS Gateway ISO Interface Proprietary member center
*             File (VPPF)                                             !!01343
                                                                       !01344
constant visa-plus-iso-vppf-appl-cde-l  value "ID".                    !01345
                                                                       !01346
*             PLUS ISO Interface Proprietary member center File (PPF) !!01347
                                                                       !01348
constant plus-iso-ppf-appl-cde-l        value "IE".                    !01349
                                                                       !01350
*             ADP Interface Errored Transaction File (ETF)            !!01351
                                                                       !01352
constant adp-etf-appl-cde-l             value "IF".                    !01353
                                                                       !01354
*            Interface's Administrative File (ADMN)                   !!01355
                                                                       !01356
constant intf-admn-appl-cde-l           value "IG".                    !01357
                                                                       !01358
*            Interface's Request Log File (RLF)                       !!01359
                                                                       !01360
constant intf-rlf-appl-cde-l            value "IH".                    !01361
                                                                       !01362
*            Interface's Interchange Identification File (IIF)        !!01363
                                                                       !01364
constant intf-iif-appl-cde-l            value "II".                    !01365
                                                                       !01366
*            PLUS ISO Interface Adjustment Chargeback file (PAC)      !!01367
                                                                       !01368
constant plus-iso-pac-appl-cde-l        value "IJ".                    !01369
                                                                       !01370
*             Network Control Supervisor (NCS) application codes      !!01371
                                                                       !01372
*             NCS Security file (NCSS)                                !!01373
                                                                       !01374
constant ncs-ncss-appl-cde-l            value "L1".                    !01375
                                                                       !01376
*             NCS Profile file (NCSP)                                 !!01377
                                                                       !01378
constant ncs-ncsp-appl-cde-l            value "L2".                    !01379
                                                                       !01380
*             NCS Reserved Application Code; "L3"                     !!01381
                                                                       !01382
constant ncs-rsrvd-L3-appl-cde-l        value "L3".                    !01383
                                                                       !01384
*             NCS Reserved Application Code; "L4"                     !!01385
                                                                       !01386
constant ncs-rsrvd-L4-appl-cde-l        value "L4".                    !01387
                                                                       !01388
*             NCS Reserved Application Code; "L5"                     !!01389
                                                                       !01390
constant ncs-rsrvd-L5-appl-cde-l        value "L5".                    !01391
                                                                       !01392
*             BASE24 ITS Address Table (ADRT)                         !!01393
                                                                       !01394
constant adrt-appl-cde-l                value "M0".                    !01395
constant appl-adrt-d                    value adrt-appl-cde-l.         !01396
                                                                       !01397
*             BASE24 ITS Internal Message Translation File (IMTF)     !!01398
                                                                       !01399
constant imtf-appl-cde-l                value "M1".                    !01400
constant appl-imtf-d                    value adrt-appl-cde-l.         !01401
                                                                       !01402
*             BASE24 ITS Interface Configuration File (IFCF)          !!01403
                                                                       !01404
constant ifcf-appl-cde-l                value "M2".                    !01405
constant appl-ifcf-d                    value ifcf-appl-cde-l.         !01406
                                                                       !01407
*             BASE24 ITS Interface Station Table (IST)                !!01408
                                                                       !01409
constant ist-appl-cde-l                 value "M3".                    !01410
constant appl-ist-d                     value ist-appl-cde-l.          !01411
                                                                       !01412
*             BASE24 ITS Institution Routing Configuration File (IRCF)!!01413
                                                                       !01414
constant ircf-appl-cde-l                value "M4".                    !01415
constant appl-ircf-d                    value ircf-appl-cde-l.         !01416
                                                                       !01417
*             BASE24 ITS Processing Code Definition File (PCDF)       !!01418
                                                                       !01419
constant pcdf-appl-cde-l                value "M5".                    !01420
constant appl-pcdf-d                    value pcdf-appl-cde-l.         !01421
                                                                       !01422
*             BASE24 ITS Transaction Log File (ITLF)                  !!01423
                                                                       !01424
constant itlf-appl-cde-l                value "M6".                    !01425
constant appl-tlf-d                     value itlf-appl-cde-l.         !01426
                                                                       !01427
*             BASE24 ITS Transaction History File (THF)               !!01428
                                                                       !01429
constant thf-appl-cde-l                 value "M7".                    !01430
constant appl-thf-d                     value thf-appl-cde-l.          !01431
                                                                       !01432
*             BASE24 ITS Interface Security File (ISF)                !!01433
                                                                       !01434
constant isf-appl-cde-l                 value "M8".                    !01435
constant appl-isf-d                     value isf-appl-cde-l.          !01436
                                                                       !01437
*             BASE24 ITS Account Type Table (ATT)                     !!01438
                                                                       !01439
constant att-appl-cde-l                 value "M9".                    !01440
constant appl-att-d                     value att-appl-cde-l.          !01441
                                                                       !01442
*             BASE24 ITS Log Configuration File (LCF)                 !!01443
                                                                       !01444
constant lcf-appl-cde-l                 value "MA".                    !01445
constant appl-lcf-d                     value lcf-appl-cde-l.          !01446
                                                                       !01447
*             BASE24 ITS Exception Log File (ELF)                     !!01448
                                                                       !01449
constant elf-appl-cde-l                 value "MB".                    !01450
constant appl-elf-d                     value elf-appl-cde-l.          !01451
                                                                       !01452
*             BASE24 ITS File Control File (FCF)                      !!01453
                                                                       !01454
constant fcf-appl-cde-l                 value "MC".                    !01455
constant appl-fcf-d                     value fcf-appl-cde-l.          !01456
                                                                       !01457
*             BASE24 ITS Transaction History Configuration File (THCF)!!01458
                                                                       !01459
constant thcf-appl-cde-l                value "MD".                    !01460
constant appl-thcf-d                    value thcf-appl-cde-l.         !01461
                                                                       !01462
*             Customer/Account Relation Table (CACT)                  !!01463
                                                                       !01464
                                                                       !01465I00
constant cact-appl-cde-l                value "N0".                    !01465I01
                                                                       !01465I02
constant appl-cact-d                    value cact-appl-cde-l.         !01466
                                                                       !01467
*             Customer Allowed Transaction Table (CATT)               !!01468
                                                                       !01469
constant catt-appl-cde-l                value "N1".                    !01470
constant appl-catt-d                    value catt-appl-cde-l.         !01471
                                                                       !01472
*             Customer Table (CSTT)                                   !!01473
                                                                       !01474
constant cstt-appl-cde-l                value "N2".                    !01475
constant appl-cstt-d                    value cstt-appl-cde-l.         !01476
                                                                       !01477
*             Reserved by Control Server; "N3"                        !!01478
*             Unused Application Code; "N3"                           !!01479
                                                                       !01480
constant csr-unused-N3-appl-cde-l       value "N3".                    !01481
                                                                       !01482
*             Personal Information Table (PIT)                        !!01483
                                                                       !01484
constant pit-appl-cde-l                 value "N4".                    !01485
constant appl-pit-d                     value pit-appl-cde-l.          !01486
                                                                       !01487
*             Customer/Personal ID Relation Table (CPIT)              !!01488
                                                                       !01489
constant cpit-appl-cde-l                value "N5".                    !01490
constant appl-cpit-d                    value cpit-appl-cde-l.         !01491
                                                                       !01492
*             Transaction Type Source Code table (TTSC)               !!01493
                                                                       !01494
constant ttsc-appl-cde-l                value "N6".                    !01495
constant appl-ttsc-d                    value ttsc-appl-cde-l.         !01496
                                                                       !01497
*             Reserved by Control Server; "N7"                        !!01498
*             Unused Application Code; "N7"                           !!01499
                                                                       !01500
constant csr-unused-N7-appl-cde-l       value "N7".                    !01501
                                                                       !01502
*             Reserved by Control Server; "N8"                        !!01503
*             Unused Application Code; "N8"                           !!01504
                                                                       !01505
constant csr-unused-N8-appl-cde-l       value "N8".                    !01506
                                                                       !01507
*             Reserved by Control Server; "N9"                        !!01508
*             Customer Service Representative (CSR).                  !!01509
                                                                       !01510
constant csr-appl-cde-l                 value "N9".                    !01511
constant appl-csr-d                     value csr-appl-cde-l.          !01512
                                                                       !01513
*             Reserved by Control Server; "P0"                        !!01514
*             Assign Warmboot Server                                  !!01515
                                                                       !01516
constant appl-awb-d                     value "P0".                    !01517
constant cs-awb-appl-cde-l              value appl-awb-d.              !01518
                                                                       !01519
*             Reserved by Control Server; "P1"                        !!01520
*             Configuration Control Server                            !!01521
                                                                       !01522
constant appl-ccs-d                     value "P1".                    !01523
constant cs-ccs-appl-cde-l              value appl-ccs-d.              !01524
                                                                       !01525
*             Reserved by Control Server; "P2"                        !!01526
*             Debug Server                                            !!01527
                                                                       !01528
constant appl-dbg-d                     value "P2".                    !01529
constant cs-dbg-appl-cde-l              value appl-dbg-d.              !01530
                                                                       !01531
*             Reserved by Control Server; "P3"                        !!01532
*             EMT Warmboot Server                                     !!01533
                                                                       !01534
constant appl-ewb-d                     value "P3".                    !01535
constant cs-ewb-appl-cde-l              value appl-ewb-d.              !01536
                                                                       !01537
*             Reserved by Control Server; "P4"                        !!01538
*             LCONF Warmboot Server                                   !!01539
                                                                       !01540
constant appl-lwb-d                     value "P4".                    !01541
constant cs-lwb-appl-cde-l              value appl-lwb-d.              !01542
                                                                       !01543
*             Reserved by Control Server; "P5"                        !!01544
*             Param Warmboot Server                                   !!01545
                                                                       !01546
constant appl-pwb-d                     value "P5".                    !01547
constant cs-pwb-appl-cde-l              value appl-pwb-d.              !01548
                                                                       !01549
*             Reserved by Control Server; "P6"                        !!01550
*             Server Control Server                                   !!01551
                                                                       !01552
constant appl-scs-d                     value "P6".                    !01553
constant cs-scs-appl-cde-l              value appl-scs-d.              !01554
                                                                       !01555
*             Reserved by Control Server; "P7"                        !!01556
*             Status Server                                           !!01557
                                                                       !01558
constant appl-stat-d                    value "P7".                    !01559
constant cs-stat-appl-cde-l             value appl-stat-d.             !01560
                                                                       !01561
*             Reserved by Control Server; "P8"                        !!01562
*             Trace Server                                            !!01563
                                                                       !01564
constant appl-trc-d                     value "P8".                    !01565
constant cs-trc-appl-cde-l              value appl-trc-d.              !01566
                                                                       !01567
*             Reserved by Control Server; "P9"                        !!01568
*             ISCF Server                                             !!01569
                                                                       !01570
constant appl-iscf-d                    value "P9".                    !01571
constant cs-iscf-appl-cde-l             value appl-iscf-d.             !01572
                                                                       !01573
                                                                       !01574
*             Reserved by Control Server; "Q0"                        !!01575
*             Logical Network Configuration File (LNCF/LCONF)         !!01576
                                                                       !01577
constant appl-lconf-d                   value "Q0".                    !01578
constant cs-lncf-appl-cde-l             value appl-lconf-d.            !01579
                                                                       !01580
*             Reserved by Control Server; "Q1"                        !!01581
*             Symbolic Source Map file (SSM)                          !!01582
                                                                       !01583
constant appl-ssm-d                     value "Q1".                    !01584
constant cs-ssm-appl-cde-l              value appl-ssm-d.              !01585
                                                                       !01586
*             Reserved by Control Server; "Q2"                        !!01587
*             Lexicons                                                !!01588
                                                                       !01589
constant appl-lex-d                     value "Q2".                    !01590
constant cs-lex-appl-cde-l              value appl-lex-d.              !01591
                                                                       !01592
*             RPQ reserved application codes; "R0" thru "RZ"          !!01593
                                                                       !01594
*             RPQ Reserved Application Code                           !!01595
                                                                       !01596
********************************************************************  !!CSM47
***    BEGIN CSM #47  - TRANSACTION BLOCKING                     ***  !!CSM47
********************************************************************  !!CSM47
!constant rpq-rsrvd-R0-appl-cde-l        value "R0".                  !!01597
constant tbf-appl-cde-l                 value "R0".                    !CSM47
constant appl-tbf-d                     value tbf-appl-cde-l.          !CSM47
                                                                       !CSM47
********************************************************************  !!CSM47
***    END   CSM #47  - TRANSACTION BLOCKING                     ***  !!CSM47
********************************************************************  !!CSM47
                                                                       !01598
*             RPQ Reserved Application Code                           !!01599
                                                                       !01600
constant rpq-rsrvd-R1-appl-cde-l        value "R1".                    !01601
                                                                       !01602
*             RPQ Reserved Application Code                           !!01603
                                                                       !01604
constant rpq-rsrvd-R2-appl-cde-l        value "R2".                    !01605
                                                                       !01606
*             RPQ Reserved Application Code                           !!01607
                                                                       !01608
constant rpq-rsrvd-R3-appl-cde-l        value "R3".                    !01609
                                                                       !01610
*             RPQ Reserved Application Code                           !!01611
                                                                       !01612
constant rpq-rsrvd-R4-appl-cde-l        value "R4".                    !01613
                                                                       !01614
*             RPQ Reserved Application Code                           !!01615
                                                                       !01616
constant rpq-rsrvd-R5-appl-cde-l        value "R5".                    !01617
                                                                       !01618
*             RPQ Reserved Application Code                           !!01619
                                                                       !01620
constant rpq-rsrvd-R6-appl-cde-l        value "R6".                    !01621
                                                                       !01622
*             RPQ Reserved Application Code                           !!01623
                                                                       !01624
constant rpq-rsrvd-R7-appl-cde-l        value "R7".                    !01625
                                                                       !01626
*             RPQ Reserved Application Code                           !!01627
                                                                       !01628
constant rpq-rsrvd-R8-appl-cde-l        value "R8".                    !01629
                                                                       !01630
*             RPQ Reserved Application Code                           !!01631
                                                                       !01632
constant rpq-rsrvd-R9-appl-cde-l        value "R9".                    !01633
                                                                       !01634
*             RPQ Reserved Application Code                           !!01635
                                                                       !01636
constant rpq-rsrvd-RA-appl-cde-l        value "RA".                    !01637
                                                                       !01638
*             RPQ Reserved Application Code                           !!01639
                                                                       !01640
constant rpq-rsrvd-RB-appl-cde-l        value "RB".                    !01641
                                                                       !01642
*             RPQ Reserved Application Code                           !!01643
                                                                       !01644
constant rpq-rsrvd-RC-appl-cde-l        value "RC".                    !01645
                                                                       !01646
*             RPQ Reserved Application Code                           !!01647
                                                                       !01648
constant rpq-rsrvd-RD-appl-cde-l        value "RD".                    !01649
                                                                       !01650
*             RPQ Reserved Application Code                           !!01651
                                                                       !01652
constant rpq-rsrvd-RE-appl-cde-l        value "RE".                    !01653
                                                                       !01654
*             RPQ Reserved Application Code                           !!01655
                                                                       !01656
constant rpq-rsrvd-RF-appl-cde-l        value "RF".                    !01657
                                                                       !01658
*             RPQ Reserved Application Code                           !!01659
                                                                       !01660
constant rpq-rsrvd-RG-appl-cde-l        value "RG".                    !01661
                                                                       !01662
*             RPQ Reserved Application Code                           !!01663
                                                                       !01664
constant rpq-rsrvd-RH-appl-cde-l        value "RH".                    !01665
                                                                       !01666
*             RPQ Reserved Application Code                           !!01667
                                                                       !01668
constant rpq-rsrvd-RI-appl-cde-l        value "RI".                    !01669
                                                                       !01670
*             RPQ Reserved Application Code                           !!01671
                                                                       !01672
constant rpq-rsrvd-RJ-appl-cde-l        value "RJ".                    !01673
                                                                       !01674
*             RPQ Reserved Application Code                           !!01675
                                                                       !01676
constant rpq-rsrvd-RK-appl-cde-l        value "RK".                    !01677
                                                                       !01678
*             RPQ Reserved Application Code                           !!01679
                                                                       !01680
constant rpq-rsrvd-RL-appl-cde-l        value "RL".                    !01681
                                                                       !01682
*             RPQ Reserved Application Code                           !!01683
                                                                       !01684
constant rpq-rsrvd-RM-appl-cde-l        value "RM".                    !01685
                                                                       !01686
*             RPQ Reserved Application Code                           !!01687
                                                                       !01688
constant rpq-rsrvd-RN-appl-cde-l        value "RN".                    !01689
                                                                       !01690
*             RPQ Reserved Application Code                           !!01691
                                                                       !01692
constant rpq-rsrvd-RO-appl-cde-l        value "RO".                    !01693
                                                                       !01694
*             RPQ Reserved Application Code                           !!01695
                                                                       !01696
constant rpq-rsrvd-RP-appl-cde-l        value "RP".                    !01697
                                                                       !01698
*             RPQ Reserved Application Code                           !!01699
                                                                       !01700
constant rpq-rsrvd-RQ-appl-cde-l        value "RQ".                    !01701
                                                                       !01702
*             RPQ Reserved Application Code                           !!01703
                                                                       !01704
constant rpq-rsrvd-RR-appl-cde-l        value "RR".                    !01705
                                                                       !01706
*             RPQ Reserved Application Code                           !!01707
                                                                       !01708
constant rpq-rsrvd-RS-appl-cde-l        value "RS".                    !01709
                                                                       !01710
*             RPQ Reserved Application Code                           !!01711
                                                                       !01712
constant rpq-rsrvd-RT-appl-cde-l        value "RT".                    !01713
                                                                       !01714
*             RPQ Reserved Application Code                           !!01715
                                                                       !01716
constant rpq-rsrvd-RU-appl-cde-l        value "RU".                    !01717
                                                                       !01718
*             RPQ Reserved Application Code                           !!01719
                                                                       !01720
constant rpq-rsrvd-RV-appl-cde-l        value "RV".                    !01721
                                                                       !01722
*             RPQ Reserved Application Code                           !!01723
                                                                       !01724
constant rpq-rsrvd-RW-appl-cde-l        value "RW".                    !01725
                                                                       !01726
*             RPQ Reserved Application Code                           !!01727
                                                                       !01728
constant rpq-rsrvd-RX-appl-cde-l        value "RX".                    !01729
                                                                       !01730
*             RPQ Reserved Application Code                           !!01731
                                                                       !01732
constant rpq-rsrvd-RY-appl-cde-l        value "RY".                    !01733
                                                                       !01734
*             RPQ Reserved Application Code                           !!01735
                                                                       !01736
constant rpq-rsrvd-RZ-appl-cde-l        value "RZ".                    !01737
                                                                       !01738
                                                                       !01739
*             BASE24 Issuer Processing Code File (IPCF)               !!01740
                                                                       !01741
constant appl-ipcf-d                    value "UA".                    !01742
constant ipcf-appl-cde-l                value appl-ipcf-d.             !01743
                                                                       !01744
*             BASE24 Processing code Description File (PDF)           !!01745
                                                                       !01746
constant appl-pdf-d                     value "UT".                    !01747
constant pdf-appl-cde-l                 value appl-pdf-d.              !01748
                                                                       !01749
*             BASE24 Transaction Code File (TCF)                      !!01750
                                                                       !01751
constant appl-tcf-d                     value "UU".                    !01752
constant tcf-appl-cde-l                 value appl-tcf-d.              !01753
                                                                       !01754
*             BASE24 Acquirer Processing Code File (APCF)             !!01755
                                                                       !01756
constant appl-apcf-d                    value "UX".                    !01757
constant apcf-appl-cde-l                value appl-apcf-d.             !01758
                                                                       !01759
                                                                       !01759G00
*             BASE24-inventory Stock Configuration File (NSCF)         !01759G01
                                                                       !01759G02
constant appl-nscf-d                    value "V7".                    !01759G03
constant nscf-appl-cde-l                value appl-nscf-d.             !01759G04
                                                                       !01759G05
*             BASE24 External Message File 5 (EMF5)                   !!01760
                                                                       !01761
constant emf5-appl-cde-l                value "XX".                    !01762
                                                                       !01763
*             BASE24 Key5 file (KEY5)                                 !!01764
                                                                       !01765
constant key5-appl-cde-l                value "ZZ".                    !01766
                                                                       !01767
?noc
?notal
?cobol =baddl_baddlcob
                                                                       !01774
def msg-sec-00-appl-cde-c               pic x(2)                       !01775
                                        value msg-sec-00-appl-cde-l.   !01776
                                                                       !01777
def keyf-appl-cde-c                     pic x(2)                       !01778
                                        value keyf-appl-cde-l.         !01779
                                                                       !01780
def emf-appl-cde-c                      pic x(2)                       !01781
                                        value emf-appl-cde-l.          !01782
                                                                       !01783
def appl-emf-c                          pic x(2)                       !01784
                                        value appl-emf-d.              !01785
                                                                       !01786
def ecf-appl-cde-c                      pic x(2)                       !01787
                                        value ecf-appl-cde-l.          !01788
                                                                       !01789
def sec-appl-cde-c                      pic x(2)                       !01790
                                        value sec-appl-cde-l.          !01791
                                                                       !01792
def unused-11-appl-cde-c                pic x(2)                       !01793
                                        value unused-11-appl-cde-l.    !01794
                                                                       !01795
def unused-12-appl-cde-c                pic x(2)                       !01796
                                        value unused-12-appl-cde-l.    !01797
                                                                       !01798
def unused-13-appl-cde-c                pic x(2)                       !01799
                                        value unused-13-appl-cde-l.    !01800
                                                                       !01801
def unused-14-appl-cde-c                pic x(2)                       !01802
                                        value unused-14-appl-cde-l.    !01803
                                                                       !01804
def unused-15-appl-cde-c                pic x(2)                       !01805
                                        value unused-15-appl-cde-l.    !01806
                                                                       !01807
def unused-16-appl-cde-c                pic x(2)                       !01808
                                        value unused-16-appl-cde-l.    !01809
                                                                       !01810
def unused-17-appl-cde-c                pic x(2)                       !01811
                                        value unused-17-appl-cde-l.    !01812
                                                                       !01813
def unused-18-appl-cde-c                pic x(2)                       !01814
                                        value unused-18-appl-cde-l.    !01815
                                                                       !01816
def unused-19-appl-cde-c                pic x(2)                       !01817
                                        value unused-19-appl-cde-l.    !01818
                                                                       !01819
def unused-1A-appl-cde-c                pic x(2)                       !01820
                                        value unused-1A-appl-cde-l.    !01821
                                                                       !01822
def unused-1B-appl-cde-c                pic x(2)                       !01823
                                        value unused-1B-appl-cde-l.    !01824
                                                                       !01825
def oif-appl-cde-c                      pic x(2)                       !01826
                                        value oif-appl-cde-l.          !01827
                                                                       !01828
def ufir-appl-cde-c                     pic x(2)                       !01829
                                        value ufir-appl-cde-l.         !01830
                                                                       !01831
def appl-ufir-c                         pic x(2)                       !01832
                                        value appl-ufir-d.             !01833
                                                                       !01834
def upfr-appl-cde-c                     pic x(2)                       !01835
                                        value upfr-appl-cde-l.         !01836
                                                                       !01837
def csec-appl-cde-c                     pic x(2)                       !01838
                                        value csec-appl-cde-l.         !01839
                                                                       !01840
def idf-appl-cde-c                      pic x(2)                       !01841
                                        value idf-appl-cde-l.          !01842
                                                                       !01843
def appl-idf-c                          pic x(2)                       !01844
                                        value appl-idf-d.              !01845
                                                                       !01846
def tdf-appl-cde-c                      pic x(2)                       !01847
                                        value tdf-appl-cde-l.          !01848
                                                                       !01849
def ttdf-appl-cde-c                     pic x(2)                       !01850
                                        value ttdf-appl-cde-l.         !01851
                                                                       !01852
def ptdf-appl-cde-c                     pic x(2)                       !01853
                                        value ptdf-appl-cde-l.         !01854
                                                                       !01855
def prdf-appl-cde-c                     pic x(2)                       !01856
                                        value prdf-appl-cde-l.         !01857
                                                                       !01858
def ttf-appl-cde-c                      pic x(2)                       !01859
                                        value ttf-appl-cde-l.          !01860
                                                                       !01861
def orf-appl-cde-c                      pic x(2)                       !01862
                                        value orf-appl-cde-l.          !01863
                                                                       !01864
def trf-appl-cde-c                      pic x(2)                       !01865
                                        value trf-appl-cde-l.          !01866
                                                                       !01867
def mbaf-appl-cde-c                     pic x(2)                       !01868
                                        value mbaf-appl-cde-l.         !01869
                                                                       !01870
def atdd1-appl-cde-c                    pic x(2)                       !01871
                                        value atdd1-appl-cde-l.        !01872
                                                                       !01873
def airs-appl-cde-c                     pic x(2)                       !01874
                                        value airs-appl-cde-l.         !01875
                                                                       !01876
def atds1-appl-cde-c                    pic x(2)                       !01877
                                        value atds1-appl-cde-l.        !01878
                                                                       !01879
                                                                       !01879A00
def erf-appl-cde-c                      pic x(2)                       !01879A01
                                        value erf-appl-cde-l.          !01879A02
                                                                       !01879A03
                                                                       !01879A04
                                                                       !01879J00
def dccd-appl-cde-c                     pic x(2)                       !01879J01
                                        value dccd-appl-cde-l.         !01879J02
                                                                       !01879J03
def ptdd1-appl-cde-c                    pic x(2)                       !01880
                                        value ptdd1-appl-cde-l.        !01881
                                                                       !01882
                                                                       !01882H00
def atdd2-appl-cde-c                    pic x(2)                       !01882H01
                                        value atdd2-appl-cde-l.        !01882H02
                                                                       !01882H03
def ptdd2-appl-cde-c                    pic x(2)                       !01882H04
                                        value ptdd2-appl-cde-l.        !01882H05
                                                                       !01882H06
def ptds1-appl-cde-c                    pic x(2)                       !01883
                                        value ptds1-appl-cde-l.        !01884
                                                                       !01885
def tlf-appl-cde-c                      pic x(2)                       !01886
                                        value tlf-appl-cde-l.          !01887
                                                                       !01888
def arpts-appl-cde-c                    pic x(2)                       !01889
                                        value arpts-appl-cde-l.        !01890
                                                                       !01891
def ttlf-appl-cde-c                     pic x(2)                       !01892
                                        value ttlf-appl-cde-l.         !01893
                                                                       !01894
def ptlf-appl-cde-c                     pic x(2)                       !01895
                                        value ptlf-appl-cde-l.         !01896
                                                                       !01897
def chf-appl-cde-c                      pic x(2)                       !01898
                                        value chf-appl-cde-l.          !01899
                                                                       !01900
def capf-appl-cde-c                     pic x(2)                       !01901
                                        value capf-appl-cde-l.         !01902
                                                                       !01903
def bsf-appl-cde-c                      pic x(2)                       !01904
                                        value bsf-appl-cde-l.          !01905
                                                                       !01906
def ccf-appl-cde-c                      pic x(2)                       !01907
                                        value ccf-appl-cde-l.          !01908
                                                                       !01909
def csf-appl-cde-c                      pic x(2)                       !01910
                                        value csf-appl-cde-l.          !01911
                                                                       !01912
def keya-appl-cde-c                     pic x(2)                       !01913
                                        value keya-appl-cde-l.         !01914
                                                                       !01915
def appl-keya-c                         pic x(2)                       !01916
                                        value appl-keya-d.             !01917
                                                                       !01918
                                                                       !01918C00
def keyd-appl-cde-c                     pic x(2)                       !01918C01
                                        value keyd-appl-cde-l.         !01918C02
                                                                       !01918C03
                                                                       !01918F00
def svdf-appl-cde-c                     pic x(2)                       !01918F01
                                        value svdf-appl-cde-l.         !01918F02
                                                                       !01918F03
                                                                       !01918A00
def keyi-appl-cde-c                     pic x(2)                       !01918A01
                                        value keyi-appl-cde-l.         !01918A02
                                                                       !01918A03
                                                                       !01918E00
def tsrf-appl-cde-c                     pic x(2)                       !01918E01
                                        value tsrf-appl-cde-l.         !01918E02
                                                                       !01918E03
                                                                       !01918E04
                                                                       !01918E05
                                                                       !01918E06
                                                                       !01918F04
def strf-appl-cde-c                     pic x(2)                       !01918F05
                                        value appl-strf-d.             !01918F06
                                                                       !01918F07
                                                                       !01918J00
def nidf-appl-cde-c                     pic x(2)                       !01918J01
                                        value nidf-appl-cde-l.         !01918J02
                                                                       !01918J03
                                                                       !01918K00
def lmcf-appl-cde-c                     pic x(2)                       !01918K01
                                        value lmcf-appl-cde-l.         !01918K02
                                                                       !01918K03
def cpf-appl-cde-c                      pic x(2)                       !01919
                                        value cpf-appl-cde-l.          !01920
                                                                       !01921
def ipf-appl-cde-c                      pic x(2)                       !01922
                                        value ipf-appl-cde-l.          !01923
                                                                       !01924
def icf-appl-cde-c                      pic x(2)                       !01925
                                        value icf-appl-cde-l.          !01926
                                                                       !01927
def iif-appl-cde-c                      pic x(2)                       !01928
                                        value iif-appl-cde-l.          !01929
                                                                       !01930
def vvt-appl-cde-c                      pic x(2)                       !01931
                                        value vvt-appl-cde-l.          !01932
                                                                       !01933
def vvc-appl-cde-c                      pic x(2)                       !01934
                                        value vvc-appl-cde-l.          !01935
                                                                       !01936
def unused-47-appl-cde-c                pic x(2)                       !01937
                                        value unused-47-appl-cde-l.    !01938
                                                                       !01939
def hptc-appl-cde-c                     pic x(2)                       !01940
                                        value hptc-appl-cde-l.         !01941
                                                                       !01942
def unused-49-appl-cde-c                pic x(2)                       !01943
                                        value unused-49-appl-cde-l.    !01944
                                                                       !01945
def bbf-appl-cde-c                      pic x(2)                       !01946
                                        value bbf-appl-cde-l.          !01947
                                                                       !01948
def neg-appl-cde-c                      pic x(2)                       !01949
                                        value neg-appl-cde-l.          !01950
                                                                       !01951
def nnf-appl-cde-c                      pic x(2)                       !01952
                                        value nnf-appl-cde-l.          !01953
                                                                       !01954
def hcf-appl-cde-c                      pic x(2)                       !01955
                                        value hcf-appl-cde-l.          !01956
                                                                       !01957
def unused-53-appl-cde-c                pic x(2)                       !01958
                                        value unused-53-appl-cde-l.    !01959
                                                                       !01960
def tkn-appl-cde-c                      pic x(2)                       !01961
                                        value tkn-appl-cde-l.          !01962
                                                                       !01963
def appl-tkn-c                          pic x(2)                       !01964
                                        value appl-tkn-d.              !01965
                                                                       !01966
def uaf-appl-cde-c                      pic x(2)                       !01967
                                        value uaf-appl-cde-l.          !01968
                                                                       !01969
def rcpt-appl-cde-c                     pic x(2)                       !01970
                                        value rcpt-appl-cde-l.         !01971
                                                                       !01972
def hpcf-appl-cde-c                     pic x(2)                       !01973
                                        value hpcf-appl-cde-l.         !01974
                                                                       !01975
def surf-appl-cde-c                     pic x(2)                       !01976
                                        value surf-appl-cde-l.         !01977
                                                                       !01978
def icfe-appl-cde-c                     pic x(2)                       !01979
                                        value icfe-appl-cde-l.         !01980
                                                                       !01981
def pbf-appl-cde-c                      pic x(2)                       !01982
                                        value pbf-appl-cde-l.          !01983
                                                                       !01984
def appl-pbf-c                          pic x(2)                       !01985
                                        value appl-pbf-d.              !01986
                                                                       !01987
def spf-appl-cde-c                      pic x(2)                       !01988
                                        value spf-appl-cde-l.          !01989
                                                                       !01990
def nbf-appl-cde-c                      pic x(2)                       !01991
                                        value nbf-appl-cde-l.          !01992
                                                                       !01993
def whff-appl-cde-c                     pic x(2)                       !01994
                                        value whff-appl-cde-l.         !01995
                                                                       !01996
def arf-appl-cde-c                      pic x(2)                       !01997
                                        value arf-appl-cde-l.          !01998
                                                                       !01999
def dest-appl-cde-c                     pic x(2)                       !02000
                                        value dest-appl-cde-l.         !02001
                                                                       !02002
def scm-appl-cde-c                      pic x(2)                       !02003
                                        value scm-appl-cde-l.          !02004
                                                                       !02005
def obj-appl-cde-c                      pic x(2)                       !02006
                                        value obj-appl-cde-l.          !02007
                                                                       !02008
def emt-appl-cde-c                      pic x(2)                       !02009
                                        value emt-appl-cde-l.          !02010
                                                                       !02011
def eorf-appl-cde-c                     pic x(2)                       !02012
                                        value eorf-appl-cde-l.         !02013
                                                                       !02014
def caf-appl-cde-c                      pic x(2)                       !02015
                                        value caf-appl-cde-l.          !02016
                                                                       !02017
def ast-appl-cde-c                      pic x(2)                       !02018
                                        value ast-appl-cde-l.          !02019
                                                                       !02020
def rtbl-appl-cde-c                     pic x(2)                       !02021
                                        value rtbl-appl-cde-l.         !02022
                                                                       !02023
def admn-appl-cde-c                     pic x(2)                       !02024
                                        value admn-appl-cde-l.         !02025
                                                                       !02026
def cart-appl-cde-c                     pic x(2)                       !02027
                                        value cart-appl-cde-l.         !02028
                                                                       !02029
                                                                       !02029J00
def prf-appl-cde-c                      pic x(2)                       !02029J01
                                        value prf-appl-cde-l.          !02029J02
                                                                       !02029J03
def tqf-appl-cde-c                      pic x(2)                       !02029J04
                                        value tqf-appl-cde-l.          !02029J05
                                                                       !02029J06
def cruf-appl-cde-c                     pic x(2)                       !02030
                                        value cruf-appl-cde-l.         !02031
                                                                       !02032
def qasw-appl-cde-c                     pic x(2)                       !02033
                                        value qasw-appl-cde-l.         !02034
                                                                       !02035
def stf-appl-cde-c                      pic x(2)                       !02036
                                        value stf-appl-cde-l.          !02037
                                                                       !02038
def acnf-appl-cde-c                     pic x(2)                       !02039
                                        value acnf-appl-cde-l.         !02040
                                                                       !02041
def arsp-appl-cde-c                     pic x(2)                       !02042
                                        value arsp-appl-cde-l.         !02043
                                                                       !02044
def mcnf-appl-cde-c                     pic x(2)                       !02045
                                        value mcnf-appl-cde-l.         !02046
                                                                       !02047
def mhcf-appl-cde-c                     pic x(2)                       !02048
                                        value mhcf-appl-cde-l.         !02049
                                                                       !02050
def mrsp-appl-cde-c                     pic x(2)                       !02051
                                        value mrsp-appl-cde-l.         !02052
                                                                       !02053
def mtcf-appl-cde-c                     pic x(2)                       !02054
                                        value mtcf-appl-cde-l.         !02055
                                                                       !02056
def mreg-appl-cde-c                     pic x(2)                       !02057
                                        value mreg-appl-cde-l.         !02058
                                                                       !02059
                                                                       !02060D00
                                                                       !02060D01
def rcdf-appl-cde-c                     pic x(2)                       !02060D02
                                        value rcdf-appl-cde-l.         !02060D03
                                                                       !02060D04
                                                                       !02062
def unused-81-appl-cde-c                pic x(2)                       !02063
                                        value unused-81-appl-cde-l.    !02064
                                                                       !02065
def unused-82-appl-cde-c                pic x(2)                       !02066
                                        value unused-82-appl-cde-l.    !02067
                                                                       !02068
def unused-83-appl-cde-c                pic x(2)                       !02069
                                        value unused-83-appl-cde-l.    !02070
                                                                       !02071
def unused-84-appl-cde-c                pic x(2)                       !02072
                                        value unused-84-appl-cde-l.    !02073
                                                                       !02074
def unused-85-appl-cde-c                pic x(2)                       !02075
                                        value unused-85-appl-cde-l.    !02076
                                                                       !02077
def unused-86-appl-cde-c                pic x(2)                       !02078
                                        value unused-86-appl-cde-l.    !02079
                                                                       !02080
def aprf-appl-cde-c                     pic x(2)                       !02081
                                        value aprf-appl-cde-l.         !02082
                                                                       !02083
def asgn-appl-cde-c                     pic x(2)                       !02084
                                        value asgn-appl-cde-l.         !02085
                                                                       !02086
def eprf-appl-cde-c                     pic x(2)                       !02087
                                        value eprf-appl-cde-l.         !02088
                                                                       !02089
def porf-appl-cde-c                     pic x(2)                       !02090
                                        value porf-appl-cde-l.         !02091
                                                                       !02092
def pro-appl-cde-c                      pic x(2)                       !02093
                                        value pro-appl-cde-l.          !02094
                                                                       !02095
def sprf-appl-cde-c                     pic x(2)                       !02096
                                        value sprf-appl-cde-l.         !02097
                                                                       !02098
def ptf-appl-cde-c                      pic x(2)                       !02099
                                        value ptf-appl-cde-l.          !02100
                                                                       !02101
def sct-appl-cde-c                      pic x(2)                       !02102
                                        value sct-appl-cde-l.          !02103
                                                                       !02104
def customer-rsrvd-95-appl-cde-c        pic x(2)                       !02105
                                        value                          !02106
                                        customer-rsrvd-95-appl-cde-l.  !02107
                                                                       !02108
def customer-rsrvd-96-appl-cde-c        pic x(2)                       !02109
                                        value                          !02110
                                        customer-rsrvd-96-appl-cde-l.  !02111
                                                                       !02112
def customer-rsrvd-97-appl-cde-c        pic x(2)                       !02113
                                        value                          !02114
                                        customer-rsrvd-97-appl-cde-l.  !02115
                                                                       !02116
def customer-rsrvd-98-appl-cde-c        pic x(2)                       !02117
                                        value                          !02118
                                        customer-rsrvd-98-appl-cde-l.  !02119
                                                                       !02120
def customer-rsrvd-99-appl-cde-c        pic x(2)                       !02121
                                        value                          !02122
                                        customer-rsrvd-99-appl-cde-l.  !02123
                                                                       !02124
def esf-appl-cde-c                      pic x(2)                       !02125
                                        value esf-appl-cde-l.          !02126
                                                                       !02127
def lpf-appl-cde-c                      pic x(2)                       !02128
                                        value lpf-appl-cde-l.          !02129
                                                                       !02130
def bank-appl-cde-c                     pic x(2)                       !02131
                                        value bank-appl-cde-l.         !02132
                                                                       !02133
def bkbr-appl-cde-c                     pic x(2)                       !02134
                                        value bkbr-appl-cde-l.         !02135
                                                                       !02136
def bknt-appl-cde-c                     pic x(2)                       !02137
                                        value bknt-appl-cde-l.         !02138
                                                                       !02139
def bkav-appl-cde-c                     pic x(2)                       !02140
                                        value bkav-appl-cde-l.         !02141
                                                                       !02142
def vbud-appl-cde-c                     pic x(2)                       !02143
                                        value vbud-appl-cde-l.         !02144
                                                                       !02145
def clpt-appl-cde-c                     pic x(2)                       !02146
                                        value clpt-appl-cde-l.         !02147
                                                                       !02148
def cbpt-appl-cde-c                     pic x(2)                       !02149
                                        value cbpt-appl-cde-l.         !02150
                                                                       !02151
def cvnd-appl-cde-c                     pic x(2)                       !02152
                                        value cvnd-appl-cde-l.         !02153
                                                                       !02154
def billpay-rsrvd-A8-appl-cde-c         pic x(2)                       !02155
                                        value                          !02156
                                        billpay-rsrvd-A8-appl-cde-l.   !02157
                                                                       !02158
def billpay-rsrvd-A9-appl-cde-c         pic x(2)                       !02159
                                        value                          !02160
                                        billpay-rsrvd-A9-appl-cde-l.   !02161
                                                                       !02162
def hist-appl-cde-c                     pic x(2)                       !02163
                                        value hist-appl-cde-l.         !02164
                                                                       !02165
def billpay-rsrvd-AB-appl-cde-c         pic x(2)                       !02166
                                        value                          !02167
                                        billpay-rsrvd-AB-appl-cde-l.   !02168
                                                                       !02169
def billpay-rsrvd-AC-appl-cde-c         pic x(2)                       !02170
                                        value                          !02171
                                        billpay-rsrvd-AC-appl-cde-l.   !02172
                                                                       !02173
def billpay-rsrvd-AD-appl-cde-c         pic x(2)                       !02174
                                        value                          !02175
                                        billpay-rsrvd-AD-appl-cde-l.   !02176
                                                                       !02177
def billpay-rsrvd-AE-appl-cde-c         pic x(2)                       !02178
                                        value                          !02179
                                        billpay-rsrvd-AE-appl-cde-l.   !02180
                                                                       !02181
def billpay-rsrvd-AF-appl-cde-c         pic x(2)                       !02182
                                        value                          !02183
                                        billpay-rsrvd-AF-appl-cde-l.   !02184
                                                                       !02185
def rtxt-appl-cde-c                     pic x(2)                       !02186
                                        value rtxt-appl-cde-l.         !02187
                                                                       !02188
def rtry-appl-cde-c                     pic x(2)                       !02189
                                        value rtry-appl-cde-l.         !02190
                                                                       !02191
def vndr-appl-cde-c                     pic x(2)                       !02192
                                        value vndr-appl-cde-l.         !02193
                                                                       !02194
def vndb-appl-cde-c                     pic x(2)                       !02195
                                        value vndb-appl-cde-l.         !02196
                                                                       !02197
def vndm-appl-cde-c                     pic x(2)                       !02198
                                        value vndm-appl-cde-l.         !02199
                                                                       !02200
def billpay-rsrvd-AL-appl-cde-c         pic x(2)                       !02201
                                        value                          !02202
                                        billpay-rsrvd-AL-appl-cde-l.   !02203
                                                                       !02204
def blg-appl-cde-c                      pic x(2)                       !02205
                                        value blg-appl-cde-l.          !02206
                                                                       !02207
def blrt-appl-cde-c                     pic x(2)                       !02208
                                        value blrt-appl-cde-l.         !02209
                                                                       !02210
def blty-appl-cde-c                     pic x(2)                       !02211
                                        value blty-appl-cde-l.         !02212
                                                                       !02213
def billpay-rsrvd-AP-appl-cde-c         pic x(2)                       !02214
                                        value                          !02215
                                        billpay-rsrvd-AP-appl-cde-l.   !02216
                                                                       !02217
def rate-appl-cde-c                     pic x(2)                       !02218
                                        value rate-appl-cde-l.         !02219
                                                                       !02220
def ratg-appl-cde-c                     pic x(2)                       !02221
                                        value ratg-appl-cde-l.         !02222
                                                                       !02223
def svpt-appl-cde-c                     pic x(2)                       !02224
                                        value svpt-appl-cde-l.         !02225
                                                                       !02226
def billpay-rsrvd-AT-appl-cde-c         pic x(2)                       !02227
                                        value                          !02228
                                        billpay-rsrvd-AT-appl-cde-l.   !02229
                                                                       !02230
def billpay-rsrvd-AU-appl-cde-c         pic x(2)                       !02231
                                        value                          !02232
                                        billpay-rsrvd-AU-appl-cde-l.   !02233
                                                                       !02234
def billpay-rsrvd-AV-appl-cde-c         pic x(2)                       !02235
                                        value                          !02236
                                        billpay-rsrvd-AV-appl-cde-l.   !02237
                                                                       !02238
def billpay-rsrvd-AW-appl-cde-c         pic x(2)                       !02239
                                        value                          !02240
                                        billpay-rsrvd-AW-appl-cde-l.   !02241
                                                                       !02242
def billpay-rsrvd-AX-appl-cde-c         pic x(2)                       !02243
                                        value                          !02244
                                        billpay-rsrvd-AX-appl-cde-l.   !02245
                                                                       !02246
def billpay-rsrvd-AY-appl-cde-c         pic x(2)                       !02247
                                        value                          !02248
                                        billpay-rsrvd-AY-appl-cde-l.   !02249
                                                                       !02250
def billpay-rsrvd-AZ-appl-cde-c         pic x(2)                       !02251
                                        value                          !02252
                                        billpay-rsrvd-AZ-appl-cde-l.   !02253
                                                                       !02254
def cnrf-appl-cde-c                     pic x(2)                       !02255
                                        value cnrf-appl-cde-l.         !02256
                                                                       !02257
def ccif-appl-cde-c                     pic x(2)                       !02258
                                        value ccif-appl-cde-l.         !02259
                                                                       !02260
def appl-ccif-c                         pic x(2)                       !02261
                                        value appl-ccif-d.             !02262
                                                                       !02263
def ccmf-appl-cde-c                     pic x(2)                       !02264
                                        value ccmf-appl-cde-l.         !02265
                                                                       !02266
def appl-ccmf-c                         pic x(2)                       !02267
                                        value appl-ccmf-d.             !02268
                                                                       !02269
def cis-appl-cde-c                      pic x(2)                       !02270
                                        value cis-appl-cde-l.          !02271
                                                                       !02272
def appl-cis-c                          pic x(2)                       !02273
                                        value appl-cis-d.              !02274
                                                                       !02275
def cstp-appl-cde-c                     pic x(2)                       !02276
                                        value cstp-appl-cde-l.         !02277
                                                                       !02278
def appl-cstp-c                         pic x(2)                       !02279
                                        value appl-cstp-d.             !02280
                                                                       !02281
def fapf-appl-cde-c                     pic x(2)                       !02282
                                        value fapf-appl-cde-l.         !02283
                                                                       !02284
def appl-fapf-c                         pic x(2)                       !02285
                                        value appl-fapf-d.             !02286
                                                                       !02287
                                                                       !02287B00
def ptbl-appl-cde-c                     pic x(2)                       !02287B01
                                        value ptbl-appl-cde-l.         !02287B02
                                                                       !02287B03
def semf-appl-cde-c                     pic x(2)                       !02287B04
                                        value semf-appl-cde-l.         !02287B05
                                                                       !02287B06
def msg-sec-ff-appl-cde-c               pic x(2)                       !02288
                                        value msg-sec-ff-appl-cde-l.   !02289
                                                                       !02290
def fpf-appl-cde-c                      pic x(2)                       !02291
                                        value fpf-appl-cde-l.          !02292
                                                                       !02293
def appl-fpf-c                          pic x(2)                       !02294
                                        value appl-fpf-d.              !02295
                                                                       !02296
def fsf-appl-cde-c                      pic x(2)                       !02297
                                        value fsf-appl-cde-l.          !02298
                                                                       !02299
def appl-fsf-c                          pic x(2)                       !02300
                                        value appl-fsf-d.              !02301
                                                                       !02302
def dist-rsrvd-G0-appl-cde-c            pic x(2)                       !02303
                                        value dist-rsrvd-G0-appl-cde-l.
                                                                       !02306
def dist-rsrvd-G1-appl-cde-c            pic x(2)                       !02307
                                        value dist-rsrvd-G1-appl-cde-l.
                                                                       !02310
def dist-rsrvd-G2-appl-cde-c            pic x(2)                       !02311
                                        value dist-rsrvd-G2-appl-cde-l.
                                                                       !02314
def dist-rsrvd-G3-appl-cde-c            pic x(2)                       !02315
                                        value dist-rsrvd-G3-appl-cde-l.
                                                                       !02318
def dist-rsrvd-G4-appl-cde-c            pic x(2)                       !02319
                                        value dist-rsrvd-G4-appl-cde-l.
                                                                       !02319F00
def mof-appl-cde-c                      pic x(2)                       !02319F01
                                        value appl-mof-d.              !02319F02
                                                                       !02319F03
                                                                       !02322F00
                                                                       !02322F01
                                                                       !02322F02
def dist-rsrvd-G6-appl-cde-c            pic x(2)                       !02327
                                        value dist-rsrvd-G6-appl-cde-l.
                                                                       !02330
def dist-rsrvd-G7-appl-cde-c            pic x(2)                       !02331
                                        value dist-rsrvd-G7-appl-cde-l.
                                                                       !02334
def dist-rsrvd-G8-appl-cde-c            pic x(2)                       !02335
                                        value dist-rsrvd-G8-appl-cde-l.
                                                                       !02338
def dist-rsrvd-G9-appl-cde-c            pic x(2)                       !02339
                                        value dist-rsrvd-G9-appl-cde-l.
                                                                       !02342
def dist-rsrvd-GA-appl-cde-c            pic x(2)                       !02343
                                        value dist-rsrvd-GA-appl-cde-l.
                                                                       !02346
def dist-rsrvd-GB-appl-cde-c            pic x(2)                       !02347
                                        value dist-rsrvd-GB-appl-cde-l.
                                                                       !02350
def dist-rsrvd-GC-appl-cde-c            pic x(2)                       !02351
                                        value dist-rsrvd-GC-appl-cde-l.
                                                                       !02354
def dist-rsrvd-GD-appl-cde-c            pic x(2)                       !02355
                                        value dist-rsrvd-GD-appl-cde-l.
                                                                       !02358
def dist-rsrvd-GE-appl-cde-c            pic x(2)                       !02359
                                        value dist-rsrvd-GE-appl-cde-l.
                                                                       !02362
def dist-rsrvd-GF-appl-cde-c            pic x(2)                       !02363
                                        value dist-rsrvd-GF-appl-cde-l.
                                                                       !02366
def dist-rsrvd-GG-appl-cde-c            pic x(2)                       !02367
                                        value dist-rsrvd-GG-appl-cde-l.
                                                                       !02370
def dist-rsrvd-GH-appl-cde-c            pic x(2)                       !02371
                                        value dist-rsrvd-GH-appl-cde-l.
                                                                       !02374
def dist-rsrvd-GI-appl-cde-c            pic x(2)                       !02375
                                        value dist-rsrvd-GI-appl-cde-l.
                                                                       !02378
def dist-rsrvd-GJ-appl-cde-c            pic x(2)                       !02379
                                        value dist-rsrvd-GJ-appl-cde-l.
                                                                       !02382
def dist-rsrvd-GK-appl-cde-c            pic x(2)                       !02383
                                        value dist-rsrvd-GK-appl-cde-l.
                                                                       !02386
def dist-rsrvd-GL-appl-cde-c            pic x(2)                       !02387
                                        value dist-rsrvd-GL-appl-cde-l.
                                                                       !02390
def dist-rsrvd-GM-appl-cde-c            pic x(2)                       !02391
                                        value dist-rsrvd-GM-appl-cde-l.
                                                                       !02394
def dist-rsrvd-GN-appl-cde-c            pic x(2)                       !02395
                                        value dist-rsrvd-GN-appl-cde-l.
                                                                       !02398
def dist-rsrvd-GO-appl-cde-c            pic x(2)                       !02399
                                        value dist-rsrvd-GO-appl-cde-l.
                                                                       !02402
def dist-rsrvd-GP-appl-cde-c            pic x(2)                       !02403
                                        value dist-rsrvd-GP-appl-cde-l.
                                                                       !02406
def dist-rsrvd-GQ-appl-cde-c            pic x(2)                       !02407
                                        value dist-rsrvd-GQ-appl-cde-l.
                                                                       !02410
def dist-rsrvd-GR-appl-cde-c            pic x(2)                       !02411
                                        value dist-rsrvd-GR-appl-cde-l.
                                                                       !02414
def dist-rsrvd-GS-appl-cde-c            pic x(2)                       !02415
                                        value dist-rsrvd-GS-appl-cde-l.
                                                                       !02418
def dist-rsrvd-GT-appl-cde-c            pic x(2)                       !02419
                                        value dist-rsrvd-GT-appl-cde-l.
                                                                       !02422
def dist-rsrvd-GU-appl-cde-c            pic x(2)                       !02423
                                        value dist-rsrvd-GU-appl-cde-l.
                                                                       !02426
def dist-rsrvd-GV-appl-cde-c            pic x(2)                       !02427
                                        value dist-rsrvd-GV-appl-cde-l.
                                                                       !02430
def dist-rsrvd-GW-appl-cde-c            pic x(2)                       !02431
                                        value dist-rsrvd-GW-appl-cde-l.
                                                                       !02434
def dist-rsrvd-GX-appl-cde-c            pic x(2)                       !02435
                                        value dist-rsrvd-GX-appl-cde-l.
                                                                       !02438
def dist-rsrvd-GY-appl-cde-c            pic x(2)                       !02439
                                        value dist-rsrvd-GY-appl-cde-l.
                                                                       !02442
def dist-rsrvd-GZ-appl-cde-c            pic x(2)                       !02443
                                        value dist-rsrvd-GZ-appl-cde-l.
                                                                       !02446
def dist-rsrvd-H0-appl-cde-c            pic x(2)                       !02447
                                        value dist-rsrvd-H0-appl-cde-l.
                                                                       !02450
def dist-rsrvd-H1-appl-cde-c            pic x(2)                       !02451
                                        value dist-rsrvd-H1-appl-cde-l.
                                                                       !02454
def dist-rsrvd-H2-appl-cde-c            pic x(2)                       !02455
                                        value dist-rsrvd-H2-appl-cde-l.
                                                                       !02458
def dist-rsrvd-H3-appl-cde-c            pic x(2)                       !02459
                                        value dist-rsrvd-H3-appl-cde-l.
                                                                       !02462
def dist-rsrvd-H4-appl-cde-c            pic x(2)                       !02463
                                        value dist-rsrvd-H4-appl-cde-l.
                                                                       !02466
def dist-rsrvd-H5-appl-cde-c            pic x(2)                       !02467
                                        value dist-rsrvd-H5-appl-cde-l.
                                                                       !02470
def dist-rsrvd-H6-appl-cde-c            pic x(2)                       !02471
                                        value dist-rsrvd-H6-appl-cde-l.
                                                                       !02474
def dist-rsrvd-H7-appl-cde-c            pic x(2)                       !02475
                                        value dist-rsrvd-H7-appl-cde-l.
                                                                       !02478
def dist-rsrvd-H8-appl-cde-c            pic x(2)                       !02479
                                        value dist-rsrvd-H8-appl-cde-l.
                                                                       !02482
def dist-rsrvd-H9-appl-cde-c            pic x(2)                       !02483
                                        value dist-rsrvd-H9-appl-cde-l.
                                                                       !02486
def dist-rsrvd-HA-appl-cde-c            pic x(2)                       !02487
                                        value dist-rsrvd-HA-appl-cde-l.
                                                                       !02490
def dist-rsrvd-HB-appl-cde-c            pic x(2)                       !02491
                                        value dist-rsrvd-HB-appl-cde-l.
                                                                       !02494
def dist-rsrvd-HC-appl-cde-c            pic x(2)                       !02495
                                        value dist-rsrvd-HC-appl-cde-l.
                                                                       !02498
def dist-rsrvd-HD-appl-cde-c            pic x(2)                       !02499
                                        value dist-rsrvd-HD-appl-cde-l.
                                                                       !02502
def dist-rsrvd-HE-appl-cde-c            pic x(2)                       !02503
                                        value dist-rsrvd-HE-appl-cde-l.
                                                                       !02506
def dist-rsrvd-HF-appl-cde-c            pic x(2)                       !02507
                                        value dist-rsrvd-HF-appl-cde-l.
                                                                       !02510
def dist-rsrvd-HG-appl-cde-c            pic x(2)                       !02511
                                        value dist-rsrvd-HG-appl-cde-l.
                                                                       !02514
def dist-rsrvd-HH-appl-cde-c            pic x(2)                       !02515
                                        value dist-rsrvd-HH-appl-cde-l.
                                                                       !02518
def dist-rsrvd-HI-appl-cde-c            pic x(2)                       !02519
                                        value dist-rsrvd-HI-appl-cde-l.
                                                                       !02522
def dist-rsrvd-HJ-appl-cde-c            pic x(2)                       !02523
                                        value dist-rsrvd-HJ-appl-cde-l.
                                                                       !02526
def dist-rsrvd-HK-appl-cde-c            pic x(2)                       !02527
                                        value dist-rsrvd-HK-appl-cde-l.
                                                                       !02530
def dist-rsrvd-HL-appl-cde-c            pic x(2)                       !02531
                                        value dist-rsrvd-HL-appl-cde-l.
                                                                       !02534
def dist-rsrvd-HM-appl-cde-c            pic x(2)                       !02535
                                        value dist-rsrvd-HM-appl-cde-l.
                                                                       !02538
def dist-rsrvd-HN-appl-cde-c            pic x(2)                       !02539
                                        value dist-rsrvd-HN-appl-cde-l.
                                                                       !02542
def dist-rsrvd-HO-appl-cde-c            pic x(2)                       !02543
                                        value dist-rsrvd-HO-appl-cde-l.
                                                                       !02546
def dist-rsrvd-HP-appl-cde-c            pic x(2)                       !02547
                                        value dist-rsrvd-HP-appl-cde-l.
                                                                       !02550
def dist-rsrvd-HQ-appl-cde-c            pic x(2)                       !02551
                                        value dist-rsrvd-HQ-appl-cde-l.
                                                                       !02554
def dist-rsrvd-HR-appl-cde-c            pic x(2)                       !02555
                                        value dist-rsrvd-HR-appl-cde-l.
                                                                       !02558
def dist-rsrvd-HS-appl-cde-c            pic x(2)                       !02559
                                        value dist-rsrvd-HS-appl-cde-l.
                                                                       !02562
def dist-rsrvd-HT-appl-cde-c            pic x(2)                       !02563
                                        value dist-rsrvd-HT-appl-cde-l.
                                                                       !02566
def dist-rsrvd-HU-appl-cde-c            pic x(2)                       !02567
                                        value dist-rsrvd-HU-appl-cde-l.
                                                                       !02570
def dist-rsrvd-HV-appl-cde-c            pic x(2)                       !02571
                                        value dist-rsrvd-HV-appl-cde-l.
                                                                       !02574
def dist-rsrvd-HW-appl-cde-c            pic x(2)                       !02575
                                        value dist-rsrvd-HW-appl-cde-l.
                                                                       !02578
def dist-rsrvd-HX-appl-cde-c            pic x(2)                       !02579
                                        value dist-rsrvd-HX-appl-cde-l.
                                                                       !02582
def dist-rsrvd-HY-appl-cde-c            pic x(2)                       !02583
                                        value dist-rsrvd-HY-appl-cde-l.
                                                                       !02586
def dist-rsrvd-HZ-appl-cde-c            pic x(2)                       !02587
                                        value dist-rsrvd-HZ-appl-cde-l.
                                                                       !02590
def base-bbf-appl-cde-c                 pic x(2)                       !02591
                                        value base-bbf-appl-cde-l.     !02592
                                                                       !02593
def base-iif-appl-cde-c                 pic x(2)                       !02594
                                        value base-iif-appl-cde-l.     !02595
                                                                       !02596
def plus-ppf-appl-cde-c                 pic x(2)                       !02597
                                        value plus-ppf-appl-cde-l.     !02598
                                                                       !02599
def visa-bbf-appl-cde-c                 pic x(2)                       !02600
                                        value visa-bbf-appl-cde-l.     !02601
                                                                       !02602
def visa-iif-appl-cde-c                 pic x(2)                       !02603
                                        value visa-iif-appl-cde-l.     !02604
                                                                       !02605
def bnet-iif-appl-cde-c                 pic x(2)                       !02606
                                        value bnet-iif-appl-cde-l.     !02607
                                                                       !02608
def intf-isf-appl-cde-c                 pic x(2)                       !02609
                                        value intf-isf-appl-cde-l.     !02610
                                                                       !02611
def sdf-appl-cde-c                      pic x(2)                       !02612
                                        value sdf-appl-cde-l.          !02613
                                                                       !02614
def aos82-odcf-appl-cde-c               pic x(2)                       !02615
                                        value aos82-odcf-appl-cde-l.   !02616
                                                                       !02617
def aos82-mlf-appl-cde-c                pic x(2)                       !02618
                                        value aos82-mlf-appl-cde-l.    !02619
                                                                       !02620
def aos82-nif-appl-cde-c                pic x(2)                       !02621
                                        value aos82-nif-appl-cde-l.    !02622
                                                                       !02623
def intf-snf-appl-cde-c                 pic x(2)                       !02624
                                        value intf-snf-appl-cde-l.     !02625
                                                                       !02626
def visa-plus-iso-vppf-appl-cde-c       pic x(2)                       !02627
                                        value                          !02628
                                        visa-plus-iso-vppf-appl-cde-l. !02629
                                                                       !02630
def plus-iso-ppf-appl-cde-c             pic x(2)                       !02631
                                        value plus-iso-ppf-appl-cde-l. !02632
                                                                       !02633
def adp-etf-appl-cde-c                  pic x(2)                       !02634
                                        value adp-etf-appl-cde-l.      !02635
                                                                       !02636
def intf-admn-appl-cde-c                pic x(2)                       !02637
                                        value intf-admn-appl-cde-l.    !02638
                                                                       !02639
def intf-rlf-appl-cde-c                 pic x(2)                       !02640
                                        value intf-rlf-appl-cde-l.     !02641
                                                                       !02642
def intf-iif-appl-cde-c                 pic x(2)                       !02643
                                        value intf-iif-appl-cde-l.     !02644
                                                                       !02645
def plus-iso-pac-appl-cde-c             pic x(2)                       !02646
                                        value plus-iso-pac-appl-cde-l. !02647
                                                                       !02648
def ncs-ncss-appl-cde-c                 pic x(2)                       !02649
                                        value ncs-ncss-appl-cde-l.     !02650
                                                                       !02651
def ncs-ncsp-appl-cde-c                 pic x(2)                       !02652
                                        value ncs-ncsp-appl-cde-l.     !02653
                                                                       !02654
def ncs-rsrvd-L3-appl-cde-c             pic x(2)                       !02655
                                        value ncs-rsrvd-l3-appl-cde-l. !02656
                                                                       !02657
def ncs-rsrvd-L4-appl-cde-c             pic x(2)                       !02658
                                        value ncs-rsrvd-l4-appl-cde-l. !02659
                                                                       !02660
def ncs-rsrvd-L5-appl-cde-c             pic x(2)                       !02661
                                        value ncs-rsrvd-l5-appl-cde-l. !02662
                                                                       !02663
def adrt-appl-cde-c                     pic x(2)                       !02664
                                        value adrt-appl-cde-l.         !02665
                                                                       !02666
def appl-adrt-c                         pic x(2)                       !02667
                                        value appl-adrt-d.             !02668
                                                                       !02669
def imtf-appl-cde-c                     pic x(2)                       !02670
                                        value imtf-appl-cde-l.         !02671
                                                                       !02672
def appl-imtf-c                         pic x(2)                       !02673
                                        value appl-imtf-d.             !02674
                                                                       !02675
def ifcf-appl-cde-c                     pic x(2)                       !02676
                                        value ifcf-appl-cde-l.         !02677
                                                                       !02678
def appl-ifcf-c                         pic x(2)                       !02679
                                        value appl-ifcf-d.             !02680
                                                                       !02681
def ist-appl-cde-c                      pic x(2)                       !02682
                                        value ist-appl-cde-l.          !02683
                                                                       !02684
def appl-ist-c                          pic x(2)                       !02685
                                        value appl-ist-d.              !02686
                                                                       !02687
def ircf-appl-cde-c                     pic x(2)                       !02688
                                        value ircf-appl-cde-l.         !02689
                                                                       !02690
def appl-ircf-c                         pic x(2)                       !02691
                                        value appl-ircf-d.             !02692
                                                                       !02693
def pcdf-appl-cde-c                     pic x(2)                       !02694
                                        value pcdf-appl-cde-l.         !02695
                                                                       !02696
def appl-pcdf-c                         pic x(2)                       !02697
                                        value appl-pcdf-d.             !02698
                                                                       !02699
def itlf-appl-cde-c                     pic x(2)                       !02700
                                        value itlf-appl-cde-l.         !02701
                                                                       !02702
def appl-tlf-c                          pic x(2)                       !02703
                                        value appl-tlf-d.              !02704
                                                                       !02705
def isf-appl-cde-c                      pic x(2)                       !02706
                                        value isf-appl-cde-l.          !02707
                                                                       !02708
def appl-isf-c                          pic x(2)                       !02709
                                        value appl-isf-d.              !02710
                                                                       !02711
def att-appl-cde-c                      pic x(2)                       !02712
                                        value att-appl-cde-l.          !02713
                                                                       !02714
def appl-att-c                          pic x(2)                       !02715
                                        value appl-att-d.              !02716
                                                                       !02717
def lcf-appl-cde-c                      pic x(2)                       !02718
                                        value lcf-appl-cde-l.          !02719
                                                                       !02720
def appl-lcf-c                          pic x(2)                       !02721
                                        value appl-lcf-d.              !02722
                                                                       !02723
def elf-appl-cde-c                      pic x(2)                       !02724
                                        value elf-appl-cde-l.          !02725
                                                                       !02726
def appl-elf-c                          pic x(2)                       !02727
                                        value appl-elf-d.              !02728
                                                                       !02729
def fcf-appl-cde-c                      pic x(2)                       !02730
                                        value fcf-appl-cde-l.          !02731
                                                                       !02732
def appl-fcf-c                          pic x(2)                       !02733
                                        value appl-fcf-d.              !02734
                                                                       !02735
def thcf-appl-cde-c                     pic x(2)                       !02736
                                        value thcf-appl-cde-l.         !02737
                                                                       !02738
def appl-thcf-c                         pic x(2)                       !02739
                                        value appl-thcf-d.             !02740
                                                                       !02741
def cact-appl-cde-c                     pic x(2)                       !02742
                                        value cact-appl-cde-l.         !02743
                                                                       !02744
def appl-cact-c                         pic x(2)                       !02745
                                        value appl-cact-d.             !02746
                                                                       !02747
def catt-appl-cde-c                     pic x(2)                       !02748
                                        value catt-appl-cde-l.         !02749
                                                                       !02750
def appl-catt-c                         pic x(2)                       !02751
                                        value appl-catt-d.             !02752
                                                                       !02753
def cstt-appl-cde-c                     pic x(2)                       !02754
                                        value cstt-appl-cde-l.         !02755
                                                                       !02756
def appl-cstt-c                         pic x(2)                       !02757
                                        value appl-cstt-d.             !02758
                                                                       !02759
def csr-unused-N3-appl-cde-c            pic x(2)                       !02760
                                        value                          !02761
                                        csr-unused-N3-appl-cde-l.      !02762
                                                                       !02763
def pit-appl-cde-c                      pic x(2)                       !02764
                                        value pit-appl-cde-l.          !02765
                                                                       !02766
def appl-pit-c                          pic x(2)                       !02767
                                        value appl-pit-d.              !02768
                                                                       !02769
def cpit-appl-cde-c                     pic x(2)                       !02770
                                        value cpit-appl-cde-l.         !02771
                                                                       !02772
def appl-cpit-c                         pic x(2)                       !02773
                                        value appl-cpit-d.             !02774
                                                                       !02775
def ttsc-appl-cde-c                     pic x(2)                       !02776
                                        value ttsc-appl-cde-l.         !02777
                                                                       !02778
def csr-unused-N7-appl-cde-c            pic x(2)                       !02779
                                        value                          !02780
                                        csr-unused-N7-appl-cde-l.      !02781
                                                                       !02782
def csr-unused-N8-appl-cde-c            pic x(2)                       !02783
                                        value                          !02784
                                        csr-unused-N8-appl-cde-l.      !02785
                                                                       !02786
def appl-ttsc-c                         pic x(2)                       !02787
                                        value appl-ttsc-d.             !02788
                                                                       !02789
def csr-appl-cde-c                      pic x(2)                       !02790
                                        value csr-appl-cde-l.          !02791
                                                                       !02792
def appl-csr-c                          pic x(2)                       !02793
                                        value appl-csr-d.              !02794
                                                                       !02795
def cs-awb-appl-cde-c                   pic x(2)                       !02796
                                        value cs-awb-appl-cde-l.       !02797
                                                                       !02798
def appl-awb-c                          pic x(2)                       !02799
                                        value appl-awb-d.              !02800
                                                                       !02801
def cs-ccs-appl-cde-c                   pic x(2)                       !02802
                                        value cs-ccs-appl-cde-l.       !02803
                                                                       !02804
def appl-ccs-c                          pic x(2)                       !02805
                                        value appl-ccs-d.              !02806
                                                                       !02807
def cs-dbg-appl-cde-c                   pic x(2)                       !02808
                                        value cs-dbg-appl-cde-l.       !02809
                                                                       !02810
def appl-dbg-c                          pic x(2)                       !02811
                                        value appl-dbg-d.              !02812
                                                                       !02813
def cs-ewb-appl-cde-c                   pic x(2)                       !02814
                                        value cs-ewb-appl-cde-l.       !02815
                                                                       !02816
def appl-ewb-c                          pic x(2)                       !02817
                                        value appl-ewb-d.              !02818
                                                                       !02819
def cs-lwb-appl-cde-c                   pic x(2)                       !02820
                                        value cs-lwb-appl-cde-l.       !02821
                                                                       !02822
def appl-lwb-c                          pic x(2)                       !02823
                                        value appl-lwb-d.              !02824
                                                                       !02825
def cs-pwb-appl-cde-c                   pic x(2)                       !02826
                                        value cs-pwb-appl-cde-l.       !02827
                                                                       !02828
def appl-pwb-c                          pic x(2)                       !02829
                                        value appl-pwb-d.              !02830
                                                                       !02831
def cs-scs-appl-cde-c                   pic x(2)                       !02832
                                        value cs-scs-appl-cde-l.       !02833
                                                                       !02834
def appl-scs-c                          pic x(2)                       !02835
                                        value appl-scs-d.              !02836
                                                                       !02837
def cs-stat-appl-cde-c                  pic x(2)                       !02838
                                        value cs-stat-appl-cde-l.      !02839
                                                                       !02840
def appl-stat-c                         pic x(2)                       !02841
                                        value appl-stat-d.             !02842
                                                                       !02843
def cs-trc-appl-cde-c                   pic x(2)                       !02844
                                        value cs-trc-appl-cde-l.       !02845
                                                                       !02846
def appl-trc-c                          pic x(2)                       !02847
                                        value appl-trc-d.              !02848
                                                                       !02849
def cs-iscf-appl-cde-c                  pic x(2)                       !02850
                                        value cs-iscf-appl-cde-l.      !02851
                                                                       !02852
def appl-iscf-c                         pic x(2)                       !02853
                                        value appl-iscf-d.             !02854
                                                                       !02855
                                                                       !02856
def cs-lncf-appl-cde-c                  pic x(2)                       !02857
                                        value cs-lncf-appl-cde-l.      !02858
                                                                       !02859
def appl-lconf-c                        pic x(2)                       !02860
                                        value appl-lconf-d.            !02861
                                                                       !02862
def cs-ssm-appl-cde-c                   pic x(2)                       !02863
                                        value cs-ssm-appl-cde-l.       !02864
                                                                       !02865
def appl-ssm-c                          pic x(2)                       !02866
                                        value appl-ssm-d.              !02867
                                                                       !02868
def cs-lex-appl-cde-c                   pic x(2)                       !02869
                                        value cs-lex-appl-cde-l.       !02870
                                                                       !02871
def appl-lex-c                          pic x(2)                       !02872
                                        value appl-lex-d.              !02873
                                                                       !02874
********************************************************************  !!CSM47
***    BEGIN CSM #47  - TRANSACTION BLOCKING                     ***  !!CSM47
********************************************************************  !!CSM47
!def rpq-rsrvd-R0-appl-cde-c             pic x(2)                     !!02875
!                                      value rpq-rsrvd-R0-appl-cde-l. !!02876
                                                                       !CSM47
def tbf-appl-cde-c                      pic x(2)                       !CSM47
                                        value tbf-appl-cde-l.          !CSM47
                                                                       !CSM47
********************************************************************  !!CSM47
***    END   CSM #47  - TRANSACTION BLOCKING                     ***  !!CSM47
********************************************************************  !!CSM47
                                                                       !02877
def rpq-rsrvd-R1-appl-cde-c             pic x(2)                       !02878
                                        value rpq-rsrvd-R1-appl-cde-l. !02879
                                                                       !02880
def rpq-rsrvd-R2-appl-cde-c             pic x(2)                       !02881
                                        value rpq-rsrvd-R2-appl-cde-l. !02882
                                                                       !02883
def rpq-rsrvd-R3-appl-cde-c             pic x(2)                       !02884
                                        value rpq-rsrvd-R3-appl-cde-l. !02885
                                                                       !02886
def rpq-rsrvd-R4-appl-cde-c             pic x(2)                       !02887
                                        value rpq-rsrvd-R4-appl-cde-l. !02888
                                                                       !02889
def rpq-rsrvd-R5-appl-cde-c             pic x(2)                       !02890
                                        value rpq-rsrvd-R5-appl-cde-l. !02891
                                                                       !02892
def rpq-rsrvd-R6-appl-cde-c             pic x(2)                       !02893
                                        value rpq-rsrvd-R6-appl-cde-l. !02894
                                                                       !02895
def rpq-rsrvd-R7-appl-cde-c             pic x(2)                       !02896
                                        value rpq-rsrvd-R7-appl-cde-l. !02897
                                                                       !02898
def rpq-rsrvd-R8-appl-cde-c             pic x(2)                       !02899
                                        value rpq-rsrvd-R8-appl-cde-l. !02900
                                                                       !02901
def rpq-rsrvd-R9-appl-cde-c             pic x(2)                       !02902
                                        value rpq-rsrvd-R9-appl-cde-l. !02903
                                                                       !02904
def rpq-rsrvd-RA-appl-cde-c             pic x(2)                       !02905
                                        value rpq-rsrvd-RA-appl-cde-l. !02906
                                                                       !02907
def rpq-rsrvd-RB-appl-cde-c             pic x(2)                       !02908
                                        value rpq-rsrvd-RB-appl-cde-l. !02909
                                                                       !02910
def rpq-rsrvd-RC-appl-cde-c             pic x(2)                       !02911
                                        value rpq-rsrvd-RC-appl-cde-l. !02912
                                                                       !02913
def rpq-rsrvd-RD-appl-cde-c             pic x(2)                       !02914
                                        value rpq-rsrvd-RD-appl-cde-l. !02915
                                                                       !02916
def rpq-rsrvd-RE-appl-cde-c             pic x(2)                       !02917
                                        value rpq-rsrvd-RE-appl-cde-l. !02918
                                                                       !02919
def rpq-rsrvd-RF-appl-cde-c             pic x(2)                       !02920
                                        value rpq-rsrvd-RF-appl-cde-l. !02921
                                                                       !02922
def rpq-rsrvd-RG-appl-cde-c             pic x(2)                       !02923
                                        value rpq-rsrvd-RG-appl-cde-l. !02924
                                                                       !02925
def rpq-rsrvd-RH-appl-cde-c             pic x(2)                       !02926
                                        value rpq-rsrvd-RH-appl-cde-l. !02927
                                                                       !02928
def rpq-rsrvd-RI-appl-cde-c             pic x(2)                       !02929
                                        value rpq-rsrvd-RI-appl-cde-l. !02930
                                                                       !02931
def rpq-rsrvd-RJ-appl-cde-c             pic x(2)                       !02932
                                        value rpq-rsrvd-RJ-appl-cde-l. !02933
                                                                       !02934
def rpq-rsrvd-RK-appl-cde-c             pic x(2)                       !02935
                                        value rpq-rsrvd-RK-appl-cde-l. !02936
                                                                       !02937
def rpq-rsrvd-RL-appl-cde-c             pic x(2)                       !02938
                                        value rpq-rsrvd-RL-appl-cde-l. !02939
                                                                       !02940
def rpq-rsrvd-RM-appl-cde-c             pic x(2)                       !02941
                                        value rpq-rsrvd-RM-appl-cde-l. !02942
                                                                       !02943
def rpq-rsrvd-RN-appl-cde-c             pic x(2)                       !02944
                                        value rpq-rsrvd-RN-appl-cde-l. !02945
                                                                       !02946
def rpq-rsrvd-RO-appl-cde-c             pic x(2)                       !02947
                                        value rpq-rsrvd-RO-appl-cde-l. !02948
                                                                       !02949
def rpq-rsrvd-RP-appl-cde-c             pic x(2)                       !02950
                                        value rpq-rsrvd-RP-appl-cde-l. !02951
                                                                       !02952
def rpq-rsrvd-RQ-appl-cde-c             pic x(2)                       !02953
                                        value rpq-rsrvd-RQ-appl-cde-l. !02954
                                                                       !02955
def rpq-rsrvd-RR-appl-cde-c             pic x(2)                       !02956
                                        value rpq-rsrvd-RR-appl-cde-l. !02957
                                                                       !02958
def rpq-rsrvd-RS-appl-cde-c             pic x(2)                       !02959
                                        value rpq-rsrvd-RS-appl-cde-l. !02960
                                                                       !02961
def rpq-rsrvd-RT-appl-cde-c             pic x(2)                       !02962
                                        value rpq-rsrvd-RT-appl-cde-l. !02963
                                                                       !02964
def rpq-rsrvd-RU-appl-cde-c             pic x(2)                       !02965
                                        value rpq-rsrvd-RU-appl-cde-l. !02966
                                                                       !02967
def rpq-rsrvd-RV-appl-cde-c             pic x(2)                       !02968
                                        value rpq-rsrvd-RV-appl-cde-l. !02969
                                                                       !02970
def rpq-rsrvd-RW-appl-cde-c             pic x(2)                       !02971
                                        value rpq-rsrvd-RW-appl-cde-l. !02972
                                                                       !02973
def rpq-rsrvd-RX-appl-cde-c             pic x(2)                       !02974
                                        value rpq-rsrvd-RX-appl-cde-l. !02975
                                                                       !02976
def rpq-rsrvd-RY-appl-cde-c             pic x(2)                       !02977
                                        value rpq-rsrvd-RY-appl-cde-l. !02978
                                                                       !02979
def rpq-rsrvd-RZ-appl-cde-c             pic x(2)                       !02980
                                        value rpq-rsrvd-RZ-appl-cde-l. !02981
                                                                       !02982
def appl-ipcf-c                         pic x(2)                       !02983
                                        value appl-ipcf-d.             !02984
                                                                       !02985
def ipcf-appl-cde-c                     pic x(2)                       !02986
                                        value ipcf-appl-cde-l.         !02987
                                                                       !02988
def appl-pdf-c                          pic x(2)                       !02989
                                        value appl-pdf-d.              !02990
                                                                       !02991
def pdf-appl-cde-c                      pic x(2)                       !02992
                                        value pdf-appl-cde-l.          !02993
                                                                       !02994
def appl-tcf-c                          pic x(2)                       !02995
                                        value appl-tcf-d.              !02996
                                                                       !02997
def tcf-appl-cde-c                      pic x(2)                       !02998
                                        value tcf-appl-cde-l.          !02999
                                                                       !03000
def appl-apcf-c                         pic x(2)                       !03001
                                        value appl-apcf-d.             !03002
                                                                       !03003
def apcf-appl-cde-c                     pic x(2)                       !03004
                                        value apcf-appl-cde-l.         !03005
                                                                       !03006
                                                                       !03006G00
def nscf-appl-cde-c                     pic x(2)                       !03006G01
                                        value nscf-appl-cde-l.         !03006G02
                                                                       !03006G03
def emf5-appl-cde-c                     pic x(2)                       !03007
                                        value emf5-appl-cde-l.         !03008
                                                                       !03009
def key5-appl-cde-c                     pic x(2)                       !03010
                                        value key5-appl-cde-l.         !03011
                                                                       !03012
?c     =baddl_baddlc
?tal   =baddl_baddltal
                                                                       !03017
?setsection
