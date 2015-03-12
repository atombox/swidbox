**FIX2.28  03/25/13  DDLFCPF 6024 DDL    BA60DDL  BA0G040  X                 ***
**FIX2.28  12/22/09  DDLFCPF 6023 DDL    BA60DDL  BA0D303  W                 ***
**FIX2.28  12/02/08  DDLFCPF 6022 DDL    BA60DDL  BA0C308  V                 ***
**FIX2.28  12/04/07  DDLFCPF 6021 DDL    BA60DDL  BA0B325  U                 ***
**FIX2.28  11/23/06  DDLFCPF 6020 DDL    BA60DDL  BA0A306  T                 ***
**FIX2.26  11/17/05  DDLFCPF 6019 DDL    BA60DDL  BA09341  S                 ***
**FIX2.24  11/18/04  DDLFCPF 6018 DDL    BA60DDL  BA08211  R                 ***
**FIX2.23  11/10/03  DDLFCPF 6017 DDL    BA60DDL  BA07154  Q                 ***
**FIX2.23  07/24/03  DDLFCPF 6016 DDL    BA60DDL  BA07101  P                 ***
**FIX2.23  06/26/03  DDLFCPF 6015 DDL    BA60DDL  BA07086  O                 ***
**FIX2.23  02/26/03  DDLFCPF 6014 DDL    BA60DDL  BA06306  N                 ***
**FIX2.23  01/16/03  DDLFCPF 6013 DDL    BA60DDL  BA06188  M                 ***
**FIX2.23  12/20/02  DDLFCPF 6012 DDL    BA60DDL  BA06154  L                 ***
**FIX2.22  04/12/02  DDLFCPF 6011 DDL    BA60DDL  BA05327  K                 ***
**FIX2.14  03/21/01  DDLFCPF 6010 DDL    BA60DDL  BA04348  J                 ***
**FIX2.11  01/02/01  DDLFCPF 6009 DDL    BA60DDL  BA04150  I                 ***
**SEQ0.04  11/01/00  DDLFCPF 6008 DDL    BA60DDL  BA04000  H                 ***
**SYNC.04  12/09/98  DDLFCPF 5308 DDL    BA53DDL  BA04000  H                 ***
**FIX2.06  11/21/98  DDLFCPF 5308 DDL    BA53DDL  BA03404  H                 ***
**FIX2.06  10/28/98  DDLFCPF 5307 DDL    BA53DDL  BA03371  G                 ***
**FIX2.06  10/14/98  DDLFCPF 5306 DDL    BA53DDL  BA03357  F                 ***
**FIX2.03  08/28/98  DDLFCPF 5305 DDL    BA53DDL  BA03000  E                 ***
**FIX2.06  07/02/98  DDLFCPF 5105 DDL    BA51DDL  BA03219  E                 ***
**FIX2.04  11/24/97  DDLFCPF 5104 DDL    BA51DDL  BA03018  D                 ***
**SYNC.03  08/22/97  DDLFCPF 5103 DDL    BA51DDL  BA03000  C                 ***
**FIX2.04  04/07/97  DDLFCPF 5103 DDL    BA51DDL  BA02095  C                 ***
**SYNC.02  06/25/96  DDLFCPF 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  06/06/95  DDLFCPF 5102 DDL    BA51DDL  BA51006  B                 ***
**FIX2.00  12/23/92  DDLFCPF 5101 DDL    BA51DDL  BA50028  A                 ***
!*SEQ2.00  10/20/92  DDLFCPF 5000 DDL    BA50DDL                               !
                                                                       !00000I00
?page "CPF - Card Prefix File"
?section cpf-history
                                                                       !00000W00
********************************************************************** !00000W01
*                                                                    * !00000W02
*                               BASE24                               * !00000W03
*                               ------                               * !00000W04
*                                                                    * !00000W05
*                DDL for the BASE24 Card Prefix File                 * !00000W06
*                                                                    * !00000W07
*                   Proprietary Software Product                     * !00000W08
*                                                                    * !00000W09
*                        ACI Worldwide, Inc.                         * !00000W0A
*                        6060 Coventry Drive                         * !00000W0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000W0C
*                          (402) 390-7600                            * !00000W0D
*                                                                    * !00000W0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000W0F
*                                                                    * !00000W0G
*    All Rights Reserved.                                            * !00000W0H
*                                                                    * !00000W0I
********************************************************************** !00000W0J
                                                                       !00000W0K
                                                                       !00000W0L
                                                                       !00000W0M
                                                                       !00000W0N
                                                                       !00000W0O
*                                                                      !00000W0P
                                                                       !00000W0Q
                                                                       !00000W0R
                                                                       !00000W0S
                                                                       !00000W0T
                                                                       !00000W0U
                                                                       !00000W0V
* Record of Changes:                                                   !00000I11
*                                                                      !00000I12
* Date        Person/Emp #                                             !00000I13
* ---------   ------------                                             !00000I14
                                                                       !00000I15
* 921222   RRC                                                         !00255A02
* SYMPTOM:      None.                                                  !00255A03
* PROBLEM (E) : None.                                                  !00255A04
* FIX: Added the following fields to the SSBC segment of the CPF       !00255A05
*      to allow for additional limit checking:                         !00255A06
*      CHK-BASE-FLG                                                    !00255A07
*      CSF-CHK-BASE-FLG                                                !00255A08
*      TTL-CSF-CHK-LMT                                                 !00255A09
*      OFFL-CSF-CHK-LMT                                                !00255A0A
*      CSF-CHK-USE-LMT                                                 !00255A0B
* DEPENDENCIES:  Re-DDL.  All modules that source in the CPF must      !00255A0C
*                be recompiled.  Refer to the Release 5.0 Installation !00255A0D
*                Documentation for further details.                    !00255A0E
* REFERENCE: Self Service Banking Check External Specification         !00255A0F
*            Update memo AE06BU02                                      !00255A0G
                                                                       !00255A0H
                                                                       !00255B03
*********************************************************************  !00255B04
*                  RELEASE 5.1                                      *  !00255B05
*********************************************************************  !00255B06
*                                                                      !00255B07
* 95JUN01     JMS/583                                                  !00255B08
* SYMPTOM:    BASE24-BASE RELEASE 5.1 ENHANCEMENTS                     !00255B09
* PROBLEM:    (E) NONE.                                                !00255B0A
* FIX:        Removed AFS, EFTPOS, and Cash Manager products.          !00255B0B
* IMPLEMENT:  Remove reference to these products in all modules.       !00255B0C
*             Re-compile DDL's. Apply related fix to the CPF           !00255B0D
*             requestor and server and recompile.  All modules         !00255B0E
*             that source in the CPF must be recompiled.               !00255B0F
* REFERENCE:  950201-001                                               !00255B0G
*                                                                      !00255B0H
* 95/01/12    Lovejoy/800 - JMS/583                                    !00255B0I
* SYMPTOM:    BASE24 Surcharging                                       !00255B0J
* PROBLEM:    (E) None.                                                !00255B0K
* FIX:        Redefined 2 bytes of CPFBASE USER-FLD1 to support        !00255B0L
*             the Surcharge enhancement.                               !00255B0M
*             NOTE:  The USER-FLD1 should be checked for possible      !00255B0N
*                    impacts to RPQs.                                  !00255B0O
* IMPLEMENT:  All modules that source in the CPF must be               !00255B0P
*             re-compiled after this DDL has been re-compiled.         !00255B0Q
* REFERENCE:  RPE #941018-1, ATM Surcharging External Specification    !00255B0R
*                                                                      !00255B0S
* 95/04/01    DLD/1542 - JMS/583                                       !00255B0T
* SYMPTOM:    (E) NONE.                                                !00255B0U
* PROBLEM:    BASE24-POS Track 1 Enhancements                          !00255B0V
* FIX:        Added new fields to the CPFBASE definition for Track     !00255B0W
*             1 and CV support.  Fields replacing USER-FLD2:           !00255B0X
*                           TRK-PREF         (1 byte)                  !00255B0Y
*                           BAD-TRK-DISP     (1 btye)                  !00255B0Z
*                           TRK1-MIN-LGTH    (2 btyes)                 !00255B10
*                           TRK1-MAX-LGTH    (2 btyes)                 !00255B11
*                           TRK2-MIN-LGTH    (2 btyes)                 !00255B12
*                           TRK2-MAX-LGTH    (2 btyes)                 !00255B13
*             1 field replaces last 4 bytes of USER-FLD1:              !00255B14
*                           CV-EFF-DAT       (4 bytes)                 !00255B15
*             USER-FLD1 has 9 bytes remaining to be used.              !00255B16
*             Some existing fields get extended meanings or values     !00255B17
*             to support Track 1.  See comments for details.           !00255B18
*             Fields modified:                                         !00255B19
*                           CV-BAD-DISP[0]                             !00255B1A
*                           CV-BAD-DISP[1]                             !00255B1B
*                           MBR-LGTH                                   !00255B1C
*                           PIN-OFST-LOC                               !00255B1D
*                           ALGO-NUM-LOC                               !00255B1E
* IMPLEMENT:  Compile the Base DDLs.  Recompile all modules that       !00255B1F
*             source in the CPF.                                       !00255B1G
* REFERENCE:  WO #940907-001                                           !00255B1H
                                                                       !00255C00
* 25JUN96     JJD/1474 - 04APR97 jms/583                               !00255C01
* SYMPTOM:    Base24-CARD Release 5.1 Enhancement.                     !00255C02
* PROBLEM:    <E> None.                                                !00255C03
* FIX:        Added new segment CARDCPF for BASE24-CARD product        !00255C04
* IMPLEMENT:  Re-compile DDLs. Apply related fix to the CPF requestor  !00255C05
*             and server and recompile.  All modules that source in    !00255C06
*             the CPF must be recompiled.                              !00255C07
* REFERENCE:  960130-001                                               !00255C08
                                                                       !00255C09
                                                                       !00255D00
* 01OCT1997   CKC/163                                                  !00255D01
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00255D02
* Problem:    None.                                                    !00255D03
* Fix:        Added Non-Currency Dispense segment.                     !00255D04
* Dependency: Apply fix and remake.                                    !00255D05
* Reference:  WO #960311-05.                                           !00255D06
                                                                       !00255E00
* 01APR1998   CAL/283                                                  !00255E01
* Symptom:    BASE24 EMEA CSE Hooks.                                   !00255E02
* Problem:    None.                                                    !00255E03
* Fix:        Added ICC segment.                                       !00255E04
* Dependency: Apply fix and remake.                                    !00255E05
* Reference:  WO #980206-1.                                            !00255E06
                                                                       !00255E07
                                                                       !00255F00
* 25SEP1998   CST/1535   KSS/718                                       !00255F01
* Symptom:    Base24-CARD Release 5.1.2 Uplift                         !00255F02
* Problem:    Needed prefix level pin length field for BASE24-CARD.    !00255F03
* Fix:        Renamed USER-FLD2 of CARDCPF segment to PIN-LENGTH;      !00255F04
*             an integer indicating the number of digits in PINs       !00255F05
*             generated for this prefix.                               !00255F06
* Dependency: Apply fix to DDLFCPF and associated fixes to RQCPFS,     !00255F07
*             SCRNCPF and OMFXS.  Then remake.                         !00255F08
* Reference:  Retro of SCN #BA5B129 for WO #970421-06                  !00255F09
*                                                                      !00255F0A
* 25SEP1998   CST/1535  KSS/718                                        !00255F0B
* Symptom:    BASE24-card Release 5.1.2 Uplift                         !00255F0C
* Problem:    Needed prefix level pin generation type field for        !00255F0D
*             BASE24-CARD.                                             !00255F0E
* Fix:        Renamed USER-FLD1 of CARDCPF segment to PIN-GEN-TYP.     !00255F0F
* Dependency: Apply fix to DDLFCPF and associated fixes to RQCPFS,     !00255F0G
*             SCRNCPF and OMFXS.  Then remake.                         !00255F0H
* Reference:  Retro of SCN #BA5B129 for WO #970421-06                  !00255F0I
*                                                                      !00255F0J
* 29SEP1998   JC/89                                                    !00255F0K
* Symptom:    Manual Card Verification Enhancement                     !00255F0L
* Problem:    None                                                     !00255F0M
* Fix:        Added the following fields under the BASE segment:       !00255F0N
*               DAT-CHK-TYP                                            !00255F0O
*               MANUAL-CV-BAD-DISP                                     !00255F0P
*               MANUAL-CV-KEYA-GRP                                     !00255F0Q
*               MANUAL-CV-EFF-DAT                                      !00255F0R
* Dependency: Apply fixes to POS AUTHLIBS, RTAUG, DDLPSTKN, DDLFCPF,   !00255F0S
*             RQCPFS, SCRNCPF, VISALIBS and PISIS and Re-Make.         !00255F0T
*             Run CPF file conversion.  New log messages are added     !00255F0U
*             to PSAUTH.                                               !00255F0V
* Reference:  WO # 980828-01                                           !00255F0W
                                                                       !00255G00
* 27OCT1998   RKK/299                                                  !00255G01
* Symptom:    CVD verification.                                        !00255G02
* Problem:    None.                                                    !00255G03
* Fix:        Updated comments for CV-CHK-TYP                          !00255G04
* Dependency: None.  Only comments were modified.                      !00255G05
* Reference:  Case #312241                                             !00255G06
                                                                       !00255H00
* 17NOV1998   DLH/158 - JMS/583                                        !00255H01
* Symptom:    BASE24-CARD 5.3 Uplift                                   !00255H02
* Problem:    None.                                                    !00255H03
* Fix:        Enhanced the code to support indent print                !00255H04
*             formatting.  Added the following fields to the           !00255H05
*             CARDCPF segment:                                         !00255H06
*                 INDENT-FORMAT-TYPE                                   !00255H07
*                 INDENT-FORMAT                                        !00255H08
* Dependency: Apply fix to DDLFCPF, RQCPFS, SCRNCPF, SVCPFS,           !00255H09
*             OMFXS, DDLGCARD, CTUTILS, and SVPCGENS.  Remake.         !00255H0A
* Reference:  WO #980813-02                                            !00255H0B
                                                                       !00255H0C
                                                                       !00255G07
                                                                       !00255I00
********************************************************************   !00255I01
*             Release 6.0                                          *   !00255I02
********************************************************************   !00255I03
* 30NOV2000   JAS/497                                                  !00255I04
* Symptom:    Release 6.0 Enhancements                                 !00255I05
* Problem:    None.                                                    !00255I06
* Fix:        Added ISS-TXN-PRFL fields to the ATM and POS segments.   !00255I07
*             Renamed filler field in ICC segment to                   !00255I08
*             USER-FLD1-ICCCPF.                                        !00255I09
* Dependency: Restore Release 6.0 files, modify the appropriate        !00255I0A
*             CUSTMACS flags, and run MAKE.                            !00255I0B
* Reference:  WO #981118-3 (Transactions Allowed)                      !00255I0C
                                                                       !00255J00
* 30MAR2001   CLR/451, TLE/310                                         !00255J01
* Symptom:    Added 5.3 EMV Support                                    !00255J02
* Problem:    None.                                                    !00255J03
* Fix:        - Renamed all ICC fields to EMV.                         !00255J04
*             - Added new fields in EMV segment.                       !00255J05
*             - Added USER-FLD-ACI, USER-FLD-REGN, USER-FLD-CUST,      !00255J06
*               TRK3 offset fields, SRVC-CDE-CHK-FLG, and              !00255J07
*               EFFECTIVE-DAT-CHK-IND fields to the Base segment.      !00255J08
*             - Added MANUAL-CRD-ENTRY-FLG, FORCE-ONL-CNT,             !00255J09
*               and APPRV-CDE-LGTH to the POS segment.                 !00255J0A
*             - Changed BAD-CAM-ACT (pic X2) to BAD-CAM-ACT-RELIABLE   !00255J0B
*               and BAD-CAM-ACT-UNRELIABLE.                            !00255J0C
*             - Changed FALLBACK-ACT (pic X2) to FALLBACK-ACT-ATM and  !00255J0D
*               FALLBACK-ACT-POS.                                      !00255J0E
* Dependency: Restore Release 6.0 files, modify the appropriate        !00255J0F
*             CUSTMACS flags, and run MAKE.                            !00255J0G
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00255J0H
*             WO #000101-1 (General Release 6.0)                       !00255J0I
                                                                       !00255J0J
                                                                       !00255K00
* 28MAR2002   JRA/24                                                   !00255K01
* Symptom:    Stored Value Release 6.0 uplift                          !00255K02
* Problem:    None.                                                    !00255K03
* Fix:        Added new Stored Value card type values and SV segment.  !00255K04
*             Modified "refund" comments on several fields to read     !00255K05
*             "refund/replenishment".                                  !00255K06
* Dependency: Restore SV-related files, modify the appropriate         !00255K07
*             CUSTMACS flags, and run MAKE.                            !00255K08
* Reference:  WO #020117-41 (BASE24-stored value Release 6.0 uplift)   !00255K09
                                                                       !00255K0A
* 28MAR2002   JRA/24                                                   !00255K0B
* Symptom:    BASE24-pos UK Switch enhancement                         !00255K0C
* Problem:    None.                                                    !00255K0D
* Fix:        Added SVC-CDE-ACT-TBL-IDX to the BASE segment and the    !00255K0E
*             DFT-CAPTR-ISS field to the POS segment.                  !00255K0F
* Dependency: Restore related files, modify the appropriate CUSTMACS   !00255K0G
*             flags, and run MAKE.                                     !00255K0H
* Reference:  WO #000000-00                                            !00255K0I
                                                                       !00255K0J
                                                                       !00255L00
* 08DEC2002   meg/1833                                                 !00255L01
* Symptom:    N5XXX CPM & BNA Enhancement.                             !00255L02
* Problem:    None.                                                    !00255L03
* Fix:        Added fields CASH-DEP-CR-PERCENT and CR-PER-CASH-DEP-LMT !00255L04
*             to the ATM segment.                                      !00255L05
* Dependency: Apply fix to DDLFCPF, RQCPFS, SCRNCPF, SVCPFS            !00255L06
*             and re-MAKE.                                             !00255L07
* Reference:  WO #020229-01 (N5XXX CPM & BNA Enhancement)              !00255L08
                                                                       !00255L09
                                                                       !00255M00
* 15JAN2003   SP/211                                                   !00255M01
* Symptom:    Offline PIN Management Enhancement 01                    !00255M02
* Problem:    None.                                                    !00255M03
* Fix:        Added new fields to the EMV CPF segment:                 !00255M04
*             -  OFFL-PIN-BAD-EXCD-ACT,                                !00255M05
*             -  OFFL-PIN-MGMT-ACT.                                    !00255M06
* Dependency: Apply fix to DDLFCPF, RQCPFS, SCRNCPF, SVCPFS and        !00255M07
*             run MAKE.                                                !00255M08
*             Refer to BA60UD06.SCNPPOS2 for a complete listing        !00255M09
*             of dependencies.                                         !00255M0A
* Reference:  WO #020715-04                                            !00255M0B
                                                                       !00255M0C
                                                                       !00255N00
* 14FEB2003   jfu/543                                                  !00255N01
* Symptom:    Secure Internet Validation                               !00255N02
* Problem:    None                                                     !00255N03
* Fix:        - New card type value for the CPF.  Comment added.       !00255N04
*               Added the following fields to the POS segment:         !00255N05
*                 SIV-CHK, SIV-CHK-TYP, SIV-KEYA-GRP, SIV-BAD-DISP     !00255N06
*                 and SIV-NOT-PRSN-DISP.                               !00255N07
*               Reduced the size of USER-FLD3 field in the POS         !00255N08
*               segment by eight bytes.                                !00255N09
*             - Corrected the comments for the ISS-TXN-PRFL field      !00255N0A
*               in the ATM segment and the POS segment.                !00255N0B
* Dependency: Apply fix to DDLFCPF, and run Make. Refer to             !00255N0C
*             BA60UD06.SCNSIV for a complete listing of dependencies.  !00255N0D
* Reference:  - WO #020718-01                                          !00255N0E
*             - Case #349115                                           !00255N0F
                                                                       !00255O00
* 02JUN2003   MSH/872                                                  !00255O01
* Symptom:    Downgrade of EMV Transactions                            !00255O02
* Problem:    None                                                     !00255O03
* Fix:        Allow the variable cam^chk^typ to also hold the          !00255O04
*             value '9' indicating that EMV transactions are to be     !00255O05
*             downgraded to magnetic stripe.                           !00255O06
* Dependency: Apply fix to DDLFCPF, RQCPFS, SVCPFS, AUTHEMVS,          !00255O07
*             LINKEMVS and BALINKG and run MAKE.                       !00255O08
* Reference:  WO #030409-01                                            !00255O09
                                                                       !00255O0A
                                                                       !00255P00
* 17JUL2003   BN/517                                                   !00255P01
* Symptom:    None.                                                    !00255P02
* Problem:    Comment for cam^chk^typ value '9' has been placed        !00255P03
*             incorrectly.                                             !00255P04
* Fix:        Move comment prior to cam^chk^typ declaration.           !00255P05
* Dependency: Apply fix to DDLFCPF and run MAKE.                       !00255P06
* Reference:  Case #365465                                             !00255P07
                                                                       !00255P08
                                                                       !00255Q00
* 15OCT2003   jfu/543                                                  !00255Q01
* Symptom:    Re-architecture modifications to minimize Make           !00255Q02
*             dependencies.                                            !00255Q03
* Problem:    The SIV constants are specific to the CPF. Changes to    !00255Q04
*             these constants caused unnecessary rebuilding of         !00255Q05
*             objects.                                                 !00255Q06
* Fix:        Added the SIV constants that relate to CPF fields        !00255Q07
*             to this file.  Removed these constants from the          !00255Q08
*             DDLBCNST file. Used a section name of SIV-CONSTANTS      !00255Q09
*             instead of CPF-SIV-CONSTANTS, so the modules already     !00255Q0A
*             sourcing in SIV-CONSTANTS did not require a change.      !00255Q0B
* Dependency: Apply fix to DDLBCNST, DDLFCPF and run Make.             !00255Q0C
* Reference:  Case #369664-05                                          !00255Q0D
                                                                       !00255Q0E
* 15OCT2003   jfu/543                                                  !00255Q0F
* Symptom:    Secure Internet Validation - CAVV testing                !00255Q0G
* Problem:    Tested CAVV processing.                                  !00255Q0H
* Fix:        Added the SIV-ATTEMPT-DISP field to the POS segment.     !00255Q0I
*             Reduced the size of USER-FLD3 field in the POS           !00255Q0J
*             segment by one byte.                                     !00255Q0K
* Dependency: Apply fix to DDLFCPF and run Make. Refer to              !00255Q0L
*             BA60UD07.SCNSIV for a complete listing of dependencies.  !00255Q0M
* Reference:  WO #020718-01                                            !00255Q0N
*                                                                      !00255Q0O
* 15OCT2003   JJD/615                                                  !00255Q0P
* Symptom:    SSB Enhancements                                         !00255Q0Q
* Problem:    None                                                     !00255Q0R
* Fix:        Added the following fields to the SSBC segment for a     !00255Q0S
*             total of 20 bytes:                                       !00255Q0T
*             - CSF-CHK-DEP-CR-PERCENT                                 !00255Q0U
*             - CR-PER-CSF-CHK-DEP-LMT                                 !00255Q0V
*             - CHK-DEP-CR-PERCENT                                     !00255Q0W
*             - CR-PER-CHK-DEP-LMT                                     !00255Q0X
* Dependency: Apply fix to DDLFCPF and run Make.  SSB Check customers  !00255Q0Y
*             must run the CPF Conversion program.  Refer to           !00255Q0Z
*             BA60UD07.SCNSSBC for a complete listing of dependencies. !00255Q0a
* Reference:  WO #020826-01                                            !00255Q0b
                                                                       !00255Q0c
* 15OCT2003   ts/299                                                   !00255Q0d
* Symptom:    Visa October 2003 Mandates - POS Balance Inquiry Service !00255Q0e
* Problem:    None                                                     !00255Q0f
* Fix:        Added RTRN-BAL by reducing USER-FLD-ACI in the CPF BASE  !00255Q0g
*             segment.                                                 !00255Q0h
* Dependency: Apply fix to DDLFCPF and run Make.  POS customers must   !00255Q0i
*             run the CPF Conversion program.  Refer to                !00255Q0j
*             BA60UD07.SCNVISA for a complete listing of dependencies. !00255Q0k
* Reference:  WO #030504-04                                            !00255Q0l
                                                                       !00255Q0m
* 15OCT2003   MSH/872                                                  !00255Q0n
* Symptom:    Expiration Date Checking                                 !00255Q0o
* Problem:    None                                                     !00255Q0p
* Fix:        Added the following fields to the BASE segment:          !00255Q0q
*                 EXP-DAT-CMP, EXP-DAT-REQ and EXP-DAT-PRD.            !00255Q0r
*             Reduced the size of USER-FLD-ACI field in the base       !00255Q0s
*             segment by five bytes                                    !00255Q0t
*             Added the following field to the POS segment:            !00255Q0u
*                 RECUR-PMNT-EXP-CHK-IND                               !00255Q0v
* Dependency: Apply fix to DDLFCPF and run Make.  Refer to             !00255Q0w
*             BA60UD07.SCNEXPD1 for complete listing of dependencies.  !00255Q0x
* Reference:  WO #021122-01                                            !00255Q0y
                                                                       !00255Q0z
* 15OCT2003   SP/211                                                   !00255Q10
* Symptom:    M/Chip 4 support enhancement.                            !00255Q11
* Problem:    None.                                                    !00255Q12
* Fix:        Updated narrative for EMV Issuer Application Data        !00255Q13
*             format field.                                            !00255Q14
* Dependency: Apply fixes to DDLFCPF and run Make.  Refer to           !00255Q15
*             BA60UD07.SCNMCHP4 for a complete listing of              !00255Q16
*             dependencies.                                            !00255Q17
* Reference:  WO #030609-01.                                           !00255Q18
                                                                       !00255Q19
                                                                       !00255R00
* 15OCT2004   AldersR                                                  !00255R01
* Symptom:    Offline PIN Change Notification.                         !00255R02
* Problem:    None.                                                    !00255R03
* Fix:        Added new field TRANSPORT-KEY.                           !00255R04
* Dependency: Apply fixes to DDLFCPF, RQCPFS, SCRNCPF, SVCPFS          !00255R05
*             and run Make.  Refer to BA60UC08.SCNOFFP for             !00255R06
*             a complete listing of dependencies.                      !00255R07
* Reference:  WO #040213-02                                            !00255R08
                                                                       !00255R09
* 15OCT2004   LamproK                                                  !00255R0A
* Symptom:    Visa iCVV Support.                                       !00255R0B
* Problem:    None.                                                    !00255R0C
* Fix:        Added new fields:                                        !00255R0D
*                 EMV-CV-CHK-MTHD                                      !00255R0E
*                 EMV-CV-CHK-TYP                                       !00255R0F
*                 EMV-CV-DATA                                          !00255R0G
*                 EMV-CV-EFF-DAT                                       !00255R0H
* Dependency: Apply fixes to DDLFCPF and run Make. Refer to            !00255R0I
*             BA60UD08.SCNICVV for a complete listing of               !00255R0J
*             dependencies.                                            !00255R0K
* Reference:  WO #040214-05                                            !00255R0L
*                                                                      !00255R0M
* 15OCT2004   koeppenk                                                 !00255R0N
* Symptom:    Stored Value Dormancy/Escheatment 6.0 Uplift             !00255R0O
* Problem:    None.                                                    !00255R0P
* Fix:        Added SV-ESCHEATMENT-FLG for Dormancy/Escheatment        !00255R0Q
*             support by reducing USER-FLD7 in the CPF SV              !00255R0R
*             segment by 1 byte.                                       !00255R0S
* Dependency: Apply fix to DDLFCPF, RQCPFS, SCRNCPF, SVCPFS            !00255R0T
*             and re-make.                                             !00255R0U
*             Refer to BA60UD08.SCNSVDE for a complete listing of      !00255R0V
*             dependencies.                                            !00255R0W
* Reference:  WO #020715-15                                            !00255R0X
*                                                                      !00255R0Y
                                                                       !00255R0Z
                                                                       !00255N0G
                                                                       !00255S00
