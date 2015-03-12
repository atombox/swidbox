**FIX2.28  12/23/11  DDLGISO 6029 DDL    BA60DDL  BA0F069  c                 ***
**FIX2.28  12/22/09  DDLGISO 6028 DDL    BA60DDL  BA0D305  b                 ***
**FIX2.28  12/02/08  DDLGISO 6027 DDL    BA60DDL  BA0C312  a                 ***
**FIX2.28  12/04/07  DDLGISO 6026 DDL    BA60DDL  BA0B346  Z                 ***
**FIX2.28  11/23/06  DDLGISO 6025 DDL    BA60DDL  BA0A310  Y                 ***
**FIX2.26  11/17/05  DDLGISO 6024 DDL    BA60DDL  BA09354  X                 ***
**FIX2.24  11/18/04  DDLGISO 6023 DDL    BA60DDL  BA08215  W                 ***
**FIX2.23  11/10/03  DDLGISO 6022 DDL    BA60DDL  BA07159  V                 ***
**FIX2.23  02/13/03  DDLGISO 6021 DDL    BA60DDL  BA06239  U                 ***
**FIX2.23  01/16/03  DDLGISO 6020 DDL    BA60DDL  BA06190  T                 ***
**FIX2.19  01/12/02  DDLGISO 6019 DDL    BA60DDL  BA05199  S                 ***
**FIX2.17  09/27/01  DDLGISO 6018 DDL    BA60DDL  BA05023  R                 ***
**FIX2.15  06/18/01  DDLGISO 6017 DDL    BA60DDL  BA04540  Q                 ***
**FIX2.14  05/11/01  DDLGISO 6016 DDL    BA60DDL  BA04483  P                 ***
**FIX2.14  04/12/01  DDLGISO 6015 DDL    BA60DDL  BA04409  O                 ***
**FIX2.14  03/21/01  DDLGISO 6014 DDL    BA60DDL  BA04344  N                 ***
**FIX2.11  01/02/01  DDLGISO 6013 DDL    BA60DDL  BA04156  M                 ***
**SEQ0.04  11/01/00  DDLGISO 6012 DDL    BA60DDL  BA04000  L                 ***
**SYNC.04  12/09/98  DDLGISO 5312 DDL    BA53DDL  BA04000  L                 ***
**FIX2.03  08/28/98  DDLGISO 5312 DDL    BA53DDL  BA03000  L                 ***
**FIX2.06  07/09/98  DDLGISO 5112 DDL    BA51DDL  BA03222  L                 ***
**FIX2.04  11/24/97  DDLGISO 5111 DDL    BA51DDL  BA03025  K                 ***
**SYNC.03  08/22/97  DDLGISO 5110 DDL    BA51DDL  BA03000  J                 ***
**FIX2.04  06/25/97  DDLGISO 5110 DDL    BA51DDL  BA02138  J                 ***
**FIX2.04  04/01/97  DDLGISO 5109 DDL    BA51DDL  BA02083  I                 ***
**FIX2.04  01/13/97  DDLGISO 5108 DDL    BA51DDL  BA02032  H                 ***
**SYNC.02  06/25/96  DDLGISO 5107 DDL    BA51DDL  BA02000  G                 ***
**FIX2.00  12/21/95  DDLGISO 5107 DDL    BA51DDL  BA51251  G                 ***
**FIX2.00  12/08/95  DDLGISO 5106 DDL    BA51DDL  BA51243  F                 ***
**FIX2.00  11/13/95  DDLGISO 5105 DDL    BA51DDL  BA51207  E                 ***
**FIX2.00  06/06/95  DDLGISO 5104 DDL    BA51DDL  BA51028  D                 ***
**FIX2.00  02/09/93  DDLGISO 5103 DDL    BA51DDL  BA50065  C                 ***
**FIX2.00  01/13/93  DDLGISO 5002 DDL    BA50DDL  BA50036  B                 ***
**FIX2.00  12/30/92  DDLGISO 5001 DDL    BA50DDL  BA50032  A                 ***
!*SEQ2.00  10/20/92  DDLGISO 5000 DDL    BA50DDL                               !
                                                                       !00000M00
?PAGE "ISO Standard External Message Format"
?section iso-history
                                                                       !00000b00
********************************************************************** !00000b01
*                                                                    * !00000b02
*                               BASE24                               * !00000b03
*                               ------                               * !00000b04
*                                                                    * !00000b05
*         DDL for the ISO standard external message format           * !00000b06
*                                                                    * !00000b07
*                   Proprietary Software Product                     * !00000b08
*                                                                    * !00000b09
*                        ACI Worldwide, Inc.                         * !00000b0A
*                        6060 Coventry Drive                         * !00000b0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000b0C
*                          (402) 390-7600                            * !00000b0D
*                                                                    * !00000b0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000b0F
*                                                                    * !00000b0G
*    All Rights Reserved.                                            * !00000b0H
*                                                                    * !00000b0I
********************************************************************** !00000b0J
                                                                       !00000b0K
                                                                       !00000b0L
                                                                       !00000b0M
                                                                       !00000b0N
*                                                                      !00000M0V
* Record of Changes:                                                   !00000M0W
*                                                                      !00000M0X
* Date        Person/Emp #                                             !00000M0Y
* ---------   ------------                                             !00000M0Z
                                                                       !00000M10
                                                                       !00005M00
                                                                       !00005M01
                                                                       !00005M02
                                                                       !00736A00
* 12/29/92 RRC                                                         !00736A01
* SYMPTOM: None.                                                       !00736A02
* PROBLEM (E) : None.                                                  !00736A03
* FIX: Added the following fields to the FHM-CAF-SSBC definition in    !00736A04
*      bit S-119:                                                      !00736A05
*      CHK-BASE-FLG                                                    !00736A06
*      CSF-CHK-BASE-FLG                                                !00736A07
*      TTL-CSF-CHK-LMT                                                 !00736A08
*      OFFL-CSF-CHK-LMT                                                !00736A09
*      CSF-CHK-USE-LMT                                                 !00736A0A
* DEPENDENCIES:  Re-compile DDLS.                                      !00736A0B
* REFERENCE: Self Service Banking Check External Specification         !00736A0C
*            Update memo AE06BU02                                      !00736A0D
********************************************************************** !00736A0E
                                                                       !00736B00
* 1/5/92 RRC                                                           !00736B01
* SYMPTOM: None.                                                       !00736B02
* PROBLEM (E) : None.                                                  !00736B03
* FIX: Changed the CORP-ACCT of the FHM-CCF structure of bit S-126     !00736B04
*      to have 15 occurrences instead of 16.                           !00736B05
* DEPENDENCIES:  Re-compile DDLS.                                      !00736B06
* REFERENCE: None.                                                     !00736B07
********************************************************************** !00736B08
                                                                       !00736C00
* 1/26/93 RRC                                                          !00736C01
* SYMPTOM:      None.                                                  !00736C02
* PROBLEM (C) : In bit S-119, the following limit fields in the        !00736C03
*               FHM-CAF-SSBC structure were defined as PIC X(19)       !00736C04
*               fields when they should be PIC X(12):                  !00736C05
*                                                                      !00736C06
*               TTL-CHK-LMT                                            !00736C07
*               OFFL-CHK-LMT                                           !00736C08
*               TTL-CSF-CHK-LMT                                        !00736C09
*               OFFL-CSF-CHK-LMT                                       !00736C0A
*                                                                      !00736C0B
*               In bit S-126, the following limit field in the         !00736C0C
*               FHM-CCF structure was defined as a PIC X(19)           !00736C0D
*               field when it should be PIC X(15):                     !00736C0E
*                                                                      !00736C0F
*               CHK-LMT                                                !00736C0G
*                                                                      !00736C0H
*               In bit S-120, the following limit field in the         !00736C0I
*               FHM-CSF structure was defined as a PIC X(19)           !00736C0J
*               field when it should be PIC X(15):                     !00736C0K
*                                                                      !00736C0L
*               CHK-LMT                                                !00736C0M
*                                                                      !00736C0N
* FIX:          Changed the above fields from PIC X(19) to PIC X(12)   !00736C0O
*               or PIC X(15).                                          !00736C0P
* DEPENDENCIES: Re-compile DDLS.                                       !00736C0Q
* REFERENCE:    BETA Database RPC #002750                              !00736C0R
                                                                       !00736D03
*********************************************************************  !00736D04
*                  RELEASE 5.1                                      *  !00736D05
*********************************************************************  !00736D06
*                                                                      !00736D07
* 04JAN95    JAS  - JMS/583                                            !00736D08
* SYMPTOM:   None.                                                     !00736D09
* PROBLEM:   (E) None.                                                 !00736D0A
* FIX:       BASE24 Release 5.0 Telebanking Support                    !00736D0B
* IMPLEMENT: Swapped the TB redefines in bits S-125 and S-126 to       !00736D0C
*            minimize the impact to the overall expanded ISO message   !00736D0D
*            size.  Bit S-125 changed back to 680 bytes.  Bit S-126    !00736D0E
*            increased from 800 bytes to 845 bytes.  Added RESERVED    !00736D0F
*            fields to the ATM and TLR redefines in bit S-126.         !00736D0G
* REFERENCE: WO TB930301-01                                            !00736D0H
*                                                                      !00736D0I
* 27JAN95    JAS  - JMS/583                                            !00736D0J
* SYMPTOM:   None.                                                     !00736D0K
* PROBLEM:   (E) None.                                                 !00736D0L
* FIX:       BASE24 Release 5.0 Telebanking Support                    !00736D0M
* IMPLEMENT: Decreased the size of TB.TKN-DATA in bit S-124 to 400     !00736D0N
*            bytes.                                                    !00736D0O
* REFERENCE: WO TB930301-01                                            !00736D0P
*                                                                      !00736D0Q
* 02/21/95   Lovejoy/800 - JMS/583                                     !00736D0R
* SYMPTOM:   BASE24 Surcharging                                        !00736D0S
* PROBLEM:   (E) None.                                                 !00736D0T
* FIX:       Redefined S-95, replacing reserved pic x(30) with the     !00736D0U
*            amount subfields which total the 30 bytes.                !00736D0V
* IMPLEMENT: Re-compile DDLS.                                          !00736D0W
* REFERENCE: RPE #941018-1, ATM Surcharging External Specification     !00736D0X
*                                                                      !00736D0Y
* 95JUN01    JMS/583                                                   !00736D0Z
* SYMPTOM:   BASE24-BASE RELEASE 5.1 ENHANCEMENTS                      !00736D10
* PROBLEM:   (E) NONE.                                                 !00736D11
* FIX:       Removed AFS, EFTPOS, and Cash Manager products.           !00736D12
* IMPLEMENT: Remove reference to these products in all modules.        !00736D13
*            Re-compile DDL's.  All modules that source in the DDLGISO !00736D14
*            must be recompiled.                                       !00736D15
* REFERENCE: 950201-001                                                !00736D16
*                                                                      !00736D17
* 22AUG94    TMH/JAS - JMS/583                                         !00736D18
* SYMPTOM:   None.                                                     !00736D19
* PROBLEM:   (E) None.                                                 !00736D1A
* FIX:       BASE24 Release 5.0 Telebanking Support                    !00736D1B
*            1.  Redefined the following fields for the integration    !00736D1C
*                of the Telebanking product: P-37, P-48, P-54,         !00736D1D
*                P-60, P-61, P-63, S-118, S-121, S-123, S-124,         !00736D1E
*                S-125, and S-126.                                     !00736D1F
*            2.  Changed PROC-CDE from PIC 9(6) to PIC X(6).           !00736D1G
*            3.  Added FHM definitions in S-120 for the CUST and       !00736D1H
*                CARF files.                                           !00736D1I
* IMPLEMENT:  Any module that sources these DDLs in, should be         !00736D1J
*             recompiled.                                              !00736D1K
* REFERENCE:  WO TB930301-01                                           !00736D1L
                                                                       !00736D1M
********************************************************************** !00736C0S
                                                                       !00736E00
*                                                                      !00736E01
* 08Jun95    DSH/712, SLA/435                                          !00736E02
* SYMPTOM:   None.                                                     !00736E03
* PROBLEM:   (E) None.                                                 !00736E04
* FIX:       BASE24-Billpay Support                                    !00736E05
*                                                                      !00736E06
*               Add TB redefine for bit 44                             !00736E07
*               Increased data portion of bit 48 to 200 bytes          !00736E08
*               Add SRC-CDE      to TB redefine of bit 60              !00736E09
*               Add CUST-REF-NUM to TB redefine of bit 61              !00736E0A
*               Add TB redefine for bit 62                             !00736E0B
*               Add TB redefine for bit 104                            !00736E0C
*               Add TB-ACCT-LIST-INQ-DATA,                             !00736E0D
*                   TB-CUST-VNDR-INQ-DATA,                             !00736E0E
*                   TB-SCHED-PMNT-INQ-DATA,                            !00736E0F
*                   TB-SCHED-XFER-INQ-DATA,                            !00736E0G
*                   TB-LAST-SET-PMNT-DATA redefines to bit 126         !00736E0H
*               Add FHM definitions in bit 120 for CACT and CPIT       !00736E0I
*               Add FHM definitions in bit 123 for CSTT and PIT        !00736E0J
*                                                                      !00736E0K
* IMPLEMENT:  Any module that sources these DDLs in, should be         !00736E0L
*             recompiled.                                              !00736E0M
* REFERENCE:  Work Order #950425-1.                                    !00736E0N
*                                                                      !00736E0O
********************************************************************** !00736E0P
                                                                       !00736F00
*                                                                      !00736F01
* 11/14/95      DPS/1064 - bdc/1448                                    !00736F02
* SYMPTOM:      None.                                                  !00736F03
* PROBLEM:      (E) Release 1.0 Customer Service/Fraud Control.        !00736F04
* FIX:          Added FHM-PBF-CSFC to Bit 114 (SECNDRY-RSRVD3-NATL)    !00736F05
*               to hold the new CSFCPBF segment for Customer Service/  !00736F06
*               Fraud Control.                                         !00736F07
*               Added FHM-CCMF to bit 124 (SECNDRY-RSRVD5-PRVT).       !00736F08
*               Added FHM-CCIF0000 to Bit 124 (SECNDRY-RSRVD5-PRVT)    !00736F09
*               Added FHM-CCIF0001 to Bit 121 (SECNDRY-RSRVD2-PRVT)    !00736F0A
*               Added FHM-CCIF0002 to Bit 122 (SECNDRY-RSRVD3-PRVT)    !00736F0B
*               Added FHM-CCIF0003 to Bit 125 (SECNDRY-RSRVD6-PRVT)    !00736F0C
*               Added FHM-CCIF0004 to Bit 123 (SECNDRY-RSRVD4-PRVT)    !00736F0D
*               Added FHM-CCIF0005 to Bit 120 (SECNDRY-RSRVD1-PRVT)    !00736F0E
*               Added FHM-CCIF0006 to Bit 127 (SECNDRY-RSRVD8-PRVT)    !00736F0F
*               to hold the CCIF update via FHM.                       !00736F0G
* DEPENDENCIES: Re-compile DDLs.                                       !00736F0H
* REFERENCE:    Work Order #950212-3.                                  !00736F0I
*                                                                      !00736F0J
********************************************************************** !00736F0K
* 11/14/95        DPS/1064 - bdc/1448                                  !00736F0L
* SYMPTOM:        None.                                                !00736F0M
* PROBLEM:        Two fields in bit 114 for the new CSFC segment of    !00736F0N
*                 the PBF were defined as PIC X(19) but should have    !00736F0O
*                 been PIC X(18).  The fields are PRIOR-YTD-INT and    !00736F0P
*                 MIN-AMT-DUE.                                         !00736F0Q
* FIX:            Changed fields from PIC X(19) to PIC X(18).          !00736F0R
* DEPENDENCIES:   Re-DDL.  All modules that source in the PBFXD        !00736F0S
*                 or CSFCPBFX-DISPLAY definition must be recompiled.   !00736F0T
* REFERENCE:      Work Order #950212-3.                                !00736F0U
                                                                       !00736G00
                                                                       !00736G01
*                                                                      !00736G02
*                                                                      !00736G03
* 12/19/95        JAS                                                  !00736G04
* SYMPTOM:        TB redefines in bit 126 were not even byte.          !00736G05
* FIX:            Increased bit 126 to 936 bytes.  Added a USER-FLD    !00736G06
*                 to the fixed portion of the following redefines      !00736G07
*                 of bit 126:                                          !00736G08
*                 TB                                                   !00736G09
*                 TB-CUST-VNDR-INQ-DATA                                !00736G0A
*                 TB-SCHED-PMNT-INQ-DATA                               !00736G0B
*                 TB-SCHED-XFER-INQ-DATA                               !00736G0C
*                 TB-LAST-SET-PMNT-DATA                                !00736G0D
*                 Changed the RESERVED fields for the other redefines  !00736G0E
*                 of bit 126 appropriately.                            !00736G0F
* DEPENDENCIES:   Recompile DDLs.                                      !00736G0G
* REFERENCE:      Work Order #950425-1.                                !00736G0H
                                                                       !00736G0I
                                                                       !00736F0X
                                                                       !00736H00
* 07-03-96      JAS/673                                             !! !00736H01
* SYMPTOM:      EBMS 2.0 LITE ENHANCEMENTS                          !! !00736H02
* Problem:      (E) None.                                           !! !00736H03
* Fix:          Added LAST-TXN-CUST-MAX to the TB redefine of       !! !00736H04
*               Bit 127.  Added a new redefine of bit 126 for       !! !00736H05
*               the Multiple Accounts Balance Inquiry               !! !00736H06
*               structure.                                          !! !00736H07
* Dependencies: Run MAKE to rebuild any modules associated          !! !00736H08
*               with this modification.                             !! !00736H09
* Reference:    Work Order #960703-01.                              !! !00736H0A
                                                                       !00736I00
* 02/26/96   JJD  - 6/26/96 jjd/1474 - jms/583                         !00736I01
* SYMPTOM:    Base24-CARD Release 5.1 Enhancement.                     !00736I02
* PROBLEM:    <E> None.                                                !00736I03
* FIX:        Added field definitions for BASE24-CARD product          !00736I04
*             to bit S-123.  Upgrade BASE24-card to Release 5.1        !00736I05
* IMPLEMENT:  Apply fix and Remake.                                    !00736I06
* REFERENCE:  960130-001                                               !00736I07
                                                                       !00736J00
* 06/02/97    rkk/1641                                                 !00736J01
* SYMPTOM:    MasterCard, VISA September 1997 Mandate Enhancements     !00736J02
* PROBLEM:    <E> None.                                                !00736J03
* FIX:        Added 400 bytes to bit P-63 to handle 874 byte           !00736J04
*             Purchasing card token.                                   !00736J05
*             Removed Reserved field and changed size of ATM field     !00736J06
*             in S-126 to maximize the length of ATM token space.      !00736J07
* IMPLEMENT:  Apply fix and Remake.                                    !00736J08
* REFERENCE:  WO #970422-1, #970422-2                                  !00736J09
                                                                       !00736J0A
                                                                       !00736J0B
                                                                       !00736J0C
                                                                       !00736J0D
                                                                       !00736K00
* 01OCT1997   BH/177                                                   !00736K01
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00736K02
* Problem:    None.                                                    !00736K03
* Fix:        Added FHM-NCD-CAF to bit 116 (SECNDRY-RSRVD5-NATL).      !00736K04
* Dependency: Apply fix and remake.                                    !00736K05
* Reference:  WO #960311-5.                                            !00736K06
                                                                       !00736L00
* 16Mar1998   sab/53                                                 !!!00736L01
* Symptom:    Customer Access to CSR Transactions Enhancement        !!!00736L02
* Problem:    None.                                                  !!!00736L03
* Fix:        1) Increased the size of SECNDRY-RSRVD7-PRVT to 998    !!!00736L04
*                bytes and changed the RESERVED fields for the other !!!00736L05
*                redefines appropriately.                            !!!00736L06
*             2) Modified the definitions in SECNDRY-RSRVD7-PRVT     !!!00736L07
*                to reflect the new structures for the following:    !!!00736L08
*                    TB-CUST-VNDR-INQ-DATA                           !!!00736L09
*                    TB-LAST-SET-PMNT-DATA                           !!!00736L0A
*                    TB-SCHED-PMNT-INQ-DATA                          !!!00736L0B
*                    TB-SCHED-XFER-INQ-DATA                          !!!00736L0C
* Dependency: Run MAKE to rebuild any modules associated with this   !!!00736L0D
*             modification.                                          !!!00736L0E
* Reference:  WO #970813-1                                           !!!00736L0F
                                                                       !00736L0G
                                                                       !00736K07
                                                                       !00736M00
********************************************************************** !00736M01
*             Release 6.0                                            * !00736M02
********************************************************************** !00736M03
* 30NOV2000   jfu/543                                                  !00736M04
* Symptom:    Release 6.0 Enhancements                                 !00736M05
* Problem:    None.                                                    !00736M06
* Fix:        Added the ATM and POS Issuer Transaction Profile         !00736M07
*             fields.                                                  !00736M08
*             The RESERVED field at the end of the SECNDRY-RSRVD2-PRVT !00736M09
*             and SECNDRY-RSRVD3-PRVT structures of FHM-CAF were       !00736M0A
*             decreased by 16 bytes.                                   !00736M0B
* Dependency: Restore Release 6.0 files, modify the appropriate        !00736M0C
*             CUSTMACS flags, and run MAKE.                            !00736M0D
* Reference:  WO #981118-3 (Transactions Allowed)                      !00736M0E
********************************************************************** !00736M0F
                                                                       !00736M0G
                                                                       !00736N00
* 30MAR2001   jsc/89                                                   !00736N01
* Symptom:    Added 5.3 EMV/MC Support.                                !00736N02
* Problem:    None.                                                    !00736N03
* Fix:        Added FHM-CAF-EMV to bit 117 ( SECNDRY-RSRVD6-NATL ).    !00736N04
*             Added CRNCY-CDE to bit 120 ( SECNDRY-RSRVD1-PRVT )       !00736N05
*             under FHM-PBF and FHM-PBF-EXPAND.                        !00736N06
* Dependency: Restore Release 6.0 files, modify the appropriate        !00736N07
*             CUSTMACS flags, and run MAKE.                            !00736N08
* Reference:  WO #010102-01 ( EMV 5.3/6.0 Uplift )                     !00736N09
*             WO #990405-01 ( Multicurrency 5.3/6.0 Uplift )           !00736N0A
                                                                       !00736O00
* 06APR2001   jw/580 djb/040 jsc/89                                    !00736O01
* Symptom:    Check Stop Payment and Limited OFX Transaction Support   !00736O02
*             for BASE24-telebanking                                   !00736O03
* Problem:    None.                                                    !00736O04
* Fix:        Modified bit 126 to include redefinitions for            !00736O05
*             Statement Download and Statement Closing Download        !00736O06
*             information in responses from the host.                  !00736O07
* Dependency: Apply all fixes associated with WO #990629-01 and        !00736O08
*             WO #990629-02 and run MAKE.                              !00736O09
* Reference:  ( Retro of BA5P144 from WO #990629-02 )                  !00736O0A
*                                                                      !00736O0B
* 06APR2001   jsc/89                                                   !00736O0C
* Symptom:    Added 5.3 EMV/MC Support.                                !00736O0D
* Problem:    The Multicurrency fix is only applicable to the          !00736O0E
*             expanded version.                                        !00736O0F
* Fix:        Removed the CRNCY-CDE under the FHM-PBF of bit 120.      !00736O0G
* Dependency: Restore Release 6.0 files, modify the appropriate        !00736O0H
*             CUSTMACS flags, and run MAKE.                            !00736O0I
* Reference:  WO #990405-01 ( Multicurrency 5.3/6.0 Uplift )           !00736O0J
                                                                       !00736O0K
                                                                       !00736P00
* 18APR2001   cal/246 jsc/89                                           !00736P01
* Symptom:    BASE24 Release 5.3 PRISM Components                      !00736P02
* Problem:    None.                                                    !00736P03
* Fix:        Added bit 63 FHM-SEMF field definitions for PRISM use.   !00736P04
* Dependency: Customers should refer to the update guide,              !00736P05
*             PI53SRC.PRMUPDT, when making the code with the           !00736P06
*             prm_on flag set to true.                                 !00736P07
* Reference:  ( Retro of BA5P174 from WO #000613-002 )                 !00736P08
                                                                       !00736P09
* 24APR2001   jsc/89                                                   !00736P0A
* Symptom:    Release 6.0 Enhancements.                                !00736P0B
* Problem:    None.                                                    !00736P0C
* Fix:        1. Added FHM-CAF-CARD to bit 113                         !00736P0D
*                ( SECNDRY-RSRVD2-NATL ).                              !00736P0E
*             2. Added support to EFFECTIVE-DAT, SCND-CRD-DATA,        !00736P0F
*                GEN-KEY, ALPHA-KEY under the FHM-CAF section of       !00736P0G
*                bit 120 ( SECNDRY-RSRVD1-PRVT ).                      !00736P0H
*             3. Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST   !00736P0I
*                under the FHM-CAF-BASE-USER-INFO of bit 115           !00736P0J
*                ( SECNDRY-RSRVD4-NATL ).                              !00736P0K
*             4. Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST   !00736P0L
*                under the FHM-PBF-BASE-USER-INFO of bit 115           !00736P0M
*                ( SECNDRY-RSRVD4-NATL ).                              !00736P0N
* Dependency: Restore Release 6.0 files, modify the appropriate        !00736P0O
*             CUSTMACS flags, and run MAKE.                            !00736P0P
* Reference:  WO #000101-1  ( General Release 6.0 )                    !00736P0Q
                                                                       !00736P0R
                                                                       !00736Q00
* 24MAY2001   jsc/89                                                   !00736Q01
* Symptom:    With the addition of new 6.0 fields, 5.x and 6.0 FHM     !00736Q02
*             ISO requests were not using the correct message          !00736Q03
*             layouts.                                                 !00736Q04
* Problem:    Same as symptom.                                         !00736Q05
* Fix:        For bit 120: 5.x format message will use FHM-CAF or      !00736Q06
*             FHM-PBF-EXPAND-REL5. 6.0 format messages wil use         !00736Q07
*             FHM-CAF-EXPAND and FHM-PBF-EXPAND.                       !00736Q08
*             For bit 121 and 122: 5.x format message will use         !00736Q09
*             FHM-CAF, 6.0 format message will use FHM-CAF-EXPAND.     !00736Q0A
*             For bit 126: 5.x format message will use FHM-CAF-ACCT,   !00736Q0B
*             6.0 format message will use FHM-CAF-ACCT-EXPAND.         !00736Q0C
* Dependency: Restore Release 6.0 files, modify the appropriate        !00736Q0D
*             CUSTMACS flags, and run MAKE.                            !00736Q0E
* Reference:  Case #335186                                             !00736Q0F
                                                                       !00736R00
* 17SEP2001   jjd/615                                                  !00736R01
* Symptom:    Uplift BASE24-card to Release 6.0                        !00736R02
* Problem:    Bit 120 contains the GEN-KEY and ALPHA-KEY fields.       !00736R03
*             These fields cannot be updated by the Host.  Bit 113     !00736R04
*             was modified with a previous fix to contain FHM-CAF-CARD !00736R05
*             and this informatiion already exists in bit 123.         !00736R06
* Fix:        Removed the GEN-KEY and ALPHA-KEY fields from bit 120.   !00736R07
*             Removed FHM-CAF-CARD from bit 113.                       !00736R08
* Dependency: Apply fix to DDLGISO and reMAKE.                         !00736R09
* Reference:  WO #010801-01.                                           !00736R0A
                                                                       !00736S00
* 20AUG2001   RKK/299                                                  !00736S01
* Symptom:    Triple/Single DES Enhancement                            !00736S02
* Problem:    None.                                                    !00736S03
* Fix:        Added MAC-KEY-LGTH to NMM.OPTIONS                        !00736S04
* Dependency: Apply fix to DDLGISO and run MAKE.                       !00736S05
* Reference:  WO #000211-01                                            !00736S06
                                                                       !00736T00
* 15JAN2003   SP/211                                                   !00736T01
* Symptom:    Offline PIN Management Enhancement 01                    !00736T02
* Problem:    None.                                                    !00736T03
* Fix:        Added three new fields under ISOSSEM: PIN-SYNC-ACT,      !00736T04
*             SEND-PIN-UNBLK and SEND-PIN-CHNG that are to be used     !00736T05
*             in the management of Offline PIN transactions.  Also,    !00736T06
*             added to the same struture three new fields:             !00736T07
*             ACCESS-SCRIPT-MGMT-SUB-SYS, ISS-APPL-DATA-FRMT and       !00736T08
*             DATA-TAG that are to be used as part of future EMV       !00736T09
*             enhancements.                                            !00736T0A
* Dependency: Apply fix to DDLGISO and run MAKE.                       !00736T0B
*             Refer to BA60UD06.SCNPPOS2 for a complete listing        !00736T0C
*             of dependencies.                                         !00736T0D
* Reference:  WO #020715-04                                            !00736T0E
                                                                       !00736T0F
                                                                       !00736T0G
                                                                       !00736T0H
                                                                       !00736T0I
                                                                       !00736T0J
                                                                       !00736T0K
                                                                       !00736T0L
                                                                       !00736U00
                                                                       !00736U01
* 07FEB2003   RR/26                                                    !00736U02
* Symptom:    POS Enhancements.                                        !00736U03
* Problem:    None.                                                    !00736U04
* Fix:        Added Enhanced Pre-Auth definitions. Field descriptions  !00736U05
*             can be found in DDLGDEFS.                                !00736U06
* Dependency: Apply fix to DDLGISO and run MAKE. Refer to              !00736U07
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00736U08
* Reference:  WO #020606-01                                            !00736U09
                                                                       !00736U0A
                                                                       !00736U0B
                                                                       !00736V00
* 02SEP2003   BN/517                                                   !00736V01
* Symptom:    Enhancement to support Irish Reciprocity.                !00736V02
* Problem:    None.                                                    !00736V03
* Fix:        Enhance Additional Amounts (P-54) and ATM Deposit Credit !00736V04
*             Amount (S-123) to hold two currencies, the transaction   !00736V05
*             currency and settlement currency.                        !00736V06
* Dependency: Apply fix to DDLGISO and re-MAKE.                        !00736V07
* Reference:  WO #030504-06                                            !00736V08
                                                                       !00736V09
* 15OCT2003   SP/211                                                   !00736V0A
* Symptom:    M/Chip 4 support enhancement.                            !00736V0B
* Problem:    None.                                                    !00736V0C
* Fix:        Updated FHM-CAF-EMV definition to include action table   !00736V0D
*             index field.                                             !00736V0E
* Dependency: Apply fixes to DDLGISO and run MAKE.                     !00736V0F
*             Refer to BA60UD07.SCNMCHP4 for a complete listing        !00736V0G
*             of dependencies.                                         !00736V0H
* Reference:  WO #030609-01                                            !00736V0I
                                                                       !00736V0J
                                                                       !00736W00
* 15OCT2004   AldersR                                                  !00736W01
* Symptom:    Automated Hot Card Update.                               !00736W02
* Problem:    None.                                                    !00736W03
* Fix:        Add code to process request for Hot Card Update.         !00736W04
*             Definitions modified:                                    !00736W05
*                 SECNDRY-RSRVD2-NATL                                  !00736W06
*                 SECNDRY-RSRVD3-NATL                                  !00736W07
*                 SECNDRY-RSRVD6-PRVT                                  !00736W08
* Dependency: Apply fix to DDLGISO and run Make.                       !00736W09
*             Refer to BA60UD08.SCNHRCD for a complete listing of      !00736W0A
*             dependencies.                                            !00736W0B
* Reference:  WO #030524-01                                            !00736W0C
                                                                       !00736X00
* 14OCT2005   CarlsoB                                                  !00736X01
* Symptom:    PRM 7.0 SEMF changes cause a MAKE failure when           !00736X02
*             FHM_SEMF_ON flag is set to true.                         !00736X03
* Problem:    Current FHM code references PRM 6.1 SEMF structure       !00736X04
*             elements.  These same references are invalid when        !00736X05
*             PRM 7.0 SEMF structure is in place causing invalid       !00736X06
*             reference errors.                                        !00736X07
* Fix:        Added a new redefinition to DATA of PRI-RSRVD4-PRVT,     !00736X08
*             namely FHM-SEMF-70 which includes the PRM 7.0 ISO        !00736X09
*             message layout.                                          !00736X0A
*             Definition modified:                                     !00736X0B
*                 PRI-RSRVD4-PRVT                                      !00736X0C
* Dependency: Apply fixes to the following files:                      !00736X0D
*               BA60DDL.DDLGISO,                                       !00736X0E
*               FH60DDL.DDLFHSTM,                                      !00736X0F
*               FH60EXT.ULFXM, FH60EXT.ULFXS,                          !00736X0G
*               FH60FHM.FHFHMM, FH60FHM.FHMS,                          !00736X0H
*               and FH60SRC: FHMFM, FHMGBLS, FHMM, and FHMMM.          !00736X0I
*             Remove FH60SEMF subvolume.                               !00736X0J
*             For PRM 7.0 customers restore the following new files    !00736X0K
*               on PI70FHM: FHMSEMFM, FHMSEMFS, FHSRPTM, FHSRPTS,      !00736X0L
*               PIFHMFM, PIFHMM, PIFHMMM, and PIULFXS.                 !00736X0M
*               Apply fixes to the following PI70SRC files PRMFM,      !00736X0N
*               PRMM and PRMMM.                                        !00736X0O
*             For PRM 6.1 customers restore the following new files    !00736X0P
*               on PI61FHM: FHMSEMFM, FHMSEMFS, FHSRPTM, FHSRPTS,      !00736X0Q
*               PIFHMFM, PIFHMM, PIFHMMM, and PIULFXS.                 !00736X0R
*               Apply fixes to the following PI61SRC files PRMFM,      !00736X0S
*               PRMM and PRMMM.                                        !00736X0T
*             For PRM 6.0 customers restore the following new files    !00736X0U
*               on PI60FHM: FHMSEMFM, FHMSEMFS, FHSRPTM, FHSRPTS,      !00736X0V
*               PIFHMFM, PIFHMM, PIFHMMM, and PIULFXS.                 !00736X0W
*               Apply fixes to the following PI60SRC files PRMFM,      !00736X0X
*               PRMM and PRMMM.                                        !00736X0Y
*             Run Make.                                                !00736X0Z
* Reference:  Case #402953                                             !00736X0a
                                                                       !00736X0b
                                                                       !00736W0D
                                                                       !00736Y00
* 14OCT2006   BartonD                                                  !00736Y01
* Symptom:    Incomplete comments for ADDR-VRFY-STAT field.            !00736Y02
* Problem:    Incomplete comments for ADDR-VRFY-STAT field.            !00736Y03
* Fix:        Modified comments only.                                  !00736Y04
*             Added paragraph to specify that the field could contain  !00736Y05
*             interchange-specific values.                             !00736Y06
* Dependency: Apply fix to DDLGISO and run Make.                       !00736Y07
* Reference:  Case #409327                                             !00736Y08
*                                                                      !00736Y09
* 14OCT2006   steffej                                                  !00736Y0A
* Symptom:    HISO Full Message Encryption Enhancement                 !00736Y0B
* Problem:    None.                                                    !00736Y0C
* Fix:        Reused RSRVD-INFO within BASE24-SEC-INFO (bit 53) to     !00736Y0D
*             support PIN-CHK-DGT and MAC-CHK-DGT.  The new            !00736Y0E
*             fields are used for encryption error detection.          !00736Y0F
* Dependency: Apply fix to DDLGISO and run Make.                       !00736Y0G
*             Refer to BA60UD0A.SCNHISO for a complete listing of      !00736Y0H
*             dependencies.                                            !00736Y0I
* Reference:  WO #060831-01                                            !00736Y0J
                                                                       !00736Y0K
                                                                       !00736Z00
* 12OCT2007   SteffeJ                                                  !00736Z01
* Symptom:    CAP Authentication                                       !00736Z02
* Problem:    None.                                                    !00736Z03
* Fix:        Added the following new subfields in the CAF FHM         !00736Z04
*             external message (field S-117), within the FHM-CAF-EMV   !00736Z05
*             structure:  CAP-APSN-1, CAP-DKI-1, CAP-APSN-2,           !00736Z06
*             CAP-DKI-2, and BAD-CAP-TKN-OVRRDE-FLG.  Reduced the      !00736Z07
*             length of RESERVED by 9 bytes.                           !00736Z08
* Dependency: Apply fix to DDLGISO.  Run Make.                         !00736Z09
*             Refer to BA60UD0B.SCNCAP for a complete listing of       !00736Z0A
*             dependencies.                                            !00736Z0B
* Reference:  WO #070307-01                                            !00736Z0C
                                                                       !00736Z0D
* 12OCT2007   NataraM                                                  !00736Z0E
* Symptom:    Preferred Transaction.                                   !00736Z0F
* Problem:    None.                                                    !00736Z0G
* Fix:        Added a redefine of the CAF external message (field      !00736Z0H
*             S-118) to support the new preferred transaction segment. !00736Z0I
* Dependency: Apply fixes to DDLGISO.  Run Make.  Refer to             !00736Z0J
*             BA60UD0B.SCNPTXN for a complete listing of dependencies. !00736Z0K
* Reference:  WO #060419-01                                            !00736Z0L
                                                                       !00736Z0M
                                                                       !00736a00
* 17OCT2008   BhattaD                                                  !00736a01
* Symptom:    Support Additional Flexibility in EMV Processing.        !00736a02
* Problem:    None.                                                    !00736a03
* Fix:        Added SCRIPT-TPLT-TAG and SCRIPT-MAC-LGTH fields and     !00736a04
*             reduced the size of RESERVED field by 2 bytes.           !00736a05
* Dependency: Apply fix to DDLGISO and run Make. Refer to              !00736a06
*             BA60UD0C.SCNFLEX for a complete listing of dependencies. !00736a07
* Reference:  WO #080102-02                                            !00736a08
                                                                       !00736a09
                                                                       !00736b00
* 06NOV2009   BhattaD                                                  !00736b01
* Symptom:    ATM Bulk Check Infrastructure Support.                   !00736b02
* Problem:    None.                                                    !00736b03
* Fix:        Redefined the fields S-113, S-116 and S-117 to contain   !00736b04
*             Bulk Check Amount Token Data, Bulk Check SSBC Token Data !00736b05
*             and Bulk Check Disposition Token Data respectively.      !00736b06
*             Increased the size of the fields S-114 and S-115 to 800  !00736b07
*             bytes and redefined them to contain Bulk Check MICR      !00736b08
*             Token Data.                                              !00736b09
* Dependency: Apply fix to DDLGISO and run Make. Refer to              !00736b0A
*             BA60UD0D.SCNBCA for a complete listing of dependencies.  !00736b0B
* Reference:  WO #090227-01                                            !00736b0C
                                                                       !00736b0D
* 06NOV2009   BartonD                                                  !00736b0E
* Symptom:    Incorrect comments for fields 28, 29, 30, 31.            !00736b0F
* Problem:    Same as symptom.                                         !00736b0G
* Fix:        Changed comments to specify the correct values for the   !00736b0H
*             first byte of fields 28, 29, 30, 31.                     !00736b0I
* Dependency: Apply fix to DDLGISO and run Make.                       !00736b0J
* Reference:  Case #483720                                             !00736b0K
                                                                       !00736b0L
                                                                       !00736c00
* 20DEC2011   WisharJ                                                  !00736c01
* Symptom:    BASE24 Migration Enhancements                            !00736c02
* Problem:    During Migration from BASE24 to BASE24-eps, the          !00736c03
*             following changes are required:                          !00736c04
*             1) POS Settlement Clerk totals need to be sent to or     !00736c05
*                received from the BASE24-eps system as logonly        !00736c06
*                messages so that they can be included in the extract. !00736c07
*             2) OAR requests need to be sent to or received from      !00736c08
*                BASE4-eps for authorizarion.                          !00736c09
*             3) ATM only allows room for 978 bytes of token data.     !00736c0A
*             4) ATM Settlement totals need to be passed to            !00736c0B
*                BASE24-eps, but use too much room as a token.         !00736c0C
*             5) New values can be present in the stat field.          !00736c0D
* Fix:        1) Added a POS-CLERK-TTLS redefine to field S-126,       !00736c0E
*                (SECNDRY-RSRVD7-PRVT) to hold the Clerk totals.       !00736c0F
*             2) Added a Multiple account field (redefined from        !00736c0G
*                reserved space) in a new redefine (B24-MIGR-EXPAND)   !00736c0H
*                of field S-122 (SECNDRY-RSRVD3-PRVT).                 !00736c0I
*                Added a multiple account redefine to field S-127      !00736c0J
*                (SECNDRY-RSRVD8-PRVT) to carry the account details.   !00736c0K
*                This requires the field S-127 to be increased in size !00736c0L
*                from 200 bytes to 600 bytes. Several redefines of     !00736c0M
*                this field had their reserved areas increased.        !00736c0N
*             3) Increased the ATM redefine of S-126 to use the full   !00736c0O
*                998 bytes available for the field.                    !00736c0P
*             4) Redefined field S-114 (SECNDRY-RSRVD3-NATL) to carry  !00736c0Q
*                the ATM Settlement data.                              !00736c0R
*             5) Documented new stat values.                           !00736c0S
* Dependency: Apply fix to DDLGISO and run Make.                       !00736c0T
*             Refer to BA60UD0F.SCNMIGR2 for a complete listing of     !00736c0U
*             dependencies.                                            !00736c0V
* Reference:  WO #050513-02                                            !00736c0W
                                                                       !00736c0X
