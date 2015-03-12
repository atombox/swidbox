**FIX2.28  12/02/08  DDLGCAFX6018 DDL    BA60DDL  BA0C311  R                 ***
**FIX2.28  12/04/07  DDLGCAFX6017 DDL    BA60DDL  BA0B345  Q                 ***
**FIX2.23  11/15/03  DDLGCAFX6016 DDL    BA60DDL  BA07284  P                 ***
**FIX2.23  11/10/03  DDLGCAFX6015 DDL    BA60DDL  BA07158  O                 ***
**FIX2.23  02/13/03  DDLGCAFX6014 DDL    BA60DDL  BA06240  N                 ***
**FIX2.23  01/16/03  DDLGCAFX6013 DDL    BA60DDL  BA06189  M                 ***
**FIX2.17  09/27/01  DDLGCAFX6012 DDL    BA60DDL  BA05024  L                 ***
**FIX2.14  04/23/01  DDLGCAFX6011 DDL    BA60DDL  BA04432  K                 ***
**FIX2.14  04/12/01  DDLGCAFX6010 DDL    BA60DDL  BA04408  J                 ***
**FIX2.14  03/21/01  DDLGCAFX6009 DDL    BA60DDL  BA04356  I                 ***
**FIX2.11  01/02/01  DDLGCAFX6008 DDL    BA60DDL  BA04167  H                 ***
**SEQ0.04  11/01/00  DDLGCAFX6007 DDL    BA60DDL  BA04000  G                 ***
**SYNC.04  12/09/98  DDLGCAFX5307 DDL    BA53DDL  BA04000  G                 ***
**FIX2.03  08/28/98  DDLGCAFX5307 DDL    BA53DDL  BA03000  G                 ***
**FIX2.06  07/02/98  DDLGCAFX5107 DDL    BA51DDL  BA03220  G                 ***
**FIX2.04  11/24/97  DDLGCAFX5106 DDL    BA51DDL  BA03024  F                 ***
**SYNC.03  08/22/97  DDLGCAFX5105 DDL    BA51DDL  BA03000  E                 ***
**SYNC.02  06/25/96  DDLGCAFX5105 DDL    BA51DDL  BA02000  E                 ***
**FIX2.00  06/06/95  DDLGCAFX5105 DDL    BA51DDL  BA51024  E                 ***
**FIX2.00  09/24/93  DDLGCAFX5104 DDL    BA51DDL  BA50253  D                 ***
**FIX2.00  02/09/93  DDLGCAFX5003 DDL    BA50DDL  BA50063  C                 ***
**FIX2.00  01/26/93  DDLGCAFX5002 DDL    BA50DDL  BA50039  B                 ***
**FIX2.00  12/23/92  DDLGCAFX5001 DDL    BA50DDL  BA50029  A                 ***
!*SEQ2.00  10/20/92  DDLGCAFX5000 DDL    BA50DDL                               !
?page "CAFX - Cardholder Authorization File Refresh Format"
?section CAF-Refresh-frmt-history
********************************************************************** !00000H02
*                                                                    * !00000H03
*                              BASE24                                * !00000H04
*                              ------                                * !00000H05
*                                                                    * !00000H06
*                   DDL for the CAF Refresh Format                   * !00000H07
*                                                                    * !00000H08
*                    Proprietary Software Product                    * !00000H09
*                                                                    * !00000H0A
*                         ACI Worldwide Inc.                         * !00000H0B
*                       330 South 108th Avenue                       * !00000H0C
*                       Omaha, Nebraska  68154                       * !00000H0D
*                           (402) 390-7600                           * !00000H0E
*                                                                    * !00000H0F
*    Copyright by ACI Worldwide Inc. 1993, 2000                      * !00000H0G
*                                                                    * !00000H0H
*    All Rights Reserved.  No part of this document may be           * !00000H0I
*    reproduced in any manner without the prior written consent of   * !00000H0J
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000H0K
*    confidentiality is strictly maintained.  Use of any copyright   * !00000H0L
*    notice does not imply unrestricted or public access to these    * !00000H0M
*    materials.                                                      * !00000H0N
*                                                                    * !00000H0O
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000H0P
*                                                                    * !00000H0Q
********************************************************************** !00000H0R
*                                                                      !00000H0S
* Record of Changes:                                                   !00000H0T
*                                                                      !00000H0U
* Date        Person/Emp #                                             !00000H0V
* ---------   ------------                                             !00000H0W
                                                                       !00000H0X
                                                                       !00003H00
                                                                       !00003H01
                                                                       !00003H02
* 921222   RRC                                                         !00112A02
* SYMPTOM:      None.                                                  !00112A03
* PROBLEM (E) : None.                                                  !00112A04
* FIX: Added the following fields to the SSBC segment of the CAF       !00112A05
*      to allow for additional limit checking:                         !00112A06
*      CHK-BASE-FLG                                                    !00112A07
*      CSF-CHK-BASE-FLG                                                !00112A08
*      TTL-CSF-CHK-LMT                                                 !00112A09
*      OFFL-CSF-CHK-LMT                                                !00112A0A
*      CSF-CHK-USE-LMT                                                 !00112A0B
* DEPENDENCIES:  Re-DDL.  All modules that source in the CAF must      !00112A0C
*                be recompiled.  Refer to the Release 5.0 Installation !00112A0D
*                Documentation for further details.                    !00112A0E
* REFERENCE: Self Service Banking Check External Specification         !00112A0F
*            Update memo AE06BU02                                      !00112A0G
                                                                       !00112A0H
                                                                       !00112C00
********************************************************************** !00112C01
* 930126         RRC                                                   !00112C02
* SYMPTOM:       None.                                                 !00112C03
* PROBLEM (C) :  Fields in the SSBC segment are PIC X fields instead   !00112C04
*                of PIC 9 fields.  The CHK-LMT fields are 19 bytes     !00112C05
*                long and they should only be 12 bytes long.           !00112C06
*                The CSF-CHK-USE-LMT is five bytes and it should       !00112C07
*                be four bytes.                                        !00112C08
* FIX:           Changed the following fields from PIC X fields to     !00112C09
*                PIC 9 fields:                                         !00112C0A
*                                                                      !00112C0B
*                TTL-CHK-LMT                                           !00112C0C
*                OFFL-CHK-LMT                                          !00112C0D
*                TTL-CSF-CHK-LMT                                       !00112C0E
*                OFFL-CSF-CHK-LMT                                      !00112C0F
*                CSF-CHK-USE-LMT                                       !00112C0G
*                                                                      !00112C0H
*                Changed the CHK-LMT fields from 19 bytes to           !00112C0I
*                12 bytes in length.                                   !00112C0J
*                                                                      !00112C0K
*                Changed the CSF-CHK-USE-LMT from a five byte field    !00112C0L
*                to a four byte field.                                 !00112C0M
* DEPENDENCIES:  Re-DDL.  All modules that source in the CAF must      !00112C0N
*                be recompiled.  Refer to the Release 5.0 Installation !00112C0O
*                Documentation for further details.                    !00112C0P
* REFERENCE:     BETA Database RPC #002750                             !00112C0Q
********************************************************************** !00112C0R
* 930126         RRC                                                   !00112C0S
* SYMPTOM:       None.                                                 !00112C0T
* PROBLEM (C) :  The HOLD-AMT field was defined as a PIC X(19) when it !00112C0U
*                be a PIC 9(18).                                       !00112C0V
* FIX:           Changed the HOLD-AMT field to be a PIC 9(18).         !00112C0W
* DEPENDENCIES:  Re-DDL.  All modules that source in the CAF must      !00112C0X
*                be recompiled.  Refer to the Release 5.0 Installation !00112C0Y
*                Documentation for further details.                    !00112C0Z
* REFERENCE:     BETA Database RPC #002752                             !00112C10
                                                                       !00112C11
                                                                       !00112D00
********************************************************************** !00112D01
* 93/09/22       DCS                                                   !00112D02
* SYMPTOM:       None.                                                 !00112D03
* PROBLEM:       None.                                                 !00112D04
* FIX:           1.  Updated the comments pertaining to the ATMCAFX-   !00112D05
*                    DISPLAY, POSCAFX-DISPLAY, SSBBCAFX-DISPLAY,       !00112D06
*                    SSBCCAFX-DISPLAY, AVCAFX-DISPLAY, and             !00112D07
*                    PREAUTHCAFX-DISPLAY definitions to indicate that  !00112D08
*                    these are optional segments that are controlled   !00112D09
*                    at the FIID level via the IDF FIID-SEG-MAP.       !00112D0A
*                2.  Updated the comments pertaining to the SSBCCAFX-  !00112D0B
*                    DISPLAY.LGTH to indicate the appropriate segment  !00112D0C
*                    length value of "0068" (was "0052").              !00112D0D
*                3.  Updated the comments pertaining to the SSBCCAFX-  !00112D0E
*                    DISPLAY segment to indicate that the segment data !00112D0F
*                    must always be present if the FIID supports SSBC  !00112D0G
*                    (LGTH always 0068 bytes).                         !00112D0H
*                4.  Updated the comments pertaining to the ACCTCAFX-  !00112D0I
*                    DISPLAY segment to indicate that zero is a valid  !00112D0J
*                    value for the ACCT-CNT field.                     !00112D0K
*                5.  Updated the comments pertaining to the ACCTCAFX-  !00112D0L
*                    DISPLAY.LGTH to indicate the appropriate segment  !00112D0M
*                    length if not refreshing account data             !00112D0N
*                    (00 accounts = 0006 bytes).                       !00112D0O
*                6.  Added a record segment overview.                  !00112D0P
* DEPENDENCIES:  None.                                                 !00112D0Q
* REFERENCE:     RPC #004172.                                          !00112D0R
********************************************************************** !00112D0S
                                                                       !00112E03
*                  RELEASE 5.1                                      *  !00112E04
*********************************************************************  !00112E05
* 01JUN95     JMS/583                                                  !00112E06
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00112E07
* PROBLEM:    <E> None.                                                !00112E08
* FIX:        Removed old history sections not associated with a       !00112E09
*             specific Fix level.                                      !00112E0A
* IMPLEMENT:  None.                                                    !00112E0B
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00112E0C
                                                                       !00112E0D
                                                                       !00112E0E
                                                                       !00112E0F
                                                                       !00112E0G
**********************************************************************!!00113
                                                                       !00113F00
* 01OCT1997   CKC/163                                                  !00113F01
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00113F02
* Problem:    None.                                                    !00113F03
* Fix:        Added Non-Currency Dispense segment.                     !00113F04
* Dependency: Apply fix and remake.                                    !00113F05
* Reference:  WO #960311-05.                                           !00113F06
                                                                       !00113G00
* 01APR1998   CAL/283                                                  !00113G01
* Symptom:    BASE24 EMEA CSE Hooks.                                   !00113G02
* Problem:    None.                                                    !00113G03
* Fix:        Added ICC segment.                                       !00113G04
* Dependency: Apply fix and remake.                                    !00113G05
* Reference:  WO #980206-1.                                            !00113G06
                                                                       !00113G07
                                                                       !00113H00
*********************************************************************  !00113H01
*             Release 6.0                                           *  !00113H02
*********************************************************************  !00113H03
* 30NOV2000   JAS/497                                                  !00113H04
* Symptom:    Release 6.0 Enhancements                                 !00113H05
* Problem:    None.                                                    !00113H06
* Fix:        Added ISS-TXN-PRFL fields to the ATM and POS segments.   !00113H07
* Dependency: Restore Release 6.0 files, modify the appropriate        !00113H08
*             CUSTMACS flags, and run MAKE.                            !00113H09
* Reference:  WO #981118-3 (Transactions Allowed)                      !00113H0A
                                                                       !00113I00
* 30MAR2001   jsc/89  tle/310                                          !00113I01
* Symptom:    Release 6.0 Enhancements                                 !00113I02
* Problem:    None.                                                    !00113I03
* Fix:        Renamed all ICC fields to EMV.                           !00113I04
*             Renamed UPR-CONSEC-LMT to USER-FLD2 in EMV segment.      !00113I05
*             Added the CARD-GENKEY and CARD-ALPHA-KEY alternate keys  !00113I06
*             used with BASE24-card.                                   !00113I07
*             Added the card segment.                                  !00113I08
*             Removed USER-FLD2A from the account segment.             !00113I09
*             Added field QUAL to the account segment.                 !00113I0A
*             Added EFFECTIVE-DAT and SECND-CRD-DATA fields to the     !00113I0B
*             base segment.                                            !00113I0C
* Dependency: Restore Release 6.0 files, modify the appropriate        !00113I0D
*             CUSTMACS flags, and run MAKE.                            !00113I0E
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00113I0F
*             WO #000101-1  (General Release 6.0)                      !00113I0G
                                                                       !00113I0H
                                                                       !00113J00