* 14OCT2005   rinkc                                                    !00255S01
* Symptom:    MasterCard Secure Code Support in SIV                    !00255S02
* Problem:    None                                                     !00255S03
* Fix:        Added new values for SIV-CHK-TYP.                        !00255S04
*             Added new SIV Check Type constants to SIV Constants to   !00255S05
*             match new values for SIV-CHK-TYP.                        !00255S06
* Dependency: Apply fix to DDLFCPF, and run Make. Refer to             !00255S07
*             BA60UD09.SCNMCSIV for a complete listing of              !00255S08
*             dependencies.                                            !00255S09
* Reference:  WO #041002-04                                            !00255S0A
*                                                                      !00255S0B
* 14OCT2005   eschlis                                                  !00255S0C
* Symptom:    VISA Certification requires the ability to deny          !00255S0D
*             manually entered POS transactions when CVD2 is not       !00255S0E
*             present.                                                 !00255S0F
* Problem:    Router/Auth currently bypasses CVD2 validation for       !00255S0G
*             these transactions.                                      !00255S0H
* Fix:        Added MANUAL-CV-REQ to the base segment and updated      !00255S0I
*             comments to MANUAL-CRD-ENTRY-FLG in order to enable      !00255S0J
*             users to deny manually entered transactions when no      !00255S0K
*             CVD2 is present.  Also added MANUAL-CV-CHK-TYP to        !00255S0L
*             provide for further enhancements to CVD2 support in      !00255S0M
*             future releases.  Adjusted the size of the ACI user      !00255S0N
*             field accordingly.                                       !00255S0O
* Dependency: Apply fix to DDLFCPF and run MAKE.  Refer to             !00255S0P
*             BA60UD09.SCNCVD2 for a complete listing of               !00255S0Q
*             dependencies.                                            !00255S0R
* Reference:  Case #397678                                             !00255S0S
                                                                       !00255S0T
                                                                       !00255T00
* 14OCT2006   RinkC                                                    !00255T01
* Symptom:    Contactless Chip/Magnetic Stripe Support Enhancement     !00255T02
* Problem:    None.                                                    !00255T03
* Fix:        Added new fields to the Base segment for Dynamic Card    !00255T04
*             Verification.                                            !00255T05
*             Reduced the size of USER-FLD-ACI field in the base       !00255T06
*             segment by 38 bytes.                                     !00255T07
*             Added the ATC and DCV constants that relate to CPF       !00255T08
*             fields to the end of this file.  Used a section name of  !00255T09
*             ATC-DCV-CONSTANTS.                                       !00255T0A
* Dependency: Apply fixes to DDLGDEFS and DDLFCPF.  Run Make.          !00255T0B
*             Refer to BA60UD0A.SCNCTLS for a complete listing of      !00255T0C
*             dependencies.                                            !00255T0D
* Reference:  WO #050209-01                                            !00255T0E
                                                                       !00255T0F
* 14OCT2006   BartonD                                                  !00255T0G
* Symptom:    EMV CCD Issuer Support Enhancement                       !00255T0H
* Problem:    None.                                                    !00255T0I
* Fix:        Reused USER-FLD1 and USER-FLD2 in the EMV segment for    !00255T0J
*             new fields required for EMV CCD/CPA.                     !00255T0K
*             Added redefines with old field names to minimize         !00255T0L
*             changes in Authorization Code.                           !00255T0M
*             Cleaned up comments in EMV segment so they will be       !00255T0N
*             displayed in DDLDOC.                                     !00255T0O
* Dependency: Apply fixes to DDLFCPF and run Make.  Refer to           !00255T0P
*             BA60UD0A.SCNECCD for a complete listing of dependencies. !00255T0Q
* Reference:  WO #041223-02                                            !00255T0R
                                                                       !00255T0S
* 14OCT2006   BartonD                                                  !00255T0T
* Symptom:    CVD/CVD2 Checking in a Single Request Enhancement        !00255T0U
* Problem:    None.                                                    !00255T0V
* Fix:        Modified comments only.                                  !00255T0W
*             Clarified usage of CV-CHK-TYP and MANUAL-CV-CHK-TYP.     !00255T0X
* Dependency: Apply fix to DDLFCPF and run Make.  Refer to             !00255T0Y
*             BA60UD0A.SCNCVDS for a complete listing of dependencies. !00255T0Z
* Reference:  WO #041002-10                                            !00255T0a
                                                                       !00255T0b
                                                                       !00255U00
* 12OCT2007   AnandK                                                   !00255U01
* Symptom:    Enhanced Mobile Top-Up Routing Support                   !00255U02
* Problem:    None.                                                    !00255U03
* Fix:        Added MTU-PREFIX-RTE field by reducing USER-FLD2 in the  !00255U04
*             CPF ATM segment by 1 byte.                               !00255U05
* Dependency: Apply fix to DDLFCPF and run Make. Refer to              !00255U06
*             BA60UD0B.SCNEMTP for a complete listing of dependencies. !00255U07
* Reference:  WO #061211-01                                            !00255U08
                                                                       !00255U09
* 12OCT2007   MeyersC                                                  !00255U0A
* Symptom:    ATC Enhancements                                         !00255U0B
* Problem:    None.                                                    !00255U0C
* Fix:        Added ATC-LMT to the Base segment.                       !00255U0D
*             Reduced the size of USER-FLD-ACI field in the Base       !00255U0E
*             segment by 3 bytes.                                      !00255U0F
* Dependency: Apply fixes to DDLFCPF.  Run Make.  Refer to             !00255U0G
*             BA60UD0B.SCNATC for a complete listing of dependencies.  !00255U0H
* Reference:  WO #070104-01                                            !00255U0I
                                                                       !00255U0J
* 12OCT2007   SteffeJ                                                  !00255U0K
* Symptom:    CAP Authentication                                       !00255U0L
* Problem:    None.                                                    !00255U0M
* Fix:        Reduced the KEYI-GRP field from 32 bytes to 16 bytes.    !00255U0N
*             Added CAP-GRP, CAP-ATC-UPDT, HOST-CAP-TKN-OPT,           !00255U0O
*             BAD-CAP-TKN-CHK-LMT and USER-FLD-ACI to the EMV segment  !00255U0P
*             of the Card Prefix File (CPF).                           !00255U0Q
* Dependency: Apply fix to DDLFCPF.  Run Make.                         !00255U0R
*             Refer to BA60UD0B.SCNCAP for a complete listing of       !00255U0S
*             dependencies.                                            !00255U0T
* Reference:  WO #070307-01                                            !00255U0U
                                                                       !00255U0V
                                                                       !00255V00
* 17OCT2008   FunteR                                                   !00255V01
* Symptom:    Amex PIN Change is declined.                             !00255V02
* Problem:    Amex card IAD format is not supported.                   !00255V03
* Fix:        Updated narrative for EMV Issuer Application Data        !00255V04
*             format field to include Amex.                            !00255V05
* Dependency: Apply fixes to DDLFCPF.  Run Make.  Refer to             !00255V06
*             BA60UD0C.SCNEAID for a complete listing of dependencies. !00255V07
* Reference:  Case #471302                                             !00255V08
                                                                       !00255V09
* 17OCT2008   DebS                                                     !00255V0A
* Symptom:    Visa Contactless MSD with CVN 17 Enhancement             !00255V0B
* Problem:    None.                                                    !00255V0C
* Fix:        Added new constant atc-chk-emv-base-lmt-d to the         !00255V0D
*             atc_dcv_constants section.                               !00255V0E
* Dependency: Apply fix to DDLFCPF.  Run Make. Refer to                !00255V0F
*             BA60UD0C.SCNCV17 for a complete listing of dependencies. !00255V0G
* Reference:  WO #070803-01                                            !00255V0H
                                                                       !00255V0I
* 17OCT2008   DebS                                                     !00255V0J
* Symptom:    Support Additional Flexibility in EMV Processing.        !00255V0K
* Problem:    None.                                                    !00255V0L
* Fix:        Added SCRIPT-TPLT-TAG, SCRIPT-MAC-LGTH, UPDATE-CNTRS     !00255V0M
*             and DELAYED-AUTH-SPPT to the EMV segment of the Card     !00255V0N
*             Prefix File (CPF).                                       !00255V0O
*             Reduced the size of USER-FLD-ACI field from 8 bytes      !00255V0P
*             to 2 bytes in the EMV segment of CPF.                    !00255V0Q
* Dependency: Apply fix to DDLFCPF. Run Make. Refer to                 !00255V0R
*             BA60UD0C.SCNFLEX for a complete listing of dependencies. !00255V0S
* Reference:  WO #080102-02                                            !00255V0T
                                                                       !00255V0U
* 17OCT2008   eschlis                                                  !00255V0V
* Symptom:    The value 3 is documented for some disposition           !00255V0W
*             flags as "Refer the transaction (POS only)," but         !00255V0X
*             the effect on ATM transactions is not documented.        !00255V0Y
* Problem:    Version 9 comment changes.                               !00255V0Z
* Fix:        Updated the comments for CV-BAD-DISP, BAD-TRK-DISP,      !00255V0a
*             BAD-CAM-ACT-RELIABLE, and BAD-CAM-ACT-UNRELIABLE         !00255V0b
*             to show that the value 3 will cause ATM transactions     !00255V0c
*             to be denied and the card returned.                      !00255V0d
* Dependency: Apply fix to DDLFCPF. Run Make.                          !00255V0e
* Reference:  Case #450136                                             !00255V0f
                                                                       !00255V0g
                                                                       !00255W00
* 06NOV2009   DebS                                                     !00255W01
* Symptom:    Increase Size of Segments in the CPF.                    !00255W02
* Problem:    None.                                                    !00255W03
* Fix:        1. Base Segment - Renamed the first 20 bytes of          !00255W04
*                USER-FLD-REGN to USER-FLD-ACI, thereby reducing       !00255W05
*                the length of USER-FLD-REGN from 50 to 30 bytes.      !00255W06
*             2. ATM Segment - Extended USER-FLD2 from 1 byte to       !00255W07
*                13 bytes.                                             !00255W08
*             3. POS Segment - Added new USER-FLD4 which extended      !00255W09
*                the segment size by 56 bytes.                         !00255W0A
*             4. EMV Segment - Added new USER-FLD3 which extended      !00255W0B
*                the segment size by 30 bytes.                         !00255W0C
* Dependency: Apply fix to DDLFCPF.  Run Make.                         !00255W0D
*             Refer to BA60UD0D.SCNCPFI for a complete listing of      !00255W0E
*             dependencies.                                            !00255W0F
* Reference:  WO #090220-01                                            !00255W0G
                                                                       !00255W0H
* 06NOV2009   PrasadSu                                                 !00255W0I
* Symptom:    Network 2008 Mandates for POS Acquiring.                 !00255W0J
* Problem:    None.                                                    !00255W0K
* Fix:        Added support for three new fields in the POS segment:   !00255W0L
*                PARTIAL-AUTH-LMT                                      !00255W0M
*                PARTIAL-AUTH-SPPT                                     !00255W0N
*                PARTIAL-AUTH-RTE                                      !00255W0O
* Dependency: Apply fix to DDLFCPF.  Run Make.                         !00255W0P
*             Refer to BA60UD0D.SCNNETM for a complete listing of      !00255W0Q
*             dependencies.                                            !00255W0R
* Reference:  WO #080605-01                                            !00255W0S
                                                                       !00255W0T
* 06NOV2009   BhattaD                                                  !00255W0U
* Symptom:    Contactless from Unattended PIN Required Terminals.      !00255W0V
* Problem:    None.                                                    !00255W0W
* Fix:        Modified the description of the value "2" and added the  !00255W0X
*             description of the new values "3" and "4" for the field  !00255W0Y
*             PIN-REQ.                                                 !00255W0Z
* Dependency: Apply fixes to DDLFCPF, RQCPFS, SVCPFS, SCRNCPF and      !00255W0a
*             AUTHLIBS.  Run Make.                                     !00255W0b
*             Refer to BA60UD0D.SCNCUT for a complete listing of       !00255W0c
*             dependencies.                                            !00255W0d
* Reference:  WO #071024-01                                            !00255W0e
                                                                       !00255W0f
* 06NOV2009   BartonD                                                  !00255W0g
* Symptom:    Inhibit CVD Validation for EMV Transactions.             !00255W0h
* Problem:    None.                                                    !00255W0i
* Fix:        Modified the description of the values "0" and "1", and  !00255W0j
*             added the description of the new values "2" and "3" for  !00255W0k
*             the field EMV-CV-CHK-MTHD.                               !00255W0l
* Dependency: Apply fix to DDLFCPF. Run Make.                          !00255W0m
*             Refer to BA60UD0D.SCNCVDI for a complete listing of      !00255W0n
*             dependencies.                                            !00255W0o
* Reference:  Case #485844                                             !00255W0p
                                                                       !00255W0q
* 06NOV2009   MeyersC                                                  !00255W0r
* Symptom:    ATM Bulk Check Infrastructure Support.                   !00255W0s
* Problem:    None.                                                    !00255W0t
* Fix:        Added comments to the following fields to say for        !00255W0u
*             a Bulk Check transaction, each check will count as       !00255W0v
*             a usage:                                                 !00255W0w
*                 ATMCPF.USE-LMT                                       !00255W0x
*                 SSBCCPF.CSF-CHK-USE-LMT                              !00255W0y
* Dependency: Apply fix to DDLFCPF and run Make. Refer to              !00255W0z
*             BA60UD0D.SCNBCA for a complete listing of dependencies.  !00255W10
* Reference:  WO #090227-01                                            !00255W11
                                                                       !00255W12
                                                                       !00255X00
* 15AUG2012   bensone                                                  !00255X01
* Symptom:    Banknet Release 12.Q4 Mandates                           !00255X02
* Problem:    None                                                     !00255X03
* Fix:        Added support for new field in the EMV segment:          !00255X04
*                FALLBACK-ACT-MANUAL                                   !00255X05
*             This field on screen #13 specifies the authorization     !00255X06
*             action required when a manually-entered fallback         !00255X07
*             transaction is processed.                                !00255X08
* Dependency: Apply fixes to AUTHLIBS, BAUTILS, BNETDDLS, BNETG,       !00255X09
*             BNETLIBS, BNETS, COBTKN, DDLFCPF, DDLIDF, DDLPSTKN,      !00255X0A
*             OKLIBTS, PSTKNCVS, PSTKNID, RQCPFS, RQIDFS, RTAUEMVG,    !00255X0B
*             RTAUEMVS, RTAUG, SCRNCPF, SCRNIDF, SUBTPTBL, SVCPFS      !00255X0C
*             and SVIDFS.                                              !00255X0D
*             Run Make.                                                !00255X0E
*             Replace BAMISCTD, LCONFBA, BNETLOGM, BNETMNWD, and       !00255X0F
*             BNETUPDT.                                                !00255X0G
* Reference:  WO #004536                                               !00255X0H
                                                                       !00255X0I
********************************************************************   !00255I0D
?PAGE "CPFBASE - Base CPF Segment"
?SECTION CPFBASE
                                                                       !00255N0H
*********************************************************************  !00255N0I
*               Card Prefix File                                    *  !00255N0J
*********************************************************************  !00255N0K
*                                                                   *  !00255N0L
*   Identification                                                  *  !00255N0M
*                                                                   *  !00255N0N
*     The Card Prefix File (CPF) contains one record for each card  *  !00255N0O
*     prefix in the system.  Prefixes are defined by the customer to*  !00255N0P
*     the level required to differentiate between FIs, Track II     *  !00255N0Q
*     offsets, and criteria for authorization of transactions       *  !00255N0R
*     performed by cardholders with the prefix.                     *  !00255N0S
*                                                                   *  !00255N0T
*   Security                                                        *  !00255N0U
*                                                                   *  !00255N0V
*     The CPF is secured under Tandem's group level security so that*  !00255N0W
*     only authorized network operators may access (or start        *  !00255N0X
*     programs which will access) the file.                         *  !00255N0Y
*                                                                   *  !00255N0Z
*       USER ID         = <BASE24 node name>.*                      *  !00255N0a
*       FILE CODE       = 0                                         *  !00255N0b
*       ACCESS SECURITY = GGGG                                      *  !00255N0c
*                                                                   *  !00255N0d
*   Usage                                                           *  !00255N0e
*                                                                   *  !00255N0f
*       Authorization     I    Sequential              Shared       *  !00255N0g
*       File Maintenance  I/O  Random(Primary)         Shared       *  !00255N0h
*                                                                   *  !00255N0i
*********************************************************************  !00255N0j
                                                                       !00255N0k
                                                                       !00255N0l
                                                                       !00255N0m
                                                                       !00255N0n
                                                                       !00287
?comments
*                                                                     !!00290
*              The Card Prefix File (CPF) defines each card prefix    !!00291
*              that can be processed within a BASE24 logical network. !!00292
*              One record must exist in the CPF for each card prefix  !!00293
*              to be processed.  Note that if one prefix is used with !!00294
*              multiple account number lengths, multiple records must !!00295
*              exist in the CPF--one for each account number length.  !!00296
*              The key to records in the CPF is a combination of data !!00297
*              contained in the PREFIX, PAN-LGTH, and PREFIX-LGTH     !!00298
*              fields.                                                !!00299
*                                                                     !!00300
*              CPF records define the characteristics of each prefix  !!00301
*              and also contain prefix-specific parameters which allow!!00302
*              institutions to define portions of their authorization !!00303
*              processing at the card prefix level.  Processing that  !!00304
*              can be controlled at the prefix level includes:        !!00305
*              expiration date checks, PIN verification parameters,   !!00306
*              card verification parameters, withdrawal limits, credit!!00307
*              account minimums and standard increments, and the      !!00308
*              amount of credit to be granted immediately on each     !!00309
*              deposit.                                               !!00310
*                                                                     !!00311
*              In addition, the CPF also allows institutions to group !!00312
*              different prefixes for specific authorization          !!00313
*              processing defined in the Institution Definition File  !!00314
*              (IDF).  Via this option, institutions can individually !!00315
*              establish the host DPC, authorization level, and       !!00316
*              authorization method to be used for selected prefix    !!00317
*              groups.  (For additional information on this option,   !!00318
*              see the PREFIX-RTE field in the Base Segment           !!00319
*              description in this section.)                          !!00320
*                                                                     !!00321
*              The CPF is used with Positive Authorization, Positive  !!00322
*              Balance Authorization, Negative Authorization without  !!00323
*              Usage Accumulation, and Negative Authorization with    !!00324
*              Usage Accumulation methods.  The CPF is also used with !!00325
*              host-only authorization.  CPF record limits can be     !!00326
*              overridden by Cardholder Account File (CAF) record     !!00327
*              limits with the Positive Authorization and Positive    !!00328
*              Balance Authorization methods.                         !!00329
*                                                                     !!00330
*              The following pages describe the fields included in a  !!00331
*              CPF record. The CPF includes a base segment and        !!00332
*              product-specific segments, and each segment is         !!00333
*              discussed separately.  The information below and on the!!00334
*              following page summarizes other information specific to!!00335
*              the CPF.                                               !!00336
*                                                                     !!00337
*              LCONF ASSIGN:       CPF                                !!00338
*                                                                     !!00339
*              The following fields make up the Base segment of the   !!00340
*              Card Prefix File (CPF).                                !!00341
                                                                       !00342
DEFINITION CPFBASE.                                                    !00343
                                                                       !00344
                                                                       !00345
*                                                                     !!00346
  02 BASE-SEG                     TYPE *.                              !00347
                                                                       !00348
*                                                                     !!00349
*             The following fields make up the primary key of the     !!00350
*             CPF.                                                    !!00351
*                                                                     !!00352
  02 PRIKEY.                                                           !00353
                                                                       !00354
                                                                       !00355
*                                                                     !!00356
*             The card prefix to which this record information        !!00357
*             applies.  The value in this field is used to identify   !!00358
                                                                       !00359B00
*             the FIID, Track offsets, and authorization criteria     !
                                                                       !00359B03
*             for cardholders whose card prefix numbers match the     !!00360
*             value contained in this field.                          !!00361
*                                                                     !!00362
     04 PREFIX                    TYPE BINARY 64.                      !00363
                                                                       !00364
*                                                                     !!00365
*             The values in the following fields make up the          !!00366
*             alternate key of the CPF.                               !!00367
*                                                                     !!00368
     04 ALTKEY.                                                        !00369
                                                                       !00370
                                                                       !00371
*                                                                     !!00372
*             Identifies the length of the entire PAN (i.e., the      !!00373
*             prefix length plus the length of the cardholder's       !!00374
*             account number).  The value in this field is used by    !!00375
*             the Authorization process as an additional check to     !!00376
*             ensure a card belongs to a valid prefix family.         !!00377
*                                                                     !!00378
        06 PAN-LGTH               PIC 9(2).                            !00379
                                                                       !00380
                                                                       !00381
*                                                                     !!00382
*             The length of this card prefix.  The maximum value that !!00383
*             can be placed in this field is 11.  The Authorization   !!00384
*             process uses the value in this field to determine the   !!00385
*             number of prefix characters to compare when searching   !!00386
*             for a match in the prefix table maintained in memory.   !!00387
*                                                                     !!00388
        06 PREFIX-LGTH            PIC 9(2).                            !00389
                                                                       !00390
                                                                       !00391
*                                                                     !!00392
*             The prefix routing group to which this prefix belongs.  !!00393
*             Prefix routing groups can be used to group prefixes for !!00394
*             different types of authorization processing.            !!00395
*                                                                     !!00396
*             The prefix routing group number in this field can be    !!00397
*             set up to correspond to a RT-TBL entry in the product-  !!00398
*             specific segments of the IDF.  The IDF table can then   !!00399
*             be used to tie all prefixes with the same prefix        !!00400
*             routing group numbers to a common set of authorization  !!00401
*             parameters.  Values are:                                !!00402
*                                                                     !!00403
*             0-9 = A prefix routing group number.  Any number        !!00404
*                   specified should have a corresponding group       !!00405
*                   number entry in the IDF.                          !!00406
*             A   = All prefixes (the default value).                 !!00407
*                                                                     !!00408
*             Any prefixes not to be included in a specific prefix    !!00409
*             routing group (0-9) should be coded with an A.          !!00410
*                                                                     !!00411
  02 PREFIX-RTE                   PIC X.                               !00412
                                                                       !00413
                                                                       !00414
*                                                                     !!00415
*             The FIID of the institution that issued the cards with  !!00416
*             this prefix.  The value in this field is used by the    !!00417
*             Authorization process to locate the IDF record needed   !!00418
*             for processing transactions initiated by cards with     !!00419
*             this prefix.                                            !!00420
*                                                                     !!00421
  02 FIID                         TYPE *.                              !00422
                                                                       !00423
*                                                                     !!00424
*             One- or two-character codes are used to identify card   !!00425
*             types in files throughout BASE24.  The same codes must  !!00426
*             be used for a particular card type in all of the files. !!00427
*             These codes are also used to identify service types in  !!00428
*             BASE24-pos.  Codes used in this field are either        !!00429
*             reserved by BASE24 or user-defined. Reserved codes are  !!00430
*             to be used only as defined, and include:                !!00431
*                                                                     !!00432
*             AD = Administrative (BASE24-atm only)                   !!00433
*             AX = American Express credit                            !!00434
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00435
*                  only)                                              !!00436
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00437
*                  CC-CZ)                                             !!00438
*             CB = Carte Blanche credit                               !!00439
*             D  = Demonstration (BASE24-atm only)                    !!00440
*             DC = Diners Club credit                                 !!00441
*             DS = Discover (Sears) credit                            !!00442
*             M  = MasterCard credit                                  !!00443
*             MD = MasterCard debit (See BASE24-pos note below)       !!00444
*             MM = MasterCard dual (See BASE24-pos note below)        !!00445
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00446
                                                                       !00446N00
*             S1 = Secure internet validation                          !00446N01
                                                                       !00446N02
*             SC = Special, Check (BASE24-pos only)                   !!00447
                                                                       !00447K00
*             SN = Stored Value Non-Reloadable (BASE24-pos only)       !00447K01
                                                                       !00447K02
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00448
*                  Check Application only)                            !!00449
                                                                       !00449K00
*             SR = Stored Value Reloadable (BASE24-pos only)           !00449K01
                                                                       !00449K02
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00450
*                  Application only)                                  !!00451
*             V  = VISA credit                                        !!00452
*             VD = VISA debit (See BASE24-pos note below)             !!00453
*             VV = VISA dual (See BASE24-pos note below)              !!00454
*                                                                     !!00455
*             Codes with a first character of C, except code CB, are  !!00456
*             recommended to identify private label credit cards.     !!00457
*                                                                     !!00458
*             Codes with a first character of P are required to       !!00459
*             identify proprietary debit cards.  BASE24 treats cards  !!00460
*             with proprietary debit codes and codes MD and VD as     !!00461
*             debit cards and treats cards with all other codes as    !!00462
*             credit cards.                                           !!00463
*                                                                     !!00464
*             Administrative (AD), Business deposit (BD),             !!00465
*             Demonstration (D), Special purpose (SP), and Super      !!00466
*             teller (ST) are special-use card types used by          !!00467
*             BASE24-atm.                                             !!00468
*                                                                     !!00469
*             Business deposit (BD) is also a special-use card type   !!00470
*             used by BASE24-teller to identify cards that can only   !!00471
*             be used to initiate deposit transactions.               !!00472
*             BASE24-teller does not perform any other processing     !!00473
*             based on card type; however, BASE24 guidelines should   !!00474
*             still be used when establishing card types for          !!00475
*             BASE24-teller.                                          !!00476
*                                                                     !!00477
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00478
*             processed as debit or credit card types, based on the   !!00479
*             default combo card type specified in the CPF.           !!00480
*                                                                     !!00481
*             Special, Check (SC) is a special-use card type used to  !!00482
*             initiate BASE24-pos check guarantee and check           !!00483
*             verification transactions only.                         !!00484
*                                                                     !!00485
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00486
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00487
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00488
*             BASE24-pos automatically includes the MD and MM card    !!00489
*             types with the MasterCard credit (M) card type, and     !!00490
*             automatically includes the VD and VV card types with    !!00491
*             the VISA credit (V) card type.                          !!00492
*                                                                     !!00493
*             User-defined Codes:  The user can add any one- or two-  !!00494
*             character code not included in the reserved code list   !!00495
*             above, according to the following guidelines:           !!00496
*                                                                     !!00497
*             o  The first character must be alphabetic (A, B, D-O,   !!00498
*                and Q-Z).                                            !!00499
*                                                                     !!00500
*             o  The second character can be A-Z, 0-9, or a blank.    !!00501
*                                                                     !!00502
*             o  A valid COBNAMES table entry is recommended for each !!00503
*                user-defined code.                                   !!00504
*                                                                     !!00505
  02 CRD-TYP                      PIC XX.                              !00506
                                                                       !00506F00
*                                                                    !!!00506F01
*              A flag that indicates the date format to be used in   !!!00506F02
*              the call to verify Manual CVD information.            !!!00506F03
*              Valid values are:                                     !!!00506F04
*                  0 - YYMM                                          !!!00506F05
*                  1 - MMYY                                          !!!00506F06
*                  2 - YYMM first, then MMYY                         !!!00506F07
*                  3 - MMYY first, then YYMM                         !!!00506F08
*                                                                      !00506F09
                                                                       !00506F0A
  02 DAT-CHK-TYP                  PIC X.                               !00506F0B
                                                                       !00506F0C
                                                                       !00507F00
                                                                       !00507F01
                                                                       !00507F02
*                                                                     !!00517
*             The offset to the member number in Track 2 of the card. !!00518
*             This offset allows for retrieval of the member number   !!00519
*             from cards issued with this prefix.                     !!00520
*                                                                     !!00521
*             The value in this field is used when the value in the   !!00522
*             PAN-ACCESS-TYP field of the Base segment of the CPF is  !!00523
*             set to 1.                                               !!00524
*                                                                     !!00525
  02 MBR-OFST                    TYPE BINARY 16.                       !00526
                                                                       !00527
                                                                       !00528
                                                                       !00529
                                                                       !00530
*                                                                     !!00531
                                                                       !00531B00
*             The length of the member number in Track 1 or Track 2    !00531B01
*             of the card.  It is assumed the length is the same       !00531B02
*             regardless of which track it is encoded on.              !00531B03
                                                                       !00531B04
                                                                       !00532B00
                                                                       !00532B01
*             This length is used in conjunction with the value in    !!00533
*             the MBR-OFST field to allow for retrieval of the member !!00534
*             number from cards issued with this prefix.              !!00535
*                                                                     !!00536
*             The value in this field is used when the value in the   !!00537
*             PAN-ACCESS-TYPE field is set to 1.                      !!00538
*                                                                     !!00539
  02 MBR-LGTH                    TYPE BINARY 16.                       !00540
                                                                       !00541
                                                                       !00542
                                                                       !00543
                                                                       !00544
*                                                                     !!00545
*             The offset to the PIN offset, PIN verification value,   !!00546
*             or PIN verification number in Track 2 of the card       !!00547
*             (depending on the type of PIN verification being used). !!00548
*             This offset allows for retrieval of the indicated value !!00549
*             from cards issued with this prefix.                     !!00550
*                                                                     !!00551
*             DES (IBM 3624) and Diebold PIN verification use PIN     !!00552
*             offsets, VISA PVV PIN verification uses PIN             !!00553
*             verification values, and Identikey PIN verification     !!00554
*             uses PIN verification numbers.  In all cases, the value !!00555
*             in this field is required if the indicated value is to  !!00556
*             be retrieved from the card (i.e., the value in the PIN- !!00557
*             OFST-LOC field in the Base segment of the IDF is set to !!00558
*             1).                                                     !!00559
*                                                                     !!00560
  02 POFST-OFST                  TYPE BINARY 16.                       !00561
                                                                       !00562
                                                                       !00563
                                                                       !00564
                                                                       !00565