********************************************************************** !00736N0B
?PAGE "ISO Standard External Message Format - Primary Layout"
?section iso
                                                                       !00736N0G
********************************************************************** !00736M0L
                                                                       !00736M0M
*                                                                     !!00737
*           ISO STANDARD EXTERNAL MESSAGE FORMAT - PRIMARY            !!00738
*     This global definition is used as a work area within the ISO    !!00739
*     Host Interface program.  It reflects the header required for    !!00740
*     BASE24 Host messages and all primary fields used with ISO       !!00741
*     messages.                                                       !!00742
*                                                                     !!00743
************************************************************************
                                                                       !00746
DEF ISOPSEM.                                                           !00747
                                                                       !00748
*            These 3 bytes are the START-OF-TEXT indicator for the    !!00749
*            ISO Standard External Message format.  CICS/IMS protocol !!00750
*            characters may preceed this field.  This field is always !!00751
*            set to "ISO".                                            !!00752
                                                                       !00753
  02  STRT-OF-TXT                         PIC X(3).                    !00754
                                                                       !00755
                                                                       !00756
*            The first 9 bytes constitute the message header which    !!00757
*            will preceed all messages transmitted between the DPC    !!00758
*            and BASE24 ISO Host Interface process.                   !!00759
                                                                       !00760
*            This field contains the product indicator for the        !!00761
*            message following.  The originating entity, either the   !!00762
*            acquiring host or BASE24 ISO HISAF, is required to set   !!00763
*            these bytes accordingly.                                 !!00764
*                 "01" =  ATM                                         !!00765
*                 "02" =  POS                                         !!00766
*                 "03" =  Teller                                      !!00767
                                                                       !00768
*                 "08" =  From Host Maintenance                       !!00769
                                                                       !00770
*                 "11" =  EMS                                         !!00771
                                                                       !00771D00
*                 "14" =  TB                                           !00771D01
                                                                       !00771D02
                                                                       !00772D00
                                                                       !00772D01
                                                                       !00772D02
                                                                       !00776
                                                                       !00777
                                                                       !00778
  02  PROD-ID                             TYPE *.                      !00779
                                                                       !00780
*            This field contains the release number associated        !!00781
*            with the product. The originating entity, either the     !!00782
*            acquiring host or BASE24 ISO HISAF, is required to set   !!00783
*            these bytes accordingly.                                 !!00784
                                                                       !00785
  02  REL-NUM                             PIC X(2).                    !00786
                                                                       !00787
*            This field is used when the interface process            !!00788
*            is not able to process the message for some reason.      !!00789
                                                                       !00789c00
*                                                                      !00789c01
*            It is also used during BASE24 to BASE24-eps migration     !00789c02
*            to indicate when a message is being treated purely as     !00789c03
*            a logonly message, or as an message to be alternate       !00789c04
*            routed to another interface.                              !00789c05
                                                                       !00789c06
                                                                       !00790
*            If the reason for rejection is a security failure        !!00791
*            this field will be set to one of the following:          !!00792
*                                                                     !!00793
*                196 - Key Synchronization Error                      !!00794
*                197 - Invalid MAC Error                              !!00795
*                198 - Operation Failed                               !!00796
*                199 - Security Device Failure                        !!00797
*                                                                     !!00798
                                                                       !00798c00
*            If this field is being used during a migration project    !00798c01
*            then it may be set to one of the following values:        !00798c02
*                                                                      !00798c03
*                350 - this response from BASE24-eps could not be      !00798c04
*                      processed by the primary interface on           !00798c05
*                      BASE24-eps and so must be sent back to the      !00798c06
*                      BASE24 Authorization process to be alternate    !00798c07
*                      routed to an interface on BASE24                !00798c08
*                360 - this message is to be treated as a 'log only'   !00798c09
*                      message, logged to the (P)TLF or journal only   !00798c0A
*                361 - this is the acknowledgement of a log only       !00798c0B
*                      message.                                        !00798c0C
                                                                       !00798c0D
                                                                       !00798c0E
*            If the reason for rejection is bad data in msg, the bit  !!00799
*            map number of the offending data element will be loaded  !!00800
*            into this area and returned to the originating entity.   !!00801
*                                                                     !!00802
                                                                       !00803
  02  STAT                                PIC X(3).                    !00804
                                                                       !00805
*            On an inbound request or reversal message from an        !!00806
*            acquiring host, the acquiring host is responsible for    !!00807
*            setting this byte to a "5".                              !!00808
*            On an outbound request or reversal message from BASE24,  !!00809
*            this field will be set indicating where this request     !!00810
*            was introduced into the BASE24 system.  The message      !!00811
*            response from the authorizing DPC is to return this byte !!00812
*            in tact.                                                 !!00813
*            Valid values are:                                        !!00814
*                     "1" = device controlled by BASE24               !!00815
*                     "2" = device handler                            !!00816
*                     "3" = authorization                             !!00817
*                     "4" = host interface process                    !!00818
*                     "5" = host                                      !!00819
                                                                       !00820D00
                                                                       !00820D01
*                     "6" = switch/VRU interface process              !
*                     "7" = switch/VRU                                !
                                                                       !00820D06
                                                                       !00822
  02  ORIGINATOR                          PIC X.                       !00823
                                                                       !00824
*           This field is utilized to indicate where the request response
*           was generated.                                            !!00827
*           If the request response (0210) is generated by an authorizing
*           DPC, the DPC is responsible for setting this byte to a "5".
*           If the request response (0210) is generated under the control
*           of BASE24, it will set accordingly and returned to the    !!00834
*           acquiring DPC.                                            !!00835
*           Valid values are:                                         !!00836
*                    "1" = device controlled by BASE24                !!00837
*                    "2" = device handler                             !!00838
*                    "3" = authorization                              !!00839
*                    "4" = host interface process                     !!00840
*                    "5" = host                                       !!00841
*                    "6" = switch interface process                   !!00842
*                    "7" = switch                                     !!00843
*                    "8" = from host maintenance                      !!00844
                                                                       !00845
  02  RESPONDER                           PIC X.                       !00846
                                                                       !00847
*           This area is the actual ISO message format and is primarily
*           used as a work area for building/translating inbound and  !!00850
*           outbound messages.                                        !!00851
*                                                                     !!00852
*           This field indicates the type format of the ISO message   !!00853
*           following the primary and, possibly secondary bit maps.   !!00854
*                                                                     !!00855
*                0100 = Authorization request                         !!00856
*                0110 = Authorization request response                !!00857
*                0120 = Authorization advice                          !!00858
*                0130 = Authorization advice response                 !!00859
*                0200 = Financial transaction request                 !!00860
*                0210 = Financial transaction request response        !!00861
*                0220 = Financial transaction advice                  !!00862
*                0221 = Financial transaction advice repeat           !!00863
*                0230 = Financial transaction advice response         !!00864
*                0300 = File update request                           !!00865
*                0310 = File update request response                  !!00866
*                0402 = Card issuer reversal request                  !!00867
*                0412 = Card issuer reversal request response         !!00868
*                0420 = Transaction reversal advice                   !!00869
*                0421 = Transaction reversal advice repeat            !!00870
*                0430 = Transaction reversal advice response          !!00871
*                0500 = Reconciliation request                        !!00872
*                0510 = Reconciliation request response               !!00873
                                                                       !00874
*                0620 = Administrative advice                         !!00875
*                0621 = Administrative advice repeat                  !!00876
*                0630 = Administrative advice response                !!00877
                                                                       !00878
*                0800 = Network management, sign on                   !!00879
*                0810 = Network management, echo test                 !!00880
                                                                       !00881
  02  TYP                                 PIC X(4).                    !00882
                                                                       !00883
*           This field contains the primary bit map in translated byte!!00884
*           format.  The map indicates the presence or absence of data!!00885
*           fields for elements 1 thru 64.                            !!00886
                                                                       !00887
  02  PRI-BIT-MAP                         PIC X(16).                   !00888
                                                                       !00889
*           This field contains the secondary bit map in translated   !!00890
*           byte format.  The map indicates the presence or absence of!!00891
*           of data field for elements 65 thru 128.                   !!00892
*           Bit map position = 1 (if present)                         !!00893
                                                                       !00894
  02  SECNDRY-BIT-MAP                     PIC X(16).                   !00895
                                                                       !00896
*           This field contains the length of the Primary Account     !!00897
*           Number and the Primary Account Number.                    !!00898
*           Bit map position = 2                                      !!00899
*                                                                     !!00900
  02  PAN.                                                             !00901
      04  LEN                             PIC 9(2).                    !00902
      04  DATA                            PIC 9(19).                   !00903
                                                                       !00904
*           This field contains the processing code (type of transaction)
*           Bit map position = 3                                      !!00907
*                                                                     !!00908
  02  PROC-CDE.                                                        !00909
                                                                       !00910D00
                                                                       !00910D01
      04  TRAN-CDE                        PIC X(2).                    !00910D02
      04  FROM-ACCT-TYP                   PIC X(2).                    !00910D03
      04  TO-ACCT-TYP                     PIC X(2).                    !00910D04
                                                                       !00910D05
                                                                       !00913
                                                                       !00914
*           This is the amount of the transaction.  Decimalization    !!00915
*           implies from the currency code being transmitted in Bit 49!!00916
*           (TRAN-CRNCY-CDE).                                         !!00917
*           Bit map position = 4                                      !!00918
                                                                       !00919
  02  TRAN-AMT                            PIC 9(12).                   !00920
                                                                       !00921
*           This field contains the settlement amount of the transaction
*           if multiple currencies involved in the transaction. Decimalization
*           implied from the currency code transmitted in Bit 50 (SETL-
*           CRNCY-CDE).                                               !!00928
*           Bit map position = 5                                      !!00929
*                                                                     !!00930
  02  SETL-AMT                            PIC 9(12).                   !00931
                                                                       !00932
*           This field contains the billing amount associated with this
*           transaction.  Decimalization implied from the currency code
*           transmitted in Bit 51 (CRD-ISS-CRNCY-CDE).                !!00937
*           Bit map position = 6                                      !!00938
                                                                       !00939
  02  BILL-AMT                            PIC 9(12).                   !00940
                                                                       !00941
*           This is the date and time the transaction is transmitted to
*           the authorizing entity in GMT.  (Format: MMDDHHMMSS)      !!00944
*           Bit map position = 7                                      !!00945
                                                                       !00946
  02  XMIT-DAT-TIM                        PIC 9(10).                   !00947
                                                                       !00948
*           This field represents the amount the CARD-ISSUER will assess
*           the cardholder for processing of this transaction.        !!00951
*           Decimalization implied from the currency code transmitted in
*           Bit 51 (CRD-ISS-CRNCY-CDE).                               !!00954
*           Bit map position = 8                                      !!00955
                                                                       !00956
  02  BILL-FEE                            PIC 9(8).                    !00957
                                                                       !00958
*           This is the settlement conversion rate used in determining!!00959
*           the final settlement amount of the transaction.  TRAN-AMT is
*           multipled by this field to determine SETL-AMT.  The first !!00962
*           byte indicates the decimalization position from the right.!!00963
*           Bit map position = 9                                      !!00964
                                                                       !00965
  02  SETL-CONV-RAT                       PIC 9(8).                    !00966
                                                                       !00967
*           This is the cardholder conversion rate used in determining!!00968
*           the final billing amount of the transaction.  TRAN-AMT is !!00969
*           multipled by this field to determine BILL-AMT.  The first !!00970
*           byte indicates the decimalization position from the right.!!00971
*           bit map position = 10                                     !!00972
                                                                       !00973
  02  BILL-CONV-RAT                       PIC 9(8).                    !00974
                                                                       !00975
*           This is the system trace number associated with this transaction
*           and does not change throughout the life of the transaction.
*           Bit map position = 11                                     !!00980
*                                                                     !!00981
  02  TRACE-NUM                           PIC 9(6).                    !00982
                                                                       !00983
*           This is the local terminal transaction time when the transaction
*           originated. (Format: HHMMSS)                              !!00986
*           Bit map position = 12                                     !!00987
                                                                       !00988
  02  TRAN-TIM                            PIC 9(6).                    !00989
                                                                       !00990
*           This is the local terminal transaction date when the transaction
*           originated. (Format: MMDD)                                !!00993
*           Bit map position = 13                                     !!00994
*                                                                     !!00995
  02  TRAN-DAT                            PIC 9(4).                    !00996
                                                                       !00997
*           This field contains the expiration date of the card. (Format: YYMM)
*           Bit map position = 14                                     !!01000
                                                                       !01001
  02  EXP-DAT                             PIC 9(4).                    !01002
                                                                       !01003
*           This field contains the date the transaction will be settled when
*           an interchange is involved in the transaction. (Format: MMDD)
*           Bit map position = 15                                     !!01008
                                                                       !01009
  02  SETL-DAT                            PIC 9(4).                    !01010
                                                                       !01011
*           This field contains the date the conversion rate takes effect
*           in converting TRAN-AMT to SETL-AMT.  (Format: MMDD)       !!01014
*           Bit map position = 16                                     !!01015
                                                                       !01016
  02  CONV-DAT                            PIC 9(4).                    !01017
                                                                       !01018
*           This field contains the BASE24 posting date.  (Format: MMDD)
*           Bit map position = 17                                     !!01021
                                                                       !01022
  02  CAP-DAT                             PIC 9(4).                    !01023
                                                                       !01024
*           This field contains the merchant's type code. In US, this is
*           the service industry code (SIC).                          !!01027
*           Bit map position = 18                                     !!01028
                                                                       !01029
                                                                       !01030
                                                                       !01031
  02  MRCHT-TYP-CDE                       PIC 9(4).                    !01032
                                                                       !01033
                                                                       !01034
                                                                       !01035
                                                                       !01036
                                                                       !01037
                                                                       !01038
                                                                       !01039
*           This field contains the acquiring institution's country code.
*           Bit map position = 19.                                    !!01042
                                                                       !01043
  02  ACQ-INST-CNTRY-CDE                  PIC 9(3).                    !01044
                                                                       !01045
*           This is the PAN Extended country code.                    !!01046
*           Bit map position = 20.                                    !!01047
                                                                       !01048
  02  PAN-EXT-CNTRY-CDE                   PIC 9(3).                    !01049
                                                                       !01050
*           This field contains the country code of the Forwarding    !!01051
*           Institution.                                              !!01052
*           Bit map position = 21                                     !!01053
                                                                       !01054
  02  FRWD-INST-CNTRY-CDE                 PIC 9(3).                    !01055
                                                                       !01056
*           This field contains the Point-of-Service Entry mode.      !!01057
*           Bit map position = 22                                     !!01058
                                                                       !01059
  02  ENTRY-MDE                           PIC 9(3).                    !01060
                                                                       !01061
*           This field contains the sequence number associated with   !!01062
*           this specific PAN.                                        !!01063
*           Bit map position = 23                                     !!01064
*                                                                     !!01065
  02  MBR-NUM                             TYPE *.                      !01066
                                                                       !01067
*           This field contains the network international identifier. !!01068
*           Bit map position = 24                                     !!01069
                                                                       !01070
  02  NETW-INTL-ID                        PIC 9(3).                    !01071
                                                                       !01072
*           This field contains  special condition code               !!01073
*           Bit map position = 25                                     !!01074
                                                                       !01075
  02  PT-TRAN-SPCL-CDE                    PIC 9(2).                    !01076
                                                                       !01077
*           This field contains a code indicating the technique and/or!!01078
*           maximum number of PIN characters accepted by the point of !!01079
*           service device used to construct the PIN data.            !!01080
*           Bit map position = 26                                     !!01081
                                                                       !01082
  02  POS-PIN-CAPTURE-CDE                 PIC 9(2).                    !01083
                                                                       !01084
*           This field contains the maximum length of an authorization!!01085
*           response which the Acquirer can handle.                   !!01086
*           Bit map position = 27                                     !!01087
                                                                       !01088
  02  AUTH-ID-RESP-LEN                    PIC 9.                       !01089
                                                                       !01090
*           This field contains the fee associated with this transaction
*           in the currency of TRAN-AMT.  TRAN-FEE.IND is a single alpha
                                                                       !01095b00
*           indicating either "-" for Negative, or "+" for Positive.  !!01095b01
                                                                       !01095b02
*           Bit map position = 28                                     !!01096
*                                                                     !!01097
  02  TRAN-FEE.                                                        !01098
      04  IND                             PIC X.                       !01099
      04  AMT                             PIC 9(8).                    !01100
                                                                       !01101
*           This field contains the fee associated with this transaction
*           in the currency of SETL-AMT.  SETL-FEE.IND is a single alpha
                                                                       !01106b00
*           indicating either "-" for Negative, or "+" for Positive.  !!01106b01
                                                                       !01106b02
*           Bit map position = 29                                     !!01107
*                                                                     !!01108
  02  SETL-FEE.                                                        !01109
      04  IND                             PIC X.                       !01110
      04  AMT                             PIC 9(8).                    !01111
                                                                       !01112
                                                                       !01112b00
                                                                       !01112b01
*           This field contains the processing fee associated with     !01112b02
*           this transaction as levied by the acquiring, forwarding,   !01112b03
*           or network in the currency of TRAN-AMT. TRAN-PROC-FEE.IND  !01112b04
*           is a single alpha indicating either "-" for Negative, or   !01112b05
*           "+" for Positive.                                          !01112b06
                                                                       !01112b07
                                                                       !01119b00
                                                                       !01119b01
*           Bit map position = 30                                     !!01120
                                                                       !01121
  02  TRAN-PROC-FEE.                                                   !01122
      04  IND                             PIC X.                       !01123
      04  AMT                             PIC 9(8).                    !01124
                                                                       !01125
                                                                       !01125b00
                                                                       !01125b01
*           This field contains the processing fee associated with     !01125b02
*           this transaction as levied by the acquiring, forwarding,   !01125b03
*           or network in the currency of SETL-AMT. SETL-PROC-FEE.IND  !01125b04
*           is a single alpha indicating either "-" for Negative, or   !01125b05
*           "+" for Positive.                                          !01125b06
                                                                       !01125b07
                                                                       !01132b00
                                                                       !01132b01
*           Bit map position = 31                                     !!01133
                                                                       !01134
  02  SETL-PROC-FEE.                                                   !01135
      04  IND                             PIC X.                       !01136
      04  AMT                             PIC 9(8).                    !01137
                                                                       !01138
*           This is the acquiring institution identication code.      !!01139
*           Bit map position = 32                                     !!01140
                                                                       !01141
  02  ACQ-INST-ID.                                                     !01142
      04  LEN                             PIC 9(2).                    !01143
      04  NUM                             PIC 9(11).                   !01144
                                                                       !01145
*           This if the forwarding institution identification code.   !!01146
*           Bit map position = 33                                     !!01147
*                                                                     !!01148
  02  FRWD-INST-ID.                                                    !01149
      04  LEN                             PIC 9(2).                    !01150
      04  NUM                             PIC 9(11).                   !01151
                                                                       !01152
*           This field contains the Extended PAN.                     !!01153
*           Bit map position = 34                                     !!01154
*                                                                     !!01155
  02  PAN-EXTND.                                                       !01156
      04  LEN                             PIC 9(2).                    !01157
      04  NUM                             PIC X(28).                   !01158
                                                                       !01159
*           This field contains the Track 2 information.              !!01160
*           Bit map position = 35                                     !!01161
                                                                       !01162
  02  TRACK2.                                                          !01163
      04  LEN                             PIC 9(2).                    !01164
      04  DATA                            PIC X(37).                   !01165
                                                                       !01166
*           This field contains the Track 3 information.              !!01167
*           Bit map position = 36                                     !!01168
                                                                       !01169
  02  TRACK3.                                                          !01170
      04  LEN                             PIC 9(3).                    !01171
      04  DATA                            PIC X(104).                  !01172
                                                                       !01173
*           This field contains the retreival reference number.       !!01174
*           In ATM, this field contains the sequence number associated!!01175
*           with this transaction, left justified, right blank fill.  !!01176
*           In teller, Bytes 1-6 contain the trace number and bytes 7-12
*           contain the device sequence number.                       !!01179
*           Bit map position = 37                                     !!01180
                                                                       !01181
  02  RETRVL-REF-NUM.                                                  !01182
      04  DATA                            PIC X(12).                   !01183
                                                                       !01184
      04  TLR                             REDEFINES DATA.              !01185
         06 TRAN-SEQ-NUM                  PIC X(6).                    !01186
         06 DEV-SEQ-NUM                   PIC X(6).                    !01187
                                                                       !01188
      04  ATM                             REDEFINES DATA.              !01189
          06 SEQ-NUM                      PIC X(12).                   !01190
                                                                       !01191
      04  POS                             REDEFINES DATA.              !01192
          06 SEQ-NUM                      PIC X(12).                   !01193
                                                                       !01193D00
      04  TB                              REDEFINES DATA.              !01193D01
          06 SEQ-NUM                      PIC X(12).                   !01193D02
                                                                       !01193D03
                                                                       !01194D00
                                                                       !01194D01
                                                                       !01194D02
                                                                       !01198
                                                                       !01199
*           This field contains the authorizing host's identification.!!01200
*           Bit map position = 38                                     !!01201
                                                                       !01202
  02  AUTH-ID-RESP                        PIC X(6).                    !01203
                                                                       !01204
*           This field contains the response code associated with     !!01205
*           this transaction.                                         !!01206
*           Bit map position = 39                                     !!01207
                                                                       !01208
  02  RESP-CDE                            PIC X(2).                    !01209
                                                                       !01210
*           This field contains the service restriction code.         !!01211
*           Bit map position = 40                                     !!01212
                                                                       !01213
  02  SERVICE-CDE                         PIC X(3).                    !01214
                                                                       !01215
*           This is the terminal identification.                      !!01216
*           Bit map position = 41                                     !!01217
                                                                       !01218
  02  TERM-ID                             PIC X(16).                   !01219
                                                                       !01220
*           This is the card acceptor idenitication code.             !!01221
*           Bit map position = 42                                     !!01222
                                                                       !01223
  02  CRD-ACCPT-ID-CDE                    PIC X(15).                   !01224
                                                                       !01225
*           This field contains the name and location of the terminal !!01226
*           owner (card acceptor).                                    !!01227
*           Bit map position = 43.                                    !!01228
                                                                       !01229
  02  CRD-ACCPT-NAME-LOC.                                              !01230
      04  TERM-OWNER                      PIC X(22).                   !01231
      04  TERM-CITY                       PIC X(13).                   !01232
      04  TERM-ST                         PIC X(3).                    !01233
      04  TERM-CNTRY                      PIC X(2).                    !01234
                                                                       !01235
                                                                       !01236