* 06APR2001   WHB/1738 jsc/89                                          !00113J01
* Symptom:    The length of the NCD segment in its comment section     !00113J02
*             does not match the length of the segment sent by the     !00113J03
*             host.                                                    !00113J04
* Problem:    The length of the segment in the comment section is      !00113J05
*             incorrect.                                               !00113J06
* Fix:        Modified the comment section of the NCD segment to       !00113J07
*             specify the correct length.                              !00113J08
* Dependency: Apply fix to DDLGCAFX.                                   !00113J09
* Reference:  ( Retro of BA5P260 from Case #329356 )                   !00113J0A
                                                                       !00113J0B
                                                                       !00113K00
* 20APR2001   jfu/543                                                  !00113K01
* Symptom:    Release 6.0 Enhancements                                 !00113K02
* Problem:    None                                                     !00113K03
* Fix:        Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST      !00113K04
*             fields to the end of the CAFXBASE-DISPLAY section.       !00113K05
* Dependency: Restore Release 6.0 files, modify the appropriate        !00113K06
*             CUSTMACS flags, and run MAKE.                            !00113K07
* Reference:  WO #000101-1  (General Release 6.0)                      !00113K08
                                                                       !00113K09
                                                                       !00113L00
* 17SEP2001   AG/1749                                                  !00113L01
* Symptom:    Uplift BASE24-card to Release 6.0                        !00113L02
* Problem:    This modification has been related to some cases         !00113L03
*             raised by 6.0 Customers. The customer had problem when   !00113L04
*             CAF had alternate Key. The customer experienced the      !00113L05
*             problem because DDL was changed to support Card Segment  !00113L06
*             but the refresh was not changed.                         !00113L07
* Fix:        The following fields have been deleted.                  !00113L08
*             CARD-ALPHA-KEY                                           !00113L09
*             CARD-GENKEY                                              !00113L0A
*             The space that was with these two fields have been       !00113L0B
*             passed to USER-FLD2. So, the USER-FLD2 is now            !00113L0C
*             35 bytes.                                                !00113L0D
* Dependency: Apply fix to REFRS, REFRG and Make.                      !00113L0E
* Reference:  WO # 010801-01                                           !00113L0F
*             Case # 337055, 337105, 337245, 337240                    !00113L0G
                                                                       !00113M00
* 15JAN2002   SP/211                                                   !00113M01
* Symptom:    Offline PIN Management Enhancement 01                    !00113M02
* Problem:    None.                                                    !00113M03
* Fix:        Added new fields in EMVCAFX-DISPLAY: PIN-SYNC-ACT,       !00113M04
*             SEND-PIN-UNBLK and SEND-PIN-CHNG that are to be used     !00113M05
*             in the management of Offline PIN transactions.  Also     !00113M06
*             added extra fields:  ACCESS-SCRIPT-MGMT-SUB-SYS,         !00113M07
*             ISS-APPL-DATA-FRMT and DATA-TAG that are to be used as   !00113M08
*             part of future EMV enhancements.                         !00113M09
* Dependency: Apply fix to DDLFCAF, DDLGCAFX, RQCAFS, SCRNCAF and      !00113M0A
*             run MAKE.                                                !00113M0B
*             Refer to BA60UD06.SCNPPOS2 for a complete listing        !00113M0C
*             of dependencies.                                         !00113M0D
* Reference:  WO #020715-04                                            !00113M0E
                                                                       !00113M0F
                                                                       !00113M0G
                                                                       !00113M0H
                                                                       !00113N00
* 07FEB2003   ME/27                                                    !00113N01
* Symptom:    POS Enhancements.                                        !00113N02
* Problem:    None.                                                    !00113N03
* Fix:        Added enhanced pre-auth extract defintion for CAF.       !00113N04
* Dependency: Apply fix to DDLGCAFX and run MAKE.  Refer to            !00113N05
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00113N06
* Reference:  WO #020606-01                                            !00113N07
                                                                       !00113N08
                                                                       !00113O00
* 15OCT2003   SP/211                                                   !00113O01
* Symptom:    M/Chip 4 support enhancement.                            !00113O02
* Problem:    None.                                                    !00113O03
* Fix:        Updated EMV CAFXD Segment to include action table index  !00113O04
*             field.                                                   !00113O05
* Dependency: Apply fix to DDLFCAF, DDLGCAFX, RQCAFS, SCRNCAF, SVCAFS  !00113O06
*             and run MAKE.                                            !00113O07
*             Refer to BA60UD07.SCNMCHP4 for a complete listing        !00113O08
*             of dependencies.                                         !00113O09
* Reference:  WO #030609-01                                            !00113O0A
                                                                       !00113O0B
                                                                       !00113P00
* 10NOV2003   jfu/543                                                  !00113P01
* Symptom:    Misleading comments for the issuer tranaction profile    !00113P02
*             fields in the ATM and POS segments.                      !00113P03
* Problem:    Same as symptom.                                         !00113P04
* Fix:        Modified the comments for the issuer transaction         !00113P05
*             profile fields in the ATM and POS segments.              !00113P06
* Dependency: Apply fix to DDLGCAFX and run Make.                      !00113P07
* Reference:  Case #349114                                             !00113P08
                                                                       !00113P09
                                                                       !00113N09
                                                                       !00113Q00
* 12OCT2007   SteffeJ                                                  !00113Q01
* Symptom:    CAP Authentication                                       !00113Q02
* Problem:    None.                                                    !00113Q03
* Fix:        Increased the length of CAFXD EMV Segment by 10 bytes.   !00113Q04
*             Added CAP-APSN-1, CAP-DKI-1, CAP-APSN-2, CAP-DKI-2,      !00113Q05
*             BAD-CAP-TKN-OVRRD-FLG, and USER-FLD to the EMV segment   !00113Q06
*             of the CAF Refresh.                                      !00113Q07
* Dependency: Apply fix to DDLGCAFX.  Run Make.                        !00113Q08
*             Refer to BA60UD0B.SCNCAP for a complete listing of       !00113Q09
*             dependencies.                                            !00113Q0A
* Reference:  WO #070307-01                                            !00113Q0B
                                                                       !00113Q0C
* 12OCT2007   RinkC                                                    !00113Q0D
* Symptom:    Length of USER-FLD-ACI is different in DDLGCAFX          !00113Q0E
*             than the corresponding field in DDLFCAF.                 !00113Q0F
* Problem:    None.                                                    !00113Q0G
* Fix:        Added a comment to explain the difference in field       !00113Q0H
*             lengths between the two files.                           !00113Q0I
* Dependency: Apply fix to DDLGCAFX.  Run Make.                        !00113Q0J
* Reference:  Case #441186                                             !00113Q0K
                                                                       !00113Q0L
* 12OCT2007   NataraM                                                  !00113Q0M
* Symptom:    Preferred Transaction.                                   !00113Q0N
* Problem:    None.                                                    !00113Q0O
* Fix:        Added fields to support the new preferred transaction    !00113Q0P
*             segment.                                                 !00113Q0Q
* Dependency: Apply fix to DDLGCAFX.  Run Make.  Refer to              !00113Q0R
*             BA60UD0B.SCNPTXN for a complete listing of dependencies. !00113Q0S
* Reference:  WO #060419-01                                            !00113Q0T
                                                                       !00113Q0U
                                                                       !00113R00
* 17OCT2008   BhattaD                                                  !00113R01
* Symptom:    Support Additional Flexibility in EMV Processing.        !00113R02
* Problem:    None.                                                    !00113R03
* Fix:        Added new SCRIPT-TPLT-TAG and SCRIPT-MAC-LGTH fields     !00113R04
*             to the EMV segment.                                      !00113R05
* Dependency: Apply fix to DDLGCAFX and run MAKE. Refer to             !00113R06
*             BA60UD0C.SCNFLEX for a complete list of dependencies.    !00113R07
* Reference:  WO #080102-02                                            !00113R08
                                                                       !00113R09
********************************************************************** !00113H0B
********************************************************************** !00113H0C
*             Cardholder Authorization File - Refresh Format         * !00113H0D
********************************************************************** !00113H0E
*                                                                    * !00113H0F
*             There are two refresh formats, CAFXD and CAFXB.        * !00113H0G
*                                                                    * !00113H0H
*             CAFXD is used when the PAN and corresponding account   * !00113H0I
*             numbers do not exceed 19 in length.                    * !00113H0J
*                                                                    * !00113H0K
*             CAFXB is used when the PAN and/or account numbers      * !00113H0L
*             exceed 19 characters in length.                        * !00113H0M
*                                                                    * !00113H0N
*             A corresponding marker is in header record for refresh.* !00113H0O
*             If either a PAN or an account number exceeds 19        * !00113H0P
*             position, the tape format is a PIC X(28) field which is* !00113H0Q
*             translated and written as corresponding binary fields  * !00113H0R
*             on the physical disk record (BINARY 16 - length, 2     * !00113H0S
*             BINARY 64 fields and 1 byte of filler.)                * !00113H0T
*                                                                    * !00113H0U
********************************************************************** !00113H0V
                                                                       !00113H0W
                                                                       !00113H0X
                                                                       !00113H0Y
                                                                       !00113H0Z
                                                                       !00139D00
*                                                                      !00139D01
*  Record Segmentation Overview                                        !00139D02
*  ----------------------------                                        !00139D03
*                                                                      !00139D04
*  Many BASE24 files contain segmented records that allow for the      !00139D05
*  integration of various combinations of BASE24 products.  This       !00139D06
*  segmentation affects the refresh input file records in that         !00139D07
*  different segments can be included in the refresh records           !00139D08
*  depending on the combination of BASE24 products in use.             !00139D09
*                                                                      !00139D0A
*  The Refresh process determines the segments that should be present  !00139D0B
*  in a particular input record based on the FIID-SEG-MAP field in     !00139D0C
*  the Base segment of the Institution Definition File (IDF).  When    !00139D0D
*  Refresh processes the Refresh File Header (RFH) for a file,         !00139D0E
*  Refresh reads the IDF record for each institution in the refresh    !00139D0F
*  group.  Refresh builds a table containing the values from the       !00139D0G
*  FIID-SEG-MAP field for each institution.  During refresh            !00139D0H
*  processing, Refresh uses the FIID in the refresh record (the value  !00139D0I
*  from the FIID field from the Base segment of the CAF or NEG, or     !00139D0J
*  from the CRD-ISS field in the Refresh Bank Header (RBH) for PBF     !00139D0K
*  refreshes) to select an entry from the table.  Refresh uses the     !00139D0L
*  entry it selected to parse through the input file record's          !00139D0M
*  segments and to build the appropriate disk segments in the          !00139D0N
*  refreshed file record.                                              !00139D0O
*                                                                      !00139D0P
*  Contained within this DDL source file are a number of               !00139D0Q
*  "definitions" that represent the segments of a refresh input        !00139D0R
*  record.  Some segments correspond to a specific BASE24 product,     !00139D0S
*  while others correspond to a specific BASE24 product feature.  The  !00139D0T
*  Refresh process uses the FIID-SEG-MAP for the appropriate           !00139D0U
*  institution in order to determine which segments are present in     !00139D0V
*  the input record, and from the input data, which segments must be   !00139D0W
*  present in the disk record.                                         !00139D0X
*                                                                      !00139D0Y
*                                                                      !00139D0Z
*  Variable Length Segments                                            !00139D10
*  ------------------------                                            !00139D11
*                                                                      !00139D12
*  Some segments store data that is not required for every disk        !00139D13
*  record.  For example, if an institution supports preauthorized      !00139D14
*  holds and stores the hold information in the CAF, not every CAF     !00139D15
*  record for that institution will include a Preauthorized Holds      !00139D16
*  segment.  Likewise, not every CAF refresh record for that           !00139D17
*  institution will include a Preauthorized Holds segment.  The        !00139D18
*  segment, whether in the database or in the refresh input file,      !00139D19
*  only contains data if that individual CAF record has preauthorized  !00139D1A
*  holds associated with it.  For records that do not have             !00139D1B
*  preauthorized holds associated with them, the refresh record        !00139D1C
*  segment contains only a length and count field.  The segment will   !00139D1D
*  not be present in the corresponding refreshed disk record.          !00139D1E
*                                                                      !00139D1F
*  The following table summarizes the variable length segments that    !00139D1G
*  can be present within the refresh input file and how to set the     !00139D1H
*  LGTH field for the segment if the FIID-SEG-MAP field in the IDF     !00139D1I
*  indicates the institution uses the segment.  The LGTH field value   !00139D1J
*  is set at the individual record level, based on whether the         !00139D1K
*  segment contains data for the record.                               !00139D1L
*                                                                      !00139D1M
*                            LGTH Field Setting                        !00139D1N
*  CAFX Segment               No Data     Data                         !00139D1O
*  -------------------        -------     ----                         !00139D1P
*  ssbbcafx-display           0004        0184                         !00139D1Q
*  preauthcafx-display        0006@       based on number of holds     !00139D1R
*  acctcafx-display           0006@       based on number of accounts  !00139D1S
*                                                                      !00139D1T
*                                                                      !00139D1U
*  @ Includes a pre-auth-cnt or acct-cnt value of "00".                !00139D1V
*                                                                      !00139D1W
*  For further information on the setting of field values, please      !00139D1X
*  refer to the appropriate segment definition within this file.       !00139D1Y
*                                                                      !00139D1Z
********************************************************************** !00139D20
                                                                       !00139D21
                                                                       !00140
                                                                       !00141
                                                                       !00141D00
                                                                       !00141D01
                                                                       !00141D02
                                                                       !00168
?page "CAFXD - Cardholder Authorization File Refresh Format (DISPLAY)"
?section CAFXBASE-DISPLAY
                                                                       !00173
?comments
*             The following fields make up the Base segment of the    !!00176
*             Cardholder Authorization File (CAF) Refresh Format.     !!00177
                                                                       !00178
DEFINITION CAFXBASE-DISPLAY.                                           !00179
                                                                       !00180
                                                                       !00181
*                                                                     !!00182
*             The length of the Base segment.  The value in this      !!00183
                                                                       !00184K00
*             field must be set to 0346.                              !!00184K01
                                                                       !00184K02
*                                                                     !!00185
 02 LGTH                       PIC 9(4).                               !00186
                                                                       !00187
                                                                       !00188
*                                                                     !!00189
*             A record number indicating the position of this record  !!00190
*             on the refresh tape.  The value in this field should    !!00191
*             always be one greater than that for the previous record !!00192
*             on the tape.                                            !!00193
*                                                                     !!00194
*             Header and trailer records must be reflected in this    !!00195
*             count as well as individual CAF records.                !!00196
*                                                                     !!00197
 02 CNT                        PIC 9(9).                               !00198
                                                                       !00199
*                                                                     !!00200
*             The primary key of the file record.                     !!00201
*                                                                     !!00202
 02 PRIKEY.                                                            !00203
                                                                       !00204
                                                                       !00205
                                                                       !00206
*                                                                     !!00207
*             The Primary Account Number (PAN), as it appears in      !!00208
*             Track 2 of the card.  The entry in this field is left-  !!00209
*             justified and blank-filled to the right.                !!00210
*                                                                     !!00211
   04 PAN                      PIC X(19).                              !00212
                                                                       !00213
                                                                       !00214
*                                                                     !!00215
*             The member number for the card.  If member numbers are  !!00216
*             not used, the value in this field must be set to 000.   !!00217
*                                                                     !!00218
   04 MBR-NUM                  TYPE *.                                 !00219
                                                                       !00220
                                                                       !00221
*                                                                     !!00222
*             A code indicating the operation to be performed on the  !!00223
*             CAF record.  Valid values are:                          !!00224
*                                                                     !!00225
*             A = Add                                                 !!00226
*             C = Change                                              !!00227
*             D = Delete                                              !!00228
*             F = Full-file change                                    !!00229
*                                                                     !!00230
*             Values of A, C, and D are intended for use with         !!00231
*             partial-file refreshes.  The value F is required for    !!00232
*             full-file refreshes.                                    !!00233
*                                                                     !!00234
 02 REC-TYP                    PIC X.                                  !00235
                                                                       !00236
*                                                                     !!00237
*             One- or two-character codes are used to identify card   !!00238
*             types in files throughout BASE24.  The same codes must  !!00239
*             be used for a particular card type in all of the files. !!00240
*             These codes are also used to identify service types in  !!00241
*             BASE24-pos.  Codes used in this field are either        !!00242
*             reserved by BASE24 or user-defined. Reserved codes are  !!00243
*             to be used only as defined, and include:                !!00244
*                                                                     !!00245
*             AD = Administrative (BASE24-atm only)                   !!00246
*             AX = American Express credit                            !!00247
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00248
*                  only)                                              !!00249
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00250
*                  CC-CZ)                                             !!00251
*             CB = Carte Blanche credit                               !!00252
*             D  = Demonstration (BASE24-atm only)                    !!00253
*             DC = Diners Club credit                                 !!00254
*             DS = Discover (Sears) credit                            !!00255
*             M  = MasterCard credit                                  !!00256
*             MD = MasterCard debit (See BASE24-pos note below)       !!00257
*             MM = MasterCard dual (See BASE24-pos note below)        !!00258
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00259
*             SC = Special, Check (BASE24-pos only)                   !!00260
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00261
*                  Check Application only)                            !!00262
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00263
*                  Application only)                                  !!00264
*             V  = VISA credit                                        !!00265
*             VD = VISA debit (See BASE24-pos note below)             !!00266
*             VV = VISA dual (See BASE24-pos note below)              !!00267
*                                                                     !!00268
*             Codes with a first character of C, except code CB, are  !!00269
*             recommended to identify private label credit cards.     !!00270
*                                                                     !!00271
*             Codes with a first character of P are required to       !!00272
*             identify proprietary debit cards.  BASE24 treats cards  !!00273
*             with proprietary debit codes and codes MD and VD as     !!00274
*             debit cards and treats cards with all other codes as    !!00275
*             credit cards.                                           !!00276
*                                                                     !!00277
*             Administrative (AD), Business deposit (BD),             !!00278
*             Demonstration (D), Special purpose (SP), and Super      !!00279
*             teller (ST) are special-use card types used by          !!00280
*             BASE24-atm.                                             !!00281
*                                                                     !!00282
*             Business deposit (BD) is also a special-use card type   !!00283
*             used by BASE24-teller to identify cards that can only   !!00284
*             be used to initiate deposit transactions.               !!00285
*             BASE24-teller does not perform any other processing     !!00286
*             based on card type; however, BASE24 guidelines should   !!00287
*             still be used when establishing card types for          !!00288
*             BASE24-teller.                                          !!00289
*                                                                     !!00290
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00291
*             processed as debit or credit card types, based on the   !!00292
*             default combo card type specified in the CPF.           !!00293
*                                                                     !!00294
*             Special, Check (SC) is a special-use card type used to  !!00295
*             initiate BASE24-pos check guarantee and check           !!00296
*             verification transactions only.                         !!00297
*                                                                     !!00298
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00299
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00300
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00301
*             BASE24-pos automatically includes the MD and MM card    !!00302
*             types with the MasterCard credit (M) card type, and     !!00303
*             automatically includes the VD and VV card types with    !!00304
*             the VISA credit (V) card type.                          !!00305
*                                                                     !!00306
*             User-defined Codes:  The user can add any one- or two-  !!00307
*             character code not included in the reserved code list   !!00308
*             above, according to the following guidelines:           !!00309
*                                                                     !!00310
*             o  The first character must be alphabetic (A, B, D-O,   !!00311
*                and Q-Z).                                            !!00312
*                                                                     !!00313
*             o  The second character can be A-Z, 0-9, or a blank.    !!00314
*                                                                     !!00315
*             o  A valid COBNAMES table entry is recommended for each !!00316
*                user-defined code.                                   !!00317
*                                                                     !!00318
 02 CRD-TYP                    PIC XX.                                 !00319
                                                                       !00320
                                                                       !00321