*                                                                     !!00566
*             The offset to the Diebold algorithm number or VISA PVV  !!00567
*             PIN verification key indicator in Track 2 of the card   !!00568
*             (depending on the type of PIN verification being used). !!00569
*             This offset allows for retrieval of the indicated value !!00570
*             from cards issued with this prefix.                     !!00571
*                                                                     !!00572
*             Diebold PIN verification uses algorithm numbers, and    !!00573
*             the value in this field is required if the algorithm    !!00574
*             numbers are to be retrieved from the card (i.e., the    !!00575
*             value in the ALGO-NUM-LOC field in the Base segment of  !!00576
*             the IDF is set to 2).                                   !!00577
*                                                                     !!00578
*             VISA PVV PIN verification uses PIN verification key     !!00579
*             indicators, and this field is required if the           !!00580
*             indicators are to be retrieved from the card (i.e., the !!00581
*             value in the PIN-OFST-LOC field in the Base segment of  !!00582
*             the IDF is set to 1).                                   !!00583
*                                                                     !!00584
  02 ALGO-OFST                   TYPE BINARY 16.                       !00585
                                                                       !00586
                                                                       !00587
                                                                       !00588
                                                                       !00589
*                                                                     !!00590
*             The offset to the expiration date on Track 2 of the     !!00591
*             card.  This offset is retrieved and checked against     !!00592
*             today's date when the institution chooses to have the   !!00593
*             expiration date on cards with this prefix checked       !!00594
*             (i.e., the value in the EXP-CHK-IND field of the Base   !!00595
*             segment of the CPF is set to 1.  A zero value is not    !!00596
*             allowed in this field if the value in the EXP-CHK-IND   !!00597
*             field is set to 1).                                     !!00598
*                                                                     !!00599
  02 DAT-OFST                    TYPE BINARY 16.                       !00600
                                                                       !00601
                                                                       !00602
                                                                       !00603
                                                                       !00604
*                                                                     !!00605
*             Indicates whether the member number on the card is to   !!00606
*             be used to access the cardholder record.  Values are:   !!00607
*                                                                     !!00608
*             0 = Access using a member number of zero.               !!00609
*             1 = Access using member number from card.               !!00610
*                                                                     !!00611
  02 PAN-ACCESS-TYP              PIC X.                                !00612
                                                                       !00613
                                                                       !00614
                                                                       !00615
                                                                       !00616
*                                                                     !!00617
*             Indicates the type of card expiration date check to use !!00618
*             for this prefix.  Values are:                           !!00619
*                                                                     !!00620
*             0 = Do not check the expiration date.                   !!00621
*             1 = Check the expiration date on the card.              !!00622
*             2 = Check the expiration date in the CAF.               !!00623
*                                                                     !!00624
  02 EXP-CHK-IND                 PIC X.                                !00625
                                                                       !00626
                                                                       !00627
                                                                       !00628
                                                                       !00629
                                                                       !00630
                                                                       !00631
*                                                                     !!00632
*             The values in the following fields are used to limit    !!00633
*             transaction activity during a single usage accumulation !!00634
*             period.                                                 !!00635
*                                                                     !!00636
  02 GRP-LMT.                                                          !00637
                                                                       !00638
                                                                       !00639
*                                                                     !!00640
*             The maximum amount of purchases and cash withdrawals    !!00641
*             allowed against non-credit accounts.                    !!00642
*                                                                     !!00643
*             This amount cannot exceed the amount in the GRP-        !!00644
*             LMT.AGGR-LMT field in this (Base) segment.              !!00645
*                                                                     !!00646
     04 TTL-WDL-LMT               TYPE BINARY 64.                      !00647
                                                                       !00648
                                                                       !00649
*                                                                     !!00650
*             The maximum amount of purchases and cash withdrawals    !!00651
*             allowed offline against non-credit accounts.            !!00652
*                                                                     !!00653
*             The amount in this field is only used with              !!00654
*             Authorization level 3 (online/offline), where the       !!00655
*             authorizing host is unavailable and BASE24 performs     !!00656
*             stand-in authorization.                                 !!00657
*                                                                     !!00658
*             This amount cannot exceed any of the following field    !!00659
*             amounts:                                                !!00660
*                                                                     !!00661
*             o  GRP-LMT.TTL-WDL-LMT in this (Base) segment.          !!00662
*             o  GRP-LMT.AGGR-LMT in this (Base) segment.             !!00663
*             o  GRP-LMT.OFFL-AGGR-LMT in this (Base) segment.        !!00664
*                                                                     !!00665
     04 OFFL-WDL-LMT              TYPE BINARY 64.                      !00666
                                                                       !00667
                                                                       !00668
                                                                       !00669
                                                                       !00670
                                                                       !00671
                                                                       !00672
*                                                                     !!00673
*             The maximum amount of cash advances allowed against     !!00674
*             credit accounts.                                        !!00675
*                                                                     !!00676
*             This amount cannot exceed the GRP-LMT.AGGR-LMT field    !!00677
*             amount in this (Base) segment.                          !!00678
*                                                                     !!00679
     04 TTL-CCA-LMT               TYPE BINARY 64.                      !00680
                                                                       !00681
                                                                       !00682
                                                                       !00683
                                                                       !00684
                                                                       !00685
                                                                       !00686
*                                                                     !!00687
*             The maximum amount of cash advances allowed offline     !!00688
*             against credit accounts.                                !!00689
*                                                                     !!00690
*             The amount in this field is only used with              !!00691
*             Authorization level 3 (online/offline), where the       !!00692
*             authorizing host is unavailable and BASE24 performs     !!00693
*             stand-in authorization.                                 !!00694
*                                                                     !!00695
*             This amount cannot exceed any of the following field    !!00696
*             amounts:                                                !!00697
*                                                                     !!00698
*             o  GRP-LMT.TTL-CCA-LMT in this (Base) segment.          !!00699
*             o  GRP-LMT.OFFL-AGGR in this (Base) segment.            !!00700
*             o  GRP-LMT.AGGR-LMT in this (Base) segment.             !!00701
*                                                                     !!00702
     04 OFFL-CCA-LMT              TYPE BINARY 64.                      !00703
                                                                       !00704
                                                                       !00705
                                                                       !00706
                                                                       !00707
                                                                       !00708
                                                                       !00709
                                                                       !00710
*                                                                     !!00711
*             The maximum aggregate amount of cash disbursements      !!00712
*             allowed against credit and non-credit accounts, plus    !!00713
*             purchases allowed against non-credit accounts.  This    !!00714
*             amount does not limit purchases against credit          !!00715
*             accounts.                                               !!00716
*                                                                     !!00717
*             This field is at the top of the total limit field       !!00718
*             hierarchy.  This amount must be greater than or equal   !!00719
*             to each of the following field amounts:                 !!00720
*                                                                     !!00721
*             o  OFFL-AGGR-LMT in the Base, BASE24-atm, and           !!00722
*                BASE24-pos segments of the CPF.                      !!00723
*             o  GRP-LMT.OFFL-WDL-LMT in the Base, BASE24-atm, and    !!00724
*                BASE24-pos segments of the CPF.                      !!00725
*             o  GRP-LMT.TTL-WDL-LMT in the Base, BASE24-atm, and     !!00726
*                BASE24-pos segments of the CPF.                      !!00727
*             o  GRP-LMT.OFFL-CCA-LMT in the Base, BASE24-atm, and    !!00728
*                BASE24-pos segments of the CPF.                      !!00729
*             o  GRP-LMT.TTL-CCA-LMT in the Base, BASE24-atm, and     !!00730
*                BASE24-pos segments of the CPF.                      !!00731
*                                                                     !!00732
     04 AGGR-LMT                  TYPE BINARY 64.                      !00733
                                                                       !00734
                                                                       !00735
*                                                                     !!00736
*             The maximum aggregate amount of cash disbursements      !!00737
*             allowed offline against credit and non-credit accounts, !!00738
*             plus purchases allowed offline against non-credit       !!00739
*             accounts.  This amount does not limit purchases against !!00740
*             credit accounts.                                        !!00741
*                                                                     !!00742
*             The amount in this field is only used with              !!00743
*             Authorization level 3 (online/offline), where the       !!00744
*             authorizing host is unavailable and BASE24 performs     !!00745
*             stand-in authorization.                                 !!00746
*                                                                     !!00747
*             This amount cannot exceed the amount in the GRP-        !!00748
*             LMT.AGGR-LMT field in this segment.  This field is at   !!00749
*             the top of the offline limit hierarchy, so its amount   !!00750
*             must be greater than or equal to each of the following  !!00751
*             field amounts:                                          !!00752
*                                                                     !!00753
*             o  GRP-LMT.OFFL-WDL-LMT in the Base, BASE24-atm, and    !!00754
*                BASE24-pos segments of the CPF.                      !!00755
*             o  GRP-LMT.OFFL-CCA-LMT in the Base, BASE24-atm, and    !!00756
*                BASE24-pos segments of the CPF.                      !!00757
*                                                                     !!00758
     04 OFFL-AGGR-LMT             TYPE BINARY 64.                      !00759
                                                                       !00760
                                                                       !00761
                                                                       !00762
                                                                       !00763
*                                                                     !!00764
*             This REDEFINE allows the previous fields to be accessed !!00765
*             by index.                                               !!00766
*                                                                     !!00767
  02 WDL-LMT                      REDEFINES GRP-LMT OCCURS 6 TIMES     !00768
                                  TYPE BINARY 64.                      !00769
                                                                       !00770
*                                                                     !!00771
*             Identifies the last file maintenance action on this     !!00772
*             record.  The value in this field includes the user who  !!00773
*             did the update, the time at which it was done, and the  !!00774
*             type of update.                                         !!00775
*                                                                     !!00776
  02 LAST-FM                      TYPE *.                              !00777
                                                                       !00778
*             An identifier used to show the PIN verification group to!!00779
*             which this record belongs on the Key Authorization      !!00780
*             File (KEYA).  If this field is not blank, the           !!00781
*             Authorization processes will use the value of this      !!00782
*             field, among others, to read the appropriate KEYA       !!00783
*             record.  If this field contains blanks, then the        !!00784
*             Authorization processes will not use the CPF to perform !!00785
*             PIN verification.  Valid values are any combination of  !!00786
*             alphanumeric characters and leading and trailing spaces.!!00787
                                                                       !00788
  02  PV-KEYA-GRP                    PIC X(4).                         !00789
                                                                       !00790
*             A flag indicating whether a pre-screen PIN verification !!00791
*             check should be performed by the Authorization processes!!00792
*             before sending a transaction to the host.  This field is!!00793
*             only used if the PV-KEYA-GRP field is not equal to      !!00794
*             blanks.  Valid values are:                              !!00795
*                                                                     !!00796
*             0 = If the Host is on-line, the transaction request is  !!00797
*                 sent to the Host without verifying the cardholder's !!00798
*                 PIN.                                                !!00799
*             1 = The customer's PIN is verified before attempting to !!00800
*                 send the transaction request to the Host.  If the   !!00801
*                 PIN is invalid, the Authorization processes deny the!!00802
*                 transaction.                                        !!00803
                                                                       !00804
  02 PIN-CHK                    PIC X.                                 !00805
                                                                       !00806
*             The PIN verification method for this CPF record.  The   !!00807
*             Authorization processes use the value in this field to  !!00808
*             determine the type of PIN verification to perform for   !!00809
*             cards whose prefix matches on this CPF record.  This    !!00810
*             field is only used if the PV-KEYA-GRP field is not      !!00811
*             equal to blanks.  Valid values are:                     !!00812
*                                                                     !!00813
*             00 = No PIN verification                                !!00814
*             01 = DES (IBM 3624)                                     !!00815
*             02 = Diebold                                            !!00816
*             03 = Identikey                                          !!00817
*             04 = VISA PVV                                           !!00818
                                                                       !00818J00
*             05 = Italian Verification                                !00818J01
                                                                       !00818J02
*             99 = IDF PIN Verification                               !!00819
*                                                                     !!00820
                                                                       !00821
  02 PIN-VRFY-TYP               PIC XX.                                !00822
                                                                       !00823
*             Depending on the type of PIN verification being         !!00824
*             performed, this field indicates the location of the DES !!00825
*             (IBM 3624) or Diebold PIN verification method's PIN     !!00826
*             offset, the VISA PVV PIN verification method's PIN      !!00827
*             Verification Value (PVV), or the Identikey PIN          !!00828
*             verification method's PIN Verification Number (PVN).  It!!00829
*             is used by the Authorization processes in PIN           !!00830
*             verification.  This field is only used if the           !!00831
*             PV-KEYA-GRP field is not equal to blanks.  Valid values !!00832
*             are:                                                    !!00833
*                                                                     !!00834
*             0 = No offset or PVN is specified, but "0000" is used if!!00835
*                 an offset is required for the particular            !!00836
*                 verification method.  This value is not valid with  !!00837
*                 VISA PVV.                                           !!00838
*             1 = The PIN offset, PVV, or PVN is on the card, with the!!00839
*                 CPF POFST-OFST field specifying the exact location  !!00840
                                                                       !00840B00
*                 on TRACK2 and TRK1-POFST-OFST specifying the exact   !00840B01
*                 location on Track 1.                                 !00840B02
                                                                       !00840B03
                                                                       !00841B00
                                                                       !00841B01
*             2 = The PIN offset, PVV, or PVN is in the Cardholder    !!00842
*                 Account File (CAF).                                 !!00843
                                                                       !00844
  02 PIN-OFST-LOC               PIC X.                                 !00845
                                                                       !00846
*             The location of the ALGO number.  The Authorization     !!00847
*             processes currently use the value in this field only for!!00848
*             the Diebold PIN verification method.  If another PIN    !!00849
*             verification method is being utilized the field should  !!00850
*             be set to 0.  This field is only used if the PV-KEYA-GRP!!00851
*             field is not equal to blanks.  Valid values are:        !!00852
*                                                                     !!00853
*             0 = Not required for PIN verification method            !!00854
*             1 = ALGO number is on the Key Authorization File (KEYA) !!00855
*             2 = ALGO number is on the card.  The CPF ALGO-OFST field!!00856
                                                                       !00856B00
*                 specifies the exact location on Track 2 and the      !00856B01
*                 TRK1-ALGO-OFST specifies the exact location on       !00856B02
*                 Track 1.                                             !00856B03
                                                                       !00856B04
                                                                       !00857B00
                                                                       !00857B01
                                                                       !00858
  02 ALGO-NUM-LOC               PIC X.                                 !00859
                                                                       !00860
*             An indicator of whether cardholders whose card prefixes !!00861
*             match on this CPF record are allowed to select their PIN!!00862
*             on the first use of the card.  If cardholders are       !!00863
*             allowed to select their own PIN, that PIN must be sent  !!00864
*             to the Authorization processes in its clear form.  This !!00865
*             field is only used if the PV-KEYA-GRP field is not equal!!00866
*             to blanks.  Valid values are:                           !!00867
*                                                                     !!00868
*             Y = Yes                                                 !!00869
*             N = No                                                  !!00870
                                                                       !00871
  02 CRD-HLD-SELCT              PIC X.                                 !00872
                                                                       !00873
*             The point at which the value of the ADMIN, CAF, or UAF  !!00874
*             BAD-PIN-TRIES field will be reset.  For POS Admin       !!00875
*             transactions, the POS Authorization process will compare!!00876
*             the value of the ADMIN field BAD-PIN-TRIES to the value !!00877
*             in the field MAX-PIN-TRY in the ADMIN file to determine !!00878
*             if the cardholder has reached the maximum number of PIN !!00879
*             tries allowed.  For other transactions, the value of the!!00880
*             BAD-PIN-TRIES field in the CAF or UAF will be compared  !!00881
*             to the value of MAX-PIN-TRY in the CPF.  This field is  !!00882
*             only used if the PV-KEYA-GRP field is not equal to      !!00883
*             blanks.  Valid values are:                              !!00884
*                                                                     !!00885
*             0 = The value of the BAD-PIN-TRIES field in each CAF/UAF!!00886
*                 record or the BAD-PIN-TRY field in each ADMIN record!!00887
*                 will be reset with each usage period.  (Default)    !!00888
*             1 = The value of the BAD-PIN-TRIES field in each CAF/UAF!!00889
*                 record or the BAD-PIN-TRY field in each ADMIN record!!00890
*                 is reset when a good PIN is entered providing the   !!00891
*                 MAX-PIN-TRY field value has not been reached.  It is!!00892
*                 also reset with each usage period.                  !!00893
*             2 = The value of the BAD-PIN-TRIES field in each CAF/UAF!!00894
*                 record or the BAD-PIN-TRY field in each ADMIN record!!00895
*                 is reset regardless of the value of the MAX-PIN-TRY !!00896
*                 field value.  It is also reset with each usage      !!00897
*                 period.                                             !!00898
*             3 = The value of the BAD-PIN-TRIES field in each CAF/UAF!!00899
*                 record or the BAD-PIN-TRY field in each ADMIN record!!00900
*                 is reset when a good PIN is entered providing the   !!00901
*                 MAX-PIN-TRY field has not been reached.  It is not  !!00902
*                 reset with each usage period.                       !!00903
*             4 = The value of the BAD-PIN-TRIES field in each CAF/UAF!!00904
*                 record or the BAD-PIN-TRY field in each ADMIN record!!00905
*                 is reset regardless of the value of the MAX-PIN-TRY !!00906
*                 field value.  It is not reset with each usage       !!00907
*                 period.                                             !!00908
                                                                       !00909
  02 PIN-TRIES-RESET-OPTION     PIC X.                                 !00910
                                                                       !00911
*             The action which the Authorization processes will take  !!00912
*             when a cardholder has exceeded the allowable attempts to!!00913
*             enter the correct PIN.  This field is only used if      !!00914
*             the PV-KEYA-GRP field is not equal to blanks.  Valid    !!00915
*             values are:                                             !!00916
*                                                                     !!00917
*             0 = Return the card                                     !!00918
*             1 = Retain the card                                     !!00919
                                                                       !00920
  02 BAD-PIN-DISP               PIC X.                                 !00921
                                                                       !00922
*             The number of times that the Authorization processes    !!00923
*             will allow a cardholder to attempt to enter his PIN     !!00924
*             correctly before declining the request and taking the   !!00925
*             action specified by the value in the BAD-PIN-DISP field.!!00926
*             These checks are apart from any PIN checking that ATMs  !!00927
*             may do.  This field is only used if the PV-KEYA-GRP     !!00928
*             field is not equal to blanks.  Valid values are 0-999.  !!00929
                                                                       !00930
  02 MAX-PIN-TRY                TYPE BINARY 16.                        !00931
                                                                       !00932
*             The TRACK2 offset of the card verification data.  If    !!00933
*             this field is equal to zero then card verification will !!00934
*             not be performed by the Authorization processes.  This  !!00935
*             field is only used if the CV-KEYA-GRP field             !!00936
*             is not equal to blanks.  Valid values are 0-99.         !!00937
                                                                       !00938
  02 CV-OFST                    TYPE BINARY 16.                        !00939
                                                                       !00940
*             The TRACK2 offset of the service code data.  If this    !!00941
*             field is equal to zero then card verification will not  !!00942
*             be performed by the Authorization processes.  This field!!00943
*             is only used if the CV-KEYA-GRP field is not equal to   !!00944
*             blanks.  Valid values are 0-99.                         !!00945
                                                                       !00946
  02 SC-OFST                    TYPE BINARY 16.                        !00947
                                                                       !00948
*             An identifier used to show the card verification group  !!00949
*             to which this record belongs on the Key Authorization   !!00950
*             File (KEYA).  If this field is not blank, the           !!00951
*             Authorization processes will use the value of this      !!00952
*             field, among others, to read the appropriate KEYA card  !!00953
*             verification record.  If this field contains blanks,    !!00954
*             then card verification will not be performed.  Valid    !!00955
*             values are any combination of alphanumeric characters   !!00956
*             and leading and trailing spaces.                        !!00957
                                                                       !00958
  02 CV-KEYA-GRP                PIC X(4).                              !00959
                                                                       !00960
*             The action which the Authorization processes will take  !!00961
*             when a cardholder uses a card that contains invalid     !!00962
*             verification data.  The first occurrence of this field  !!00963
*             is used to set the action that will be taken when the   !!00964
                                                                       !00965B00
*             Track data is complete.  The second occurrence of this  !
                                                                       !00965B03
*             field is used to set the action that will be taken when !!00966
                                                                       !00967B00
*             the Track data is complete.  This field is only used if !
                                                                       !00967B03
*             the CV-KEYA-GRP field is not equal to blanks.  Valid    !!00968
*             values for both occurances are:                         !!00969
*                                                                     !!00970
*             0 = Note the situation and continue                     !!00971
*             1 = Deny and return the card                            !!00972
*             2 = Deny and retain the card                            !!00973
                                                                       !00973B00
*             3 = Refer the transaction (POS only)                     !00973B01
                                                                       !00973B02
                                                                       !00973V00
*             3 = Deny and return the card (ATM only)                  !00973V01
                                                                       !00973V02
                                                                       !00974
  02 CV-BAD-DISP                PIC X OCCURS 2 TIMES.                  !00975
                                                                       !00976
                                                                       !00977
*             A flag indicating when card verification is to be       !!00978
*             attempted when processing complete and uncertain Track2 !!00979
*             data.  This field is only used if the CV-KEYA-GRP field !!00980
*             is not equal to blanks.  Valid values are:              !!00981
*                                                                     !!00982
*             0 = CV disabled - do not check Card Verification Data   !!00983
*                 (CVD)                                               !!00984
*             1 = Check CVD for complete Track2 data only             !!00985
                                                                       !00985G00
*             2 = Perform card verification for all transactions that  !00985G01
*                 contain the track information necessary for card     !00985G02
*                 verification, regardless of whether complete track   !00985G03
*                 data is available.                                   !00985G04
                                                                       !00985T00
                                                                       !00985T01
                                                                       !00985T02
                                                                       !00985S07
  02 CV-CHK-TYP                 PIC X.                                 !00989
                                                                       !00990
                                                                       !00991
*             A flag indicating whether a pre-screen card verification!!00992
*             check should be performed by the Authorization processes!!00993
*             before sending a transaction to the host.  This field is!!00994
*             only used if the CV-KEYA-GRP field is not equal to      !!00995
*             blanks.  Valid values are:                              !!00996
*                                                                     !!00997
*             0 = If the host is online, the transaction request is   !!00998
*                 sent to the host without verifying the Card         !!00999
*                 Verification Digits (CVD).                          !!01000
*             1 = The Card Verification Digits (CVD) are validated    !!01001
*                 before attempting to send the transaction request to!!01002
*                 the host.  If the CVD is invalid, the Authorization !!01003
*                 processes will perform the action defined within    !!01004
*                 the CV-BAD-DISP field.                              !!01005
                                                                       !01006
  02 CV-CHK                     PIC X.                                 !01007
                                                                       !01008
*                 An indicator for the type of MOD10 check that is    !!01009
*                 to be performed by Router/Authorization.            !!01010
*                                                                     !!01011
*                 Valid values are:                                   !!01012
*                    0 - no MOD10 check                               !!01013
*                    1 - double-add-double                            !!01014
*                                                                     !!01015
  02 MOD10-CHK                    PIC X.                               !01016
                                                                       !01016B00
*             This field is used for surcharging.  The field is used   !01016B01
*             to differentiate between various card groups for a       !01016B02
*             particular card issuer.                                  !01016B03
                                                                       !01016B04
  02 CARD-PROFILE                 PIC X(2).                            !01016B05
                                                                       !01016F00
*                                                                      !01016F01
*             The action which the Authorization processes will take !!!01016F02
*             when a bad Manual CVD value is entered.                !!!01016F03
*             Valid values are:                                      !!!01016F04
*             0 = Note the situation and continue                    !!!01016F05
*             1 = Deny and return the card                           !!!01016F06
*             2 = Deny and retain the card                           !!!01016F07
*             3 = Refer the transaction (POS only)                   !!!01016F08
*                                                                    !!!01016F09
                                                                       !01016F0A
  02 MANUAL-CV-BAD-DISP           PIC X.                               !01016F0B
                                                                       !01016F0C
*                                                                      !01016F0D
*             An identifier used to show the card verification group !!!01016F0E
*             to which this record belongs on the Key Authorization  !!!01016F0F
*             File (KEYA) when the transaction is manually entered.  !!!01016F0G
*             If this field is not blank, the Authorization processes!!!01016F0H
*             will use the value of this field, among others, to read!!!01016F0I
*             the appropriate KEYA card verification record.  If this!!!01016F0J
*             field contains blanks, then Manual CVD verification    !!!01016F0K
*             will not be performed.  Valid values are any           !!!01016F0L
*             combination of alphanumeric characters and leading and !!!01016F0M
*             trailing spaces.                                       !!!01016F0N
*                                                                      !01016F0O
                                                                       !01016F0P
  02 MANUAL-CV-KEYA-GRP           PIC X(4).                            !01016F0Q
                                                                       !01016F0R
*                                                                      !01016F0S
*             Contains the Manual CVD expiration date.  If a card had!!!01016F0T
*             an expiration date greater than or equal to this date, !!!01016F0U
*             a Manual CVD value is expected on the card and Manual  !!!01016F0V
*             CVD processing will occur.  Otherwise, the card may not!!!01016F0W
*             have a Manual CVD value and Manual CVD processing will !!!01016F0X
*             not occur.                                             !!!01016F0Y
*                                                                      !01016F0Z
                                                                       !01016F10
  02 MANUAL-CV-EFF-DAT            TYPE BINARY 16.                      !01016F11
                                                                       !01016F12
                                                                       !01016F13
                                                                       !01016F14
                                                                       !01016F15
*             Contains the CVV expiration date.  If a card had an      !01020B02
*             expiration date greater than or equal to this date, a    !01020B03
*             CVV value is expected on the card and CVV processing     !01020B04
*             will occur.  Otherwise, the card may not have a CVV      !01020B05
*             value and CVV processing will not occur.                 !01020B06
                                                                       !01020B07
  02 CV-EFF-DAT                  PIC X(4).                             !01020B08
                                                                       !01020B09
                                                                       !01021
*             The offset to the member number in Track 1 of the card. !!01022
*             This offset allows for retrieval of the member number   !!01023
*             from cards issued with this prefix.                     !!01024
*                                                                     !!01025
  02 TRK1-MBR-OFST                TYPE BINARY 16.                      !01026
                                                                       !01027
*             The offset to the PIN offset, PIN verification value,   !!01028
*             or PIN verification number in Track 1 of the card       !!01029
*             (depending on the type of PIN verification being used). !!01030
*             This offset allows for retrieval of the indicated value !!01031
*             from cards issued with this prefix.                     !!01032
*                                                                     !!01033
*             DES (IBM 3624) and Diebold PIN verification use PIN     !!01034
*             offsets, VISA PVV PIN verification uses PIN             !!01035
*             verification values, and Identikey PIN verification     !!01036
*             uses PIN verification numbers.  In all cases, the value !!01037
*             in this field is required if the indicated value is to  !!01038
*             be retrieved from the card (i.e., the value in the PIN- !!01039
*             OFST-LOC field in the Base segment of the IDF is set to !!01040
*             1).                                                     !!01041
*                                                                     !!01042
  02 TRK1-POFST-OFST              TYPE BINARY 16.                      !01043
                                                                       !01044
*             The offset to the Diebold algorithm number or VISA PVV  !!01045
*             PIN verification key indicator in Track 1 of the card   !!01046
*             (depending on the type of PIN verification being used). !!01047
*             This offset allows for retrieval of the indicated value !!01048
*             from cards issued with this prefix.                     !!01049
*                                                                     !!01050
*             Diebold PIN verification uses algorithm numbers, and    !!01051
*             the value in this field is required if the algorithm    !!01052
*             numbers are to be retrieved from the card (i.e., the    !!01053
*             value in the ALGO-NUM-LOC field in the Base segment of  !!01054
*             the IDF is set to 2).                                   !!01055
*                                                                     !!01056
*             VISA PVV PIN verification uses PIN verification key     !!01057
*             indicators, and this field is required if the           !!01058
*             indicators are to be retrieved from the card (i.e., the !!01059
*             value in the PIN-OFST-LOC field in the Base segment of  !!01060
*             the IDF is set to 1).                                   !!01061
*                                                                     !!01062
  02 TRK1-ALGO-OFST               TYPE BINARY 16.                      !01063
                                                                       !01064
*             The offset to the expiration date on Track 1 of the     !!01065
*             card.  This offset is retrieved and checked against     !!01066
*             today's date when the institution chooses to have the   !!01067
*             expiration date on cards with this prefix checked       !!01068
*             (i.e., the value in the EXP-CHK-IND field of the Base   !!01069
*             segment of the CPF is set to 1.  A zero value is not    !!01070
*             allowed in this field if the value in the EXP-CHK-IND   !!01071
*             field is set to 1).                                     !!01072
*                                                                     !!01073
  02 TRK1-DAT-OFST                TYPE BINARY 16.                      !01074
                                                                       !01075