*           This field contains additional response data.             !!01237
                                                                       !01238
                                                                       !01239
                                                                       !01240
                                                                       !01241
*           Bit map position = 44                                     !!01242
                                                                       !01243
  02  RESP-DATA.                                                       !01244
      04  LEN                             PIC 9(2).                    !01245
      04  DATA                            PIC X(25).                   !01246
                                                                       !01247
*          Presence indicator:   "1" = ledger only                    !!01248
*                                "2" = available only                 !!01249
                                                                       !01250
*                                "3" = both balances used; ledger     !!01251
*                                      has preference                 !!01252
*                                "4" = both balances used; available  !!01253
*                                      has preference                 !!01254
*            If the Amount is negative then the first byte of         !!01255
*            Amount will be set to a negative sign, "-".              !!01256
                                                                       !01257
                                                                       !01258
                                                                       !01259
      04 BAL                              REDEFINES DATA.              !01260
                                                                       !01261
         06  PRESENCE-IND                 PIC X(1).                    !01262
                                                                       !01263
                                                                       !01264
         06  LEDG-BAL                     PIC X(12).                   !01265
         06  AVAIL-BAL                    PIC X(12).                   !01266
         06  AVAIL-CREDIT REDEFINES AVAIL-BAL  PIC X(12).              !01267
                                                                       !01268
                                                                       !01269
      04 POS                              REDEFINES DATA.              !01270
         06  RESP-DATA                    PIC X.                       !01271
*                                                                     !!01272
*          The address verification status field is filled in by the  !!01273
*          authorizor.  The field will contain one of the following   !!01274
*          values:                                                    !!01275
*                                                                     !!01276
*          X - EXACT:  Address and 9-digit zip match                  !!01277
*          Y - YES:   Address and 5-digit zip match                   !!01278
*          A - ADDRESS:  Address matches, zip does not match          !!01279
*          W - WHOLE ZIP:  9-digit zip matches, address does not match!!01280
*          Z - ZIP:  5-digit zip matches, Address does not match      !!01281
*          N - NO:  Address and zip do not match                      !!01282
*          U - UNAVAILABLE:  Address information is unavailable       !!01283
*          R - RETRY:  System unavailable or timeout                  !!01284
*          S - SERVICE NOT SUPPORTED:  Issuer does not support address!!01285
*               verification at Visa or the issuer processing center  !!01286
                                                                       !01286Y00
*          E - ERROR:  Transaction not eligible for address           !!01286Y01
*               verification or error occurred during processing      !!01286Y02
                                                                       !01286Y03
*          0 (ZERO) - Address Verification has not been performed     !!01287
*          SPACE - Address Verification has not been performed        !!01288
*                                                                     !!01289
                                                                       !01289Y00
*          Interchange response messages received by BASE24-pos        !01289Y01
*          may contain interchange-specific values.                    !01289Y02
*          BASE24 Interchange Interfaces do not change                 !01289Y03
*          a value received from the interchange.                      !01289Y04
*          Refer to the individual interchange documentation           !01289Y05
*          for details of interchange-specific values.                 !01289Y06
                                                                       !01289Y07
                                                                       !01289Y08
         06  ADDR-VRFY-STAT               PIC X.                       !01290
         06  RESERVED                     PIC X(23).                   !01291
                                                                       !01292
                                                                       !01292E00
      04 TB                               REDEFINES DATA.              !01292E01
         06  PMNT-DAT                     PIC X(8).                    !01292E02
         06  RESERVED                     PIC X(17).                   !01292E03
                                                                       !01292E04
                                                                       !01293
                                                                       !01294
*           This field contains any Track 1 data being transmitted.   !!01295
*           Bit map position = 45                                     !!01296
                                                                       !01297
  02  TRACK1.                                                          !01298
      04  LEN                             PIC 9(2).                    !01299
      04  DATA                            PIC X(76).                   !01300
                                                                       !01301
*           This field is reserved for ISO use only.                  !!01302
*           Bit map position = 46.                                    !!01303
                                                                       !01304
  02  ADD-DATA-ISO.                                                    !01305
      04  LEN                              PIC 9(3).                   !01306
      04  DATA                             PIC X(100).                 !01307
                                                                       !01308
*           This field is reserved for NATIONAL use only.             !!01309
*           Bit map position = 47.                                    !!01310
                                                                       !01311
  02  ADD-DATA-NATL.                                                   !01312
      04  LEN                              PIC 9(3).                   !01313
      04  DATA                             PIC X(100).                 !01314
                                                                       !01315D00
                                                                       !01315D01
                                                                       !01315D02
                                                                       !01321
*           This private field is being used by BASE24 to carry       !!01322
*           special information not normally part of the standard     !!01323
*           ISO message.                                              !!01324
*           Bit map position = 48                                     !!01325
*                                                                     !!01326
  02  ADD-DATA-PRVT.                                                   !01327
       04  LEN                            PIC 9(3).                    !01328
                                                                       !01328E00
       04  DATA                           PIC X(200).                  !01328E01
                                                                       !01328E02
                                                                       !01329E00
                                                                       !01329E01
                                                                       !01330
       04  ATM                            REDEFINES DATA.              !01331
           06  SHRG-GRP                   PIC X(24).                   !01332
           06  TERM-TRAN-ALLOWED          PIC 9.                       !01333
           06  TERM-ST                    PIC 9(2).                    !01334
           06  TERM-CNTY                  PIC 9(3).                    !01335
           06  TERM-CNTRY                 PIC 9(3).                    !01336
           06  TERM-RTE-GRP               PIC 9(11).                   !01337
                                                                       !01337E00
           06  RESERVED                   PIC X(156).                  !01337E01
                                                                       !01337E02
                                                                       !01338E00
                                                                       !01338E01
                                                                       !01339
       04  POS                            REDEFINES DATA.              !01340
           06  RETL-ID                    PIC X(19).                   !01341
           06  RETL-GRP                   PIC X(4).                    !01342
           06  RETL-REGN                  PIC X(4).                    !01343
                                                                       !01344
                                                                       !01344E00
           06  RESERVED                   PIC X(173).                  !01344E01
                                                                       !01344E02
                                                                       !01345E00
                                                                       !01345E01
                                                                       !01346
                                                                       !01347
                                                                       !01348
                                                                       !01349
                                                                       !01350
       04  FHM                            REDEFINES DATA.              !01351
           06  MBR-NUM                    PIC 9(3).                    !01352
           06  FIID                       PIC X(4).                    !01353
           06  ACCT-TYP                   PIC X(2).                    !01354
                                                                       !01355
           06  NB-TRAN-DAT                TYPE DAT.                    !01356
           06  NB-TRAN-TIM                TYPE TIM.                    !01357
           06  SP-TYP                     PIC X(2).                    !01358
           06  SP-SEQ                     PIC X(5).                    !01359
           06  SP-AMT                     PIC X(12).                   !01360
                                                                       !01360E00
           06  RESERVED                   PIC X(158).                  !01360E01
                                                                       !01360E02
                                                                       !01361E00
                                                                       !01361E01
                                                                       !01362
       04  FHM-EXPAND                     REDEFINES DATA.              !01363
           06  MBR-NUM                    PIC 9(3).                    !01364
           06  FIID                       PIC X(4).                    !01365
           06  ACCT-TYP                   PIC X(2).                    !01366
           06  NB-TRAN-DAT                TYPE DAT.                    !01367
           06  NB-TRAN-TIM                TYPE TIM.                    !01368
           06  SPF-HI-CHK-NUM             PIC X(11).                   !01369
           06  SPF-LO-CHK-NUM             PIC X(11).                   !01370
           06  WHFF-REC-TYP               PIC X(2).                    !01371
           06  WHFF-AMT                   PIC X(15).                   !01372
           06  WHFF-DAT                   TYPE DAT.                    !01373
           06  WHFF-TIM                   TYPE TIM.                    !01374
                                                                       !01374E00
           06  RESERVED                   PIC X(124).                  !01374E01
                                                                       !01374E02
                                                                       !01375E00
                                                                       !01375E01
                                                                       !01376
                                                                       !01377
                                                                       !01378
       04  NMM                            REDEFINES DATA.              !01379
           06  OPTIONS.                                                !01380
                                                                       !01381
               08  VERSION-NUM            PIC X(2).                    !01382
               08  ACK-TO-SWI             PIC X(1).                    !01383
               08  ACK-FROM-SWI           PIC X(1).                    !01384
               08  ACQ-STANDIN            PIC X(1).                    !01385
               08  ISS-STANDIN            PIC X(1).                    !01386
               08  CUTOVER-STAT           PIC X(1).                    !01387
               08  ENCRYPT-TYP            PIC X(1).                    !01388
                                                                       !01389
*            The number of keys supported by this interface.          !!01390
*            Valid values are:                                        !!01391
*                 "1" - Combined Keys (inbound and outbound are equal)!!01392
                                                                       !01392B00
*         " ","0","2" - Separate Keys                                  !01392B01
                                                                       !01392B02
                                                                       !01393B00
                                                                       !01393B01
                                                                       !01394
               08  NUM-KEYS               PIC X(1).                    !01395
                                                                       !01396
*            The type of Key Management that is being supported       !!01397
*            by this Interface.  Valid values are:                    !!01398
                                                                       !01398B00
*             "0","1" - Single Length KEKs                             !01398B01
                                                                       !01398B02
                                                                       !01399B00
                                                                       !01399B01
*                 "2" - Double Length KEKs                            !!01400
                                                                       !01401
               08  KEY-LGTH               PIC X(1).                    !01402
                                                                       !01403
*            This field determines if this interface is the Master,   !!01404
*            Slave, or Co-Network of Dynamic Key Management.          !!01405
*            Valid values are:                                        !!01406
                                                                       !01406B00
*             "0","N" - None or N/A.                                   !01406B01
                                                                       !01406B02
                                                                       !01407B00
                                                                       !01407B01
*                 "M" - Master                                        !!01408
*                 "S" - Slave                                         !!01409
*                 "C" - Co-Network                                    !!01410
                                                                       !01411
               08  KEY-PROC-TYP           PIC X(1).                    !01412
                                                                       !01413
*            This field determines the level of MAC support for       !!01414
*            this Interface.  Valid values are:                       !!01415
*                                                                     !!01416
                                                                       !01416B00
*             " ","0" - No MAC Support                                 !01416B01
                                                                       !01416B02
                                                                       !01417B00
                                                                       !01417B01
*                 "1" - Hardware MAC Support                          !!01418
*                 "2" - Software MAC Support                          !!01419
                                                                       !01420
               08  MAC-TYP                PIC X(1).                    !01421
                                                                       !01422
*            This field determines the character set the data that    !!01423
*            will be authenticated will be in.  Valid values are:     !!01424
*                                                                     !!01425
                                                                       !01425B00
*             " ","0" - ASCII                                          !01425B01
                                                                       !01425B02
                                                                       !01426B00
                                                                       !01426B01
*                 "1" - EBCDIC                                        !!01427
                                                                       !01428
               08  MAC-DATA-TYP           PIC X(1).                    !01429
                                                                       !01430
               08  RSRVD-OPTIONS          PIC X(3).                    !01431
                                                                       !01432
                                                                       !01432S00
*            The length of MAC keys being supported by this Interface. !01432S01
*            Valid values are:                                         !01432S02
*                "0","1" - Single Length MAC keys                      !01432S03
*                "2"     - Double Length MAC keys                      !01432S04
                                                                       !01432S05
               08  MAC-KEY-LGTH           PIC X(1).                    !01432S06
                                                                       !01432S07
                                                                       !01432E00
                                                                       !01432S08
           06  RESERVED                   PIC X(183).                  !01432S09
                                                                       !01432S0A
                                                                       !01432E02
                                                                       !01433E00
                                                                       !01433E01
                                                                       !01434
                                                                       !01435D00
                                                                       !01435D01
                                                                       !01435D02
       04  TLR                            REDEFINES DATA.              !01445
           06  RTE-GRP                    PIC X(11).                   !01446
           06  INTERBNK-RTG               PIC X.                       !01447
           06  BNK-RTG-CDE                PIC X(11).                   !01448
           06  BNK-RELNSHP                PIC X(24).                   !01449
                                                                       !01449E00
           06  RESERVED                   PIC X(153).                  !01449E01
                                                                       !01449E02
                                                                       !01450E00
                                                                       !01450E01
                                                                       !01451
                                                                       !01452D00
                                                                       !01452D01
       04  TB                             REDEFINES DATA.              !01452D02
                                                                       !01452E00
           06  USER-DEF-DATA              PIC X(200).                  !01452E01
                                                                       !01452E02
                                                                       !01452E03
                                                                       !01452E04
                                                                       !01452D04
                                                                       !01454
*           This field contains the currency code of the original     !!01455
*           transaction used in (TRAN-AMT and TRAN-FEE).              !!01456
*           Bit map position = 49                                     !!01457
                                                                       !01458
  02  CRNCY-CDE                           PIC 9(3).                    !01459
                                                                       !01460
*           This field contains the currency code of the settlement   !!01461
*           amounts and fees (SETL-AMT and SETL-FEE).                 !!01462
*           Bit map position = 50                                     !!01463
                                                                       !01464
  02  SETL-CRNCY                          PIC 9(3).                    !01465
                                                                       !01466
*           This field contains the currency code of the billing amount
*           and fees (BILL-AMT and BILL-FEE).                         !!01469
                                                                       !01470
*           Bit map position = 51                                     !!01471
                                                                       !01472
                                                                       !01473
                                                                       !01474
*                                                                     !!01475
  02  BILL-CRNCY                          PIC 9(3).                    !01476
                                                                       !01477
*           This field contains the Personal Identication Number.     !!01478
*           Bit map position = 52                                     !!01479
*                                                                     !!01480
  02  PIN                                 PIC X(16).                   !01481
                                                                       !01482
*           This field contains security related control information. !!01483
*           Bit map position = 53                                     !!01484
*                                                                     !!01485
  02  SEC-CNTRL-INFO                      PIC 9(16).                   !01486
                                                                       !01487
*           This field contains security related control information  !!01488
*           for BASE24 Dynamic Key Management.                        !!01489
                                                                       !01490
  02  BASE24-SEC-INFO                     REDEFINES SEC-CNTRL-INFO.    !01491
                                                                       !01492
*           KEY-TYP describes the type of the key being exchanged.    !!01493
*                                                                     !!01494
*                  "00" - PIN                                         !!01495
*                  "01" - MAC                                         !!01496
                                                                       !01497
      04 KEY-TYP                          PIC X(2).                    !01498
                                                                       !01499
*           KEY-DIR describes the direction of the key being          !!01500
*           exchanged.                                                !!01501
*                                                                     !!01502
                                                                       !01503B00
                                                                       !01503B01
*                  "01" - Outbound                                    !!01504
*                  "02" - Inbound                                     !!01505
                                                                       !01505B00
*                  "03" - Both                                         !01505B01
                                                                       !01505B02
                                                                       !01506
      04 KEY-DIR                          PIC X(2).                    !01507
                                                                       !01508Y00
                                                                       !01508Y01
      04 PIN-CHK-DGT                      PIC X(6).                    !01508Y02
      04 MAC-CHK-DGT                      PIC X(6).                    !01508Y03
                                                                       !01508Y04
                                                                       !01510D00
                                                                       !01510D01
                                                                       !01510D02
  02  ADD-AMTS.                                                        !01530
      04  LEN                             PIC 9(3).                    !01531
      04  DATA                            PIC X(120).                  !01532
                                                                       !01533
                                                                       !01534
      04 B24-DEF                          REDEFINES DATA.              !01535
         06  AMT                          PIC X(12).                   !01536
                                                                       !01536V00
         06  SETL-AMT                     PIC X(12).                   !01536V01
         06  RESERVED                     PIC X(96).                   !01536V02
                                                                       !01536V03
                                                                       !01537V00
                                                                       !01537V01
                                                                       !01538
                                                                       !01538D00
      04  TB                              REDEFINES DATA.              !01538D01
          06  INFO                        PIC X(120).                  !01538D02
          06  AMT-DATA                    REDEFINES INFO               !01538D03
                                          OCCURS 6 TIMES.              !01538D04
              08 ACCT-TYP                 PIC 9(2).                    !01538D05
              08 AMT-TYP                  PIC 9(2).                    !01538D06
              08 CRNCY-CDE                PIC 9(3).                    !01538D07
              08 CR-DB-FLG                PIC X.                       !01538D08
              08 AMT                      PIC 9(12).                   !01538D09
                                                                       !01538D0A
                                                                       !01539
                                                                       !01540
*           The following field is reserved for ISO use.              !!01541
*           Bit map position = 55                                     !!01542
                                                                       !01543
  02  PRI-RSRVD1-ISO.                                                  !01544
      04  LEN                             PIC 9(3).                    !01545
      04  DATA                            PIC X(100).                  !01546
                                                                       !01547
*           The following field is reserved for ISO use.              !!01548
*           Bit map position = 56                                     !!01549
                                                                       !01550
  02  PRI-RSRVD2-ISO.                                                  !01551
      04  LEN                             PIC 9(3).                    !01552
      04  DATA                            PIC X(100).                  !01553
                                                                       !01554
*           The following field is reserved for national use.         !!01555
*           Bit map position = 57                                     !!01556
                                                                       !01557
  02  PRI-RSRVD1-NATL.                                                 !01558
      04  LEN                             PIC 9(3).                    !01559
      04  DATA                            PIC X(100).                  !01560
                                                                       !01561
                                                                       !01562D00
                                                                       !01562D01
                                                                       !01562D02
*           The following field is reserved for national use.         !!01573
*           Bit map position = 58                                     !!01574
                                                                       !01575
  02  PRI-RSRVD2-NATL.                                                 !01576
      04  LEN                             PIC 9(3).                    !01577
      04  DATA                            PIC X(200).                  !01578
                                                                       !01579D00
                                                                       !01579D01
                                                                       !01579D02
*           The following fields contain the Teller Financial Token   !!01588
*           Data.                                                     !!01589
                                                                       !01590
      04  TLR                             REDEFINES DATA.              !01591
          06  TKN-ID                      PIC X(2).                    !01592
          06  FNCL-TKN                    PIC X(198).                  !01593
                                                                       !01594
                                                                       !01595
                                                                       !01596
                                                                       !01597
                                                                       !01598
                                                                       !01599
*           The following field is reserved for national use.         !!01600
*           Bit map position = 59                                     !!01601
                                                                       !01602
  02  PRI-RSRVD3-NATL.                                                 !01603
      04  LEN                             PIC 9(3).                    !01604
      04  DATA                            PIC X(100).                  !01605
                                                                       !01606D00
                                                                       !01606D01
                                                                       !01606D02
*           The following fields contain the Teller CAF Update Token  !!01612
*           Data.                                                     !!01613
                                                                       !01614
      04  TLR                             REDEFINES DATA.              !01615
          06  TKN-ID                      PIC X(2).                    !01616
          06  CAFU-TKN                    PIC X(98).                   !01617
                                                                       !01618
                                                                       !01619
                                                                       !01620
                                                                       !01621
                                                                       !01622
*           The following field is reserved for private use. It is    !!01623
*           being used to transmit special BASE24 information as      !!01624
*           outlined in the data structure.                           !!01625
*           Bit map position = 60                                     !!01626
                                                                       !01627
  02  PRI-RSRVD1-PRVT.                                                 !01628
      04 LEN                              PIC 9(3).                    !01629
      04 DATA                             PIC X(100).                  !01630
                                                                       !01631
      04 TLR                              REDEFINES DATA.              !01632
         06  TERM-FIID                    TYPE FIID.                   !01633
         06  TERM-LN                      TYPE LN.                     !01634
         06  TLR-ID                       PIC X(8).                    !01635
         06  CRD-FIID                     TYPE FIID.                   !01636
         06  CRD-LN                       TYPE LN.                     !01637
         06  REGN-ID                      TYPE REGN.                   !01638
         06  BRCH-ID                      TYPE BRCH.                   !01639
         06  TERM-LOC                     PIC X(25).                   !01640
         06  DDA-CUR-FLG                  PIC X.                       !01641
         06  SAV-CUR-FLG                  PIC X.                       !01642
         06  CCD-CUR-FLG                  PIC X.                       !01643
         06  SPF-CUR-FLG                  PIC X.                       !01644
         06  NBF-CUR-FLG                  PIC X.                       !01645
         06  WHFF-CUR-FLG                 PIC X.                       !01646
         06  CRNCY-CDE                    PIC 9(3).                    !01647
         06  RESERVED                     PIC X(34).                   !01648
                                                                       !01649
      04 ATM                              REDEFINES DATA.              !01650
         06  TERM-FIID                    TYPE FIID.                   !01651
         06  TERM-LN                      TYPE LN.                     !01652
         06  TERM-TIME-OFST               PIC S999.                    !01653
         06  RESERVED                     PIC X(88).                   !01654
                                                                       !01655
      04 POS                              REDEFINES DATA.              !01656
         06  TERM-FIID                    TYPE FIID.                   !01657
         06  TERM-LN                      TYPE LN.                     !01658
         06  TERM-TIME-OFST               PIC S999.                    !01659
                                                                       !01660
                                                                       !01661
                                                                       !01662
         06  PSEUDO-TERM-ID               PIC X(4).                    !01663
                                                                       !01664
         06  RESERVED                     PIC X(84).                   !01665
                                                                       !01666
                                                                       !01667
                                                                       !01668
                                                                       !01669
                                                                       !01670
                                                                       !01671
      04 FHM                              REDEFINES DATA.              !01672
         06  DPC-NUM                      PIC 9(4).                    !01673
                                                                       !01674
         06  STA-INDEX                    PIC 9(4).                    !01675
                                                                       !01676
         06  LN                           TYPE *.                      !01677
                                                                       !01678
         06  LT-TIMSTP                    PIC 9(14).                   !01679
                                                                       !01680
         06  LOG-IND                      PIC X.                       !01681
         06  COMPL-REQ                    PIC X.                       !01682
                                                                       !01683
         06  FM-USER-GRP                  PIC 9(4).                    !01684
         06  FM-USER-NUM                  PIC 9(8).                    !01685
         06  FM-USER-STA                  PIC X(4).                    !01686
                                                                       !01687
         06  FM-TIMSTP                    PIC 9(14).                   !01688
                                                                       !01689
                                                                       !01690
         06  RESERVED                     PIC X(42).                   !01691
                                                                       !01692
      04 EMS                              REDEFINES DATA.              !01693
         06  DPC-NUM                      PIC 9(4).                    !01694
         06  HOST-PRO-NAM                 PIC X(16).                   !01695
         06  LN                           TYPE *.                      !01696
         06  MSG-ID                       PIC X(4).                    !01697
         06  FIID                         TYPE FIID.                   !01698
         06  CATEGORY-NAM                 PIC X(16).                   !01699
         06  RESERVED                     PIC X(52).                   !01700
                                                                       !01700D00
      04 TB                               REDEFINES DATA.              !01700D01
         06  ACQ-FIID                     TYPE FIID.                   !01700D02
         06  ACQ-LN                       TYPE LN.                     !01700D03
                                                                       !01700E00
         06  SRC-CDE                      PIC X(2).                    !01700E01
         06  RESERVED                     PIC X(90).                   !01700E02
                                                                       !01700E03
                                                                       !01700E04
                                                                       !01700E05
                                                                       !01700D05
                                                                       !01701D00
                                                                       !01701D01
                                                                       !01701D02
                                                                       !01733
*           This field is reserved for private use and has been       !!01734
*           defined by BASE24 to transmit special information.        !!01735
*           Bit map position = 61                                     !!01736
*                                                                     !!01737
  02  PRI-RSRVD2-PRVT.                                                 !01738
      04  LEN                              PIC 9(3).                   !01739
      04  DATA                             PIC X(100).                 !01740
                                                                       !01741
                                                                       !01742
      04  ATM                              REDEFINES DATA.             !01743
                                                                       !01744
          06  CRD-FIID                     TYPE FIID.                  !01745
                                                                       !01746
          06  CRD-LN                       TYPE LN.                    !01747
                                                                       !01748
                                                                       !01749
                                                                       !01750
                                                                       !01751
          06  SAVE-ACCT-TYP                PIC X(4).                   !01752
                                                                       !01753
                                                                       !01754
          06  AUTHORIZER                   PIC X(1).                   !01755
                                                                       !01756
                                                                       !01757
          06  ORIG-TRAN-CDE                PIC X(2).                   !01758
                                                                       !01759
                                                                       !01760
                                                                       !01761
                                                                       !01762
                                                                       !01763
          06  RESERVED                     PIC X(85).                  !01764
                                                                       !01765
                                                                       !01766
                                                                       !01767
                                                                       !01768
      04  POS                              REDEFINES DATA.             !01769
          06  CRD-FIID                     TYPE FIID.                  !01770
          06  CRD-LN                       TYPE LN.                    !01771
                                                                       !01772
          06  CATEGORY                     PIC X(1).                   !01773
                                                                       !01774
          06  SAVE-ACCT-TYP                PIC X(2).                   !01775
                                                                       !01776
                                                                       !01777
                                                                       !01778
          06  ICHG-RESP                    PIC X(8).                   !01779
                                                                       !01780
                                                                       !01781
                                                                       !01782
          06  RESERVED                     PIC X(81).                  !01783
                                                                       !01784
                                                                       !01785
                                                                       !01786
      04  FHM                              REDEFINES DATA.             !01787
          06  USER-DATA                    PIC X(100).                 !01788
                                                                       !01789
      04  EMS                              REDEFINES DATA.             !01790
          06  CERTIFY-STMP.                                            !01791
            08  DELIVERY-DAT               PIC 9(6).                   !01792
            08  DELIVERY-TIM               PIC 9(4).                   !01793
          06  DELIVERY-STAT                PIC 9.                      !01794
          06  LOC-NAM                      PIC X(16).                  !01795
          06  LOC-TYP                      PIC 9.                      !01796
          06  MBF-TIMSTP                   PIC 9(4).                   !01797
          06  SIG                          PIC X(16).                  !01798
          06  RESERVED                     PIC X(52).                  !01799
                                                                       !01800D00
                                                                       !01800D01
                                                                       !01800D02
      04  TLR                              REDEFINES DATA.             !01817
          06  DEV-TRAN-CDE                 PIC X(6).                   !01818
          06  CUST-PASSBOOK-BAL            PIC X(19).                  !01819
          06  INTL-OVRRD-LVL               PIC X.                      !01820
          06  MAX-TERM-OVRRD-LVL           PIC X.                      !01821
          06  PAPERLESS-TRAN               PIC X.                      !01822
          06  ADVC-RESP-REQ                PIC X.                      !01823
          06  CRD-PRESENT                  PIC X.                      !01824
          06  RSN-CDE                      PIC X(2).                   !01825
          06  SAVE-FROM-ACCT-TYP           PIC 9(2).                   !01826
          06  SAVE-TO-ACCT-TYP             PIC 9(2).                   !01827
          06  MULT-ACCT                    PIC X.                      !01828
          06  TERM-TIM-OFST                PIC S9999.                  !01829
          06  COMPLETE-TRACK2-DATA         PIC X.                      !01830
          06  OVRRD-TLR-ID                 PIC X(8).                   !01831
          06  RESERVED                     PIC X(49).                  !01832
                                                                       !01833
                                                                       !01833D00
      04  TB                               REDEFINES DATA.             !01833D01
          06  ISS-FIID                     TYPE FIID.                  !01833D02
          06  ISS-LN                       TYPE LN.                    !01833D03
          06  ERR-FLG                      PIC X.                      !01833D04
                                                                       !01833E00
          06  CUST-REF-NUM                 PIC X(6).                   !01833E01
          06  RESERVED                     PIC X(85).                  !01833E02
                                                                       !01833E03
                                                                       !01833E04
                                                                       !01833E05
                                                                       !01833D06
                                                                       !01834
                                                                       !01835
                                                                       !01836
*           This field is reserved for private use and has been       !!01837
*           defined by BASE24 to transmit special information.        !!01838
*           Bit map position = 62                                     !!01839
                                                                       !01840
  02  PRI-RSRVD3-PRVT.                                                 !01841
      04  LEN                             PIC 9(3).                    !01842
                                                                       !01843
                                                                       !01844
      04  DATA                            PIC 9(100).                  !01845
                                                                       !01846
      04  B24-DEF                         REDEFINES DATA.              !01847
          06  POSTAL-CDE                  TYPE POSTAL-CDE.             !01848
          06  RESERVED                    PIC X(90).                   !01849
                                                                       !01850
      04  EMS                              REDEFINES DATA.             !01851
          06  TERM-NAM                     PIC X(16).                  !01852
          06  RESERVED                     PIC X(84).                  !01853
                                                                       !01854
      04  FHM-CAF                          REDEFINES DATA.             !01855
          06  EXPONENT                     PIC X.                      !01856
          06  RESERVED                     PIC X(99).                  !01857
                                                                       !01858
      04  TLR                              REDEFINES DATA.             !01859
          06  CRD-ACTION                   PIC X.                      !01860
          06  ERR-FLG                      PIC X.                      !01861
          06  MIN-OVRRD-LVL                PIC X.                      !01862
          06  CRD-VRFY-FLG                 PIC X.                      !01863
          06  ACCT-IND                     PIC X.                      !01864
          06  RESERVED                     PIC X(95).                  !01865
                                                                       !01866
                                                                       !01866E00
      04  TB                               REDEFINES DATA.             !01866E01
          06  PRD-TYP                      PIC X(2).                   !01866E02
          06  NUM-PRD                      PIC X(4).                   !01866E03
          06  SKIP-NXT-PMNT-IND            PIC 9.                      !01866E04
          06  RESERVED                     PIC X(93).                  !01866E05
                                                                       !01866E06
                                                                       !01867
*           This field is reserved for private use and has been       !!01868
                                                                       !01869
*           defined by BASE24 to transmit special information.        !!01870
                                                                       !01871
*           Bit map position = 63                                     !!01872
                                                                       !01873
  02  PRI-RSRVD4-PRVT.                                                 !01874
      04  LEN                             PIC 9(3).                    !01875
                                                                       !01876
                                                                       !01877
                                                                       !01878J00
      04  DATA                            PIC X(997).                  !01878J01
                                                                       !01878J02
                                                                       !01879
                                                                       !01880
                                                                       !01881
      04  PIN-SELECT                      REDEFINES DATA.              !01882
          06  NEW-PIN-OFST                PIC X(16).                   !01883
                                                                       !01884
                                                                       !01885J00
          06  RESERVED                    PIC X(981).                  !01885J01
                                                                       !01885J02
                                                                       !01886
                                                                       !01887
                                                                       !01888
                                                                       !01889
      04  EMS                             REDEFINES DATA.              !01890
          06  RQST-TYP                    PIC 99.                      !01891
          06  LOOKUP-TYP                  PIC 9.                       !01892
          06  SCROLL-THRU                 PIC 9.                       !01893
                                                                       !01894
                                                                       !01895J00
          06  RESERVED                    PIC X(993).                  !01895J01
                                                                       !01895J02
                                                                       !01896
                                                                       !01897
*           The following fields contain the Teller NBF Token Data.   !!01898
                                                                       !01899
      04  TLR                             REDEFINES DATA.              !01900
          06  TKN-ID                      PIC X(2).                    !01901
          06  NBF-TKN                     PIC X(595).                  !01902
                                                                       !01902J00
          06  RESERVED                    PIC X(400).                  !01902J01
                                                                       !01902J02
                                                                       !01903
                                                                       !01904
                                                                       !01905