*                                                                     !!00322
*             The FIID of the institution that issued the card        !!00323
*             associated with the CAF record.                         !!00324
*                                                                     !!00325
 02 FIID                       TYPE *.                                 !00326
                                                                       !00327
                                                                       !00328
                                                                       !00329
                                                                       !00330
*                                                                     !!00331
*             A code indicating the status of the card.  Values are:  !!00332
*                                                                     !!00333
*             0 = Issued but not active--no transactions allowed      !!00334
*             1 = Open--transactions allowed                          !!00335
*             2 = Lost--no transactions allowed                       !!00336
*             3 = Stolen--no transaction allowed                      !!00337
*             4 = Restricted--no withdrawals allowed                  !!00338
*             5 = VIP--transaction allowed                            !!00339
*             6 = Check reason code--see note below                   !!00340
*             9 = Closed--no transactions allowed                     !!00341
*             A = Referral--see note below                            !!00342
*             B = Maybe--see note below                               !!00343
*             C = Denial-see note below                               !!00344
*             D = Signature restricted--see note below                !!00345
*             E = Country club--see note below                        !!00346
*             F = Expired--see note below                             !!00347
*             G = Commercial--see note below                          !!00348
*                                                                     !!00349
*             Status code 6 is a status code used exclusively by      !!00350
*             BASE24-pos, whereby the value in the RSN-CDE field in   !!00351
*             the BASE24-pos segment must be checked to determine the !!00352
*             status of the card.  Outside of BASE24-pos, no          !!00353
*             transactions are allowed on cards with this status, and !!00354
*             the card is returned.                                   !!00355
*                                                                     !!00356
*             Status codes "A" - "G" are used primarily by            !!00357
*             BASE24-teller and BASE24-pos where these status codes   !!00358
*             may be used to inform the teller or operator to         !!00359
*             perform some additional action in order to authorize    !!00360
*             the transaction (e.g. obtain signature, call for        !!00361
*             authorization, etc.).  BASE24-atm transactions are not  !!00362
*             not allowed on cards with these status codes and the    !!00363
*             card is returned.                                       !!00364
                                                                       !00365
 02 CRD-STAT                   PIC X.                                  !00366
                                                                       !00367
                                                                       !00368
*                                                                     !!00369
*             The cardholder's PIN offset, PIN verification key       !!00370
*             indicator, PIN verification value, or PIN verification  !!00371
*             number, depending on the type of PIN verification       !!00372
*             performed.                                              !!00373
*                                                                     !!00374
 02 PIN-OFST                   PIC X(16).                              !00375
                                                                       !00376
                                                                       !00377
*                                                                     !!00378
*             The maximum amount of purchases and cash withdrawals    !!00379
*             allowed against non-credit accounts during a single     !!00380
*             usage accumulation period.  This amount must be in      !!00381
*             whole currency units.                                   !!00382
*                                                                     !!00383
 02 TTL-WDL-LMT                PIC 9(12).                              !00384
                                                                       !00385
                                                                       !00386
*                                                                     !!00387
*             The maximum amount of purchases and cash withdrawals    !!00388
*             allowed offline against non-credit accounts during a    !!00389
*             single usage accumulation period.  This amount must be  !!00390
*             in whole currency units.                                !!00391
*                                                                     !!00392
*             The value in this field is only used with Authorization !!00393
*             level 3 (online/offline), where the authorizing host is !!00394
*             unavailable and BASE24 performs stand-in authorization. !!00395
*                                                                     !!00396
 02 OFFL-WDL-LMT                PIC 9(12).                             !00397
                                                                       !00398
                                                                       !00399
*                                                                     !!00400
*             The maximum amount of cash advances allowed against     !!00401
*             credit accounts during a single usage accumulation      !!00402
*             period.  This amount must be in whole currency units.   !!00403
*                                                                     !!00404
 02 TTL-CCA-LMT                 PIC 9(12).                             !00405
                                                                       !00406
                                                                       !00407
                                                                       !00408
*                                                                     !!00409
*             The maximum amount of cash advances allowed offline     !!00410
*             against credit accounts during a single usage           !!00411
*             accumulation period.  This amount must be in whole      !!00412
*             currency units.                                         !!00413
*                                                                     !!00414
*             The value in this field is only used with Authorization !!00415
*             level 3 (online/offline), where the authorizing host is !!00416
*             unavailable and BASE24 performs stand-in authorization. !!00417
*                                                                     !!00418
 02 OFFL-CCA-LMT                PIC 9(12).                             !00419
                                                                       !00420
                                                                       !00421
*                                                                     !!00422
*             The maximum aggregate amount of cash disbursements      !!00423
*             allowed against credit and non-credit accounts during a !!00424
*             single usage accumulation period, plus purchases        !!00425
*             allowed against non-credit accounts during a single     !!00426
*             usage accumulation period.  This amount must be in      !!00427
*             whole currency units.                                   !!00428
*                                                                     !!00429
 02 AGGR-LMT                    PIC 9(12).                             !00430
                                                                       !00431
                                                                       !00432
*                                                                     !!00433
*             The maximum aggregate amount of cash disbursements      !!00434
*             allowed offline against credit and non-credit accounts  !!00435
*             during a single usage accumulation period, plus         !!00436
*             purchases allowed offline against non-credit accounts   !!00437
*             during a single usage accumulation period.  This amount !!00438
*             must be in whole currency units.                        !!00439
*                                                                     !!00440
*             The value in this field is only used with Authorization !!00441
*             level 3 (online/offline), where the authorizing host is !!00442
*             unavailable and BASE24 performs stand-in authorization. !!00443
*                                                                     !!00444
 02 OFFL-AGGR-LMT               PIC 9(12).                             !00445
                                                                       !00446
                                                                       !00447
                                                                       !00448
*                                                                     !!00449
*             The date (YYMMDD) the card was first used in the        !!00450
*             system.                                                 !!00451
*                                                                     !!00452
 02 FIRST-USED-DAT              PIC X(6).                              !00453
                                                                       !00454
                                                                       !00455
*                                                                     !!00456
*             The date (YYMMDD) the usage accumulation totals in the  !!00457
*             Base segment of the CAF record were last cleared.       !!00458
*                                                                     !!00459
 02 LAST-RESET-DAT              PIC X(6).                              !00460
                                                                       !00461
                                                                       !00462
*                                                                     !!00463
*             The expiration date (YYMM) of the card.  If the card    !!00464
*             has expired, the account is considered closed.          !!00465
*                                                                     !!00466
 02 EXP-DAT                     PIC 9(4).                              !00467
                                                                       !00467I00
*                                                                      !00467I01
*             The date the card becomes effective. Format (YYMM).      !00467I02
                                                                       !00467I03
 02 EFFECTIVE-DAT               PIC X(4).                              !00467I04
                                                                       !00467I05
*             This field is not used and should be blank filled.       !00467I06
                                                                       !00467I07
 02 USER-FLD1                   PIC X.                                 !00467I08
                                                                       !00467I09
*             These fields are related to a re-issued card where       !00467I0A
*             the same logical card is used but a different            !00467I0B
*             physical card.                                           !00467I0C
                                                                       !00467I0D
 02 SCND-CRD-DATA.                                                     !00467I0E
                                                                       !00467I0F
*             The expiration date (YYMM) of the second card.           !00467I0G
                                                                       !00467I0H
    04 EXP-DAT-2                PIC 9(4).                              !00467I0I
                                                                       !00467I0J
*             The date the second card becomes effective.              !00467I0K
*             Format (YYMM).                                           !00467I0L
                                                                       !00467I0M
    04 EFFECTIVE-DAT-2          PIC X(4).                              !00467I0N
                                                                       !00467I0O
*             The card status of the second card.                      !00467I0P
                                                                       !00467I0Q
    04 CRD-STAT-2               PIC X.                                 !00467I0R
                                                                       !00467I0S
*             This field is not used and should be blank filled.       !00467I0T
                                                                       !00467I0U
                                                                       !00467L00
 02 USER-FLD2                   PIC X(35).                             !00467L01
                                                                       !00467L02
                                                                       !00467L03
                                                                       !00467L04
                                                                       !00467L05
                                                                       !00467K00
*             USER-FLD-ACI is reserved for future BASE24 product use   !00467K01
*             only. The designation of "product use only" provides     !00467K02
*             ACI with the ability to deplete the number of bytes      !00467K03
*             available within USER-FLD-ACI as product enhancements    !00467K04
*             are introduced.  When product enhancements require the   !00467K05
*             addition of new fields within this file, the procedure   !00467K06
*             to be followed is to deplete bytes from USER-FLD-ACI     !00467K07
*             and use that number of bytes to define new fields. The   !00467K08
*             new field definition(s) should precede the               !00467K09
*             USER-FLD-ACI field.                                      !00467K0A
                                                                       !00467Q00
*             The length of this field may not match the length of     !00467Q01
*             the corresponding field in DDLFCAF.  This field cannot   !00467Q02
*             be decreased for fields defined in DDLFCAF that are not  !00467Q03
*             part of the CAF Refresh format.  Decreasing this field   !00467Q04
*             in that case will shorten the overall record length.     !00467Q05
                                                                       !00467Q06
                                                                       !00467K0B
  02 USER-FLD-ACI                 PIC X(50).                           !00467K0C
                                                                       !00467K0D
*             USER-FLD-REGN is reserved for ACI regional use only.     !00467K0E
*             Only ACI regions are allowed to use USER-FLD-REGN space. !00467K0F
                                                                       !00467K0G
  02 USER-FLD-REGN                PIC X(50).                           !00467K0H
                                                                       !00467K0I
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !00467K0J
*             Only customers are allowed to use USER-FLD-CUST space.   !00467K0K
                                                                       !00467K0L
  02 USER-FLD-CUST                PIC X(50).                           !00467K0M
                                                                       !00467K0N
                                                                       !00467K0O
                                                                       !00467K0P
                                                                       !00467K0Q
                                                                       !00467K0R
END                                                                    !00474
                                                                       !00475
?page "ATM CAFXD Segment"
?section ATMCAFX-DISPLAY
*             The following fields make up the ATM segment of the     !!00480
*             Cardholder Authorization File (CAF) Refresh Format.     !!00481
                                                                       !00482
DEFINITION ATMCAFX-DISPLAY.                                            !00483
                                                                       !00484
                                                                       !00485
*                                                                     !!00486
                                                                       !00486D00
*             The length of the BASE24-atm segment.  The value in      !00486D01
                                                                       !00486H00
*             this field must be set to 0088.  This is an optional     !00486H01
                                                                       !00486H02
*             segment controlled at the FIID level via the IDF         !00486D03
*             FIID-SEG-MAP.                                            !00486D04
                                                                       !00486D05
                                                                       !00487D00
                                                                       !00487D01
                                                                       !00487D02
*                                                                     !!00489
 02 LGTH                          PIC 9(4).                            !00490
                                                                       !00491
                                                                       !00492
                                                                       !00493
*                                                                     !!00494
*             The maximum number of times the card may be used to     !!00495
*             withdraw cash via BASE24-atm during a single usage      !!00496
*             accumulation period.                                    !!00497
*                                                                     !!00498
 02 USE-LMT                        PIC 9(4).                           !00499
                                                                       !00500
                                                                       !00501