*             The TRACK1 offset of the card verification data.  If    !!01076
*             this field is equal to zero then card verification will !!01077
*             not be performed by the Authorization processes.  This  !!01078
*             field is only used if the CV-KEYA-GRP field is not equal!!01079
*             to blanks.  Valid values are 0-99.                      !!01080
                                                                       !01081
  02 TRK1-CV-OFST                TYPE BINARY 16.                       !01082
                                                                       !01083
*             The TRACK1 offset of the service code data.  If this    !!01084
*             field is equal to zero then card verification will not  !!01085
*             be performed by the Authorization processes.  This field!!01086
*             is only used if the CV-KEYA-GRP field is not equal to   !!01087
*             blanks.  Valid values are 0-99.                         !!01088
                                                                       !01089
  02 TRK1-SC-OFST                TYPE BINARY 16.                       !01090
                                                                       !01091
                                                                       !01091B00
*             Indicates which track (Track 1 or Track 2)               !01091B01
*             is preferred for obtaining track data.  A value of 0     !01091B02
*             indicates that Track 2 is preferred.  A value of 1       !01091B03
*             indicates that Track 1 is preferred.  Required Field.    !01091B04
*             Default value is 0.                                      !01091B05
                                                                       !01091B06
  02 TRK-PREF                    PIC X(1).                             !01091B07
                                                                       !01091B08
*             Indicates what action to take when the card lengths do   !01091B09
*             not match the expected values for Track 1 or Track 2     !01091B0A
*             Default value is 0.                                      !01091B0B
*                 0 = Continue Processing                              !01091B0C
*                 1 = Deny the transaction and return the card         !01091B0D
*                 2 = Deny the transaction and retain the card         !01091B0E
*                 3 = Refer the transaction (POS only)                 !01091B0F
                                                                       !01091V00
*                 3 = Deny and return the card (ATM only)              !01091V01
                                                                       !01091V02
                                                                       !01091B0G
  02 BAD-TRK-DISP                PIC X(1).                             !01091B0H
                                                                       !01091B0I
*             Indicates the minimum length of the Track 1 data on      !01091B0J
*             the card. Default value is 0.                            !01091B0K
                                                                       !01091B0L
  02 TRK1-MIN-LGTH               TYPE BINARY 16.                       !01091B0M
                                                                       !01091B0N
*             Indicates the maximum length of the Track 1 data on      !01091B0O
*             the card. Default value is 0.                            !01091B0P
*                                                                      !01091B0Q
                                                                       !01091B0R
  02 TRK1-MAX-LGTH               TYPE BINARY 16.                       !01091B0S
                                                                       !01091B0T
*             Indicates the minimum length of the Track 2 data on      !01091B0U
*             the card.  Default value is 0.                           !01091B0V
                                                                       !01091B0W
  02 TRK2-MIN-LGTH               TYPE BINARY 16.                       !01091B0X
                                                                       !01091B0Y
*             Indicates the maximum length of the Track 2 data on      !01091B0Z
*             the card.  Default value is 0.                           !01091B10
                                                                       !01091B11
  02 TRK2-MAX-LGTH               TYPE BINARY 16.                       !01091B12
                                                                       !01091B13
                                                                       !01092B00
                                                                       !01092J00
*             Indicates whether service code checking should be        !01092J01
*             performed on this prefix.                                !01092J02
                                                                       !01092J03
  02 SRVC-CDE-CHK-FLG            PIC X.                                !01092J04
                                                                       !01092J05
*             Indicateswhether the EFFECTIVE-DAT field in the CAF      !01092J06
*             should be checked when processing a transaction.         !01092J07
                                                                       !01092J08
  02 EFFECTIVE-DAT-CHK-IND       PIC X.                                !01092J09
                                                                       !01092J0A
*             Track 3 format field.                                    !01092J0B
                                                                       !01092J0C
  02 TRK3-FRMT                   PIC X(2).                             !01092J0D
                                                                       !01092J0E
                                                                       !01092J0F
                                                                       !01092J0G
*             The offset of the Diebold algorithm number or VISA PVV   !01092J0H
*             PIN verification key indicator in Track 3 of the card    !01092J0I
*             (depending on the type of PIN verification being used).  !01092J0J
*             This offset allows for retrieval of the indicated value  !01092J0K
*             from cards issued with this prefix.                      !01092J0L
*                                                                      !01092J0M
*             Diebold PIN verification uses algorithm numbers, and     !01092J0N
*             the value in this field is required if the algorithm     !01092J0O
*             numbers are to be retrieved from the card (i.e., the     !01092J0P
*             value in the ALGO-NUM-LOC field in the Base segment of   !01092J0Q
*             the IDF is set to 2).                                    !01092J0R
*                                                                      !01092J0S
*             VISA PVV PIN verification uses PIN verification key      !01092J0T
*             indicators, and this field is required if the            !01092J0U
*             indicators are to be retrieved from the card (i.e., the  !01092J0V
*             value in the PIN-OFST-LOC field in the Base segment of   !01092J0W
*             the IDF is set to 1).                                    !01092J0X
                                                                       !01092J0Y
  02 TRK3-ALGO-OFST              TYPE BINARY 16.                       !01092J0Z
                                                                       !01092J10
*             The offset of the card verification data on Track 3      !01092J11
*             of the card.                                             !01092J12
                                                                       !01092J13
  02 TRK3-CV-OFST                TYPE BINARY 16.                       !01092J14
                                                                       !01092J15
*             The offset of the expiration date on Track 3 of the      !01092J16
*             card.  This offset is retrieved and checked against      !01092J17
*             today's date when the institution chooses to have the    !01092J18
*             expiration date checked on cards with this prefix        !01092J19
*             (i.e., the value in the EXP-CHK-IND field of the Base    !01092J1A
*             segment of the CPF is set to 1.  A zero value is not     !01092J1B
*             allowed in this field if the value in the EXP-CHK-IND    !01092J1C
*             field is set to 1).                                      !01092J1D
                                                                       !01092J1E
  02 TRK3-DAT-OFST               TYPE BINARY 16.                       !01092J1F
                                                                       !01092J1G
*             The offset of the member number on Track 3 of the card.  !01092J1H
*             This offset allows for retrieval of the member number    !01092J1I
*             from cards issued with this prefix.                      !01092J1J
                                                                       !01092J1K
  02 TRK3-MBR-OFST               TYPE BINARY 16.                       !01092J1L
                                                                       !01092J1M
*             The offset of the PIN offset, PIN verification value,    !01092J1N
*             or PIN verification number on Track 3 of the card        !01092J1O
*             (depending on the type of PIN verification being used).  !01092J1P
*             This offset allows for retrieval of the indicated value  !01092J1Q
*             from cards issued with this prefix.                      !01092J1R
*                                                                      !01092J1S
*             DES (IBM 3624) and Diebold PIN verification use PIN      !01092J1T
*             offsets, VISA PVV PIN verification uses PIN              !01092J1U
*             verification values, and Identikey PIN verification      !01092J1V
*             uses PIN verification numbers.  In all cases, the value  !01092J1W
*             in this field is required if the indicated value is to   !01092J1X
*             be retrieved from the card (i.e., the value in the PIN-  !01092J1Y
*             OFST-LOC field in the Base segment of the IDF is set to  !01092J1Z
*             1).                                                      !01092J20
                                                                       !01092J21
  02 TRK3-POFST-OFST             TYPE BINARY 16.                       !01092J22
                                                                       !01092J23
*             The offset of the service code data on Track 3 of the    !01092J24
*             card.                                                    !01092J25
                                                                       !01092J26
  02 TRK3-SC-OFST                TYPE BINARY 16.                       !01092J27
                                                                       !01092J28
*             User-defined offset for Track 3 of the the card.         !01092J29
                                                                       !01092J2A
  02 TRK3-OFST-A                 TYPE BINARY 16.                       !01092J2B
                                                                       !01092J2C
*             User-defined offset for Track 3 of the the card.         !01092J2D
                                                                       !01092J2E
  02 TRK3-OFST-B                 TYPE BINARY 16.                       !01092J2F
                                                                       !01092J2G
*             User-defined offset for Track 3 of the the card.         !01092J2H
                                                                       !01092J2I
  02 TRK3-OFST-C                 TYPE BINARY 16.                       !01092J2J
                                                                       !01092J2K
*             User-defined offset for Track 3 of the the card.         !01092J2L
                                                                       !01092J2M
  02 TRK3-OFST-D                 TYPE BINARY 16.                       !01092J2N
                                                                       !01092J2O
                                                                       !01092J2P
                                                                       !01092K00
*             The action table index is used to identify which of the  !01092K01
*             preset rules for service code checking are to be used    !01092K02
*             for this prefix.  The decision arrays which define the   !01092K03
*             action to be taken based on the service code value are   !01092K04
*             pre-configured in EDIT files, sourced in to Router/      !01092K05
*             Authorization modules at compile time.  Four different   !01092K06
*             arrays are supported to cater for the processing         !01092K07
*             requirements of different card schemes.  This field is   !01092K08
*             used to select the appropriate array for the card        !01092K09
*             scheme.  Valid values are 1 to 4.  The default value is  !01092K0A
*             1.                                                       !01092K0B
                                                                       !01092K0C
  02 SVC-CDE-ACT-TBL-IDX          PIC X.                               !01092K0D
                                                                       !01092K0E
                                                                       !01092K0F
                                                                       !01092Q00
*             This field specifies whether the expiration date on the  !01092Q01
*             card should be compared to the expiration date on the    !01092Q02
*             CPF. If this field is set to '1', and the expiration     !01092Q03
*             on the card is not present in the transaction message,   !01092Q04
*             then the expiration date on the CAF will be used in the  !01092Q05
*             expiration date check. For recurring payment             !01092Q06
*             transactions, this will be checked only if the           !01092Q07
*             RECUR-PMNT-EXP-CHK-IND field in the POS segment is set   !01092Q08
*             to '9'.                                                  !01092Q09
*             Valid values are:                                        !01092Q0A
*             0 = No expiration date comparison required (default)     !01092Q0B
*             1 = Expiration date comparison required.                 !01092Q0C
                                                                       !01092Q0D
  02 EXP-DAT-CMP                  PIC X.                               !01092Q0E
                                                                       !01092Q0F
*             This field specifies whether an expiration date is       !01092Q0G
*             required in transaction requests. Values are:            !01092Q0H
*             0 = No expiration date required (default)                !01092Q0I
*             1 = Expiration date required on all transactions         !01092Q0J
*             2 = Expiration date required for card-read transactions  !01092Q0K
*                 only.                                                !01092Q0L
                                                                       !01092Q0M
  02 EXP-DAT-REQ                  TYPE BINARY 16.                      !01092Q0N
                                                                       !01092Q0O
*             This field specifies the maximum validity period (in     !01092Q0P
*             months) for a card. Valid values are 0 - 600.  The       !01092Q0Q
*             default value is 0 (no check performed).                 !01092Q0R
                                                                       !01092Q0S
  02 EXP-DAT-PRD                  TYPE BINARY 16.                      !01092Q0T
                                                                       !01092Q0U
*             The RTRN-BAL field signifies whether account balances    !01092Q0V
*             should be returned on designated transactions.           !01092Q0W
*             Valid values are:                                        !01092Q0X
*             '0' = Balances are not returned for purchase             !01092Q0Y
*                   transactions (default )                            !01092Q0Z
*             '1' = Balances are returned for purchase transactions    !01092Q0a
*             '2' = Balances are returned for purchase transactions,   !01092Q0b
*                   based on terminal configuration                    !01092Q0c
                                                                       !01092Q0d
  02 RTRN-BAL                     PIC X.                               !01092Q0e
                                                                       !01092S00
                                                                       !01092S01
                                                                       !01092T00
                                                                       !01092T01
                                                                       !01092T02
*             Specifies whether verification of the Card               !01092S05
*             Verification Data from the signature panel (CVD2) is     !01092S06
*             to be attempted on POS transactions.  It should contain  !01092S07
*             a non-zero value only when the MANUAL-CV-KEYA-GRP field  !01092S08
*             is not equal to blanks.  Valid values are:               !01092S09
*                                                                      !01092S0A
*             0 = Do not check CVD2 (default).                         !01092S0B
*             1 = Check CVD2 when present in manually entered          !01092S0C
*                 transactions only.                                   !01092S0D
*             2 = Check CVD2 when present in all transactions.         !01092S0E
                                                                       !01092S0F
02  MANUAL-CV-CHK-TYP             PIC X.                               !01092S0G
*                                                                      !01092S0H
*             Specifies whether manually entered card verification     !01092S0I
*             digits are required for manually entered POS             !01092S0J
*             transactions.  This flag is not checked for recurring    !01092S0K
*             payment transactions because acquirers are typically     !01092S0L
*             not permitted to retain Card Verification Data.  Note    !01092S0M
*             that a transaction may still be denied, regardless of    !01092S0N
*             this flag, based on the setting of the                   !01092S0O
*             MANUAL-CRD-ENTRY-FLG in the POS segment.  Valid          !01092S0P
*             values are:                                              !01092S0Q
*                                                                      !01092S0R
*             0 = Do not deny manually entered transactions based on   !01092S0S
*                 this flag (default).                                 !01092S0T
*             1 = CVD2 is required for all manually entered            !01092S0U
*                 transactions.                                        !01092S0V
*             2 = CVD2 is required for card not present                !01092S0W
*                 transactions.                                        !01092S0X
                                                                       !01092S0Y
02  MANUAL-CV-REQ                 PIC X.                               !01092S0Z
                                                                       !01092S0a
                                                                       !01092T03
*             A flag indicating when Dynamic Card Verification is to   !01092T04
*             be attempted. This field is only used if the             !01092T05
*             DCV-KEY-LOC field is not equal to blanks.                !01092T06
*             Valid values are:                                        !01092T07
*                                                                      !01092T08
*             0 = DCV disabled - do not check Dynamic Card             !01092T09
*                 Verification Data (DCVD) - default value             !01092T0A
*             1 = CVC3 checking enabled                                !01092T0B
*             2 = CVC3 checking enabled, if ATC in Base segment of     !01092T0C
*                 CAF record is zero, transaction will continue        !01092T0D
*             5 = DCVV checking enabled                                !01092T0E
*             6 = DCVV checking with split ATC in Track 1 enabled      !01092T0F
*                                                                      !01092T0G
                                                                       !01092T0H
  02 DCV-CHK-TYP                  PIC X.                               !01092T0I
                                                                       !01092T0J
*             An identifier used to show the Dynamic Card              !01092T0K
*             Verification group to which this record belongs.         !01092T0L
*             If this field is not blank, the Authorization processes  !01092T0M
*             will use the value of this field, among others, to read  !01092T0N
*             the appropriate Dynamic Card Verification record in      !01092T0O
*             TSS.  If this field contains blanks, then Dynamic        !01092T0P
*             Card Verification will not be performed.  Valid values   !01092T0Q
*             are any combination of alphanumeric characters and       !01092T0R
*             leading and trailing spaces.                             !01092T0S
                                                                       !01092T0T
  02 DCV-KEY-LOC                  TYPE KEY-LOC.                        !01092T0U
                                                                       !01092T0V
*             The offset of the Dynamic Card Verification digits on    !01092T0W
*             Track 1.  If this field is equal to zero then Dynamic    !01092T0X
*             Card Verification will not be performed by the           !01092T0Y
*             Authorization processes for transactions with Track 1.   !01092T0Z
*             This field is only used if the DCV-KEY-LOC field is not  !01092T0a
*             equal to blanks.  Valid values are 0-99.                 !01092T0b
                                                                       !01092T0c
  02 TRK1-DCVD-OFST               TYPE BINARY 16.                      !01092T0d
                                                                       !01092T0e
*             The length of the Dynamic Card Verification digits on    !01092T0f
*             Track 1.  The field is defined as PIC 9 rather than      !01092T0g
*             binary 16 to delay the need to lengthen the CPF record.  !01092T0h
*             Valid values are 0-9.                                    !01092T0i
                                                                       !01092T0j
  02 TRK1-DCVD-LGTH               PIC 9.                               !01092T0k
                                                                       !01092T0l
*             The length of the Application Transaction Counter in     !01092T0m
*             Track 1.  The field is defined as PIC 9 rather than      !01092T0n
*             binary 16 to delay the need to lengthen the CPF record.  !01092T0o
*             Valid values are 0-9.                                    !01092T0p
                                                                       !01092T0q
  02 TRK1-ATC-LGTH                PIC 9.                               !01092T0r
                                                                       !01092T0s
*             The offset of the Application Transaction Counter on     !01092T0t
*             Track 1.  If this field is equal to zero then Dynamic    !01092T0u
*             Card Verification will not be performed by the           !01092T0v
*             Authorization processes for transactions with Track 1.   !01092T0w
*             This field is used only if the DCV-KEY-LOC field is      !01092T0x
*             not equal to blanks.  Valid values are 0-99.             !01092T0y
                                                                       !01092T0z
  02 TRK1-ATC-OFST                TYPE BINARY 16.                      !01092T10
                                                                       !01092T11
*             The offset of the Unpredictable Number on Track 1. If    !01092T12
*             this field is equal to zero then Dynamic Card            !01092T13
*             Verification will not be performed by the Authorization  !01092T14
*             processes for  MasterCard transactions with Track 1.     !01092T15
*             This field is used only if the DCV-KEY-LOC field is not  !01092T16
*             equal to blanks.  Valid values are 0-99.                 !01092T17
                                                                       !01092T18
  02 TRK1-UNPREDICT-NUM-OFST      TYPE BINARY 16.                      !01092T19
                                                                       !01092T1A
*             The offset of the Dynamic Card Verification digits on    !01092T1B
*             Track 2.  If this field is equal to zero then Dynamic    !01092T1C
*             Card Verification will not be performed by the           !01092T1D
*             Authorization processes for transactions with Track 2.   !01092T1E
*             This field is only used if the DCV-KEY-LOC field is not  !01092T1F
*             equal to blanks.  Valid values are 0-99.                 !01092T1G
                                                                       !01092T1H
  02 TRK2-DCVD-OFST               TYPE BINARY 16.                      !01092T1I
                                                                       !01092T1J
*             The length of the Dynamic Card Verification digits on    !01092T1K
*             Track 2.  The field is defined as PIC 9 rather than      !01092T1L
*             binary 16 to delay the need to lengthen the CPF record.  !01092T1M
*             Valid values are 0-9.                                    !01092T1N
                                                                       !01092T1O
  02 TRK2-DCVD-LGTH               PIC 9.                               !01092T1P
                                                                       !01092T1Q
*             The length of the Application Transaction Counter in     !01092T1R
*             Track 2.  The field is defined as PIC 9 rather than      !01092T1S
*             binary 16 to delay the need to lengthen the CPF record.  !01092T1T
*             Valid values are 0-9.                                    !01092T1U
                                                                       !01092T1V
  02 TRK2-ATC-LGTH                PIC 9.                               !01092T1W
                                                                       !01092T1X
*             The offset of the Application Transaction Counter on     !01092T1Y
*             Track 2.  If this field is equal to zero then Dynamic    !01092T1Z
*             Card Verification will not be performed by the           !01092T1a
*             Authorization processes for transactions with Track 2.   !01092T1b
*             This field is used only if the DCV-KEY-LOC field is      !01092T1c
*             not equal to blanks.  Valid values are 0-99.             !01092T1d
                                                                       !01092T1e
  02 TRK2-ATC-OFST                TYPE BINARY 16.                      !01092T1f
                                                                       !01092T1g
*             The offset of the Unpredictable Number on Track 2. If    !01092T1h
*             this field is equal to zero then Dynamic Card            !01092T1i
*             Verification will not be performed by the Authorization  !01092T1j
*             processes for  MasterCard transactions with Track 2.     !01092T1k
*             This field is used only if the DCV-KEY-LOC field is not  !01092T1l
*             equal to blanks.  Valid values are 0-99.                 !01092T1m
                                                                       !01092T1n
  02 TRK2-UNPREDICT-NUM-OFST      TYPE BINARY 16.                      !01092T1o
                                                                       !01092T1p
*             A flag indicating whether a pre-screen Dynamic Card      !01092T1q
*             Verification check should be performed by the            !01092T1r
*             Authorization processes before sending a transaction to  !01092T1s
*             the host.  This field is only used if the DCV-KEY-LOC    !01092T1t
*             field is not equal to blanks.  Valid values are:         !01092T1u
*                                                                      !01092T1v
*             0 = If the host is online, the transaction request is    !01092T1w
*                 sent to the host without verifying the Dynamic Card  !01092T1x
*                 Verification Digits (DCVD).                          !01092T1y
*             1 = The Dynamic Card Verification Digits (DCVD) are      !01092T1z
*                 verified before attempting to send the transaction   !01092T20
*                 request to the host.  If the DCVD is invalid, the    !01092T21
*                 Authorization processes will perform the action      !01092T22
*                 defined within the DCV-BAD-DISP field.               !01092T23
                                                                       !01092T24
  02 PRE-SCRN-DCVD                PIC X.                               !01092T25
                                                                       !01092T26
*             The action which the Authorization processes will take   !01092T27
*             when a cardholder uses a card that contains invalid      !01092T28
*             Dynamic Card Verification data. This field is only used  !01092T29
*             if the DCV-KEY-LOC field is not equal to blanks.  Valid  !01092T2A
*             values are:                                              !01092T2B
*                                                                      !01092T2C
*             0 = Note the situation and continue                      !01092T2D
*             1 = Deny and return the card                             !01092T2E
*             2 = Deny and retain the card                             !01092T2F
*             3 = Refer the transaction (POS only)                     !01092T2G
                                                                       !01092T2H
  02 DCV-BAD-DISP                 PIC X.                               !01092T2I
                                                                       !01092T2J
*             This field determines whether the Application            !01092T2K
*             Transaction Counter (ATC) check is to be performed.      !01092T2L
*             Setting this field causes the ATC fields on the Base     !01092T2M
*             segment of the CAF to be updated.                        !01092T2N
*             Valid values are:                                        !01092T2O
*                                                                      !01092T2P
*             0 = Do not perform ATC check                             !01092T2Q
*             1 = Perform ATC check on EMV transactions                !01092T2R
*             2 = Perform ATC check on contactless magnetic stripe     !01092T2S
*                 transactions                                         !01092T2T
*             3 = Perform ATC check on EMV and contactless magnetic    !01092T2U
*                 stripe transactions                                  !01092T2V
                                                                       !01092T2W
  02 ATC-CHK                      PIC X.                               !01092T2X
                                                                       !01092T2Y
*             A flag indicating whether a pre-screen Application       !01092T2Z
*             Transaction Counter (ATC) check should be performed by   !01092T2a
*             the Authorization processes before sending a             !01092T2b
*             transaction to the host.  Valid values are:              !01092T2c
*                                                                      !01092T2d
*             0 = If the host is online, the transaction request is    !01092T2e
*                 sent to the host without verifying the Application   !01092T2f
*                 Transaction Counter (ATC).                           !01092T2g
*             1 = The Application Transaction Counter (ATC) is         !01092T2h
*                 verified according the the setting for ATC-CHK       !01092T2i
*                 before attempting to send the transaction            !01092T2j
*                 request to the host.  If the ATC is invalid, the     !01092T2k
*                 Authorization processes will perform the action      !01092T2l
*                 defined within the ATC-BAD-DISP field.               !01092T2m
                                                                       !01092T2n
 02 PRE-SCRN-ATC                  PIC X.                               !01092T2o
*                                                                      !01092T2p
*             The action which the Authorization processes will take   !01092T2q
*             when an ATC check fails.  Valid values are:              !01092T2r
*                                                                      !01092T2s
*             1 = Deny and return the card                             !01092T2t
*             2 = Deny and retain the card                             !01092T2u
*             3 = Refer the transaction (POS only)                     !01092T2v
*                                                                      !01092T2w
                                                                       !01092T2x
  02 ATC-BAD-DISP                 PIC X.                               !01092T2y
                                                                       !01092T2z
                                                                       !01092T30
                                                                       !01092U00
*             This user field was added for even byte alignment and    !01092U01
*             can be used.                                             !01092U02
                                                                       !01092U03
  02 USER-FLD-ACI1                PIC X(1).                            !01092U04
                                                                       !01092U05
*             The Application Transaction Counter Limit                !01092U06
                                                                       !01092U07
  02 ATC-LMT                      TYPE BINARY 16.                      !01092U08
                                                                       !01092U09
                                                                       !01092Q0f
*             USER-FLD-ACI is reserved for future BASE24 product use   !01092J2Q
*             only. The designation of "product use only" provides     !01092J2R
*             ACI with the ability to deplete the number of bytes      !01092J2S
*             available within USER-FLD-ACI as product enhancements    !01092J2T
*             are introduced.  When product enhancements require the   !01092J2U
*             addition of new fields within this file, the procedure   !01092J2V
*             to be followed is to deplete bytes from USER-FLD-ACI     !01092J2W
*             and use that number of bytes to define new fields. The   !01092J2X
*             new field definition(s) should precede the               !01092J2Y
*             USER-FLD-ACI field.                                      !01092J2Z
                                                                       !01092J30
                                                                       !01092T31
                                                                       !01092W00
  02 USER-FLD-ACI                 PIC X(20).                           !01092W01
                                                                       !01092W02
                                                                       !01092W03
                                                                       !01092W04
                                                                       !01092W05
                                                                       !01092U0G
                                                                       !01092U0H
                                                                       !01092U0I
                                                                       !01092T33
                                                                       !01092T34
                                                                       !01092T35
                                                                       !01092T36
                                                                       !01092J32
*                                                                      !01092J33
*             USER-FLD-REGN is reserved for ACI regional use only.     !01092J34
*             Only ACI regions are allowed to use USER-FLD-REGN space. !01092J35
                                                                       !01092J36
                                                                       !01092W06
  02 USER-FLD-REGN                PIC X(30).                           !01092W07
                                                                       !01092W08
                                                                       !01092W09
                                                                       !01092W0A
*                                                                      !01092J38
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !01092J39
*             Only customers are allowed to use USER-FLD-CUST space.   !01092J3A
                                                                       !01092J3B
  02 USER-FLD-CUST                PIC X(50).                           !01092J3C
                                                                       !01092J3D
                                                                       !01092B01
                                                                       !01092B02
END                                                                    !01096
                                                                       !01097
?page "ATMCPF - ATM CPF Segment"
?section ATMCPF
                                                                       !01102
*             The following fields make up the ATM segment of the     !!01103
*             Card Prefix File (CPF).                                 !!01104
                                                                       !01105
DEFINITION ATMCPF.                                                     !01106
                                                                       !01107
                                                                       !01108
*                                                                     !!01109
  02 SEG-LGTH                     TYPE *.                              !01110
                                                                       !01111
                                                                       !01112
*                                                                     !!01113
*             The maximum number of times a card can be used to make  !!01114
*             cash disbursements via BASE24-atm during a single usage !!01115
*             accumulation period.                                    !!01116
                                                                       !01116W00
*             For a Bulk Check transaction, each check will count      !01116W01
*             as a usage.                                              !01116W02
                                                                       !01116W03
*                                                                     !!01117
 02 USE-LMT                      TYPE BINARY 16.                       !01118
                                                                       !01119
                                                                       !01120
*                                                                     !!01121
*             The values in the following fields can be used to limit !!01122
*             the amount of cash disbursements allowed via BASE24-atm !!01123
*             during a single usage accumulation period.              !!01124
*                                                                     !!01125
 02 GRP-LMT.                                                           !01126
                                                                       !01127
                                                                       !01128
*                                                                     !!01129
*             The maximum amount of cash withdrawals allowed against  !!01130
*             non-credit accounts via BASE24-atm.                     !!01131
*                                                                     !!01132
*             This amount cannot exceed either of the following field !!01133
*             amounts:                                                !!01134
*                                                                     !!01135
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.  !!01136
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01137
*                                                                     !!01138
    04 TTL-WDL-LMT                TYPE BINARY 64.                      !01139
                                                                       !01140
                                                                       !01141
*                                                                     !!01142
*             The maximum amount of cash withdrawals allowed offline  !!01143
*             against non-credit accounts via BASE24-atm.             !!01144
*                                                                     !!01145
*             The amount in this field is only used with              !!01146
*             Authorization level 3 (online/offline), where the       !!01147
*             authorizing host is unavailable and BASE24 performs     !!01148
*             stand-in authorization.                                 !!01149
*                                                                     !!01150
*             This amount cannot exceed any of the following field    !!01151
*             amounts:                                                !!01152
*                                                                     !!01153
*             o  GRP-LMT.TTL-WDL-LMT in this segment of the CPF.      !!01154
*             o  GRP-LMT.OFFL-WDL-LMT in the Base segment of the CPF. !!01155
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.  !!01156
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the     !!01157
*                CPF.                                                 !!01158
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01159
*                                                                     !!01160
    04 OFFL-WDL-LMT               TYPE BINARY 64.                      !01161
                                                                       !01162
                                                                       !01163