***********************************************************************
*                                                                     !!01908
*  P-63 is used as an "additional data" field for POS.  This data     !!01909
*  element will be used to provide other supplemental data for which  !!01910
*  specific ISO-designated data elements are not available.  This POS !!01911
*  element is used to convey one or more additional data elements.    !!01912
*  The encoding of the additional data elements contained within the  !!01913
*  POS element is as follows:                                         !!01914
*                                                                     !!01915
*   i      i+1   i+2      i+3   i+4                             i+j+1 !!01916
* ---------------------------------------------------------------------
*  Additional  !  Additional  !          Additional                   !!01919
* Data Element ! Data Element !         Data Element                  !!01920
*  Length (j)  !    Code      !             Field                     !!01921
* ---------------------------------------------------------------------
*                                                                     !!01924
* The "Additional Data Element Length" consists of two numeric digits !!01925
* in the range of 02 to 99, and indicates the number of bytes contained
* in the "Additional Data Element", including the two byte "Additional!!01928
* Data Element Code", but excluding the two bytes taken up by the     !!01929
* "Additional Data Element Length" itself.                            !!01930
*                                                                     !!01931
* The "Additional Data Element Code" consists of two numeric digits   !!01932
* in the range 00 to 99, and identifies the contents of the           !!01933
* "Additional Data Element" field to the application.                 !!01934
*                                                                     !!01935
* The "Additional Data Element" field contains the value of the       !!01936
* additional data element identified by the "Additional Data Element  !!01937
* Code".                                                              !!01938
*                                                                     !!01939
* Additional Data Elements may appear in any order within the POS     !!01940
* structure.                                                          !!01941
*-------------------------------------------------------------------- !!01942
* Reserved Codes:                                                     !!01943
*                                                                     !!01944
*   01 - Address Verification Data                                    !!01945
*        Length:  31                                                  !!01946
*          Code:  01                                                  !!01947
*          Data:  Address, PIC X(20), maps to PSTM.ADDR.ADDR          !!01948
*                 Zip Code, PIC X(9), maps to PSTM.ADDR.ZIP-CDE       !!01949
*                                                                     !!01950
*-------------------------------------------------------------------- !!01951
      04  POS                             REDEFINES DATA.              !01952
                                                                       !01953J00
          06  ADD-DATA                    PIC X(997).                  !01953J01
                                                                       !01953J02
                                                                       !01954D00
                                                                       !01954D01
                                                                       !01954D02
      04  FHM-CAF                         REDEFINES DATA.              !01966
          06  SUPER-TLR-TERM-ID           PIC X(16) OCCURS 10 TIMES.   !01967
                                                                       !01968J00
          06  RESERVED                    PIC X(837).                  !01968J01
                                                                       !01968J02
                                                                       !01969
      04  FHM-NEG                         REDEFINES DATA.              !01970
          06  SUPER-TLR-TERM-ID           PIC X(16) OCCURS 10 TIMES.   !01971
                                                                       !01972J00
          06  RESERVED                    PIC X(837).                  !01972J01
                                                                       !01972J02
                                                                       !01973
                                                                       !01974
                                                                       !01974D00
      04  TB                              REDEFINES DATA.              !01974D01
          06  NEW-PIN-OFST                PIC X(16).                   !01974D02
          06  OLD-PIN-OFST                PIC X(16).                   !01974D03
                                                                       !01974J00
          06  RESERVED                    PIC X(965).                  !01974J01
                                                                       !01974J02
                                                                       !01974D05
                                                                       !01974P00
      04  FHM-SEMF                        REDEFINES DATA.              !01974P01
*                                                                      !01974P02
*        From host maintenance updates for the Scoring Engine Master   !01974P03
*        File.                                                         !01974P04
*                                                                      !01974P05
*        Base-Info                                                     !01974P06
*                                                                      !01974P07
          06  PROD-TYP                    PIC X(2).                    !01974P08
          06  PLASTIC-TYP                 PIC X(2).                    !01974P09
          06  RQST-DAT                    PIC X(8).                    !01974P0A
          06  PIN-CHNG                    PIC X(8).                    !01974P0B
          06  LAST-ISS                    PIC X(8).                    !01974P0C
          06  EMBOSS                      PIC X(8).                    !01974P0D
          06  LAST-CRV                    PIC X(8).                    !01974P0E
          06  LAST-ADDR-CHNG              PIC X(8).                    !01974P0F
          06  LAST-STAT-CHNG              PIC X(8).                    !01974P0G
          06  OPN-DAT                     PIC X(8).                    !01974P0H
          06  NUM-ISS                     PIC X(2).                    !01974P0I
          06  CVV2                        PIC X(3).                    !01974P0J
          06  STAT                        PIC X(1).                    !01974P0K
          06  BLK-CDE                     PIC X(1).                    !01974P0L
          06  RECLASS-CDE                 PIC X(1).                    !01974P0M
          06  RATE-CLASS                  PIC X(1).                    !01974P0N
          06  BHVR-SCORE                  PIC X(4).                    !01974P0O
          06  CASH-ADV-AMT                PIC X(12).                   !01974P0P
          06  PURCH-AMT                   PIC X(12).                   !01974P0Q
          06  BAL-AMT                     PIC X(12).                   !01974P0R
          06  FRAUD-SCORE                 PIC X(3).                    !01974P0S
                                                                       !01974P0T
*                                                                      !01974P0U
*        TB-Info                                                       !01974P0V
*                                                                      !01974P0W
          06  WRK-PHN                     PIC X(20).                   !01974P0X
          06  MOB-PHN                     PIC X(20).                   !01974P0Y
          06  EMAIL-ADDR                  PIC X(40).                   !01974P0Z
          06  ID                          PIC X(30).                   !01974P10
                                                                       !01974P11
*                                                                      !01974P12
*        Core-Info                                                     !01974P13
*                                                                      !01974P14
          06  PREV-CRD-NUM                PIC X(19).                   !01974P15
          06  PRI-NAM                     PIC X(40).                   !01974P16
          06  PRI-GOVT-ID                 PIC X(20).                   !01974P17
          06  PRI-DOB                     PIC X(8).                    !01974P18
          06  SEC-NAM                     PIC X(40).                   !01974P19
          06  ADNL-NAM                    PIC X(40).                   !01974P1A
          06  MTHR-MDN-NAM                PIC X(40).                   !01974P1B
          06  ADDR-1                      PIC X(40).                   !01974P1C
          06  ADDR-2                      PIC X(40).                   !01974P1D
          06  CITY                        PIC X(30).                   !01974P1E
          06  ST                          PIC X(30).                   !01974P1F
          06  CNTRY                       PIC X(3).                    !01974P1G
          06  POSTAL-CDE                  PIC X(16).                   !01974P1H
          06  HOME-PHN                    PIC X(20).                   !01974P1I
          06  RESERVED                    PIC X(381).                  !01974P1J
                                                                       !01974X00
      04  FHM-SEMF-70                     REDEFINES DATA.              !01974X01
*                                                                      !01974X02
*        From host maintenance updates for the Scoring Engine Master   !01974X03
*        File for PRM 7.0.                                             !01974X04
*                                                                      !01974X05
*        Base-Info                                                     !01974X06
*                                                                      !01974X07
          06  PROD-TYP                    PIC X(2).                    !01974X08
          06  PLASTIC-TYP                 PIC X(2).                    !01974X09
          06  RQST-DAT                    PIC X(8).                    !01974X0A
          06  PIN-CHNG                    PIC X(8).                    !01974X0B
          06  LAST-ISS                    PIC X(8).                    !01974X0C
          06  EMBOSS                      PIC X(8).                    !01974X0D
          06  LAST-CRV                    PIC X(8).                    !01974X0E
          06  LAST-ADDR-CHNG              PIC X(8).                    !01974X0F
          06  LAST-STAT-CHNG              PIC X(8).                    !01974X0G
          06  OPN-DAT                     PIC X(8).                    !01974X0H
          06  NUM-ISS                     PIC X(2).                    !01974X0I
          06  BLK-CDE                     PIC X(1).                    !01974X0J
          06  RECLASS-CDE                 PIC X(1).                    !01974X0K
          06  BHVR-SCORE                  PIC X(4).                    !01974X0L
          06  CASH-ADV-AMT                PIC X(12).                   !01974X0M
          06  PURCH-AMT                   PIC X(12).                   !01974X0N
          06  BAL-AMT                     PIC X(12).                   !01974X0O
          06  CUST-MSTR-AMT               PIC X(16).                   !01974X0P
          06  CUST-MSTR-DAT               PIC X(8).                    !01974X0Q
          06  CUST-MSTR-FLD1              PIC X(2).                    !01974X0R
          06  CUST-MSTR-FLD2              PIC X(4).                    !01974X0S
                                                                       !01974X0T
*                                                                      !01974X0U
*        TB-Info                                                       !01974X0V
*                                                                      !01974X0W
          06  WRK-PHN                     PIC X(20).                   !01974X0X
          06  MOB-PHN                     PIC X(20).                   !01974X0Y
          06  EMAIL-ADDR                  PIC X(40).                   !01974X0Z
          06  ID                          PIC X(30).                   !01974X0a
                                                                       !01974X0b
*                                                                      !01974X0c
*        Core-Info                                                     !01974X0d
*                                                                      !01974X0e
          06  PREV-CRD-NUM                PIC X(19).                   !01974X0f
          06  PRI-NAM                     PIC X(40).                   !01974X0g
          06  PRI-GOVT-ID                 PIC X(20).                   !01974X0h
          06  PRI-DOB                     PIC X(8).                    !01974X0i
          06  SEC-NAM                     PIC X(40).                   !01974X0j
          06  ADNL-NAM                    PIC X(40).                   !01974X0k
          06  OTHR-NAM                    PIC X(40).                   !01974X0l
          06  ADDR-1                      PIC X(40).                   !01974X0m
          06  ADDR-2                      PIC X(40).                   !01974X0n
          06  CITY                        PIC X(30).                   !01974X0o
          06  ST                          PIC X(30).                   !01974X0p
          06  CNTRY                       PIC X(3).                    !01974X0q
          06  POSTAL-CDE                  PIC X(16).                   !01974X0r
          06  HOME-PHN                    PIC X(20).                   !01974X0s
          06  RESERVED                    PIC X(359).                  !01974X0t
                                                                       !01974X0u
                                                                       !01974P1K
                                                                       !01974U00
*           This field contains the enhanced pre-auth holds info.      !01974U01
                                                                       !01974U02
      04  FHM-ENHNC-PRE-AUTH-CAF          REDEFINES DATA.              !01974U03
          06  ENHNC-PRE-AUTH              OCCURS 9 TIMES.              !01974U04
              08  SEQ-NUM                 PIC X(12).                   !01974U05
              08  HOLD-AMT                PIC X(19).                   !01974U06
              08  PR-TS.                                               !01974U07
                  10  DAT                 TYPE DAT.                    !01974U08
                  10  TIM                 TYPE TIM.                    !01974U09
              08  APPV-CDE                PIC X(8).                    !01974U0A
              08  PR-TXN-TS.                                           !01974U0B
                  10  DAT                 TYPE DAT.                    !01974U0C
                  10  TIM                 TYPE TIM.                    !01974U0D
              08  TERM-ID                 PIC X(16).                   !01974U0E
              08  ACCT-TYP                PIC X(2).                    !01974U0F
              08  ACCT-NUM                PIC X(19).                   !01974U0G
              08  HOLD-FLG                PIC X.                       !01974U0H
          06  RESERVED                    PIC X(52).                   !01974U0I
                                                                       !01974U0J
                                                                       !01974U0K
                                                                       !01974U0L
                                                                       !01975
*           This field contains the message authentication code.      !!01976
                                                                       !01977
*           It has been changed from bit format to byte format.       !!01978
*           Bit map position = 64                                     !!01979
*                                                                     !!01980
  02  PRI-MAC-CDE                         PIC X(16).                   !01981
                                                                       !01982
END.                                                                   !01983
                                                                       !01984
?PAGE "ISO Standard External Message Format - Secondary Layout"
DEF ISOSSEM.                                                           !01987
                                                                       !01988
************************************************************************
*                                                                     !!01991
*          ISO STANDARD EXTERNAL MESSAGE FORMAT - SECONDARY           !!01992
*                                                                     !!01993
*     This global definition is used as a work area within the ISO    !!01994
*     Host Interface program.  It reflects all secondary fields       !!01995
*     used with ISO messages.                                         !!01996
*                                                                     !!01997
************************************************************************
                                                                       !02000
                                                                       !02001
********************************************************************* !!02002
*                                                                     !!02003
*           Bit map position 65 has not been included in the DDLs for !!02004
*           the ISO message as it would be used if a third set of     !!02005
*           data elements were present.  This is currently not supported
*           by ISO nor BASE24.                                        !!02008
*                                                                     !!02009
********************************************************************* !!02010
                                                                       !02011
*           This field contains a code indicating the result of a     !!02012
*           reconciliation request.                                   !!02013
*           Bit map position = 66                                     !!02014
                                                                       !02015
  02  SETL-CDE                            PIC 9.                       !02016
                                                                       !02017
*           This field contains the number of months that the card-   !!02018
*           holders prefers to pay for this item if permitted by      !!02019
*           the Card Issuing instutition.                             !!02020
*           Bit map position = 67                                     !!02021
                                                                       !02022
  02  EXTD-PAY-CDE                        PIC 9(2).                    !02023
                                                                       !02024
*           This is the country code of the Receiving Institution.    !!02025
*           Bit map position = 68                                     !!02026
                                                                       !02027
  02  RCV-INST-CNTRY-CDE                  PIC 9(3).                    !02028
                                                                       !02029
*           This is the country code of the Settlement Institution.   !!02030
*           Bit map position = 69                                     !!02031
                                                                       !02032
  02  SETL-INST-CNTRY-CDE                 PIC 9(3).                    !02033
                                                                       !02034
*           This is the network management information code identifing!!02035
*           the status of the network.  Position 1 indicates the general
*           area (type) of message.  Position 2 and 3 indicate the    !!02038
*           exact request (sign on, key change, echo test, etc.)      !!02039
                                                                       !02040
*           New values supported for Dynamic Key Management           !!02041
*                                                                     !!02042
*                 "161" - Change Key                                  !!02043
*                 "162" - New Key                                     !!02044
*                 "163" - Repeat Key                                  !!02045
*                 "164" - Verify Key                                  !!02046
                                                                       !02047
*           Bit map position = 70                                     !!02048
                                                                       !02049
  02  NETW-MGMT-CDE                       PIC 9(3).                    !02050
                                                                       !02051
*           This field contains a sequential, cyclic number assigned to
*           a message by the message initiator.                       !!02054
*           Bit map position = 71                                     !!02055
                                                                       !02056
  02  MSG-NUM                             PIC 9(4).                    !02057
                                                                       !02058
*           This field contains the sequential, cyclic number assigned!!02059
*           to the previous message.                                  !!02060
*           Bit map position = 72                                     !!02061
                                                                       !02062
  02  LST-MSG-NUM                         PIC 9(4).                    !02063
                                                                       !02064
*           This field contains a date to be used for future action   !!02065
*           or a static date, such a birthdate. (Format: YYMMDD)      !!02066
*           Bit map position = 73                                     !!02067
                                                                       !02068
  02  ACTION-DAT                          PIC 9(6).                    !02069
                                                                       !02070
*           This field contains the total number of credits processed.!!02071
*           Bit map position = 74                                     !!02072
                                                                       !02073
  02  NUM-CR                              PIC 9(10).                   !02074
                                                                       !02075
*           This field contains the total number of reversal credits  !!02076
*           processed.                                                !!02077
*           Bit map position = 75.                                    !!02078
                                                                       !02079
  02  NUM-CR-RVSL                         PIC 9(10).                   !02080
                                                                       !02081
*           This field contains the total number of debits processed. !!02082
*           Bit map position = 76                                     !!02083
                                                                       !02084
  02  NUM-DB                              PIC 9(10).                   !02085
                                                                       !02086
*           This field contains the total number of reversal debits   !!02087
*           processed.                                                !!02088
*           Bit map position = 77.                                    !!02089
                                                                       !02090
  02  NUM-DB-RVSL                         PIC 9(10).                   !02091
                                                                       !02092
*           This field contains the total number of transfer transactions
*           processed.                                                !!02095
*           Bit map position = 78                                     !!02096
                                                                       !02097
  02  NUM-XFER                            PIC 9(10).                   !02098
                                                                       !02099
*           This field contains the total number of transfer reversals!!02100
*           processed.                                                !!02101
*           Bit map position = 79.                                    !!02102
                                                                       !02103
  02  NUM-XFER-RVSL                       PIC 9(10).                   !02104
                                                                       !02105
*           This field contains the total number of inquiries processed.
*           Bit map position = 80                                     !!02108
                                                                       !02109
  02  NUM-INQ                             PIC 9(10).                   !02110
                                                                       !02111
*           This field contains the total number of authorizations    !!02112
*           processed.                                                !!02113
*           Bit map position = 81                                     !!02114
                                                                       !02115
  02  NUM-AUTH                            PIC 9(10).                   !02116
                                                                       !02117
*           This field contains the total amount of processing fees   !!02118
*           associated with all credit transactions processed.        !!02119
*           Bit map position = 82                                     !!02120
                                                                       !02121
  02  AMT-CR-PROC-FEES                    PIC 9(12).                   !02122
                                                                       !02123
*           This field contains the total amount of transaction fees  !!02124
*           associated with all credit transactions processed.        !!02125
*           Bit map position = 83                                     !!02126
                                                                       !02127
  02  AMT-CR-TRAN-FEES                    PIC 9(12).                   !02128
                                                                       !02129
*           This field contains the total amount of processing fees   !!02130
*           associated with all debit transactions processed.         !!02131
*           Bit map position = 84                                     !!02132
                                                                       !02133
  02  AMT-DB-PROC-FEES                    PIC 9(12).                   !02134
                                                                       !02135
*           This field contains the total amount of transaction fees  !!02136
*           associated with all debit transactions processed.         !!02137
*           Bit map position = 85                                     !!02138
                                                                       !02139
  02  AMT-DB-TRAN-FEES                    PIC 9(12).                   !02140
                                                                       !02141
*           This field contains the total amount of all credit        !!02142
*           transactions processed.                                   !!02143
*           Bit map position = 86                                     !!02144
                                                                       !02145
  02  AMT-CR                              PIC 9(16).                   !02146
                                                                       !02147
*           This field contains the total amount of all credit        !!02148
*           transaction reversals processed                           !!02149
*           Bit map position = 87                                     !!02150
                                                                       !02151
  02  AMT-CR-RVSL                         PIC 9(16).                   !02152
                                                                       !02153
*           This field contains the total amount of all debit         !!02154
*           transactions processed.                                   !!02155
*           Bit map position = 88                                     !!02156
                                                                       !02157
  02  AMT-DB                              PIC 9(16).                   !02158
                                                                       !02159
*           This field contains the total amount of all debit         !!02160
*           transaction reversals processed                           !!02161
*           Bit map position = 89                                     !!02162
                                                                       !02163
  02  AMT-DB-RVSL                         PIC 9(16).                   !02164
                                                                       !02165
*           This field is used only in reversal transactions and      !!02166
*           contains key data elements necessary to locate the        !!02167
*           original transaction.                                     !!02168
*           Bit map position = 90                                     !!02169
*                                                                     !!02170
  02  ORIG-INFO.                                                       !02171
      04  TYP                             PIC 9(4).                    !02172
      04  TRACE-NUM                       PIC 9(6).                    !02173
      04  XMIT-DAT-TIM                    PIC 9(10).                   !02174
      04  ACQ-INST-ID-NUM                 PIC 9(11).                   !02175
      04  FRWD-INST-ID-NUM                PIC 9(11).                   !02176
                                                                       !02177
                                                                       !02178
  02  B24-ORIG                            REDEFINES ORIG-INFO.         !02179
      04  ORIG-TYP                        PIC X(4).                    !02180
      04  ORIG-SEQ-NUM                    PIC X(12).                   !02181
      04  ORIG-TRAN-DAT                   PIC X(4).                    !02182
      04  ORIG-TRAN-TIM                   TYPE TIM.                    !02183
      04  ORIG-B24-POST-DAT               PIC X(4).                    !02184
      04  RESERVED                        PIC X(10).                   !02185
                                                                       !02186
                                                                       !02187
                                                                       !02188
                                                                       !02189
*           This field contains the file update code directing the    !!02190
*           maintaining system on how to process the record.          !!02191
*           Bit map position = 91                                     !!02192
                                                                       !02193
  02  FILE-UPDT-CDE                       PIC X.                       !02194
                                                                       !02195
                                                                       !02196
*           This field contains a security code verifying that the    !!02197
*           update entity has ability to perform a file update.       !!02198
*           Bit map position = 92                                     !!02199
                                                                       !02200
  02  FILE-SEC-CDE                        PIC X(2).                    !02201
                                                                       !02202
*           This field contains an indication of the update action    !!02203
*           taken by the point of service system.                     !!02204
*           Bit map position = 93                                     !!02205
                                                                       !02206
  02  RESP-IND                            PIC X(5).                    !02207
                                                                       !02208
*           This field contains an indication of the type of support  !!02209
*           service required by the recipient of the file update      !!02210
*           message.                                                  !!02211
*           Bit map position = 94                                     !!02212
                                                                       !02213
  02  SRV-IND                             PIC X(7).                    !02214
                                                                       !02215
*           This field contains the original transaction amount and   !!02216
*           is used only in a reversal situation.  BASE24 currently   !!02217
*           uses only the first 12 bytes.                             !!02218
*           Bit map position = 95                                     !!02219
*                                                                     !!02220
  02  REPLACEMENT.                                                     !02221
      04  AMT                             PIC 9(12).                   !02222
                                                                       !02222D00
      04  SETL-AMT                        PIC 9(12).                   !02222D01
      04  TRAN-FEE                        PIC 9(9).                    !02222D02
      04  SETL-FEE                        PIC 9(9).                    !02222D03
                                                                       !02222D04
                                                                       !02223D00
                                                                       !02223D01
                                                                       !02224
                                                                       !02225
                                                                       !02226
                                                                       !02227
                                                                       !02228
                                                                       !02229
*           This field contains any message security between the card !!02230
*           acceptor and card issuer needed.                          !!02231
*           Bit map position = 96                                     !!02232
                                                                       !02233
  02  MSG-SEC-CDE                         PIC X(16).                   !02234
                                                                       !02235
*           This field contains the net settlement amount.            !!02236
*           Bit map position = 97                                     !!02237
                                                                       !02238
  02  SETL-AMT-NET.                                                    !02239
      04  IND                             PIC X.                       !02240
      04  AMT                             PIC 9(16).                   !02241
                                                                       !02242
*           This field contains the third party beneficiary in a      !!02243
*           payment transaction.                                      !!02244
*           Bit map position = 98                                     !!02245
                                                                       !02246
  02  PAYEE                               PIC X(25).                   !02247
                                                                       !02248
*           The field contains the settlement institution ID code.    !!02249
*           Bit map position = 99                                     !!02250
                                                                       !02251
  02  SETL-INST.                                                       !02252
      04  LEN                             PIC 9(2).                    !02253
      04  ID-NUM                          PIC 9(11).                   !02254
                                                                       !02255
*           This field contains the receiving institution ID code.    !!02256
*           Bit map position = 100                                    !!02257
                                                                       !02258
  02  RCV-INST.                                                        !02259
      04  LEN                             PIC 9(2).                    !02260
      04  ID-NUM                          PIC 9(11).                   !02261
                                                                       !02262
*           This field contains the name of the file to be updated.   !!02263
*           Bit map position = 101                                    !!02264
                                                                       !02265
  02  FNAME.                                                           !02266
      04  LEN                             PIC 9(2).                    !02267
      04  NAME                            PIC X(17).                   !02268
                                                                       !02269
*           This field contains the account number associated with the!!02270
*           'FROM' side of a transaction.                             !!02271
*           Bit map position = 102                                    !!02272
                                                                       !02273
  02  ACCT1.                                                           !02274
      04  LEN                             PIC 9(2).                    !02275
      04  NUM                             PIC X(28).                   !02276
                                                                       !02277
*            This field contains the account number associated with the
*            'TO' side of a transaction.                              !!02280
*            Bit map position = 103                                   !!02281
*                                                                     !!02282
  02  ACCT2.                                                           !02283
      04  LEN                             PIC 9(2).                    !02284
      04  NUM                             PIC X(28).                   !02285
                                                                       !02286
*            This field contains a verbal description of the transaction
*            if transmitted for billing purposes.                     !!02289
*            Bit map position = 104                                   !!02290
                                                                       !02291
  02  TRAN-DESCR.                                                      !02292
      04  LEN                             PIC 9(3).                    !02293
      04  DATA                            PIC X(100).                  !02294
                                                                       !02294E00
                                                                       !02294E01
      04  TB                              REDEFINES DATA.              !02294E02
          06  CUST-ACCT-NUM-VNDR          PIC X(28).                   !02294E03
          06  VNDR-NAM                    PIC X(32).                   !02294E04
          06  RESERVED                    PIC X(40).                   !02294E05
                                                                       !02294E06
                                                                       !02295
*            This field is reserved for ISO use.                      !!02296
*            Bit map position = 105                                   !!02297
                                                                       !02298
  02  SECNDRY-RSRVD1-ISO.                                              !02299
      04  LEN                             PIC 9(3).                    !02300
      04  DATA                            PIC X(100).                  !02301
                                                                       !02302
*            This field is reserved for ISO use.                      !!02303
*            Bit map position = 106                                   !!02304
                                                                       !02305
  02  SECNDRY-RSRVD2-ISO.                                              !02306
      04  LEN                             PIC 9(3).                    !02307
      04  DATA                            PIC X(100).                  !02308
                                                                       !02309
*            This field is reserved for ISO use.                      !!02310
*            Bit map position = 107                                   !!02311
                                                                       !02312
  02  SECNDRY-RSRVD3-ISO.                                              !02313
      04  LEN                             PIC 9(3).                    !02314
      04  DATA                            PIC X(100).                  !02315
                                                                       !02316
*            This field is reserved for ISO use.                      !!02317
*            Bit map position = 108                                   !!02318
                                                                       !02319
  02  SECNDRY-RSRVD4-ISO.                                              !02320
      04  LEN                             PIC 9(3).                    !02321
      04  DATA                            PIC X(100).                  !02322
                                                                       !02323
*            This field is reserved for ISO use.                      !!02324
*            Bit map position = 109                                   !!02325
                                                                       !02326
  02  SECNDRY-RSRVD5-ISO.                                              !02327
      04  LEN                             PIC 9(3).                    !02328
      04  DATA                            PIC X(100).                  !02329
                                                                       !02330
*            This field is reserved for ISO use.                      !!02331
*            Bit map position = 110                                   !!02332
                                                                       !02333
  02  SECNDRY-RSRVD6-ISO.                                              !02334
      04  LEN                             PIC 9(3).                    !02335
      04  DATA                            PIC X(100).                  !02336
                                                                       !02337
*            This field is reserved for ISO use.                      !!02338
*            Bit map position = 111                                   !!02339
                                                                       !02340
  02  SECNDRY-RSRVD7-ISO.                                              !02341
      04  LEN                             PIC 9(3).                    !02342
      04  DATA                            PIC X(100).                  !02343
                                                                       !02344
*            This field is reserved for NATIONAL use.                 !!02345
*            Bit map position = 112                                   !!02346
                                                                       !02347
  02  SECNDRY-RSRVD1-NATL.                                             !02348
      04  LEN                             PIC 9(3).                    !02349
                                                                       !02350
      04  DATA                            PIC X(200).                  !02351
                                                                       !02352D00
                                                                       !02352D01
                                                                       !02352D02
*            The following fields contain the Teller Override Token   !!02355
*            Data.                                                    !!02356
                                                                       !02357
      04  TLR                             REDEFINES DATA.              !02358
          06  TKN-ID                      PIC X(2).                    !02359
          06  OVRRD-TKN                   PIC X(198).                  !02360
                                                                       !02361
                                                                       !02361U00
      04  FHM-ENHNC-PRE-AUTH-CAF-EXT      REDEFINES DATA.              !02361U01
          06  SEQ-NUM                     PIC X(12).                   !02361U02
          06  HOLD-AMT                    PIC X(19).                   !02361U03
          06  PR-TS.                                                   !02361U04
              08  DAT                     TYPE DAT.                    !02361U05
              08  TIM                     TYPE TIM.                    !02361U06
          06  APPV-CDE                    PIC X(8).                    !02361U07
          06  PR-TXN-TS.                                               !02361U08
              08  DAT                     TYPE DAT.                    !02361U09
              08  TIM                     TYPE TIM.                    !02361U0A
          06  TERM-ID                     PIC X(16).                   !02361U0B
          06  ACCT-TYP                    PIC X(2).                    !02361U0C
          06  ACCT-NUM                    PIC X(19).                   !02361U0D
          06  HOLD-FLG                    PIC X.                       !02361U0E
          06  RESERVED                    PIC X(95).                   !02361U0F
                                                                       !02361U0G
                                                                       !02362
                                                                       !02363
*            This field is reserved for NATIONAL use.                 !!02364
*            Bit map position = 113                                   !!02365
                                                                       !02366
  02  SECNDRY-RSRVD2-NATL.                                             !02367
      04  LEN                             PIC 9(3).                    !02368
                                                                       !02369P00
      04  DATA                            PIC X(400).                  !02369P01
                                                                       !02369P02
                                                                       !02369W00
*            The following fields contain data used by From Host       !02369W01
*            Maintenance Host Interface in order to send hot card      !02369W02
*            updates to BASE24 interchange interfaces.  This data      !02369W03
*            element may not be used to store FHM CAF or NEG data.     !02369W04
                                                                       !02369W05
      04  HOT-CRD-UPDT                    REDEFINES DATA.              !02369W06
          06  DEST-SVC                    PIC X(16).                   !02369W07
          06  PATH-HDR-FRMT               PIC X(2).                    !02369W08
          06  PATH-RQST                   PIC X(382).                  !02369W09
                                                                       !02369W0A
                                                                       !02369b00
*            The following fields contain the Bulk Check Amount        !02369b01
*            Token Data.                                               !02369b02
                                                                       !02369b03
      04  BULK-CHK-AMT-DATA               REDEFINES DATA.              !02369b04
          06  NUM-CHKS                    PIC X(2).                    !02369b05
          06  AMT-DATA                    OCCURS 20 TIMES.             !02369b06
              08  AMOUNT                  PIC X(12).                   !02369b07
          06  RESERVED                    PIC X(158).                  !02369b08
                                                                       !02369b09
                                                                       !02369b0A
                                                                       !02370
                                                                       !02370P00
                                                                       !02370P01
                                                                       !02370R00
                                                                       !02370R01
                                                                       !02370R02
                                                                       !02370P0Z
*            This field is reserved for NATIONAL use.                 !!02371
*            Bit map position = 114                                   !!02372
                                                                       !02373
  02  SECNDRY-RSRVD3-NATL.                                             !02374
      04  LEN                             PIC 9(3).                    !02375
                                                                       !02375b00
      04  DATA                            PIC X(800).                  !02375b01
                                                                       !02375b02
                                                                       !02376b00
                                                                       !02376b01
                                                                       !02377
*            The following fields contain the Teller WHFF Inquiry     !!02378
*            Token Data - part 1.                                     !!02379
                                                                       !02380
      04  TLR                             REDEFINES DATA.              !02381
          06  TKN-ID                      PIC X(2).                    !02382
          06  WHFFI-TKN                   PIC X(498).                  !02383
                                                                       !02383b00
          06  RESERVED                    PIC X(300).                  !02383b01
                                                                       !02383b02
                                                                       !02384
                                                                       !02384F00
*            The following fields contain the Customer Service/        !02384F01
*            Fraud Control segment of the PBF.                         !02384F02
                                                                       !02384F03
      04  FHM-PBF-CSFC                    REDEFINES DATA.              !02384F04
          06  PRIOR-YTD-INT               PIC X(18).                   !02384F05
          06  MIN-AMT-DUE                 PIC X(18).                   !02384F06
          06  CUR-INT-RATE                PIC X(8).                    !02384F07
          06  CASH-ADV-INT-RATE           PIC X(8).                    !02384F08
          06  NEXT-PMNT-DUE-DAT           PIC X(6).                    !02384F09
          06  CR-OD-LMT-CHG-DAT           PIC X(6).                    !02384F0A
          06  CYC-CNT                     PIC X(2).                    !02384F0B
          06  CYC-DATA                    OCCURS 12 TIMES.             !02384F0C
              08  DB-CR-HIST              PIC X(10).                   !02384F0D
              08  DB-HIST                 REDEFINES DB-CR-HIST.        !02384F0E
                  10  NSF                 PIC X(5).                    !02384F0F
                  10  OD                  PIC X(5).                    !02384F0G
              08  CR-HIST                 REDEFINES DB-CR-HIST.        !02384F0H
                  10  NUM-DELINQ          PIC X(5).                    !02384F0I
                  10  NUM-CR-LMT-EXCEED   PIC X(5).                    !02384F0J
              08  ACCT-BAL                PIC X(18).                   !02384F0K
              08  ACCT-STAT               PIC X.                       !02384F0L
              08  USER-FLD3               PIC X.                       !02384F0M
                                                                       !02384b00
          06  RESERVED                    PIC X(374).                  !02384b01
                                                                       !02384b02
                                                                       !02384b03
                                                                       !02384b04
                                                                       !02384F0O
                                                                       !02384F0P
                                                                       !02384F0Q
                                                                       !02384W00