*                                                                     !!00502
*             The maximum amount of cash withdrawals allowed against  !!00503
*             non-credit accounts via BASE24-atm during a single      !!00504
*             usage accumulation period.  This amount must be in      !!00505
*             whole currency units.                                   !!00506
*                                                                     !!00507
 02 TTL-WDL-LMT                   PIC 9(12).                           !00508
                                                                       !00509
                                                                       !00510
*                                                                     !!00511
*             The maximum amount of cash withdrawals allowed offline  !!00512
*             against non-credit accounts via BASE24-atm during a     !!00513
*             single usage accumulation period.  This amount must be  !!00514
*             in whole currency units.                                !!00515
*                                                                     !!00516
*             The value in this field is only used with Authorization !!00517
*             level 3 (online/offline), where the authorizing host is !!00518
*             unavailable and BASE24 performs stand-in authorization. !!00519
*                                                                     !!00520
 02 OFFL-WDL-LMT                   PIC 9(12).                          !00521
                                                                       !00522
                                                                       !00523
*                                                                     !!00524
*             The maximum amount of cash advances allowed against     !!00525
*             credit accounts via BASE24-atm during a single usage    !!00526
*             accumulation period.  This amount must be in whole      !!00527
*             currency units.                                         !!00528
*                                                                     !!00529
 02 TTL-CCA-LMT                    PIC 9(12).                          !00530
                                                                       !00531
                                                                       !00532
*                                                                     !!00533
*             The maximum amount of cash advances allowed offline     !!00534
*             against credit accounts via BASE24-atm during a single  !!00535
*             usage accumulation period.  This amount must be in      !!00536
*             whole currency units.                                   !!00537
*                                                                     !!00538
*             The value in this field is only used with Authorization !!00539
*             level 3 (online/offline), where the authorizing host is !!00540
*             unavailable and BASE24 performs stand-in authorization. !!00541
*                                                                     !!00542
 02 OFFL-CCA-LMT                   PIC 9(12).                          !00543
                                                                       !00544
                                                                       !00545
*                                                                     !!00546
*             The maximum amount of deposit credit the cardholder is  !!00547
*             allowed during a single usage accumulation period.      !!00548
*             This amount must be in whole currency units.            !!00549
*                                                                     !!00550
 02 DEP-CR-LMT                     PIC 9(10).                          !00551
                                                                       !00552
                                                                       !00553
*                                                                     !!00554
*             The date (YYMMDD) the card was last used via BASE24-    !!00555
*             atm.  The date in this field should be less than the    !!00556
*             beginning date of the current withdrawal period.        !!00557
*             (Refresh does not verify this, however.)                !!00558
*                                                                     !!00559
 02 LAST-USED                      PIC 9(6).                           !00560
                                                                       !00561
                                                                       !00561H00
*                                                                      !00561H01
*             Profile used as part of the key to read the IPCF         !00561H02
                                                                       !00561P00
*             to determine if the cardholder is allowed by the         !00561P01
*             issuer for this cardholder.                              !00561P02
                                                                       !00561P03
                                                                       !00561P04
                                                                       !00561P05
*                                                                      !00561H05
 02 ISS-TXN-PRFL                   TYPE PRFL.                          !00561H06
                                                                       !00561H07
END                                                                    !00562
                                                                       !00563
                                                                       !00564
?page "POS CAFXD Segment"
?section POSCAFX-DISPLAY
*             The following fields make up the POS segment of the     !!00569
*             Cardholder Authorization File (CAF) Refresh Format.     !!00570
                                                                       !00571
 DEFINITION POSCAFX-DISPLAY.                                           !00572
                                                                       !00573
                                                                       !00574
*                                                                     !!00575
                                                                       !00575D00
*             The length of the BASE24-pos segment.  The value in      !00575D01
                                                                       !00575H00
*             this field must be 0140.  This is an optional segment    !00575H01
                                                                       !00575H02
*             controlled at the FIID level via the IDF FIID-SEG-MAP.   !00575D03
                                                                       !00575D04
                                                                       !00576D00
                                                                       !00576D01
                                                                       !00576D02
*                                                                     !!00578
 02 SEGX-LGTH                    TYPE *.                               !00579
                                                                       !00580
                                                                       !00581
*                                                                     !!00582
*             The maximum amount of purchases allowed against credit  !!00583
*             accounts via BASE24-pos during a single usage           !!00584
*             accumulation period.  This amount must be in whole      !!00585
*             currency units.                                         !!00586
*                                                                     !!00587
 02 TTL-PUR-LMT                  PIC 9(12).                            !00588
                                                                       !00589
                                                                       !00590
*                                                                     !!00591
*             The maximum amount of purchases allowed offline against !!00592
*             credit accounts via BASE24-pos during a single usage    !!00593
*             accumulation period.  This amount must be in whole      !!00594
*             currency units.                                         !!00595
*                                                                     !!00596
*             The value in this field is only used with Authorization !!00597
*             level 3 (online/offline), where the authorizing host is !!00598
*             unavailable and BASE24 performs stand-in authorization. !!00599
*                                                                     !!00600
 02 OFFL-PUR-LMT                 PIC 9(12).                            !00601
                                                                       !00602
                                                                       !00603
*                                                                     !!00604
*             The maximum amount of cash advances allowed against     !!00605
*             credit accounts via BASE24-pos during a single usage    !!00606
*             accumulation period.  This amount must be in whole      !!00607
*             currency units.                                         !!00608
*                                                                     !!00609
 02 TTL-CCA-LMT                  PIC 9(12).                            !00610
                                                                       !00611
                                                                       !00612
*                                                                     !!00613
*             The maximum amount of cash advances allowed offline     !!00614
*             against credit accounts via BASE24-pos during a single  !!00615
*             usage accumulation period.  This amount must be in      !!00616
*             whole currency units.                                   !!00617
*                                                                     !!00618
*             The value in this field is only used with Authorization !!00619
*             level 3 (online/offline), where the authorizing host is !!00620
*             unavailable and BASE24 performs stand-in authorization. !!00621
*                                                                     !!00622
 02 OFFL-CCA-LMT                 PIC 9(12).                            !00623
                                                                       !00624
                                                                       !00625
*                                                                     !!00626
*             The maximum amount of purchases and cash withdrawals    !!00627
*             allowed against non-credit accounts via BASE24-pos      !!00628
*             during a single usage accumulation period.  This amount !!00629
*             must be in whole currency units.                        !!00630
*                                                                     !!00631
 02 TTL-WDL-LMT                  PIC 9(12).                            !00632
                                                                       !00633
                                                                       !00634
*                                                                     !!00635
*             The maximum amount of purchases and cash withdrawals    !!00636
*             allowed offline against non-credit accounts via BASE24- !!00637
*             pos during a single usage accumulation period.  This    !!00638
*             amount must be in whole currency units.                 !!00639
*                                                                     !!00640
*             The value in this field is only used with Authorization !!00641
*             level 3 (online/offline), where the authorizing host is !!00642
*             unavailable and BASE24 performs stand-in authorization. !!00643
*                                                                     !!00644
 02 OFFL-WDL-LMT                 PIC 9(12).                            !00645
                                                                       !00646
                                                                       !00647
*                                                                     !!00648
*             The maximum number of times the card may be used via    !!00649
*             BASE24-pos during a single usage accumulation period.   !!00650
*                                                                     !!00651
 02 USE-LMT                      PIC 9(4).                             !00652
                                                                       !00653
                                                                       !00654
*                                                                     !!00655
                                                                       !00655I00
*             The maximum amount of refunds/replenishment credit that  !00655I01
*             can be received during a single usage accumulation       !00655I02
*             period.  This amount must be in whole currency units.    !00655I03
                                                                       !00655I04
                                                                       !00656I00
                                                                       !00656I01
                                                                       !00656I02
*                                                                     !!00659
 02 TTL-RFND-CR-LMT              PIC 9(12).                            !00660
                                                                       !00661
                                                                       !00662
*                                                                     !!00663
                                                                       !00663I00
*             The maximum amount of refunds/replenishment credits      !00663I01
*             that can be received offline during a single usage       !00663I02
*             accumulation period. This amount must be in whole        !00663I03
*             currency units.                                          !00663I04
                                                                       !00663I05
                                                                       !00664I00
                                                                       !00664I01
                                                                       !00664I02
*                                                                     !!00667
*             The value in this field is only used with Authorization !!00668
*             level 3 (online/offline), where the authorizing host is !!00669
*             unavailable and BASE24 performs stand-in authorization. !!00670
*                                                                     !!00671
 02 OFFL-RFND-CR-LMT             PIC 9(12).                            !00672
                                                                       !00673
                                                                       !00674
*                                                                     !!00675
*             A code indicating the reason the card is restricted.    !!00676
*             Valid values are:                                       !!00677
*                                                                     !!00678
*             A = Referral                                            !!00679
*             B = Maybe                                               !!00680
*             C = Denial                                              !!00681
*             D = Signature restricted                                !!00682
*             E = Country club                                        !!00683
*             F = Expired                                             !!00684
*             G = Commercial                                          !!00685
*                                                                     !!00686
 02 RSN-CDE                      PIC X.                                !00687
                                                                       !00688
                                                                       !00689
*                                                                     !!00690
*             The date (YYMMDD) the card was last used via BASE24-    !!00691
*             pos.  The date in this field should be less than the    !!00692
*             beginning date of the current withdrawal period.        !!00693
*             (Refresh does not verify this, however.)                !!00694
*                                                                     !!00695
 02 LAST-USED                      PIC 9(6).                           !00696
                                                                       !00697
*                                                                     !!00698
*             This field is not used and should be blank filled.      !!00699
*                                                                     !!00700
 02 USER-FLD2                      PIC X.                              !00701
                                                                       !00701H00
                                                                       !00701H01
*                                                                      !00701H02
*             Profile used as part of the key to read the IPCF         !00701H03
                                                                       !00701P00
*             to determine if the cardholder is allowed by the         !00701P01
*             issuer for this cardholder.                              !00701P02
                                                                       !00701P03
                                                                       !00701P04
                                                                       !00701P05
*                                                                      !00701H06
 02 ISS-TXN-PRFL                   TYPE PRFL.                          !00701H07
                                                                       !00701H08
                                                                       !00702
END                                                                    !00703
                                                                       !00704
                                                                       !00704I00
?page "EMV CAFXD Segment"
?section EMVCAFX-DISPLAY
*                                                                      !00704I05
*             The following fields make up the Europay, MasterCard     !00704I06
*             and Visa (EMV) segment of the Cardholder Authorization   !00704I07
*             File (CAF) Refresh Format.                               !00704I08
                                                                       !00704I09
DEFINITION EMVCAFX-DISPLAY.                                            !00704I0A
                                                                       !00704I0B
*             This field contains the segment length.                  !00704I0C
                                                                       !00704I0D
 02 SEGX-LGTH                       PIC 9(4).                          !00704I0E
                                                                       !00704I0F
*             This field contains the Application Transaction Sequence !00704I0G
*             Number Limit.                                            !00704I0H
                                                                       !00704I0I
 02 ATC-LMT                         PIC 9(4).                          !00704I0J
                                                                       !00704M00
*             This field determines whether a Card Block script        !00704M01
*             should be sent to the device.  Valid values are:         !00704M02
*                                                                      !00704M03
*             N = Do not send CARD BLOCK script command                !00704M04
*             Y = Send CARD BLOCK script command.                      !00704M05
                                                                       !00704M06
                                                                       !00704M07
                                                                       !00704M08
                                                                       !00704M09
 02 SEND-CRD-BLK                    PIC X(1).                          !00704I0O
                                                                       !00704M0A
*             This field determines whether a PUT script command       !00704M0B
*             should be sent to the device.  Valid values are:         !00704M0C
*                                                                      !00704M0D
*             N = Do not send PUT DATA script command                  !00704M0E
*             Y = Send PUT DATA script command.                        !00704M0F
                                                                       !00704M0G
                                                                       !00704M0H
                                                                       !00704M0I
                                                                       !00704M0J
 02 SEND-PUT-DATA                   PIC X(1).                          !00704I0T
                                                                       !00704I0U
*             Velocity Limits for the card.                            !00704I0V
                                                                       !00704I0W
 02 VLCTY-LMTS.                                                        !00704I0X
                                                                       !00704I0Y
*             This field is the lower consecutive off-line limit and   !00704I0Z
*             is used in the PUT DATA script command.                  !00704I10
                                                                       !00704I11
   04 LWR-CONSEC-LMT                PIC 9(4).                          !00704I12
                                                                       !00704I13
*             This field is not used.                                  !00704I14
                                                                       !00704I15
   04 USER-FLD2                     PIC X(4).                          !00704I16
                                                                       !00704M0K
*             The EMV Tag of the data element included in the          !00704M0L
*             PUT DATA script command, contains hexadecimal value.     !00704M0M
                                                                       !00704M0N
   04 DATA-TAG                      REDEFINES USER-FLD2                !00704M0O
                                    PIC X(4).                          !00704M0P
*             This field indicates the circumstances under which a     !00704M0Q
*             "PIN Unblock" script command will be generated and       !00704M0R
*             returned by BASE24-atm.  Valid values are:               !00704M0S
*                                                                      !00704M0T
*             0 - No action required (this is the current processing)  !00704M0U
*             1 - Implicit (an EMV transaction indicates that the      !00704M0V
*                 offline bad PIN try limit has been exceeded)         !00704M0W
*             2 - Explicit (an EMV PIN Unblock transaction is          !00704M0X
*                 received)                                            !00704M0Y
*             3 - Implicit and Explicit (an EMV transaction indicates  !00704M0Z
*                 that the offline bad PIN try limit has been          !00704M0a
*                 exceeded or an EMV PIN Unblock transaction is        !00704M0b
*                 received).                                           !00704M0c
                                                                       !00704M0d
 02 SEND-PIN-UNBLK                  PIC X.                             !00704M0e
                                                                       !00704M0f
*             This field indicates the circumstances under which a     !00704M0g
*             "PIN Change" script command will be generated and        !00704M0h
*             returned by BASE24-atm.  Valid values are:               !00704M0i
*                                                                      !00704M0j
*             0 - Do not send script (current processing)              !00704M0k
*             1 - An EMV PIN Unblock transaction is received           !00704M0l
*             2 - An EMV PIN Change transaction is received            !00704M0m
*             3 - An EMV PIN Unblock transaction or an EMV PIN Change  !00704M0n
*                 transaction is received.                             !00704M0o
                                                                       !00704M0p
 02 SEND-PIN-CHNG                   PIC X.                             !00704M0q
                                                                       !00704M0r