*                                                                     !!01164
*             The maximum amount of cash advances allowed against     !!01165
*             credit accounts via BASE24-atm.                         !!01166
*                                                                     !!01167
*             This amount cannot exceed either of the following field !!01168
*             amounts:                                                !!01169
*                                                                     !!01170
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.  !!01171
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01172
*                                                                     !!01173
    04 TTL-CCA-LMT                TYPE BINARY 64.                      !01174
                                                                       !01175
                                                                       !01176
*                                                                     !!01177
*             The maximum amount of cash advances allowed offline     !!01178
*             against credit accounts via BASE24-atm.                 !!01179
*                                                                     !!01180
*             The amount in this field is only used with              !!01181
*             Authorization level 3 (online/offline), where the       !!01182
*             authorizing host is unavailable and BASE24 performs     !!01183
*             stand-in authorization.                                 !!01184
*                                                                     !!01185
*             This amount cannot exceed any of the following field    !!01186
*             amounts:                                                !!01187
*                                                                     !!01188
*             o  GRP-LMT.TTL-CCA-LMT in this segment of the CPF.      !!01189
*             o  GRP-LMT.OFFL-CCA-LMT in the Base segment of the CPF. !!01190
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.  !!01191
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the     !!01192
*                CPF.                                                 !!01193
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01194
*                                                                     !!01195
    04 OFFL-CCA-LMT               TYPE BINARY 64.                      !01196
                                                                       !01197
                                                                       !01198
*                                                                     !!01199
*             This REDEFINE allows the previous fields to be accessed !!01200
*             by index.                                               !!01201
*                                                                     !!01202
 02 WDL-LMT                       REDEFINES GRP-LMT OCCURS 4 TIMES     !01203
                                  TYPE BINARY 64.                      !01204
                                                                       !01205
                                                                       !01206
                                                                       !01207
*                                                                     !!01208
*             The minimum cash advance amount, in whole currency      !!01209
*             units (e.g., dollars), allowed by BASE24-atm.  A value  !!01210
*             of zero represents no minimum is used.  All other values!!01211
*             are in whole currency units.                            !!01212
*                                                                     !!01213
*             This amount cannot exceed the amount specified in the   !!01214
*             GRP-LMT.TTL-CCA-AMT field in this segment of the CPF or !!01215
*             a non-zero amount specified in the GRP-LMT.OFFL-CCA-AMT !!01216
*             field in this segment of the CPF.                       !!01217
*                                                                     !!01218
 02 MIN-CCA-AMT                   TYPE BINARY 32.                      !01219
                                                                       !01220
                                                                       !01221
*                                                                     !!01222
*             The standard increment, in whole currency units (e.g.,  !!01223
*             dollars), over the minimum cash advance amount required !!01224
*             by BASE24-atm.                                          !!01225
*                                                                     !!01226
*             For example, if the value in the MIN-CCA-AMT field is   !!01227
*             set to $100 and the value in the STD-CCA-INCR field is  !!01228
*             set to $50, then allowable cash advance amounts include !!01229
*             $100, $150, $200, etc.                                  !!01230
*                                                                     !!01231
 02 STD-CCA-INCR               TYPE BINARY 32.                         !01232
                                                                       !01233
                                                                       !01234
*                                                                     !!01235
*             The percentage of each deposit to use as a deposit      !!01236
*             credit, subject to the settings in the following three  !!01237
*             fields.  The value in this field is used with the       !!01238
*             Positive Balance Authorization method only.  A deposit  !!01239
*             credit is the portion of a deposit that can be added to !!01240
*             a cardholder's available funds (the value in the AVAIL- !!01241
*             BAL field in the Base segment of the Positive Balance   !!01242
*             File).  If the value in this field is set to zero, no   !!01243
*             deposit credits will be given on deposit transactions.  !!01244
*                                                                     !!01245
 02 DEP-CR-PERCENT                TYPE BINARY 16.                      !01246
                                                                       !01247
                                                                       !01248
*                                                                     !!01249
*             The maximum amount, in whole currency units (e.g.,      !!01250
*             dollars), of deposit credit allowed per deposit         !!01251
*             transaction.                                            !!01252
*                                                                     !!01253
 02 CR-PER-DEP-LMT                TYPE BINARY 64.                      !01254
                                                                       !01255
                                                                       !01256
*                                                                     !!01257
*             The maximum number of deposit credits allowed for each  !!01258
*             cardholder per usage accumulation period.               !!01259
*                                                                     !!01260
*             Once this maximum is reached, no additional deposit     !!01261
*             credits will be granted to the cardholder regardless of !!01262
*             the amounts involved.                                   !!01263
*                                                                     !!01264
 02 NUM-DEP-CR-LMT                TYPE BINARY 16.                      !01265
                                                                       !01266
                                                                       !01267
*                                                                     !!01268
*             The maximum amount, in whole currency units (e.g.,      !!01269
*             dollars), of deposit credits allowed for each           !!01270
*             cardholder per usage accumulation period.               !!01271
*                                                                     !!01272
*             Once this maximum is reached, no additional deposit     !!01273
*             credits will be added to the cardholder's available     !!01274
*             funds.                                                  !!01275
*                                                                     !!01276
 02 DEP-CR-LMT                    TYPE BINARY 64.                      !01277
                                                                       !01278
                                                                       !01278N00
*             Profile used as part of the key to read the IPCF         !01278N01
*             to determine if a the specific transaction is allowed    !01278N02
*             by the issue for cardholders with this prefix.           !01278N03
                                                                       !01278N04
                                                                       !01278N05
                                                                       !01278N06
                                                                       !01278N07
 02 ISS-TXN-PRFL                  TYPE PRFL.                           !01278I06
                                                                       !01278I07
                                                                       !01278I08
                                                                       !01278L00
*                                                                     !!01278L01
*             The percentage of each cash deposit to use as a deposit !!01278L02
*             credit, subject to the settings in the following three  !!01278L03
*             fields.  The value in this field is used with the       !!01278L04
*             Positive Balance Authorization method only.             !!01278L05
*                                                                     !!01278L06
 02 CASH-DEP-CR-PERCENT           TYPE BINARY 16.                      !01278L07
                                                                       !01278L08
                                                                       !01278L09
*                                                                     !!01278L0A
*             The maximum amount, in whole currency units (e.g.,      !!01278L0B
*             dollars), of deposit credit allowed per cash deposit    !!01278L0C
*             transaction.                                            !!01278L0D
*                                                                     !!01278L0E
 02 CR-PER-CASH-DEP-LMT           TYPE BINARY 64.                      !01278L0F
                                                                       !01278L0G
                                                                       !01278U00
*                                                                      !01278U01
*             Prefix routing groups are used to group prefixes for     !01278U02
*             different types of authorization processing.  The MTU    !01278U03
*             prefix routing group number field can be used to define  !01278U04
*             a routing group to be used for routing MTU               !01278U05
*             transactions to an interchange network for splitting     !01278U06
*             the transaction into a Funds side and a Top-up side.     !01278U07
*             It is only used for BASE24-atm acquired transactions.    !01278U08
*             If non-blank, it must be different from the EMV prefix   !01278U09
*             routing group in the EMV segment of the CPF and          !01278U0A
*             different than the default routing group for this prefix !01278U0B
*             as specified in the base segment of the CPF if the       !01278U0C
*             acquiring authorization process is also the issuing      !01278U0D
*             authorization process.                                   !01278U0E
*                                                                      !01278U0F
*             Valid values are:                                        !01278U0G
*                                                                      !01278U0H
*             0-9    A number assigned to a routing group.  Any number !01278U0I
*                    specified should have a corresponding prefix      !01278U0J
*                    group entry in the IDF.                           !01278U0K
*                                                                      !01278U0L
*             A      Any prefixes not to be included in a special      !01278U0M
*                    routing group.                                    !01278U0N
*                                                                      !01278U0O
*             Space  Use either the EMV prefix routing group in the    !01278U0P
*                    EMV segment of the CPF or the default value for   !01278U0Q
*                    this prefix as set in the base segment of the     !01278U0R
*                    CPF. A blank in this field indicates the          !01278U0S
*                    BASE24-atm authorization process is not           !01278U0T
*                    responsible for routing mobile top-up             !01278U0U
*                    transactions to an interchange network for        !01278U0V
*                    splitting the transaction                         !01278U0W
*                                                                      !01278U0X
  02 MTU-PREFIX-RTE               PIC X.                               !01278U0Y
                                                                       !01278U0Z
*                                                                     !!01279
*             This field is not used.                                 !!01280
*                                                                     !!01281
                                                                       !01282L00
                                                                       !01282U00
                                                                       !01282W00
  02 USER-FLD2                    PIC X(13).                           !01282W01
                                                                       !01282W02
                                                                       !01282W03
                                                                       !01282W04
                                                                       !01282U02
                                                                       !01282L02
                                                                       !01283
END                                                                    !01284
                                                                       !01284C00
?page "CARDCPF - BASE24-card CPF Segment"
?section CARDCPF
DEFINITION CARDCPF.                                                    !01284C05
*                                                                      !01284C06
*             This field contains the segment length.                  !01284C07
*                                                                      !01284C08
  02 SEG-LGTH                     TYPE *.                              !01284C09
                                                                       !01284C0A
  02 GEN-KEY.                                                          !01284C0B
*                                                                      !01284C0C
*             This field indicates which manufacture is used by this   !01284C0D
*             institution.                                             !01284C0E
*                                                                      !01284C0F
*                     "A - Z" =  Manufacture                           !01284C0G
*                                                                      !01284C0H
     04 VENDOR-TYPE               PIC X.                               !01284C0I
*                                                                      !01284C0J
*             This field identifies the FI associated with the PREFIX. !01284C0K
*             This is used by Authorization as a mask to search the    !01284C0L
*             FI Table to derive the full set of IDF parameters.       !01284C0M
*                                                                      !01284C0N
     04 FIID                      TYPE *.                              !01284C0O
*                                                                      !01284C0P
*             This field is used to determine which stock type is used !01284C0Q
*             by the institution so the same stock type can be grouped !01284C0R
*             together on the production tape.                         !01284C0S
*                                                                      !01284C0T
*                    "A - Z"  = Stock type                             !01284C0U
*                                                                      !01284C0V
     04 STOCK-TYPE                PIC X.                               !01284C0W
*                                                                      !01284C0X
*             This is the prefix of the card number. It is the primary !01284C0Y
*             key used to enter this file.                             !01284C0Z
*                                                                      !01284C10
     04 PREFIX.                                                        !01284C11
        06 PREFIX-FLD             TYPE BINARY 64.                      !01284C12
*                                                                      !01284C13
                                                                       !01284F00
*                                                                      !01284F01
*             This field is used to determine what length pin should   !01284F02
*             be generated for the prefix                              !01284F03
*                                                                      !01284F04
  02 PIN-LENGTH                   TYPE BINARY.                         !01284F05
                                                                       !01284F06
                                                                       !01284F07
                                                                       !01284F08
*                                                                      !01284C15
*             This field is used to determines whether a pin mailer is !01284C16
*             to be produced and which format is to be used.           !01284C17
*                                                                      !01284C18
*                   "0" - No pin mailer                                !01284C19
*                   "1" - On tandem                                    !01284C1A
*                   "2" - On production machine type 1                 !01284C1B
*                                                                      !01284C1C
  02 PIN-MAILER-CONTROL           PIC X.                               !01284C1D
*                                                                      !01284C1E
*             This field is used to determines whether a card mailer   !01284C1F
*             is to be produced and which format is to be used.        !01284C1G
*                                                                      !01284C1H
*                   "0" - No card mailer                               !01284C1I
*                   "1" - On tandem                                    !01284C1J
*                   "2" - On production machine type 1                 !01284C1K
*                                                                      !01284C1L
  02 CARD-CARRIER-CONTROL         PIC X.                               !01284C1M
*                                                                      !01284C1N
*             These fields are used as exceptions or limitations for   !01284C1O
*             production of plastic.                                   !01284C1P
*                                                                      !01284C1Q
  02 ISSUE-CONTROL.                                                    !01284C1R
*                                                                      !01284C1S
*             This field indicates which statuses will be allowed      !01284C1T
*             reissuance. Issue cards with                             !01284C1U
*                                                                      !01284C1V
*           "00" - normal status                                       !01284C1W
*           "01" - normal status and hot cards                         !01284C1X
*           "02" - normal status and inactive cards                    !01284C1Y
*           "03" - normal status and closed accounts                   !01284C1Z
*           "04" - normal status, hot, and inactive cards              !01284C20
*           "05" - normal status, hot, and closed cards                !01284C21
*           "06" - normal status, inactive, and closed cards           !01284C22
*           "07" - normal status, hot, inactive, and closed cards      !01284C23
*                                                                      !01284C24
     04 CARD-STATUS               PIC X(2).                            !01284C25
*                                                                      !01284C26
*             This field indicates the number of months between        !01284C27
*             expirations.  ( 12, 18, 24, 36, etc. ). It is used to    !01284C28
*             compute the expiration date.                             !01284C29
*                                                                      !01284C2A
  02 LENGTH-OF-ISSUE              TYPE BINARY.                         !01284C2B
*                                                                      !01284C2C
*             This field contains the number of days in advance of the !01284C2D
*             expiration date ( 30, 45, 60, etc. ) the cardholders     !01284C2E
*             records should be reviewed.                              !01284C2F
*                                                                      !01284C2G
  02 REISSUE-CYCLE                TYPE BINARY.                         !01284C2H
*                                                                      !01284C2I
*             This field contains the number of days prior to the      !01284C2J
*             expiration date ( 30, 45, etc.) that the production of   !01284C2K
*             plastic should begin.                                    !01284C2L
*                                                                      !01284C2M
  02 PRODUCTION-CYCLE             TYPE BINARY.                         !01284C2N
*                                                                      !01284C2O
*             This field indicates whether auto-purge is desired and   !01284C2P
*             if it is the value in the field is equal to the number   !01284C2Q
*             of days after the expiration date the cardholder will be !01284C2R
*             automaticly purged.                                      !01284C2S
*                                                                      !01284C2T
*                         0 - No auto-purge                            !01284C2U
*                    (nnnn) - number of days                           !01284C2V
*                                                                      !01284C2W
  02 EXPIRATION-CYCLE             TYPE BINARY.                         !01284C2X
*                                                                      !01284C2Y
*             This field indicates the type of label to be put on the  !01284C2Z
*             generation tape going to the plastic manufacture.        !01284C30
*                                                                      !01284C31
*                   "BUR" =  Burroughs Label                           !01284C32
*                   "IBM" =  IBM Label                                 !01284C33
*                   "DOS" =  DOS Label                                 !01284C34
*                   "NON" =  Unlabelled                                !01284C35
*                                                                      !01284C36
  02 TAPE-LABEL-TYP               PIC X(03).                           !01284C37
*                                                                      !01284C38
                                                                       !01284F09
*             This field is used to indicate whether random or         !01284F0A
*             natural pin generation will be used for this prefix      !01284F0B
*                                                                      !01284F0C
*                   "N"   =  Natural PIN Generation                    !01284F0D
*                   "R"   =  Random PIN Generation                     !01284F0E
*                                                                      !01284F0F
  02 PIN-GEN-TYP                  PIC X.                               !01284F0G
                                                                       !01284F0H
                                                                       !01284F0I
                                                                       !01284F0J
                                                                       !01284F0K
*                                                                      !01284C3C
*             This field is used to indicate which algoritm the        !01284C3D
*             institution uses to calculate the check digit.           !01284C3E
*                                                                      !01284C3F
  02 CHECK-DIGIT-ALGO             TYPE BINARY 16.                      !01284C3G
*                                                                      !01284C3H
*             This field contains the last account number.             !01284C3I
*                                                                      !01284C3J
  02 LAST-ACCT-NO                 PIC X(28).                           !01284C3K
                                                                       !01284C3L
  02 EMB-CNTL.                                                         !01284C3M
*                                                                      !01284C3N
*             Embossing format type                                    !01284C3O
*             A value of "01" will cause template formatting to be     !01284C3P
*             performed by CARD^FORMAT^CARD of CDUTILS. A value of     !01284C3Q
*             "02" will indicate default embossing including the text  !01284C3R
*             "EXP", WORK-MBR and CVV Value.  A value of "03" will     !01284C3S
*             indicate defualt embossing only.  Otherwise, default     !01284C3T
*             formatting including the WORK-MBR.                       !01284C3U
*                                                                      !01284C3V
*             The source of account information is also affected.      !01284C3W
*                                                                      !01284C3X
     04 EMBOSS-FORMAT-TYPE   PIC X(2).                                 !01284C3Y
*                                                                      !01284C3Z
*             A string of uppercase ALPHA characters to determine      !01284C40
*             the order, format and content of various fields.         !01284C41
*             The template strings contained in line 1 thru line 4     !01284C42
*             format will determine the embossing data.                !01284C43
*                                                                      !01284C44
*             The template character mapping follows:                  !01284C45
*                                                                      !01284C46
*             "" - text for up to 30 characters.                       !01284C47
*             B  - Branch for 4 bytes.                                 !01284C48
*             C  - Issue date today for 6 bytes.                       !01284C49
*             D  - Department for 2 bytes.                             !01284C4A
*             E  - Effective date (format: "MM/DD/YY")                 !01284C4B
*             F  - Effective date (format: "MM/YY")                    !01284C4C
*             G  - Security character for 1 byte                       !01284C4D
*             I  - Institution optional for 12 bytes.                  !01284C4E
*             J  - Primary Account Number for 20 bytes.                !01284C4F
*             K  - Primary Account Number for 20 bytes.                !01284C4G
*             L  - Primary Account Number for 20 bytes.                !01284C4H
*             M  - Member number for 3 bytes.                          !01284C4I
*             N  - Card name for 26 bytes.                             !01284C4J
*             O  - PIN offset for 16 bytes.                            !01284C4K
*             P  - PAN for 19 bytes.                                   !01284C4L
*             Q  - CVV for 3 bytes                                     !01284C4M
*             S  - Card name 2 for 26 bytes.                           !01284C4N
*             T  - Primary account type for 2 bytes.                   !01284C4O
*             U  - SAN1 acct type for 2 bytes.                         !01284C4P
*             V  - SAN2 acct type for 2 bytes.                         !01284C4Q
*             W  - Withdrawal limit for 4 bytes.                       !01284C4R
*             X  - Expiration date for 4 bytes.                        !01284C4S
*             Z  - Service Code for 3 bytes                            !01284C4T
*                                                                      !01284C4U
     04 LINE1-FORMAT         PIC X(50).                                !01284C4V
     04 LINE2-FORMAT         PIC X(50).                                !01284C4W
     04 LINE3-FORMAT         PIC X(50).                                !01284C4X
     04 LINE4-FORMAT         PIC X(50).                                !01284C4Y
*                                                                      !01284C4Z
*             Encoding template:                                       !01284C50
*                                                                      !01284C51
  02 ENCODE-CNTL.                                                      !01284C52
*                                                                      !01284C53
*             Card Encode template:                                    !01284C54
*             "01" - Template formatting                               !01284C55
*             Otherwise - a default formatting of track1 and track2.   !01284C56
*                       If track3.format-code is "01" then track3      !01284C57
*                       will get formatted from the other track3 data. !01284C58
*                                                                      !01284C59
     04 ENCODE-FORMAT-TYPE   PIC X(2).                                 !01284C5A
*                                                                      !01284C5B
     04 TRACK2-DESC-FORMAT   PIC X(50).                                !01284C5C
*                                                                      !01284C5D
     04 TRACK1-FORMAT        PIC X(70).                                !01284C5E
*                                                                      !01284C5F
     04 TRACK3.                                                        !01284C5G
        06 FORMAT-CODE       PIC X(2).                                 !01284C5H
        06 COUNTRY-CODE      PIC X(3).                                 !01284C5I
        06 CURRENCY-CODE     PIC X(3).                                 !01284C5J
        06 CURRENCY-EXPONENT PIC X(1).                                 !01284C5K
        06 CYCLE-LENGTH      PIC X(2).                                 !01284C5L
        06 RETRY-COUNT       PIC X(1).                                 !01284C5M
        06 ALGO-ID           PIC X(2).                                 !01284C5N
        06 INTRCHG-CNTL      PIC X(1).                                 !01284C5O
        06 RELAY-MARKER      PIC X(1).                                 !01284C5P
        06 ATALLA-OFFSET     PIC X(6).                                 !01284C5Q
        06 ACCT-LENGTH       PIC 9(2).                                 !01284C5R
        06 DFLT-PRI-TYP      PIC X(2).                                 !01284C5S
        06 DFLT-DDA-SAN-TYP  PIC X(2).                                 !01284C5T
        06 DFLT-SAV-SAN-TYP  PIC X(2).                                 !01284C5U
        06 DFLT-NO-SAN-TYP   PIC X(2).                                 !01284C5V
                                                                       !01284H00
  02 INDENT-CNTL.                                                      !01284H01
*                                                                      !01284H02
*             Embossing format type                                    !01284H03
*             A value of "01" will cause template formatting to be     !01284H04
*             performed by CARD^FORMAT^CARD of CTUTILS. A value of     !01284H05
*             "02" will indicate default indent printing, which        !01284H06
*             formats the CVV2 value only.                             !01284H07
*                                                                      !01284H08
     04 INDENT-FORMAT-TYPE   PIC X(2).                                 !01284H09
*                                                                      !01284H0A
*             A string of uppercase ALPHA characters to determine      !01284H0B
*             the order, format and content of various fields.         !01284H0C
*             The template strings contained indent format will        !01284H0D
*             determine the indent print data.                         !01284H0E
*                                                                      !01284H0F
*             The template character mapping follows:                  !01284H0G
*                                                                      !01284H0H
*             "" - text for up to 30 characters.                       !01284H0I
*             B  - Branch for 4 bytes.                                 !01284H0J
*             C  - Issue date today for 6 bytes.                       !01284H0K
*             D  - Department for 2 bytes.                             !01284H0L
*             E  - Effective date (format: "MM/DD/YY")                 !01284H0M
*             F  - Effective date (format: "MM/YY")                    !01284H0N
*             G  - Security character for 1 byte                       !01284H0O
*             I  - Institution optional for 12 bytes.                  !01284H0P
*             J  - Primary Account Number for 20 bytes.                !01284H0Q
*             K  - Primary Account Number for 20 bytes.                !01284H0R
*             L  - Primary Account Number for 20 bytes.                !01284H0S
*             M  - Member number for 3 bytes.                          !01284H0T
*             N  - Card name for 26 bytes.                             !01284H0U
*             O  - PIN offset for 16 bytes.                            !01284H0V
*             P  - PAN for 19 bytes.                                   !01284H0W
*             Q  - CVV for 3 bytes                                     !01284H0X
*             R  - CVV2 for 3 bytes                                    !01284H0Y
*             S  - Card name 2 for 26 bytes.                           !01284H0Z
*             T  - Primary account type for 2 bytes.                   !01284H10
*             U  - SAN1 acct type for 2 bytes.                         !01284H11
*             V  - SAN2 acct type for 2 bytes.                         !01284H12
*             W  - Withdrawal limit for 4 bytes.                       !01284H13
*             X  - Expiration date for 4 bytes.                        !01284H14
*             Z  - Service Code for 3 bytes                            !01284H15
*                                                                      !01284H16
     04 INDENT-FORMAT         PIC X(50).                               !01284H17
                                                                       !01284H18
                                                                       !01284C5W
END                                                                    !01284C5X
                                                                       !01284C5Y
                                                                       !01285
                                                                       !01285E00
                                                                       !01285J00
?page "EMVCPF - EMV CPF Segment"
?section EMVCPF
                                                                       !01285J05
*             The following fields make up the EMV segment of the      !01285J06
*             Card Prefix File (CPF).                                  !01285J07
                                                                       !01285J08
DEFINITION EMVCPF.                                                     !01285J09
                                                                       !01285J0A
                                                                       !01285J0B
*             This field defines the length of the EMV segment.        !01285J0C
                                                                       !01285J0D
 02 SEG-LGTH                      TYPE *.                              !01285J0E
                                                                       !01285J0F
*             This field is the KEYI Group used to access the          !01285J0G
                                                                       !01285U00
                                                                       !01285U01
                                                                       !01285U02
                                                                       !01285U03
*             KEYI file.                                               !01285U04
                                                                       !01285U05
                                                                       !01285U06
 02 KEYI-GRP                      PIC X(16).                           !01285U07
*             This field is the CAP Profile, used by TSS to retrieve   !01285U08
*             the static data required to validate the CAP Token. A    !01285U09
*             value of spaces indicates that CAP Token verification    !01285U0A
*             is not supported for this prefix.                        !01285U0B
                                                                       !01285U0C
 02 CAP-GRP                       PIC X(4).                            !01285U0D
                                                                       !01285U0E
*             This field is the CAP ATC Update field, identifying      !01285U0F
*             the CAF ATC field to update in CAP Token verification    !01285U0G
*             transactions. Valid values are:                          !01285U0H
*                                                                      !01285U0I
*             0 = Update the CAP ATC field.                            !01285U0J
*             1 = Update the ATC field used in EMV processing.         !01285U0K
                                                                       !01285U0L
 02 CAP-ATC-UPDT                  PIC X.                               !01285U0M
                                                                       !01285U0N
*             This field is the Host CAP Token Validation Option,      !01285U0O
*             identifying whether or not CAP Token verification        !01285U0P
*             transactions are sent to the host. Valid values are:     !01285U0Q
*                                                                      !01285U0R
*             0 = Do not send to host. Authorize and log to PTLF.      !01285U0S
*             1 = Send to host. Authorize if host is down.             !01285U0T
*             2 = Send to host. Deny if host is down.                  !01285U0U
                                                                       !01285U0V
 02 HOST-CAP-TKN-OPT              PIC X.                               !01285U0W
                                                                       !01285U0X
*             This field is the Bad CAP Token Validation Limit,        !01285U0Y
*             used to specify the maximum number of consecutive        !01285U0Z
*             failed CAP Token validation attempts permitted.          !01285U0a
*             A value of zero disables the limit check.                !01285U0b
*             Valid values are 0 to 9999.                              !01285U0c
                                                                       !01285U0d
 02 BAD-CAP-TKN-CHK-LMT           TYPE BINARY 16.                      !01285U0e
                                                                       !01285U0f
                                                                       !01285V00
*             This field specifies the template tag to be used when    !01285V01
*             an issuer script is sent to the card. Valid values are:  !01285V02
*                                                                      !01285V03
*             0 - Use LCONF value                                      !01285V04
*             1 - 71                                                   !01285V05
*             2 - 72                                                   !01285V06
                                                                       !01285V07
 02 SCRIPT-TPLT-TAG               PIC X.                               !01285V08
                                                                       !01285V09
*             This field specifies the MAC length to be used when      !01285V0A
*             an issuer script is sent to the card. Valid values are:  !01285V0B
*                                                                      !01285V0C
*             0 - Use LCONF value                                      !01285V0D
*             4 - 4 bytes                                              !01285V0E
*             6 - 6 bytes                                              !01285V0F
*             8 - 8 bytes                                              !01285V0G
                                                                       !01285V0H
 02 SCRIPT-MAC-LGTH               PIC X.                               !01285V0I
                                                                       !01285V0J
*             The following 3 fields specify how the card should update
*             the offline counters when processing a response message  !01285V0M
*             received from the issuer. These fields are used only     !01285V0N
*             for M/Chip 4.0 and CCD cards. Valid values are:          !01285V0O
*                                                                      !01285V0P
*             0 - Do not update offline counters                       !01285V0Q
*             1 - Set counters to upper offline limits                 !01285V0R
*             2 - Reset counters to zero                               !01285V0S
*             3 - Add transaction to counter                           !01285V0T
                                                                       !01285V0U
 02 UPDATE-CNTRS.                                                      !01285V0V
                                                                       !01285V0W
*             This value is returned in response to an approved        !01285V0X
*             financial transaction.                                   !01285V0Y
                                                                       !01285V0Z
     04 APPRV-FNCL-TXN            PIC X.                               !01285V0a
                                                                       !01285V0b
*             This value is returned in response to an approved        !01285V0c
*             non-financial transaction.                               !01285V0d
                                                                       !01285V0e
     04 APPRV-NON-FNCL-TXN        PIC X.                               !01285V0f
                                                                       !01285V0g
                                                                       !01285V0h
*             This value is returned in response to a declined         !01285V0i
*             transaction.                                             !01285V0j
                                                                       !01285V0k
     04 DCLN-TXN                  PIC X.                               !01285V0l
                                                                       !01285V0m
*             This field indicates whether the issuer is prepared to   !01285V0n
*             accept delayed authorizations. Valid values are:         !01285V0o
*                                                                      !01285V0p
*             Y = Yes, the issuer accepts delayed authorizations.      !01285V0q
*             N = No, the issuer does not accept delayed auths.        !01285V0r
                                                                       !01285V0s
 02 DELAYED-AUTH-SPPT             PIC X.                               !01285V0t
                                                                       !01285V0u
                                                                       !01285X00