*            The following fields contain data used by From Host       !02384W01
*            Maintenance Host Interface in order to send hot card      !02384W02
*            updates to BASE24 interchange interfaces.  This data      !02384W03
*            element may not be used to store FHM CAF or NEG data.     !02384W04
                                                                       !02384W05
      04  HOT-CRD-UPDT                    REDEFINES DATA.              !02384W06
          06  DEST-SVC                    PIC X(16).                   !02384W07
          06  PATH-HDR-FRMT               PIC X(2).                    !02384W08
          06  PATH-RQST                   PIC X(482).                  !02384W09
                                                                       !02384W0A
                                                                       !02384b05
*            The following fields contain the Bulk Check MICR          !02384b06
*            Token Data - part 1.  The check count and the first       !02384b07
*            10 occurrences of the MICR data will be placed in this    !02384b08
*            field.                                                    !02384b09
                                                                       !02384b0A
      04  BULK-CHK-MICR-DATA1             REDEFINES DATA.              !02384b0B
          06  NUM-CHKS                    PIC X(2).                    !02384b0C
          06  MICR-DATA                   OCCURS 10 TIMES.             !02384b0D
              08  MICR                    PIC X(64).                   !02384b0E
          06  RESERVED                    PIC X(158).                  !02384b0F
                                                                       !02384b0G
                                                                       !02384b0H
                                                                       !02384c00
*            The following fields contain the ATM Settlement totals    !02384c01
*            to be sent to BASE24-eps during migration from BASE24 to  !02384c02
*            BASE24-eps.                                               !02384c03
                                                                       !02384c04
      04  ATM-SETL-TTLS                   REDEFINES DATA.              !02384c05
                                                                       !02384c06
*              The date (YYMMDD) the administrative transaction        !02384c07
*              occurred.                                               !02384c08
*                                                                      !02384c09
          06  ADMIN-DAT                   TYPE DAT.                    !02384c0A
*                                                                      !02384c0B
*              The time (HHMMSSTT) the administrative transaction      !02384c0C
*              occurred.                                               !02384c0D
*                                                                      !02384c0E
          06  ADMIN-TIM                   TYPE TIM.                    !02384c0F
*                                                                      !02384c0G
*              An indicator used to determine how the terminal was     !02384c0H
*              cut over.  Valid values are:                            !02384c0I
*                                                                      !02384c0J
*              01 = Initialize cash, hopper #n (Device Handler).       !02384c0K
*              02 = Initialize cash, hopper #n (CRT).                  !02384c0L
*              03 = Increase cash, hopper #n (Device Handler).         !02384c0M
*              04 = Increase cash, hopper #n (CRT).                    !02384c0N
*              05 = Terminal cutover via the Device Handler.           !02384c0O
*              06 = Terminal cutover via CRT.                          !02384c0P
*              07 = Decrease cash, hopper #n (Device Handler).         !02384c0Q
*              08 = Decrease cash, hopper #n (CRT).                    !02384c0R
*              09 = Forced cutover via Settlement Initiator.           !02384c0S
*              20 = Terminal totals sent by the CRT.                   !02384c0T
*              21 = Terminal totals sent by the Device Handler.        !02384c0U
*              22 = Terminal totals sent by the Settlement Initiator.  !02384c0V
*                                                                      !02384c0W
          06  ADMIN-CDE                   PIC X(2).                    !02384c0X
*                                                                      !02384c0Y
*              The buffer containing the data for the administrative   !02384c0Z
*              transaction. This buffer is redefined according to the  !02384c0a
*              type of the administrative transaction being            !02384c0b
*              processed.                                              !02384c0c
*                                                                      !02384c0d
          06  ADMIN-DATA                  PIC X(752).                  !02384c0e
                                                                       !02384c0f
*              The following fields are included in terminal           !02384c0g
*              balancing records logged to the TLF.  Terminal          !02384c0h
*              balancing records are identified by values of 05, 06,   !02384c0i
*              or 09 in the ADMIN-CDE field.                           !02384c0j
                                                                       !02384c0k
          06  TERM-SETL                   REDEFINES ADMIN-DATA.        !02384c0l
*                                                                      !02384c0m
*              The following fields contain the hopper values from     !02384c0n
*              the ATD/TDF just prior to the terminal being balanced.  !02384c0o
*                                                                      !02384c0p
              08  HOPR                    OCCURS 6 TIMES.              !02384c0q
*                                                                      !02384c0r
*              A code used to identify the contents of the hopper.     !02384c0s
*              Valid values are:                                       !02384c0t
*                                                                      !02384c0u
*              00      = Cash                                          !02384c0v
*              01      = Coin                                          !02384c0w
*              02      = Traveler's Checks                             !02384c0x
*              03 - 10 = Cash Value or Non-Value items                 !02384c0y
*                                                                      !02384c0z
                  10 CONTENTS             PIC X(2).                    !02384c10
*                                                                      !02384c11
*              The amount of currency in the hopper at the start of    !02384c12
*              the current balancing period.                           !02384c13
*                                                                      !02384c14
                  10  BEG-CASH            PIC X(19).                   !02384c15
*                                                                      !02384c16
*              The amount of currency added to the hopper during the   !02384c17
*              current balancing period.                               !02384c18
*                                                                      !02384c19
                  10  CASH-INCR           PIC X(19).                   !02384c1A
*                                                                      !02384c1B
*             The amount of currency removed from the hopper during    !02384c1C
*             the current balancing period.                            !02384c1D
*                                                                      !02384c1E
                  10  CASH-DECR           PIC X(19).                   !02384c1F
*                                                                      !02384c1G
*              The amount of currency dispensed from the hopper        !02384c1H
*              through customer withdrawals between terminal           !02384c1I
*              balancing periods.                                      !02384c1J
*                                                                      !02384c1K
                  10  CASH-OUT            PIC X(19).                   !02384c1L
*                                                                      !02384c1M
*              The amount of currency remaining in the hopper at the   !02384c1N
*              end of the balancing period.                            !02384c1O
*                                                                      !02384c1P
                  10  END-CASH            PIC X(19).                   !02384c1Q
*                                                                      !02384c1R
*              A code identifying the currency in the hopper.          !02384c1S
*                                                                      !02384c1T
                  10  CRNCY-CDE           TYPE *.                      !02384c1U
*                                                                      !02384c1V
*              This field is not used.                                 !02384c1W
*                                                                      !02384c1X
                  10  USER-FLD1           PIC X.                       !02384c1Y
*                                                                      !02384c1Z
*              The number of envelope deposits and NCR or Wincor       !02384c1a
*              cash deposits accepted at the terminal since            !02384c1b
*              the last terminal balancing transaction.                !02384c1c
*                                                                      !02384c1d
              08  NUM-DEP                 PIC X(5).                    !02384c1e
*                                                                      !02384c1f
*              The unverified amount of the envelope deposits and      !02384c1g
*              NCR or Wincor cash deposits accepted at the             !02384c1h
*              terminal since the last terminal balancing              !02384c1i
*              transaction.                                            !02384c1j
*                                                                      !02384c1k
              08  AMT-DEP                 PIC X(19).                   !02384c1l
*                                                                      !02384c1m
*              The number of envelope deposits accepted in the         !02384c1n
*              commercial (e.g., Securomatic) depository and Diebold   !02384c1o
*              cash deposits since the last terminal balancing         !02384c1p
*              transaction.                                            !02384c1q
*                                                                      !02384c1r
              08  NUM-CMRCL-DEP           PIC X(5).                    !02384c1s
*                                                                      !02384c1t
*              The unverified amount of the deposits accepted in the   !02384c1u
*              commercial (e.g., Securomatic) depository and Diebold   !02384c1v
*              cash deposits since the last terminal balancing         !02384c1w
*              transaction.                                            !02384c1x
*                                                                      !02384c1y
              08  AMT-CMRCL-DEP           PIC X(19).                   !02384c1z
*                                                                      !02384c20
*              The number of envelope payments accepted at the         !02384c21
*              terminal since the last terminal balancing              !02384c22
*              transaction.                                            !02384c23
*                                                                      !02384c24
              08  NUM-PAY                 PIC X(5).                    !02384c25
*                                                                      !02384c26
*              The unverified amount of payments accepted at the       !02384c27
*              terminal since the last terminal balancing              !02384c28
*              transaction.                                            !02384c29
*                                                                      !02384c2A
              08  AMT-PAY                 PIC X(19).                   !02384c2B
*                                                                      !02384c2C
*              The number of messages-to-institution transaction       !02384c2D
*              envelopes accepted since the last terminal balancing    !02384c2E
*              transaction.                                            !02384c2F
*                                                                      !02384c2G
              08  NUM-MSG                 PIC X(5).                    !02384c2H
*                                                                      !02384c2I
*              The total number of checks received (i.e. cashed        !02384c2J
*              or deposited) since the terminal was last balanced.     !02384c2K
*                                                                      !02384c2L
              08  NUM-CHK                 PIC X(5).                    !02384c2M
*                                                                      !02384c2N
*              The unverified total amount of checks received          !02384c2O
*              (i.e. cashed or deposited) since the terminal was       !02384c2P
*              last balanced.                                          !02384c2Q
*                                                                      !02384c2R
              08  AMT-CHK                 PIC X(19).                   !02384c2S
*                                                                      !02384c2T
*              The number of log-only transactions performed since     !02384c2U
*              the last terminal balancing transaction.                !02384c2V
*                                                                      !02384c2W
              08  NUM-LOGONLY             PIC X(5).                    !02384c2X
*                                                                      !02384c2Y
*              The estimated number of envelopes, and cash or check    !02384c2Z
*              deposits deposited at the terminal.  This number is     !02384c2a
*              computed by the process creating the terminal           !02384c2b
*              settlement record by adding the values from the         !02384c2c
*              following fields in the ATD/TDF:                        !02384c2d
*              NUM-DEP, NUM-CMRCL-DEP, NUM-PAY, NUM-MSG and NUM-CHK.   !02384c2e
*                                                                      !02384c2f
              08  NUM-ENV                 PIC X(5).                    !02384c2g
*                                                                      !02384c2h
*              The number of cards retained since the last terminal    !02384c2i
*              balancing transaction.                                  !02384c2j
*                                                                      !02384c2k
              08  CRDS-RET                PIC X(5).                    !02384c2l
*                                                                      !02384c2m
*              A code indicating the type of currency used to          !02384c2n
*              represent the terminal's amount fields (i.e., the       !02384c2o
*              country that printed the currency).                     !02384c2p
*                                                                      !02384c2q
              08  SETL-CRNCY-CDE          TYPE CRNCY-CDE.              !02384c2r
*                                                                      !02384c2s
*              This field is not used.                                 !02384c2t
*                                                                      !02384c2u
              08  USER-FLD2               PIC X.                       !02384c2v
*                                                                      !02384c2w
*              The time difference (plus or minus in minutes) between  !02384c2x
*              the terminal location and the Tandem processor          !02384c2y
*              location. This field is filled with the TIM-OFST from   !02384c2z
*              the ATD/TDF.                                            !02384c30
*                                                                      !02384c31
              08  TIM-OFST                PIC X(5).                    !02384c32
*                                                                      !02384c33
*              This field is not used.                                 !02384c34
*                                                                      !02384c35
              08  SETL-AREA               PIC X(20).                   !02384c36
*                                                                      !02384c37
*              This field is not used.                                 !02384c38
*                                                                      !02384c39
              08  USER-FLD3               PIC X.                       !02384c3A
                                                                       !02384c3B
*              The following fields are included in Terminal Cash      !02384c3C
*              Adjustment records logged to the TLF. Terminal Cash     !02384c3D
*              Adjustment records are identified by values of 01, 02,  !02384c3E
*              03, 04, 07, and 08 in the ADMIN-CDE field.              !02384c3F
                                                                       !02384c3G
          06  TERM-CASH                   REDEFINES ADMIN-DATA.        !02384c3H
*                                                                      !02384c3I
*              The number of the hopper being affected by the          !02384c3J
*              administrative transaction.                             !02384c3K
*                                                                      !02384c3L
              08  HOPR-NUM                PIC X.                       !02384c3M
*                                                                      !02384c3N
*              The contents contained in the hopper.  Valid values     !02384c3O
*              are:                                                    !02384c3P
*                                                                      !02384c3Q
*              00      = Cash                                          !02384c3R
*              01      = Coin                                          !02384c3S
*              02      = Traveler's Checks                             !02384c3T
*              03 - 10 = Cash Value or Non-Value items                 !02384c3U
*                                                                      !02384c3V
              08  HOPR-CONTENTS           PIC X(2).                    !02384c3W
*                                                                      !02384c3X
*              The amount of increase or decrease to the hopper        !02384c3Y
*              because of the administrative transaction.              !02384c3Z
*                                                                      !02384c3a
              08  AMT                     PIC X(12).                   !02384c3b
*                                                                      !02384c3c
*              A code identifying the type of currency used for the    !02384c3d
*              administrative transaction.                             !02384c3e
*                                                                      !02384c3f
              08  CRNCY-CDE               TYPE *.                      !02384c3g
*                                                                      !02384c3h
*              This field is not used.                                 !02384c3i
*                                                                      !02384c3j
              08  USER-FLD4               PIC X.                       !02384c3k
*                                                                      !02384c3l
*              The time difference (plus or minus in minutes) between  !02384c3m
*              the terminal location and the Tandem processor location !02384c3n
*              This field is filled with the TIM-OFST from the         !02384c3o
*              ATD/TDF.                                                !02384c3p
*                                                                      !02384c3q
              08  TIM-OFST                PIC X(5).                    !02384c3r
*                                                                      !02384c3s
*              This field is not used.                                 !02384c3t
*                                                                      !02384c3u
              08  CASH-AREA               PIC X(21).                   !02384c3v
*                                                                      !02384c3w
*              This field is not used.                                 !02384c3x
*                                                                      !02384c3y
              08 USER-FLD2                PIC X(707).                  !02384c3z
                                                                       !02384c40
*              The following fields are included in Terminal           !02384c41
*              Settlement records logged to the TLF. Terminal          !02384c42
*              Settlement records are identified by values of 20, 21   !02384c43
*              and 22 in the ADMIN-CDE field.                          !02384c44
                                                                       !02384c45
          06  SETL-TTL                    REDEFINES ADMIN-DATA.        !02384c46
*                                                                      !02384c47
*              The unverified amount of terminal debits since the      !02384c48
*              terminal was last balanced.  The amount in this field   !02384c49
*              consists of debits from the institution's point of      !02384c4A
*              view.  Transaction amounts are added to the balance in  !02384c4B
*              this field for:                                         !02384c4C
*                                                                      !02384c4D
*              o  On-us and not-on-us deposits.  This includes         !02384c4E
*                 all types of deposit transactions (i.e. deposit      !02384c4F
*                 transactions, split deposit transactions and         !02384c4G
*                 deposit with cash back transactions).  Note that     !02384c4H
*                 these transactions are supported for envelope,       !02384c4I
*                 commercial, cash and check deposit types.            !02384c4J
*                                                                      !02384c4K
*              o  On-us and not-on-us payment-enclosed transactions    !02384c4L
*                                                                      !02384c4M
*              o  On-us and not-on-us transfers                        !02384c4N
*                                                                      !02384c4O
*              o  On-us and not-on-us payments between accounts        !02384c4P
*                                                                      !02384c4Q
*              o  On-us and not-on-us Mobile Topup transactions        !02384c4R
*                                                                      !02384c4S
              08  TERM-DB                 PIC X(12).                   !02384c4T
*                                                                      !02384c4U
*              The total amount of terminal credits since the          !02384c4V
*              terminal was last balanced.  The amount in this field   !02384c4W
*              consists of credits from the institution's point of     !02384c4X
*              view. Transaction amounts are added to the balance in   !02384c4Y
*              this field for:                                         !02384c4Z
*                                                                      !02384c4a
*              o  On-us and not-on-us withdrawals                      !02384c4b
*                                                                      !02384c4c
*              o  On-us and not-on-us cash checks                      !02384c4d
*                                                                      !02384c4e
*              o  On-us and not-on-us deposits with cash back.  Note   !02384c4f
*                 that only the cash back amount is included in the    !02384c4g
*                 TERM-CR amount.                                      !02384c4h
*                                                                      !02384c4i
*              o  On-us and not-on-us transfers                        !02384c4j
*                                                                      !02384c4k
*              o  On-us and not-on-us payments between accounts        !02384c4l
*                                                                      !02384c4m
              08  TERM-CR                 PIC X(12).                   !02384c4n
*                                                                      !02384c4o
*              The total amount of on-us debits since the terminal     !02384c4p
*              was last balanced. The amount in this field consists    !02384c4q
*              of debits from the customer's point of view.            !02384c4r
*              Transaction amounts are added to the balance in this    !02384c4s
*              field for:                                              !02384c4t
*                                                                      !02384c4u
*              o  On-us withdrawals                                    !02384c4v
*                                                                      !02384c4w
*              o  On-us cash checks                                    !02384c4x
*                                                                      !02384c4y
*              o  On-us and not-on-us deposits with cash back.  Note   !02384c4z
*                 that only the cash back amount is included in the    !02384c50
*                 ON-US-DB amount.                                     !02384c51
*                                                                      !02384c52
*              o  On-us transfers                                      !02384c53
*                                                                      !02384c54
*              o  On-us payments between accounts                      !02384c55
*                                                                      !02384c56
              08  ON-US-DB                PIC X(12).                   !02384c57
*                                                                      !02384c58
*              The total amount of on-us credits since the terminal    !02384c59
*              was last balanced. The amount in this field consists    !02384c5A
*              of credits from the customer's point of view.           !02384c5B
*              Transaction amounts are added to the balance in this    !02384c5C
*              field for:                                              !02384c5D
*                                                                      !02384c5E
*              o  On-us deposits.  This includes all types of          !02384c5F
*                 deposit transactions (i.e. deposit transactions,     !02384c5G
*                 split deposit transactions and deposit with cash     !02384c5H
*                 back transactions).  Note that these                 !02384c5I
*                 transactions are supported for envelope,             !02384c5J
*                 commercial, cash and check deposit types.            !02384c5K
*                                                                      !02384c5L
*              o  On-us payment enclosed transactions                  !02384c5M
*                                                                      !02384c5N
*              o  On-us transfers                                      !02384c5O
*                                                                      !02384c5P
*              o  On-us payments between accounts                      !02384c5Q
*                                                                      !02384c5R
*              o  On-us Mobile Topup transactions                      !02384c5S
*                                                                      !02384c5T
              08  ON-US-CR                PIC X(12).                   !02384c5U
*                                                                      !02384c5V
*              A code indicating the type of currency used during      !02384c5W
*              settlement.                                             !02384c5X
*                                                                      !02384c5Y
              08  CRNCY-CDE               TYPE *.                      !02384c5Z
                                                                       !02384c5a
*              This field is not used.                                 !02384c5b
*                                                                      !02384c5c
              08  USER-FLD5               PIC X.                       !02384c5d
*                                                                      !02384c5e
*              The time difference (plus or minus in minutes) between  !02384c5f
*              the terminal location and the Tandem processor          !02384c5g
*              location. This field is filled with the TIM-OFST from   !02384c5h
*              the ATD/TDF.                                            !02384c5i
*                                                                      !02384c5j
              08  TIM-OFST                PIC X(5).                    !02384c5k
*                                                                      !02384c5l
*              This field is not used.                                 !02384c5m
*                                                                      !02384c5n
              08  TTL-AREA                PIC X(20).                   !02384c5o
*                                                                      !02384c5p
*              This field is not used.                                 !02384c5q
*                                                                      !02384c5r
              08  USER-FLD3               PIC X(675).                  !02384c5s
                                                                       !02384c5t
          06  RESERVED                    PIC X(32).                   !02384c5u
*            This field is reserved for NATIONAL use.                  !02384c5v
                                                                       !02384c5w
                                                                       !02385c00
                                                                       !02385c01
*            Bit map position = 115                                   !!02386
                                                                       !02387
  02  SECNDRY-RSRVD4-NATL.                                             !02388
      04  LEN                             PIC 9(3).                    !02389
                                                                       !02389b00
      04  DATA                            PIC X(800).                  !02389b01
                                                                       !02389b02
                                                                       !02390b00
                                                                       !02390b01
                                                                       !02391
*            The following fields contain the Teller WHFF Inquiry     !!02392
*            Token Data - part 2.                                     !!02393
                                                                       !02394
      04  TLR                             REDEFINES DATA.              !02395
          06  TKN-ID                      PIC X(2).                    !02396
          06  WHFFI-TKN                   PIC X(398).                  !02397
                                                                       !02397b00
          06  RESERVED                    PIC X(400).                  !02397b01
                                                                       !02397b02
                                                                       !02398
                                                                       !02398P00
      04  FHM-CAF-BASE-USER-INFO          REDEFINES DATA.              !02398P01
          06  USER-FLD-ACI                PIC X(50).                   !02398P02
          06  USER-FLD-REGN               PIC X(50).                   !02398P03
          06  USER-FLD-CUST               PIC X(50).                   !02398P04
                                                                       !02398b00
          06  RESERVED                    PIC X(650).                  !02398b01
                                                                       !02398b02
                                                                       !02398b03
                                                                       !02398b04
                                                                       !02398P06
      04  FHM-PBF-BASE-USER-INFO          REDEFINES DATA.              !02398P07
          06  USER-FLD-ACI                PIC X(50).                   !02398P08
          06  USER-FLD-REGN               PIC X(50).                   !02398P09
          06  USER-FLD-CUST               PIC X(50).                   !02398P0A
                                                                       !02398b05
          06  RESERVED                    PIC X(650).                  !02398b06
                                                                       !02398b07
                                                                       !02398P0C
                                                                       !02398P0D
                                                                       !02398b08
*            The following fields contain the Bulk Check MICR          !02398b09
*            Token Data - part 2.  The next 10 occurrences of          !02398b0A
*            the MICR data will be held in this field.  If less        !02398b0B
*            than 10 checks are deposited in a Bulk Check request,     !02398b0C
*            then this field will not be used.                         !02398b0D
                                                                       !02398b0E
      04  BULK-CHK-MICR-DATA2             REDEFINES DATA.              !02398b0F
          06  MICR-DATA                   OCCURS 10 TIMES.             !02398b0G
              08  MICR                    PIC X(64).                   !02398b0H
          06  RESERVED                    PIC X(160).                  !02398b0I
                                                                       !02398b0J
                                                                       !02398b0K
*            This field is reserved for NATIONAL use.                 !!02399
*            Bit map position = 116                                   !!02400
                                                                       !02401
  02  SECNDRY-RSRVD5-NATL.                                             !02402
      04  LEN                             PIC 9(3).                    !02403
      04  DATA                            PIC X(400).                  !02404
                                                                       !02405
*            The following fields contain the Teller WHFF Inquiry     !!02406
*            Token Data - part 3.                                     !!02407
                                                                       !02408
      04  TLR                             REDEFINES DATA.              !02409
          06  TKN-ID                      PIC X(2).                    !02410
          06  WHFFI-TKN                   PIC X(398).                  !02411
                                                                       !02412
                                                                       !02412K00
      04  FHM-NCD-CAF                     REDEFINES DATA.              !02412K01
          06  USE-LMT                     PIC X(4).                    !02412K02
          06  CASH-VAL-TTL-WDL-LMT        PIC X(12).                   !02412K03
          06  CASH-VAL-OFFL-WDL-LMT       PIC X(12).                   !02412K04
          06  CASH-VAL-TTL-CCA-LMT        PIC X(12).                   !02412K05
          06  CASH-VAL-OFFL-CCA-LMT       PIC X(12).                   !02412K06
          06  NCD1-CDE                    PIC X(2).                    !02412K07
          06  NCD1-TTL-WDL-LMT            PIC X(12).                   !02412K08
          06  NCD1-OFFL-WDL-LMT           PIC X(12).                   !02412K09
          06  NCD1-TTL-CCA-LMT            PIC X(12).                   !02412K0A
          06  NCD1-OFFL-CCA-LMT           PIC X(12).                   !02412K0B
          06  NCD2-CDE                    PIC X(2).                    !02412K0C
          06  NCD2-TTL-WDL-LMT            PIC X(12).                   !02412K0D
          06  NCD2-OFFL-WDL-LMT           PIC X(12).                   !02412K0E
          06  NCD2-TTL-CCA-LMT            PIC X(12).                   !02412K0F
          06  NCD2-OFFL-CCA-LMT           PIC X(12).                   !02412K0G
          06  RESERVED                    PIC X(248).                  !02412K0H
                                                                       !02412K0I
                                                                       !02412b00
*            The following fields contain the Bulk Check SSBC          !02412b01
*            Token Data.                                               !02412b02
                                                                       !02412b03
      04  BULK-CHK-SSBC-DATA              REDEFINES DATA.              !02412b04
          06  NUM-CHKS                    PIC X(2).                    !02412b05
          06  SSBC-DATA                   OCCURS 20 TIMES.             !02412b06
              08  BIN-SEQ-NUM             PIC X(5).                    !02412b07
              08  CHK-RET                 PIC X.                       !02412b08
              08  CHK-DISP                PIC X.                       !02412b09
              08  CORP-NUM                PIC X(10).                   !02412b0A
              08  CSF-TRAN-IND            PIC X.                       !02412b0B
          06  RESERVED                    PIC X(38).                   !02412b0C
                                                                       !02412b0D
                                                                       !02412b0E
*            This field is reserved for NATIONAL use.                 !!02413
*            Bit map position = 117                                   !!02414
                                                                       !02415
  02  SECNDRY-RSRVD6-NATL.                                             !02416
      04  LEN                             PIC 9(3).                    !02417
      04  DATA                            PIC X(100).                  !02418
                                                                       !02419
*            The following fields contain the Teller PBF Update       !!02420
*            Token Data.                                              !!02421
                                                                       !02422
      04  TLR                             REDEFINES DATA.              !02423
          06  TKN-ID                      PIC X(2).                    !02424
          06  PBFU-TKN                    PIC X(98).                   !02425
                                                                       !02426
                                                                       !02426N00
*            The following fields contain the CAFEMV segment data      !02426N01
                                                                       !02426N02
      04  FHM-CAF-EMV                     REDEFINES DATA.              !02426N03
                                                                       !02426T00
*             This field contains the Application Transaction Sequence !02426T01
*             Number Limit.                                            !02426T02
                                                                       !02426T03
          06  ATC-LMT                     PIC X(4).                    !02426T04
                                                                       !02426T05
*             This field determines whether a Card Block script        !02426T06
*             should be sent to the device.  Valid values are:         !02426T07
*                                                                      !02426T08
*             N = Do not send CARD BLOCK script command                !02426T09
*             Y = Send CARD BLOCK script command.                      !02426T0A
                                                                       !02426T0B
          06  SEND-CRD-BLK                PIC X.                       !02426T0C
                                                                       !02426T0D
*             This field determines whether a PUT script command       !02426T0E
*             should be sent to the device.  Valid values are:         !02426T0F
*                                                                      !02426T0G
*             N = Do not send PUT DATA script command                  !02426T0H
*             Y = Send PUT DATA script command.                        !02426T0I
                                                                       !02426T0J
          06  SEND-PUT-DATA               PIC X.                       !02426T0K
                                                                       !02426T0L
*             Velocity Limits for the card.                            !02426T0M
                                                                       !02426T0N
          06  VLCTY-LMTS.                                              !02426T0O
                                                                       !02426T0P
*             This field is the lower consecutive off-line limit and   !02426T0Q
*             is used in the PUT DATA script command.                  !02426T0R
                                                                       !02426T0S
              08  LWR-CONSEC-LMT          PIC X(4).                    !02426T0T
                                                                       !02426T0U
*             The EMV Tag of the data element included in the          !02426T0V
*             PUT DATA script command, contains hexadecimal value.     !02426T0W
                                                                       !02426T0X
              08  DATA-TAG                PIC X(4).                    !02426T0Y
                                                                       !02426T0Z
*             This field indicates the circumstances under which a     !02426T0a
*             "PIN Unblock" script command will be generated and       !02426T0b
*             returned by BASE24-atm.  Valid values are:               !02426T0c
*                                                                      !02426T0d
*             0 - No action required (this is the current processing)  !02426T0e
*             1 - Implicit (an EMV transaction indicates that the      !02426T0f
*                 offline bad PIN try limit has been exceeded)         !02426T0g
*             2 - Explicit (an EMV PIN Unblock transaction is          !02426T0h
*                 received)                                            !02426T0i
*             3 - Implicit and Explicit (an EMV transaction indicates  !02426T0j
*                 that the offline bad PIN try limit has been          !02426T0k
*                 exceeded or an EMV PIN Unblock transaction is        !02426T0l
*                 received).                                           !02426T0m
                                                                       !02426T0n
          06  SEND-PIN-UNBLK              PIC X.                       !02426T0o
                                                                       !02426T0p
*             This field indicates the circumstances under which a     !02426T0q
*             "PIN Change" script command will be generated and        !02426T0r
*             returned by BASE24-atm.  Valid values are:               !02426T0s
*                                                                      !02426T0t
*             0 - Do not send script (current processing)              !02426T0u
*             1 - An EMV PIN Unblock transaction is received           !02426T0v
*             2 - An EMV PIN Change transaction is received            !02426T0w
*             3 - An EMV PIN Unblock transaction or an EMV PIN Change  !02426T0x
*                 transaction is received.                             !02426T0y
                                                                       !02426T0z
          06  SEND-PIN-CHNG               PIC X.                       !02426T10
                                                                       !02426T11
*             This field indicates whether synchronisation of the      !02426T12
*             online and offline PIN is required for the card.  Valid  !02426T13
*             values are:                                              !02426T14
*                                                                      !02426T15
*             0 = PIN synchronisation not required (current            !02426T16
*                 processing)                                          !02426T17
*             1 = PIN synchronisation required.                        !02426T18
                                                                       !02426T19
          06  PIN-SYNC-ACT                PIC X.                       !02426T1A
                                                                       !02426T1B
*             This field indicates when to access the Script           !02426T1C
*             Management Sub-System.  Valid values are:                !02426T1D
*                                                                      !02426T1E
*             0 - Do not send script Management Sub-System             !02426T1F
*             1 - Access Script Management Sub-System.                 !02426T1G
                                                                       !02426T1H
          06  ACCESS-SCRIPT-MGMT-SUB-SYS  PIC X.                       !02426T1I
                                                                       !02426V00
*             The Issuer Application Data Format type specifies the    !02426V01
*             format of the EMV Issuer Application Data that will be   !02426V02
*             used for this card prefix.  A number of predefined       !02426V03
*             formats for Issuer Application Data exist, as specified  !02426V04
*             by the Payment Associations (VISA and Mastercard/        !02426V05
*             Europay), but Issuer specific layouts may also be        !02426V06
*             defined.  Issuer Application Data typically contains     !02426V07
*             information which is used in the derivation of the       !02426V08
*             Application Crytogram.  Valid values are:                !02426V09
                                                                       !02426V0A
                                                                       !02426V0B
                                                                       !02426V0C
*             0       Use the current value defined in CAF Issuer      !02426V0D
*                     Application Data Format field                    !02426V0E
*                                                                      !02426V0F
*             3       Issuer Application Data format as recommended    !02426V0G
*                     for Mastercard/Europay (M/Chip 4 format) cards.  !02426V0H
                                                                       !02426V0I
                                                                       !02426T1O
          06  ISS-APPL-DATA-FRMT          PIC X.                       !02426T1P
                                                                       !02426V0J