*             This field indicates whether synchronisation of the      !00704M0s
*             online and offline PIN is required for the card.  Valid  !00704M0t
*             values are:                                              !00704M0u
*                                                                      !00704M0v
*             0 = PIN synchronisation not required (current            !00704M0w
*                 processing)                                          !00704M0x
*             1 = PIN synchronisation required.                        !00704M0y
                                                                       !00704M0z
 02 PIN-SYNC-ACT                    PIC X.                             !00704M10
                                                                       !00704M11
*             This field indicates when to access the Script           !00704M12
*             Management Sub-System.  Valid values are:                !00704M13
*                                                                      !00704M14
*             0 - Do not send script Management Sub-System             !00704M15
*             1 - Access Script Management Sub-System.                 !00704M16
                                                                       !00704M17
 02 ACCESS-SCRIPT-MGMT-SUB-SYS      PIC X.                             !00704M18
                                                                       !00704O00
*             The Issuer Application Data Format type specifies the    !00704O01
*             format of the EMV Issuer Application Data that will be   !00704O02
*             used for this card prefix.  A number of predefined       !00704O03
*             formats for Issuer Application Data exist, as specified  !00704O04
*             by the Payment Associations (VISA and Mastercard/        !00704O05
*             Europay), but Issuer specific layouts may also be        !00704O06
*             defined.  Issuer Application Data typically contains     !00704O07
*             information which is used in the derivation of the       !00704O08
*             Application Crytogram.  Valid values are:                !00704O09
                                                                       !00704O0A
                                                                       !00704O0B
                                                                       !00704O0C
*             0       Use the current value defined in CAF Issuer      !00704O0D
*                     Application Data Format field                    !00704O0E
*                                                                      !00704O0F
*             3       Issuer Application Data format as recommended    !00704O0G
*                     for Mastercard/Europay (M/Chip 4 format) cards.  !00704O0H
                                                                       !00704O0I
                                                                       !00704M1E
 02 ISS-APPL-DATA-FRMT              PIC X.                             !00704M1F
                                                                       !00704M1G
                                                                       !00704O0J
                                                                       !00704O0K
*             This field is used to identify which of the preset       !00704O0L
*             rules for status field processing are to be used         !00704O0M
*             for this Card scheme.  The decision array which          !00704O0N
*             defines the action to be taken based on the CVR (Card    !00704O0O
*             Verification Results) is pre-configured in an EDIT file  !00704O0P
*             (CVRTBLS), sourced in to the EMV authorization           !00704O0Q
*             modules at compile time.  Four different arrays are      !00704O0R
*             supported to cater for the processing requirements       !00704O0S
*             of different card schemes.  This field is used to        !00704O0T
*             select the appropriate array for the card scheme.        !00704O0U
*             Valid values are 1 to 4.                                 !00704O0V
                                                                       !00704O0W
 02 ACTION-TABLE-INDEX              PIC X.                             !00704O0X
                                                                       !00704O0Y
                                                                       !00704Q00
*             This field contains the CAP Application PAN Sequence     !00704Q01
*             Number (APSN) of the primary card.                       !00704Q02
                                                                       !00704Q03
 02 CAP-APSN-1                      PIC X(2).                          !00704Q04
                                                                       !00704Q05
*             This field contains the CAP Derivation Key Index (DKI)   !00704Q06
*             of the primary card.                                     !00704Q07
                                                                       !00704Q08
 02 CAP-DKI-1                       PIC X(2).                          !00704Q09
                                                                       !00704Q0A
*             This field contains the CAP Application PAN Sequence     !00704Q0B
*             Number (APSN) of the secondary card.                     !00704Q0C
                                                                       !00704Q0D
 02 CAP-APSN-2                      PIC X(2).                          !00704Q0E
                                                                       !00704Q0F
*             This field contains the CAP Derivation Key Index (DKI)   !00704Q0G
*             of the secondary card.                                   !00704Q0H
                                                                       !00704Q0I
 02 CAP-DKI-2                       PIC X(2).                          !00704Q0J
                                                                       !00704Q0K
*             This field contains the Bad CAP Token Override Flag for  !00704Q0L
*             the card. This field will allow the CAP Token validation !00704Q0M
*             to be performed, if the Bad CAP Token Validation Limit   !00704Q0N
*             (on the CPF) has been reached. If the validation is      !00704Q0O
*             successful, then the Bad CAP Token Validation            !00704Q0P
*             Accumulator will be reset to zero. This mechanism is the !00704Q0Q
*             only way that the Bad CAP Token Validation Accumulator   !00704Q0R
*             can be reset once the limit has been reached, without    !00704Q0S
*             deleting/re-adding or replacing the CAF record.          !00704Q0T
                                                                       !00704Q0U
 02 BAD-CAP-TKN-OVRRD-FLG           PIC X.                             !00704Q0V
                                                                       !00704Q0W
                                                                       !00704R00
*             This field specifies the template tag to be used when    !00704R01
*             an issuer script is sent to the card. Valid values are:  !00704R02
*                                                                      !00704R03
*             0 - Use CPF value                                        !00704R04
*             1 - 71                                                   !00704R05
*             2 - 72                                                   !00704R06
                                                                       !00704R07
 02 SCRIPT-TPLT-TAG                 PIC X.                             !00704R08
                                                                       !00704R09
*             This field specifies the MAC length to be used when      !00704R0A
*             an issuer script is sent to the card. Valid values are:  !00704R0B
*                                                                      !00704R0C
*             0 - Use CPF value                                        !00704R0D
*             4 - 4 bytes                                              !00704R0E
*             6 - 6 bytes                                              !00704R0F
*             8 - 8 bytes                                              !00704R0G
                                                                       !00704R0H
 02 SCRIPT-MAC-LGTH                 PIC X.                             !00704R0I
                                                                       !00704R0J
*             This field is not used and should be blank filled.       !00704Q0X
                                                                       !00704Q0Y
 02 USER-FLD                        PIC X.                             !00704Q0Z
                                                                       !00704Q0a
                                                                       !00704Q0b
END.                                                                   !00704I19
                                                                       !00704I1A
?page "CARD CAFXD Segment"
?section CRDCAFX-DISPLAY.
                                                                       !00704I1F
DEFINITION CRDCAFX-DISPLAY.                                            !00704I1G
                                                                       !00704I1H
*             This field contains the card segment length.             !00704I1I
*             Always set to 248 when BASE24-card present.              !00704I1J
                                                                       !00704I1K
 02 SEG-LGTH                      PIC 9(4).                            !00704I1L
                                                                       !00704I1M
*             Branch identifier for this cardholder.                   !00704I1N
*             (For identification only - not a key field).             !00704I1O
                                                                       !00704I1P
 02 BRANCH-NUM                    PIC X(4).                            !00704I1Q
                                                                       !00704I1R
*             Department identifier for this cardholder.               !00704I1S
*             (For identification only - not a key field).             !00704I1T
                                                                       !00704I1U
 02 DEPT-NUM                      PIC X(2).                            !00704I1V
                                                                       !00704I1W
*             This field singles out records which would reflect a     !00704I1X
*             cardholder pin and whether or not a pin mailer is        !00704I1Y
*             required with this card.  Valid values are:              !00704I1Z
*                                                                      !00704I20
*             0 = No                                                   !00704I21
*             1 = Yes                                                  !00704I22
                                                                       !00704I23
 02 PIN-MAILER                    PIC X.                               !00704I24
                                                                       !00704I25
*             This field singles out records which would reflect a     !00704I26
*             cardholder card and whether or not a cardholder is       !00704I27
*             required with this card. Valid values are:               !00704I28
*                                                                      !00704I29
*             0 = No                                                   !00704I2A
*             1 = Yes                                                  !00704I2B
                                                                       !00704I2C
 02 CARD-CARRIER                  PIC X.                               !00704I2D
                                                                       !00704I2E
*             This field reflects the sex of the cardholder and is     !00704I2F
*             intended for statistical and marketing use. Valid        !00704I2G
*             values are:                                              !00704I2H
*                                                                      !00704I2I
*             0 = N/A                                                  !00704I2J
*             1 = Mr.                                                  !00704I2K
*             2 = Mrs.                                                 !00704I2L
*             3 = Miss                                                 !00704I2M
*             4 = Ms.                                                  !00704I2N
*             5 = Dr.                                                  !00704I2O
                                                                       !00704I2P
 02 CRDHLDR-TITLE                 PIC X.                               !00704I2Q
                                                                       !00704I2R
*             This field is an alternate key and is used to locate     !00704I2S
*             records using a soundex algorithm.                       !00704I2T
                                                                       !00704I2U
 02 OPEN-TEXT1                    PIC X(40).                           !00704I2V
                                                                       !00704I2W
*             This field contains the data in the format it is to be   !00704I2X
*             embossed on card line 1 and optionally placed on         !00704I2Y
*             Track 1.  Cardholder name.  Used in embossing,           !00704I2Z
*             addresses.                                               !00704I30
                                                                       !00704I31
 02 NAME-LINE-1                   PIC X(30).                           !00704I32
                                                                       !00704I33
*             Optional second name line.  May be used in embossing.    !00704I34
                                                                       !00704I35
 02 NAME-LINE-2                   PIC X(30).                           !00704I36
                                                                       !00704I37
*             Mandatory first address line.                            !00704I38
                                                                       !00704I39
 02 ADDR-LINE-1                   PIC X(34).                           !00704I3A
                                                                       !00704I3B
*             Optional second address line.                            !00704I3C
                                                                       !00704I3D
 02 ADDR-LINE-2                   PIC X(34).                           !00704I3E
                                                                       !00704I3F
*             Mandatory city name.                                     !00704I3G
                                                                       !00704I3H
 02 CITY                          PIC X(22).                           !00704I3I
                                                                       !00704I3J
*             State code (US states or Canadian provinces).            !00704I3K
                                                                       !00704I3L
 02 STATE                         PIC X(3).                            !00704I3M
                                                                       !00704I3N
*             ZIP+4 (USA) or optional alphanumeric (foreign).          !00704I3O
                                                                       !00704I3P
 02 POSTAL-CODE                   PIC X(9).                            !00704I3Q
                                                                       !00704I3R
*             Country code                                             !00704I3S
                                                                       !00704I3T
 02 COUNTRY-CODE                  PIC X(3).                            !00704I3U
                                                                       !00704I3V
*             Lifetime count of plastics issued for this record.       !00704I3W
*                                                                      !00704I3X
*             This table contains the card account status for this     !00704I3Y
*             cardholder.  If an institution does not use member       !00704I3Z
*             numbers, this field reflects the status for all cards    !00704I40
*             issued for this account. Valid values are:               !00704I41
*                                                                      !00704I42
*             00 = Normal (no issue status)                            !00704I43
*             01 = New issue                                           !00704I44
*             02 = Force issue                                         !00704I45
*             03 = Mass issue                                          !00704I46
*             04 = Expired                                             !00704I47
*             05 = Due to purge                                        !00704I48
*             07 = Due for reissue                                     !00704I49
*             09 = Suspend further issue                               !00704I4A
*             11 = New issue - In manufacture                          !00704I4B
*             12 = Force issue - In manufacture                        !00704I4C
*             13 = Mass issue - In manufacture                         !00704I4D
*             17 = Reissue - In manufacture                            !00704I4E
                                                                       !00704I4F
 02 ISSUE-STAT                    PIC X(2).                            !00704I4G
                                                                       !00704I4H
*             This field records how many issues an individual card    !00704I4I
*             has been through.  If an institution does not use member !00704I4J
*             numbers, this field records how many issues all cards of !00704I4K
*             from this account have been through.                     !00704I4L
                                                                       !00704I4M
 02 ISSUE-NUM                     PIC 9(4).                            !00704I4N
                                                                       !00704I4O
*             This field contains the number of cards to be embossed   !00704I4P
*             from this entry.                                         !00704I4Q
                                                                       !00704I4R
 02 CARDS-TO-ISSUE                PIC 9(4).                            !00704I4S
                                                                       !00704I4T
*             Lifetime count of plastics issued for this record.       !00704I4U
                                                                       !00704I4V
 02 CARDS-ISSUED                  PIC 9(4).                            !00704I4W
                                                                       !00704I4X
*             Lifetime count of plastics returned for this record.     !00704I4Y
                                                                       !00704I4Z
 02 CARDS-RET                     PIC 9(4).                            !00704I50
                                                                       !00704I51
*             This field contains a one byte security character that   !00704I52
*             can be embossed on the card.                             !00704I53
                                                                       !00704I54
 02 SEC-CHAR                      PIC X.                               !00704I55
                                                                       !00704I56
*             This field contains the date of the last issue.  If an   !00704I57
*             institution does not use member numbers, this field      !00704I58
*             reflects the date of the last card issued for this       !00704I59
*             account.                                                 !00704I5A
                                                                       !00704I5B
 02 ISSUE-DAT                     TYPE DAT.                            !00704I5C
                                                                       !00704I5D
*             This field contains the date that the card becomes       !00704I5E
*             effective.  This field is for informational purposes     !00704I5F
*             only and may be embossed on the card.                    !00704I5G
                                                                       !00704I5H
 02 EFFECTIVE-DAT                 TYPE DAT.                            !00704I5I
                                                                       !00704I5J
*             This field contains the VISA card verification value.    !00704I5K
                                                                       !00704I5L
 02 CVV-VALUE                     PIC X(3).                            !00704I5M
                                                                       !00704I5N
*             This field contains the card's 3-digit Service Code.     !00704I5O
                                                                       !00704I5P
 02 SRVC-CDE                      PIC 9(3).                            !00704I5Q
                                                                       !00704I5R
 02 USER-FLD1                     PIC X.                               !00704I5S
                                                                       !00704I5T
END                                                                    !00704I5U
?page "Self Service Banking BASE Application CAFXD Segment"
?section SSBBCAFX-DISPLAY
?comments
                                                                       !00704I60
                                                                       !00704I61
                                                                       !00704I62
                                                                       !00704I63
                                                                       !00704G18
*            The following fields make up the BASE24-atm Self-Service !!00711
*            Banking Base segment of the Cardholder Authorization     !!00712
*            File (CAF) Refresh Format.                               !!00713
                                                                       !00714
DEFINITION SSBBCAFX-DISPLAY.                                           !00715
                                                                       !00716