*             This field determines the action performed by the POS    !01285X01
*             Router/Authorization process for manually-entered        !01285X02
*             EMV fallback transactions.  Valid values are:            !01285X03
*                                                                      !01285X04
*             0 = Continue processing the transaction (default value)  !01285X05
*             1 = Decline transaction and return the card              !01285X06
*             3 = Refer the transaction (POS only)                     !01285X07
                                                                       !01285X08
 02 FALLBACK-ACT-MANUAL           PIC X.                               !01285X09
                                                                       !01285X0A
                                                                       !01285V0v
*             This field is reserved for future BASE24 product         !01285U0g
*             use only.                                                !01285U0h
                                                                       !01285U0i
                                                                       !01285V0w
                                                                       !01285X0B
 02 USER-FLD-ACI                  PIC X.                               !01285X0C
                                                                       !01285X0D
                                                                       !01285V0y
                                                                       !01285V0z
                                                                       !01285V10
                                                                       !01285U0k
                                                                       !01285U0l
                                                                       !01285U0m
*             This field determines whether the Authorization process  !01285J0L
*             should perform any EMV Authorization.  If this field is  !01285J0M
*             N, no EMV checkin of any type will be performed.  Valid  !01285J0N
*             values are:                                              !01285J0O
*                                                                      !01285J0P
*             N = Do not perform EMV Authorization                     !01285J0Q
*             Y = Perform EMV Authorization                            !01285J0R
                                                                       !01285J0S
 02 EMV-CHK                       PIC X.                               !01285J0T
                                                                       !01285J0U
*             This field determines the action to be performed if the  !01285J0V
*             ARQC has not been validated. Valid values are:           !01285J0W
*                                                                      !01285J0X
*             0 = Do not perform CAM check                             !01285J0Y
*             1 = Perform CAM check only if CAM data is reliable       !01285J0Z
*             2 = Perform CAM check if CAM data is reliable            !01285J10
*                 or unreliable                                        !01285J11
                                                                       !01285P00
*             9 = Downgrade the transaction from EMV to magnetic       !01285P01
*                 stripe                                               !01285P02
                                                                       !01285P03
                                                                       !01285J12
 02 CAM-CHK-TYP                   PIC X.                               !01285J13
                                                                       !01285J14
*             This field determines the action to be performed by the  !01285J15
*             Authorization process if the CAM verification fails and  !01285J16
*             CAM data is reliable.  Valid values are:                 !01285J17
*                                                                      !01285J18
*             0 = Continue processing the transaction                  !01285J19
*             1 = Decline transaction and return card (default value)  !01285J1A
*             2 = Decline transaction and retain card                  !01285J1B
*             3 = Refer the transaction (POS only)                     !01285J1C
                                                                       !01285V11
*             3 = Deny and return the card (ATM only)                  !01285V12
                                                                       !01285V13
                                                                       !01285O00
                                                                       !01285P04
                                                                       !01285P05
                                                                       !01285P06
                                                                       !01285O03
                                                                       !01285J1D
  02 BAD-CAM-ACT-RELIABLE         PIC X.                               !01285J1E
                                                                       !01285J1F
*             This field determines the action to be performed by the  !01285J1G
*             Authorization process if the CAM verification fails and  !01285J1H
*             CAM data is unreliable.  Valid values are:               !01285J1I
*                                                                      !01285J1J
*             0 = Continue processing the transaction                  !01285J1K
*             1 = Decline transaction and return card (default value)  !01285J1L
*             2 = Decline transaction and retain card                  !01285J1M
*             3 = Refer the transaction (POS only)                     !01285J1N
                                                                       !01285V14
*             3 = Deny and return the card (ATM only)                  !01285V15
                                                                       !01285V16
                                                                       !01285J1O
  02 BAD-CAM-ACT-UNRELIABLE       PIC X.                               !01285J1P
                                                                       !01285J1Q
*             This field determines whether the Authorization process  !01285J1R
*             should perform an EMV pre-screen check. Valid values are:
*                                                                      !01285J1U
*             N = Do not perform pre-screen check (default value)      !01285J1V
*             Y = Perform pre-screen check                             !01285J1W
                                                                       !01285J1X
 02 PRE-SCRN-CHK                  PIC X.                               !01285J1Y
                                                                       !01285J1Z
                                                                       !01285T06
*             This field determines whether the Application            !01285T07
*             Transaction Counter (ATC) check is to be performed.      !01285T08
*             Setting this field causes the ATC fields on the EMV      !01285T09
*             segment of the CAF to be updated.                        !01285T0A
*             Valid values are:                                        !01285T0B
*                                                                      !01285T0C
*             0 = Do not perform ATC check                             !01285T0D
*             1 = Perform ATC check on EMV transactions.               !01285T0E
*             9 = Refer to ATC-CHK field in Base segment, Screen 3.    !01285T0F
*                 Selecting this value means the ATC value on the      !01285T0G
*                 EMV segment will not be maintained.  It also means   !01285T0H
*                 the PRE-SCRN-ATC and ATC-BAD-DISP flags on the       !01285T0I
*                 Base segment will be used for all transactions.      !01285T0J
                                                                       !01285T0K
                                                                       !01285T0L
                                                                       !01285T0M
                                                                       !01285T0N
                                                                       !01285J25
 02 ATC-CHK                       PIC X.                               !01285J26
                                                                       !01285J27
*             A user defined indicator identifying the Issuer of the   !01285J28
*             EMV card with this prefix. Values indicating on-us cards !01285J29
*             fall within a certain range, as do those indicating      !01285J2A
*             not-on-us cards. The range of values is:                 !01285J2B
*                                                                      !01285J2C
*             00 to 29 = On-us - has an associated IDF record          !01285J2D
*             30 to 99 = Not-on-us - has no associated IDF record      !01285J2E
                                                                       !01285J2F
 02 EMV-ISS                       PIC X(2).                            !01285J2G
                                                                       !01285J2H
*             A text description of the EMV card issuer. The user      !01285J2I
*             must provide an appropriate description in this field.   !01285J2J
                                                                       !01285J2K
 02 EMV-ISS-DESCR                 PIC X(10).                           !01285J2L
                                                                       !01285J2M
                                                                       !01285T0O
*             The action table index is used to identify which of the  !01285T0P
*             preset rules for status field processing are to be used  !01285T0Q
*             for this Card scheme.  The decision arrays which define  !01285T0R
*             the action to be taken based on the CVR (Card            !01285T0S
*             Verification Results) and TVR (Terminal Verification     !01285T0T
*             Results) are pre-configured in EDIT files (CVRTBLS and   !01285T0U
*             TVRTBLS), sourced in to the EMV authorization modules at !01285T0V
*             compile time. Six different arrays are supported to      !01285T0W
*             cater for the processing requirements of different card  !01285T0X
*             schemes.  This field is used to select the appropriate   !01285T0Y
*             array for the card scheme, when the "alternate" Issuer   !01285T0Z
*             Application Data format is detected on the card.         !01285T0a
*             Valid values are 1 to 6.                                 !01285T0b
*                                                                      !01285T0c
 02 ACTION-TABLE-INDEX-ALT        PIC X.                               !01285T0d
                                                                       !01285T0e
 02 USER-FLD2                     REDEFINES ACTION-TABLE-INDEX-ALT     !01285T0f
                                  PIC X.                               !01285T0g
                                                                       !01285T0h
                                                                       !01285T0i
                                                                       !01285T0j
                                                                       !01285T0k
                                                                       !01285J2R
*             This field determines whether a fallback transaction     !01285J2S
*             must be forced online to a Host or issuer system for     !01285J2T
*             authorization. (Used only for POS level 3 transactions.) !01285J2U
*             Valid values are:                                        !01285J2V
*                                                                      !01285J2W
*             N = Do not force online                                  !01285J2X
*             Y = Force online                                         !01285J2Y
                                                                       !01285J2Z
 02 FORCE-ONL-FALLBACK-CHK        PIC X.                               !01285J30
                                                                       !01285J31
*             The action table index is used to identify which of the  !01285J32
*             preset rules for status field processing are to be used  !01285J33
*             for this Card scheme.  The decision arrays which define  !01285J34
*             the action to be taken based on the CVR (Card            !01285J35
*             Verification Results) and TVR (Terminal Verification     !01285J36
*             Results) are pre-configured in EDIT files (CVRTBLS and   !01285J37
*             TVRTBLS), sourced in to the EMV authorization modules at !01285J38
                                                                       !01285T0l
*             compile time.  Six different arrays are supported to     !01285T0m
                                                                       !01285T0n
*             cater for the processing requirements of different card  !01285J3A
*             schemes.  This field is used to select the appropriate   !01285J3B
                                                                       !01285T0o
*             array for the card scheme.  Valid values are 1 to 6.     !01285T0p
                                                                       !01285T0q
*                                                                      !01285J3D
 02 ACTION-TABLE-INDEX            PIC X.                               !01285J3E
                                                                       !01285J3F
*             Prefix routing groups are used to group prefixes for     !01285J3G
*             different types of authorization processing.  The EMV    !01285J3H
*             prefix routing group number field can be used to define a
*             routing group to be used for EMV transactions, which may !01285J3K
*             be different than the default routing group for this     !01285J3L
*             prefix as specified in the base segment of the CPF.      !01285J3M
*             Valid values are:                                        !01285J3N
*                                                                      !01285J3O
*             0-9    A number assigned to a routing group.  Any number !01285J3P
*                    specified should have a corresponding prefix group
*                    entry in the IDF.                                 !01285J3S
*                                                                      !01285J3T
*             A      Any prefixes not to be included in a special      !01285J3U
*                    routing group.                                    !01285J3V
*                                                                      !01285J3W
*             Space  Use the default value for this prefix as set in   !01285J3X
*                    the base segment of the CPF. (i.e., EMV cards will
*                    use the same routing group as non-EMV cards).     !01285J40
                                                                       !01285J41
 02 EMV-PREFIX-RTE                PIC X.                               !01285J42
                                                                       !01285J43
*             The IAD format type specifies the format of the EMV      !01285J44
*             Issuer Application Data that will be used for this card  !01285J45
*             prefix.  A number of predefined formats for Issuer       !01285J46
*             Application Data exist, as specified by the Payment      !01285J47
*             Associations (VISA and Mastercard/Europay), but Issuer   !01285J48
                                                                       !01285T0r
*             specific layouts may also be defined.  Issuer            !01285T0s
*             Application Data typically contains information which    !01285T0t
*             is used in the verification of the Application           !01285T0u
*             Cryptogram.  Valid values are:                           !01285T0v
*                                                                      !01285T0w
*             0       Unspecified (format unknown, the contents will   !01285T0x
*                     be transported as passthrough data).             !01285T0y
*                                                                      !01285T0z
*             1       Issuer Application Data Format defined by VISA   !01285T10
*                     in the VISA Integrated Circuit Card              !01285T11
*                     Specification. (Note this format is used for     !01285T12
*                     UKIS cards).                                     !01285T13
*                                                                      !01285T14
*             2       Issuer Application Data format as recommended    !01285T15
*                     for Mastercard/Europay MCPA (M/Chip 2.1 format)  !01285T16
*                     cards.                                           !01285T17
*                                                                      !01285T18
*             3       Issuer Application Data format as recommended    !01285T19
*                     for Mastercard/Europay (M/Chip 4 format) cards.  !01285T1A
*                                                                      !01285T1B
*             4       Issuer Application Data format as mandated       !01285T1C
*                     for CCD (Format 'A') cards.                      !01285T1D
*                                                                      !01285T1E
                                                                       !01285V17
*             5       Issuer Application Data format as defined        !01285V18
*                     for Amex cards.                                  !01285V19
                                                                       !01285V1A
                                                                       !01285V1B
*             6 to 9  Reserved for other national or international     !01285V1C
                                                                       !01285V1D
*                     scheme formats.                                  !01285T1G
                                                                       !01285T1H
                                                                       !01285T1I
                                                                       !01285T1J
                                                                       !01285T1K
*                                                                      !01285J4V
*             A - Z   Proprietary format defined for the Issuer.       !01285J4W
*                     (Custom formatting procedures required).         !01285J4X
                                                                       !01285J4Y
 02 EMV-ISS-APPL-DATA-FRMT        PIC X.                               !01285J4Z
                                                                       !01285J50
*             This field determines whether the Authorization process  !01285J51
*             should perform any TVR and CVR pre-screen checks.  Valid !01285J52
*             values are:                                              !01285J53
*                                                                      !01285J54
*             N = Do not perform pre-screen check                      !01285J55
*             Y = Perform pre-screen check                             !01285J56
                                                                       !01285J57
 02 PRE-SCRN-CHK-TVR-CVR          PIC X.                               !01285J58
                                                                       !01285J59
*             This field determines whether the Authorization process  !01285J5A
*             should perform a Reason Online Code pre-screen check.    !01285J5B
*             (POS transactions only). Valid values are:               !01285J5C
*                                                                      !01285J5D
*             N = Do not perform pre-screen check                      !01285J5E
*             Y = Perform pre-screen check                             !01285J5F
                                                                       !01285J5G
 02 PRE-SCRN-CHK-RSN-ONL-CDE      PIC X.                               !01285J5H
                                                                       !01285J5I
*             This field determines whether the Authorization process  !01285J5J
*             should perform an EMV fallback pre-screen check.  Valid  !01285J5K
*             values are:                                              !01285J5L
*                                                                      !01285J5M
*             N = Do not perform pre-screen check                      !01285J5N
*             Y = Perform pre-screen check                             !01285J5O
                                                                       !01285J5P
 02 PRE-SCRN-CHK-FALLBACK         PIC X.                               !01285J5Q
                                                                       !01285J5R
*             This field determines the action performed by the ATM    !01285J5S
*             Authorization process for EMV fallback transactions.     !01285J5T
*             Valid values are:                                        !01285J5U
*                                                                      !01285J5V
*             0 = Continue processing the transaction (default value)  !01285J5W
*             1 = Decline transaction and return the card              !01285J5X
                                                                       !01285J5Y
 02 FALLBACK-ACT-ATM              PIC X.                               !01285J5Z
                                                                       !01285J60
*             This field determines the action performed by the POS    !01285J61
*             Router/Authorization process for EMV fallback            !01285J62
*             transactions.  Valid values are:                         !01285J63
*                                                                      !01285J64
*             0 = Continue processing the transaction (default value)  !01285J65
*             1 = Decline transaction and return the card              !01285J66
*             3 = Refer the transaction (POS only)                     !01285J67
                                                                       !01285J68
 02 FALLBACK-ACT-POS              PIC X.                               !01285J69
                                                                       !01285M00
*             This field indicates the processing required             !01285M01
*             when a PIN-based EMV transaction contains data           !01285M02
*             indicating that the offline bad PIN try limit has been   !01285M03
*             exceeded. Valid values are:                              !01285M04
*                                                                      !01285M05
*             0 = Do not perform EMV-specific processing (current      !01285M06
*                 processing)                                          !01285M07
*             1 = Decline transaction and return the card              !01285M08
*             3 = Generate and return "PIN Unblock" script command.    !01285M09
*                                                                      !01285M0A
 02 OFFL-PIN-BAD-EXCD-ACT         PIC X.                               !01285M0B
                                                                       !01285M0C
*             This field indicates the processing required when an     !01285M0D
*             EMV PIN Change or PIN Unblock transaction is received.   !01285M0E
*             Valid values are:                                        !01285M0F
*                                                                      !01285M0G
*             0 = Do not perform EMV-specific processing (current      !01285M0H
*                 processing)                                          !01285M0I
*             1 = Generate and return a script command, and do not     !01285M0J
*                 log new PIN data                                     !01285M0K
*             2 = Generate and return a script command, and log        !01285M0L
*                 new PIN data.                                        !01285M0M
                                                                       !01285M0N
 02 OFFL-PIN-MGMT-ACT             PIC X.                               !01285M0O
                                                                       !01285R00
                                                                       !01285R01
*             This field holds a PIN block encryption key locator.     !01285R02
*             This will allow new PINs to be encrypted under a common  !01285R03
*             transport key when logged. Default value is all zeros.   !01285R04
                                                                       !01285R05
 02 TRANSPORT-KEY                 TYPE KEYI.                           !01285R06
                                                                       !01285R07
*             This field contains the EMV CVD expiration date. If a    !01285R08
*             card has an expiration date greater than or equal to     !01285R09
*             this date, an EMV CVD value is expected on the card and  !01285R0A
*             EMV CVD processing will occur. Otherwise, the card may   !01285R0B
*             not have an EMV CVD value and EMV CVD processing will    !01285R0C
*             not occur. Valid values are dates in the format YYMM.    !01285R0D
*             Default value is 0501.                                   !01285R0E
                                                                       !01285R0F
 02 EMV-CV-EFF-DAT                TYPE BINARY 16.                      !01285R0G
                                                                       !01285R0H
*             This field indicates the circumstances under which card  !01285R0I
*             verification should be performed on EMV transactions.    !01285R0J
*             Valied values are:                                       !01285R0K
*                                                                      !01285R0L
*             0 = Do not perform card verification (default value).    !01285R0M
*             1 = Perform card verification only when an ARQC is not   !01285R0N
*                 present.                                             !01285R0O
*             2 = Perform card verification when an ARQC is not        !01285R0P
*                 present or the ARQC has not been verified            !01285R0Q
*                 successfully.                                        !01285R0R
*             3 = Always perform card verification.                    !01285R0S
                                                                       !01285R0T
 02 EMV-CV-CHK-TYP                PIC X.                               !01285R0U
                                                                       !01285R0V
*             This field indicates the algorithm and data used when    !01285R0W
*             card verification is performed on EMV transactions.      !01285R0X
*             Valid values are:                                        !01285R0Y
*                                                                      !01285R0Z
                                                                       !01285W00
*             0 = Use non-EMV card verification for cards              !01285W01
*                 expiring on or after EMV-CV-EFF-DAT; use non-EMV     !01285W02
*                 card verification for cards expiring before          !01285W03
*                 EMV-CV-EFF-DAT (default value).                      !01285W04
*             1 = Replace the service code with EMV-CV-DATA for cards  !01285W05
*                 expiring on or after EMV-CV-EFF-DAT; use non-EMV     !01285W06
*                 card verification for cards expiring before          !01285W07
*                 EMV-CV-EFF-DAT.                                      !01285W08
*             2 = Use non-EMV card verification for cards              !01285W09
*                 expiring on or after EMV-CV-EFF-DAT; do not perform  !01285W0A
*                 card verification on EMV transactions for cards      !01285W0B
*                 expiring before EMV-CV-EFF-DAT.                      !01285W0C
*             3 = Replace the service code with EMV-CV-DATA for cards  !01285W0D
*                 expiring on or after EMV-CV-EFF-DAT; do not perform  !01285W0E
*                 card verification on EMV transactions for cards      !01285W0F
*                 expiring before EMV-CV-EFF-DAT.                      !01285W0G
                                                                       !01285W0H
                                                                       !01285W0I
                                                                       !01285W0J
                                                                       !01285W0K
                                                                       !01285R0c
 02 EMV-CV-CHK-MTHD               PIC X.                               !01285R0d
                                                                       !01285R0e
*             This field holds any additional data required when       !01285R0f
*             card verification is performed on EMV transactions.      !01285R0g
*             Valid values are numeric data only. Default value is     !01285R0h
*             all zeros.                                               !01285R0i
                                                                       !01285R0j
 02 EMV-CV-DATA                   PIC X(3).                            !01285R0k
                                                                       !01285R0l
                                                                       !01285M0P
                                                                       !01285T1L
*             The "alternate" IAD format specifies an alternative      !01285T1M
*             format of the EMV Issuer Application Data that will be   !01285T1N
*             used for this card prefix.  This field allows two IAD    !01285T1O
*             formats to be configured for each prefix, enabling       !01285T1P
*             cards with the same prefix to be "migrated" from one     !01285T1Q
*             format to another as they are re-issued. The actual IAD  !01285T1R
*             format on the card is detected from the transaction      !01285T1S
*             data.                                                    !01285T1T
*                                                                      !01285T1U
*             A number of predefined formats for Issuer Application    !01285T1V
*             Data exist, as specified by the Payment Associations     !01285T1W
*             (VISA and Mastercard), but Issuer specific layouts may   !01285T1X
*             also be defined.  Issuer Application Data typically      !01285T1Y
*             contains information which is used in the verification   !01285T1Z
*             of the Application Cryptogram.  Valid values are:        !01285T1a
*                                                                      !01285T1b
*             0       Unspecified (format unknown, the contents will   !01285T1c
*                     be transported as passthrough data).             !01285T1d
*                                                                      !01285T1e
*             1       Issuer Application Data Format defined by VISA   !01285T1f
*                     in the VISA Integrated Circuit Card              !01285T1g
*                     Specification. (Note this format is used for     !01285T1h
*                     UKIS cards).                                     !01285T1i
*                                                                      !01285T1j
*             2       Issuer Application Data format as recommended    !01285T1k
*                     for Mastercard/Europay MCPA (M/Chip 2.1 format)  !01285T1l
*                     cards.                                           !01285T1m
*                                                                      !01285T1n
*             3       Issuer Application Data format as recommended    !01285T1o
*                     for Mastercard/Europay (M/Chip 4 format) cards.  !01285T1p
*                                                                      !01285T1q
*             4       Issuer Application Data format as mandated       !01285T1r
*                     for CCD (Format 'A') cards.                      !01285T1s
*                                                                      !01285T1t
                                                                       !01285V1E
*             5       Issuer Application Data format as defined        !01285V1F
*                     for Amex cards.                                  !01285V1G
                                                                       !01285V1H
                                                                       !01285V1I
*             6 to 9  Reserved for other national or international     !01285V1J
                                                                       !01285V1K
*                     scheme formats.                                  !01285T1v
*                                                                      !01285T1w
*             A - Z   Proprietary format defined for the Issuer.       !01285T1x
*                     (Custom formatting procedures required).         !01285T1y
                                                                       !01285T1z
 02 EMV-ISS-APPL-DATA-FRMT-ALT    PIC X.                               !01285T20
                                                                       !01285T21
 02 USER-FLD1                     REDEFINES                            !01285T22
                                  EMV-ISS-APPL-DATA-FRMT-ALT           !01285T23
                                  PIC X.                               !01285T24
                                                                       !01285T25
                                                                       !01285W0L
*                                                                     !!01285W0M
*             This field is not used.                                 !!01285W0N
*                                                                     !!01285W0O
                                                                       !01285W0P
 02 USER-FLD3                     PIC X(30).                           !01285W0Q
                                                                       !01285W0R
                                                                       !01285W0S
                                                                       !01285W0T
                                                                       !01285W0U
                                                                       !01285T29
END                                                                    !01285E3M
?page "POSCPF - POS CPF Segment"
?section POSCPF
                                                                       !01285E3R
                                                                       !01290
*             The following fields make up the POS segment of the     !!01291
*             Card Prefix File (CPF).                                 !!01292
                                                                       !01293
DEFINITION POSCPF.                                                     !01294
                                                                       !01295
                                                                       !01296
*                                                                     !!01297
 02 SEG-LGTH                      TYPE *.                              !01298
                                                                       !01299
                                                                       !01300
*                                                                     !!01301
*             The minimum cash advance amount, in whole currency      !!01302
*             units (e.g., dollars), allowed by BASE24-pos.  A value  !!01303
*             of zero represents no minimum is used.  All other values!!01304
*             are in whole currency units.                            !!01305
*                                                                     !!01306
*             This amount cannot exceed the amount specified in the   !!01307
*             GRP-LMT.TTL-CCA-AMT field in this segment of the CPF or !!01308
*             a non-zero amount specified in the GRP-LMT.OFFL-CCA-AMT !!01309
*             field in this segment of the CPF.                       !!01310
*                                                                     !!01311
 02 MIN-CCA-AMT                   TYPE BINARY 32.                      !01312
                                                                       !01313
                                                                       !01314
*                                                                     !!01315
*             The standard increment, in whole currency units (e.g.,  !!01316
*             dollars), over the minimum cash advance amount required !!01317
*             by BASE24-pos.                                          !!01318
*                                                                     !!01319
*             For example, if the MIN-CCA-AMT field is set to $100    !!01320
*             and the STD-CCA-INCR field is set to $50, then          !!01321
*             allowable cash advance amounts include $100, $150,      !!01322
*             $200, etc.                                              !!01323
*                                                                     !!01324
 02 STD-CCA-INCR                  TYPE BINARY 32.                      !01325
                                                                       !01326
                                                                       !01327
                                                                       !01328
                                                                       !01329
*                                                                     !!01330
*             A user-defined indicator identifying the issuer of      !!01331
*             cards with this prefix.                                 !!01332
*                                                                     !!01333
*             Values indicating on-us cards must fall within a        !!01334
*             certain range, as do those indicating not-on-us cards.  !!01335
*             The range of values are:                                !!01336
*                                                                     !!01337
*             00 to 29 = On-us--Has an associated IDF record          !!01338
*             30 to 99 = Not-on-us--Has no associated IDF record      !!01339
*                                                                     !!01340
 02 ISS                           PIC X(2).                            !01341
                                                                       !01342
                                                                       !01343
*                                                                     !!01344
*             A text description of the card issuer.  The user must   !!01345
*             provide an appropriate description in this field.       !!01346
*                                                                     !!01347
02 ISS-DESCR                      PIC X(10).                           !01348
                                                                       !01349
*                                                                     !!01350
*             The values in the following fields are used to limit    !!01351
*             transaction activity via BASE24-pos during a single     !!01352
*             usage accumulation period.                              !!01353
*                                                                     !!01354
 02 GRP-LMT.                                                           !01355
                                                                       !01356
                                                                       !01357
*                                                                     !!01358
*             The maximum amount of purchases allowed against credit  !!01359
*             accounts via BASE24-pos.                                !!01360
*                                                                     !!01361
*             This limit is not associated with any of the limits in  !!01362
*             the Base segment of the CPF.                            !!01363
*                                                                     !!01364
    04 TTL-PUR-LMT                  TYPE BINARY 64.                    !01365
                                                                       !01366
                                                                       !01367
*                                                                     !!01368
*             The maximum amount of purchases allowed offline against !!01369
*             credit accounts via BASE24-pos.                         !!01370
*                                                                     !!01371
*             The amount in this field is only used with              !!01372
*             Authorization level 3 (online/offline), where the       !!01373
*             authorizing host is unavailable and BASE24 performs     !!01374
*             stand-in authorization.                                 !!01375
*                                                                     !!01376
*             This amount cannot exceed the GRP-LMT.TTL-PUR-LMT field !!01377
*             amount in this segment.  This limit is not associated   !!01378
*             with any of the limits in the Base segment of the CPF.  !!01379
*                                                                     !!01380
    04 OFFL-PUR-LMT                 TYPE BINARY 64.                    !01381
                                                                       !01382
                                                                       !01383
*                                                                     !!01384
*             The maximum amount of cash advances allowed against     !!01385
*             credit accounts via BASE24-pos.                         !!01386
*                                                                     !!01387
*             This amount cannot exceed either of the following field !!01388
*             amounts:                                                !!01389
*                                                                     !!01390
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.  !!01391
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01392
*                                                                     !!01393
    04 TTL-CCA-LMT                  TYPE BINARY 64.                    !01394
                                                                       !01395
                                                                       !01396
*                                                                     !!01397
*             The maximum amount of cash advances allowed offline     !!01398
*             against credit accounts via BASE24-pos.                 !!01399
*                                                                     !!01400
*             The amount in this field is only used with              !!01401
*             Authorization level 3 (online/offline), where the       !!01402
*             authorizing host is unavailable and BASE24 performs     !!01403
*             stand-in authorization.                                 !!01404
*                                                                     !!01405
*             This amount cannot exceed any of the following field    !!01406
*             amounts:                                                !!01407
*                                                                     !!01408
*             o  GRP-LMT.TTL-CCA-LMT in this segment of the CPF.      !!01409
*             o  GRP-LMT.OFFL-CCA-LMT in the Base segment of the CPF. !!01410
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.  !!01411
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the     !!01412
*                CPF.                                                 !!01413
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01414
*                                                                     !!01415
    04 OFFL-CCA-LMT                 TYPE BINARY 64.                    !01416
                                                                       !01417
                                                                       !01418
*                                                                     !!01419
*             The maximum amount of purchases and cash withdrawals    !!01420
*             allowed against non-credit accounts via BASE24-pos.     !!01421
*                                                                     !!01422
*             This amount cannot exceed either of the following field !!01423
*             amounts:                                                !!01424
*                                                                     !!01425
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.  !!01426
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01427
*                                                                     !!01428
    04 TTL-WDL-LMT                  TYPE BINARY 64.                    !01429
                                                                       !01430
                                                                       !01431