*             This field is used to identify which of the preset       !02426V0K
*             rules for status field processing are to be used for     !02426V0L
*             this Card scheme.  The decision array which defines      !02426V0M
*             the action to be taken based on the CVR (Card            !02426V0N
*             Verification Results) is pre-configured in an EDIT       !02426V0O
*             file (CVRTBLS), sourced in to the EMV authorization      !02426V0P
*             modules at compile time.  Four different arrays are      !02426V0Q
*             supported to cater for the processing requirements       !02426V0R
*             of different card schemes.  This field is used to        !02426V0S
*             select the appropriate array for the card scheme.        !02426V0T
*             Valid values are 1 to 4.                                 !02426V0U
                                                                       !02426V0V
          06  ACTION-TABLE-INDEX          PIC X.                       !02426V0W
                                                                       !02426V0X
                                                                       !02426T1Q
                                                                       !02426Z00
*             This field contains the CAP Application PAN Sequence     !02426Z01
*             Number (APSN) of the primary card.                       !02426Z02
                                                                       !02426Z03
          06  CAP-APSN-1                  PIC X(2).                    !02426Z04
                                                                       !02426Z05
*             This field contains the CAP Derivation Key Index (DKI)   !02426Z06
*             of the primary card.                                     !02426Z07
                                                                       !02426Z08
          06  CAP-DKI-1                   PIC X(2).                    !02426Z09
                                                                       !02426Z0A
*             This field contains the CAP Application PAN Sequence     !02426Z0B
*             Number (APSN) of the secondary card.                     !02426Z0C
                                                                       !02426Z0D
          06  CAP-APSN-2                  PIC X(2).                    !02426Z0E
                                                                       !02426Z0F
*             This field contains the CAP Derivation Key Index (DKI)   !02426Z0G
*             of the secondary card.                                   !02426Z0H
                                                                       !02426Z0I
          06  CAP-DKI-2                   PIC X(2).                    !02426Z0J
                                                                       !02426Z0K
*             This field contains the Bad CAP Token Override Flag for  !02426Z0L
*             the card. This field will allow the CAP Token validation !02426Z0M
*             to be performed, if the Bad CAP Token Validation Limit   !02426Z0N
*             (on the CPF) has been reached. If the validation is      !02426Z0O
*             successful, then the Bad CAP Token Validation            !02426Z0P
*             Accumulator will be reset to zero. This mechanism is the !02426Z0Q
*             only way that the Bad CAP Token Validation Accumulator   !02426Z0R
*             can be reset once the limit has been reached, without    !02426Z0S
*             deleting/re-adding or replacing the CAF record.          !02426Z0T
                                                                       !02426Z0U
          06  BAD-CAP-TKN-OVRRD-FLG       PIC X.                       !02426Z0V
                                                                       !02426Z0W
                                                                       !02426Z0X
                                                                       !02426a00
*             This field specifies the template tag to be used when    !02426a01
*             an issuer script is sent to the card. Valid values are:  !02426a02
*                                                                      !02426a03
*             0 - Use CPF value                                        !02426a04
*             1 - 71                                                   !02426a05
*             2 - 72                                                   !02426a06
                                                                       !02426a07
          06  SCRIPT-TPLT-TAG             PIC X.                       !02426a08
                                                                       !02426a09
*             This field specifies the MAC length to be used when      !02426a0A
*             an issuer script is sent to the card. Valid values are:  !02426a0B
*                                                                      !02426a0C
*             0 - Use CPF value                                        !02426a0D
*             4 - 4 bytes                                              !02426a0E
*             6 - 6 bytes                                              !02426a0F
*             8 - 8 bytes                                              !02426a0G
                                                                       !02426a0H
          06  SCRIPT-MAC-LGTH             PIC X.                       !02426a0I
                                                                       !02426a0J
*             This field is reserved for future use.                   !02426T1R
                                                                       !02426T1S
                                                                       !02426V0Y
                                                                       !02426Z0Y
                                                                       !02426a0K
          06  RESERVED                    PIC X(69).                   !02426a0L
                                                                       !02426a0M
                                                                       !02426b00
*            The following fields contain the Bulk Check Disposition   !02426b01
*            Token Data.                                               !02426b02
                                                                       !02426b03
      04  BULK-CHK-DISP-DATA              REDEFINES DATA.              !02426b04
          06  NUM-CHKS                    PIC X(2).                    !02426b05
          06  DISP-DATA                   OCCURS 20 TIMES.             !02426b06
              08  DISP                    PIC X(1).                    !02426b07
          06  RESERVED                    PIC X(78).                   !02426b08
                                                                       !02426b09
                                                                       !02426b0A
                                                                       !02426Z0a
                                                                       !02426V0a
                                                                       !02426T1U
                                                                       !02426T1V
                                                                       !02426T1W
                                                                       !02426T1X
*            This field is reserved for NATIONAL use.                 !!02427
*            Bit map position = 118                                   !!02428
                                                                       !02429
  02  SECNDRY-RSRVD7-NATL.                                             !02430
      04  LEN                             PIC 9(3).                    !02431
      04  DATA                            PIC X(100).                  !02432
                                                                       !02433
*            The following fields contain the Teller SPF Update       !!02434
*            Token Data.                                              !!02435
                                                                       !02436
      04  TLR                             REDEFINES DATA.              !02437
          06  TKN-ID                      PIC X(2).                    !02438
          06  SPFU-TKN                    PIC X(98).                   !02439
                                                                       !02439Z00
                                                                       !02439Z01
*            The following fields contain the preferred transaction    !02439Z02
*            FHM data.                                                 !02439Z03
                                                                       !02439Z04
      04  FHM-CAF-PFRD-TXN                REDEFINES DATA.              !02439Z05
          06 ACCT-NUM                     PIC X(19).                   !02439Z06
          06 TRAN-CDE                     PIC X(2).                    !02439Z07
          06 FROM-ACCT-TYP                PIC X(2).                    !02439Z08
          06 TO-ACCT-TYP                  PIC X(2).                    !02439Z09
          06 RCPT-OPT                     PIC X(1).                    !02439Z0A
          06 AMT                          PIC X(19).                   !02439Z0B
          06 PRFL-UPDT-IND                PIC X(1).                    !02439Z0C
          06 ADA-IND                      PIC X(1).                    !02439Z0D
          06 MRKT-SEG-IND                 PIC X(2).                    !02439Z0E
          06 RESERVED                     PIC X(51).                   !02439Z0F
                                                                       !02439Z0G
                                                                       !02439D00
*            The following fields contain Telebanking FHM data.        !02439D01
                                                                       !02439D02
      04  FHM-PBF                         REDEFINES DATA.              !02439D03
          06  CASH-ADV-MIN                PIC X(15).                   !02439D04
          06  CASH-ADV-INCR               PIC X(15).                   !02439D05
          06  PRD-LMT.                                                 !02439D06
              08  XFER.                                                !02439D07
                  10  AMT                 PIC X(15).                   !02439D08
                  10  CNT                 PIC X(4).                    !02439D09
          06  CYC-LMT.                                                 !02439D0A
              08  XFER.                                                !02439D0B
                  10  AMT                 PIC X(15).                   !02439D0C
                  10  CNT                 PIC X(4).                    !02439D0D
          06 RESERVED                     PIC X(32).                   !02439D0E
                                                                       !02439D0F
                                                                       !02440
*            This field is reserved for NATIONAL use.                 !!02441
*            Bit map position = 119                                   !!02442
                                                                       !02443
  02  SECNDRY-RSRVD8-NATL.                                             !02444
      04  LEN                             PIC 9(3).                    !02445
      04  DATA                            PIC X(100).                  !02446
                                                                       !02447
*            The following fields contain the Teller WHFF Update      !!02448
*            Token Data.                                              !!02449
                                                                       !02450
      04  TLR                             REDEFINES DATA.              !02451
          06  TKN-ID                      PIC X(2).                    !02452
          06  WHFFU-TKN                   PIC X(98).                   !02453
                                                                       !02454
      04  FHM-CAF-SSBC                    REDEFINES DATA.              !02455
          06  CORP-NUM                    PIC X(10).                   !02456
                                                                       !02456A00
          06  CHK-BASE-FLG                PIC X.                       !02456A01
          06  CSF-CHK-BASE-FLG            PIC X.                       !02456A02
          06  CSF-CHK-USE-LMT             PIC X(4).                    !02456A03
                                                                       !02456C00
                                                                       !02456C01
          06  TTL-CHK-LMT                 PIC X(12).                   !02456C02
          06  OFFL-CHK-LMT                PIC X(12).                   !02456C03
          06  TTL-CSF-CHK-LMT             PIC X(12).                   !02456C04
          06  OFFL-CSF-CHK-LMT            PIC X(12).                   !02456C05
          06  RESERVED                    PIC X(36).                   !02456C06
                                                                       !02456C07
                                                                       !02456A09
                                                                       !02457A00
                                                                       !02457A01
                                                                       !02457A02
                                                                       !02460
      04  FHM-NEG-SSBC                    REDEFINES DATA.              !02461
          06  CORP-NUM                    PIC X(10).                   !02462
          06  RESERVED                    PIC X(90).                   !02463
                                                                       !02464
                                                                       !02465
                                                                       !02466
*            This field is reserved for PRIVATE use.  BASE24 use this !!02467
*            field to transmit special information.                   !!02468
*            Bit map position = 120                                   !!02469
                                                                       !02470
  02  SECNDRY-RSRVD1-PRVT.                                             !02471
      04  LEN                             PIC 9(3).                    !02472
      04  DATA                            PIC X(150).                  !02473
                                                                       !02474
*            The following fields contain the Teller Administrative   !!02475
*            Token Data.                                              !!02476
                                                                       !02477
      04  TLR                             REDEFINES DATA.              !02478
          06  TKN-ID                      PIC X(2).                    !02479
          06  ADMIN-TKN                   PIC X(148).                  !02480
                                                                       !02481
      04  ATM                             REDEFINES DATA.              !02482
          06  TERM-NAME-LOC               PIC X(25).                   !02483
          06  BRCH-ID                     TYPE BRCH.                   !02484
          06  REGN-ID                     TYPE REGN.                   !02485
          06  RESERVED                    PIC X(117).                  !02486
                                                                       !02487
      04  POS                             REDEFINES DATA.              !02488
                                                                       !02489
          06  TERM-NAME-LOC               PIC X(25).                   !02490
          06  BRCH-ID                     TYPE BRCH.                   !02491
          06  RESERVED                    PIC X(121).                  !02492
                                                                       !02493
                                                                       !02494
                                                                       !02495
                                                                       !02496
                                                                       !02497
                                                                       !02498Q00
      04  FHM-CAF-EXPAND                  REDEFINES DATA.              !02498Q01
                                                                       !02498Q02
          06  CRD-TYP                     PIC X(2).                    !02499
                                                                       !02500
                                                                       !02501
          06  CRD-STAT                    PIC X.                       !02502
          06  PIN-OFST                    PIC X(16).                   !02503
          06  TTL-WDL-LMT                 PIC X(12).                   !02504
          06  OFFL-WDL-LMT                PIC X(12).                   !02505
          06  TTL-CCA-LMT                 PIC X(12).                   !02506
          06  OFFL-CCA-LMT                PIC X(12).                   !02507
          06  AGGR-LMT                    PIC X(12).                   !02508
          06  OFFL-AGGR-LMT               PIC X(12).                   !02509
                                                                       !02510
                                                                       !02511
          06  EXP-DAT                     PIC X(4).                    !02512
                                                                       !02512P00
          06  EFFECTIVE-DAT               PIC X(4).                    !02512P01
          06  SCND-CRD-DATA.                                           !02512P02
              08  EXP-DAT-2               PIC X(4).                    !02512P03
              08  EFFECTIVE-DAT-2         PIC X(4).                    !02512P04
              08  CRD-STAT-2              PIC X(1).                    !02512P05
              08  USER-FLD1-SCND-CRD-DATA PIC X(1).                    !02512P06
                                                                       !02512R00
                                                                       !02512R01
                                                                       !02512R02
                                                                       !02513
                                                                       !02514P00
                                                                       !02514R00
          06  RESERVED                    PIC X(41).                   !02514R01
                                                                       !02514R02
                                                                       !02514P02
                                                                       !02514Q00
      04  FHM-CAF                         REDEFINES DATA.              !02514Q01
          06  CRD-TYP                     PIC X(2).                    !02514Q02
          06  CRD-STAT                    PIC X.                       !02514Q03
          06  PIN-OFST                    PIC X(16).                   !02514Q04
          06  TTL-WDL-LMT                 PIC X(12).                   !02514Q05
          06  OFFL-WDL-LMT                PIC X(12).                   !02514Q06
          06  TTL-CCA-LMT                 PIC X(12).                   !02514Q07
          06  OFFL-CCA-LMT                PIC X(12).                   !02514Q08
          06  AGGR-LMT                    PIC X(12).                   !02514Q09
          06  OFFL-AGGR-LMT               PIC X(12).                   !02514Q0A
          06  EXP-DAT                     PIC X(4).                    !02514Q0B
          06  RESERVED                    PIC X(55).                   !02514Q0C
                                                                       !02514Q0D
                                                                       !02514Q0E
                                                                       !02515
                                                                       !02516
      04  FHM-NEG                         REDEFINES DATA.              !02517
          06  CRD-TYP                     PIC X(2).                    !02518
                                                                       !02519
                                                                       !02520
          06  RSN-CDE                     PIC X(2).                    !02521
          06  CAPTURE-CDE                 PIC X.                       !02522
          06  ADD-DAT                     PIC X(6).                    !02523
          06  EXP-DAT                     PIC X(4).                    !02524
                                                                       !02525
          06  RESERVED                    PIC X(135).                  !02526
                                                                       !02527
                                                                       !02528
      04  FHM-PBF                         REDEFINES DATA.              !02529
          06  ACCT-STAT                   PIC X.                       !02530
          06  AVAIL-BAL                   PIC X(12).                   !02531
          06  LEDG-BAL                    PIC X(12).                   !02532
          06  AMT-ON-HLD                  PIC X(12).                   !02533
          06  OVRDRFT-LMT                 PIC X(8).                    !02534
          06  LAST-DEP-DAT                PIC X(6).                    !02535
          06  LAST-DEP-AMT                PIC X(12).                   !02536
          06  LAST-WDL-DAT                PIC X(6).                    !02537
          06  LAST-WDL-AMT                PIC X(12).                   !02538
                                                                       !02538O00
                                                                       !02538O01
                                                                       !02538O02
                                                                       !02539O03
          06  RESERVED                    PIC X(69).                   !02539O04
                                                                       !02539O05
                                                                       !02539N02
                                                                       !02539Q00
      04  FHM-PBF-EXPAND-REL5             REDEFINES DATA.              !02539Q01
          06  ACCT-STAT                   PIC X.                       !02539Q02
          06  AVAIL-BAL                   PIC X(19).                   !02539Q03
          06  LEDG-BAL                    PIC X(19).                   !02539Q04
          06  AMT-ON-HLD                  PIC X(19).                   !02539Q05
          06  OVRDRFT-LMT                 PIC X(11).                   !02539Q06
          06  LAST-DEP-DAT                PIC X(6).                    !02539Q07
          06  LAST-DEP-AMT                PIC X(15).                   !02539Q08
          06  LAST-WDL-DAT                PIC X(6).                    !02539Q09
          06  LAST-WDL-AMT                PIC X(15).                   !02539Q0A
          06  RESERVED                    PIC X(39).                   !02539Q0B
                                                                       !02539Q0C
                                                                       !02540
      04  FHM-PBF-EXPAND                  REDEFINES DATA.              !02541
          06  ACCT-STAT                   PIC X.                       !02542
          06  AVAIL-BAL                   PIC X(19).                   !02543
          06  LEDG-BAL                    PIC X(19).                   !02544
          06  AMT-ON-HLD                  PIC X(19).                   !02545
          06  OVRDRFT-LMT                 PIC X(11).                   !02546
          06  LAST-DEP-DAT                PIC X(6).                    !02547
          06  LAST-DEP-AMT                PIC X(15).                   !02548
          06  LAST-WDL-DAT                PIC X(6).                    !02549
          06  LAST-WDL-AMT                PIC X(15).                   !02550
                                                                       !02550N00
          06  CRNCY-CDE                   TYPE *.                      !02550N01
                                                                       !02550N02
                                                                       !02551N00
          06  RESERVED                    PIC X(36).                   !02551N01
                                                                       !02551N02
                                                                       !02552
                                                                       !02553
      04  FHM-LAF                         REDEFINES DATA.              !02554
          06  CUR-BAL                     PIC X(12).                   !02555
          06  PAY-AMT                     PIC X(8).                    !02556
          06  RESERVED                    PIC X(130).                  !02557
                                                                       !02558
                                                                       !02559
      04  SPF                             REDEFINES DATA.              !02560
          06  AMT                         PIC X(15).                   !02561
          06  DAT                         TYPE DAT.                    !02562
          06  TIM                         TYPE TIM.                    !02563
          06  EXP-DAT                     TYPE DAT.                    !02564
          06  DESCR                       PIC X(35).                   !02565
          06  PBF-SP-WARN-STAT            PIC X.                       !02566
          06  RESERVED                    PIC X(79).                   !02567
                                                                       !02568
      04  WHFF                            REDEFINES DATA.              !02569
          06  EXP-DAT                     TYPE DAT.                    !02570
          06  DESCR                       PIC X(35).                   !02571
          06  PBF-SP-WARN-STAT            PIC X.                       !02572
          06  RESERVED                    PIC X(108).                  !02573
                                                                       !02574
      04  NBF                             REDEFINES DATA.              !02575
          06  POST-DAT                    TYPE DAT.                    !02576
          06  PRNT-STAT                   PIC X.                       !02577
          06  PRNT-BAL                    PIC X(12).                   !02578
          06  POSTING-SYS                 PIC X.                       !02579
          06  TRAN-TYP                    PIC X.                       !02580
          06  TRAN-CDE                    PIC X(6).                    !02581
          06  TRAN-AMT                    PIC X(12).                   !02582
          06  RESERVED                    PIC X(111).                  !02583
                                                                       !02584
                                                                       !02585
      04  NBF-EXPAND                      REDEFINES DATA.              !02586
          06  POST-DAT                    TYPE DAT.                    !02587
          06  PRNT-STAT                   PIC X.                       !02588
          06  PRNT-BAL                    PIC X(19).                   !02589
          06  POSTING-SYS                 PIC X.                       !02590
          06  TRAN-TYP                    PIC XX.                      !02591
          06  TRAN-CDE                    PIC X(6).                    !02592
          06  TRAN-AMT                    PIC X(15).                   !02593
          06  DEV-TRAN-CDE                PIC X(6).                    !02594
          06  TLR-ID                      PIC X(8).                    !02595
          06  REGN-ID                     TYPE REGN.                   !02596
          06  BRCH-ID                     TYPE BRCH.                   !02597
          06  CITY                        PIC X(13).                   !02598
          06  RESERVED                    PIC X(65).                   !02599
                                                                       !02600
      04  KEY-MGMT                        REDEFINES DATA.              !02601
                                                                       !02602
*            Check Digits associated with the Key for Dynamic         !!02603
*            Key Management                                           !!02604
                                                                       !02605
          06  CHK-DIGITS                  PIC X(6).                    !02606
          06  RESERVED                    PIC X(144).                  !02607
                                                                       !02608D00
                                                                       !02608D01
                                                                       !02608D02
      04  FHM-CCF                         REDEFINES DATA.              !02616
          06  CORP-NUM                    PIC X(10).                   !02617
          06  CORP-DESCR                  PIC X(25).                   !02618
          06  CORP-CNT                    PIC X(2).                    !02619
          06  RESERVED                    PIC X(113).                  !02620
                                                                       !02621
      04  FHM-CSF                         REDEFINES DATA.              !02622
          06  INST-ID-NUM                 PIC X(11).                   !02623
          06  ACCT-NUM                    PIC X(19).                   !02624
          06  RGSTR-PAN                   PIC X(19).                   !02625
          06  RGSTR-MBR-NUM               PIC X(3).                    !02626
          06  CHK-STAT                    PIC X.                       !02627
          06  RET-CHK-FLG                 PIC X.                       !02628
                                                                       !02629C00
                                                                       !02629C01
          06  CHK-LMT                     PIC X(15).                   !02629C02
          06  RESERVED                    PIC X(81).                   !02629C03
                                                                       !02629C04
                                                                       !02631
                                                                       !02632
                                                                       !02632D00
      04  FHM-CARF                        REDEFINES DATA.              !02632D01
          06 ACCT-QUAL                    PIC X(4).                    !02632D02
          06 VER                          PIC 9(4).                    !02632D03
          06 STAT                         PIC X.                       !02632D04
          06 DESCR                        PIC X(15).                   !02632D05
          06 ACT-ALWD.                                                 !02632D06
             08 DB                        PIC X.                       !02632D07
             08 CR                        PIC X.                       !02632D08
             08 INQ                       PIC X.                       !02632D09
          06 RESERVED                     PIC X(123).                  !02632D0A
                                                                       !02632D0B
      04  FHM-CUST                        REDEFINES DATA.              !02632D0C
          06 VER                          PIC 9(4).                    !02632D0D
          06 FIID                         PIC X(4).                    !02632D0E
          06 PRFL                         PIC X(8).                    !02632D0F
          06 STAT                         PIC X(2).                    !02632D0G
          06 TYP                          PIC X.                       !02632D0H
          06 PIN-CHNG-REQ                 PIC X.                       !02632D0I
          06 PVD                          PIC X(16).                   !02632D0J
          06 PVK-IDX                      PIC X.                       !02632D0K
          06 CUST-INFO                    PIC X(60).                   !02632D0L
          06 DFLT-ACCT-TYP                PIC X(2).                    !02632D0M
          06 DFLT-ACCT-NUM                PIC X(28).                   !02632D0N
          06 MAX-HIST-RECS                PIC 9(4).                    !02632D0O
          06 RESERVED                     PIC X(19).                   !02632D0P
                                                                       !02632D0Q
                                                                       !02632F00
      04  FHM-CCIF0005                    REDEFINES DATA.              !02632F01
          06  SEG-ID                      PIC X(4).                    !02632F02
          06  VER                         PIC X(4).                    !02632F03
          06  BHVR-SCORE                  PIC X(3).                    !02632F04
          06  RECENT-REISS-IND            PIC X.                       !02632F05
          06  CVV-VAL                     PIC X(3).                    !02632F06
          06  NUM-ISS                     PIC X(2).                    !02632F07
          06  USER-FLD4                   PIC X.                       !02632F08
          06  RESERVED                    PIC X(132).                  !02632F09
                                                                       !02632F0A
                                                                       !02632E00
      04  FHM-CACT                        REDEFINES DATA.              !02632E01
          06 ACCT-TYP                     PIC X(2).                    !02632E02
          06 ACCT-QUAL                    PIC X(4).                    !02632E03
          06 FIID                         PIC X(4).                    !02632E04
          06 STAT                         PIC X.                       !02632E05
          06 VER                          PIC 9(4).                    !02632E06
          06 DESCR                        PIC X(15).                   !02632E07
          06 ACT-ALWD-DB                  PIC X.                       !02632E08
          06 ACT-ALWD-CR                  PIC X.                       !02632E09
          06 ACT-ALWD-INQ                 PIC X.                       !02632E0A
          06 BEG-DAT                      PIC 9(8).                    !02632E0B
          06 END-DAT                      PIC 9(8).                    !02632E0C
          06 RESERVED                     PIC X(101).                  !02632E0D
                                                                       !02632E0E
      04  FHM-CPIT                        REDEFINES DATA.              !02632E0F
          06 PRSNL-ID                     PIC X(28).                   !02632E0G
          06 ID-TYP                       PIC X(2).                    !02632E0H
          06 VER                          PIC 9(4).                    !02632E0I
          06 RESERVED                     PIC X(116).                  !02632E0J
                                                                       !02632E0K
                                                                       !02632E0L
                                                                       !02633
                                                                       !02634
                                                                       !02635
                                                                       !02636
                                                                       !02637
                                                                       !02638
*            This field is reserved for PRIVATE use.  BASE24 use this !!02639
*            field to transmit special information.                   !!02640
*            Bit map position = 121                                   !!02641
                                                                       !02642
  02  SECNDRY-RSRVD2-PRVT.                                             !02643
      04  LEN                             PIC 9(3).                    !02644
      04  DATA                            PIC X(150).                  !02645
                                                                       !02646
                                                                       !02647
      04  POS                             REDEFINES DATA.              !02648
          06  CLERK-ID                    PIC X(6).                    !02649
          06  CRT-AUTH-GRP                PIC X(4).                    !02650
          06  CRT-AUTH-USER-ID            PIC X(8).                    !02651
          06  AUTH-IND                    PIC X.                       !02652
          06  AUTH-IND2                   PIC X.                       !02653
          06  RESERVED                    PIC X(130).                  !02654
                                                                       !02655
                                                                       !02656
                                                                       !02657
                                                                       !02658
                                                                       !02659
                                                                       !02660Q00
      04  FHM-CAF-EXPAND                  REDEFINES DATA.              !02660Q01
                                                                       !02660Q02
          06  USE-LMT                     PIC X(4).                    !02661
          06  TTL-WDL-LMT                 PIC X(12).                   !02662
          06  OFFL-WDL-LMT                PIC X(12).                   !02663
          06  TTL-CCA-LMT                 PIC X(12).                   !02664
          06  OFFL-CCA-LMT                PIC X(12).                   !02665
          06  DEP-CR-LMT                  PIC X(8).                    !02666
                                                                       !02667M00
          06  ISS-TXN-PRFL                PIC X(16).                   !02667M01
                                                                       !02667M02
                                                                       !02668
                                                                       !02669
                                                                       !02670M00
          06  RESERVED                    PIC X(74).                   !02670M01
                                                                       !02670M02
                                                                       !02670Q00
      04  FHM-CAF                         REDEFINES DATA.              !02670Q01
          06  USE-LMT                     PIC X(4).                    !02670Q02
          06  TTL-WDL-LMT                 PIC X(12).                   !02670Q03
          06  OFFL-WDL-LMT                PIC X(12).                   !02670Q04
          06  TTL-CCA-LMT                 PIC X(12).                   !02670Q05
          06  OFFL-CCA-LMT                PIC X(12).                   !02670Q06
          06  DEP-CR-LMT                  PIC X(8).                    !02670Q07
          06  RESERVED                    PIC X(90).                   !02670Q08
                                                                       !02670Q09
                                                                       !02671D00
                                                                       !02671D01
                                                                       !02671D02
*            The following fields contain the Teller Native Message   !!02682
*            Token Data.                                              !!02683
                                                                       !02684
      04  TLR                             REDEFINES DATA.              !02685
          06  TKN-ID                      PIC X(2).                    !02686
          06  NATIVE-TKN                  PIC X(148).                  !02687
                                                                       !02688
                                                                       !02689
                                                                       !02690
                                                                       !02690D00
      04  TB                              REDEFINES DATA.              !02690D01
          06  PIN-NEW-1                   PIC X(16).                   !02690D02
          06  PIN-NEW-2                   PIC X(16).                   !02690D03
          06  RESERVED                    PIC X(118).                  !02690D04
                                                                       !02690F00
                                                                       !02690F01
      04  FHM-CCIF0001                    REDEFINES DATA.              !02690F02
          06  SEG-ID                      PIC X(4).                    !02690F03
          06  VER                         PIC X(4).                    !02690F04
          06  STR-ADDR3                   PIC X(30).                   !02690F05
          06  PHN-OTHR2                   PIC X(20).                   !02690F06
          06  PHN-OTHR2-DESCR             PIC X(8).                    !02690F07
          06  RESERVED                    PIC X(84).                   !02690F08
                                                                       !02690F09
                                                                       !02690D05
*            This field is reserved for PRIVATE use.  BASE24 use this !!02691
*            field to transmit special information.                   !!02692
*            Bit map position = 122                                   !!02693
                                                                       !02694
  02  SECNDRY-RSRVD3-PRVT.                                             !02695
      04  LEN                             PIC 9(3).                    !02696
      04  DATA                            PIC X(200).                  !02697
                                                                       !02698
      04  B24                             REDEFINES DATA.              !02699
          06  CRD-ISS-ID-NUM              PIC X(11).                   !02700
          06  RESERVED                    PIC X(189).                  !02701
                                                                       !02701c00
                                                                       !02701c01
      04  B24-MIGR-EXPAND                 REDEFINES DATA.              !02701c02
          06  CRD-ISS-ID-NUM              PIC X(11).                   !02701c03
          06  MULT-ACCT                   PIC X.                       !02701c04
          06  RESERVED                    PIC X(188).                  !02701c05
                                                                       !02701c06
                                                                       !02702
                                                                       !02703Q00
      04  FHM-CAF-EXPAND                  REDEFINES DATA.              !02703Q01
                                                                       !02703Q02
          06  TTL-PUR-LMT                 PIC X(12).                   !02704
          06  OFFL-PUR-LMT                PIC X(12).                   !02705
          06  TTL-CCA-LMT                 PIC X(12).                   !02706
          06  OFFL-CCA-LMT                PIC X(12).                   !02707
          06  TTL-WDL-LMT                 PIC X(12).                   !02708
          06  OFFL-WDL-LMT                PIC X(12).                   !02709
          06  USE-LMT                     PIC X(4).                    !02710
          06  TTL-RFND-CR-LMT             PIC X(12).                   !02711
          06  OFFL-RFND-CR-LMT            PIC X(12).                   !02712
                                                                       !02713
          06  RSN-CDE                     PIC X.                       !02714
                                                                       !02715M00
          06  ISS-TXN-PRFL                PIC X(16).                   !02715M01
                                                                       !02715M02
                                                                       !02716
                                                                       !02717
                                                                       !02718
                                                                       !02719
                                                                       !02720M00
          06  RESERVED                    PIC X(83).                   !02720M01
                                                                       !02720M02
                                                                       !02720Q00
      04  FHM-CAF                         REDEFINES DATA.              !02720Q01
          06  TTL-PUR-LMT                 PIC X(12).                   !02720Q02
          06  OFFL-PUR-LMT                PIC X(12).                   !02720Q03
          06  TTL-CCA-LMT                 PIC X(12).                   !02720Q04
          06  OFFL-CCA-LMT                PIC X(12).                   !02720Q05
          06  TTL-WDL-LMT                 PIC X(12).                   !02720Q06
          06  OFFL-WDL-LMT                PIC X(12).                   !02720Q07
          06  USE-LMT                     PIC X(4).                    !02720Q08
          06  TTL-RFND-CR-LMT             PIC X(12).                   !02720Q09
          06  OFFL-RFND-CR-LMT            PIC X(12).                   !02720Q0A
          06  RSN-CDE                     PIC X.                       !02720Q0B
          06  RESERVED                    PIC X(99).                   !02720Q0C
                                                                       !02720Q0D
                                                                       !02721
                                                                       !02722
                                                                       !02723
      04  FHM-PBF                         REDEFINES DATA.              !02724
                                                                       !02725
          06  TTL-FLOAT                   PIC X(12).                   !02726
                                                                       !02727
          06  CUR-FLOAT                   PIC X(12).                   !02728
                                                                       !02729
          06  RESERVED                    PIC X(176).                  !02730
                                                                       !02731
      04  FHM-PBF-EXPAND                  REDEFINES DATA.              !02732
          06  TTL-FLOAT                   PIC X(15).                   !02733
          06  CUR-FLOAT                   PIC X(15).                   !02734
          06  RESERVED                    PIC X(170).                  !02735
                                                                       !02736
                                                                       !02737
      04  EMS                             REDEFINES DATA.              !02738
          06  AFT-STMP.                                                !02739
            08  PICKUP-STAT               PIC 9.                       !02740
            08  PICKUP-DAT                PIC 9(6).                    !02741
            08  PICKUP-TIM                PIC 9(4).                    !02742
          06  CATEGORY-NAM                PIC X(16).                   !02743
          06  COMPL-CDE                   PIC X(2).                    !02744
          06  DELIVERY-MDE                PIC 9.                       !02745
          06  EXP-STMP.                                                !02746
            08  DAT                       PIC 9(6).                    !02747
            08  TIM                       PIC 9(4).                    !02748
          06  ID.                                                      !02749
            08  MSG-DAT                   PIC 9(6).                    !02750
            08  MSG-ID                    PIC 9(4).                    !02751
          06  INVOICE-NUM                 PIC 9(5).                    !02752
          06  MSG-SOURCE-NAM              PIC X(16).                   !02753
          06  MSG-SOURCE-TYP              PIC X(1).                    !02754
          06  RESP-REQ                    PIC 9.                       !02755
          06  TIMSTP                      PIC 9(4).                    !02756
          06  RESERVED                    PIC X(123).                  !02757
                                                                       !02758