*                                                                     !!00717
*            The length of the BASE24-atm Self-Service Banking        !!00718
*            Base segment.  The value in this field must be set to    !!00719
*            0184 or 0004 dependent upon whether the SSBB segment     !!00720
*            data is present or not.  This is an optional segment     !!00721
*            controlled at the FIID level via the IDF FIID-SEG-MAP.   !!00722
                                                                       !00723
    02  LGTH                         PIC 9(4).                         !00724
                                                                       !00725
*                                                                     !!00726
*             Identifies terminals at which Super Teller              !!00727
*             transactions can be performed.  Up to ten terminals     !!00728
*             can be specified.  Super Teller transactions are        !!00729
*             initiated via Super Teller Cards.  A Super Teller card  !!00730
*             is indicated by a card type of ST.                      !!00731
*                                                                     !!00732
                                                                       !00733
    02  SUPER-TLR-TERM-ID           PIC X(16)    OCCURS 10 TIMES.      !00734
                                                                       !00735
*             This field is not used and should be blank filled.      !!00736
                                                                       !00737
    02  USER-FLD                    PIC X(20).                         !00738
                                                                       !00739
END                                                                    !00740
                                                                       !00741
?page "Self Service Banking CHECK Application CAFXD Segment"
?section SSBCCAFX-DISPLAY
                                                                       !00746
*             The following fields make up the BASE24-atm Self-Service!!00747
*             Banking Check segment of the Cardholder Authorization   !!00748
*             File (CAF) Refresh Format.                              !!00749
DEFINITION SSBCCAFX-DISPLAY.                                           !00750
                                                                       !00751
*                                                                     !!00752
                                                                       !00752D00
*             The length of the BASE24-atm Self-Service Banking        !00752D01
*             Check segment.  The value in this field must be set to   !00752D02
*             0068.  This is an optional segment controlled at the     !00752D03
*             FIID level via the IDF FIID-SEG-MAP.                     !00752D04
                                                                       !00752D05
                                                                       !00753D00
                                                                       !00753D01
                                                                       !00753D02
*                                                                     !!00758
    02  LGTH                       PIC 9(4).                           !00759
                                                                       !00760
*                                                                     !!00761
*             The Corporation that is responsible for the issuing of  !!00762
*             this check cashing card.  Note this field is only       !!00763
*             applicable when the card type indicates SP (Special     !!00764
*             Purpose (Check Cashing)).                               !!00765
*                                                                     !!00766
  02 CORP-NUM                     PIC X(10).                           !00767
                                                                       !00767A00
                                                                       !00767A01
*                                                                      !00767A02
*             A flag used to indicate whether check transactions       !00767A03
*             involving checks not defined in the Check Status File    !00767A04
*             should be included in the BASE aggregate usage fields    !00767A05
*             and checked against the BASE aggregate limit fields.     !00767A06
*             Valid values are:                                        !00767A07
*             Y = Yes, include in BASE processing                      !00767A08
*             N = No, do not include in BASE processing                !00767A09
*                                                                      !00767A0A
 02 CHK-BASE-FLG                  PIC X.                               !00767A0B
                                                                       !00767A0C
*                                                                      !00767A0D
*             A flag used to indicate whether check transactions       !00767A0E
*             involving checks defined in the Check Status File        !00767A0F
*             should be included in the BASE aggregate usage fields    !00767A0G
*             and checked against the BASE aggregate limit fields.     !00767A0H
*             Valid values are:                                        !00767A0I
*             Y = Yes, include in BASE processing                      !00767A0J
*             N = No, do not include in BASE processing                !00767A0K
*                                                                      !00767A0L
 02 CSF-CHK-BASE-FLG              PIC X.                               !00767A0M
                                                                       !00767A0N
*                                                                      !00767A0O
*             The maximum number of times the card can be used to      !00767A0P
*             perform check transactions involving checks defined      !00767A0Q
*             in the Check Status File during the current usage        !00767A0R
                                                                       !00767B00
*             accumulation period.  Valid values are 0 to 9999.        !00767B01
                                                                       !00767B02
*                                                                      !00767A0T
                                                                       !00767B03
 02 CSF-CHK-USE-LMT              PIC 9(4).                             !00767B04
                                                                       !00767B05
                                                                       !00767A0V
                                                                       !00768
*                                                                     !!00769
*             The values in the following fields can be used to limit !!00770
*             the amount of cash disbursements relative to check      !!00771
*             initiated transactions allowed via BASE24-atm during a  !!00772
*             single usage accumulation period.                       !!00773
*                                                                     !!00774
  02 GRP-LMT.                                                          !00775
*                                                                     !!00776
*             The maximum amount of cash disbursements allowed for    !!00777
                                                                       !00778A00
                                                                       !00778A01
*             cash check or deposit with cash back transactions       !
*             involving checks not defined in the Check Status File.  !
                                                                       !00778A06
*                                                                     !!00780
                                                                       !00781B00
                                                                       !00781C00
     04 TTL-CHK-LMT               PIC 9(12).                           !00781C01
                                                                       !00781C02
                                                                       !00781B02
                                                                       !00782
                                                                       !00783
*                                                                     !!00784
*             The maximum accumulation of cash disbursement allowed   !!00785
*             as a result of a cash check or deposit with cash back   !!00786
                                                                       !00787A00
*             transaction in an offline mode involving checks not     !
*             defined in the Check Status File.                        !00787A03
                                                                       !00787A04
*                                                                     !!00788
*             The amount in this field is only used with              !!00789
*             Authorization level 3 (online/offline), where the       !!00790
*             authorizing host is unavailable and BASE24 performs     !!00791
*             stand-in authorization.                                 !!00792
*                                                                     !!00793
                                                                       !00794A00
*             This amount cannot exceed the following amount:         !
                                                                       !00794A03
                                                                       !00795A00
                                                                       !00795A01
*             o  GRP-LMT.TTL-CHK-LMT in this (SSBC) segment.          !!00796
                                                                       !00796A00
*                                                                      !00796A01
*             If the CHK-BASE-FLG field is set to a value of "Y",      !00796A02
*             this amount cannot exceed the following amounts:         !00796A03
                                                                       !00796A04
*             o  GRP-LMT.AGGR-LMT in the Base segment.                !!00797
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment.           !!00798
*                                                                     !!00799
                                                                       !00800B00
                                                                       !00800C00
     04 OFFL-CHK-LMT              PIC 9(12).                           !00800C01
                                                                       !00800C02
                                                                       !00800B02
                                                                       !00800A00
                                                                       !00800A01
*                                                                      !00800A02
*             The maximum amount of cash disbursements allowed for     !00800A03
*             cash check or deposit with cash back transactions        !00800A04
*             involving checks defined in the Check Status File.       !00800A05
*                                                                      !00800A06
                                                                       !00800B03
                                                                       !00800C03
     04 TTL-CSF-CHK-LMT           PIC 9(12).                           !00800C04
                                                                       !00800C05
                                                                       !00800B05
                                                                       !00800A08
*                                                                      !00800A09
*             The maximum accumulation of cash disbursement allowed    !00800A0A
*             as a result of a cash check or deposit with cash back    !00800A0B
*             transaction in an offline mode involving checks          !00800A0C
*             defined in the Check Status File.                        !00800A0D
*                                                                      !00800A0E
*             The amount in this field is only used with               !00800A0F
*             Authorization level 3 (online/offline), where the        !00800A0G
*             authorizing host is unavailable and BASE24 performs      !00800A0H
*             stand-in authorization.                                  !00800A0I
*                                                                      !00800A0J
*             This amount cannot exceed the following amount:          !00800A0K
*             o  GRP-LMT.CSF-TTL-CHK-LMT in this (SSBC) segment.       !00800A0L
*                                                                      !00800A0M
*             If the CSF-CHK-BASE-FLG field is set to a value of "Y",  !00800A0N
*             this amount cannot exceed the following amounts:         !00800A0O
*             o  GRP-LMT.AGGR-LMT in the Base segment.                 !00800A0P
*             o  GRP-LMT.OFFL-AGGR-LMT in the Base segment.            !00800A0Q
*                                                                      !00800A0R
                                                                       !00800B06
                                                                       !00800C06
     04 OFFL-CSF-CHK-LMT          PIC 9(12).                           !00800C07
                                                                       !00800C08
                                                                       !00800B08
                                                                       !00800A0T
                                                                       !00801
*                                                                     !!00802
*             This REDEFINE allows the previous fields to be accessed !!00803
*             by index.                                               !!00804
*                                                                     !!00805
                                                                       !00806A00
  02 CHK-LMT                      REDEFINES GRP-LMT OCCURS 4 TIMES     !00806A01
                                                                       !00806A02
                                                                       !00807B00
                                                                       !00807C00
                                  PIC 9(12).                           !00807C01
                                                                       !00807C02
                                                                       !00807B02
                                                                       !00808
  END                                                                  !00809
                                                                       !00810
                                                                       !00811
?page "AV CAFXD Segment"
?section AVCAFX-DISPLAY.
*             The following fields make up the Address Verification   !!00816
*             segment of the Cardholder Authorization File (CAF)      !!00817
*             Refresh Format.                                         !!00818
                                                                       !00819
DEFINITION AVCAFX-DISPLAY.                                             !00820
                                                                       !00821
                                                                       !00822
                                                                       !00822D00
*             The length of the BASE24-pos Address Verfication         !00822D01
*             segment.  The value in this field must be set to         !00822D02
*             0068.  This is an optional segment controlled at the     !00822D03
*             FIID level via the IDF FIID-SEG-MAP.                     !00822D04
                                                                       !00822D05
                                                                       !00823D00
                                                                       !00823D01
                                                                       !00823D02
                                                                       !00826D00
*                                                                      !00826D01
                                                                       !00826D02
 02 SEGX-LGTH                    TYPE *.                               !00827
*                                                                     !!00828
*             The cardholder billing address used when performing     !!00829
*             address verification.  All information that is numeric  !!00830
*             in nature must be entered as numeric data.              !!00831
*                                                                     !!00832
    02  ADDR                        PIC X(20).                         !00833
*                                                                     !!00834
*             The cardholder billing ZIP code used when performing    !!00835
*             address verification.  Five-digit ZIP codes must be     !!00836
*             left-justified.  Remaining positions must be blank.     !!00837
*                                                                     !!00838
    02  ZIP-CDE                     PIC X(9).                          !00839
                                                                       !00840
                                                                       !00841
*                                                                     !!00842
*             The date (YYMMDD) this segment was last refreshed.      !!00843
*                                                                     !!00844
    02 LAST-USED                    PIC 9(6).                          !00845
                                                                       !00846
*                                                                     !!00847
*             This field is not used and should be blank filled.      !!00848
*                                                                     !!00849
    02  USER-FLD                    PIC X(17).                         !00850
                                                                       !00851
END                                                                    !00852
                                                                       !00853
                                                                       !00854
                                                                       !00855
?page "Preauthorization CAFXD Segment"
?section PREAUTHCAFX-DISPLAY
*             The following fields make up the Preauthorization       !!00860
*             holds segment of the Cardholder Authorization File (CAF)!!00861
*             Refresh Format.                                         !!00862
DEFINITION PREAUTHCAFX-DISPLAY.                                        !00863
                                                                       !00864
                                                                       !00864D00
*             The length of the Preauthorization segment.  This is an  !00864D01
*             optional segment controlled at the FIID level via the    !00864D02
*             IDF FIID-SEG-MAP.  If configured to be supported, each   !00864D03
*             CAF input record must contain this segment.  The segment !00864D04
*             length will vary depending on the number of              !00864D05
*             preauthorization holds in this CAF record.  Possible     !00864D06
*             lengths are:                                             !00864D07
*                                                                      !00864D08
*             00 pre-auths = 0006 bytes                                !00864D09
*             01 pre-auth  = 0072 bytes                                !00864D0A
*             02 pre-auths = 0138 bytes                                !00864D0B
*             03 pre-auths = 0204 bytes                                !00864D0C
*             04 pre-auths = 0270 bytes                                !00864D0D
*             05 pre-auths = 0336 bytes                                !00864D0E
*             06 pre-auths = 0402 bytes                                !00864D0F
*             07 pre-auths = 0468 bytes                                !00864D0G
*             08 pre-auths = 0534 bytes                                !00864D0H
*             09 pre-auths = 0600 bytes                                !00864D0I
*             10 pre-auths = 0666 bytes                                !00864D0J
                                                                       !00864D0K
                                                                       !00865D00
                                                                       !00865D01
                                                                       !00865D02
                                                                       !00881
    02  LGTH                            PIC 9(4).                      !00882
                                                                       !00883
*             The number of Preauthorization holds contained          !!00884
*             in this segment.  The valid values are from "00"        !!00885
*             to "10".                                                !!00886
                                                                       !00887
    02  PRE-AUTH-CNT                    PIC X(2).                      !00888
                                                                       !00889
*             This Preauthorization structure has all of the          !!00890
*             information needed for the Preauthorization             !!00891
*             hold.  There will be from zero to ten of                !!00892
*             these Preauthorization entries.                         !!00893
                                                                       !00894
    02  PRE-AUTH                        OCCURS 10 TIMES.               !00895
                                                                       !00896
*             The Preauthorization sequence number for this           !!00897
*             hold entry.  This field contains alpha-numeric          !!00898
*             values.                                                 !!00899
                                                                       !00900
        04  SEQ-NUM                     PIC X(12).                     !00901
                                                                       !00902
*             The hold amount for the Preauthorization hold.          !!00903
*             The field is numeric values, right-justified and        !!00904
*             zero filled.                                            !!00905
                                                                       !00906
                                                                       !00907C00
        04  HOLD-AMT                    PIC 9(18).                     !00907C01
                                                                       !00907C02
                                                                       !00908
*             The Preauthorization expiration timestamp for           !!00909
*             this hold entry.                                        !!00910
                                                                       !00911
        04  PR-TS.                                                     !00912
                                                                       !00913
*             The expiration timestamp date.  The format for          !!00914
*             this field is YYMMDD.                                   !!00915
                                                                       !00916
            06  DAT                     TYPE DAT.                      !00917
                                                                       !00918
*             The expiration timestamp time.  The format for          !!00919
*             this field is HHMMSSTT.                                 !!00920
                                                                       !00921
            06  TIM                     TYPE TIM.                      !00922
                                                                       !00923