*                                                                     !!01432
*             The maximum amount of purchases and cash withdrawals    !!01433
*             allowed offline against non-credit accounts via BASE24- !!01434
*             pos.                                                    !!01435
*                                                                     !!01436
*             The amount in this field is only used with              !!01437
*             Authorization level 3 (online/offline), where the       !!01438
*             authorizing host is unavailable and BASE24 performs     !!01439
*             stand-in authorization.                                 !!01440
*                                                                     !!01441
*             This amount cannot exceed any of the following field    !!01442
*             amounts:                                                !!01443
*                                                                     !!01444
*             o  GRP-LMT.TTL-WDL-LMT in this segment of the CPF.      !!01445
*             o  GRP-LMT.OFFL-WDL-LMT in the Base segment of the CPF. !!01446
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.  !!01447
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the     !!01448
*                CPF.                                                 !!01449
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.     !!01450
*                                                                     !!01451
    04 OFFL-WDL-LMT                 TYPE BINARY 64.                    !01452
                                                                       !01453
                                                                       !01454
*                                                                     !!01455
*             This REDEFINE allows the previous fields to be accessed !!01456
*             by index.                                               !!01457
*                                                                     !!01458
 02 WDL-LMT                      REDEFINES GRP-LMT OCCURS 6 TIMES      !01459
                                 TYPE BINARY 64.                       !01460
                                                                       !01461
                                                                       !01462
                                                                       !01463
                                                                       !01464
*                                                                     !!01465
                                                                       !01465K00
*             The maximum amount, in whole currency units (e.g.,       !01465K01
*             dollars), per refund/replenishment, that can be          !01465K02
*             received via BASE24-pos.                                 !01465K03
                                                                       !01465K04
                                                                       !01466K00
                                                                       !01466K01
                                                                       !01466K02
*                                                                     !!01469
*             This amount cannot exceed the TTL-RFND-CR-LMT field     !!01470
*             amount in this segment.                                 !!01471
*                                                                     !!01472
*             NOTE:  This limit is checked for each transaction       !!01473
*             independently.  There is no accumulation involved.      !!01474
*                                                                     !!01475
 02 TTL-CR-PER-RFND-LMT           TYPE BINARY 64.                      !01476
                                                                       !01477
                                                                       !01478
*                                                                     !!01479
                                                                       !01479K00
*             The maximum amount, in whole currency units (e.g.,       !01479K01
*             dollars), per refund/replenishment, that can be          !01479K02
*             received offline via BASE24-pos.                         !01479K03
                                                                       !01479K04
                                                                       !01480K00
                                                                       !01480K01
                                                                       !01480K02
*                                                                     !!01483
*             The amount in this field is only used with              !!01484
*             Authorization level 3 (online/offline), where the       !!01485
*             authorizing host is unavailable and BASE24 performs     !!01486
*             stand-in authorization.                                 !!01487
*                                                                     !!01488
*             This amount cannot exceed any of the following field    !!01489
*             amounts:                                                !!01490
*                                                                     !!01491
*             o  TTL-CR-PER-RFND-LMT in this segment of the CPF.      !!01492
*             o  OFFL-RFND-CR-LMT in this segment of the CPF.         !!01493
*             o  TTL-RFND-CR-LMT in this segment of the CPF.          !!01494
*                                                                     !!01495
*             NOTE:  This limit is checked for each transaction       !!01496
*             independently.  There is no accumulation involved.      !!01497
*                                                                     !!01498
 02 OFFL-CR-PER-RFND-LMT          TYPE BINARY 64.                      !01499
                                                                       !01500
                                                                       !01501
                                                                       !01502
*                                                                     !!01503
                                                                       !01503K00
*             The maximum number of refund/replenishment credits       !01503K01
*             allowed during a single usage accumulation period.       !01503K02
                                                                       !01503K03
                                                                       !01504K00
                                                                       !01504K01
                                                                       !01504K02
*                                                                     !!01506
 02 NUM-RFND-CR-LMT               TYPE BINARY 16.                      !01507
                                                                       !01508
                                                                       !01509
                                                                       !01510
*                                                                     !!01511
                                                                       !01511K00
*             The maximum aggregate amount of refund/replenishment     !01511K01
*             credits allowed during a single usage accumulation       !01511K02
*             period.                                                  !01511K03
                                                                       !01511K04
                                                                       !01512K00
                                                                       !01512K01
                                                                       !01512K02
*                                                                     !!01514
 02 TTL-RFND-CR-LMT               TYPE BINARY 64.                      !01515
                                                                       !01516
                                                                       !01517
*                                                                     !!01518
                                                                       !01518K00
*             The maximum aggregate amount of refund/replenishment     !01518K01
*             credits allowed offline during a single usage            !01518K02
*             accumulation period.                                     !01518K03
                                                                       !01518K04
                                                                       !01519K00
                                                                       !01519K01
                                                                       !01519K02
*                                                                     !!01521
*             The amount in this field is only used with              !!01522
*             Authorization level 3 (online/offline), where the       !!01523
*             authorizing host is unavailable and BASE24 performs     !!01524
*             stand-in authorization.                                 !!01525
*                                                                     !!01526
*             This amount cannot exceed the TTL-RFND-CR-LMT field     !!01527
*             amount in this segment.                                 !!01528
*                                                                     !!01529
 02 OFFL-RFND-CR-LMT              TYPE BINARY 64.                      !01530
                                                                       !01531
                                                                       !01532
*                                                                     !!01533
*             The card type to which transactions default if a card   !!01534
*             type is not specified from the BASE24-pos terminal and  !!01535
*             the CRD-TYP field in the Base segment of the CPF        !!01536
*             contains a dual card type value (VV or MM).  Values     !!01537
*             are:                                                    !!01538
*                                                                     !!01539
*             1 = Credit card (default value)                         !!01540
*             2 = Debit card                                          !!01541
*                                                                     !!01542
 02 COMBO-DFLT                    TYPE BINARY 16.                      !01543
                                                                       !01544
                                                                       !01545
                                                                       !01546
*                                                                     !!01547
*             A code indicating whether BASE24-pos performs address   !!01548
*             verification during transaction screening when the host !!01549
*             is online.  Valid values are:                           !!01550
*                                                                     !!01551
*             0     = Do not perform address verification             !!01552
*                     (default value).                                !!01553
*             Non-0 = Perform address verification.                   !!01554
*                                                                     !!01555
 02 ADDR-VRFY                     PIC X.                               !01556
                                                                       !01557
                                                                       !01558
*                                                                     !!01559
*             A code identifying the algorithm used for address       !!01560
*             verification.  Valid values are:                        !!01561
*                                                                     !!01562
*             V = VisaNet algorithm (default value)                   !!01563
*             M = Banknet (MasterCard) algorithm                      !!01564
*                                                                     !!01565
*             NOTE: Currently, the VisaNet and Banknet algorithms are !!01566
*             identical.                                              !!01567
*                                                                     !!01568
 02 ADDR-VRFY-ALGO                PIC X.                               !01569
                                                                       !01570
*                                                                     !!01571
*             A flag that specifies whether a Personal Identification !!01572
*             Number (PIN) is required for POS transactions.  Values  !!01573
*             are:                                                    !!01574
*                                                                     !!01575
*             0 = No PIN required (default value)                     !!01576
*             1 = PIN required                                        !!01577
                                                                       !01577W00
*             2 = PIN required unless terminal cannot enter PIN,       !01577W01
*                 transactions from attended terminals without PIN     !01577W02
*                 capabilities are processed without the PIN,          !01577W03
*                 transactions from unattended terminals without PIN   !01577W04
*                 capabilities are declined                            !01577W05
*             3 = PIN required unless terminal cannot enter PIN,       !01577W06
*                 transactions from terminals without PIN capabilities !01577W07
*                 are processed without the PIN                        !01577W08
*             4 = PIN required except for contactless transactions,    !01577W09
*                 transactions from terminals without PIN capabilities !01577W0A
*                 are processed without the PIN                        !01577W0B
                                                                       !01577W0C
                                                                       !01578W00
                                                                       !01578W01
*                                                                     !!01579
 02 PIN-REQ                       TYPE BINARY 16.                      !01580
                                                                       !01581
                                                                       !01582
*                                                                     !!01583
*             The maximum number of times a card may be used via      !!01584
*             BASE24-pos during a single usage accumulation period.   !!01585
*                                                                     !!01586
 02 USE-LMT                       TYPE BINARY 16.                      !01587
                                                                       !01588
                                                                       !01589
                                                                       !01590
*                                                                     !!01591
*             Indicates whether the Authorization process must update !!01592
*             the CAF, UAF, and/or PBF after a chargeback transaction !!01593
*             has been received.  Values are:                         !!01594
*                                                                     !!01595
*             0 = Do not update the CAF, UAF, and/or PBF              !!01596
*                 (default value)                                     !!01597
*             1 = Update the CAF, UAF, and/or PBF                     !!01598
*                                                                     !!01599
*             If the value in the CHRGBACK-UPDATE field is 1, a       !!01600
*             chargeback transaction is processed like a normal       !!01601
*             transaction.  In either case, the transaction is logged !!01602
*             to the BASE24-pos Transaction Log File (PTLF).          !!01603
*                                                                     !!01604
 02 CHRGBACK-UPDATE               PIC X.                               !01605
                                                                       !01606
                                                                       !01607
                                                                       !01608
*                                                                     !!01609
*             Indicates whether the Authorization process must update !!01610
*             the CAF, UAF, and/or PBF after a representment          !!01611
*             transaction has been received.  Values are:             !!01612
*                                                                     !!01613
*             0 = Do not update the CAF, UAF, and/or PBF              !!01614
*                 (default value)                                     !!01615
*             1 = Update the CAF, UAF, and/or PBF                     !!01616
*                                                                     !!01617
*             If the value in the RPRSNT-UPDATE field is 1, the       !!01618
*             representment transaction is processed like a normal    !!01619
*             transaction.  In either case, the transaction is logged !!01620
*             to the PTLF.                                            !!01621
*                                                                     !!01622
 02 RPRSNT-UPDATE                 PIC X.                               !01623
                                                                       !01624
                                                                       !01625
                                                                       !01626
                                                                       !01627
                                                                       !01628
                                                                       !01629
                                                                       !01630
                                                                       !01631
                                                                       !01632
*                                                                     !!01633
*             The account type to which transactions default if an    !!01634
*             account type is not specified from the BASE24-pos       !!01635
*             terminal.  Values are:                                  !!01636
*                                                                     !!01637
*             00 = None (default value)                               !!01638
*             01 = Checking                                           !!01639
*             11 = Savings                                            !!01640
*             31 = Credit                                             !!01641
*                                                                     !!01642
 02 DFLT-ACCT                     PIC X(2) OCCURS 3 TIMES.             !01643
                                                                       !01644
                                                                       !01645
                                                                       !01646
                                                                       !01647
*                                                                     !!01648
*             The maximum number of preauthorization holds that       !!01649
*             are allowed.  Valid values are 0 through 10.  The       !!01650
*             default value is 2.                                     !!01651
*                                                                     !!01652
 02 MAX-PRE-AUTH-HLDS             TYPE BINARY 16.                      !01653
                                                                       !01654
                                                                       !01655
                                                                       !01656
                                                                       !01656N00
*             Profile used as part of the key to read the IPCF         !01656N01
*             to determine if a the specific transaction is allowed    !01656N02
*             by the issue for cardholders with this prefix.           !01656N03
                                                                       !01656N04
                                                                       !01656N05
                                                                       !01656N06
                                                                       !01656N07
 02 ISS-TXN-PRFL                  TYPE PRFL.                           !01656I06
                                                                       !01656I07
                                                                       !01656I08
                                                                       !01656K00
*                                                                      !01656K01
*             Overrides the existing ISSUER field (Screen 7) on draft  !01656K02
*             capture transactions, allowing a different AST entry to  !01656K03
*             be accessed.  Valid values are "00"-"99" with the        !01656K04
*             default being "00".                                      !01656K05
                                                                       !01656K06
 02 DFT-CAPTR-ISS                 PIC X(2).                            !01656K07
                                                                       !01656K08
                                                                       !01656K09
                                                                       !01656N08
*             A flag indicating whether a pre-screen SIV card          !01656N09
*             verification check should be performed by the            !01656N0A
*             Router/Authorization processes before sending a          !01656N0B
*             transaction to the host.  This field is only used if     !01656N0C
*             the SIV-CHK-TYP field is not equal to zero.  Valid       !01656N0D
*             values are:                                              !01656N0E
*                                                                      !01656N0F
*             0 = If the host is online, the transaction request is    !01656N0G
*                 sent to the host without verifying the               !01656N0H
*                 authentication transaction entry in the              !01656N0I
*                 E-Commerce Authentication File (EAF), Cardholder     !01656N0J
*                 Authentication Verification Value (CAVV), or         !01656N0K
*                 Accountholder Authentication Value (AAV).            !01656N0L
*                                                                      !01656N0M
*             1 = The authentication transaction entry in the          !01656N0N
*                 E-Commerce Authentication File (EAF), Cardholder     !01656N0O
*                 Authentication Verification Value (CAVV), or         !01656N0P
*                 Accountholder Authentication Value (AAV) is          !01656N0Q
*                 validated before attempting to send the transaction  !01656N0R
*                 request to the host.  If the authentication          !01656N0S
*                 transaction entry in EAF is not found, the CAVV      !01656N0T
*                 is invalid, or the AAV is invalid, the               !01656N0U
*                 Router/Authorization processes will perform the      !01656N0V
*                 action defined within the SIV-BAD-DISP field.        !01656N0W
                                                                       !01656N0X
 02 SIV-CHK                       PIC X.                               !01656N0Y
                                                                       !01656N0Z
*             A flag identifying the type of check that is attempted   !01656N0a
*             when performing SIV card verification.  Valid values     !01656N0b
*             are:                                                     !01656N0c
*                                                                      !01656N0d
*             0 = SIV disabled.                                        !01656N0e
*             1 = SIV enabled, check either the CAVV or AAV using the  !01656N0f
*                 EAF                                                  !01656N0g
*             2 = SIV enabled, check the CAVV using the CVV method or  !01656N0h
*                 check the AAV using the EAF                          !01656N0i
*             3 = SIV enabled, check the CAVV using the CVV method     !01656N0j
                                                                       !01656S00
*             4 = SIV enabled, check either the CAVV or AVV using the  !01656S01
*                 CVV method                                           !01656S02
*             5 = SIV enabled, check the AAV using the CVV method      !01656S03
                                                                       !01656S04
                                                                       !01656N0k
 02 SIV-CHK-TYP                   PIC X.                               !01656N0l
                                                                       !01656N0m
*             An identifier used to show the card verification group   !01656N0n
*             to which this record belongs on the Key Authorization    !01656N0o
*             File (KEYA).  If this field is not spaces, the           !01656N0p
*             Router/Authorization processes uses the value of this    !01656N0q
*             field, among others, to read the appropriate KEYA card   !01656N0r
*             verification record.  If this field contains all spaces, !01656N0s
*             CAVV verification will not be performed.  Valid values   !01656N0t
*             are any combination of alphanumeric characters and       !01656N0u
*             leading and trailing spaces.                             !01656N0v
                                                                       !01656N0w
 02 SIV-KEYA-GRP                  PIC X(4).                            !01656N0x
                                                                       !01656N0y
*             The action that the Router/Authorization processes       !01656N0z
*             will take when a cardholder uses a card that contains    !01656N10
*             an invalid Cardholder Authentication Verification Value  !01656N11
*             (CAVV) or an invalid Accountholder Authentication Value  !01656N12
*             (AAV).  This field is only used if the SIV-CHK-TYP       !01656N13
*             field is not equal to zero.  Valid values are:           !01656N14
*                                                                      !01656N15
*             0 = Note the situation and continue                      !01656N16
*             1 = Deny the transaction                                 !01656N17
                                                                       !01656N18
 02 SIV-BAD-DISP                  PIC X.                               !01656N19
                                                                       !01656N1A
*             The action that the Router/Authorization processes       !01656N1B
*             will take when a Cardholder Authentication Verification  !01656N1C
*             Value (CAVV) or Accountholder Authentication Value (AAV) !01656N1D
*             was not present in the Secure Internet Validation        !01656N1E
*             transaction.  This field is only used if the SIV-CHK-TYP !01656N1F
*             field is not equal to zero.  Valid values are:           !01656N1G
*                                                                      !01656N1H
*             0 = Note the situation and continue                      !01656N1I
*             1 = Deny the transaction                                 !01656N1J
                                                                       !01656N1K
 02 SIV-NOT-PRSN-DISP             PIC X.                               !01656N1L
                                                                       !01656N1M
                                                                       !01656Q00
*             The action that the Router/Authorization processes       !01656Q01
*             will take when the interchange informs BASE24 that       !01656Q02
*             a pass-validation-attempt situation occurred on the      !01656Q03
*             Cardholder Authentication Verification Value (CAVV)      !01656Q04
*             or the Accountholder Authentication Value (AAV).         !01656Q05
*             This field is only used if the SIV-CHK-TYP field is not  !01656Q06
*             equal to zero.  Valid values are:                        !01656Q07
*                                                                      !01656Q08
*             0 = Note the situation and continue                      !01656Q09
*             1 = If the interchange indicates a pass validation       !01656Q0A
*                 attempt with a value of 3, deny the transaction.     !01656Q0B
*             2 = If the interchange indicates a pass validation       !01656Q0C
*                 attempt with a value of 8, deny the transaction.     !01656Q0D
*             3 = If the interchange indicates a pass validation       !01656Q0E
*                 attempt with a value of 3 or 8, deny the             !01656Q0F
*                 transaction.                                         !01656Q0G
*             4 = If the interchange indicates a pass validation       !01656Q0H
*                 attempt with a value of A, deny the transaction.     !01656Q0I
*             5 = If the interchange indicates a pass validation       !01656Q0J
*                 attempt with a value of 3 or A, deny the             !01656Q0K
*                 transaction.                                         !01656Q0L
*             6 = If the interchange indicates a pass validation       !01656Q0M
*                 attempt with a value of 8 or A, deny the             !01656Q0N
*                 transaction.                                         !01656Q0O
*             7 = If the interchange indicates a pass validation       !01656Q0P
*                 attempt with a value of 3, 8 or A, deny the          !01656Q0Q
*                 transaction                                          !01656Q0R
                                                                       !01656Q0S
 02 SIV-ATTEMPT-DISP              PIC X.                               !01656Q0T
                                                                       !01656Q0U
*                                                                     !!01657
*             This field is not used.                                 !!01658
*                                                                     !!01659
                                                                       !01659K00
                                                                       !01659N00
                                                                       !01659Q00
 02 USER-FLD3                     PIC X(3).                            !01659Q01
                                                                       !01659S00
*             Indicates whether manually entered transactions are      !01659S01
*             allowed and, if so, whether certain manually entered     !01659S02
*             transactions should be denied based on the CVD field     !01659S03
*             present flag (CVD-FLD-PRESENT) in the POS 5.1 token.     !01659S04
*             The MANUAL-CRD-ENTRY-FLG is not checked for recurring    !01659S05
*             payment transactions because acquirers are typically     !01659S06
*             not permitted to retain Card Verification Data.  It      !01659S07
*             will also be ignored if the POS 5.1 token is not         !01659S08
*             present or the CVD field present flag has not been set   !01659S09
*             to the appropriate value.  Note that a transaction may   !01659S0A
*             still be denied, regardless of this flag, based on the   !01659S0B
*             setting of MANUAL-CV-REQ in the base segment.  Valid     !01659S0C
*             values are:                                              !01659S0D
*                                                                      !01659S0E
*             0 = Do not deny manually entered transactions based      !01659S0F
*                 on this flag (default).                              !01659S0G
*             1 = Deny all manually entered transactions for which     !01659S0H
*                 the CVD field present flag indicates that the        !01659S0I
*                 cardholder did not provide the CVD.                  !01659S0J
*             2 = Deny all manually entered transactions for which     !01659S0K
*                 the CVD field present flag indicates that the        !01659S0L
*                 merchant did not provide the CVD2, the CVD2 was      !01659S0M
*                 illegible, or the cardholder did not provide the     !01659S0N
*                 CVD2.                                                !01659S0O
*             3 = Deny all manually entered transactions.              !01659S0P
                                                                       !01659S0Q
                                                                       !01659S0R
                                                                       !01659S0S
                                                                       !01659S0T
 02 MANUAL-CRD-ENTRY-FLG          PIC X.                               !01660J07
                                                                       !01660Q00
*                                                                      !01660Q01
*             Indicates the type of card expiration date check to use  !01660Q02
*             for this prefix for reucrring payment transactions.      !01660Q03
*             Valid values are as follows:                             !01660Q04
*             0 = Do not check the expiration date                     !01660Q05
*             1 = Check the expiration date on Track 1 or Track 2      !01660Q06
*             2 = Check the expiration date on the CAF record          !01660Q07
*             9 = Use EXP-CHK-IND field on the Base segment (default)  !01660Q08
*                                                                      !01660Q09
                                                                       !01660Q0A
 02 RECUR-PMNT-EXP-CHK-IND        PIC X.                               !01660Q0B
                                                                       !01660Q0C
                                                                       !01660Q0D
                                                                       !01660Q0E
                                                                       !01660Q0F
*                                                                      !01660J0D
*             Indicates the maximum number of consecutive              !01660J0E
*             transactions that could be authorized below the          !01660J0F
*             AST limit before a transaction is forced online          !01660J0G
*             to the issuer.                                           !01660J0H
                                                                       !01660J0I
 02 FORCE-ONL-CNT                 TYPE BINARY 16.                      !01660J0J
                                                                       !01660J0K
*             The length of the approval code generated by             !01660J0L
*             BASE24-pos.                                              !01660J0M
                                                                       !01660J0N
 02 APPRV-CDE-LGTH                TYPE BINARY 16.                      !01660J0O
                                                                       !01660J0P
                                                                       !01660J0Q
                                                                       !01660W00
*             This field specifies the maximum amount that may be      !01660W01
*             authorized when a transaction is authorized for an       !01660W02
*             amount greater than requested.                           !01660W03
                                                                       !01660W04
 02 PARTIAL-AUTH-LMT              TYPE BINARY 32.                      !01660W05
                                                                       !01660W06
*             This field indicates whether authorization for a         !01660W07
*             lesser and/or a greater amount is supported for the      !01660W08
*             prefix. Valid values are:                                !01660W09
                                                                       !01660W0A
*             0 = Not allowed                                          !01660W0B
*             1 = Lesser and greater allowed                           !01660W0C
*             2 = Lesser allowed                                       !01660W0D
                                                                       !01660W0E
 02 PARTIAL-AUTH-SPPT             PIC X.                               !01660W0F
                                                                       !01660W0G
*             This field specifies the routing and authorization       !01660W0H
*             logic to be performed when the transaction can be        !01660W0I
*             authorized for a greater amount. Valid values are:       !01660W0J
                                                                       !01660W0K
*             0 = Standard.  Perform standard routing/authorization    !01660W0L
*             1 = Auth limit.  Set the transaction amount to           !01660W0M
*                 PARTIAL-AUTH-LMT, because the authorizing Host       !01660W0N
*                 system does not support authorization for a          !01660W0O
*                 greater amount.                                      !01660W0P
*             2 = Under floor.  Perform "under floor" authorization,   !01660W0Q
*                 because the authorizing Host system does not         !01660W0R
*                 support partial authorization at all.                !01660W0S
                                                                       !01660W0T
 02 PARTIAL-AUTH-RTE              PIC X.                               !01660W0U
                                                                       !01660W0V
*                                                                      !01660W0W
*             This field is not used.                                  !01660W0X
*                                                                      !01660W0Y
                                                                       !01660W0Z
 02 USER-FLD4                     PIC X(50).                           !01660W0a
                                                                       !01660W0b
                                                                       !01661W00
                                                                       !01661W01
                                                                       !01661W02
END                                                                    !01663
                                                                       !01663B00
?page "SSBCCPF - SSBC CPF Segment"
?section SSBCCPF
                                                                       !01663B05
                                                                       !01664B00
                                                                       !01664B01
                                                                       !01664B02
                                                                       !01882
*             The following fields make up the Self-Service Banking   !!01883
*             Check segment of the Card Prefix File (CPF).            !!01884
                                                                       !01885
DEFINITION SSBCCPF.                                                    !01886
*                                                                     !!01887
  02 SEG-LGTH                     TYPE *.                              !01888
                                                                       !01889
                                                                       !01889A00
*                                                                      !01889A01
*             A flag used to indicate whether check transactions       !01889A02
*             involving checks not defined in the Check Status File    !01889A03
*             should be included in the BASE aggregate usage fields    !01889A04
*             and checked against the BASE aggregate limit fields.     !01889A05
*             Valid values are:                                        !01889A06
*             Y = Yes, include in BASE processing                      !01889A07
*             N = No, do not include in BASE processing                !01889A08
*                                                                      !01889A09
 02 CHK-BASE-FLG                  PIC X.                               !01889A0A
                                                                       !01889A0B
*                                                                      !01889A0C
*             A flag used to indicate whether check transactions       !01889A0D
*             involving checks defined in the Check Status File        !01889A0E
*             should be included in the BASE aggregate usage fields    !01889A0F
*             and checked against the BASE aggregate limit fields.     !01889A0G
*             Valid values are:                                        !01889A0H
*             Y = Yes, include in BASE processing                      !01889A0I
*             N = No, do not include in BASE processing                !01889A0J
*                                                                      !01889A0K
 02 CSF-CHK-BASE-FLG              PIC X.                               !01889A0L
                                                                       !01889A0M
*                                                                      !01889A0N
*             The maximum number of times the card can be used to      !01889A0O
*             perform check transactions involving checks defined      !01889A0P
*             in the Check Status File during the current usage        !01889A0Q
*             accumulation period.  Valid values are 0 to 999.         !01889A0R
                                                                       !01889W00
*             For a Bulk Check transaction, each check will count      !01889W01
*             as a usage.                                              !01889W02
                                                                       !01889W03
*                                                                      !01889A0S
 02 CSF-CHK-USE-LMT              TYPE BINARY 16.                       !01889A0T
                                                                       !01889A0U
                                                                       !01889A0V
*                                                                     !!01890
*             The values in the following fields can be used to limit !!01891
*             the amount of cash disbursements relative to check      !!01892
*             initiated transactions allowed via BASE24-atm during a  !!01893
*             single usage accumulation period.                       !!01894
*                                                                     !!01895
  02 GRP-LMT.                                                          !01896
*                                                                     !!01897
*             The maximum amount of cash disbursements allowed for    !!01898
                                                                       !01899A00
                                                                       !01899A01
*             cash check or deposit with cash back transactions       !
*             involving checks not defined in the Check Status File.  !
                                                                       !01899A06
*                                                                     !!01901
                                                                       !01901A00
*             If the CHK-BASE-FLG field is set to a value of "Y",      !01901A01
                                                                       !01901A02
                                                                       !01902A00
*             this amount cannot exceed the amount in the GRP-        !
                                                                       !01902A03
*             LMT.AGGR-LMT field in the Base segment of the CPF.      !!01903
*                                                                     !!01904
     04 TTL-CHK-LMT               TYPE BINARY 64.                      !01905
                                                                       !01906
                                                                       !01907
*                                                                     !!01908
*             The maximum amount of cash disbursements allowed        !!01909
*             offline for cash check or deposit with cash back        !!01910
                                                                       !01911A00
*             transaction in an offline mode involving checks         !
*             not defined in the Check Status File.                    !01911A03
                                                                       !01911A04
*                                                                     !!01912
*             The amount in this field is only used with Authorization!!01913
*             level 3 (online/offline), where the authorizing host is !!01914
*             unavailable and BASE24 performs stand-in authorization. !!01915
*                                                                     !!01916
                                                                       !01917A00
*             This amount cannot exceed the following amount:         !
                                                                       !01917A03
                                                                       !01918A00
                                                                       !01918A01
                                                                       !01918A02
*             o  GRP-LMT.TTL-CHK-LMT in this (SSBC) segment.          !!01920
                                                                       !01920A00
*                                                                      !01920A01
*             If the CHK-BASE-FLG field is set to a value of "Y",      !01920A02
*             this amount cannot exceed the following amounts:         !01920A03
                                                                       !01920A04
*             o  GRP-LMT.AGGR-LMT in the Base segment.                !!01921
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment.           !!01922
*                                                                     !!01923
     04 OFFL-CHK-LMT              TYPE BINARY 64.                      !01924
                                                                       !01924A00
                                                                       !01924A01
*                                                                      !01924A02
*             The maximum amount of cash disbursements allowed for     !01924A03
*             cash check or deposit with cash back transactions        !01924A04
*             involving checks defined in the Check Status File.       !01924A05
*                                                                      !01924A06
*             If the CSF-CHK-BASE-FLG field is set to a value of "Y",  !01924A07
*             this amount cannot exceed the amount in the GRP-         !01924A08
*             LMT.AGGR-LMT field in the Base segment of the CPF.       !01924A09
*                                                                      !01924A0A
     04 TTL-CSF-CHK-LMT           TYPE BINARY 64.                      !01924A0B
                                                                       !01924A0C