*            The following fields contain the Teller Account Data     !!02759
*            Token Data.                                              !!02760
                                                                       !02761
      04  TLR                             REDEFINES DATA.              !02762
          06  TKN-ID                      PIC X(2).                    !02763
          06  ACCT-TKN                    PIC X(198).                  !02764
                                                                       !02765
                                                                       !02765F00
      04  FHM-CCIF0002                    REDEFINES DATA.              !02765F01
          06  SEG-ID                      PIC X(4).                    !02765F02
          06  VER                         PIC X(4).                    !02765F03
          06  NAM                         PIC X(30).                   !02765F04
          06  GOVT-ID                     PIC X(15).                   !02765F05
          06  MTHR-MDN-NAM                PIC X(20).                   !02765F06
          06  DOB                         PIC X(6).                    !02765F07
          06  RESERVED                    PIC X(121).                  !02765F08
                                                                       !02765F09
                                                                       !02765F0A
                                                                       !02766
*            This field is reserved for PRIVATE use.  BASE24 use this !!02767
*            field to transmit special information.                   !!02768
*            Bit map position = 123                                   !!02769
                                                                       !02770
  02  SECNDRY-RSRVD4-PRVT.                                             !02771
      04  LEN                             PIC 9(3).                    !02772
                                                                       !02773
      04  DATA                            PIC X(550).                  !02774
                                                                       !02775
                                                                       !02776
      04  ATM                             REDEFINES DATA.              !02777
          06  AMT-DEP-CR                  PIC 9(12).                   !02778
                                                                       !02778V00
          06  SETL-AMT-DEP-CR             PIC 9(12).                   !02778V01
          06  RESERVED                    PIC X(526).                  !02778V02
                                                                       !02778V03
                                                                       !02779V00
                                                                       !02779V01
                                                                       !02779V02
                                                                       !02781
                                                                       !02782
                                                                       !02783
      04  POS                             REDEFINES DATA.              !02784
          06  INVOICE-NUM                 PIC X(10).                   !02785
          06  ORIG-INVOICE-NUM            PIC X(10).                   !02786
                                                                       !02787
          06  RESERVED                    PIC X(530).                  !02788
                                                                       !02789
                                                                       !02790
                                                                       !02791
                                                                       !02792
      04  POS-SETL1A                      REDEFINES DATA.              !02793
          06  SET-RECX1A                  TYPE *.                      !02794
                                                                       !02795
                                                                       !02796
                                                                       !02797
          06  RESERVED                    PIC X(382).                  !02798
                                                                       !02799
                                                                       !02800
                                                                       !02801
      04  FHM-PBF                         REDEFINES DATA.              !02802
                                                                       !02803
          06  TTL-DEP-AMT                 PIC X(12).                   !02804
                                                                       !02805
          06  CONFIDENTIAL-FLG            PIC X.                       !02806
          06  SP-STAT                     PIC X.                       !02807
                                                                       !02808
          06  ACCRUED-INTEREST-YTD        PIC X(8).                    !02809
                                                                       !02810
          06  STRT-BAL                    PIC X(12).                   !02811
          06  PASSBOOK-BAL                PIC X(12).                   !02812
          06  NBF-REC-CNT                 PIC X(4).                    !02813
          06  SIG-CRD-LOC                 PIC X(9).                    !02814
          06  PASSBOOK-IND                PIC X.                       !02815
          06  CUST-CLASS                  PIC X.                       !02816
          06  CASHOUT-LMT                 PIC X(12).                   !02817
          06  CASHIN-LMT                  PIC X(12).                   !02818
                                                                       !02819
                                                                       !02820
          06  RESERVED                    PIC X(465).                  !02821
                                                                       !02822
      04  FHM-PBF-EXPAND                  REDEFINES DATA.              !02823
          06  TTL-DEP-AMT                 PIC X(15).                   !02824
          06  CONFIDENTIAL-FLG            PIC X.                       !02825
          06  SP-STAT                     PIC X.                       !02826
          06  ACCRUED-INTEREST-YTD        PIC X(19).                   !02827
          06  STRT-BAL                    PIC X(19).                   !02828
          06  PASSBOOK-BAL                PIC X(19).                   !02829
          06  NBF-REC-CNT                 PIC X(4).                    !02830
          06  SIG-CRD-LOC                 PIC X(9).                    !02831
          06  PASSBOOK-IND                PIC X.                       !02832
          06  CUST-CLASS                  PIC X.                       !02833
          06  CASHOUT-LMT                 PIC X(12).                   !02834
          06  CASHIN-LMT                  PIC X(12).                   !02835
          06  RESERVED                    PIC X(437).                  !02836
                                                                       !02836E00
                                                                       !02836E01
      04  FHM-CSTT                        REDEFINES DATA.              !02836E02
          06  VER                         PIC 9(4).                    !02836E03
          06  FIID                        PIC X(4).                    !02836E04
          06  PRFL                        PIC X(8).                    !02836E05
          06  VRFY-FLG                    PIC X(2).                    !02836E06
          06  LAST-VRFY-FLG-UPD-TS        PIC X(20).                   !02836E07
          06  TYP                         PIC X(2).                    !02836E08
          06  PVD                         PIC X(16).                   !02836E09
          06  LAST-PVD-UPDT-TS            PIC X(20).                   !02836E0A
          06  PVK-IDX                     PIC X.                       !02836E0B
          06  DFLT-ACCT-NUM               PIC X(28).                   !02836E0C
          06  DFLT-ACCT-TYP               PIC X(2).                    !02836E0D
          06  MAX-HIST-RECS               PIC 9(5).                    !02836E0E
          06  CUST-INFO-1                 PIC X(20).                   !02836E0F
          06  CUST-INFO-2                 PIC X(20).                   !02836E0G
          06  CUST-INFO-3                 PIC X(20).                   !02836E0H
          06  ALT-CONTACT                 PIC X(30).                   !02836E0I
          06  BEG-DAT                     PIC 9(8).                    !02836E0J
          06  END-DAT                     PIC 9(8).                    !02836E0K
          06  BRCH-ID                     PIC X(4).                    !02836E0L
          06  PIN-CHNG-REQ                PIC X.                       !02836E0M
          06  BP-BILL-TYP                 PIC X(2).                    !02836E0N
          06  PCKT-STAT                   PIC X.                       !02836E0O
          06  LAST-BP-BILL-TYP-UPDT-TS    PIC X(20).                   !02836E0P
          06  LAST-PCKT-STAT-UPDT-TS      PIC X(20).                   !02836E0Q
          06  BP-BILL-GRP                 PIC X(4).                    !02836E0R
          06  BP-TXN-LMT                  PIC 9(15).                   !02836E0S
          06  SVC-FEE-ACCT                PIC X(19).                   !02836E0T
          06  SVC-FEE-ACCT-TYP            PIC X(2).                    !02836E0U
          06  RESERVED                    PIC X(244).                  !02836E0V
                                                                       !02836E0W
      04  FHM-PIT                         REDEFINES DATA.              !02836E0X
          06  PRSNL-ID                    PIC X(28).                   !02836E0Y
          06  VER                         PIC 9(4).                    !02836E0Z
          06  FIID                        PIC X(4).                    !02836E10
          06  NAM-FMLY                    PIC X(20).                   !02836E11
          06  NAM-GIVEN                   PIC X(10).                   !02836E12
          06  NAM-M-I                     PIC X.                       !02836E13
          06  NAM-TKN-FMLY                PIC X(16).                   !02836E14
          06  NAM-TKN-GIVEN               PIC X(6).                    !02836E15
          06  TITLE                       PIC X(6).                    !02836E16
          06  GOVT-ID                     PIC X(15).                   !02836E17
          06  DOB                         PIC 9(8).                    !02836E18
          06  STR-ADDR-1                  PIC X(30).                   !02836E19
          06  STR-ADDR-2                  PIC X(30).                   !02836E1A
          06  STR-ADDR-3                  PIC X(30).                   !02836E1B
          06  CITY                        PIC X(25).                   !02836E1C
          06  ST-CDE                      PIC X(2).                    !02836E1D
          06  CNTRY-CDE                   PIC X(3).                    !02836E1E
          06  POSTAL-CDE                  PIC X(10).                   !02836E1F
          06  LANG-IND                    PIC 9(4).                    !02836E1G
          06  PHN-HOME                    PIC X(20).                   !02836E1H
          06  PHN-WORK                    PIC X(20).                   !02836E1I
          06  PHN-OTHER-1                 PIC X(20).                   !02836E1J
          06  PHN-OTHER-1-DESCR           PIC X(10).                   !02836E1K
          06  PHN-OTHER-2                 PIC X(20).                   !02836E1L
          06  PHN-OTHER-2-DESCR           PIC X(10).                   !02836E1M
          06  MTHR-MDN-NAM                PIC X(20).                   !02836E1N
          06  RESERVED                    PIC X(178).                  !02836E1O
                                                                       !02836E1P
                                                                       !02837
                                                                       !02838
*                                                                     !!02839
*     This field contains the Cryptographic Service Message (CSM)     !!02840
*     that adheres to the ANSI X9.17 Standard.                        !!02841
*                                                                     !!02842
                                                                       !02843
      04  X917-CSM                        REDEFINES DATA.              !02844
          06  DATA                        PIC X(550).                  !02845
                                                                       !02846
      04  EMS                             REDEFINES DATA.              !02847
          06  MAIL-MSG.                                                !02848
            08  TXT-LINES                 PIC 99.                      !02849
            08  TXT                       PIC X(40)                    !02850
                                          OCCURS 11 TIMES.             !02851
          06  RESERVED                    PIC X(108).                  !02852
                                                                       !02853D00
                                                                       !02853D01
                                                                       !02853D02
*            The following fields contain the Teller SPF Inquiry      !!02863
*            Token Data.                                              !!02864
                                                                       !02865
      04  TLR                             REDEFINES DATA.              !02866
          06  TKN-ID                      PIC X(2).                    !02867
          06  SPFI-TKN                    PIC X(548).                  !02868
                                                                       !02869
                                                                       !02869I00
      04  FHM-CAF                         REDEFINES DATA.              !02869I01
          06  BRANCH-NUM                  PIC X(4).                    !02869I02
          06  DEPT-NUM                    PIC X(2).                    !02869I03
          06  PIN-MAILER                  PIC X.                       !02869I04
          06  CARD-CARRIER                PIC X.                       !02869I05
          06  CARDHOLDER-TITLE            PIC X.                       !02869I06
          06  OPEN-TEXT1                  PIC X(40).                   !02869I07
          06  NAME-LINE-1                 PIC X(30).                   !02869I08
          06  NAME-LINE-2                 PIC X(30).                   !02869I09
          06  ADDR-LINE-1                 PIC X(34).                   !02869I0A
          06  ADDR-LINE-2                 PIC X(34).                   !02869I0B
          06  CITY                        PIC X(22).                   !02869I0C
          06  STATE                       PIC X(3).                    !02869I0D
          06  POSTAL-CODE                 PIC X(9).                    !02869I0E
          06  COUNTRY-CODE                PIC X(3).                    !02869I0F
          06  ISSUE-STAT                  PIC X(2).                    !02869I0G
          06  CARDS-TO-ISSUE              PIC X(2).                    !02869I0H
          06  CARDS-RET                   PIC X(2).                    !02869I0I
          06  SRVC-CDE                    PIC X(3).                    !02869I0J
          06  RESERVED                    PIC X(327).                  !02869I0K
                                                                       !02869I0L
                                                                       !02870
                                                                       !02871
                                                                       !02872
                                                                       !02872D00
      04  TB                              REDEFINES DATA.              !02872D01
          06  ACCT1-QUAL                  PIC X(4).                    !02872D02
          06  ACCT2-QUAL                  PIC X(4).                    !02872D03
          06  RESERVED                    PIC X(542).                  !02872D04
                                                                       !02872D05
                                                                       !02872F00
      04  FHM-CCIF0004                    REDEFINES DATA.              !02872F01
          06  SEG-ID                      PIC X(4).                    !02872F02
          06  VER                         PIC X(4).                    !02872F03
          06  PHN-HOME                    PIC X(20).                   !02872F04
          06  PHN-WRK                     PIC X(20).                   !02872F05
          06  PHN-OTHR1                   PIC X(20).                   !02872F06
          06  PHN-OTHR1-DESCR             PIC X(8).                    !02872F07
          06  PHN-OTHR2                   PIC X(20).                   !02872F08
          06  PHN-OTHR2-DESCR             PIC X(8).                    !02872F09
          06  RESERVED                    PIC X(446).                  !02872F0A
                                                                       !02872F0B
                                                                       !02873
                                                                       !02874
                                                                       !02875
*            This field is reserved for PRIVATE use.  BASE24 use this !!02876
*            field to transmit special information.                   !!02877
*            Bit map position = 124                                   !!02878
                                                                       !02879
                                                                       !02880
*            The FHM redefine contains the EFTPOS segments for the    !!02881
*            CAF, PBF, and NEG From Host Maintenance Update.          !!02882
                                                                       !02883
*            Added Pre-Authorization support for From Host            !!02884
*            Maintenance.  This could be used for CAF and PBF.        !!02885
                                                                       !02886
                                                                       !02887
  02  SECNDRY-RSRVD5-PRVT.                                             !02888
      04  LEN                             PIC 9(3).                    !02889
      04  DATA                            PIC X(684).                  !02890
                                                                       !02891
      04  ATM                             REDEFINES DATA.              !02892
          06  DEP-TYP                     PIC X.                       !02893
          06  RESERVED                    PIC X(683).                  !02894
                                                                       !02895
      04  POS                             REDEFINES DATA.              !02896
          06  BATCH-SEQ-NUM               PIC 9(3).                    !02897
          06  BATCH-NUM                   PIC 9(3).                    !02898
          06  SHIFT-NUM                   PIC 9(3).                    !02899
          06  RESERVED                    PIC X(675).                  !02900
                                                                       !02901D00
                                                                       !02901D01
                                                                       !02901D02
      04  POS-SETL2                       REDEFINES DATA.              !02914
          06  SET-RECX2                   TYPE *.                      !02915
                                                                       !02916D00
                                                                       !02916D01
                                                                       !02916D02
      04  FHM-CAF                         REDEFINES DATA.              !02924
                                                                       !02925
          06  TTL-PUR-LMT                 PIC X(12).                   !02926
          06  OFFL-PUR-LMT                PIC X(12).                   !02927
          06  TTL-CCA-LMT                 PIC X(12).                   !02928
          06  OFFL-CCA-LMT                PIC X(12).                   !02929
          06  TTL-WDL-LMT                 PIC X(12).                   !02930
          06  OFFL-WDL-LMT                PIC X(12).                   !02931
          06  USE-LMT                     PIC X(4).                    !02932
                                                                       !02933
                                                                       !02934
                                                                       !02935
          06  RSN-CDE                     PIC X.                       !02936
          06  TTL-KEY-ENTRY-LMT.                                       !02937
              08  CNT                     PIC 9(4).                    !02938
              08  AMT                     PIC 9(12).                   !02939
          06  OFFL-KEY-ENTRY-LMT.                                      !02940
              08  CNT                     PIC 9(4).                    !02941
              08  AMT                     PIC 9(12).                   !02942
                                                                       !02943
          06  PER-DB-TRAN-LMT             PIC 9(7).                    !02944
                                                                       !02945
                                                                       !02946
                                                                       !02947
          06  PIN-REQ                     PIC 9.                       !02948
          06  OLD-CRD-EXP-DAT             PIC X(4).                    !02949
          06  OLD-CRD-STAT                PIC X.                       !02950
          06  OLD-CRD-RSN-CDE             PIC X.                       !02951
                                                                       !02952
                                                                       !02953
                                                                       !02954
          06  RESERVED                    PIC X(561).                  !02955
                                                                       !02956
                                                                       !02957
                                                                       !02958
                                                                       !02959
                                                                       !02960
                                                                       !02961
      04  FHM-NEG                         REDEFINES DATA.              !02962
                                                                       !02963
          06  CRD-EXP-DAT                 PIC X(4).                    !02964
          06  OLD-CRD-EXP-DAT             PIC X(4).                    !02965
          06  OLD-CRD-RSN-CDE             PIC 9(2).                    !02966
                                                                       !02967
          06  RESERVED                    PIC X(674).                  !02968
                                                                       !02969
                                                                       !02970
      04  FHM-PBF                         REDEFINES DATA.              !02971
                                                                       !02972
          06  TTL-FLOAT                   PIC X(12).                   !02973
                                                                       !02974
          06  CUR-FLOAT                   PIC X(12).                   !02975
                                                                       !02976
                                                                       !02977
                                                                       !02978
          06  RESERVED                    PIC X(660).                  !02979
                                                                       !02980
      04  TLR                             REDEFINES DATA.              !02981
          06  ADD-DATA                    PIC X(684).                  !02982
                                                                       !02983
      04  FHM-PRE-AUTH-CAF                REDEFINES DATA.              !02984
          06  PRE-AUTH                    OCCURS 10 TIMES.             !02985
              08  SEQ-NUM                 PIC X(12).                   !02986
              08  HOLD-AMT                PIC X(19).                   !02987
              08  PR-TS.                                               !02988
                  10  DAT                 TYPE DAT.                    !02989
                  10  TIM                 TYPE TIM.                    !02990
              08  ACCT-TYP                PIC X(2).                    !02991
              08  ACCT                    PIC X(19).                   !02992
          06  RESERVED                    PIC X(24).                   !02993
                                                                       !02994
      04  FHM-PRE-AUTH-PBF                REDEFINES DATA.              !02995
          06  PRE-AUTH                    OCCURS 10 TIMES.             !02996
              08  SEQ-NUM                 PIC X(12).                   !02997
              08  HOLD-AMT                PIC X(19).                   !02998
              08  PR-TS.                                               !02999
                  10  DAT                 TYPE DAT.                    !03000
                  10  TIM                 TYPE TIM.                    !03001
          06  RESERVED                    PIC X(234).                  !03002
                                                                       !03003
                                                                       !03004
                                                                       !03005
                                                                       !03005D00
      04  TB                              REDEFINES DATA.              !03005D01
          06  TKN-DATA                    PIC X(400).                  !03005D02
          06  RESERVED                    PIC X(284).                  !03005D03
                                                                       !03005D04
                                                                       !03005F00
      04  FHM-CCIF0000                    REDEFINES DATA.              !03005F01
          06  SEG-ID                      PIC X(4).                    !03005F02
          06  VER                         PIC X(4).                    !03005F03
          06  NAM                         PIC X(30).                   !03005F04
          06  GOVT-ID                     PIC X(15).                   !03005F05
          06  MTHR-MDN-NAM                PIC X(20).                   !03005F06
          06  DOB                         PIC X(6).                    !03005F07
          06  STR-ADDR1                   PIC X(30).                   !03005F08
          06  STR-ADDR2                   PIC X(30).                   !03005F09
          06  CITY                        PIC X(18).                   !03005F0A
          06  ST                          PIC X(3).                    !03005F0B
          06  CNTRY                       PIC X(3).                    !03005F0C
          06  POSTAL-CDE                  PIC X(10).                   !03005F0D
          06  PHN-HOME                    PIC X(20).                   !03005F0E
          06  PHN-WRK                     PIC X(20).                   !03005F0F
          06  PHN-OTHR1                   PIC X(20).                   !03005F0G
          06  PHN-OTHR1-DESCR             PIC X(8).                    !03005F0H
          06  RESERVED                    PIC X(443).                  !03005F0I
                                                                       !03005F0J
      04  FHM-CCMF                        REDEFINES DATA.              !03005F0K
          06  PAN                         PIC X(19).                   !03005F0L
          06  VER                         PIC X(4).                    !03005F0M
          06  DAT-LOST                    PIC X(6).                    !03005F0N
          06  DAT-RPTD                    PIC X(6).                    !03005F0O
          06  RPT-TAKEN-BY                PIC X(3).                    !03005F0P
          06  LOST-STLN-IND               PIC X.                       !03005F0Q
          06  LINE-CNT                    PIC X(2).                    !03005F0R
          06  MEMO-DATA                   PIC X(72) OCCURS 8 TIMES.    !03005F0S
          06  RESERVED                    PIC X(67).                   !03005F0T
                                                                       !03005F0U
                                                                       !03006
                                                                       !03007
                                                                       !03008
*            This field is utilized by BASE24-atm to map statement    !!03009
*            print information.                                       !!03010
*            Bit map position = 125                                   !!03011
                                                                       !03012
  02  SECNDRY-RSRVD6-PRVT.                                             !03013
      04  LEN                             PIC 9(3).                    !03014
      04  DATA                            PIC X(680).                  !03015
                                                                       !03016
                                                                       !03017
      04  ATM                             REDEFINES DATA.              !03018
          06 PROC-ACCT-IND                PIC X(1).                    !03019
          06 RESERVED                     PIC X(679).                  !03020
                                                                       !03021
                                                                       !03022
      04  STMT                            REDEFINES DATA.              !03023
          06 PAGE-IND                     PIC X(2).                    !03024
          06 LST-STMT-DAT                 TYPE DAT.                    !03025
          06 HEADER-LINES                 PIC X(2).                    !03026
          06 COLUMN-LINES                 PIC X(2).                    !03027
          06 STMT-FLD                     PIC X(360).                  !03028
          06 USER-FLD                     PIC X(308).                  !03029
                                                                       !03030
      04  POS                             REDEFINES DATA.              !03031
          06 SRV                          PIC XX.                      !03032
          06 ORIG                         PIC X(4).                    !03033
          06 DEST                         PIC X(4).                    !03034
          06 DFT-CAPTURE-FLG              PIC 9.                       !03035
          06 SETL-FLG                     PIC X.                       !03036
          06 RESERVED                     PIC X(668).                  !03037
                                                                       !03038
                                                                       !03039
                                                                       !03040
      04  POS-SETL1B                      REDEFINES DATA.              !03041
          06 SET-RECX1B                   TYPE *.                      !03042
          06 RESERVED                     PIC X(416).                  !03043
                                                                       !03044D00
                                                                       !03044D01
                                                                       !03044D02
      04  FHM-PBF-PARAMETRIC-AUTH         REDEFINES DATA.              !03057
          06 DAYS-DELINQ                  PIC 99.                      !03058
          06 MONTHS-ACTIVE                PIC 99.                      !03059
          06 CYCLE-1                      PIC 99.                      !03060
          06 CYCLE-2                      PIC 99.                      !03061
          06 CYCLE-3                      PIC 99.                      !03062
          06 RESERVED                     PIC X(670).                  !03063
                                                                       !03064
                                                                       !03064D00
      04  TB                              REDEFINES DATA.              !03064D01
          06  CR-LINE-ACCT                PIC X(28).                   !03064D02
          06  CR-LINE-ACCT-TYP            TYPE ACCT-TYP.               !03064D03
          06  CR-LINE-AMT                 PIC 9(12).                   !03064D04
          06  CR-LINE-AMT-CHB             PIC 9(12).                   !03064D05
          06  CRNCY-CDE                   PIC 9(3).                    !03064D06
          06  RESERVED                    PIC X(623).                  !03064D07
                                                                       !03064D08
                                                                       !03064F00
      04  FHM-CCIF0003                    REDEFINES DATA.              !03064F01
          06  SEG-ID                      PIC X(4).                    !03064F02
          06  VER                         PIC X(4).                    !03064F03
          06  STR-ADDR1                   PIC X(30).                   !03064F04
          06  STR-ADDR2                   PIC X(30).                   !03064F05
          06  STR-ADDR3                   PIC X(30).                   !03064F06
          06  CITY                        PIC X(18).                   !03064F07
          06  ST                          PIC X(3).                    !03064F08
          06  CNTRY                       PIC X(3).                    !03064F09
          06  POSTAL-CDE                  PIC X(10).                   !03064F0A
          06  RESERVED                    PIC X(548).                  !03064F0B
                                                                       !03064F0C
                                                                       !03064W00
*            The following fields contain data used by From Host       !03064W01
*            Maintenance Host Interface in order to send hot card      !03064W02
*            updates to BASE24 interchange interfaces.  This data      !03064W03
*            element may not be used to store FHM CAF or NEG data.     !03064W04
                                                                       !03064W05
      04  HOT-CRD-UPDT                    REDEFINES DATA.              !03064W06
          06  DEST-SVC                    PIC X(16).                   !03064W07
          06  PATH-HDR-FRMT               PIC X(2).                    !03064W08
          06  PATH-RQST                   PIC X(662).                  !03064W09
                                                                       !03064W0A
                                                                       !03065
                                                                       !03066
*            This field is reserved for PRIVATE use.                  !!03067
*            Bit map position = 126                                   !!03068
                                                                       !03069
  02  SECNDRY-RSRVD7-PRVT.                                             !03070
      04  LEN                             PIC 9(3).                    !03071
                                                                       !03072D00
                                                                       !03072E00
                                                                       !03072G00
                                                                       !03072L00
      04  DATA                            PIC X(998).                  !03072L01
                                                                       !03072L02
                                                                       !03072G02
                                                                       !03072G03
                                                                       !03072G04
                                                                       !03072E02
                                                                       !03072E03
                                                                       !03072E04
                                                                       !03072D02
                                                                       !03073
      04  POS                             REDEFINES DATA.              !03074
          06 PRE-AUTH-HLD                 PIC 999.                     !03075
          06 PRE-AUTH-SEQ-NUM             PIC X(12).                   !03076
          06 RFRL-PHONE                   TYPE PHONE-NUM.              !03077
          06 REA-FOR-CHRGBCK              PIC 99.                      !03078
          06 NUM-OF-CHRGBCK               PIC 9.                       !03079
                                                                       !03080D00
                                                                       !03080E00
                                                                       !03080G00
                                                                       !03080L00
          06 RESERVED                     PIC X(960).                  !03080L01
                                                                       !03080L02
                                                                       !03080G02
                                                                       !03080G03
                                                                       !03080G04
                                                                       !03080E02
                                                                       !03080E03
                                                                       !03080E04
                                                                       !03080D02
                                                                       !03080c00
      04  POS-CLERK-TTLS                  REDEFINES DATA.              !03080c01
          06 SET-RECX5                    TYPE *.                      !03080c02
          06 RESERVED                     PIC X(888).                  !03080c03
                                                                       !03080c04
                                                                       !03081
                                                                       !03082
                                                                       !03083
      04  FHM-CAF-ACCT                    REDEFINES DATA.              !03084
                                                                       !03085
          06  ACCT-CNT                    PIC X(2).                    !03086
          06  ACCT                        OCCURS 16 TIMES.             !03087
              08  TYP                     PIC X(2).                    !03088
                                                                       !03089
              08  NUM                     PIC X(28).                   !03090
                                                                       !03091
              08  STAT                    PIC X.                       !03092
              08  DESCR                   PIC X(10).                   !03093
              08  ACH-RTTN                REDEFINES DESCR PIC X(10).   !03094
                                                                       !03095
              08  CORP-PBF-IND            PIC X.                       !03096
              08  ACH-IND                 REDEFINES CORP-PBF-IND PIC X.
                                                                       !03099D00
                                                                       !03099E00
                                                                       !03099G00
                                                                       !03099L00
          06  RESERVED                    PIC X(324).                  !03099L01
                                                                       !03099L02
                                                                       !03099Q00
                                                                       !03099Q01
      04  FHM-CAF-ACCT-EXPAND            REDEFINES DATA.               !03099Q02
                                                                       !03099Q03
          06  ACCT-CNT                   PIC X(2).                     !03099Q04
          06  ACCT                       OCCURS 16 TIMES.              !03099Q05
              08  TYP                    PIC X(2).                     !03099Q06
              08  NUM                    PIC X(28).                    !03099Q07
              08  STAT                   PIC X.                        !03099Q08
              08  DESCR                  PIC X(10).                    !03099Q09
              08  ACH-RTTN               REDEFINES DESCR PIC X(10).    !03099Q0A
              08  CORP-PBF-IND           PIC X.                        !03099Q0B
              08  ACH-IND                REDEFINES CORP-PBF-IND PIC X. !03099Q0C
              08  QUAL                   PIC X.                        !03099Q0D
          06  RESERVED                   PIC X(308).                   !03099Q0E
                                                                       !03099Q0F
                                                                       !03099G02
                                                                       !03099G03
                                                                       !03099G04
                                                                       !03099E02
                                                                       !03099E03
                                                                       !03099E04
                                                                       !03099D02
                                                                       !03100
      04  FHM-PBF-CR-LINE                 REDEFINES DATA.              !03101
                                                                       !03102
          06  CR-LINE-ACCT                TYPE ACCT.                   !03103
          06  CR-LINE-ACCT-TYP            TYPE ACCT-TYP.               !03104
                                                                       !03105D00
                                                                       !03105E00
                                                                       !03105G00
                                                                       !03105L00
          06  RESERVED                    PIC X(977).                  !03105L01
                                                                       !03105L02
                                                                       !03105G02
                                                                       !03105G03
                                                                       !03105G04
                                                                       !03105E02
                                                                       !03105E03
                                                                       !03105E04
                                                                       !03105D02
                                                                       !03106D00
                                                                       !03106D01
                                                                       !03106D02
*            The following fields contain the Teller PBF Inquiry      !!03114
*            Token Data.                                              !!03115
                                                                       !03116
      04  TLR                             REDEFINES DATA.              !03117
          06  TKN-ID                      PIC X(2).                    !03118
          06  PBFI-TKN                    PIC X(798).                  !03119
                                                                       !03119D00
                                                                       !03119E00
                                                                       !03119G00
                                                                       !03119L00
          06  RESERVED                    PIC X(198).                  !03119L01
                                                                       !03119L02
                                                                       !03119G02
                                                                       !03119G03
                                                                       !03119G04
                                                                       !03119E02
                                                                       !03119E03
                                                                       !03119E04
                                                                       !03119D02
                                                                       !03120
                                                                       !03121B00