*             The account type for the account associated             !!00924
*             with this Preauthorization hold entry.                  !!00925
*             Valid values are                                        !!00926
*                                                                     !!00927
*                 01-09 = Checking                                    !!00928
*                 11-19 = Savings                                     !!00929
*                 31-39 = Credit                                      !!00930
*                                                                     !!00931
*             Specific values reserved by one or more BASE24          !!00932
*             products are listed below.  All of these account        !!00933
*             types are not supported by all BASE24 products.         !!00934
*                                                                     !!00935
*                 01    = Checking                                    !!00936
*                 11    = Savings                                     !!00937
*                 12    = Individual retirement                       !!00938
*                 13    = Certified deposit                           !!00939
*                 21    = NOW                                         !!00940
*                 31    = Credit                                      !!00941
*                 32    = Credit line                                 !!00942
*                 41    = Installment                                 !!00943
*                 42    = Mortgage                                    !!00944
*                 43    = Commercial                                  !!00945
*                 50    = Utility                                     !!00946
*                 51-55 = Utility (1 to 5)                            !!00947
*                 90    = General ledger                              !!00948
*                                                                     !!00949
                                                                       !00950
        04  ACCT-TYP                    PIC X(2).                      !00951
                                                                       !00952
*             The account number for the Preauthorization             !!00953
*             hold entry.  This field is left-justified               !!00954
*             and blank filled.                                       !!00955
                                                                       !00956
        04  ACCT                        PIC X(19).                     !00957
                                                                       !00958
                                                                       !00958C00
*                                                                      !00958C01
*             This field is not used                                   !00958C02
*                                                                      !00958C03
        04  USER-FLD                    PIC X.                         !00958C04
                                                                       !00958C05
END                                                                    !00959
                                                                       !00960
                                                                       !00960F00
?page "NCD CAFXD Segment"
?section NCDCAFX-DISPLAY
*             The following fields make up the Non-Currency Dispense   !00960F05
*             (NCD) segment of the Cardholder Authorization File (CAF) !00960F06
*             Refresh Format.                                          !00960F07
                                                                       !00960F08
DEFINITION NCDCAFX-DISPLAY.                                            !00960F09
                                                                       !00960F0A
*                                                                      !00960F0B
*             The length of the BASE24-atm Non-Currency Dispense       !00960F0C
                                                                       !00960H00
*             segment.  The value in this field must be set to 0162.   !00960H01
                                                                       !00960H02
*             This is an optional segment controlled at the FIID level !00960F0E
*             via the IDF FIID-SEG-MAP.                                !00960F0F
*                                                                      !00960F0G
 02 LGTH                          PIC 9(4).                            !00960F0H
                                                                       !00960F0I
*                                                                      !00960F0J
*             The maximum number of times the card may be used to      !00960F0K
*             perform a non-currency dispense transaction              !00960F0L
*             during a single usage accumulation period.               !00960F0M
*                                                                      !00960F0N
 02 USE-LMT                        PIC 9(4).                           !00960F0O
                                                                       !00960F0P
*                                                                      !00960F0Q
*             The maximum amount of cash value transactions allowed    !00960F0R
*             against non-credit accounts during a single usage        !00960F0S
*             accumulation period.                                     !00960F0T
*                                                                      !00960F0U
 02 CASH-VAL-TTL-WDL-LMT           PIC 9(12).                          !00960F0V
                                                                       !00960F0W
*                                                                      !00960F0X
*             The maximum amount of cash value transactions allowed    !00960F0Y
*             offline against non-credit accounts during a single      !00960F0Z
*             usage accumulation period.                               !00960F10
*                                                                      !00960F11
*             The value in this field is only used with Authorization  !00960F12
*             level 3 (online/offline), where the authorizing host is  !00960F13
*             unavailable and BASE24 performs stand-in authorization.  !00960F14
*                                                                      !00960F15
 02 CASH-VAL-OFFL-WDL-LMT          PIC 9(12).                          !00960F16
                                                                       !00960F17
*                                                                      !00960F18
*             The maximum amount of cash value transactions allowed    !00960F19
*             against credit accounts during a single usage            !00960F1A
*             accumulation period.                                     !00960F1B
*                                                                      !00960F1C
 02 CASH-VAL-TTL-CCA-LMT           PIC 9(12).                          !00960F1D
                                                                       !00960F1E
*                                                                      !00960F1F
*             The maximum amount of cash value transactions allowed    !00960F1G
*             offline against credit accounts during a single usage            8
*             accumulation period.                                     !00960F1J
*                                                                      !00960F1K
*             The value in this field is only used with Authorization  !00960F1L
*             level 3 (online/offline), where the authorizing host is  !00960F1M
*             unavailable and BASE24 performs stand-in authorization.  !00960F1N
*                                                                      !00960F1O
 02 CASH-VAL-OFFL-CCA-LMT          PIC 9(12).                          !00960F1P
                                                                       !00960F1Q
*             The code of the hopper contents for which the            !00960F1R
*             NCD1 fields pertain.                                     !00960F1S
                                                                       !00960F1T
 02 NCD1-CDE                      PIC X(2).                            !00960F1U
                                                                       !00960F1V
*                                                                      !00960F1W
*             The maximum amount of transactions made against          !00960F1X
*             non-credit accounts for the item type identified         !00960F1Y
*             by the content code (NCD1-CDE).                          !00960F1Z
*                                                                      !00960F20
 02 NCD1-TTL-WDL-LMT              PIC 9(12).                           !00960F21
                                                                       !00960F22
*                                                                      !00960F23
*             The maximum amount of transactions made offline          !00960F24
*             against non-credit accounts for the item type            !00960F25
*             identified by the content code (NCD1-CDE).               !00960F26
*                                                                      !00960F27
*             The amount in this field is only used with               !00960F28
*             Authorization level 3 (online/offline), where the        !00960F29
*             authorizing host is unavailable and BASE24 performs      !00960F2A
*             stand-in authorization.                                  !00960F2B
*                                                                      !00960F2C
 02 NCD1-OFFL-WDL-LMT             PIC 9(12).                           !00960F2D
                                                                       !00960F2E
*                                                                      !00960F2F
*             The maximum amount of transactions made against          !00960F2G
*             credit accounts for the item type identified             !00960F2H
*             by the content code (NCD1-CDE).                          !00960F2I
*                                                                      !00960F2J
                                                                       !00960F2K
 02 NCD1-TTL-CCA-LMT               PIC 9(12).                          !00960F2L
                                                                       !00960F2M
*                                                                      !00960F2N
*             The maximum amount of transactions made offline          !00960F2O
*             against credit accounts for the item type                !00960F2P
*             identified by the content code (NCD1-CDE).               !00960F2Q
*                                                                      !00960F2R
*             The amount in this field is only used with               !00960F2S
*             Authorization level 3 (online/offline), where the        !00960F2T
*             authorizing host is unavailable and BASE24 performs      !00960F2U
*             stand-in authorization.                                  !00960F2V
*                                                                      !00960F2W
                                                                       !00960F2X
 02 NCD1-OFFL-CCA-LMT              PIC 9(12).                          !00960F2Y
                                                                       !00960F2Z
*             The code of the hopper contents for which the            !00960F30
*             NCD2 limit fields pertain.                               !00960F31
                                                                       !00960F32
 02 NCD2-CDE                       PIC X(2).                           !00960F33
                                                                       !00960F34
*                                                                      !00960F35
*             The maximum amount of transactions made against          !00960F36
*             non-credit accounts for the item type identified         !00960F37
*             by the content code (NCD2-CDE).                          !00960F38
*                                                                      !00960F39
 02 NCD2-TTL-WDL-LMT               PIC 9(12).                          !00960F3A
                                                                       !00960F3B
*                                                                      !00960F3C
*             The maximum amount of transactions made offline          !00960F3D
*             against non-credit accounts for the item type            !00960F3E
*             identified by the content code (NCD2-CDE).               !00960F3F
*                                                                      !00960F3G
*             The amount in this field is only used with               !00960F3H
*             Authorization level 3 (online/offline), where the        !00960F3I
*             authorizing host is unavailable and BASE24 performs      !00960F3J
*             stand-in authorization.                                  !00960F3K
*                                                                      !00960F3L
 02 NCD2-OFFL-WDL-LMT              PIC 9(12).                          !00960F3M
                                                                       !00960F3N
*                                                                      !00960F3O
*             The maximum amount of transactions made against          !00960F3P
*             credit accounts for the item type identified             !00960F3Q
*             by the content code (NCD2-CDE).                          !00960F3R
*                                                                      !00960F3S
                                                                       !00960F3T
 02 NCD2-TTL-CCA-LMT               PIC 9(12).                          !00960F3U
                                                                       !00960F3V
*                                                                      !00960F3W
*             The maximum amount of transactions made offline          !00960F3X
*             against credit accounts for the item type                !00960F3Y
*             identified by the content code (NCD2-CDE).               !00960F3Z
*                                                                      !00960F40
*             The amount in this field is only used with               !00960F41
*             Authorization level 3 (online/offline), where the        !00960F42
*             authorizing host is unavailable and BASE24 performs      !00960F43
*             stand-in authorization.                                  !00960F44
*                                                                      !00960F45
                                                                       !00960F46
 02 NCD2-OFFL-CCA-LMT              PIC 9(12).                          !00960F47
*                                                                      !00960F48
*             The date (YYMMDD) the card was last used for             !00960F49
*             non-currency dispense transactions.  The date in this    !00960F4A
*             field should be less than the beginning date of the      !00960F4B
*             current withdrawal period.  (Refresh does not verify     !00960F4C
*             this, however.)                                          !00960F4D
*                                                                      !00960F4E
 02 LAST-USED                      PIC 9(6).                           !00960F4F
                                                                       !00960F4G
END                                                                    !00960F4H
                                                                       !00960F4I
                                                                       !00960F4J
                                                                       !00960F4K
                                                                       !00960N00
?page "Enhanced Preauthorization CAFXD Segment"
?section ENHNC-PREAUTHCAFX-DISPLAY
*             The following fields make up the Enhanced Pre-          !!00960N05
*             Authorization holds segment of the Cardholder           !!00960N06
*             Authorization file (CAF) Refresh Format.                !!00960N07
DEFINITION ENHNC-PREAUTHCAFX-DISPLAY.                                  !00960N08
                                                                       !00960N09
*             The length of the Enhanced pre-auth segment.  This is an!!00960N0A
*             optional segment controlled at the FIID level via the   !!00960N0B
*             IDF FIID-SEG-MAP.  If configured to be supported, each  !!00960N0C
*             CAF input record must contain this segment.  The segment!!00960N0D
*             length will vary depending on the number of             !!00960N0E
*             preauthorization holds in this CAF record.  Possible    !!00960N0F
*             lengths are:                                            !!00960N0G
*                                                                     !!00960N0H
*             00 pre-auths = 0006 bytes                               !!00960N0I
*             01 pre-auth  = 0110 bytes                               !!00960N0J
*             02 pre-auths = 0214 bytes                               !!00960N0K
*             03 pre-auths = 0318 bytes                               !!00960N0L
*             04 pre-auths = 0422 bytes                               !!00960N0M
*             05 pre-auths = 0526 bytes                               !!00960N0N
*             06 pre-auths = 0630 bytes                               !!00960N0O
*             07 pre-auths = 0734 bytes                               !!00960N0P
*             08 pre-auths = 0838 bytes                               !!00960N0Q
*             09 pre-auths = 0942 bytes                               !!00960N0R
*             10 pre-auths = 1046 bytes                               !!00960N0S
                                                                       !00960N0T
    02  LGTH                            PIC 9(4).                      !00960N0U
                                                                       !00960N0V
*             The number of Preauthorization holds contained          !!00960N0W
*             in this segment.  The valid values are from "00"        !!00960N0X
*             to "10".                                                !!00960N0Y
                                                                       !00960N0Z
    02  PRE-AUTH-CNT                    PIC X(2).                      !00960N0a
                                                                       !00960N0b
*             This Preauthorization structure has all of the          !!00960N0c
*             information needed for the Preauthorization             !!00960N0d
*             hold.  There will be from zero to ten of                !!00960N0e
*             these Preauthorization entries.                         !!00960N0f
                                                                       !00960N0g
    02  PRE-AUTH                        OCCURS 10 TIMES.               !00960N0h
                                                                       !00960N0i
*             The Preauthorization sequence number for this           !!00960N0j
*             hold entry.  This field contains alpha-numeric          !!00960N0k
*             values.                                                 !!00960N0l
                                                                       !00960N0m
        04  SEQ-NUM                     PIC X(12).                     !00960N0n
                                                                       !00960N0o
*             The hold amount for the Preauthorization hold.          !!00960N0p
*             The field is numeric values, right-justified and        !!00960N0q
*             zero filled.                                            !!00960N0r
                                                                       !00960N0s
        04  HOLD-AMT                    PIC 9(18).                     !00960N0t
                                                                       !00960N0u
*             The Preauthorization expiration timestamp for           !!00960N0v
*             this hold entry.                                        !!00960N0w
                                                                       !00960N0x
        04  PR-TS.                                                     !00960N0y
                                                                       !00960N0z
*             The expiration timestamp date.  The format for          !!00960N10
*             this field is YYMMDD.                                   !!00960N11
                                                                       !00960N12
            06  DAT                     TYPE DAT.                      !00960N13
                                                                       !00960N14
*             The expiration timestamp time.  The format for          !!00960N15
*             this field is HHMMSSTT.                                 !!00960N16
                                                                       !00960N17
            06  TIM                     TYPE TIM.                      !00960N18
                                                                       !00960N19
*                                                                     !!00960N1A
*             The approval code used for preauthorization match.      !!00960N1B
*                                                                     !!00960N1C
                                                                       !00960N1D
        04  APPRV-CDE                   PIC X(8).                      !00960N1E
                                                                       !00960N1F
*             The issued date and time generated at the terminal.     !!00960N1G
*                                                                     !!00960N1H
                                                                       !00960N1I
        04  PR-TXN-TS.                                                 !00960N1J
                                                                       !00960N1K
*             The issued timestamp date.  The format for              !!00960N1L
*             this field is YYMMDD.                                   !!00960N1M
                                                                       !00960N1N
            06  DAT                     TYPE DAT.                      !00960N1O
                                                                       !00960N1P
*             The issued timestamp time.  The format for              !!00960N1Q
*             this field is HHMMSSTT.                                 !!00960N1R
                                                                       !00960N1S
            06  TIM                     TYPE TIM.                      !00960N1T
                                                                       !00960N1U
*                                                                     !!00960N1V
*             The terminal id which issued the preauthorized hold.    !!00960N1W
*                                                                     !!00960N1X
                                                                       !00960N1Y
        04 TERM-ID                      PIC X(16).                     !00960N1Z
                                                                       !00960N1a