*                                                                      !01924A0D
*             The maximum amount of cash disbursements allowed         !01924A0E
*             offline for cash check or deposit with cash back         !01924A0F
*             transaction in an offline mode involving checks          !01924A0G
*             defined in the Check Status File.                        !01924A0H
*                                                                      !01924A0I
*             The amount in this field is only used with Authorization !01924A0J
*             level 3 (online/offline), where the authorizing host is  !01924A0K
*             unavailable and BASE24 performs stand-in authorization.  !01924A0L
*                                                                      !01924A0M
*             This amount cannot exceed the following amount:          !01924A0N
*             o  GRP-LMT.TTL-CSF-CHK-LMT in this (SSBC) segment.       !01924A0O
*                                                                      !01924A0P
*             If the CSF-CHK-BASE-FLG field is set to a value of "Y",  !01924A0Q
*             this amount cannot exceed the following amounts:         !01924A0R
*             o  GRP-LMT.AGGR-LMT in the Base segment.                 !01924A0S
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment.            !01924A0T
*                                                                      !01924A0U
     04 OFFL-CSF-CHK-LMT          TYPE BINARY 64.                      !01924A0V
                                                                       !01924A0W
                                                                       !01925
*                                                                     !!01926
*             This REDEFINE allows the previous fields to be accessed !!01927
*             by index.                                               !!01928
*                                                                     !!01929
                                                                       !01930A00
  02 CHK-LMT                      REDEFINES GRP-LMT OCCURS 4 TIMES     !01930A01
                                                                       !01930A02
                                  TYPE BINARY 64.                      !01931
                                                                       !01932
                                                                       !01933
*             The minimum transaction amount, allowed by BASE24-atm.  !!01934
*             A value of zero represents no minimum is used.          !!01935
*                                                                     !!01936
*             This amount cannot exceed the amount specified in the   !!01937
*             GRP-LMT.TTL-CHK-AMT field in this segment of the CPF or !!01938
*             a non-zero amount specified in the GRP-LMT.OFFL-CHK-AMT !!01939
*             field in this segment of the CPF.                       !!01940
*                                                                     !!01941
                                                                       !01942
  02 MIN-AMT                      TYPE BINARY 64.                      !01943
                                                                       !01943Q00
*                                                                     !!01943Q01
*             The percentage of each registered check deposit to use  !!01943Q02
*             as a deposit credit, subject to the settings in the     !!01943Q03
*             following field in addition to the NUM-DEP-CR-LMT and   !!01943Q04
*             the DEP-CR-LMT in the ATMCPF segment. The value in this !!01943Q05
*             field is used with the Positive Balance Authorization   !!01943Q06
*             method only.                                            !!01943Q07
*                                                                     !!01943Q08
  02 CSF-CHK-DEP-CR-PERCENT       TYPE BINARY 16.                      !01943Q09
                                                                       !01943Q0A
*                                                                     !!01943Q0B
*             The maximum amount, in whole currency units (e.g.,      !!01943Q0C
*             dollars), of deposit credit allowed per registered check!!01943Q0D
*             deposit transaction.                                    !!01943Q0E
*                                                                     !!01943Q0F
  02 CR-PER-CSF-CHK-DEP-LMT       TYPE BINARY 64.                      !01943Q0G
                                                                       !01943Q0H
*                                                                     !!01943Q0I
*             The percentage of each non-registered check deposit to  !!01943Q0J
*             use as a deposit credit, subject to the settings in the !!01943Q0K
*             following field in addition to the NUM-DEP-CR-LMT and   !!01943Q0L
*             the DEP-CR-LMT in the ATMCPF segment. The value in this !!01943Q0M
*             field is used with the Positive Balance Authorization   !!01943Q0N
*             method only.                                            !!01943Q0O
*                                                                     !!01943Q0P
  02 CHK-DEP-CR-PERCENT           TYPE BINARY 16.                      !01943Q0Q
                                                                       !01943Q0R
*                                                                     !!01943Q0S
*             The maximum amount, in whole currency units (e.g.,      !!01943Q0T
*             dollars), of deposit credit allowed per non-registered  !!01943Q0U
*             check deposit transaction.                              !!01943Q0V
*                                                                     !!01943Q0W
  02 CR-PER-CHK-DEP-LMT           TYPE BINARY 64.                      !01943Q0X
                                                                       !01943Q0Y
                                                                       !01944
  END                                                                  !01945
                                                                       !01945D00
?page "NCDCPF - Non-Currency Dispense CPF Segment"
?section NCDCPF
                                                                       !01945D05
*             The following fields make up the Non-Currency Dispense   !01945D06
*             segment of the Card Prefix File (CPF).                   !01945D07
                                                                       !01945D08
DEFINITION NCDCPF.                                                     !01945D09
                                                                       !01945D0A
*                                                                      !01945D0B
  02 SEG-LGTH                     TYPE *.                              !01945D0C
                                                                       !01945D0D
                                                                       !01945D0E
*                                                                      !01945D0F
*             The maximum number of times a card can be used for       !01945D0G
*             non-currency dispense transactions during a single usage !01945D0H
*             accumulation period.                                     !01945D0I
*                                                                      !01945D0J
  02 USE-LMT                      TYPE BINARY 16.                      !01945D0K
                                                                       !01945D0L
*                                                                      !01945D0M
*             The values in the following fields can be used to limit  !01945D0N
*             the amount of cash value/non-value transactions allowed  !01945D0O
*             during a single usage accumulation period.               !01945D0P
*                                                                      !01945D0Q
  02 CASH-VAL-LMT.                                                     !01945D0R
                                                                       !01945D0S
*                                                                      !01945D0T
*             The maximum amount of cash value transactions allowed    !01945D0U
*             against non-credit accounts.                             !01945D0V
*                                                                      !01945D0W
*             This amount cannot exceed either of the following field  !01945D0X
*             amounts:                                                 !01945D0Y
*                                                                      !01945D0Z
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.   !01945D10
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D11
*                                                                      !01945D12
    04 TTL-WDL-LMT                TYPE BINARY 64.                      !01945D13
                                                                       !01945D14
*                                                                      !01945D15
*             The maximum amount of cash value transactions allowed    !01945D16
*             offline against non-credit accounts.                     !01945D17
*                                                                      !01945D18
*                                                                      !01945D19
*             The amount in this field is only used with               !01945D1A
*             Authorization level 3 (online/offline), where the        !01945D1B
*             authorizing host is unavailable and BASE24 performs      !01945D1C
*             stand-in authorization.                                  !01945D1D
*                                                                      !01945D1E
*             This amount cannot exceed any of the following field     !01945D1F
*             amounts:                                                 !01945D1G
*                                                                      !01945D1H
*             o  CASH-VAL-LMT.TTL-WDL-LMT in this segment of the CPF.  !01945D1I
*             o  GRP-LMT.OFFL-WDL-LMT in the Base segment of the CPF.  !01945D1J
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.   !01945D1K
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the      !01945D1L
*                CPF.                                                  !01945D1M
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D1N
*                                                                      !01945D1O
    04 OFFL-WDL-LMT               TYPE BINARY 64.                      !01945D1P
                                                                       !01945D1Q
*                                                                      !01945D1R
*             The maximum amount of cash value transactions allowed    !01945D1S
*             against credit accounts.                                 !01945D1T
*                                                                      !01945D1U
*             This amount cannot exceed either of the following field  !01945D1V
*             amounts:                                                 !01945D1W
*                                                                      !01945D1X
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.   !01945D1Y
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D1Z
*                                                                      !01945D20
    04 TTL-CCA-LMT                TYPE BINARY 64.                      !01945D21
                                                                       !01945D22
*                                                                      !01945D23
*             The maximum amount of cash value transactions allowed    !01945D24
*             offline against credit accounts.                         !01945D25
*                                                                      !01945D26
*             The amount in this field is only used with               !01945D27
*             Authorization level 3 (online/offline), where the        !01945D28
*             authorizing host is unavailable and BASE24 performs      !01945D29
*             stand-in authorization.                                  !01945D2A
*                                                                      !01945D2B
*             This amount cannot exceed any of the following field     !01945D2C
*             amounts:                                                 !01945D2D
*                                                                      !01945D2E
*             o  CASH-VAL-LMT.TTL-CCA-LMT in this segment of the CPF.  !01945D2F
*             o  GRP-LMT.OFFL-CCA-LMT in the Base segment of the CPF.  !01945D2G
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.   !01945D2H
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the      !01945D2I
*                CPF.                                                  !01945D2J
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D2K
*                                                                      !01945D2L
    04 OFFL-CCA-LMT               TYPE BINARY 64.                      !01945D2M
                                                                       !01945D2N
*                                                                      !01945D2O
*             This REDEFINE allows the previous fields to be accessed  !01945D2P
*             by index.                                                !01945D2Q
*                                                                      !01945D2R
  02 CASH-VAL-WDL-LMT             REDEFINES CASH-VAL-LMT OCCURS 4      !01945D2S
                                  TIMES TYPE BINARY 64.                !01945D2T
                                                                       !01945D2U
  02 NCD                          OCCURS 2 TIMES.                      !01945D2V
                                                                       !01945D2W
*             The code of the hopper contents for which the            !01945D2X
*             NCD limit fields pertain.                                !01945D2Y
                                                                       !01945D2Z
    04 NCD-CDE                     PIC X(2).                           !01945D30
                                                                       !01945D31
*                                                                      !01945D32
*             The values in the following fields are used to limit     !01945D33
*             the transaction amount allowed during a single usage     !01945D34
*             accumulation period for the item type identified by      !01945D35
*             the content code (NCD-CDE).                              !01945D36
*                                                                      !01945D37
    04 NCD-LMT.                                                        !01945D38
                                                                       !01945D39
*                                                                      !01945D3A
*             The maximum amount of transactions made against          !01945D3B
*             non-credit accounts for the item type identified         !01945D3C
*             by the content code (NCD-CDE).                           !01945D3D
*                                                                      !01945D3E
*             This amount cannot exceed either of the following field  !01945D3F
*             amounts:                                                 !01945D3G
*                                                                      !01945D3H
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.   !01945D3I
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D3J
*                                                                      !01945D3K
      06 TTL-WDL-LMT              TYPE BINARY 64.                      !01945D3L
                                                                       !01945D3M
*                                                                      !01945D3N
*             The maximum amount of transactions made offline          !01945D3O
*             against non-credit accounts for the item type            !01945D3P
*             identified by the content code (NCD-CDE).                !01945D3Q
*                                                                      !01945D3R
*             The amount in this field is only used with               !01945D3S
*             Authorization level 3 (online/offline), where the        !01945D3T
*             authorizing host is unavailable and BASE24 performs      !01945D3U
*             stand-in authorization.                                  !01945D3V
*                                                                      !01945D3W
*             This amount cannot exceed any of the following field     !01945D3X
*             amounts:                                                 !01945D3Y
*                                                                      !01945D3Z
*             o  NCD-LMT.TTL-WDL-LMT in this segment of the CPF.       !01945D40
*             o  GRP-LMT.OFFL-WDL-LMT in the Base segment of the CPF.  !01945D41
*             o  GRP-LMT.TTL-WDL-LMT in the Base segment of the CPF.   !01945D42
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the      !01945D43
*                CPF.                                                  !01945D44
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D45
*                                                                      !01945D46
      06 OFFL-WDL-LMT             TYPE BINARY 64.                      !01945D47
                                                                       !01945D48
*                                                                      !01945D49
*             The maximum amount of transactions made against          !01945D4A
*             credit accounts for the item type identified             !01945D4B
*             by the content code (NCD-CDE).                           !01945D4C
*                                                                      !01945D4D
*             This amount cannot exceed either of the following field  !01945D4E
*             amounts:                                                 !01945D4F
*                                                                      !01945D4G
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.   !01945D4H
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D4I
*                                                                      !01945D4J
                                                                       !01945D4K
      06 TTL-CCA-LMT              TYPE BINARY 64.                      !01945D4L
                                                                       !01945D4M
*                                                                      !01945D4N
*             The maximum amount of transactions made offline          !01945D4O
*             against credit accounts for the item type                !01945D4P
*             identified by the content code (NCD-CDE).                !01945D4Q
*                                                                      !01945D4R
*             The amount in this field is only used with               !01945D4S
*             Authorization level 3 (online/offline), where the        !01945D4T
*             authorizing host is unavailable and BASE24 performs      !01945D4U
*             stand-in authorization.                                  !01945D4V
*                                                                      !01945D4W
*             o  NCD-LMT.TTL-CCA-LMT in this segment of the CPF.       !01945D4X
*             o  GRP-LMT.OFFL-CCA-LMT in the Base segment of the CPF.  !01945D4Y
*             o  GRP-LMT.TTL-CCA-LMT in the Base segment of the CPF.   !01945D4Z
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment of the      !01945D50
*                CPF.                                                  !01945D51
*             o  GRP-LMT.AGGR-LMT in the Base segment of the CPF.      !01945D52
*                                                                      !01945D53
                                                                       !01945D54
      06 OFFL-CCA-LMT             TYPE BINARY 64.                      !01945D55
                                                                       !01945D56
                                                                       !01945D57
*             This REDEFINE allows the previous fields to be accessed  !01945D58
*             by index.                                                !01945D59
*                                                                      !01945D5A
    04 NCD-WDL-LMT                REDEFINES NCD-LMT OCCURS 4           !01945D5B
                                  TIMES TYPE BINARY 64.                !01945D5C
                                                                       !01945D5D
  END                                                                  !01945D5E
                                                                       !01945D5F
                                                                       !01945K00
?page "SVCPF - SV CPF Segment"
?section SVCPF
                                                                       !01945K05
                                                                       !01945K06
*             The following fields make up the Stored Value            !01945K07
*             segment of the Card Prefix File (CPF).                   !01945K08
                                                                       !01945K09
DEFINITION SVCPF.                                                      !01945K0A
*                                                                      !01945K0B
  02 SEG-LGTH                     TYPE *.                              !01945K0C
                                                                       !01945K0D
*                                                                      !01945K0E
*             The minimum amount that can be loaded on the Stored      !01945K0F
*             Value account by a card activation.                      !01945K0G
*             The default value is 0.                                  !01945K0H
*                                                                      !01945K0I
 02 MIN-LOAD                      TYPE BINARY 64.                      !01945K0J
                                                                       !01945K0K
                                                                       !01945K0L
*                                                                      !01945K0M
*             The maximum amount that can be loaded on the Stored      !01945K0N
*             Value account by a card activation.                      !01945K0O
*             The default value is 0.                                  !01945K0P
*                                                                      !01945K0Q
 02 MAX-LOAD                      TYPE BINARY 64.                      !01945K0R
                                                                       !01945K0S
                                                                       !01945K0T
*                                                                      !01945K0U
*             The maximum amount in the Stored Value account that      !01945K0V
*             can be returned as cash. This affects Cash Advance and   !01945K0W
*             Purchase w/ Cash Back transactions.                      !01945K0X
*             The default value is 0.                                  !01945K0Y
*                                                                      !01945K0Z
 02 MAX-AS-CASH                   TYPE BINARY 64.                      !01945K0a
                                                                       !01945K0b
*             The maximum amount in the Stored Value account that      !01945K0c
*             can be returned as cash in full redemption               !01945K0d
*             transactions.                                            !01945K0e
*             The default value is 0.                                  !01945K0f
*                                                                      !01945K0g
 02 MAX-AS-CASH-REDEMPTION        TYPE BINARY 64.                      !01945K0h
                                                                       !01945K0i
                                                                       !01945K0j
*                                                                      !01945K0k
*             The maximum account balance that the Stored Value        !01945K0l
*             account can have.                                        !01945K0m
*             The default value is 0.                                  !01945K0n
*                                                                      !01945K0o
 02 MAX-CRD-BAL                   TYPE BINARY 64.                      !01945K0p
                                                                       !01945K0q
                                                                       !01945K0r
*                                                                      !01945K0s
*             Contains the duration in months to add to the            !01945K0t
*             current month to set the expiration date in the CAF.     !01945K0u
*             The default value is 0.                                  !01945K0v
*                                                                      !01945K0w
 02 CRD-DURATION                  TYPE BINARY 16.                      !01945K0x
                                                                       !01945K0y
                                                                       !01945K0z
*                                                                      !01945K10
*             The expiration date that will be placed on the CAF       !01945K11
*             during a Card Activation.                                !01945K12
*             The default value is 0.                                  !01945K13
*                                                                      !01945K14
 02 CRD-EXP-DAT                   PIC X(4).                            !01945K15
                                                                       !01945K16
*                                                                      !01945K17
*             Contains the number of leading digits of the PAN         !01945K18
*             to use when reading a CAF template record during         !01945K19
*             a Card Activation transaction.                           !01945K1A
*             The default value is 1.                                  !01945K1B
*                                                                      !01945K1C
 02 CAF-TPLT-LGTH                 TYPE BINARY 16.                      !01945K1D
                                                                       !01945K1E
*                                                                      !01945K1F
*             Retailer ID which is used by the Net Position            !01945K1G
*             report.                                                  !01945K1H
                                                                       !01945R00
*             The Retailer ID will be used as a key                    !01945R01
*             into the Stored Value Dormancy file.                     !01945R02
*                                                                      !01945R03
                                                                       !01945R04
                                                                       !01945K1I
 02 RETAILER-ID                   PIC X(19).                           !01945K1J
                                                                       !01945R05
*                                                                      !01945R06
*             The Escheatment Flag that will be used by the            !01945R07
*             Escheatment Process for Stored Value cards.              !01945R08
*                                                                      !01945R09
 02 SV-ESCHEATMENT-FLG            PIC X.                               !01945R0A
                                                                       !01945R0B
 02 USER-FLD7                     PIC X(20).                           !01945R0C
                                                                       !01945R0D
                                                                       !01945R0E
                                                                       !01945R0F
                                                                       !01945K1L
END                                                                    !01945K1M
                                                                       !01945K1N
?nocomments
?nodeflist
?page "CPF - Card Prefix File"
?section CPF
                                                                       !01945K1W
                                                                       !01945D5O
                                                                       !01954
                                                                       !01955
                                                                       !01956
                                                                       !01957
                                                                       !01958
                                                                       !01959
RECORD CPF.            FILE IS "CPF" KEY-SEQUENCED.                    !01960
                                                                       !01961
 02 SEG0                TYPE CPFBASE.                                  !01962
 02 SEG1                TYPE ATMCPF.                                   !01963
 02 SEG2                TYPE POSCPF.                                   !01964
                                                                       !01964E00
                                                                       !01964J00
 02 SEG9                TYPE EMVCPF.                                   !01964J01
                                                                       !01964J02
                                                                       !01964E02
 02 SEG12               TYPE CARDCPF.                                  !01964C01
                                                                       !01964C02
                                                                       !01965B00
                                                                       !01965B01
                                                                       !01965B02
 02 SEG18               TYPE SSBCCPF.                                  !01969
                                                                       !01969D00
 02 SEG23               TYPE NCDCPF.                                   !01969D01
                                                                       !01969K00
 02 SEG24               TYPE SVCPF.                                    !01969K01
                                                                       !01969K02
                                                                       !01969K03
                                                                       !01969K04
                                                                       !01970
 KEY 0 IS PRIKEY.                                                      !01971
 KEY "PL" IS ALTKEY.                                                   !01972
                                                                       !01973
END                                                                    !01974
                                                                       !01975
?section siv-constants
?setsection siv-constants
?page "SIV Constants"
*##################################################################### !01975Q06
*#                                                                   # !01975Q07
*#                         SIV Constants                             # !01975Q08
*#                                                                   # !01975Q09
*#  The following constants are the ones used in SIV related         # !01975Q0A
*#  processing for fields defined in the CPF.                        # !01975Q0B
*#                                                                   # !01975Q0C
*##################################################################### !01975Q0D
                                                                       !01975Q0E
?nocobol
                                                                       !01975Q0H
* SIV Check constants.                                                 !01975Q0I
                                                                       !01975Q0J
constant siv-chk-no-prescreen-d         value "0".                     !01975Q0K
constant siv-chk-prescreen-d            value "1".                     !01975Q0L
                                                                       !01975Q0M
* SIV Check Type constants.                                            !01975Q0N
                                                                       !01975Q0O
constant siv-chk-typ-disbl-d            value "0".                     !01975Q0P
constant siv-chk-typ-eaf-both-d         value "1".                     !01975Q0Q
constant siv-chk-typ-cvv-cavv-eaf-aav-d value "2".                     !01975Q0R
constant siv-chk-typ-cvv-cavv-d         value "3".                     !01975Q0S
                                                                       !01975S00
constant siv-chk-typ-cvv-cavv-aav-d     value "4".                     !01975S01
constant siv-chk-typ-cvv-aav-d          value "5".                     !01975S02
                                                                       !01975S03
                                                                       !01975Q0T
* SIV Bad Disposition constants.                                       !01975Q0U
                                                                       !01975Q0V
constant siv-bad-disp-cont-d            value "0".                     !01975Q0W
constant siv-bad-disp-dny-d             value "1".                     !01975Q0X
                                                                       !01975Q0Y
* SIV Bad Disposition constants.                                       !01975Q0Z
                                                                       !01975Q0a
constant siv-not-prsn-disp-cont-d       value "0".                     !01975Q0b
constant siv-not-prsn-disp-dny-d        value "1".                     !01975Q0c
                                                                       !01975Q0d
* SIV Attempt Disposition constants                                    !01975Q0e
                                                                       !01975Q0f
constant siv-attempt-disp-cont-d        value "0".                     !01975Q0g
constant siv-attempt-disp-dny-3-only-d  value "1".                     !01975Q0h
constant siv-attempt-disp-dny-8-only-d  value "2".                     !01975Q0i
constant siv-attempt-disp-dny-3-8-d     value "3".                     !01975Q0j
constant siv-attempt-disp-dny-A-only-d  value "4".                     !01975Q0k
constant siv-attempt-disp-dny-3-A-d     value "5".                     !01975Q0l
constant siv-attempt-disp-dny-8-A-d     value "6".                     !01975Q0m
constant siv-attempt-disp-dny-d         value "7".                     !01975Q0n
                                                                       !01975Q0o
?noc
?notal
?cobol =baddl_baddlcob
                                                                       !01975Q0v
def siv-chk-no-prescreen-c              pic x                          !01975Q0w
                                        value                          !01975Q0x
                                        siv-chk-no-prescreen-d.        !01975Q0y
                                                                       !01975Q0z
def siv-chk-prescreen-c                 pic x                          !01975Q10
                                        value                          !01975Q11
                                        siv-chk-prescreen-d.           !01975Q12
                                                                       !01975Q13
def siv-chk-typ-disbl-c                 pic x                          !01975Q14
                                        value                          !01975Q15
                                        siv-chk-typ-disbl-d.           !01975Q16
                                                                       !01975Q17
def siv-chk-typ-eaf-both-c              pic x                          !01975Q18
                                        value                          !01975Q19
                                        siv-chk-typ-eaf-both-d.        !01975Q1A
                                                                       !01975Q1B
def siv-chk-typ-cvv-cavv-eaf-aav-c      pic x                          !01975Q1C
                                        value                          !01975Q1D
                                    siv-chk-typ-cvv-cavv-eaf-aav-d.    !01975Q1E
                                                                       !01975Q1F
def siv-chk-typ-cvv-cavv-c              pic x                          !01975Q1G
                                        value                          !01975Q1H
                                        siv-chk-typ-cvv-cavv-d.        !01975Q1I
                                                                       !01975S04
def siv-chk-typ-cvv-cavv-aav-c          pic x                          !01975S05
                                        value                          !01975S06
                                        siv-chk-typ-cvv-cavv-aav-d.    !01975S07
                                                                       !01975S08
def siv-chk-typ-cvv-aav-c               pic x                          !01975S09
                                        value                          !01975S0A
                                        siv-chk-typ-cvv-aav-d.         !01975S0B
                                                                       !01975S0C
                                                                       !01975Q1J
def siv-bad-disp-cont-c                 pic x                          !01975Q1K
                                        value                          !01975Q1L
                                        siv-bad-disp-cont-d.           !01975Q1M
                                                                       !01975Q1N
def siv-bad-disp-dny-c                  pic x                          !01975Q1O
                                        value                          !01975Q1P
                                        siv-bad-disp-dny-d.            !01975Q1Q
                                                                       !01975Q1R
def siv-not-prsn-disp-cont-c            pic x                          !01975Q1S
                                        value                          !01975Q1T
                                        siv-not-prsn-disp-cont-d.      !01975Q1U
                                                                       !01975Q1V
def siv-not-prsn-disp-dny-c             pic x                          !01975Q1W
                                        value                          !01975Q1X
                                        siv-not-prsn-disp-dny-d.       !01975Q1Y
                                                                       !01975Q1Z
def siv-attempt-disp-cont-c             pic x                          !01975Q1a
                                        value siv-attempt-disp-cont-d. !01975Q1b
                                                                       !01975Q1c
def siv-attempt-disp-dny-3-only-c       pic x                          !01975Q1d
                                        value                          !01975Q1e
                                        siv-attempt-disp-dny-3-only-d. !01975Q1f
                                                                       !01975Q1g
def siv-attempt-disp-dny-8-only-c       pic x                          !01975Q1h
                                        value                          !01975Q1i
                                        siv-attempt-disp-dny-8-only-d. !01975Q1j
                                                                       !01975Q1k
def siv-attempt-disp-dny-3-8-c          pic x                          !01975Q1l
                                        value                          !01975Q1m
                                        siv-attempt-disp-dny-3-8-d.    !01975Q1n
                                                                       !01975Q1o
def siv-attempt-disp-dny-A-only-c       pic x                          !01975Q1p
                                        value                          !01975Q1q
                                        siv-attempt-disp-dny-A-only-d. !01975Q1r
                                                                       !01975Q1s
def siv-attempt-disp-dny-3-A-c          pic x                          !01975Q1t
                                        value                          !01975Q1u
                                        siv-attempt-disp-dny-3-A-d.    !01975Q1v
                                                                       !01975Q1w
def siv-attempt-disp-dny-8-A-c          pic x                          !01975Q1x
                                        value                          !01975Q1y
                                        siv-attempt-disp-dny-8-A-d.    !01975Q1z
                                                                       !01975Q20
def siv-attempt-disp-dny-c              pic x                          !01975Q21
                                        value                          !01975Q22
                                        siv-attempt-disp-dny-d.        !01975Q23
?c     =baddl_baddlc
?tal   =baddl_baddltal
                                                                       !01975T00
                                                                       !01975T01
?section atc-dcv-constants
?setsection atc-dcv-constants
?page "ATC and DCV Constants"
*##################################################################### !01975T08
*#                                                                   # !01975T09
*#                     ATC and DCV Constants                         # !01975T0A
*#                                                                   # !01975T0B
*#  The following constants are the ones used in ATC and DCV related # !01975T0C
*#  processing for fields defined in the CPF.                        # !01975T0D
*#                                                                   # !01975T0E
*##################################################################### !01975T0F
                                                                       !01975T0G
?nocobol
                                                                       !01975T0J
* Dynamic Card Verify Check Type constants.                            !01975T0K
                                                                       !01975T0L
constant dcv-chk-typ-unkn-d              value " ".                    !01975T0M
constant dcv-chk-typ-disabled-d          value "0".                    !01975T0N
constant dcv-chk-typ-mc-d                value "1".                    !01975T0O
constant dcv-chk-typ-mc-atc-0-d          value "2".                    !01975T0P
constant dcv-chk-typ-visa-d              value "5".                    !01975T0Q
constant dcv-chk-typ-visa-split-atc-d    value "6".                    !01975T0R
                                                                       !01975T0S
                                                                       !01975T0T
* Application Transaction Counter Check Type constants.                !01975T0U
                                                                       !01975T0V
* BASE ATC Check Type Constants                                        !01975T0W
                                                                       !01975T0X
constant atc-chk-base-unkn-d             value " ".                    !01975T0Y
constant atc-chk-base-disabled-d         value "0".                    !01975T0Z
constant atc-chk-base-emv-d              value "1".                    !01975T0a
constant atc-chk-base-ctls-d             value "2".                    !01975T0b
constant atc-chk-base-emv-ctls-d         value "3".                    !01975T0c
                                                                       !01975T0d
* EMV ATC Check Type Constants                                         !01975T0e
                                                                       !01975T0f
constant atc-chk-emv-unkn-d              value  " ".                   !01975T0g
constant atc-chk-emv-disabled-d          value  "0".                   !01975T0h
constant atc-chk-emv-enabled-d           value  "1".                   !01975T0i
                                                                       !01975V00
constant atc-chk-emv-base-lmt-d          value  "8".                   !01975V01
                                                                       !01975V02
constant atc-chk-emv-base-opt-d          value  "9".                   !01975T0j
                                                                       !01975T0k
?cobol =baddl_baddlcob
?setsection
?deflist
                                                                       !01975T0r
                                                                       !01975Q2C
                                                                       !01975I00
                                                                       !01975I01