*           The number of CCF.CORP-ACCTs can be from 0 to 15.         !
                                                                       !03121B03
                                                                       !03122
      04  FHM-CCF                         REDEFINES DATA.              !03123
                                                                       !03124B00
          06  CORP-ACCT                   OCCURS 15 TIMES.             !03124B01
                                                                       !03124B02
              08  INST-ID-NUM             PIC X(11).                   !03125
              08  ACCT-NUM                PIC X(19).                   !03126
              08  ACCT-STAT               PIC X.                       !03127
                                                                       !03128C00
              08  CHK-LMT                 PIC X(15).                   !03128C01
                                                                       !03128C02
                                                                       !03128B00
                                                                       !03128C03
                                                                       !03128D00
                                                                       !03128E00
                                                                       !03128G00
                                                                       !03128L00
          06 RESERVED                     PIC X(308).                  !03128L01
                                                                       !03128L02
                                                                       !03128G02
                                                                       !03128G03
                                                                       !03128G04
                                                                       !03128E02
                                                                       !03128E03
                                                                       !03128E04
                                                                       !03128D02
                                                                       !03128C05
                                                                       !03128B02
                                                                       !03129
                                                                       !03130
                                                                       !03130D00
      04  TB                              REDEFINES DATA.              !03130D01
          06  LAST-TXN-CNT                PIC 9(2).                    !03130D02
          06  CRNCY-CDE                   PIC X(3).                    !03130D03
                                                                       !03130G00
          06  USER-FLD                    PIC X.                       !03130G01
                                                                       !03130G02
          06  HIST                        OCCURS 15 TIMES.             !03130D04
              08  DAT                     PIC 9(6).                    !03130D05
              08  AMT                     PIC X(12).                   !03130D06
              08  CHQ-NUM                 PIC X(12).                   !03130D07
              08  DB-CR-IND               PIC X.                       !03130D08
              08  SRC-IND                 PIC X.                       !03130D09
              08  TXN-FLGS                PIC X(16).                   !03130D0A
              08  HOST-TXN-CDE            PIC X(8).                    !03130D0B
                                                                       !03130E00
                                                                       !03130L00
          06  RESERVED                    PIC X(152).                  !03130L01
                                                                       !03130L02
                                                                       !03130E02
      04  TB-ACCT-LIST-INQ-DATA           REDEFINES DATA.              !03130E03
          06  CNT                         PIC 9(2).                    !03130E04
          06  ADNL-DATA-FLG               PIC X.                       !03130E05
          06  CUST-TYP                    PIC X(2).                    !03130E06
          06  CUST-VRFY-FLG               PIC X(2).                    !03130E07
          06  CUST-INFO-1                 PIC X(20).                   !03130E08
          06  CUST-INFO-2                 PIC X(20).                   !03130E09
          06  CUST-INFO-3                 PIC X(20).                   !03130E0A
          06  USER-FLD                    PIC X.                       !03130E0B
          06  ACCT                        OCCURS 15 TIMES.             !03130E0C
              08  NUM                     PIC X(19).                   !03130E0D
              08  TYP                     PIC X(2).                    !03130E0E
              08  QUAL                    PIC X(4).                    !03130E0F
              08  FIID                    PIC X(4).                    !03130E0G
              08  STAT                    PIC X.                       !03130E0H
              08  DESCR                   PIC X(15).                   !03130E0I
              08  ACT-ALWD-DB             PIC X.                       !03130E0J
              08  ACT-ALWD-CR             PIC X.                       !03130E0K
              08  ACT-ALWD-INQ            PIC X.                       !03130E0L
                                                                       !03130L03
                                                                       !03130L04
                                                                       !03130L05
                                                                       !03130G03
                                                                       !03130L06
          06  RESERVED                    PIC X(210).                  !03130L07
                                                                       !03130L08
                                                                       !03130G05
                                                                       !03130G06
                                                                       !03130G07
                                                                       !03130L09
                                                                       !03130L0A
      04  TB-CUST-VNDR-INQ-DATA           REDEFINES DATA.              !03130L0B
          06  CNT                         PIC 9(2).                    !03130L0C
          06  ADNL-DATA-FLG               PIC X.                       !03130L0D
          06  USER-FLD                    PIC X.                       !03130L0E
          06  CUST-VNDR-DATA              OCCURS 1 TIMES.              !03130L0F
*             Customer Vendor Data Table.                            !!!03130L0G
              08  CVND-NUM                PIC 9(5).                    !03130L0H
              08  CUST-ACCT-VNDR          PIC X(28).                   !03130L0I
              08  ACCT-VRFY               PIC X(1).                    !03130L0J
              08  ACCT-VRFY-GMT           PIC 9(20).                   !03130L0K
              08  ACCT-BEG-DAT            PIC 9(8).                    !03130L0L
              08  ACCT-END-DAT            PIC 9(8).                    !03130L0M
              08  BUDGET-CAT              PIC X(4).                    !03130L0N
              08  CVND-SHORT-NAM          PIC X(16).                   !03130L0O
              08  USER-INFO-1             PIC X(20).                   !03130L0P
              08  USER-INFO-2             PIC X(20).                   !03130L0Q
              08  CVND-FM-TAG.                                         !03130L0R
                  10  CVND-UPDT-TYP        PIC X(1).                   !03130L0S
                  10  CVND-GRP-NUM         PIC 9(5).                   !03130L0T
                  10  CVND-USER-NUM        PIC 9(5).                   !03130L0U
                  10  CVND-TERM-NAM        PIC X(24).                  !03130L0V
                  10  CVND-AFT-TS          PIC 9(20).                  !03130L0W
                  10  CVND-OLTP-TS         PIC 9(20).                  !03130L0X
                  10  CVND-XFILLER         PIC X(1).                   !03130L0Y
*             Vendor Table Data Fields.                              !!!03130L0Z
              08  VNDR-NAM                PIC X(30).                   !03130L10
              08  MAIN-BRANCH-NUM         PIC 9(4).                    !03130L11
              08  REMIT-BRANCH-NUM        PIC 9(4).                    !03130L12
              08  REMIT-PERSON            PIC X(22).                   !03130L13
              08  VRFY                    PIC X(1).                    !03130L14
              08  VRFY-DESCR              PIC X(10).                   !03130L15
              08  VRFY-GMT                PIC 9(20).                   !03130L16
              08  VNDR-BEG-DAT            PIC 9(8).                    !03130L17
              08  VNDR-END-DAT            PIC 9(8).                    !03130L18
              08  GOVT-ID                 PIC X(15).                   !03130L19
              08  INST-ID                 PIC X(11).                   !03130L1A
              08  ACCT-NUM                PIC X(19).                   !03130L1B
              08  ACCT-TYP                PIC X(2).                    !03130L1C
              08  REMIT-TYP               PIC X(3).                    !03130L1D
              08  REMIT-RPT-TYP           PIC X(2).                    !03130L1E
              08  DFLT-VBUD-CAT           PIC X(4).                    !03130L1F
              08  AUDIO-TKN               PIC X(20).                   !03130L1G
              08  WARN-PMNT-LMT-AMT       PIC 9(20).                   !03130L1H
              08  VNDR-MASK-GRP           PIC X(4).                    !03130L1I
              08  VNDR-TYP                PIC X(1).                    !03130L1J
              08  VNDR-TYP-DESCR          PIC X(7).                    !03130L1K
              08  PRENOTE-BUS-DAT         PIC 9(8).                    !03130L1L
              08  VNDR-SPEC-DATA-TYP      PIC X(2).                    !03130L1M
              08  VNDR-SPEC-DATA-DESCR    PIC X(30).                   !03130L1N
              08  VNDR-USER-REMIT-INFO-1  PIC X(20).                   !03130L1O
              08  VNDR-USER-REMIT-INFO-2  PIC X(20).                   !03130L1P
              08  CAT-CDE                 PIC X(4).                    !03130L1Q
              08  VNDR-FM-TAG.                                         !03130L1R
                  10  VNDR-UPDT-TYP        PIC X(1).                   !03130L1S
                  10  VNDR-GRP-NUM         PIC 9(5).                   !03130L1T
                  10  VNDR-USER-NUM        PIC 9(5).                   !03130L1U
                  10  VNDR-TERM-NAM        PIC X(24).                  !03130L1V
                  10  VNDR-AFT-TS          PIC 9(20).                  !03130L1W
                  10  VNDR-OLTP-TS         PIC 9(20).                  !03130L1X
                  10  VNDR-XFILLER         PIC X(1).                   !03130L1Y
              08  XFILLER1                PIC X(1).                    !03130L1Z
*             Vendor Branch Data Table.                              !!!03130L20
              08  VNDR-NUM                PIC 9(9).                    !03130L21
              08  BRCH-NUM                PIC 9(4).                    !03130L22
              08  VNDR-BRCH-NAM           PIC X(30).                   !03130L23
              08  ADDR-1                  PIC X(30).                   !03130L24
              08  ADDR-2                  PIC X(30).                   !03130L25
              08  CITY                    PIC X(25).                   !03130L26
              08  ST                      PIC X(2).                    !03130L27
              08  POSTAL-CDE              PIC X(10).                   !03130L28
              08  CNTY                    PIC X(3).                    !03130L29
              08  CNTRY                   PIC X(3).                    !03130L2A
              08  PHN                     PIC X(20).                   !03130L2B
              08  CONTACT-PERSON          PIC X(22).                   !03130L2C
              08  FAX-PHN                 PIC X(20).                   !03130L2D
              08  COMPANY-PHN             PIC X(20).                   !03130L2E
              08  MASK-GRP                PIC X(4).                    !03130L2F
              08  VNDB-USER-REMIT-INFO-1  PIC X(20).                   !03130L2G
              08  VNDB-USER-REMIT-INFO-2  PIC X(20).                   !03130L2H
              08  VNDB-FM-TAG.                                         !03130L2I
                  10  VNDB-UPDT-TYP        PIC X(1).                   !03130L2J
                  10  VNDB-GRP-NUM         PIC 9(5).                   !03130L2K
                  10  VNDB-USER-NUM        PIC 9(5).                   !03130L2L
                  10  VNDB-TERM-NAM        PIC X(24).                  !03130L2M
                  10  VNDB-AFT-TS          PIC 9(20).                  !03130L2N
                  10  VNDB-OLTP-TS         PIC 9(20).                  !03130L2O
                  10  VNDB-XFILLER         PIC X(1).                   !03130L2P
*             Additional Fields.                                     !!!03130L2Q
              08  CUST-VBUD-CAT-DESCR     PIC X(30).                   !03130L2R
              08  DFLT-VBUD-CAT-DESCR     PIC X(30).                   !03130L2S
          06  RESERVED                    PIC X(4).                    !03130L2T
                                                                       !03130L2U
      04  TB-SCHED-PMNT-INQ-DATA          REDEFINES DATA.              !03130L2V
          06  CNT                         PIC 9(2).                    !03130L2W
          06  ADNL-DATA-FLG               PIC X.                       !03130L2X
          06  USER-FLD                    PIC X.                       !03130L2Y
          06  PMNT-INFO                   OCCURS 2 TIMES.              !03130L2Z
*             Recur Data Fields.                                     !!!03130L30
              08  PMNT-MADE               PIC 9(4).                    !03130L31
              08  TTL-PMNT                PIC 9(4).                    !03130L32
              08  INIT-PMNT-DAT           PIC 9(8).                    !03130L33
              08  RECUR-PRD               PIC X(2).                    !03130L34
*             Future Data Fields.                                    !!!03130L35
              08  STI-PART-NUM            PIC 9(5).                    !03130L36
              08  STI-PMNT-DAT            PIC 9(8).                    !03130L37
              08  RETRY-NXT-PROC-GMT      PIC 9(20).                   !03130L38
              08  REF-NUM                 PIC 9(6).                    !03130L39
              08  CUST-VNDR-NUM           PIC 9(5).                    !03130L3A
              08  VNDR-NUM                PIC 9(9).                    !03130L3B
              08  CUST-ACCT-VNDR          PIC X(28).                   !03130L3C
              08  BP-GMT                  PIC 9(20).                   !03130L3D
              08  TXN-TYP                 PIC X(2).                    !03130L3E
              08  FROM-FIID               PIC X(4).                    !03130L3F
              08  FROM-ACCT-NUM           PIC X(19).                   !03130L3G
              08  FROM-ACCT-TYP           PIC X(2).                    !03130L3H
              08  TO-FIID                 PIC X(4).                    !03130L3I
              08  TO-ACCT-NUM             PIC X(19).                   !03130L3J
              08  TO-ACCT-TYP             PIC X(2).                    !03130L3K
              08  AMT                     PIC 9(12).                   !03130L3L
              08  TXN-SRC                 PIC X(2).                    !03130L3M
              08  TXN-SRC-NUM             PIC 9(6).                    !03130L3N
              08  TXN-SRC-LCT             PIC 9(20).                   !03130L3O
              08  VNDR-SPECIFIC-DATA      PIC X(30).                   !03130L3P
              08  PMNT-DAT                PIC 9(8).                    !03130L3Q
              08  SCHED-TYP               PIC X(1).                    !03130L3R
              08  BLG-TXT                 PIC X(28).                   !03130L3S
              08  PROCESSING-STAT         PIC X(2).                    !03130L3T
              08  STI-RQST-GMT            PIC 9(20).                   !03130L3U
              08  RETRY-CNT-TRANSIENT     PIC 9(4).                    !03130L3V
              08  RETRY-CNT-NONTRANSIENT  PIC 9(4).                    !03130L3W
              08  RETRY-LAST-RESP-CDE     PIC X(3).                    !03130L3X
              08  REMIT-TYP               PIC X(3).                    !03130L3Y
              08  FUTR-FM-TAG.                                         !03130L3Z
                  10  FUTR-UPDT-TYP       PIC X(1).                    !03130L40
                  10  FUTR-GRP-NUM        PIC 9(5).                    !03130L41
                  10  FUTR-USER-NUM       PIC 9(5).                    !03130L42
                  10  FUTR-TERM-NAM       PIC X(24).                   !03130L43
                  10  FUTR-AFT-TS         PIC 9(20).                   !03130L44
                  10  FUTR-OLTP-TS        PIC 9(20).                   !03130L45
                  10  FUTR-XFILLER        PIC X(1).                    !03130L46
*             Additional Fields.                                     !!!03130L47
              08  VNDR-NAM                PIC X(30).                   !03130L48
              08  VNDR-TKN                PIC X(20).                   !03130L49
              08  CRNCY-CDE               PIC 9(3).                    !03130L4A
              08  FROM-ACCT-TYP-DESCR     PIC X(6).                    !03130L4B
              08  XFILLER1                PIC X(1).                    !03130L4C
          06  RESERVED                    PIC X(94).                   !03130L4D
                                                                       !03130L4E
      04  TB-SCHED-XFER-INQ-DATA          REDEFINES DATA.              !03130L4F
          06  CNT                         PIC 9(2).                    !03130L4G
          06  ADNL-DATA-FLG               PIC X.                       !03130L4H
          06  USER-FLD                    PIC X.                       !03130L4I
          06  XFER-INFO                   OCCURS 2 TIMES.              !03130L4J
*             Recur Data Fields.                                     !!!03130L4K
              08  PMNT-MADE               PIC 9(4).                    !03130L4L
              08  TTL-PMNT                PIC 9(4).                    !03130L4M
              08  INIT-PMNT-DAT           PIC 9(8).                    !03130L4N
              08  RECUR-PRD               PIC X(2).                    !03130L4O
*             Future Data Fields.                                    !!!03130L4P
              08  STI-PART-NUM            PIC 9(5).                    !03130L4Q
              08  STI-PMNT-DAT            PIC 9(8).                    !03130L4R
              08  RETRY-NXT-PROC-GMT      PIC 9(20).                   !03130L4S
              08  REF-NUM                 PIC 9(6).                    !03130L4T
              08  CUST-VNDR-NUM           PIC 9(5).                    !03130L4U
              08  VNDR-NUM                PIC 9(9).                    !03130L4V
              08  CUST-ACCT-VNDR          PIC X(28).                   !03130L4W
              08  BP-GMT                  PIC 9(20).                   !03130L4X
              08  TXN-TYP                 PIC X(2).                    !03130L4Y
              08  FROM-FIID               PIC X(4).                    !03130L4Z
              08  FROM-ACCT-NUM           PIC X(19).                   !03130L50
              08  FROM-ACCT-TYP           PIC X(2).                    !03130L51
              08  TO-FIID                 PIC X(4).                    !03130L52
              08  TO-ACCT-NUM             PIC X(19).                   !03130L53
              08  TO-ACCT-TYP             PIC X(2).                    !03130L54
              08  AMT                     PIC 9(12).                   !03130L55
              08  TXN-SRC                 PIC X(2).                    !03130L56
              08  TXN-SRC-NUM             PIC 9(6).                    !03130L57
              08  TXN-SRC-LCT             PIC 9(20).                   !03130L58
              08  VNDR-SPECIFIC-DATA      PIC X(30).                   !03130L59
              08  PMNT-DAT                PIC 9(8).                    !03130L5A
              08  SCHED-TYP               PIC X(1).                    !03130L5B
              08  BLG-TXT                 PIC X(28).                   !03130L5C
              08  PROCESSING-STAT         PIC X(2).                    !03130L5D
              08  STI-RQST-GMT            PIC 9(20).                   !03130L5E
              08  RETRY-CNT-TRANSIENT     PIC 9(4).                    !03130L5F
              08  RETRY-CNT-NONTRANSIENT  PIC 9(4).                    !03130L5G
              08  RETRY-LAST-RESP-CDE     PIC X(3).                    !03130L5H
              08  REMIT-TYP               PIC X(3).                    !03130L5I
              08  FUTR-FM-TAG.                                         !03130L5J
                  10  FUTR-UPDT-TYP       PIC X(1).                    !03130L5K
                  10  FUTR-GRP-NUM        PIC 9(5).                    !03130L5L
                  10  FUTR-USER-NUM       PIC 9(5).                    !03130L5M
                  10  FUTR-TERM-NAM       PIC X(24).                   !03130L5N
                  10  FUTR-AFT-TS         PIC 9(20).                   !03130L5O
                  10  FUTR-OLTP-TS        PIC 9(20).                   !03130L5P
                  10  FUTR-XFILLER        PIC X(1).                    !03130L5Q
*             Additional Fields.                                     !!!03130L5R
              08  CRNCY-CDE               PIC 9(3).                    !03130L5S
              08  FROM-ACCT-TYP-DESCR     PIC X(6).                    !03130L5T
              08  TO-ACCT-TYP-DESCR       PIC X(6).                    !03130L5U
              08  XFILLER1                PIC X(1).                    !03130L5V
          06  RESERVED                    PIC X(182).                  !03130L5W
                                                                       !03130L5X
      04  TB-LAST-SET-PMNT-DATA           REDEFINES DATA.              !03130L5Y
          06  CNT                         PIC 9(2).                    !03130L5Z
          06  ADNL-DATA-FLG               PIC X.                       !03130L60
          06  USER-FLD                    PIC X.                       !03130L61
          06  TXN-INFO                    OCCURS 1 TIMES.              !03130L62
*             History Data Fields.                                   !!!03130L63
              08  PART-NUM                PIC 9(5).                    !03130L64
              08  GMT                     PIC 9(20).                   !03130L65
              08  REF-NUM                 PIC 9(6).                    !03130L66
              08  CUST-VNDR-NUM           PIC 9(5).                    !03130L67
              08  VNDR-NUM                PIC 9(9).                    !03130L68
              08  CUST-ACCT-VNDR          PIC X(28).                   !03130L69
              08  BP-GMT                  PIC 9(20).                   !03130L6A
              08  TXN-TYP                 PIC X(2).                    !03130L6B
              08  FROM-FIID               PIC X(4).                    !03130L6C
              08  FROM-ACCT-NUM           PIC X(19).                   !03130L6D
              08  FROM-ACCT-TYP           PIC X(2).                    !03130L6E
              08  TO-FIID                 PIC X(4).                    !03130L6F
              08  TO-ACCT-NUM             PIC X(19).                   !03130L6G
              08  TO-ACCT-TYP             PIC X(2).                    !03130L6H
              08  AMT                     PIC 9(12).                   !03130L6I
              08  TXN-SRC                 PIC X(2).                    !03130L6J
              08  TXN-SRC-NUM             PIC 9(6).                    !03130L6K
              08  TXN-SRC-LCT             PIC 9(20).                   !03130L6L
              08  VNDR-SPECIFIC-DATA      PIC X(30).                   !03130L6M
              08  PMNT-DAT                PIC 9(8).                    !03130L6N
              08  SCHED-TYP               PIC X(1).                    !03130L6O
              08  BLG-TXT                 PIC X(28).                   !03130L6P
              08  ORIG-REF-NUM            PIC 9(6).                    !03130L6Q
              08  RESP-CDE                PIC X(3).                    !03130L6R
              08  RVSL-REASON             PIC X(4).                    !03130L6S
              08  AUTH-ACT-CDE            PIC X(3).                    !03130L6T
              08  AUTH-APPRV-CDE          PIC X(9).                    !03130L6U
              08  COLL-STAT               PIC X(1).                    !03130L6V
              08  BUS-DAT                 PIC 9(8).                    !03130L6W
              08  REMIT-BUS-DAT           PIC 9(8).                    !03130L6X
              08  REMIT-STAT              PIC X(1).                    !03130L6Y
              08  REMIT-TYP               PIC X(3).                    !03130L6Z
              08  REMIT-ACK-GMT           PIC 9(20).                   !03130L70
              08  REMIT-ACK-NUM           PIC X(10).                   !03130L71
              08  REMIT-ACK-RCVD-GMT      PIC 9(20).                   !03130L72
              08  HIST-FM-TAG.                                         !03130L73
                  10  HIST-UPDT-TYP       PIC X(1).                    !03130L74
                  10  HIST-GRP-NUM        PIC 9(5).                    !03130L75
                  10  HIST-USER-NUM       PIC 9(5).                    !03130L76
                  10  HIST-TERM-NAM       PIC X(24).                   !03130L77
                  10  HIST-AFT-TS         PIC 9(20).                   !03130L78
                  10  HIST-OLTP-TS        PIC 9(20).                   !03130L79
                  10  HIST-XFILLER        PIC X(1).                    !03130L7A
*             Additional Fields.                                     !!!03130L7B
              08  FROM-ACCT-TYP-DESCR     PIC X(6).                    !03130L7C
              08  TO-ACCT-TYP-DESCR       PIC X(6).                    !03130L7D
              08  RESP-CDE-DESCR          PIC X(30).                   !03130L7E
              08  VNDR-NAM                PIC X(30).                   !03130L7F
              08  VNDR-TKN                PIC X(20).                   !03130L7G
              08  CRNCY-CDE               PIC 9(3).                    !03130L7H
              08  TXN-TYP-FIN-DESCR       PIC X(4).                    !03130L7I
              08  XFILLER1                PIC X(1).                    !03130L7J
          06  RESERVED                    PIC X(470).                  !03130L7K
                                                                       !03130L7L
                                                                       !03130L7M
                                                                       !03130L7N
                                                                       !03130L7O
                                                                       !03130L7P
                                                                       !03130L7Q
                                                                       !03130L7R
                                                                       !03130L7S
                                                                       !03130L7T
                                                                       !03130L7U
                                                                       !03130L7V
                                                                       !03130H00
                                                                       !03130H01
      04  TB-MULT-ACCT-BAL-DATA           REDEFINES DATA.              !03130H02
          06  CNT                         PIC 9(2).                    !03130H03
          06  ACCT-BAL-INFO               OCCURS 13 TIMES.             !03130H04
              08  ACCT-NUM                PIC X(19).                   !03130H05
              08  ACCT-TYP                PIC X(2).                    !03130H06
              08  ACT-CDE                 PIC X(2).                    !03130H07
              08  BAL-DAT                 PIC 9(8).                    !03130H08
              08  CRNCY-CDE               PIC X(3).                    !03130H09
              08  BAL-DATA                OCCURS 2 TIMES.              !03130H0A
                  10 BAL-AMT-TYP          PIC X(2).                    !03130H0B
                  10 BAL-AMT-SIGN         PIC X.                       !03130H0C
                  10 BAL-AMT              PIC 9(12).                   !03130H0D
                  10 USER-FLD2            PIC X.                       !03130H0E
                                                                       !03130L7W
          06  RESERVED                    PIC X(138).                  !03130L7X
                                                                       !03130O00
      04  TB-STMT-DWNLD-DATA              REDEFINES DATA.              !03130O01
          06  LAST-TXN-CNT                PIC 9(2).                    !03130O02
          06  CRNCY-CDE                   PIC X(3).                    !03130O03
          06  ADNL-DATA-FLG               PIC X.                       !03130O04
          06  HIST                        OCCURS 3 TIMES.              !03130O05
              08  DAT                     PIC 9(6).                    !03130O06
              08  AMT                     PIC X(12).                   !03130O07
              08  CHQ-NUM                 PIC X(12).                   !03130O08
              08  DB-CR-IND               PIC X.                       !03130O09
              08  SRC-IND                 PIC X.                       !03130O0A
              08  TXN-FLGS                PIC X(16).                   !03130O0B
              08  HOST-TXN-CDE            PIC X(8).                    !03130O0C
              08  FI-TXN-ID               PIC X(32).                   !03130O0D
              08  SPCL-DATA-TYP           PIC X.                       !03130O0E
              08  RESERVED                PIC X.                       !03130O0F
              08  SPCL-DATA               PIC X(160).                  !03130O0G
              08  PMNT                    REDEFINES SPCL-DATA.         !03130O0H
                  10  PAYEE-NAM           PIC X(32).                   !03130O0I
                  10  PAYEE-ADDR1         PIC X(32).                   !03130O0J
                  10  PAYEE-ADDR2         PIC X(32).                   !03130O0K
                  10  PAYEE-CITY          PIC X(32).                   !03130O0L
                  10  PAYEE-ST            PIC X(2).                    !03130O0M
                  10  PAYEE-ZIP           PIC X(10).                   !03130O0N
                  10  PAYEE-PHONE         PIC X(20).                   !03130O0O
              08  XFER                    REDEFINES SPCL-DATA.         !03130O0P
                  10  OTHER-ACCT          PIC X(19).                   !03130O0Q
                  10  OTHER-ACCT-TYP      PIC X(2).                    !03130O0R
                  10  RESERVED            PIC X(139).                  !03130O0S
          06  RESERVED                    PIC X(242).                  !03130O0T
                                                                       !03130O0U
                                                                       !03130O0V
      04  TB-STMT-CLOS-DWNLD-DATA         REDEFINES DATA.              !03130O0W
          06  LAST-TXN-CNT                PIC 9(2).                    !03130O0X
          06  CRNCY-CDE                   PIC X(3).                    !03130O0Y
          06  ADNL-DATA-FLG               PIC X.                       !03130O0Z
          06  INFO                        OCCURS 16 TIMES.             !03130O10
              08  FI-TXN-ID               PIC X(32).                   !03130O11
              08  CLOS-DAT                PIC X(6).                    !03130O12
              08  CLOS-BAL                PIC X(12).                   !03130O13
              08  BEG-POST-DAT            PIC X(6).                    !03130O14
              08  END-POST-DAT            PIC X(6).                    !03130O15
                                                                       !03130O16
                                                                       !03130L7Y
                                                                       !03130H0G
                                                                       !03130E2N
                                                                       !03130E2O
                                                                       !03131
***********************************************************************
*                                                                     !!03134
*  S-126 is used as an "additional data" field for ATM.  This data    !!03135
*  element will be used to provide other supplemental data for which  !!03136
*  specific ISO-designated data elements are not available.  This ATM !!03137
*  element is used to convey one or more additional data elements.    !!03138
*  The encoding of the additional data elements contained within the  !!03139
*  ATM element is as follows:                                         !!03140
*                                                                     !!03141
*   i      i+1   i+2      i+3   i+4                             i+j+1 !!03142
* ---------------------------------------------------------------------
*  Additional  !  Additional  !          Additional                   !!03145
* Data Element ! Data Element !         Data Element                  !!03146
*  Length (j)  !    Code      !             Field                     !!03147
* ---------------------------------------------------------------------
*                                                                     !!03150
* The "Additional Data Element Length" consists of two numeric digits !!03151
* in the range of 02 to 99, and indicates the number of bytes contained
* in the "Additional Data Element", including the two byte "Additional!!03154
* Data Element Code", but excluding the two bytes taken up by the     !!03155
* "Additional Data Element Length" itself.                            !!03156
*                                                                     !!03157
* The "Additional Data Element Code" consists of two numeric digits   !!03158
* in the range 00 to 99, and identifies the contents of the           !!03159
* "Additional Data Element" field to the application.                 !!03160
*                                                                     !!03161
* The "Additional Data Element" field contains the value of the       !!03162
* additional data element identified by the "Additional Data Element  !!03163
* Code".                                                              !!03164
*                                                                     !!03165
* Additional Data Elements may appear in any order within the ATM     !!03166
* structure.                                                          !!03167
*-------------------------------------------------------------------- !!03168
* Reserved Codes:                                                     !!03169
*                                                                     !!03170
*   02 - Statement Print Data Compression                             !!03171
*        Length:  06                                                  !!03172
*          Code:  02                                                  !!03173
*          Data:  Format, PIC X, maps to STM.RQST.FRMT,               !!03174
*                                        STM.STMT-INFO.STMT.FRMT      !!03175
*                 Print Size, PIC 9(3), maps to STM.RQST.PRNT-SIZ,    !!03176
*                                        STM.STMT-INFO.STMT.PRNT-SIZ  !!03177
*                                                                     !!03178
*-------------------------------------------------------------------- !!03179
      04  ATM                             REDEFINES DATA.              !03180
                                                                       !03181J00
                                                                       !03181c00
          06  ADD-DATA                    PIC X(998).                  !03181c01
                                                                       !03181c02
                                                                       !03181J02
                                                                       !03182J00
                                                                       !03182J01
                                                                       !03182J02
                                                                       !03187
*            This field is reserved for PRIVATE use.                  !!03188
*            Bit map position = 127                                   !!03189
                                                                       !03190
  02  SECNDRY-RSRVD8-PRVT.                                             !03191
      04  LEN                             PIC 9(3).                    !03192
                                                                       !03193c00
      04  DATA                            PIC X(600).                  !03193c01
                                                                       !03193c02
                                                                       !03194
                                                                       !03195c00
      04  POS-USER-DATA   REDEFINES DATA  PIC X(600).                  !03195c01
                                                                       !03195c02
                                                                       !03196D00
                                                                       !03196D01
                                                                       !03196D02
      04  ATM                             REDEFINES DATA.              !03203
          06  MICR-DATA                   PIC X(43).                   !03204
                                                                       !03205c00
          06  RESERVED                    PIC X(557).                  !03205c01
                                                                       !03205c02
                                                                       !03206
                                                                       !03207
                                                                       !03207c00
      04  MULT-ACCT                       REDEFINES DATA               !03207c01
                                          OCCURS 2 TIMES.              !03207c02
          06  TYP                         PIC X(2).                    !03207c03
          06  CNT                         PIC X(2).                    !03207c04
          06  ACCT                        OCCURS 5 TIMES.              !03207c05
              08  TYP                     PIC X(2).                    !03207c06
              08  DESCR                   PIC X(20).                   !03207c07
              08  FLG                     PIC X.                       !03207c08
              08  NUM                     PIC X(28).                   !03207c09
                                                                       !03207c0A
                                                                       !03207c0B
      04  FHM-CAF-ADDR                    REDEFINES DATA.              !03208
          06  ADDR                        PIC X(20).                   !03209
          06  ZIP-CDE                     PIC X(9).                    !03210
                                                                       !03211c00
          06  RESERVED                    PIC X(571).                  !03211c01
                                                                       !03211c02
                                                                       !03212
      04  FHM-PBF-NAM                     REDEFINES DATA.              !03213
          06  CUST-SHORT-NAM              PIC X(40).                   !03214
                                                                       !03215c00
          06  RESERVED                    PIC X(560).                  !03215c01
                                                                       !03215c02
                                                                       !03216
*            The following fields contain the Teller CAF Inquiry      !!03217
*            Token Data.                                              !!03218
                                                                       !03219
      04  TLR                             REDEFINES DATA.              !03220
          06  TKN-ID                      PIC X(2).                    !03221
          06  CAFI-TKN                    PIC X(198).                  !03222
                                                                       !03222c00
          06  RESERVED                    PIC X(400).                  !03222c01
                                                                       !03222c02
                                                                       !03223
                                                                       !03224
                                                                       !03224D00
      04  TB                              REDEFINES DATA.              !03224D01
          06  LAST-TXN-ALWD-CNT           PIC 9(2).                    !03224D02
                                                                       !03224H00
          06  LAST-TXN-CUST-MAX           PIC 9(4).                    !03224H01
                                                                       !03224c00
          06  RESERVED                    PIC X(594).                  !03224c01
                                                                       !03224c02
                                                                       !03224H03
                                                                       !03224H04
                                                                       !03224H05
                                                                       !03224D04
                                                                       !03224F00
      04  FHM-CCIF0006                    REDEFINES DATA.              !03224F01
          06  SEG-ID                      PIC X(4).                    !03224F02
          06  VER                         PIC X(4).                    !03224F03
          06  DISCR-DATA                  PIC X(72).                   !03224F04
                                                                       !03224c03
          06  RESERVED                    PIC X(520).                  !03224c04
                                                                       !03224c05
                                                                       !03224F06
*            This field contains the secondary message authentication !!03225
*            code.                                                    !!03226
*            Bit map position = 128                                   !!03227
                                                                       !03228
  02  SECNDRY-MAC-CDE                     PIC X(16).                   !03229
                                                                       !03230D00
                                                                       !03230D01
                                                                       !03230D02
END.                                                                   !03237