*             The account type for the account associated             !!00960N1b
*             with this Enhanced Preauthorization hold entry.         !!00960N1c
*             Valid values are                                        !!00960N1d
*                                                                     !!00960N1e
*                 01-09 = Checking                                    !!00960N1f
*                 11-19 = Savings                                     !!00960N1g
*                 31-39 = Credit                                      !!00960N1h
*                                                                     !!00960N1i
*             Specific values reserved by one or more BASE24          !!00960N1j
*             products are listed below.  All of these account        !!00960N1k
*             types are not supported by all BASE24 products.         !!00960N1l
*                                                                     !!00960N1m
*                 01    = Checking                                    !!00960N1n
*                 11    = Savings                                     !!00960N1o
*                 12    = Individual retirement                       !!00960N1p
*                 13    = Certified deposit                           !!00960N1q
*                 21    = NOW                                         !!00960N1r
*                 31    = Credit                                      !!00960N1s
*                 32    = Credit line                                 !!00960N1t
*                 41    = Installment                                 !!00960N1u
*                 42    = Mortgage                                    !!00960N1v
*                 43    = Commercial                                  !!00960N1w
*                 50    = Utility                                     !!00960N1x
*                 51-55 = Utility (1 to 5)                            !!00960N1y
*                 90    = General ledger                              !!00960N1z
*                                                                     !!00960N20
                                                                       !00960N21
        04  ACCT-TYP                    PIC X(2).                      !00960N22
                                                                       !00960N23
*             The account number for the Preauthorization             !!00960N24
*             hold entry.  This field is left-justified               !!00960N25
*             and blank filled.                                       !!00960N26
                                                                       !00960N27
        04  ACCT                        PIC X(19).                     !00960N28
                                                                       !00960N29
*                                                                     !!00960N2A
*             The hold flag indicates whether this is an outstanding  !!00960N2B
*             hold or a timed-out hold.                               !!00960N2C
*                                                                     !!00960N2D
                                                                       !00960N2E
        04 HOLD-FLG                     PIC X.                         !00960N2F
                                                                       !00960N2G
END                                                                    !00960N2H
                                                                       !00960N2I
                                                                       !00960Q00
?page "Preferred Transaction Segment"
?section PFRD-TXN-CAFX-DISPLAY
*                                                                      !00960Q05
*             The following fields make up the preferred transaction   !00960Q06
*             segment of the Cardholder Authorization File (CAF).      !00960Q07
*             This segment contains the information associated with    !00960Q08
*             the cardholder's preferred transaction.                  !00960Q09
*                                                                      !00960Q0A
DEFINITION PFRD-TXN-CAFX-DISPLAY.                                      !00960Q0B
                                                                       !00960Q0C
 02  SEGX-LGTH                   TYPE *.                               !00960Q0D
*                                                                      !00960Q0E
*             The account number of the cardholder's preferred         !00960Q0F
*             transaction.                                             !00960Q0G
*                                                                      !00960Q0H
 02  ACCT                        TYPE *.                               !00960Q0I
*                                                                      !00960Q0J
*             The transaction code for the cardholder's                !00960Q0K
*             preferred transaction.                                   !00960Q0L
*                                                                      !00960Q0M
 02  TRAN-CDE                    PIC X(2).                             !00960Q0N
*                                                                      !00960Q0O
*             The "from" account type for the cardholder's             !00960Q0P
*             preferred transaction.                                   !00960Q0Q
*                                                                      !00960Q0R
 02  FROM-ACCT-TYP               TYPE ACCT-TYP.                        !00960Q0S
*                                                                      !00960Q0T
*             The "to" account type for the cardholder's               !00960Q0U
*             preferred transaction.                                   !00960Q0V
*                                                                      !00960Q0W
 02  TO-ACCT-TYP                 TYPE ACCT-TYP.                        !00960Q0X
*                                                                      !00960Q0Y
*             The receipt option for the customer's                    !00960Q0Z
*             preferred transaction.                                   !00960Q0a
*             Valid values:                                            !00960Q0b
*                Y - receipt required                                  !00960Q0c
*                N - receipt not required                              !00960Q0d
*                                                                      !00960Q0e
 02  RCPT-OPT                    PIC X(1).                             !00960Q0f
*                                                                      !00960Q0g
*             The amount of the cardholder's preferred                 !00960Q0h
*             transaction.                                             !00960Q0i
*                                                                      !00960Q0j
 02  AMT                         PIC X(19).                            !00960Q0k
*                                                                      !00960Q0l
*             Option to indicate if the preferred transaction          !00960Q0m
*             profile can be updated by the customer at the            !00960Q0n
*             terminal.                                                !00960Q0o
*             Valid values:                                            !00960Q0p
*                Y - profile update allowed at terminal                !00960Q0q
*                N - profile update not allowed at terminal            !00960Q0r
*                                                                      !00960Q0s
 02  PRFL-UPDT-IND               PIC X(1).                             !00960Q0t
*                                                                      !00960Q0u
*             Option to indicate if customer wishes to have            !00960Q0v
*             American Disabilities Act (ADA) support at the           !00960Q0w
*             terminal, if available.                                  !00960Q0x
*             Valid values:                                            !00960Q0y
*                Y - ADA needed at terminal                            !00960Q0z
*                N - ADA not needed at terminal                        !00960Q10
*                                                                      !00960Q11
 02  ADA-IND                     PIC X(1).                             !00960Q12
*                                                                      !00960Q13
*             The market segment indicator for this cardholder.        !00960Q14
*                                                                      !00960Q15
 02  MRKT-SEG-IND                PIC X(2).                             !00960Q16
*                                                                      !00960Q17
*             USER-FLD-ACI is reserved for future BASE24 product       !00960Q18
*             use only.                                                !00960Q19
*                                                                      !00960Q1A
 02  USER-FLD-ACI                PIC X(15).                            !00960Q1B
END                                                                    !00960Q1C
                                                                       !00960Q1D
?page "ACCTD Segment"
?section ACCTCAFX-DISPLAY.
                                                                       !00960Q1I
                                                                       !00960N2N
                                                                       !00960F4P
*             The following fields make up the Account Information    !!00965
*             segment of the Cardholder Authorization File (CAF)      !!00966
*             Refresh Format.                                         !!00967
                                                                       !00968
DEFINITION ACCTCAFX-DISPLAY.                                           !00969
                                                                       !00970
                                                                       !00971
*                                                                     !!00972
*             The length of the Accounts segment.  This varies        !!00973
*             depending on the number of accounts associated with the !!00974
*             CAF record.  Possible lengths are:                      !!00975
                                                                       !00975D00
*             00 accounts = 0006 bytes                                 !00975D01
*             01 account  = 0040 bytes                                 !00975D02
*             02 accounts = 0074 bytes                                 !00975D03
*             03 accounts = 0108 bytes                                 !00975D04
*             04 accounts = 0142 bytes                                 !00975D05
*             05 accounts = 0176 bytes                                 !00975D06
*             06 accounts = 0210 bytes                                 !00975D07
*             07 accounts = 0244 bytes                                 !00975D08
*             08 accounts = 0278 bytes                                 !00975D09
*             09 accounts = 0312 bytes                                 !00975D0A
*             10 accounts = 0346 bytes                                 !00975D0B
*             11 accounts = 0380 bytes                                 !00975D0C
*             12 accounts = 0414 bytes                                 !00975D0D
*             13 accounts = 0448 bytes                                 !00975D0E
*             14 accounts = 0482 bytes                                 !00975D0F
*             15 accounts = 0516 bytes                                 !00975D0G
*             16 accounts = 0550 bytes                                 !00975D0H
                                                                       !00975D0I
                                                                       !00976D00
                                                                       !00976D01
                                                                       !00976D02
*                                                                     !!00993
 02 LGTH                         PIC 9(4).                             !00994
                                                                       !00995
                                                                       !00996
                                                                       !00997
                                                                       !00997D00
*                                                                      !00997D01
*             The actual number of application accounts associated     !00997D02
*             with this CAF record.  Valid values are from "00" to     !00997D03
*             "16".                                                    !00997D04
                                                                       !00997D05
                                                                       !00998D00
                                                                       !00998D01
                                                                       !00998D02
*                                                                     !!01002
 02 ACCT-CNT                     PIC X(2).                             !01003
                                                                       !01004
                                                                       !01005
*                                                                     !!01006
*             The following fields make up a table containing         !!01007
*             application account information for multiple account    !!01008
*             support.  (For example, with BASE24, institutions can   !!01009
*             accommodate cardholders who want to access more than    !!01010
*             one checking, savings, and/or credit account with a     !!01011
*             single card.)                                           !!01012
*                                                                     !!01013
 02 ACCT                         OCCURS 16 TIMES.                      !01014
                                                                       !01015
                                                                       !01016
*                                                                     !!01017
*             A code indicating the type of account.  The general     !!01018
*             ranges of values supported by all BASE24 products are:  !!01019
*                                                                     !!01020
*             01-09 = Checking                                        !!01021
*             11-19 = Savings                                         !!01022
*             31-39 = Credit                                          !!01023
*                                                                     !!01024
*             Specific values reserved by one or more BASE24 products !!01025
*             are listed below.  All of these account types are not   !!01026
*             supported by all BASE24 products.                       !!01027
*                                                                     !!01028
*             01    = Checking                                        !!01029
*             11    = Savings                                         !!01030
*             12    = Individual retirement                           !!01031
*             13    = Certified deposit                               !!01032
*             21    = NOW                                             !!01033
*             31    = Credit                                          !!01034
*             32    = Credit line                                     !!01035
*             41    = Installment                                     !!01036
*             42    = Mortgage                                        !!01037
*             43    = Commercial                                      !!01038
*             50    = Utility                                         !!01039
*             51-55 = Utility (1 to 5)                                !!01040
*             90    = General ledger                                  !!01041
*                                                                     !!01042
    04 TYP                       PIC X(2).                             !01043
                                                                       !01044
                                                                       !01045
                                                                       !01046
                                                                       !01047
*                                                                     !!01048
*             The application account number.  The value in this      !!01049
*             field is left-justified and blank-filled to the right.  !!01050
*                                                                     !!01051
    04 NUM                       PIC X(19).                            !01052
                                                                       !01053
                                                                       !01054
*                                                                     !!01055
*             A code indicating the status of the account.  Values    !!01056
*             are:                                                    !!01057
*                                                                     !!01058
*             0, A, B, C          = No relationship (inactive         !!01059
*                                   account)                          !!01060
*             1, D, E, F, G, H, I = Open                              !!01061
*             2, J, K, L          = Restricted to deposits            !!01062
*             3, M, N, O, P, Q, R = Open primary account              !!01063
*             4, S, T, U          = Restricted primary account        !!01064
*             9, V, W, Y, Z       = Closed                            !!01065
*                                                                     !!01066
*             NOTE:  BASE24 does not distinguish between the          !!01067
*             alphabetic and numeric values grouped together above.   !!01068
*             The alphabetic values are intended to give institutions !!01069
*             a wider range of values for assigning account statuses. !!01070
*                                                                     !!01071
    04 STAT                       PIC X.                               !01072
                                                                       !01073
                                                                       !01074
*                                                                     !!01075
*             A text description of the account or the account        !!01076
*             issuer's Routing Transit Number (RTTN).                 !!01077
*                                                                     !!01078
    04 DESCR                      PIC X(10).                           !01079
                                                                       !01080
                                                                       !01081
*                                                                     !!01082
*             The following REDEFINE of the DESCR field will contain  !!01083
*             the account issuer's Routing Transit Number (RTTN) if   !!01084
*             the specified account is an ACH debit account.  Please  !!01085
*             refer to the ACCT.ACH-IND field for further details.    !!01086
*                                                                     !!01087
    04 ACH-RTTN                   REDEFINES DESCR PIC X(10).           !01088
                                                                       !01089
*                                                                     !!01090
*             NOTE:  This flag was used only in conjunction with      !!01091
*             BASE24-cash manager, but has been expanded to enable    !!01092
*             ACH debit support.  See ACH-IND redefinition below.     !!01093
*                                                                     !!01094
    04 CORP                       PIC X.                               !01095
                                                                       !01096
*                                                                     !!01097
*             A flag indicating whether the specified account is an   !!01098
*             ACH debit account.  Valid value are:                    !!01099
*             A = ACH, this is an ACH debit account                   !!01100
*             _ = This account is not an ACH debit account (_ denotes !!01101
*                 blank)                                              !!01102
*                                                                     !!01103
*             Please note that an ACH debit account is only allowed if!!01104
*             the specified account is a checking (ACCT.TYP = 01      !!01105
*             through 09) or savings (ACCT.TYP = 11 through 19)       !!01106
*             account type.                                           !!01107
*                                                                     !!01108
    04 ACH-IND                    REDEFINES CORP PIC X.                !01109
                                                                       !01110
*                                                                     !!01111
                                                                       !01111I00
*             A value used to differentiate between various customer   !01111I01
*             accounts which have the same account type.               !01111I02
*             Valid values are "0", "1", "2", and "3".                 !01111I03
*                                                                      !01111I04
    04 QUAL                       PIC X.                               !01111I05
                                                                       !01111I06
                                                                       !01111I07
                                                                       !01112I00
                                                                       !01112I01
                                                                       !01112I02
                                                                       !01115
?nocomments
END                                                                    !01118
                                                                       !01119
?page
?nodeflist
?section CAFXD
                                                                       !01126
DEFINITION CAFXD.                                                      !01127
                                                                       !01128
 02 SEG0                TYPE CAFXBASE-DISPLAY.                         !01129
 02 SEG1                TYPE ATMCAFX-DISPLAY.                          !01130
 02 SEG2                TYPE POSCAFX-DISPLAY.                          !01131
                                                                       !01132G00
                                                                       !01132I00
 02 SEG9                TYPE EMVCAFX-DISPLAY.                          !01132I01
 02 SEG12               TYPE CRDCAFX-DISPLAY.                          !01132I02
                                                                       !01132I03
                                                                       !01132G02
 02 SEG17               TYPE SSBBCAFX-DISPLAY.                         !01133
 02 SEG18               TYPE SSBCCAFX-DISPLAY.                         !01134
                                                                       !01135
 02 SEG19               TYPE AVCAFX-DISPLAY.                           !01136
                                                                       !01137
                                                                       !01138
 02 SEG22               TYPE PREAUTHCAFX-DISPLAY.                      !01139
                                                                       !01139F00
 02 SEG23               TYPE NCDCAFX-DISPLAY.                          !01139F01
                                                                       !01139F02
                                                                       !01139Q00
 02 SEG27               TYPE PFRD-TXN-CAFX-DISPLAY.                    !01139Q01
                                                                       !01139Q02
 02 SEG31               TYPE ACCTCAFX-DISPLAY.                         !01140
                                                                       !01141
END                                                                    !01142
                                                                       !01143
?deflist
