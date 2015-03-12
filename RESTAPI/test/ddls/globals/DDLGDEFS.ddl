**FIX2.28  04/24/12  DDLGDEFS6015 DDL    BA60DEFS BA0G026  O                 ***
**FIX2.28  12/22/09  DDLGDEFS6014 DDL    BA60DEFS BA0D312  N                 ***
**FIX2.28  12/04/07  DDLGDEFS6013 DDL    BA60DEFS BA0B350  M                 ***
**FIX2.28  11/23/06  DDLGDEFS6012 DDL    BA60DEFS BA0A301  L                 ***
**FIX2.24  11/18/04  DDLGDEFS6011 DDL    BA60DEFS BA08205  K                 ***
**FIX2.23  02/13/03  DDLGDEFS6010 DDL    BA60DEFS BA06264  J                 ***
**FIX2.22  08/01/02  DDLGDEFS6009 DDL    BA60DEFS BA06027  I                 ***
**FIX2.22  07/11/02  DDLGDEFS6008 DDL    BA60DEFS BA05532  H                 ***
**FIX2.22  05/05/02  DDLGDEFS6007 DDL    BA60DEFS BA05406  G                 ***
**FIX2.19  01/12/02  DDLGDEFS6006 DDL    BA60DEFS BA05174  F                 ***
**FIX2.14  04/12/01  DDLGDEFS6005 DDL    BA60DEFS BA04410  E                 ***
**FIX2.14  03/21/01  DDLGDEFS6004 DDL    BA60DEFS BA04341  D                 ***
**FIX2.11  01/02/01  DDLGDEFS6003 DDL    BA60DEFS BA04162  C                 ***
**SEQ0.04  11/01/00  DDLGDEFS6002 DDL    BA60DEFS BA04000  B                 ***
**SYNC.04  12/09/98  DDLGDEFS5302 DDL    BA53DEFS BA04000  B                 ***
**FIX2.03  08/28/98  DDLGDEFS5302 DDL    BA53DEFS BA03000  B                 ***
**FIX2.04  03/03/98  DDLGDEFS5102 DDL    BA51DEFS BA03094  B                 ***
**SYNC.03  08/22/97  DDLGDEFS5101 DDL    BA51DEFS BA03000  A                 ***
**SYNC.02  06/25/96  DDLGDEFS5101 DDL    BA51DEFS BA02000  A                 ***
**FIX2.00  01/08/96  DDLGDEFS5101 DDL    BA51DEFS BA51258  A                 ***
!*SEQ2.00  06/07/95  DDLGDEFS5100 DDL    BA51DEFS                              !
?section standard-defs-history
?page "Standard Definitions"
                                                                       !00000N00
********************************************************************** !00000N01
*                                                                    * !00000N02
*                               BASE24                               * !00000N03
*                               ------                               * !00000N04
*                                                                    * !00000N05
*                     DDL Standard Definitions                       * !00000N06
*                                                                    * !00000N07
*                   Proprietary Software Product                     * !00000N08
*                                                                    * !00000N09
*                        ACI Worldwide, Inc.                         * !00000N0A
*                        6060 Coventry Drive                         * !00000N0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000N0C
*                          (402) 390-7600                            * !00000N0D
*                                                                    * !00000N0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000N0F
*                                                                    * !00000N0G
*    All Rights Reserved.                                            * !00000N0H
*                                                                    * !00000N0I
********************************************************************** !00000N0J
                                                                       !00000N0K
                                                                       !00000N0L
                                                                       !00000N0M
                                                                       !00000N0N
*                                                                      !00000C0U
* Record of Changes:                                                   !00000C0V
*                                                                      !00000C0W
* Date        Person/Emp #                                             !00000C0X
* ---------   ------------                                             !00000C0Y
                                                                       !00000C0Z
                                                                       !00003C00
                                                                       !00003C01
                                                                       !00003C02
* 93FEB16    Bob Cronin                                               !!00026
* SYMPTOM:   None.                                                    !!00027
* PROBLEM:   The BULK^READ utility does not correctly process         !!00028
*            partitioned files.                                       !!00029
* FIX:       Added the following fields to the BRCB definition:       !!00030
*             PART-NUM                                                !!00031
*             NUM-PARTS                                               !!00032
*             PART-FNUM                                               !!00033
*            These fields will be used by the BULK^READ utility       !!00034
*            to allow processing of partitioned files.                !!00035
* IMPLEMENT: RECOMPILE BAUTILS                                        !!00036
* REFERENCE: BETA Database RPC #002717                                !!00037
*                                                                     !!00038
*                                                                     !!00039
* 93SEP17    DAK/1445                                                 !!00040
* SYMPTOM:   None.                                                    !!00041
* PROBLEM:   Changes are required to the BRCB definition to           !!00042
*            support BULK^READ having files open in both              !!00043
*            structured and unstructured mode.                        !!00044
* FIX:       Added the following fields to the BRCB definition:       !!00045
*                    EOF-PTR                                          !!00046
*                    FILE-OFST                                        !!00047
*            Also renamed the following fields:                       !!00048
*                    FNUM -> STRUCTURED-FNUM                          !!00049
*                    FILE-TYP -> READ-TYP                             !!00050
* IMPLEMENT: Recompile BAUTILS                                        !!00051
* REFERENCE: Beta RPC # 004151                                        !!00052
*                                                                     !!00053
******************************************************************    !!00054
*            RESYNC OF BASE DDL/SRC SUBVOLUMES                   *    !!00055
******************************************************************    !!00056
* 95AUG22    JAS - JMS/583                                            !!00057
* SYMPTOM:   BASE24-telebanking Initial Release                       !!00058
* PROBLEM:   (E) None.                                                !!00059
* FIX:       Added comments to BASE-SEG, BASE-SEGX, PROD-ID and       !!00060
*            PROD-NAME for the BASE24-iep and BASE24-telebanking      !!00061
*            products.                                                !!00062
* IMPLEMENT: None.                                                    !!00063
* REFERENCE: Work Order TB930301-01                                   !!00064
******************************************************************    !!00065
*               RELEASE 5.1                                      *    !!00066
******************************************************************    !!00067
* 95JUN01     JMS/583                                                 !!00068
* SYMPTOM:    BASE24 Release 5.1 Enhancements                         !!00069
* PROBLEM:    (E) NONE.                                               !!00070
* FIX:        Removed AFS, EFTPOS, and Cash Manager products.         !!00071
* IMPLEMENT:  Remove reference to these products in all modules.      !!00072
*             Removed the fld-cde definition used by Cash Manager and !!00073
*             file comments relating to these products. Re-make the   !!00074
*             DDLs.                                                   !!00075
* REFERENCE:  950201-001                                              !!00076
*                                                                     !!00077
* 95JUN01     JMS/583                                                 !!00078
* SYMPTOM:    Base24 Release 5.1 Enhancement.                         !!00079
* PROBLEM:    <E> None.                                               !!00080
* FIX:        Removed old history sections not associated with a      !!00081
*             specific Fix level.                                     !!00082
* IMPLEMENT:  None.                                                   !!00083
* REFERENCE:  Base24 Release 5.1 Enhancements.                        !!00084
                                                                       !00084A00
* 96JAN8      JMS/583                                                  !00084A01
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00084A02
* PROBLEM:    <E> None.                                                !00084A03
* FIX:        Removed SEG-MAP comments to not reference each           !00084A04
*             individual Product. Refer to PITABLE for actual mapping. !00084A05
* IMPLEMENT:  None.                                                    !00084A06
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00084A07
                                                                       !00084A08
                                                                       !00084B00
* 18FEB1998   CLR/451                                                  !00084B01
* Symptom:    Bridge PI Table Phase 1 Enhancement.  The PI Table       !00084B02
*             has reached it's limit of 32 product entries.  The       !00084B03
*             maximum entries will be expanded to 96.                  !00084B04
* Problem:    None.                                                    !00084B05
* Fix:        Modified Definitions: SEG-LGTH and SEGX-LGTH by          !00084B06
*             adding SEG-ID, SEG-VER, SEG-USER-FLD redefined as        !00084B07
*             SS-TBL.                                                  !00084B08
*             Added Definition: PROD-IND-E.                            !00084B09
* Dependency: Apply fix to DDLGDEFS and re-make DDLs.                  !00084B0A
* Reference:  WO #971118-2.                                            !00084B0B
                                                                       !00084B0C
                                                                       !00084C00
*********************************************************************  !00084C01
*             Release 6.0                                           *  !00084C02
*********************************************************************  !00084C03
* 30NOV2000   JAS/493                                                  !00084C04
* Symptom:    Release 6.0 Enhancements                                 !00084C05
* Problem:    None                                                     !00084C06
* Fix:        Added the definition for storing a byte address          !00084C07
*               (BYTE-ADDR).                                           !00084C08
*             Added the definition for AFM terminal name               !00084C09
*               (AFM-TERM-NAM).                                        !00084C0A
*             Added the definition for AFM Julian time stamp           !00084C0B
*               (AFM-TS).                                              !00084C0C
*             Added the definition for AFM user ID (AFM-USER-ID).      !00084C0D
*             Added the definition for last AFM (LAST-AFM).            !00084C0E
*             Added the definition for profile (PRFL).                 !00084C0F
*             Added the definition for processing code (PROC-CDE).     !00084C0G
*             Added the definition for terminal data files' primary    !00084C0H
*               key (TDF-PRIKEY).                                      !00084C0I
*             Added the definition for TLF Token (TLF-TKN).            !00084C0J
*             Added the definition for ASCII version of                !00084C0K
*               TLF Token (TLF-TKNX).                                  !00084C0L
*             Added the definition for version (VER).                  !00084C0M
*             Changed ACCT-TYP definition from a PIC 9(2) field        !00084C0N
*               to a PIC X(2) field.                                   !00084C0O
*             Changed PROD-IND-E from 32 bytes to 256 bytes, and       !00084C0P
*               changed name to PROD-IND-EXT.                          !00084C0Q
*             Removed the SS-TBL structure from the SEG-LGTH and       !00084C0R
*               SEGX-LGTH definitions.                                 !00084C0S
* Dependency: Restore Release 6.0 files, modify the appropriate        !00084C0T
*             CUSTMACS flags, and run MAKE.                            !00084C0U
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00084C0V
*             WO #981118-3 (Transactions Allowed)                      !00084C0W
*             WO #990108-1 (TDF/PTDF Expansion)                        !00084C0X
                                                                       !00084C0Y
                                                                       !00084D00
* 30MAR2001   CLR/451  jfu/543                                         !00084D01
* Symptom:    Release 6.0 Enhancements.                                !00084D02
* Problem:    None.                                                    !00084D03
* Fix:        Added definition for EMV-TERM-CAP and                    !00084D04
*             EMV-TERM-CAP-COBOL.                                      !00084D05
*             Some of the switch DDLs like ISO87DLS override the       !00084D06
*             base definitions (i.e., FIID, LN, MBR-NUM, PAN, FNAME,   !00084D07
*             and SYM-NAME) with their own versions. Since the         !00084D08
*             switches have been doing this in previous releases, a    !00084D09
*             base definition cannot use the TYPE function on any of   !00084D0A
*             the above definitions.  This was happening with the TLF  !00084D0B
*             Token definition and the TDF-PRIKEY definition.          !00084D0C
* Dependency: Restore Release 6.0 files, modify the appropriate        !00084D0D
*             CUSTMACS flags, and run MAKE.                            !00084D0E
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00084D0F
*             WO #000101-1 (General Release 6.0)                       !00084D0G
                                                                       !00084D0H
                                                                       !00084E00
* 09APR2001   EAA/26 jsc/89                                            !00084E01
* Symptom:    Extract is dumping with arithmetical overflow in proc    !00084E02
*             bulk^read when run against a log file, i.e. PTLF, with   !00084E03
*             an aggregate EOF bigger than 2.1G.                       !00084E04
* Problem:    The bulk read control block fields EOF and file offset   !00084E05
*             are not big enough to hold an 8-byte value when the      !00084E06
*             aggregate EOF is bigger than 2.1G.  Besides, the call    !00084E07
*             to position is made in the entire file instead of the    !00084E08
*             current partition when less than 56K left in the         !00084E09
*             partition.                                               !00084E0A
* Fix:        The EOF and file offset fields of BRCB will hold         !00084E0B
*             8-byte values instead of 4-byte values.                  !00084E0C
* Dependency: Apply fix to DDLGDEFS and associated fix to BAUTILS      !00084E0D
*             and remake this module and the base DDL.                 !00084E0E
* Reference:  ( Retro of BA5B637 from Case #329727 )                   !00084E0F
*                                                                      !00084E0G
* 10APR2001   jsc/89                                                   !00084E0H
* Symptom:    Release 6.0 Enhancements.                                !00084E0I
* Problem:    None.                                                    !00084E0J
* Fix:        Removed the BASEX-SEG section which is not begin used.   !00084E0K
* Dependency: Restore Release 6.0 files, modify the appropriate        !00084E0L
*             CUSTMACS flags, and run MAKE.                            !00084E0M
* Reference:  WO #000101-1 (General Release 6.0)                       !00084E0N
                                                                       !00084F00
* 08JAN2002   sjl/306                                                  !00084F01
* Symptom:    General Release 6.0                                      !00084F02
* Problem:    The EMV-TERM-CAP field comments are confusing.           !00084F03
* Fix:        Added comments on how EMV references the bits and how    !00084F04
*             they need to be referenced in TAL.                       !00084F05
* Dependency: Apply the fix and Make the DDLS.                         !00084F06
* Reference:  WO #000101-1                                             !00084F07
*                                                                      !00084F08
* 19NOV2001   jfu/543                                                  !00084F09
* Symptom:    Release 6.0 format 2 file support                        !00084F0A
* Problem:    None                                                     !00084F0B
* Fix:        Changed the BRCB definition in the following manner:     !00084F0C
*             - Deleted the TOS-VER-C field.                           !00084F0D
*             - Added the FILE-FRMT field.                             !00084F0E
*             - Increased the BLK-RBA field from BINARY 32 to          !00084F0F
*               BINARY 64 for format 2 files.                          !00084F0G
*             - Added a BLK-RBA-FRMT-1 BINARY 32 field that redefines  !00084F0H
*               BLK-RBA for format 1 files.                            !00084F0I
*             - Increased the NXT-READ-RBA field from BINARY 32 to     !00084F0J
*               BINARY 64 for format 2 files.                          !00084F0K
*             - Added a NXT-READ-RBA-FRMT-1 BINARY 32 field that       !00084F0L
*               redefines NXT-READ-RBA for format 1 files.             !00084F0M
*             - Added the FNAME field.                                 !00084F0N
*             Changed the TLF-BASE-TKN definition in the following     !00084F0O
*             manner, since the TLF Token data stored in the device    !00084F0P
*             dependent data area is longer exactly the same as the    !00084F0Q
*             token, and therefore there will be separate definitions  !00084F0R
*             for storing this information in the terminal data files. !00084F0S
*             - Changed the TLF Token to support a 64 bit RBA as well  !00084F0T
*               as a 32 bit RBA.  The 64 bit RBA is used with format   !00084F0U
*               2 files. Both the binary and ASCII formats of the      !00084F0V
*               token were changed.                                    !00084F0W
*             - Changed the TLF Token to have a user field for future  !00084F0X
*               use.  Both the binary and ASCII formats of the token   !00084F0Y
*               were changed.                                          !00084F0Z
*             - Added the definition for the TLF Device Dependent Data !00084F10
*               Token (TLF-TKN-DEV-DATA-PART-1).This definition stores !00084F11
*               the same information as the original TLF Token.        !00084F12
*             - Added the definition for the TLF Device Dependent Data !00084F13
*               Part 2 Token (TLF-TKN-DEV-DATA-PART-2). This           !00084F14
*               definition contains the 64-bit RBA that is required    !00084F15
*               for format 2 files.                                    !00084F16
* Dependency: Apply the fix to DDLGDEFS and reMake.                    !00084F17
* Reference:  WO #000202-01                                            !00084F18
                                                                       !00084F19
                                                                       !00084G00
* 27APR2002   jfu/543                                                  !00084G01
* Symptom:    Extract not running until the physical EOF.              !00084G02
* Problem:    Extract stops at the initial EOF.                        !00084G03
* Fix:        Extract was enhanced to support either extracting to     !00084G04
*             the initial EOF or the physical EOF.                     !00084G05
*             The following changes were made to the BRCB definition:  !00084G06
*             - The READ-TYPE field was reduced from two bytes to one  !00084G07
*               byte                                                   !00084G08
*             - The one-byte READ-PAST-INITIAL-EOF field was added.    !00084G09
* Dependency: Apply the fix to DDLGDEFS and reMake.                    !00084G0A
* Reference:  Case #347208                                             !00084G0B
                                                                       !00084G0C
                                                                       !00084G0D
                                                                       !00084H00
* 28JUN2002   jfu/543                                                  !00084H01
* Symptom:    With format 2 files, records are being extracted more    !00084H02
*             than once on the last extract for the file.              !00084H03
* Problem:    When positioning into the file to perform a structured   !00084H04
*             read, the file offset does not work as it does with      !00084H05
*             format 1 files.                                          !00084H06
* Fix:        Added the following fields to the BRCB definition.       !00084H07
*             - BLK-NUM redefines BLK-RBA                              !00084H08
*             - REC-NUM redefines BLK-RBA                              !00084H09
*             - BLK-NUM-NXT redefines NXT-READ-RBA                     !00084H0A
*             - REC-NUM-NXT redefines NXT-READ-RBA                     !00084H0B
*             - APPL-DATA-VALIDATION                                   !00084H0C
*             - PART-NUM-OF-BLKS                                       !00084H0D
* Dependency: Apply the fix to DDLGDEFS and reMake.                    !00084H0E
* Reference:  Case #349784                                             !00084H0F
                                                                       !00084H0G
                                                                       !00084I00
* 23JUL2002   jfu/543                                                  !00084I01
* Symptom:    The BASE24-pos settlement secondary process dumped       !00084I02
*             with an arithmetic overflow when the PTLF files were     !00084I03
*             configured as a partitioned file.                        !00084I04
* Problem:    After the maximum file size for the specified PTLF was   !00084I05
*             obtaining using the NSK routine file_getinfolist_, the   !00084I06
*             base application utilities translated the value to the   !00084I07
*             number of pages used.  Finally, the result was stored in !00084I08
*             the max-file-size variable within the file control block !00084I09
*             (FCB).  However, the FCB's max-file-size variable was    !00084I0A
*             only a 32-bit variable, and therefore an arithmetic      !00084I0B
*             overflow occurred.                                       !00084I0C
* Fix:        Enlarged the size of the max-file-size variable within   !00084I0D
*             the FCB to 64-bits.                                      !00084I0E
* Dependency: Apply the fix to DDLGDEFS and reMake.                    !00084I0F
* Reference:  Case #351013                                             !00084I0G
                                                                       !00084I0H
                                                                       !00084J00
* 07FEB2003   ME/154                                                   !00084J01
* Symptom:    POS Enhancements.                                        !00084J02
* Problem:    None.                                                    !00084J03
* Fix:        1. Added enhanced pre-auth segment definition.  This is  !00084J04
*             used by the CAF and UAF to store enhanced pre-auth       !00084J05
*             holds.                                                   !00084J06
*             2. Added the SET-REC-6 and SET-REC-7 definitions.        !00084J07
* Dependency: Apply fix to DDLGDEFS and run MAKE. Refer to             !00084J08
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00084J09
* Reference:  WO #020606-01                                            !00084J0A
                                                                       !00084K00
                                                                       !00084K01
* 15OCT2004   kurzenb                                                  !00084K02
* Symptom:    Round Robin Access to TSS Enhancement                    !00084K03
* Problem:    None.                                                    !00084K04
* Fix:        Added support to allow a BASE24 process that is          !00084K05
*             configured to use a TSS process to support multiple      !00084K06
*             such devices, which are accessed in a round robin mode.  !00084K07
*             This enhancement is dependent on the Reopen TSS Process  !00084K08
*             after Restart enhancement.                               !00084K09
*             1. Added the following fields to section SDCB:           !00084K0A
*                  ACCESS-TYP                                          !00084K0B
*                  REINSTATE-TIM                                       !00084K0C
*                  DEV-IDX                                             !00084K0D
*                  DEV-CNT                                             !00084K0E
*                  NXT-REINSTATE-TIMESTAMP                             !00084K0F
*             2. Increased DEV array in SDCB from 2 to 20 occurances.  !00084K0G
* Dependency: Apply fixes to DDLGDEFS and run MAKE.                    !00084K0H
*             Refer to BA60UD08.SCNTSSRR for a complete listing of     !00084K0I
*             dependencies.                                            !00084K0J
* Reference:  WO #030411-01                                            !00084K0K
                                                                       !00084K0L
                                                                       !00084K0M
                                                                       !00084K0N
                                                                       !00084K0O
                                                                       !00084L00
* 14OCT2006   RinkC                                                    !00084L01
* Symptom:    Contactless Chip/Magnetic Stripe Support Enhancement     !00084L02
* Problem:    None.                                                    !00084L03
* Fix:        Added definition for KEY-LOC.                            !00084L04
* Dependency: Apply fixes to DDLDEFS and run Make. Refer to            !00084L05
*             BA60UD0A.SCNCTLS for a complete listing of               !00084L06
*             dependencies.                                            !00084L07
* Reference:  WO #050209-01                                            !00084L08
*                                                                      !00084L09
* 14OCT2006   jaganas                                                  !00084L0A
* Symptom:    Add Additional Values to PTD/ATD Enhancement             !00084L0B
* Problem:    None                                                     !00084L0C
* Fix:        As a part of add additional values to PTD enhancement    !00084L0D
*             following fields are added into the definition           !00084L0E
*             EMV-TERM-CAP-COBOL.                                      !00084L0F
*             Fields Added: RESERVED1, RESERVED2, RESERVED3,           !00084L0G
*             NO-CVM-REQUIRED, RESERVED4, RESERVED5, COMBND-DATA-AUTH  !00084L0H
*             and RESERVED6.                                           !00084L0I
* Dependency: Apply fixes to DDLGDEFS and run Make.  Refer to          !00084L0J
*             BA60UD0A.SCNPTD for a complete list of dependencies.     !00084L0K
* Reference:  WO #051128-05                                            !00084L0L
                                                                       !00084L0M
                                                                       !00084M00
* 12OCT2007   KrishnG                                                  !00084M01
* Symptom:    PCI - Audit Enhancement                                  !00084M02
* Problem:    None.                                                    !00084M03
* Fix:        Added new definitions for logging data to the OMF to     !00084M04
*             support auditing of user access to sensitive             !00084M05
*             information.                                             !00084M06
*             Added Sections:                                          !00084M07
*                 CRD-KEY                                              !00084M08
*                 MLF-REC                                              !00084M09
* Dependency: Apply fix to DDLGDEFS and run Make. Refer to             !00084M0A
*             BA60UD0B.SCNAUDT for a complete list of dependencies.    !00084M0B
* Reference:  WO #070423-02                                            !00084M0C
                                                                       !00084M0D
                                                                       !00084N00
* 06NOV2009   meyersc                                                  !00084N01
* Symptom:    SECUTILS Data Stack Relief                               !00084N02
* Problem:    Problems with stack overflow are occurring within        !00084N03
*             SECUTILS.                                                !00084N04
* Fix:        Added secutils-seg-id and secutils-seg-addr to the       !00084N05
*             SDCB definition.                                         !00084N06
* Dependency: Apply fix to DDLGDEFS and SECUTILS. Run Make.            !00084N07
*             Refer to BA60UD0D.SCNSECU for a complete listing of      !00084N08
*             dependencies.                                            !00084N09
* Reference:  Case #450316                                             !00084N0A
                                                                       !00084N0B
* 06NOV2009   bartond                                                  !00084N0C
* Symptom:    Additional values for SETL-TYP field in definition       !00084N0D
*             SET-REC1 need to be documented.                          !00084N0E
* Problem:    Version 10 comment changes.                              !00084N0F
* Fix:        - Modified the comments for the SETL-TYP field in        !00084N0G
*               definition SET-REC1 to include values '6', '7', '8'.   !00084N0H
* Dependency: Apply fix to DDLGDEFS and run Make.                      !00084N0I
* Reference:  Case #483720                                             !00084N0J
                                                                       !00084N0K
                                                                       !00084O00
* 20APR2012   PalummR                                                  !00084O01
* Symptom:    Pre-auth processing is updating offline limits for       !00084O02
*             transactions that are approved online at the host        !00084O03
*             when the routing type is set to level 3 (online/         !00084O04
*             offline).                                                !00084O05
* Problem:    Limit update logic for pre-auth completions is not       !00084O06
*             differentiating between transactions that were approved  !00084O07
*             online and those approved offline.  Online approved      !00084O08
*             transactions are updating the offline limit.             !00084O09
* Fix:        A flag will be added to the preauth segment to           !00084O0A
*             differentiate between pre-auth transactions approved     !00084O0B
*             at the host from those that were approved by Base24.     !00084O0C
*             Redefined the user-flg1 in the Preauth definition        !00084O0D
*             to allow for a l3-online-flg that indicates whether      !00084O0E
*             the preauth was approved by the host or by Base24        !00084O0F
*             during level 3 (online/offline) processing.              !00084O0G
* Dependency: Apply fix to DDLGDEFS, PS60RTAU.AUTHLIBS and             !00084O0H
*             AT60AUTH.AUTHLIBS.  Run Make.                            !00084O0I
* Reference:  Case #1184634                                            !00084O0J
                                                                       !00084O0K
*                                                                     !!00085
********************************************************************* !!00086
                                                                       !00086C00
?section standard-defs
                                                                       !00086C03
*--------------------------------------------------------------------|!!00087
*#####################################################################!!00088
*#                   STANDARD DEFINITIONS                            #!!00089
*#                                                                   #!!00090
*#   These are definitions for certain data structures which occur   #!!00091
*#   repeatedly throughout the BASE24 DDLs.  These fields are used   #!!00092
*#   in DDL structures subsequently as "TYPE *" when the field name  #!!00093
*#   matches the type definition, or as "TYPE <def name>" where the  #!!00094
*#   field name does not match the definition name.                  #!!00095
*#                                                                   #!!00096
*#   When adding a NEW DEF, it is to be placed in alphabetical       #!!00097
*#   order and the below list updated accordingly.                   #!!00098
*#                                                                   #!!00099
*#   DEFS contained within this list are as follows:                 #!!00100
*#                                                                   #!!00101
*#   DEF NAME             DATE ADDED            DATE LAST CHANGED    #!!00102
*#   --------             ----------            -----------------    #!!00103
*#    ACCT                 12/5/85              11/26/86  rc         #!!00104
*#    ACCT-TYP             10/24/86   rc                             #!!00105
*#    ADDR-USA             12/5/85              11/25/86 deleted rc  #!!00106
*#    ADDR-ISO             2/28/86    lh        3/19/86   sll        #!!00107
                                                                       !00107C00
*#    AFM-TERM-NAM         Release 6.0                               # !00107C01
*#    AFM-TS               Release 6.0                               # !00107C02
*#    AFM-USER-ID          Release 6.0                               # !00107C03
                                                                       !00107C04
*#    ALIAS                2/4/86    JHK                             #!!00108
*#    AMT-32-2             12/5/85              5/27/86 deleted kh   #!!00109
*#    AMT-64-2             12/5/85              5/27/86 deleted kh   #!!00110
                                                                       !00111C00
                                                                       !00111C01
                                                                       !00111E00
*#    BASE-SEG             12/5/85              Release 6.0         #!!!00111E01
                                                                       !00111E02
                                                                       !00111E03
                                                                       !00111E04
                                                                       !00111C06
*#    BINARY-ACCT          11/26/86   rc                             #!!00113
*#    BRCH                 12/5/85              12/9/85              #!!00114
                                                                       !00114C00
*#    BYTE-ADDR            Release 6.0                               # !00114C01
                                                                       !00114C02
*#    COID                 10/24/86   rc                             #!!00115
                                                                       !00115M00
*#    CRD-KEY              Release 6.0 Version 8 10/12/07  Gk          !00115M01
                                                                       !00115M02
*#    CRNCY-CDE            5/29/86    kh                             #!!00116
*#    CRNCY-CDE-X          2/7/89     LL                             #!!00117
*#    DAT                  12/5/85              12/18/85   lh        #!!00118
                                                                       !00118D00
*#    EMV-TERM-CAP         Release 6.0                               # !00118D01
*#    EMV-TERM-CAP-COBOL   Release 6.0                               # !00118D02
                                                                       !00118D03
                                                                       !00118J00
*#    ENHNC-PREAUTH        Release 6.0                               # !00118J01
                                                                       !00118J02
*#    EPOS-SET-REC1        12/01/87   jas                            #!!00119
*#    EPOS-SET-REC3        12/01/87   jas                            #!!00120
*#    ERR-CDE              10/24/86   rc                             #!!00121
*#    FCB                  02/10/87   EMM                            #!!00122
*#    FIID                 12/5/85                                   #!!00123
*#    FILE-REQ             02/5/86                         lh        #!!00124
*#    FLD-CDE              10/24/86   rc                             #!!00125
*#    FNAME                12/5/85                                   #!!00126
*#    FSET-RECX1           12/01/87   jas                            #!!00127
*#    ID-NUM               3/24/86    lh                             #!!00128
                                                                       !00128L00
*#    KEY-LOC              Release 6.0 Version 7 10/14/06   clr      # !00128L01
                                                                       !00128L02
*#    KEYI                 02/4/86                         lh        #!!00129
*#    KEYX                 12/5/85                                   #!!00130
                                                                       !00130C00
*#    LAST-AFM             Release 6.0                               # !00130C01
                                                                       !00130C02
*#    LAST-FM              12/5/85              12/9/85              #!!00131
*#    LAST-TRAN            12/5/85                                   #!!00132
*#    LN                   12/5/85                                   #!!00133
*#    LOC                  12/5/85              11/25/86   rc        #!!00134
*#    MAIL-ADDR            10/24/86   rc                             #!!00135
*#      (NOTE: Mail-Addr def is intentionally at the bottom of the   #!!00136
*#       output due to the other def structures needed)              #!!00137
*#    MAIL-CONFIG          07/16/87   RB                             #!!00138
*#    MAIL-PARAM           08/10/87   RB                             #!!00139
*#      (NOTE: Mail-PARAM def is intentionally at the bottom of the  #!!00140
*#       output due to the other def structures needed)              #!!00141
*#    MBR-NUM              3/24/86    lh        6/16/86    kh        #!!00142
                                                                       !00142M00
*#    MLF-REC              Release 6.0 Version 8 10/12/07  Gk          !00142M01
                                                                       !00142M02
*#    NAME                 10/24/86   rc                             #!!00143
*#    PAN                  12/5/85             11/26/86    rc        #!!00144
*#    PHONE-NUM            12/9/85                                   #!!00145
*#    PIN                  12/5/85                                   #!!00146
*#    POSN                 12/2/86    rc                             #!!00147
*#    POSTAL-CDE           10/24/86   rc                             #!!00148
*#    PREAUTH               8/5/86   sll       11/25/86    rc        #!!00149
*#      (NOTE: Preauth def is intentionally at the bottom of the     #!!00150
*#       output due to the other def structures needed)              #!!00151
                                                                       !00151C00
*#    PRFL                 Release 6.0                               # !00151C01
*#    PROC-CDE             Release 6.0                               # !00151C02
                                                                       !00151C03
*#    PROD-ID              12/2/86    sll                            #!!00152
*#    PROD-IND             12/6/85              12/9/85    raa       #!!00153
                                                                       !00153C00
*#    PROD-IND-EXT         Release 6.0                               # !00153C01
                                                                       !00153C02
*#    PROD-NAME            03/20/87   crn                            #!!00154
*#    REGN                 12/5/85              12/9/85              #!!00155
*#    RESP-CDE             07/15/86   sll                            #!!00156
*#    SDCB                 03/21/86   lh                             #!!00157
                                                                       !00158C00
                                                                       !00158C01
*#    SEG-LGTH             12/6/85               Release 6.0         #!
*#    SEGX-LGTH            12/9/85               Release 6.0         #!
                                                                       !00158C06
*#    SET-REC1             08/15/86   raa        11/25/86  rc        #!!00160
*#    SET-REC2             08/15/86   raa                            #!!00161
                                                                       !00161J00
*#    SET-REC6             Release 6.0                               # !00161J01
*#    SET-REC7             Release 6.0                               # !00161J02
                                                                       !00161J03
*#    SET-RECX1            08/15/86   raa        11/14/86  md        #!!00162
*#    SET-RECX2            08/15/86   raa                            #!!00163
*#    SET-RECX3            08/15/86   raa                            #!!00164
*#    SET-RECX4            08/15/86   raa                            #!!00165
*#    SNA-DDLs             10/12/87   rhb        10/13/87  rhb       #!!00166
*#      HALF-SESSION-SEG   10/12/87              10/13/87            #!!00167
*#      HSCB               10/12/87              10/13/87            #!!00168
*#      REQ-HDR            10/12/87              10/13/87            #!!00169
*#      REQ-UNIT           10/12/87              10/13/87            #!!00170
*#      TRANSMIT-HDR       10/12/87              10/13/87            #!!00171
*#      SNA                10/12/87              10/13/87            #!!00172
*#      SNA-HDRS           10/12/87              10/13/87            #!!00173
*#      SNA-MSG            10/12/87              10/13/87            #!!00174
*#    SSN                  12/5/85                                   #!!00175
*#    SYM-NAME             12/5/85                                   #!!00176
                                                                       !00176C00
*#    TDF-PRIKEY           Release 6.0                               # !00176C01
                                                                       !00176C02
*#    TIM                  12/5/85               5/27/86   kh        #!!00177
                                                                       !00177C00
*#    TLF-BASE-TKN         Release 6.0                               # !00177C01
*#    TLF-BASE-TKNX        Release 6.0                               # !00177C02
                                                                       !00177F00
*#    TLF-TKN-DEV-DATA-PART-1 30NOV2001          Release 6.0         # !00177F01
*#    TLF-TKN-DEV-DATA-PART-2 30NOV2001          Release 6.0         # !00177F02
                                                                       !00177F03
*#    TRACK2               12/5/85                                   #!!00178
*#    TRACK3               12/5/85                                   #!!00179
*#    UID                  10/24/86   rc                             #!!00180
*#    USER-DATA            08/15/86   raa                            #!!00181
                                                                       !00181C00
*#    VER                  Release 6.0                               # !00181C01
                                                                       !00181C02
*#    VISA1                08/05/86   raa                            #!!00182
*#                                                                   #!!00183
*#####################################################################!!00184
?talbound 0
?page
?section acct
*     This field defines an account field.                            !!00191
                                                                       !00192
DEFINITION ACCT.                                                       !00193
                                                                       !00194
*           The account number, maximum of 19 ASCII characters.       !!00195
                                                                       !00196
    04  ACCT-NUM                        PIC X(19).                     !00197
                                                                       !00198
END                                                                    !00199
                                                                       !00200
?page
?section acct-typ
                                                                       !00205
*       This field defines Account Type.                              !!00206
                                                                       !00207
*           01-09 = CHECKING accounts                                 !!00208
*           11-19 = SAVING accounts                                   !!00209
*           31-39 = CREDIT CARD accounts                              !!00210
*              90 = GENERAL LEDGER accounts                           !!00211
                                                                       !00212
*           Assigned values for Account Type:                         !!00213
*               01 = CHECKING                                         !!00214
*               11 = SAVINGS                                          !!00215
*               12 = IRA                                              !!00216
*               13 = CERT DEP                                         !!00217
*               21 = NOW                                              !!00218
*               31 = CREDIT CARD                                      !!00219
*               32 = CREDIT LINE                                      !!00220
*               41 = INSTALLMENT                                      !!00221
*               42 = MORTGAGE                                         !!00222
*               43 = COMMERCIAL                                       !!00223
*               50 = UTILITY PAYMENT                                  !!00224
*               51 = UTILITY1 PAYMENT                                 !!00225
*               52 = UTILITY2 PAYMENT                                 !!00226
*               53 = UTILITY3 PAYMENT                                 !!00227
*               54 = UTILITY4 PAYMENT                                 !!00228
*               55 = UTILITY5 PAYMENT                                 !!00229
*               90 = GENERAL LEDGER                                   !!00230
                                                                       !00231
                                                                       !00232
                                                                       !00233C00
DEFINITION  ACCT-TYP                        PIC X(2).                  !00233C01
                                                                       !00233C02
                                                                       !00234
?page
?section addr-iso
                                                                       !00239
*           This field describes the card acceptor name/location      !!00240
*           (i.e: owner name/city, state, country abbr.)              !!00241
                                                                       !00242
DEFINITION ADDR-ISO.                                                   !00243
                                                                       !00244
*           The name of the card acceptor.                            !!00245
                                                                       !00246
  02  NAME                              PIC X(22).                     !00247
                                                                       !00248
*           The card acceptor city.                                   !!00249
                                                                       !00250
  02  CITY                              PIC X(13).                     !00251
                                                                       !00252
*           The card acceptor state, province, region, etc.           !!00253
                                                                       !00254
  02  ST                                PIC X(3).                      !00255
                                                                       !00256
*           The card acceptor country abbr. as defined in ISO 3166-1981.
                                                                       !00259
  02  CNTRY                             PIC X(2).                      !00260
                                                                       !00261
END                                                                    !00262
                                                                       !00262C00
?section afm-term-nam
                                                                       !00262C03
?comments
                                                                       !00262C06
*           An internal Pathway terminal name obtained from            !00262C07
*           the SCOBOL TERMINALFILENAME procedure.                     !00262C08
                                                                       !00262C09
DEFINITION AFM-TERM-NAM                 PIC X(24).                     !00262C0A
                                                                       !00262C0B
?nocomments
                                                                       !00262C0E
?section afm-ts
                                                                       !00262C0H
?comments
                                                                       !00262C0K
*           This field defines a standard Tandem Julian time stamp.    !00262C0L
                                                                       !00262C0M
DEFINITION AFM-TS                       TYPE BINARY 64.                !00262C0N
                                                                       !00262C0O
?nocomments
                                                                       !00262C0R
?section afm-user-id
?comments
                                                                       !00262C0W
DEFINITION AFM-USER-ID.                                                !00262C0X
                                                                       !00262C0Y
*             The group number of the operator that performed the      !00262C0Z
*             last file maintenance application.  This value is        !00262C10
*             taken from the information given when the operator       !00262C11
*             last logged on to BASE24.                                !00262C12
                                                                       !00262C13
     02 GRP-NUM                         TYPE BINARY 16.                !00262C14
                                                                       !00262C15
*             The user number of the operator that performed the       !00262C16
*             last file maintenance application.  This value is        !00262C17
*             taken from the information given when the operator       !00262C18
*             last logged on to BASE24.                                !00262C19
                                                                       !00262C1A
     02 USER-NUM                        TYPE BINARY 32.                !00262C1B
                                                                       !00262C1C
?nocomments
                                                                       !00262C1F
END                                                                    !00262C1G
                                                                       !00262C1H
                                                                       !00263
*  The users nickname for login purposes.  Anyone can log in under the!!00264
*  alias 'SUPER.SUPER' if the security file is empty.                 !!00265
                                                                       !00266
DEF ALIAS                               PIC X(16).                     !00267
                                                                       !00268
?page
?section base-seg
                                                                       !00273
DEFINITION BASE-SEG.                                                   !00274
                                                                       !00275
*                                                                     !!00276
*             The length of the Base segment.                         !!00277
*                                                                     !!00278
                                                                       !00279
     04 LGTH                      TYPE BINARY 16.                      !00280
                                                                       !00281
                                                                       !00281E00
*             Set to zeroes for records written using the new          !00281E01
*             segmentation utilities implemented in Release 6.0.       !00281E02
*             For records in previous releases or written by           !00281E03
*             applications that use the old segmentation utilities,    !00281E04
*             this is a map indicating the segments present in the     !00281E05
*             file record.  The map is made up of 32 flags,            !00281E06
*             indicating the presence (1) or absence (0) of each       !00281E07
*             file segment.  The BASE product Segment (Bit 0) is       !00281E08
*             always turned on (1) in these records.                   !00281E09
                                                                       !00281E0A
                                                                       !00282E00
                                                                       !00282E01
                                                                       !00282E02
     04 SEG-MAP-R.                                                     !00310
        06 LEFT-WORD              TYPE BINARY 16.                      !00311
        06 RIGHT-WORD             TYPE BINARY 16.                      !00312
                                                                       !00313
     04 SEG-MAP                   REDEFINES SEG-MAP-R                  !00314
                                  TYPE BINARY 32.                      !00315
END                                                                    !00316
                                                                       !00317
?page
?section binary-acct
                                                                       !00317E02
                                                                       !00322E00
                                                                       !00322E01
                                                                       !00322E02
                                                                       !00370
*           This field defines an account field or Primary Account    !!00371
*           Number (PAN).                                             !!00372
                                                                       !00373
DEFINITION BINARY-ACCT.                                                !00374
                                                                       !00375
*           Account Number or Primary Account Number which exceeds 19 !!00376
*           characters.                                               !!00377
                                                                       !00378
    04  EXTND-ACCT-NUM.                                                !00379
                                                                       !00380
        08  LGTH                            TYPE BINARY 16.            !00381
                                                                       !00382
        08  NUM1                            TYPE BINARY 64.            !00383
                                                                       !00384
        08  NUM2                            TYPE BINARY 64.            !00385
                                                                       !00386
        08  FILL1                           PIC X.                     !00387
                                                                       !00388
END                                                                    !00389
                                                                       !00390
?section brch
                                                                       !00393
*           This defines a Branch name.                               !!00394
                                                                       !00395
DEFINITION BRCH                         PIC X(4).                      !00396
                                                                       !00397
?page
?section byte-addr
                                                                       !00397C04
?comments
                                                                       !00397C07
*           This field defines an address pointer for use in           !00397C08
*           other DDLs.                                                !00397C09
                                                                       !00397C0A
DEFINITION BYTE-ADDR                 TYPE BINARY 32.                   !00397C0B
                                                                       !00397C0C
?nocomments
                                                                       !00397C0F
?section coid
                                                                       !00397C0I
                                                                       !00400
*           This defines a Corporate ID                               !!00401
                                                                       !00402
DEFINITION COID                         PIC X(19).                     !00403
                                                                       !00404
                                                                       !00404M00
?section crd-key
                                                                       !00404M03
?comments
                                                                       !00404M06
*           Cardholder data from the file being read,                  !00404M07
*           logged to the OMF following a record read.                 !00404M08
                                                                       !00404M09
DEFINITION CRD-KEY.                                                    !00404M0A
                                                                       !00404M0B
*           The logical network of the card issuer.                    !00404M0C
                                                                       !00404M0D
  02 LN                                   PIC X(4).                    !00404M0E
                                                                       !00404M0F
*           The FIID of the card issuer.                               !00404M0G
                                                                       !00404M0H
  02 FIID                                 PIC X(4).                    !00404M0I
                                                                       !00404M0J
*           The cardholder's primary account number (PAN)              !00404M0K
*           for card initiated transactions.                           !00404M0L
                                                                       !00404M0M
  02 PAN                                  PIC X(19).                   !00404M0N
                                                                       !00404M0O
*           The member number associated with cardholder's             !00404M0P
*           account number.                                            !00404M0Q
                                                                       !00404M0R
  02 MBR-NUM                              PIC X(3).                    !00404M0S
                                                                       !00404M0T
*           The account type associated with the card.                 !00404M0U
                                                                       !00404M0V
  02 ACCT-TYP                             PIC X(2).                    !00404M0W
                                                                       !00404M0X
?nocomments
                                                                       !00404M0a
END                                                                    !00404M0b
?page
?section crncy-cde
                                                                       !00404M0g
*           This defines currency code format.                        !!00409
                                                                       !00410
DEFINITION CRNCY-CDE                    PIC 9(3).                      !00411
                                                                       !00412
                                                                       !00413
?section crncy-cde-x
*           This defines the alphabetic currency code format which    !!00416
*           is to be used when the format must conform to the         !!00417
*           standards set by ISO 4217.                                !!00418
                                                                       !00419
DEFINITION CRNCY-CDE-X                  PIC X(3).                      !00420
                                                                       !00421
                                                                       !00422
?section dat
                                                                       !00425
*           This field defines a date in YYMMDD format.               !!00426
                                                                       !00427
DEFINITION DAT.                                                        !00428
                                                                       !00429
    04  YY                              PIC X(2).                      !00430
                                                                       !00431
    04  MM                              PIC X(2).                      !00432
                                                                       !00433
    04  DD                              PIC X(2).                      !00434
                                                                       !00435
END                                                                    !00436
                                                                       !00436D00
                                                                       !00436D01
?page
?section emv-term-cap
?comments
                                                                       !00436D08
*           EMV Terminal Capabilities.  Indicates the card data        !00436D09
*           input, CVM, and security capabilities of the terminal,     !00436D0A
*           as shown below.  Where the bit setting is not specified,   !00436D0B
*           a bit setting of '1' indicates the meaning specified,      !00436D0C
*           a bit setting of '0' indicates the opposite.  Additions    !00436D0D
*           in the defined bits below should also be added to the      !00436D0E
*           EMV-TERM-CAP-COBOL Definition.                             !00436D0F
*                                                                      !00436D0G
                                                                       !00436F00
*           Because of the way TAL handles bit operations on string    !00436F01
*           variables, the TAL code references the EMV bits as         !00436F02
*           defined in the column TAL Reference as Implemented.        !00436F03
                                                                       !00436F04
*           This field is binary.                                      !00436D0H
                                                                       !00436D0I
DEFINITION EMV-TERM-CAP.                                               !00436D0J
                                                                       !00436D0K
*           Byte 1 (Card Data Input Capability)                        !00436D0L
                                                                       !00436F05
                                                                       !00436F06
*             EMV Bit                                 TAL Reference    !00436F07
*             Position   Meaning                      as Implemented   !00436F08
*             --------   -----------------------      --------------   !00436F09
*                8       Manual key entry                    8         !00436F0A
*                7       Magnetic stripe                     9         !00436F0B
*                6       IC with contacts                   10         !00436F0C
*                5       Reserved for future use            11         !00436F0D
*                4       Reserved for future use            12         !00436F0E
*                3       Reserved for future use            13         !00436F0F
*                2       Reserved for future use            14         !00436F0G
*                1       Reserved for future use            15         !00436F0H
                                                                       !00436F0I
                                                                       !00436D0X
    02 CRD-DATA-INPUT                   PIC X.                         !00436D0Y
                                                                       !00436D0Z
                                                                       !00436F0J
*           Byte 2 (CVM Capability)                                    !00436F0K
*             EMV Bit                                 TAL Reference    !00436F0L
*             Position   Meaning                      as Implemented   !00436F0M
*             --------   --------------------------   --------------   !00436F0N
*                8       Plaintext PIN for ICC               8         !00436F0O
*                          verification                                !00436F0P
*                7       Enciphered PIN for online           9         !00436F0Q
*                          verification                                !00436F0R
*                6       Signature (paper)                  10         !00436F0S
*                5       Enciphered PIN for offline         11         !00436F0T
*                          verification                                !00436F0U
                                                                       !00436L00
*                4       No CVM required                    12         !00436L01
                                                                       !00436L02
                                                                       !00436L03
                                                                       !00436L04
*                3       Reserved for future use            13         !00436F0W
*                2       Reserved for future use            14         !00436F0X
*                1       Reserved for future use            15         !00436F0Y
                                                                       !00436F0Z
                                                                       !00436F10
                                                                       !00436F11
                                                                       !00436F12
                                                                       !00436F13
    02 CVM                              PIC X.                         !00436D1D
                                                                       !00436D1E
*           Byte 3 (Security Capability)                               !00436D1F
                                                                       !00436F14
                                                                       !00436F15
*             EMV Bit                                TAL Reference     !00436F16
*             Position  Meaning                      as Implemented    !00436F17
*             --------  ---------------------------  --------------    !00436F18
*                8      Static data authentication          8          !00436F19
*                7      Dynamic data authentication         9          !00436F1A
*                6      Card capture                       10          !00436F1B
*                5      Reserved for future use            11          !00436F1C
                                                                       !00436L05
*                4      Combined data authentication       12          !00436L06
                                                                       !00436L07
                                                                       !00436L08
                                                                       !00436L09
*                3      Reserved for future use            13          !00436F1E
*                2      Reserved for future use            14          !00436F1F
*                1      Reserved for future use            15          !00436F1G
                                                                       !00436F1H
                                                                       !00436D1R
    02 SEC                              PIC X.                         !00436D1S
                                                                       !00436D1T
*           This field ensures word-alignment.                         !00436D1U
                                                                       !00436D1V
    02 USER-FLD1-EMV-TERM-CAP           PIC X.                         !00436D1W
                                                                       !00436D1X
?nocomments
                                                                       !00436D20
END                                                                    !00436D21
                                                                       !00436D22
?page
?section emv-term-cap-cobol
?comments
                                                                       !00436D29
*           EMV Terminal Capabilities defined as bytes to be used in   !00436D2A
*           COBOL programs.  An entry is defined for each bit defined  !00436D2B
*           in the EMV-TERM-CAP Definition.                            !00436D2C
                                                                       !00436D2D
DEFINITION EMV-TERM-CAP-COBOL.                                         !00436D2E
    04 KEY-ENTRY                        PIC X.                         !00436D2F
    04 MAG-STRIPE                       PIC X.                         !00436D2G
    04 IC-CONTACTS                      PIC X.                         !00436D2H
                                                                       !00436L0A
    04 RESERVED1                        PIC X.                         !00436L0B
    04 RESERVED2                        PIC X.                         !00436L0C
    04 RESERVED3                        PIC X.                         !00436L0D
                                                                       !00436L0E
    04 PLAINTEXT-PIN                    PIC X.                         !00436D2I
    04 ENCIPHR-PIN-ONL                  PIC X.                         !00436D2J
    04 SIGNATURE                        PIC X.                         !00436D2K
    04 ENCIPHR-PIN-OFFL                 PIC X.                         !00436D2L
                                                                       !00436L0F
    04 NO-CVM-REQD                      PIC X.                         !00436L0G
    04 RESERVED4                        PIC X.                         !00436L0H
                                                                       !00436L0I
    04 STATIC-DATA-AUTH                 PIC X.                         !00436D2M
    04 DYN-DATA-AUTH                    PIC X.                         !00436D2N
    04 CARD-CAPTURE                     PIC X.                         !00436D2O
                                                                       !00436L0J
    04 RESERVED5                        PIC X.                         !00436L0K
    04 COMBND-DATA-AUTH                 PIC X.                         !00436L0L
    04 RESERVED6                        PIC X.                         !00436L0M
                                                                       !00436L0N
                                                                       !00436D2P
?nocomments
                                                                       !00436D2S
END                                                                    !00436D2T
                                                                       !00436D2U
                                                                       !00437
?section err-cde
                                                                       !00440
*       Error Code.                                                   !!00441
                                                                       !00442
DEFINITION ERR-CDE                      PIC X(3).                      !00443
                                                                       !00444
                                                                       !00445
?page
?section fcb
                                                                       !00450
DEFINITION FCB.                                                        !00451
                                                                       !00452
*           This field contains the file number associated with this  !!00453
*           file.                                                     !!00454
                                                                       !00455
  02 FILENUM                              TYPE BINARY 16.              !00456
                                                                       !00457
*           This field contains the number of records written to the  !!00458
*           file since the last percentage full check was made.       !!00459
                                                                       !00460
  02 NUM-WRITES                           TYPE BINARY 16.              !00461
                                                                       !00462
*           This field contains the file type indicator               !!00463
*           (0 = unstructured; 1 = relative; 2 = entry sequenced;     !!00464
*            3 = key sequenced).                                      !!00465
                                                                       !00466
  02 FILE-TYPE                            TYPE BINARY 16.              !00467
                                                                       !00468
                                                                       !00469F00
                                                                       !00469F01
*           This field contains the logical record length for format  !!00469F02
*           1 files.                                                   !00469F03
                                                                       !00469F04
  02 REC-LGTH                             TYPE BINARY 16.              !00471
                                                                       !00472
*           This field contains the size of a block of records        !!00473
                                                                       !00474F00
*           in bytes for format 1 files.                              !!00474F01
                                                                       !00474F02
                                                                       !00475
  02 BLK-SIZE                             TYPE BINARY 16.              !00476
                                                                       !00477
                                                                       !00477F00
*           This field contains the number of partitions configured    !00477F01
*           for the file.                                              !00477F02
                                                                       !00477F03
  02 NUM-PARTS                            TYPE BINARY 16.              !00477F04
                                                                       !00477F05
*           This field contains the number of records that will fit   !!00478
*           in a block (not applicable for unstructured files).       !!00479
                                                                       !00480
  02 RECS-PER-BLK                         TYPE BINARY 16.              !00481
                                                                       !00482
*           This field contains the maximum number of bytes that      !!00483
*           can be allocated for the file.  For non-partioned files   !!00484
*           under DP2 this figure can dynamically change.             !!00485
                                                                       !00486
                                                                       !00487I00
  02 MAX-FILE-SIZE                        TYPE BINARY 64.              !00487I01
                                                                       !00487I02
                                                                       !00488
*           This field specifies whether the volume that this file    !!00489
*           resides on is formatted for the DP1 or DP2 disk process   !!00490
*           ( 0 = DP1; 1 = DP2 ).                                     !!00491
                                                                       !00492
  02 DP-VER                               TYPE BINARY 16.              !00493
                                                                       !00494
*           This field contains the percentage full that the file     !!00495
*           was on the previous calculation.                          !!00496
                                                                       !00497
  02 PREV-PCT                             TYPE BINARY 16.              !00498
                                                                       !00499
*           This field contains the percentage full that the file is  !!00500
*           on the current calculation.                               !!00501
                                                                       !00502
  02 CUR-PCT                              TYPE BINARY 16.              !00503
                                                                       !00504
*           This field specifies whether or not the File Control      !!00505
*           Block has been initialized (0 = false; -1 = true).        !!00506
                                                                       !00507
                                                                       !00508
  02 INIT-FLAG                            TYPE BINARY 16.              !00509
                                                                       !00510
                                                                       !00510F00
                                                                       !00510F01
*           This field indicates whether the file is format 1 or       !00510F02
*           format 2.  Valid values are:                               !00510F03
*                                                                      !00510F04
*           1 - file format 1                                          !00510F05
*           2 - file format 2                                          !00510F06
                                                                       !00510F07
  02 FILE-FRMT                            TYPE BINARY 16.              !00510F08
                                                                       !00510F09
*           This field contains the logical record length for          !00510F0A
*           format 2 files.                                            !00510F0B
                                                                       !00510F0C
  02 REC-LGTH-FRMT-2                      TYPE BINARY 32.              !00510F0D
                                                                       !00510F0E
*           This field contains the size of a block of records         !00510F0F
*           in bytes for format 2 files.                               !00510F0G
                                                                       !00510F0H
  02 BLK-SIZE-FRMT-2                      TYPE BINARY 32.              !00510F0I
                                                                       !00510F0J
                                                                       !00511
                                                                       !00512F00
                                                                       !00512F01
                                                                       !00512F02
  end                                                                  !00517
                                                                       !00518
                                                                       !00519
?section fiid
                                                                       !00522
*           This defines an FIID field.                               !!00523
                                                                       !00524
DEFINITION FIID                         PIC X(4).                      !00525
                                                                       !00526
?page
?section file-requirements
                                                                       !00531
*             File description including file creation requirements.  !!00532
                                                                       !00533
DEFINITION FILE-REQ.                                                   !00534
                                                                       !00535
  02 FNAME                                PIC X(35).                   !00536
  02 FILL1                                PIC X.                       !00537
  02 PRI-EXT                              TYPE BINARY 16.              !00538
  02 SEC-EXT                              TYPE BINARY 16.              !00539
  02 IBLOCK-SIZE                          TYPE BINARY 16.              !00540
  02 BLOCK-SIZE                           TYPE BINARY 16.              !00541
  02 FILE-CDE                             TYPE BINARY 16.              !00542
                                                                       !00543
  end                                                                  !00544
                                                                       !00545
                                                                       !00546
?page
?section fname
                                                                       !00551
*           This defines a Tandem file name field.                    !!00552
                                                                       !00553
DEFINITION FNAME                        PIC X(35).                     !00554
                                                                       !00555
?page
                                                                       !00558
?section id-num
                                                                       !00561
DEFINITION ID-NUM                       PIC 9(11).                     !00562
                                                                       !00563
?section key-loc
                                                                       !00563L02
?comments
                                                                       !00563L05
*           A key locator is an identifier used as key information     !00563L06
*           to access a BASE24-es Transaction Security Services        !00563L07
*           (TSS) database file.                                       !00563L08
                                                                       !00563L09
DEFINITION KEY-LOC                      PIC X(16).                     !00563L0A
                                                                       !00563L0B
?nocomments
                                                                       !00563L0E
?section keyi
                                                                       !00563L0H
                                                                       !00566
*           This defines an encryption key field for internal storage !!00567
                                                                       !00568
DEFINITION KEYI                         PIC X(8).                      !00569
                                                                       !00570
?section keyx
                                                                       !00573
*           This defines an encryption key field.                     !!00574
                                                                       !00575
DEFINITION KEYX                         PIC X(16).                     !00576
                                                                       !00577
?page
?section last-afm
                                                                       !00577C02
?comments
                                                                       !00577C03
*           This field describes the last on-line file maintenance     !00577C04
*           update applied to this record.  This includes the user     !00577C05
*           who did the update, the time at which it was done, the     !00577C06
*           type of update, and the terminal originating the update    !00577C07
*           transaction.                                               !00577C08
                                                                       !00577C09
DEFINITION LAST-AFM.                                                   !00577C0A
                                                                       !00577C0B
*          This structure contains the pertinent data regarding any    !00577C0C
*          AFM file maintenance activity.                              !00577C0D
                                                                       !00577C0E
     02 FM.                                                            !00577C0F
                                                                       !00577C0G
*           Julian timestamp (date/time) of the last AFM function      !00577C0H
*           performed to the data record.                              !00577C0I
                                                                       !00577C0J
        04 AFM-TS                    TYPE AFM-TS.                      !00577C0K
                                                                       !00577C0L
*           Record maintenance function:                               !00577C0M
*                                                                      !00577C0N
*                0 - Add                                               !00577C0O
*                1 - Image "before" modify                             !00577C0P
*                2 - Image "after" modify                              !00577C0Q
*                3 - Purge                                             !00577C0R
                                                                       !00577C0S
        04 UPDT-TYP                  TYPE BINARY 16.                   !00577C0T
                                                                       !00577C0U
*           Only used by Pathway servers.  Non-Pathway servers         !00577C0V
*           default USER-ID to zeros.                                  !00577C0W
                                                                       !00577C0X
        04 USER-ID                   TYPE AFM-USER-ID.                 !00577C0Y
                                                                       !00577C0Z
*           This field contains the terminal ID where the              !00577C10
*           record maintenance occurred. Used only by Pathway          !00577C11
*           servers. Non-Pathway servers default TERM-NAM              !00577C12
*           field to blanks.                                           !00577C13
                                                                       !00577C14
        04 TERM-NAM                  TYPE AFM-TERM-NAM.                !00577C15
                                                                       !00577C16
?nocomments
                                                                       !00577C19
END                                                                    !00577C1A
                                                                       !00577C1B
?page
?section last-fm
?comments
                                                                       !00577C1I
                                                                       !00584
*           This field describes the last on-line file maintenance    !!00585
*           update applied to this record.  This includes the user    !!00586
*           who did the update, the time at which it was done, the    !!00587
*           type of update and the terminal originating the update    !!00588
*           transaction.                                              !!00589
                                                                       !00590
DEFINITION LAST-FM.                                                    !00591
                                                                       !00592
*                                                                     !!00593
*             The date and time of the last file maintenence          !!00594
*             application.                                            !!00595
*                                                                     !!00596
    04  FM-TIMESTAMP                    TYPE BINARY OCCURS 3 TIMES.    !00597
                                                                       !00598
*             The group number of the operator that performed the last!!00599
*             file maintenance application.  This value is taken from !!00600
*             the information given when the operator last logged on  !!00601
*             to BASE24.                                              !!00602
*                                                                     !!00603
    04  FM-USER-GRP                     TYPE BINARY.                   !00604
                                                                       !00605
                                                                       !00606
*             The user number of the operator that performed the last !!00607
*             file maintenance application.  This value is taken from !!00608
*             the information given when the operator last logged on  !!00609
*             to BASE24.                                              !!00610
*                                                                     !!00611
    04  FM-USER-NUM                     TYPE BINARY 32.                !00612
                                                                       !00613
*                                                                     !!00614
*             The type of file maintenance that was last applied to   !!00615
*             the record.  Valid values are:                          !!00616
*                                                                     !!00617
*             A =  Add                                                !!00618
*             B =  Change "before" image                              !!00619
*             C =  Change "after" image                               !!00620
*             D =  Delete                                             !!00621
*             S =  Logon security check                               !!00622
*             O =  Entry into operator functions                      !!00623
                                                                       !00624
    04  UPDT-TYP                        PIC X(1).                      !00625
                                                                       !00626
                                                                       !00627
*                                                                     !!00628
*             This field is not used.                                 !!00629
*                                                                     !!00630
    04  STA-NUM                         PIC X(4).                      !00631
                                                                       !00632
    04  FILL1                           PIC X.                         !00633
                                                                       !00634
END                                                                    !00635
?page
?section last-tran
*           This field occurs in every record which is                !!00640
*           updated by the on-line system to ensure                   !!00641
*           against multiple or incomplete updates due to             !!00642
*           process failure and restart.                              !!00643
                                                                       !00644
DEFINITION LAST-TRAN.                                                  !00645
                                                                       !00646
*                                                                     !!00647
*             The date and time the last transaction accessed the     !!00648
*             record.                                                 !!00649
*                                                                     !!00650
     04  LT-TIMESTAMP          TYPE BINARY OCCURS 3 TIMES.             !00651
*                                                                     !!00652
*             This field is zero filled.                              !!00653
*                                                                     !!00654
     04  NONSTOP-ID            TYPE BINARY.                            !00655
*                                                                     !!00656
*             The number of the last process to access this record,   !!00657
*             as assigned in the Network Environment File (NEF).      !!00658
*                                                                     !!00659
     04  PRO-NUM               TYPE BINARY.                            !00660
                                                                       !00661
?nocomments
END                                                                    !00664
                                                                       !00665
?section ln
                                                                       !00668
*           This defines a Logical Network name.                      !!00669
                                                                       !00670
DEFINITION LN                           PIC X(4).                      !00671
                                                                       !00672
?page
?section loc
                                                                       !00677
*           This field describes an address location                  !!00678
*           (i.e.: street address).                                   !!00679
                                                                       !00680
DEFINITION LOC                          PIC X(25).                     !00681
                                                                       !00682
?SECTION MAIL-CONFIG-DEF
                                                                       !00685
DEFINITION MAIL-DEVICE-DEF.                                            !00686
                                                                       !00687
*           This field indicates the completion status of the         !!00688
*           mail message that has been sent.  Valid values are:       !!00689
*                                                                     !!00690
*  Completion Code       MESSAGE TEXT DESCRIPTION                     !!00691
*  ---------------   -------------------------------------------      !!00692
*       "01"         NO MSG, AS SPECIFIED, WAS FOUND                  !!00693
*       "02"         THE TERMINAL NAME IS UNKNOWN                     !!00694
*       "03"         THE FIID DOES NOT OWN THE TERMINAL               !!00695
*       "04"         THE SPECIFIED MSG HAS EXPIRED                    !!00696
*       "05"         THE FIID IS UNKNOWN                              !!00697
*       "06"         PASSTHRU QUEUE FULL.    MSG STORED               !!00698
*       "07"         >>>  GUARDIAN FILE SYSTEM ERROR #                !!00699
*       "08"         SPECIFIED TABLE SIZES ARE TOO SMALL              !!00700
*       "09"         THE BROADCAST ID IS UNKNOWN                      !!00701
*       "10"         THE TERMINAL NAME MUST NOT BE BLANKS             !!00702
*       "11"         THE BROADCAST ID MUST NOT BE BLANKS              !!00703
*       "12"         THE (mb) MESSAGE IS THE WRONG LENGTH             !!00704
*       "13"         THE REQUEST TYPE FIELD IS INVALID                !!00705
*       "14"         THE CATEGORY FIELD CAN NOT BE BLANKS             !!00706
*       "15"         THE MESSAGE DATE FIELD IS INVALID                !!00707
*       "16"         THE MESSAGE ID FIELD IS INVALID                  !!00708
*       "17"         THE LOOKUP TYPE FIELD IS INVALID                 !!00709
*       "18"         THE SCROLL THRU FIELD IS INVALID                 !!00710
*       "19"         THE DELIVERY MODE FIELD IS INVALID               !!00711
*       "20"         THE RESP REQUIRED FIELD IS INVALID               !!00712
*       "21"         THE LOCATION TYPE FIELD IS INVALID               !!00713
*       "22"         THE 'TO' TERMINAL NAME IS INVALID                !!00714
*       "23"         THE 'TO' CATEGORY NAME IS INVALID                !!00715
*       "24"         THE MESSAGE LENGTH FIELD IS INVALID              !!00716
*       "25"         FIID DOES NOT OWN THE 'TO' TERMINAL              !!00717
*       "26"         THE  'TO' BROADCAST ID IS UNKNOWN                !!00718
*       "27"         WRONG DH SENT IN TERMINAL'S MSG                  !!00719
*       "28"         DELIVERED OK, BUT COMPLETION WAS BAD             !!00720
*       "29"         THE FIID IS BUSY OR DOWN.  MSG STORED            !!00721
*       "30"         THE COMPLETION CODE IS INVALID                   !!00722
*       "31"         THE PICKUP STATUS IS INVALID                     !!00723
*       "32"         THE HOST STATUS IS INVALID                       !!00724
*       "33"         THE STORED REQUEST FIELD IS INVALID              !!00725
*       "34"         THE INVOICE NUMBER IS INVALID                    !!00726
*       "35"         THE FIID DOES NOT OWN THE DPC                    !!00727
*       "36"         THE TEXT REC WAS NOT FOUND                       !!00728
*       "37"         THE MSG ID FIELD IS INVALID                      !!00729
*       "38"         DEST TERMINAL IS BUSY OR IS DOWN                 !!00730
*                                                                     !!00731
*       "00" - "99"  Reserved for future use.                         !!00732
                                                                       !00733
        08  COMPL-CDE                       PIC X(2).                  !00734
                                                                       !00735
*           This field determines the delivery mode of the            !!00736
*           terminal.  Possible delivery mode values are:             !!00737
*                                                                     !!00738
*              1 - PASS THRU AND STORED                               !!00739
*              2 - STORED                                             !!00740
*              3 - PASSTHRU NOT STORED                                !!00741
*              4 - N/A                                                !!00742
*              5 - HOST ORIGINATED                                    !!00743
                                                                       !00744
        08  DELIVERY-MDE                    PIC X(1).                  !00745
                                                                       !00746
*           This field is contains the category name that the         !!00747
*           user has defined for this message.                        !!00748
                                                                       !00749
        08  CATEGORY-NAM                    PIC X(16).                 !00750
                                                                       !00751
*           This field is used to uniquely identify the message.      !!00752
*           the message identifier and the message date. (YYMMDD)     !!00753
*                                                                     !!00754
        08  TXT-ID.                                                    !00755
                                                                       !00756
            10  MSG-DAT                     TYPE DAT.                  !00757
                                                                       !00758
            10  MSG-ID                      PIC X(4).                  !00759
                                                                       !00760
*           Is the delivery status of the last mail message sent.     !!00761
                                                                       !00762
        08  STATUS-FLG                      PIC X(1).                  !00763
                                                                       !00764
*                                                                     !!00765
*           Reserved for future use.                                  !!00766
*                                                                     !!00767
        08  FILLER                          PIC X(8).                  !00768
END                                                                    !00769
                                                                       !00770
DEFINITION MAIL-CONF-DEF.                                              !00771
                                                                       !00772
*   The following fields define the options available by              !!00773
*   station for EMS. The MAIL-DATA structure must remain              !!00774
*   identical regardless of product ( POS / TLR ) for the             !!00775
*   AFT to function properly.                                         !!00776
                                                                       !00777
    04  OPTION-FLAGS.                                                  !00778
                                                                       !00779
*       This field determines if the terminal can                     !!00780
*       accept an unsolicited message from EMS.                       !!00781
*       Values:                                                       !!00782
*           "0" = Unsolicited messages are not allowed                !!00783
*           "1" = Allow unsolicited messages                          !!00784
*                                                                     !!00785
*           Default value "0"                                         !!00786
                                                                       !00787
        06  UNSOLICITED-MSG                 PIC X(1).                  !00788
                                                                       !00789
*       This field determines if the terminal will send               !!00790
*       completions to unsolicited messages ( note that               !!00791
*       UNSOLICITED-MSG must be a 1 or this field                     !!00792
*       will be ignored.                                              !!00793
*                                                                     !!00794
*           "0" = Completions to unsolicited messages will not be     !!00795
*                 sent                                                !!00796
*           "1" = Completions to unsolicited messages will be sent    !!00797
*                                                                     !!00798
*           Default value "0"                                         !!00799
                                                                       !00800
        06  TERM-COMPL-UNSOLICITED-MSG      PIC X(1).                  !00801
                                                                       !00802
*       This field determines if the terminal will send               !!00803
*       completions to stored messages                                !!00804
*                                                                     !!00805
*           "0" = Completions to stored messages will not be          !!00806
*                 sent                                                !!00807
*           "1" = Completions to stored messages will be sent         !!00808
*                                                                     !!00809
*           Default value "1"                                         !!00810
                                                                       !00811
        06  TERM-COMPL-STORED-MSG           PIC X(1).                  !00812
                                                                       !00813
*       This field determines if the terminal will send               !!00814
*       response to terminal when a timeout occurs.                   !!00815
*                                                                     !!00816
*           "0" = Responses will not be sent on timeouts              !!00817
*           "1" = Responses will be sent on timeouts                  !!00818
*                                                                     !!00819
*           Default value "1"                                         !!00820
                                                                       !00821
        06  TIMOUT-RESP-TO-TERM             PIC X(1).                  !00822
                                                                       !00823
*       This field determines if the terminal has the capiblities     !!00824
*       to check to see if the terminal has mail.                     !!00825
*                                                                     !!00826
*           "0" = No reply when there is not mail.                    !!00827
*           "1" = Positive reply when there is mail.                  !!00828
*                                                                     !!00829
*           Default value "1"                                         !!00830
                                                                       !00831
        06  POS-NEG-CONFIRMATIONS           PIC X(1).                  !00832
                                                                       !00833
                                                                       !00834
*                                                                     !!00835
*       Option to scroll within a single category                     !!00836
*           "0" = Scroll within specified category ONLY               !!00837
*           "1" = Scroll thru categories, starting at specified       !!00838
*                 categroy                                            !!00839
*                                                                     !!00840
*           Default value "1"                                         !!00841
                                                                       !00842
        06  SCROLL-THRU                     PIC X(1).                  !00843
                                                                       !00844
*       Option to reset the mail-offset field to zero when a non-mail !!00845
*       transaction is received by the device handler.                !!00846
*       Valid values:                                                 !!00847
*           "0" = Do not reset the mail offset field when a non-mail  !!00848
*                 transaction is received                             !!00849
*           "1" = Reset the mail offset field when a non-mail         !!00850
*                 transaction is received                             !!00851
*                                                                     !!00852
*           Default value "1"                                         !!00853
                                                                       !00854
        06  OFST-RESET                      PIC X(1).                  !00855
                                                                       !00856
*                                                                     !!00857
*           Reserved for future use.                                  !!00858
*                                                                     !!00859
                                                                       !00860
                                                                       !00861
        06  FILLER                          PIC X.                     !00862
                                                                       !00863
                                                                       !00864
*       This field contains the Mail Process name for this            !!00865
*       terminal.  Network symbolic process name.                     !!00866
*                                                                     !!00867
                                                                       !00868
    04  MAIL-PRO-NAM                        PIC X(16).                 !00869
                                                                       !00870
                                                                       !00871
    04  MAIL-MSG.                                                      !00872
                                                                       !00873
        06  INBOUND                         TYPE MAIL-DEVICE-DEF.      !00874
        06  OUTBOUND                        TYPE MAIL-DEVICE-DEF.      !00875
                                                                       !00876
END                                                                    !00877
?section mbr-num
                                                                       !00880
                                                                       !00881
*           This field defines the member number.                     !!00882
                                                                       !00883
DEFINITION MBR-NUM                      PIC 9(3).                      !00884
                                                                       !00885
                                                                       !00885M00
?section mlf-rec
                                                                       !00885M03
?comments
                                                                       !00885M06
*           Maintenance Log File record, logged to the                 !00885M07
*           OMF following a record read or delete.                     !00885M08
                                                                       !00885M09
DEFINITION MLF-REC.                                                    !00885M0A
                                                                       !00885M0B
*           The FIID of the switch to which the                        !00885M0C
*           record belongs.                                            !00885M0D
                                                                       !00885M0E
  02 FIID                                 PIC X(4).                    !00885M0F
                                                                       !00885M0G
*           The date when the record was added to the MLF.             !00885M0H
                                                                       !00885M0I
  02 SWI-DAT                              PIC X(6).                    !00885M0J
                                                                       !00885M0K
*           The time when the record was added to the MLF.             !00885M0L
                                                                       !00885M0M
  02 SWI-TIM                              PIC X(8).                    !00885M0N
                                                                       !00885M0O
*           The cardholder's primary account number (PAN)              !00885M0P
*           for card initiated transactions.                           !00885M0Q
                                                                       !00885M0R
  02 PAN                                  PIC X(19).                   !00885M0S
                                                                       !00885M0T
*           The member number associated with cardholder's             !00885M0U
*           account number.                                            !00885M0V
                                                                       !00885M0W
  02 MBR-NUM                              PIC X(3).                    !00885M0X
                                                                       !00885M0Y
?nocomments
                                                                       !00885M0b
END                                                                    !00885M0c
?section name
                                                                       !00885M0f
                                                                       !00888
*       Name.  Used for a corporation name, contact name, user id name,
*       vendor name, etc...                                           !!00891
                                                                       !00892
DEFINITION NAME                         PIC X(22).                     !00893
                                                                       !00894
?section pan
                                                                       !00897
*           This field defines a Primary Account Number (PAN).        !!00898
*                                                                     !!00899
                                                                       !00900
DEFINITION PAN.                                                        !00901
                                                                       !00902
*           The Primary Account Number, maximum of 19 ASCII characters.
                                                                       !00905
    04 NUM                              PIC X(19).                     !00906
                                                                       !00907
END                                                                    !00908
?page
?section phone-number
                                                                       !00913
*           This defines a persons phone number in a free-form format.!!00914
                                                                       !00915
DEFINITION PHONE-NUM                    PIC X(20).                     !00916
                                                                       !00917
?section pin
                                                                       !00920
*           This defines a persons Personal Identification            !!00921
*           Number (PIN).                                             !!00922
                                                                       !00923
DEFINITION PIN                          PIC X(16).                     !00924
                                                                       !00925
                                                                       !00926
                                                                       !00927
?section posn
                                                                       !00930
*           This field is used to save the current position           !!00931
*           within a file.                                            !!00932
                                                                       !00933
DEFINITION POSN.                                                       !00934
                                                                       !00935
    04  ALTKEY-TAG                      PIC X(2).                      !00936
    04  ALTKEY                          PIC X(74).                     !00937
    04  PRIKEY                          PIC X(74).                     !00938
                                                                       !00939
END                                                                    !00940
                                                                       !00941
?section postal-cde
                                                                       !00944
*           This defines a postal code for mailing address            !!00945
                                                                       !00946
DEFINITION POSTAL-CDE                   PIC X(10).                     !00947
                                                                       !00948
                                                                       !00949
?page
?section prfl
?comments
                                                                       !00949C04
*           This defines a general profile.  A profile is an           !00949C05
*           identifier used to define a specific configuration         !00949C06
*           (e.g., transaction profile, retailer profile).  Left       !00949C07
*           justified, blank filled, no embedded spaces.               !00949C08
                                                                       !00949C09
DEFINITION PRFL                         PIC X(16).                     !00949C0A
                                                                       !00949C0B
?nocomments
                                                                       !00949C0E
?page
?section proc-cde
?comments
                                                                       !00949C0L
*          This field defines the Processing Codes, as defined in      !00949C0M
*          ISO 8583 (1993) - Financial Transaction Card Originated     !00949C0N
*          Messages - Interchange Message Specification.  The          !00949C0O
*          Processing Code consists of the Transaction Code, the       !00949C0P
*          From Account Type and the To Account Type which             !00949C0Q
*          describes the effect of a transaction on the customer       !00949C0R
*          account and the accounts affected.                          !00949C0S
*                                                                      !00949C0T
*          TXN-CDE describes the specific transaction.                 !00949C0U
*                                                                      !00949C0V
*          ACCT1-TYP describes the Account Type affected for Debits    !00949C0W
*          and Inquiries, and the "from" Account for Transfers.        !00949C0X
*                                                                      !00949C0Y
*          ACCT2-TYP describes the Account Type affected for Credits   !00949C0Z
*          and the "to" Account for Transfers.                         !00949C10
                                                                       !00949C11
DEFINITION PROC-CDE.                                                   !00949C12
                                                                       !00949C13
     02 TXN-CDE                      PIC X(2).                         !00949C14
                                                                       !00949C15
*          From account type.                                          !00949C16
                                                                       !00949C17
     02 ACCT1-TYP                    PIC X(2).                         !00949C18
                                                                       !00949C19
*          To account type.                                            !00949C1A
                                                                       !00949C1B
     02 ACCT2-TYP                    PIC X(2).                         !00949C1C
                                                                       !00949C1D
?nocomments
                                                                       !00949C1G
END                                                                    !00949C1H
                                                                       !00949C1I
?page
?section prod-id
                                                                       !00949C1N
                                                                       !00954
*           This contains the product identifier:                     !!00955
*                "01" = ATM                                           !!00956
*                "02" = POS                                           !!00957
*                "03" = TELLER                                        !!00958
*                "04" = PCS                                           !!00959
*                "05" = VIDEOTEX                                      !!00960
*                "06" = NOT USED                                      !!00961
*                "07" = BILL PAY                                      !!00962
*                "08" = FROM HOST MAINTENANCE                         !!00963
*                "09" = NOT USED                                      !!00964
*                "10" = CARD                                          !!00965
*                "11" = MAIL                                          !!00966
*                "12" = NOT USED                                      !!00967
*                "13" = IEP                                           !!00968
*                "14" = TELEBANKING                                   !!00969
                                                                       !00970
                                                                       !00971
DEFINITION PROD-ID                      PIC X(2).                      !00972
                                                                       !00973
?section prod-ind
                                                                       !00976
*           This contains the product bit map.                        !!00977
                                                                       !00978
DEFINITION PROD-IND                     PIC X(32).                     !00979
                                                                       !00979B00
                                                                       !00979B01
?section prod-ind-ext
                                                                       !00979C02
                                                                       !00979B04
*          This contains the extended product bit map.                 !00979B05
                                                                       !00979B06
                                                                       !00979C03
DEFINITION PROD-IND-EXT                 PIC X(256).                    !00979C04
                                                                       !00979C05
                                                                       !00979B08
                                                                       !00980
                                                                       !00981
?section prod-name
                                                                       !00984
*           This contains product mneumonic names:                    !!00985
*               BASE = BASE24 common product information              !!00986
*               ATM  = BASE24-atm                                     !!00987
*               POS  = BASE24-pos                                     !!00988
*               TLR  = BASE24-teller                                  !!00989
*               PCS  = BASE24-pcs                                     !!00990
*               PAY  = BASE24-pay                                     !!00991
*               FHM  = BASE24-from host maintenance                   !!00992
*               MAIL = BASE24-mail                                    !!00993
*               IEP  = BASE24-iep                                     !!00994
*               TB   = BASE24-telebanking                             !!00995
                                                                       !00996
                                                                       !00997
DEFINITION PROD-NAME.                                                  !00998
                                                                       !00999
    04 NAME                             PIC X(4).                      !01000
                                                                       !01001
END                                                                    !01002
?page
?section regn
                                                                       !01007
                                                                       !01008
*           This defines a Region name.                               !!01009
                                                                       !01010
DEFINITION REGN                         PIC X(4).                      !01011
                                                                       !01012
                                                                       !01013
*           This defines the response code.                           !!01014
                                                                       !01015
DEFINITION RESP-CDE                     PIC X(3).                      !01016
                                                                       !01017
                                                                       !01018
?page
?section sdcb
                                                                       !01023
DEFINITION SDCB.                                                       !01024
                                                                       !01025
*           Field specifies the process the Security Device Control   !!01026
*           Block defines.                                            !!01027
                                                                       !01028
  02 PRO-NAME                             PIC X(16).                   !01029
                                                                       !01030
*           Field specifies the Security Device Type the process is   !!01031
*           to utilize.  Value obtained from the LCONF by the         !!01032
*           utilities PIN^INIT and PINI^GET^CONFIG^INFO.              !!01033
                                                                       !01034
  02 SEC-DEV-TYP                          TYPE BINARY 16.              !01035
                                                                       !01036
                                                                       !01036K00
*           Specifies what security-device access scheme will be       !01036K01
*           employed.                                                  !01036K02
*                                                                      !01036K03
*           This value is obtained from the LCONF param,               !01036K04
*           SECURE-DEV-ACCESS-TYP. Valid values are:                   !01036K05
*                                                                      !01036K06
*           0 = Indicates that primary and secondary devices will be   !01036K07
*               used.                                                  !01036K08
*           1 = Indicates the round-robin list will be used.           !01036K09
*                                                                      !01036K0A
*               Default value: 0                                       !01036K0B
                                                                       !01036K0C
  02 ACCESS-TYP                           TYPE BINARY 16.              !01036K0D
                                                                       !01036K0E
*           Specifies the time interval in minutes at which a process  !01036K0F
*           should attempt to reopen a security device that is marked  !01036K0G
*           down.                                                      !01036K0H
*                                                                      !01036K0I
*           This value is obtained from the LCONF param,               !01036K0J
*           SECURE-DEV-REINSTATE-TIME. The value from the param is     !01036K0K
*           multiplied by 60,000,000 to convert it from minutes to     !01036K0L
*           microseconds and the result is stored in REINSTATE-TIME.   !01036K0M
*                                                                      !01036K0N
*           Valid values for the LCONF param are:                      !01036K0O
*                                                                      !01036K0P
*                 0 = Indicates that the process should not attempt    !01036K0Q
*                     to reopen a device based on the time interval.   !01036K0R
*           1-32000 = Time interval in minutes                         !01036K0S
*                                                                      !01036K0T
*               Default value: 0                                       !01036K0U
                                                                       !01036K0V
  02 REINSTATE-TIM                        TYPE BINARY 64.              !01036K0W
                                                                       !01036K0X
*           Field specifies which security device in the DEV array     !01036K0Y
*           is currently being utilized. A total of 20 security        !01036K0Z
*           devices can be configured at one time. This field is       !01036K0a
*           used only when the process is configured to access TSS     !01036K0b
*           processes via the round robin list.                        !01036K0c
                                                                       !01036K0d
  02 DEV-IDX                              TYPE BINARY 16.              !01036K0e
                                                                       !01036K0f
*           Field specifies the number of entries being used in the    !01036K0g
*           DEV array. If ACCESS-TYP is 0, this value will always      !01036K0h
*           be 2. If ACCESS-TYP is 1, this value will be the number    !01036K0i
*           of valid SECURE-DEV-xx assigns that were read from the     !01036K0j
*           LCONF. A total of 20 security devices can be configured    !01036K0k
*           at one time.                                               !01036K0l
                                                                       !01036K0m
  02 DEV-CNT                              TYPE BINARY 16.              !01036K0n
                                                                       !01036K0o
*           Field specifies the device specific information for the   !!01037
*           primary and secondary security devices the process is to  !!01038
*           utilize.                                                  !!01039
                                                                       !01040
                                                                       !01041K00
  02 DEV                                  OCCURS 20 TIMES.             !01041K01
                                                                       !01041K02
                                                                       !01042
*                                                                     !!01043
*           Field specifies the internal form of the device name of   !!01044
*           the primary or secondary security device.  The external   !!01045
*           form was obtained from the LCONF by the security utilities!!01046
*           PIN^INIT and PINI^GET^CONFIG^INFO.                        !!01047
                                                                       !01048
     04 DNAMES                            PIC X(24).                   !01049
                                                                       !01050
     04 DNAME                             REDEFINES DNAMES             !01051
                                          TYPE BINARY 16               !01052
                                          OCCURS 12 TIMES.             !01053
                                                                       !01054
*           Field specifies the file number associated with the primary
*           or secondary security device obtained from the open of    !!01057
*           device.                                                   !!01058
                                                                       !01059
     04 FILENUM                           TYPE BINARY 16.              !01060
                                                                       !01061
*           Field specifies the security device subtype.  Currently, the
*           field is only applicable for Atalla Security Modules, and the
*           valid values are:                                         !!01066
*                              "A1" = ASM MN10150-A1                  !!01067
*                              "A2" = ASM MN10150-A2                  !!01068
*                              "A3" = ASM MN10150-A3                  !!01069
*                              "N1" = Network Security Processor      !!01070
*           Field will be initialized to blank for other security     !!01071
*           device types.                                             !!01072
                                                                       !01073
     04 SEC-DEV-SUBTYP                    PIC X(2).                    !01074
                                                                       !01075
     04 km0-version                       redefines sec-dev-subtyp     !01076
                                          type binary 16.              !01077
                                                                       !01078
*           Field specifies the number of times a critical error has  !!01079
*           occured for the device.  Each device is allowed three     !!01080
*           critical failures before the device is considered         !!01081
*           inoperable.                                               !!01082
                                                                       !01083
     04 FAIL-CNT                          TYPE BINARY 16.              !01084
                                                                       !01084K00
*           Field contains the timestamp giving the next time at       !01084K01
*           which the process should attempt to open the device. A     !01084K02
*           value of 0 indicates that the device is currently open or  !01084K03
*           that the process is not configured to reinstate devices    !01084K04
*           based on the time interval.                                !01084K05
                                                                       !01084K06
     04 NXT-REINSTATE-TIMESTAMP           TYPE AFM-TS.                 !01084K07
                                                                       !01084K08
                                                                       !01085
*           Field specifies the transaction interval that will occur  !!01086
*           before the utilities will put out a message indicating    !!01087
*           the failure of a security device. Value is obtained from  !!01088
*           the LCONF param SECURE-DEV-FAIL-NOTIFY.                   !!01089
*                                                                     !!01090
*               Maximum value:  1000                                  !!01091
*               Minimum value:  0010                                  !!01092
*               Default value:  0020                                  !!01093
                                                                       !01094
  02 NOTIFY-INTERVAL                      TYPE BINARY 16.              !01095
                                                                       !01096
*           Field specifies the time in hundredths of seconds to wait !!01097
*           for a response from the security device before it is      !!01098
                                                                       !01099
*           considered timed out.  Value is obtained from the LCONF   !!01100
*           PARAM SECURE-DEV-TIM-LMT.                                 !!01101
                                                                       !01102
                                                                       !01103
*               Maximum value:  6000 (60 seconds)                     !!01104
*               Default value:   500 ( 5 seconds)                     !!01105
                                                                       !01106
*           If the PARAM is not found in the LCONF or the time specified
*           is greater than the maximum value, the default value will !!01109
*            be utilized by the utilities.                            !!01110
                                                                       !01111
  02 TIMEOUT                              TYPE BINARY 32.              !01112
                                                                       !01113
*             The number of primary security device requests to       !!01114
*             process prior to sending the request to the secondary   !!01115
*             security device.  This will in effect allow the customer!!01116
*             to monitor the secondary device and report on any       !!01117
*             failure prior to actually needing the secondary security!!01118
*             device for transaction processing.  If utilitized, this !!01119
*             field is used in conjunction with the PRI-DEV-RQST-CNT  !!01120
*             field.  Both fields will maintain information only for  !!01121
*             the process to which this specific SDCB is related.     !!01122
*                                                                     !!01123
*             This value is obtained from the LCONF param SECURE-DEV- !!01124
*             MONITOR THRESHOLD.  Valid Values are:                   !!01125
*                                                                     !!01126
*             0 = Do not utilize the secondary security device        !!01127
*                 monitoring functionality (default).                 !!01128
*                                                                     !!01129
*             1-32,000 = Number of device requests to process using   !!01130
*                        the primary security device prior to checking!!01131
*                        the secondary security device.               !!01132
                                                                       !01133
  02 MONITOR-THRESHOLD                    TYPE BINARY 16.              !01134
                                                                       !01135
*          A count of the number of security device requests processed!!01136
*          by the primary security device.  This count is only        !!01137
*          incremented if the MONITOR-THRESHOLD value is greater than !!01138
*          0 (zero).  Both fields will maintain information only for  !!01139
*          the process to which this specific SDCB is related.        !!01140
                                                                       !01141
  02 PRI-DEV-RQST-CNT                     TYPE BINARY 16.              !01142
                                                                       !01142N00
*          The segment id of the flat segment used by SECUTILS.        !01142N01
                                                                       !01142N02
  02 SECUTILS-SEG-ID                      TYPE BINARY 16.              !01142N03
                                                                       !01142N04
*          The beginning address of the flat segment used by SECUTILS. !01142N05
                                                                       !01142N06
  02 SECUTILS-SEG-ADDR                    TYPE BINARY 32.              !01142N07
                                                                       !01142N08
  END                                                                  !01143
                                                                       !01144
?page
?section seg-lgth
                                                                       !01144B00
                                                                       !01144E00
*           This defines the length of the segment.                    !01144E01
                                                                       !01144E02
                                                                       !01144B02
DEFINITION SEG-LGTH.                                                   !01144B03
                                                                       !01144B04
*                                                                      !01144B05
                                                                       !01144E03
*           The segment length.                                        !01144E04
                                                                       !01144E05
*                                                                      !01144B07
     04 LGTH                      TYPE BINARY 16.                      !01144B08
                                                                       !01144B09
*           Contains information about this segment.                   !01144B0A
                                                                       !01144B0B
     04 SEG-DATA.                                                      !01144B0C
                                                                       !01144B0D
                                                                       !01144E06
                                                                       !01144E07
*           Identifies the segment id from the SEG-TABLE for           !01144E08
*           this segment.                                              !01144E09
                                                                       !01144E0A
                                                                       !01144B0G
        06 ID                     TYPE BINARY 16.                      !01144B0H
                                                                       !01144B0I
                                                                       !01144C00
*           Replaces SS-TBL which was never implemented.               !01144C01
                                                                       !01144C02
        06 B24-RSRVD              TYPE BINARY 32.                      !01144C03
                                                                       !01144C04
                                                                       !01144C05
                                                                       !01144C06
                                                                       !01144C07
END                                                                    !01144B12
                                                                       !01144B13
?section segx-lgth
                                                                       !01144B16
                                                                       !01144E0B
*           This defines the length of the segment.                    !01144E0C
                                                                       !01144E0D
*           Used by Refresh.                                           !01144B18
                                                                       !01144B19
DEFINITION SEGX-LGTH.                                                  !01144B1A
                                                                       !01144B1B
                                                                       !01144E0E
*           The segment length.                                        !01144E0F
                                                                       !01144E0G
                                                                       !01144B1D
     04 LGTH                      PIC 9(4).                            !01144B1E
*                                                                      !01144B1F
*           Contains information about this segment.                   !01144B1G
*                                                                      !01144B1H
     04 SEG-DATA.                                                      !01144B1I
*                                                                      !01144B1J
                                                                       !01144E0H
*           Identifies the segment id from the SEG-TABLE for           !01144E0I
                                                                       !01144E0J
*           this segment.                                              !01144B1L
*                                                                      !01144B1M
        06 ID                     PIC 9(4).                            !01144B1N
*                                                                      !01144B1O
                                                                       !01144C08
*           Replaces SS-TBL which was never used.                      !01144C09
                                                                       !01144C0A
        06 B24-RSRVD              PIC X(8).                            !01144C0B
                                                                       !01144C0C
                                                                       !01144C0D
                                                                       !01144C0E
                                                                       !01144C0F
                                                                       !01144B28
END                                                                    !01144B29
                                                                       !01144B2A
                                                                       !01149B00
                                                                       !01149B01
                                                                       !01149B02
                                                                       !01202
?page
?section set-rec
                                                                       !01207
DEFINITION SET-REC1.                                                   !01208
                                                                       !01209
*         "0500" = reconciliation record                              !!01210
                                                                       !01211
     04 TYP                     PIC 9(4).                              !01212
                                                                       !01213
*         Posting date for this settlement record.                    !!01214
                                                                       !01215
     04 POST-DAT                TYPE DAT.                              !01216
                                                                       !01217
*         Product id. POS - '02'                                      !!01218
                                                                       !01219
     04 PROD-ID                 PIC 99.                                !01220
                                                                       !01221
*         Release number.                                             !!01222
                                                                       !01223
     04 REL-NUM                 PIC 99.                                !01224
                                                                       !01225
*         Host DPC number.                                            !!01226
                                                                       !01227
     04 DPC-NUM                 TYPE BINARY 16.                        !01228
                                                                       !01229
*         Terminal time offset.                                       !!01230
                                                                       !01231
     04 TERM-TIM-OFST           TYPE BINARY 16.                        !01232
                                                                       !01233
*         Terminal id.                                                !!01234
                                                                       !01235
     04 TERM-ID                 PIC X(16).                             !01236
                                                                       !01237
                                                                       !01238
*        account number, name, route/transit.                         !!01239
                                                                       !01240
     04 RETL.                                                          !01241
                                                                       !01242
                                                                       !01243
        06 RTTN                 TYPE ID-NUM.                           !01244
        06 ACCT                 TYPE ACCT.                             !01245
        06 NAM                  PIC X(40).                             !01246
        06 USER-FLD1            PIC X.                                 !01247
                                                                       !01248
*       Type of settlement record.                                    !!01249
*                                                                     !!01250
*          0 = Batch                                                  !!01251
*          1 = Shift                                                  !!01252
*          2 = Daily                                                  !!01253
*          3 = Network                                                !!01254
*          4 = Clerk totals                                           !!01255
*          5 = Retailer (daily totals)                                !!01256
                                                                       !01256N00
*          6 = Interface totals                                       !!01256N01
*          7 = Interface Service totals                               !!01256N02
*          8 = Services (18-30)                                       !!01256N03
*          9 = Services (1-17)                                        !!01256N04
                                                                       !01256N05
                                                                       !01257N00
                                                                       !01257N01
                                                                       !01257N02
                                                                       !01259
                                                                       !01260
     04 SETL-TYP                PIC 9.                                 !01261
                                                                       !01262
*          5 = PTDF totals                                            !!01263
*          6 = Terminal totals                                        !!01264
*          8 = Forced (incomplete batch)                              !!01265
*          9 = Forced                                                 !!01266
                                                                       !01267
     04 BAL-FLG                 PIC 9.                                 !01268
                                                                       !01269
     04 USER-FLD2               PIC X.                                 !01270
                                                                       !01271
*          These fields contain the time and date of this transaction.!!01272
                                                                       !01273
     04 TRAN-DAT                TYPE DAT.                              !01274
     04 TRAN-TIM                PIC X(6).                              !01275
                                                                       !01276
*         For a terminal out of balance with Tandem this flag will    !!01277
*         indicate if this balancing record has an associated balancing
*         record. Type 5 & 6 records as indicated above in BAL-FLAG.  !!01280
*                                                                     !!01281
*            "0" - No associated record                               !!01282
*            "1" - Has associated record                              !!01283
                                                                       !01284
     04 OB-FLG                  PIC X.                                 !01285
                                                                       !01286
*         ACH Company ID.                                             !!01287
                                                                       !01288
     04 ACH-COMP-ID             PIC X(10).                             !01289
                                                                       !01290
*         Terminal Billig Info.                                       !!01291
                                                                       !01292
     04 BILLING-INFO            PIC X(10).                             !01293
     04 AUTH-CRNCY-CDE          TYPE CRNCY-CDE.                        !01294
     04 AUTH-CONV-RATE          PIC X(8).                              !01295
     04 SETL-CRNCY-CDE          TYPE CRNCY-CDE.                        !01296
     04 SETL-CONV-RATE          PIC X(8).                              !01297
                                                                       !01298
END                                                                    !01299
?page
DEFINITION SET-REC2.                                                   !01302
                                                                       !01303
     04 STL.                                                           !01304
                                                                       !01305
*    The following totals contain count and amount of debits, credits !!01306
*    and adjustments for the draft capture totals.                    !!01307
                                                                       !01308
        06 DC-TOT.                                                     !01309
           08 DB-CNT                 TYPE BINARY 16.                   !01310
           08 DB                     TYPE BINARY 64.                   !01311
           08 CR-CNT                 TYPE BINARY 16.                   !01312
           08 CR                     TYPE BINARY 64.                   !01313
           08 ADJ-CNT                TYPE BINARY 16.                   !01314
           08 ADJ                    TYPE BINARY 64.                   !01315
                                                                       !01316
*    The following totals contain count and amount of debits, credits !!01317
*    and adjustments for draft capture and non-draft capture totals.  !!01318
                                                                       !01319
        06 TOT.                                                        !01320
           08 DB-CNT                 TYPE BINARY 16.                   !01321
           08 DB                     TYPE BINARY 64.                   !01322
           08 CR-CNT                 TYPE BINARY 16.                   !01323
           08 CR                     TYPE BINARY 64.                   !01324
           08 ADJ-CNT                TYPE BINARY 16.                   !01325
           08 ADJ                    TYPE BINARY 64.                   !01326
                                                                       !01327
*    The following totals contain count and amount of debits, credits !!01328
*    and adjustments for the current network draft capture totals.    !!01329
                                                                       !01330
        06 CN-DC-TOT.                                                  !01331
           08 DB-CNT                 TYPE BINARY 16.                   !01332
           08 DB                     TYPE BINARY 64.                   !01333
           08 CR-CNT                 TYPE BINARY 16.                   !01334
           08 CR                     TYPE BINARY 64.                   !01335
           08 ADJ-CNT                TYPE BINARY 16.                   !01336
           08 ADJ                    TYPE BINARY 64.                   !01337
                                                                       !01338
*    The following totals contain count and amount of debits, credits !!01339
*    and adjustments for current network totals.                      !!01340
                                                                       !01341
        06 CN-TOT.                                                     !01342
           08 DB-CNT                 TYPE BINARY 16.                   !01343
           08 DB                     TYPE BINARY 64.                   !01344
           08 CR-CNT                 TYPE BINARY 16.                   !01345
           08 CR                     TYPE BINARY 64.                   !01346
           08 ADJ-CNT                TYPE BINARY 16.                   !01347
           08 ADJ                    TYPE BINARY 64.                   !01348
END                                                                    !01349
                                                                       !01350
?page
                                                                       !01353
DEFINITION SET-REC3.                                                   !01354
                                                                       !01355
                                                                       !01356
*           This field contains the number of actual occurances of    !!01357
*           services listed below. Note if there are more than 17     !!01358
*           services, for example 27 services, the NUM-SRV will be    !!01359
*           27, SET-REC3 will have the first 17 services, and         !!01360
*           SET-REC4 will have the last 10 services.                  !!01361
                                                                       !01362
                                                                       !01363
     04 NUM-SRV                      TYPE BINARY 16.                   !01364
                                                                       !01365
                                                                       !01366
     04 SRV                          OCCURS 17 TIMES.                  !01367
                                                                       !01368
*           This field describes the type of card.                    !!01369
*                                                                     !!01370
*               "AD" = Admin Card                                     !!01371
*               "AX" = American Express                               !!01372
*               "BD" = Business Deposit                               !!01373
*               "C " = Proprietary Credit                             !!01374
*               "CB" = Carte Blanche                                  !!01375
*               "D " = Demo Card                                      !!01376
*               "DC" = Diners Club                                    !!01377
*               "M " = MasterCard Credit                              !!01378
*               "MD" = MasterCard Debit                               !!01379
*               "MM" = MasterCard Dual                                !!01380
*               "P " = Proprietary Debit                              !!01381
*               "V " = VISA Credit                                    !!01382
*               "VD" = VISA Debit                                     !!01383
*               "VV" = VISA Dual                                      !!01384
                                                                       !01385
        06 TYP                    PIC XX.                              !01386
        06 DB-CNT                 TYPE BINARY 16.                      !01387
        06 DB                     TYPE BINARY 64.                      !01388
        06 CR-CNT                 TYPE BINARY 16.                      !01389
        06 CR                     TYPE BINARY 64.                      !01390
        06 ADJ-CNT                TYPE BINARY 16.                      !01391
        06 ADJ                    TYPE BINARY 64.                      !01392
                                                                       !01393
END                                                                    !01394
                                                                       !01395
?page
DEFINITION SET-REC4.                                                   !01398
                                                                       !01399
*           SET-REC4 will be used if the number of actual occurances  !!01400
*           of services in the SET-REC3 is more than 17.              !!01401
                                                                       !01402
     04 SRV                          OCCURS 13 TIMES.                  !01403
                                                                       !01404
*           This field describes the type of card.                    !!01405
*                                                                     !!01406
*               "AD" = Admin Card                                     !!01407
*               "AX" = American Express                               !!01408
*               "BD" = Business Deposit                               !!01409
*               "C " = Proprietary Credit                             !!01410
*               "CB" = Carte Blanche                                  !!01411
*               "D " = Demo Card                                      !!01412
*               "DC" = Diners Club                                    !!01413
*               "M " = MasterCard Credit                              !!01414
*               "MD" = MasterCard Debit                               !!01415
*               "MM" = MasterCard Dual                                !!01416
*               "P " = Proprietary Debit                              !!01417
*               "V " = VISA Credit                                    !!01418
*               "VD" = VISA Debit                                     !!01419
*               "VV" = VISA Dual                                      !!01420
                                                                       !01421
        06 TYP                    PIC XX.                              !01422
        06 DB-CNT                 TYPE BINARY 16.                      !01423
        06 DB                     TYPE BINARY 64.                      !01424
        06 CR-CNT                 TYPE BINARY 16.                      !01425
        06 CR                     TYPE BINARY 64.                      !01426
        06 ADJ-CNT                TYPE BINARY 16.                      !01427
        06 ADJ                    TYPE BINARY 64.                      !01428
                                                                       !01429
END                                                                    !01430
                                                                       !01431
?page
DEFINITION SET-REC5.                                                   !01434
                                                                       !01435
*           SET-REC5 will be used for clerk totals.                   !!01436
*           The following fields contain debit, credit,               !!01437
*           adjustment, cash advance/back, and check                  !!01438
*           counts and amounts.                                       !!01439
                                                                       !01440
     04 DB-CNT                 TYPE BINARY 16.                         !01441
     04 DB-AMT                 TYPE BINARY 64.                         !01442
     04 CR-CNT                 TYPE BINARY 16.                         !01443
     04 CR-AMT                 TYPE BINARY 64.                         !01444
     04 ADJ-CNT                TYPE BINARY 16.                         !01445
     04 ADJ-AMT                TYPE BINARY 64.                         !01446
     04 CASH-CNT               TYPE BINARY 16.                         !01447
     04 CASH-AMT               TYPE BINARY 64.                         !01448
     04 CHK-CNT                TYPE BINARY 16.                         !01449
     04 CHK-AMT                TYPE BINARY 64.                         !01450
END.                                                                   !01451
?page
*                                                                     !!01451J00
*    If the settlement type field, SETL-TYP, is equal to "6"          !!01451J01
*    (interface totals), the structure, SET-REC, will be replaced     !!01451J02
*    by SET-REC6.                                                     !!01451J03
                                                                       !01451J04
DEFINITION SET-REC6.                                                   !01451J05
                                                                       !01451J06
*    The type of reconciliation/settlement totals generated for this  !!01451J07
*    Passthru entity is indicated by the following indicator, with    !!01451J08
*    possible values as follows:                                      !!01451J09
*          "1" - DPC settlement record                                !!01451J0A
*          "2" - Retailer settlement                                  !!01451J0B
*          "3" - Terminal settlement                                  !!01451J0C
*          "4" - Retailer Group settlement                            !!01451J0D
*          "5" - Clerk ID settlement                                  !!01451J0E
                                                                       !01451J0F
     04 TOTALS-TYP                   PIC X.                            !01451J0G
                                                                       !01451J0H
*    The following info indicates the reconciliation identifier       !!01451J0I
*    for this transaction.                                            !!01451J0J
                                                                       !01451J0K
     04 SETL-ID                      PIC X(25).                        !01451J0L
                                                                       !01451J0M
*    The card type for which this settlement record is generated.     !!01451J0N
                                                                       !01451J0O
     04 CARD-TYP                     PIC X(2).                         !01451J0P
                                                                       !01451J0Q
*    The following totals contain count and amount of debits, credits !!01451J0R
*    and adjustments for the draft capture totals.                    !!01451J0S
                                                                       !01451J0T
     04 DC-TOT.                                                        !01451J0U
        06 DB-CNT                 TYPE BINARY 32.                      !01451J0V
        06 DB                     TYPE BINARY 64.                      !01451J0W
        06 CR-CNT                 TYPE BINARY 32.                      !01451J0X
        06 CR                     TYPE BINARY 64.                      !01451J0Y
        06 ADJ-CNT                TYPE BINARY 32.                      !01451J0Z
        06 ADJ                    TYPE BINARY 64.                      !01451J0a
                                                                       !01451J0b
*    The following totals contain count and amount of debits, credits !!01451J0c
*    and adjustments for draft capture and non-draft capture totals.  !!01451J0d
                                                                       !01451J0e
     04 TOT.                                                           !01451J0f
        06 DB-CNT                 TYPE BINARY 32.                      !01451J0g
        06 DB                     TYPE BINARY 64.                      !01451J0h
        06 CR-CNT                 TYPE BINARY 32.                      !01451J0i
        06 CR                     TYPE BINARY 64.                      !01451J0j
        06 ADJ-CNT                TYPE BINARY 32.                      !01451J0k
        06 ADJ                    TYPE BINARY 64.                      !01451J0l
                                                                       !01451J0m
     04 FILLER                    PIC X(20).                           !01451J0n
                                                                       !01451J0o
END                                                                    !01451J0p
?Page
*                                                                     !!01451J0s
*    If the settlement type field, SETL-TYP is equal to "7"           !!01451J0t
*    (interface totals), the structure SET-REC3, will be replaced     !!01451J0u
*    by SET-REC7.                                                     !!01451J0v
                                                                       !01451J0w
DEFINITION SET-REC7.                                                   !01451J0x
                                                                       !01451J0y
*    The type of reconciliation/settlement totals generated for this  !!01451J0z
*    Passthru entity is indicated by the following indicator, with    !!01451J10
*    possible values as follows:                                      !!01451J11
*           "1" - DPC settlement record                               !!01451J12
*           "2" - Retailer settlement                                 !!01451J13
*           "3" - Terminal settlement                                 !!01451J14
*           "4" - Retailer Group settlement                           !!01451J15
*           "5" - Clerk ID settlement                                 !!01451J16
                                                                       !01451J17
     04 TOTALS-TYP                   PIC X(1).                         !01451J18
                                                                       !01451J19
*    The following info indicates the reconciliation identifier       !!01451J1A
*    for this transaction.                                            !!01451J1B
                                                                       !01451J1C
     04 SETL-ID                      PIC X(25).                        !01451J1D
                                                                       !01451J1E
*    The number of services contained for this settlement entity - up !!01451J1F
*    to 13 per record allows for up to three of ML services settlement!!01451J1G
*    records.  The other one or two records will contain zero in this !!01451J1H
*    field to indicate continuation of a previous list.               !!01451J1I
                                                                       !01451J1J
     04 NUM-SRV                      TYPE BINARY.                      !01451J1K
                                                                       !01451J1L
     04 SRV                          OCCURS 13 TIMES.                  !01451J1M
                                                                       !01451J1N
*    The type of card (two character mnemonic).                       !!01451J1O
                                                                       !01451J1P
        06 TYP                       PIC X(2).                         !01451J1Q
                                                                       !01451J1R
*    The following totals contain count and amount of debits, credits !!01451J1S
*    and adjustmennts for the draft capture totals.                   !!01451J1T
                                                                       !01451J1U
        06 DB-CNT                    TYPE BINARY 32.                   !01451J1V
        06 DB                        TYPE BINARY 64.                   !01451J1W
        06 CR-CNT                    TYPE BINARY 32.                   !01451J1X
        06 CR                        TYPE BINARY 64.                   !01451J1Y
        06 ADJ-CNT                   TYPE BINARY 32.                   !01451J1Z
        06 ADJ                       TYPE BINARY 64.                   !01451J1a
                                                                       !01451J1b
     04 FILLER                       PIC X(29).                        !01451J1c
                                                                       !01451J1d
END                                                                    !01451J1e
?page
?section set-recx
                                                                       !01451J1j
                                                                       !01456
                                                                       !01457
DEFINITION FSET-RECX1.                                                 !01458
                                                                       !01459
*         Posting date for this settlement record.                    !!01460
                                                                       !01461
     04 POST-DAT                TYPE DAT.                              !01462
                                                                       !01463
*         Terminal id.                                                !!01464
                                                                       !01465
     04 TERM-ID                 PIC X(16).                             !01466
                                                                       !01467
*       Type of settlement record.                                    !!01468
*                                                                     !!01469
*          0 = Batch                                                  !!01470
*          1 = Shift                                                  !!01471
*          2 = Daily                                                  !!01472
*          9 = Services                                               !!01473
                                                                       !01474
     04 SETL-TYP                PIC 9.                                 !01475
                                                                       !01476
*          5 = TAN totals                                             !!01477
*          6 = Terminal totals                                        !!01478
                                                                       !01479
     04 BAL-FLG                 PIC X.                                 !01480
                                                                       !01481
*          Batch number within shift.                                 !!01482
                                                                       !01483
     04 BATCH-NUM               PIC 9(3).                              !01484
                                                                       !01485
*          Shift number                                               !!01486
                                                                       !01487
     04 SHIFT-NUM               PIC 9(3).                              !01488
                                                                       !01489
*          Day number                                                 !!01490
                                                                       !01491
     04 DAY-NUM                 PIC 9(3).                              !01492
                                                                       !01493
*          These fields contain the time and date of this transaction.!!01494
                                                                       !01495
     04 TRAN-DAT                TYPE DAT.                              !01496
     04 TRAN-TIM                PIC X(6).                              !01497
                                                                       !01498
*         For a terminal out of balance with Tandem this flag will    !!01499
*         indicate if this balancing record has an associated         !!01500
*         balancing record. Type 5 & 6 records as indicated above in  !!01501
*         BAL-FLAG.                                                   !!01502
*                                                                     !!01503
*            "0" - Terminal in balance                                !!01504
*            "1" - Terminal out of balance; has associated record     !!01505
*            "2" - Terminal out of balance; no associated record      !!01506
                                                                       !01507
     04 OB-FLG                  PIC X.                                 !01508
                                                                       !01509
*         This field contains an amount total, calculated as debits   !!01510
*         less credits less adjustments.                              !!01511
                                                                       !01512
     04 SRV-TOT                 PIC 9(18).                             !01513
                                                                       !01514
END                                                                    !01515
                                                                       !01516
?page
                                                                       !01519
                                                                       !01520
                                                                       !01521
DEFINITION SET-RECX1A.                                                 !01522
                                                                       !01523
                                                                       !01524
*         Posting date for this settlement record.                    !!01525
                                                                       !01526
     04 POST-DAT                TYPE DAT.                              !01527
                                                                       !01528
*         Host DPC number.                                            !!01529
                                                                       !01530
     04 DPC-NUM                 PIC 9(4).                              !01531
                                                                       !01532
*         Terminal id.                                                !!01533
                                                                       !01534
     04 TERM-ID                 PIC X(16).                             !01535
                                                                       !01536
*        Account number, name, route/transit.                         !!01537
                                                                       !01538
     04 RETL.                                                          !01539
                                                                       !01540
        06 RTTN                 TYPE ID-NUM.                           !01541
        06 ACCT                 PIC X(28).                             !01542
        06 NAM                  PIC X(40).                             !01543
                                                                       !01544
*       Type of settlement record.                                    !!01545
*                                                                     !!01546
*          0 = Batch                                                  !!01547
*          1 = Shift                                                  !!01548
*          2 = Daily                                                  !!01549
*          3 = Network                                                !!01550
*          4 = Clerk totals                                           !!01551
*          5 = Retailer (daily totals)                                !!01552
                                                                       !01553
     04 SETL-TYP                PIC 9.                                 !01554
                                                                       !01555
*          5 = PTDF totals                                            !!01556
*          6 = Terminal totals                                        !!01557
*          8 = Forced (incomplete batch)                              !!01558
*          9 = Forced                                                 !!01559
                                                                       !01560
     04 BAL-FLG                 PIC X.                                 !01561
                                                                       !01562
*          Batch number within shift.                                 !!01563
                                                                       !01564
     04 BATCH-NUM               PIC 9(3).                              !01565
                                                                       !01566
*          Shift number                                               !!01567
                                                                       !01568
     04 SHIFT-NUM               PIC 9(3).                              !01569
                                                                       !01570
*          These fields contain the time and date of this transaction.!!01571
                                                                       !01572
     04 TRAN-DAT                TYPE DAT.                              !01573
     04 TRAN-TIM                PIC X(6).                              !01574
                                                                       !01575
*         For a terminal out of balance with Tandem this flag will    !!01576
*         indicate if this balancing record has an associated balancing
*         record. Type 5 & 6 records as indicated above in BAL-FLAG.  !!01579
*                                                                     !!01580
*            "0" - No associated record                               !!01581
*            "1" - Has associated record                              !!01582
                                                                       !01583
     04 OB-FLG                  PIC X.                                 !01584
                                                                       !01585
*         ACH Company ID.                                             !!01586
                                                                       !01587
     04 ACH-COMP-ID             PIC X(10).                             !01588
                                                                       !01589
*         Terminal Billig Info.                                       !!01590
                                                                       !01591
     04 BILLING-INFO            PIC X(10).                             !01592
                                                                       !01593
     04 AUTH-CRNCY-CDE          PIC X(3).                              !01594
     04 AUTH-CONV-RATE          PIC X(8).                              !01595
     04 SETL-CRNCY-CDE          PIC X(3).                              !01596
     04 SETL-CONV-RATE          PIC X(8).                              !01597
                                                                       !01598
END                                                                    !01599
?page
                                                                       !01602
DEFINITION SET-RECX1B.                                                 !01603
                                                                       !01604
     04 STL.                                                           !01605
                                                                       !01606
*    The following totals contain count and amount of debits, credits !!01607
*    and adjustments for the draft capture totals.                    !!01608
                                                                       !01609
        06 DC-TOT.                                                     !01610
           08 DB-CNT                 PIC 9(4).                         !01611
           08 DB                     PIC 9(18).                        !01612
           08 CR-CNT                 PIC 9(4).                         !01613
           08 CR                     PIC 9(18).                        !01614
           08 ADJ-CNT                PIC 9(4).                         !01615
           08 ADJ                    PIC 9(18).                        !01616
                                                                       !01617
*    The following totals contain count and amount of debits, credits !!01618
*    and adjustments for draft capture and non-draft capture totals.  !!01619
                                                                       !01620
        06 TOT.                                                        !01621
           08 DB-CNT                 PIC 9(4).                         !01622
           08 DB                     PIC 9(18).                        !01623
           08 CR-CNT                 PIC 9(4).                         !01624
           08 CR                     PIC 9(18).                        !01625
           08 ADJ-CNT                PIC 9(4).                         !01626
           08 ADJ                    PIC 9(18).                        !01627
                                                                       !01628
*    The following totals contain count and amount of debits, credits !!01629
*    and adjustments for the current network draft capture totals.    !!01630
                                                                       !01631
        06 CN-DC-TOT.                                                  !01632
           08 DB-CNT                 PIC 9(4).                         !01633
           08 DB                     PIC 9(18).                        !01634
           08 CR-CNT                 PIC 9(4).                         !01635
           08 CR                     PIC 9(18).                        !01636
           08 ADJ-CNT                PIC 9(4).                         !01637
           08 ADJ                    PIC 9(18).                        !01638
                                                                       !01639
*    The following totals contain count and amount of debits, credits !!01640
*    and adjustments for the current network totals.                  !!01641
                                                                       !01642
        06 CN-TOT.                                                     !01643
           08 DB-CNT                 PIC 9(4).                         !01644
           08 DB                     PIC 9(18).                        !01645
           08 CR-CNT                 PIC 9(4).                         !01646
           08 CR                     PIC 9(18).                        !01647
           08 ADJ-CNT                PIC 9(4).                         !01648
           08 ADJ                    PIC 9(18).                        !01649
                                                                       !01650
END                                                                    !01651
                                                                       !01652
?page
DEFINITION SET-RECX2.                                                  !01655
                                                                       !01656
*           This field contains the number of actual occurances of    !!01657
*           services listed below.                                    !!01658
                                                                       !01659
     04 NUM-SRV                      PIC 9(4).                         !01660
                                                                       !01661
     04 SRV                          OCCURS 10 TIMES.                  !01662
                                                                       !01663
*           This field describes the type of card.                    !!01664
*                                                                     !!01665
*               "AD" = Admin Card                                     !!01666
*               "AX" = American Express                               !!01667
*               "BD" = Business Deposit                               !!01668
*               "C " = Proprietary Credit                             !!01669
*               "CB" = Carte Blanche                                  !!01670
*               "D " = Demo Card                                      !!01671
*               "DC" = Diners Club                                    !!01672
*               "M " = MasterCard Credit                              !!01673
*               "MD" = MasterCard Debit                               !!01674
*               "MM" = MasterCard Dual                                !!01675
*               "P " = Proprietary Debit                              !!01676
*               "V " = VISA Credit                                    !!01677
*               "VD" = VISA Debit                                     !!01678
*               "VV" = VISA Dual                                      !!01679
                                                                       !01680
        06 TYP                    PIC XX.                              !01681
        06 DB-CNT                 PIC 9(4).                            !01682
        06 DB                     PIC 9(18).                           !01683
        06 CR-CNT                 PIC 9(4).                            !01684
        06 CR                     PIC 9(18).                           !01685
        06 ADJ-CNT                PIC 9(4).                            !01686
        06 ADJ                    PIC 9(18).                           !01687
                                                                       !01688
END                                                                    !01689
                                                                       !01690
?page
DEFINITION SET-RECX5.                                                  !01693
                                                                       !01694
*           SET-RECX5 will be used for clerk totals.                  !!01695
*           The following fields contain debit, credit, adjustment,   !!01696
*           cash advance/back, and check counts and amounts.          !!01697
                                                                       !01698
     04 DB-CNT                 PIC 9(4).                               !01699
     04 DB-AMT                 PIC 9(18).                              !01700
     04 CR-CNT                 PIC 9(4).                               !01701
     04 CR-AMT                 PIC 9(18).                              !01702
     04 ADJ-CNT                PIC 9(4).                               !01703
     04 ADJ-AMT                PIC 9(18).                              !01704
     04 CASH-CNT               PIC 9(4).                               !01705
     04 CASH-AMT               PIC 9(18).                              !01706
     04 CHK-CNT                PIC 9(4).                               !01707
     04 CHK-AMT                PIC 9(18).                              !01708
END.                                                                   !01709
                                                                       !01710
?page
?section ssn
                                                                       !01715
*           This defines a persons Social Security Number.            !!01716
                                                                       !01717
DEFINITION SSN                          PIC 9(9).                      !01718
                                                                       !01719
?section sym-name
                                                                       !01722
*           Symbolic process, line or device name.                    !!01723
                                                                       !01724
DEFINITION SYM-NAME                     PIC X(16).                     !01725
                                                                       !01726
                                                                       !01727
?section tdf-prikey
                                                                       !01727C02
*           TDF is a generic acronym to represent the terminal data    !01727C03
*           files for all BASE24 products (i.e., ATD, PTD, TTD).       !01727C04
*                                                                      !01727C05
*           Unique key identifier for this terminal.                   !01727C06
                                                                       !01727C07
definition tdf-prikey.                                                 !01727C08
                                                                       !01727C09
                                                                       !01727D00
    04 ID                               PIC X(16).                     !01727D01
                                                                       !01727D02
                                                                       !01727C0B
END                                                                    !01727C0C
                                                                       !01727C0D
?section tim
                                                                       !01727C0G
                                                                       !01730
*           This field defines a time in Hours, Minutes, Seconds,     !!01731
*           Hundredths format.                                        !!01732
                                                                       !01733
DEFINITION TIM.                                                        !01734
    04  HH                              PIC X(2).                      !01735
                                                                       !01736
    04  MM                              PIC X(2).                      !01737
                                                                       !01738
    04  SS                              PIC X(2).                      !01739
                                                                       !01740
    04  TT                              PIC X(2).                      !01741
                                                                       !01742
END                                                                    !01743
                                                                       !01744
?page
?section tlf-base-tkn
?comments
                                                                       !01744C04
*             TLF Token - Binary format                                !01744C05
*                                                                      !01744C06
*             The TLF Token contains the transaction log file          !01744C07
*             name, the RBA, and alternate key data of the             !01744C08
*             record written to the transaction log file.  This        !01744C09
*             data is used by device handlers and AUTH to build        !01744C0A
*             a reversal message when the last transaction data        !01744C0B
*             is no longer known by the device handler.                !01744C0C
                                                                       !01744C0D
*             The fields in the TLF Token are described below.         !01744C0E
                                                                       !01744C0F
DEFINITION TLF-BASE-TKN.                                               !01744C0G
                                                                       !01744C0H
*             The Relative Byte Address (RBA) of the record in         !01744C0I
*             a transaction log file where the transaction was         !01744C0J
                                                                       !01744F00
                                                                       !01744F01
*             logged. For format 2 files, the RBA is 64 bits. For      !01744F02
*             format 1 files, the RBA is 32 bits.                      !01744F03
        02 RBA-64BIT                    TYPE BINARY 64.                !01744F04
        02 RBA REDEFINES RBA-64BIT      TYPE BINARY 32 OCCURS 2 TIMES. !01744F05
                                                                       !01744F06
                                                                       !01744C0N
*             The name of the Transaction Log File where               !01744C0O
*             the transaction was logged.                              !01744C0P
                                                                       !01744C0Q
                                                                       !01744D00
        02 TLF-NAM                      PIC X(35).                     !01744D01
                                                                       !01744D02
                                                                       !01744C0S
*             The token data retrieval option.  When the device        !01744C0T
*             handler is processing a reversal, this field indicates   !01744C0U
*             where the token data should be retrieved.  Valid values  !01744C0V
*             are:                                                     !01744C0W
*                                                                      !01744C0X
*             0 = no tokens included in the reversal message.          !01744C0Y
*             1 = TDF. Token data retrieved from the terminal data     !01744C0Z
*                      file, and appended to the reversal message.     !01744C10
*             2 = TLF. Token data retrieved from the Transaction Log   !01744C11
*                      File, and appended to the reversal message.     !01744C12
                                                                       !01744C13
        02 TKN-RETRV-OPT                PIC X.                         !01744C14
                                                                       !01744C15
*             The alternate key data of the record logged to a         !01744C16
*             transaction log file.                                    !01744C17
                                                                       !01744C18
        02 KEY-DATA                     PIC X(30).                     !01744C19
                                                                       !01744C1A
*             The alternate key data used by BASE24-atm.               !01744C1B
                                                                       !01744C1C
        02 ATM-KEY                      REDEFINES KEY-DATA.            !01744C1D
                                                                       !01744C1E
*             The values in the following fields identify the card     !01744C1F
*             issuer and cardholder associated with the transaction.   !01744C1G
                                                                       !01744C1H
            04 CRD.                                                    !01744C1I
                                                                       !01744C1J
*             The logical network associated with the card issuer.     !01744C1K
                                                                       !01744C1L
                                                                       !01744D03
                06 LN                   PIC X(4).                      !01744D04
                                                                       !01744D05
                                                                       !01744C1N
*             The FIID of the card issuer.                             !01744C1O
                                                                       !01744C1P
                                                                       !01744D06
                06 FIID                 PIC X(4).                      !01744D07
                                                                       !01744D08
                                                                       !01744C1R
*             The cardholder's Primary Account Number (PAN) for        !01744C1S
*             card initiated transactions.                             !01744C1T
                                                                       !01744C1U
                                                                       !01744D09
                06 PAN                  PIC X(19).                     !01744D0A
                                                                       !01744D0B
                                                                       !01744C1W
*             The member number associated with the cardholder's       !01744C1X
*             account number.                                          !01744C1Y
                                                                       !01744C1Z
                                                                       !01744D0C
                06 MBR-NUM              PIC X(3).                      !01744D0D
                                                                       !01744D0E
                                                                       !01744C21
*             The alternate key data used by BASE24-pos.               !01744C22
                                                                       !01744C23
        02 POS-KEY                      REDEFINES KEY-DATA.            !01744C24
                                                                       !01744C25
*             The values in the following fields identify the card     !01744C26
*             issuer and cardholder associated with the transaction.   !01744C27
                                                                       !01744C28
            04 CRD.                                                    !01744C29
                                                                       !01744C2A
*             The logical network associated with the card issuer.     !01744C2B
                                                                       !01744C2C
                                                                       !01744D0F
                06 LN                   PIC X(4).                      !01744D0G
                                                                       !01744D0H
                                                                       !01744C2E
*             The FIID of the card issuer.                             !01744C2F
                                                                       !01744C2G
                                                                       !01744D0I
                06 FIID                 PIC X(4).                      !01744D0J
                                                                       !01744D0K
                                                                       !01744C2I
*             The values in the following fields identify the card     !01744C2J
*             used in the transaction.                                 !01744C2K
                                                                       !01744C2L
                06 CARD.                                               !01744C2M
                                                                       !01744C2N
*             The card number identifying the card used in the         !01744C2O
*             transaction.                                             !01744C2P
                                                                       !01744C2Q
                                                                       !01744D0L
                   08 CRD-NUM           PIC X(19).                     !01744D0M
                                                                       !01744D0N
                                                                       !01744C2S
*             The member number associated with the card used in the   !01744C2T
*             transaction.                                             !01744C2U
                                                                       !01744C2V
                                                                       !01744D0O
                   08 MBR-NUM           PIC X(3).                      !01744D0P
                                                                       !01744D0Q
                                                                       !01744C2X
*             This flag indicator whether the transaction log file     !01744F07
*             is a format 1 or format 2 file.                          !01744F08
                                                                       !01744F09
        02 FILE-FRMT                    TYPE BINARY 16.                !01744F0A
                                                                       !01744F0B
                                                                       !01744F0C
*             Reserved for future use.                                 !01744F0D
                                                                       !01744F0E
        02 USER-FLD1                    PIC X(10).                     !01744F0F
?nocomments
                                                                       !01744F0I
                                                                       !01744C30
END                                                                    !01744C31
                                                                       !01744C32
?page
?section tlf-base-tknx
?comments
                                                                       !01744C39
*             TLF Token - ASCII format                                 !01744C3A
*                                                                      !01744C3B
*             Please refer to the binary definition of the             !01744C3C
*             TLF Token for field descriptions.                        !01744C3D
                                                                       !01744C3E
DEFINITION TLF-BASE-TKNX.                                              !01744C3F
                                                                       !01744C3G
                                                                       !01744F0J
        02 RBA                          PIC X(19).                     !01744F0K
                                                                       !01744F0L
                                                                       !01744D0R
        02 TLF-NAM                      PIC X(35).                     !01744D0S
                                                                       !01744D0T
        02 TKN-RETRV-OPT                PIC X.                         !01744C3J
        02 KEY-DATA                     PIC X(30).                     !01744C3K
        02 ATM-KEY                      REDEFINES KEY-DATA.            !01744C3L
           04 CRD.                                                     !01744C3M
                                                                       !01744D0U
                                                                       !01744D0V
               06 LN                    PIC X(4).                      !01744D0W
               06 FIID                  PIC X(4).                      !01744D0X
               06 PAN                   PIC X(19).                     !01744D0Y
               06 MBR-NUM               PIC X(3).                      !01744D0Z
                                                                       !01744D10
        02 POS-KEY                      REDEFINES KEY-DATA.            !01744C3R
           04 CRD.                                                     !01744C3S
                                                                       !01744D11
                                                                       !01744D12
               06 LN                    PIC X(4).                      !01744D13
               06 FIID                  PIC X(4).                      !01744D14
                                                                       !01744D15
               06 CARD.                                                !01744C3V
                                                                       !01744D16
                                                                       !01744D17
                    08 CRD-NUM          PIC X(19).                     !01744D18
                    08 MBR-NUM          PIC X(3).                      !01744D19
                                                                       !01744D1A
                                                                       !01744C3Y
        02 FILE-FRMT                    PIC X(5).                      !01744F0M
        02 USER-FLD1                    PIC X(10).                     !01744F0N
?nocomments
                                                                       !01744F0Q
                                                                       !01744C40
END                                                                    !01744C41
                                                                       !01744C42
?page
?section tlf-tkn-dev-data-part-1
?comments
                                                                       !01744F0X
*             This is the data from the TLF Token that is              !01744F0Y
*             saved in the device dependent data area of the           !01744F0Z
*             terminal data files.                                     !01744F10
                                                                       !01744F11
DEFINITION TLF-TKN-DEV-DATA-PART-1.                                    !01744F12
                                                                       !01744F13
*             The Relative Byte Address (RBA) of the record in         !01744F14
*             a transaction log file, a format 1 file, where           !01744F15
*             the transaction was logged.                              !01744F16
                                                                       !01744F17
        02 RBA                          TYPE BINARY 32.                !01744F18
                                                                       !01744F19
*             The name of the Transaction Log File where               !01744F1A
*             the transaction was logged.                              !01744F1B
                                                                       !01744F1C
        02 TLF-NAM                      PIC X(35).                     !01744F1D
                                                                       !01744F1E
*             The token data retrieval option.  When the device        !01744F1F
*             handler is processing a reversal, this field indicates   !01744F1G
*             where the token data should be retrieved.  Valid values  !01744F1H
*             are:                                                     !01744F1I
*                                                                      !01744F1J
*             0 = no tokens included in the reversal message.          !01744F1K
*             1 = TDF. Token data retrieved from the terminal data     !01744F1L
*                      file, and appended to the reversal message.     !01744F1M
*             2 = TLF. Token data retrieved from the Transaction Log   !01744F1N
*                      File, and appended to the reversal message.     !01744F1O
                                                                       !01744F1P
        02 TKN-RETRV-OPT                PIC X.                         !01744F1Q
                                                                       !01744F1R
*             The alternate key data of the record logged to a         !01744F1S
*             transaction log file.                                    !01744F1T
                                                                       !01744F1U
        02 KEY-DATA                     PIC X(30).                     !01744F1V
                                                                       !01744F1W
*             The alternate key data used by BASE24-atm.               !01744F1X
                                                                       !01744F1Y
        02 ATM-KEY                      REDEFINES KEY-DATA.            !01744F1Z
                                                                       !01744F20
*             The values in the following fields identify the card     !01744F21
*             issuer and cardholder associated with the transaction.   !01744F22
                                                                       !01744F23
            04 CRD.                                                    !01744F24
                                                                       !01744F25
*             The logical network associated with the card issuer.     !01744F26
                                                                       !01744F27
                06 LN                   PIC X(4).                      !01744F28
                                                                       !01744F29
*             The FIID of the card issuer.                             !01744F2A
                                                                       !01744F2B
                06 FIID                 PIC X(4).                      !01744F2C
                                                                       !01744F2D
*             The cardholder's Primary Account Number (PAN) for        !01744F2E
*             card initiated transactions.                             !01744F2F
                                                                       !01744F2G
                06 PAN                  PIC X(19).                     !01744F2H
                                                                       !01744F2I
*             The member number associated with the cardholder's       !01744F2J
*             account number.                                          !01744F2K
                                                                       !01744F2L
                06 MBR-NUM              PIC X(3).                      !01744F2M
                                                                       !01744F2N
*             The alternate key data used by BASE24-pos.               !01744F2O
                                                                       !01744F2P
        02 POS-KEY                      REDEFINES KEY-DATA.            !01744F2Q
                                                                       !01744F2R
*             The values in the following fields identify the card     !01744F2S
*             issuer and cardholder associated with the transaction.   !01744F2T
                                                                       !01744F2U
            04 CRD.                                                    !01744F2V
                                                                       !01744F2W
*             The logical network associated with the card issuer.     !01744F2X
                                                                       !01744F2Y
                06 LN                   PIC X(4).                      !01744F2Z
                                                                       !01744F30
*             The FIID of the card issuer.                             !01744F31
                                                                       !01744F32
                06 FIID                 PIC X(4).                      !01744F33
                                                                       !01744F34
*             The values in the following fields identify the card     !01744F35
*             used in the transaction.                                 !01744F36
                                                                       !01744F37
                06 CARD.                                               !01744F38
                                                                       !01744F39
*             The card number identifying the card used in the         !01744F3A
*             transaction.                                             !01744F3B
                                                                       !01744F3C
                   08 CRD-NUM           PIC X(19).                     !01744F3D
                                                                       !01744F3E
*             The member number associated with the card used in the   !01744F3F
*             transaction.                                             !01744F3G
                                                                       !01744F3H
                   08 MBR-NUM           PIC X(3).                      !01744F3I
                                                                       !01744F3J
?nocomments
                                                                       !01744F3M
END                                                                    !01744F3N
                                                                       !01744F3O
?section tlf-tkn-dev-data-part-2
?comments
                                                                       !01744F3T
*             Format 2 files were introduced after format 1            !01744F3U
*             files, and therefore this is the additional data         !01744F3V
*             that is required to be saved in the device dependent     !01744F3W
*             data area of the terminal data files.                    !01744F3X
                                                                       !01744F3Y
DEFINITION TLF-TKN-DEV-DATA-PART-2.                                    !01744F3Z
                                                                       !01744F40
*             The Relative Byte Address (RBA) of the record in         !01744F41
*             a transaction log file, a format 2 file, where the       !01744F42
*             transaction was logged.                                  !01744F43
                                                                       !01744F44
        02 RBA-FRMT-2                   TYPE BINARY 64.                !01744F45
                                                                       !01744F46
*             This flag indicator whether the transaction log file     !01744F47
*             is a format 1 or format 2 file.                          !01744F48
                                                                       !01744F49
        02 FILE-FRMT                    TYPE BINARY 16.                !01744F4A
                                                                       !01744F4B
?nocomments
                                                                       !01744F4E
END                                                                    !01744F4F
                                                                       !01744F4G
?section track2-ext
                                                                       !01744F4J
                                                                       !01744C45
                                                                       !01749
*           ANSI standard Track2 external format.                     !!01750
                                                                       !01751
DEFINITION TRACK2-EXT.                                                 !01752
                                                                       !01753
*          ANSI X9.2:  Data Element number 67, Bit Map position 62.   !!01754
*          This field contains Track II data, as sent by the Device to the
*          Device Handler.  AUTH will process this data and put it in a
*          format suitable for printing by the Device Handler.  The print
*          format follows.  (DH,AU)                                   !!01761
*                                                                     !!01762
*              1)  start sentinel (;)                                 !!01763
*              2)  PAN, left justified                                !!01764
*              3)  a field separator (=)                              !!01765
*              4)  expiration date (MMYY or YYMM)                     !!01766
*              5)  decretionary data                                  !!01767
*              6)  end sentinel (?)                                   !!01768
*                                                                     !!01769
*          Length of Track 2 data in bytes.                           !!01770
                                                                       !01771
     02 LGTH                   PIC 99.                                 !01772
                                                                       !01773
*          ANSI X9.2:  Data Element number 68.                        !!01774
*                                                                     !!01775
*          Actual Track 2 data.                                       !!01776
                                                                       !01777
     02 T2DATA                 PIC X(37).                              !01778
                                                                       !01779
END                                                                    !01780
                                                                       !01781
?page
?section track2-internal
                                                                       !01786
*           ANSI standard Track2 internal format.                     !!01787
                                                                       !01788
DEFINITION TRACK2-INTER.                                               !01789
                                                                       !01790
*          ANSI X9.2:  Data Element number 67, Bit Map position 62.   !!01791
*          This field contains Track II data, as sent by the Device to the
*          Device Handler.  AUTH will process this data and put it in a
*          format suitable for printing by the Device Handler.  The print
*          format follows.  (DH,AU)                                   !!01798
*                                                                     !!01799
*              1)  start sentinel (;)                                 !!01800
*              2)  PAN, left justified                                !!01801
*              3)  a field separator (=)                              !!01802
*              4)  expiration date (MMYY or YYMM)                     !!01803
*              5)  decretionary data                                  !!01804
*              6)  end sentinel (?)                                   !!01805
*                                                                     !!01806
*          Length of Track 2 data in bytes.                           !!01807
                                                                       !01808
     02 LGTH                   PIC 99.                                 !01809
                                                                       !01810
*          ANSI X9.2:  Data Element number 68.                        !!01811
*                                                                     !!01812
*          Actual Track 2 data.                                       !!01813
                                                                       !01814
     02 T2DATA                 PIC X(40).                              !01815
                                                                       !01816
END                                                                    !01817
                                                                       !01818
?page
?section track3
                                                                       !01823
*          ANSI standard Track3 format.  From the SEM.                !!01824
                                                                       !01825
DEFINITION TRACK3.                                                     !01826
                                                                       !01827
*          ANSI X9.2:  Data Element number 69, Bit Map position 63.   !!01828
*                                                                     !!01829
*          Length of Track 3 data                                     !!01830
                                                                       !01831
     02 LGTH                   PIC 999.                                !01832
                                                                       !01833
*          ANSI X9.2:  Data Element number 70.                        !!01834
*                                                                     !!01835
*          Actual data                                                !!01836
                                                                       !01837
     02 T3DATA                 PIC X(104).                             !01838
                                                                       !01839
END                                                                    !01840
                                                                       !01841
?page
?section user-data
                                                                       !01841C02
?comments
*                                                                     !!01848
*              User-defined information that BASE24-pos can carry in  !!01849
*              its internal message but does not recognize and does   !!01850
*              not use for processing.                                !!01851
*                                                                     !!01852
*              This user data is available for all messages, but is   !!01853
*              appended to the message only if the DATA-FLAG field is !!01854
*              set to 1.                                              !!01855
*                                                                     !!01856
DEFINITION USER-DATA.                                                  !01857
                                                                       !01858
*                                                                     !!01859
*              The length of the variable information in the USER-    !!01860
*              DATA.INFO field.                                       !!01861
*                                                                     !!01862
 02 LEN                    TYPE BINARY 16.                             !01863
                                                                       !01864
*                                                                     !!01865
*              User-defined information that BASE24 can carry in its  !!01866
*              internal message.                                      !!01867
*                                                                     !!01868
 02 INFO                   PIC X(200).                                 !01869
                                                                       !01870
END                                                                    !01871
?nocomments
                                                                       !01874
?page
?section uid
*           This defines a Corporate User ID                          !!01879
                                                                       !01880
DEFINITION UID                    PIC X(16).                           !01881
                                                                       !01882
?page
?section ver
?comments
                                                                       !01882C06
*           This field defines a version which is associated with      !01882C07
*           a file (unsegmented) or segment.                           !01882C08
                                                                       !01882C09
DEFINITION VER                    TYPE BINARY 16.                      !01882C0A
                                                                       !01882C0B
?nocomments
?page
?section visa1 dh
                                                                       !01882C0I
DEFINITION VISA1.                                                      !01885
                                                                       !01886
  02 VISA-1.                                                           !01887
     04 BATCH-NUM                 TYPE BINARY 16.                      !01888
     04 NUM-TRAN-IN-REC           TYPE BINARY 16.                      !01889
     04 TRAN                      OCCURS 10 TIMES.                     !01890
        06 SEQ-NUM                PIC 9(6).                            !01891
        06 AMT                    TYPE BINARY 64,2.                    !01892
                                                                       !01893
END                                                                    !01894
?page
?section preauth
                                                                       !01899
?comments
*             The following fields make up the Preauthorization hold  !!01902
*             segment.                                                !!01903
                                                                       !01904
DEFINITION PREAUTH.                                                    !01905
                                                                       !01906
 02 SEG-LGTH                      TYPE *.                              !01907
                                                                       !01908
*             The following fields contain preauthorized hold amount  !!01909
*             information created by BASE24-pos.  Please note that    !!01910
*             even though the number of occurrences are fixed, the    !!01911
*             information within this segment is stored as though it  !!01912
*             were variable length.                                   !!01913
*                                                                     !!01914
 02 PRE-AUTH                        OCCURS 10 TIMES.                   !01915
                                                                       !01916
*                                                                     !!01917
*             The sequence number of the preauthorized hold.          !!01918
*                                                                     !!01919
    04 SEQ-NUM                      PIC X(12).                         !01920
                                                                       !01921
*                                                                     !!01922
*             The amount, in whole and fractional currency units      !!01923
*             (e.g., dollars and cents), of the preauthorized hold.   !!01924
*                                                                     !!01925
    04 HOLD-AMT                     TYPE BINARY 64.                    !01926
                                                                       !01927
*                                                                     !!01928
*             The date and time the hold amount is cleared and no     !!01929
*             longer taken into consideration during Authorization    !!01930
*             processing.                                             !!01931
*                                                                     !!01932
    04 PR-TIMESTAMP                 TYPE BINARY 16 OCCURS 3 TIMES.     !01933
                                                                       !01934
*                                                                     !!01935
*             The type of account with the funds on hold.  It is used !!01936
*             to uniquely associate the completion with the proper    !!01937
*             preauthorized hold request.  Values are:                !!01938
*                                                                     !!01939
*             01-09 = Checking                                        !!01940
*             11-19 = Savings                                         !!01941
*             31-39 = Credit                                          !!01942
*                                                                     !!01943
*                                                                     !!01944
    04 ACCT-TYP                     TYPE BINARY 16.                    !01945
                                                                       !01946
*                                                                     !!01947
*             The account number (left-justified, blank-filled)       !!01948
*             identifying the application account with the funds on   !!01949
*             hold.  BASE24 currently supports a 19-digit maximum     !!01950
*             account number length.                                  !!01951
*                                                                     !!01952
    04 ACCT                         TYPE *.                            !01953
*                                                                     !!01954
*             This field is not used.                                 !!01955
*                                                                     !!01956
    04 USER-FLD1                    PIC X.                             !01957
                                                                       !01957O00
*                                                                      !01957O01
*   A flag indicating whether the preauth was approved by the          !01957O02
*   host ("1") or Base24 ("0") in level 3 (online/offline)             !01957O03
*   processing.                                                        !01957O04
*                                                                      !01957O05
                                                                       !01957O06
                                                                       !01958O00
    04 L3-ONLINE-FLG REDEFINES USER-FLD1 PIC X.                        !01958O01
                                                                       !01958O02
END                                                                    !01959
                                                                       !01959J00
?section enhnc-preauth
                                                                       !01959J03
?comments
                                                                       !01959J06
*             The following fields make up the Enhanced Pre-          !!01959J07
*             Authorization Holds segment.                            !!01959J08
                                                                       !01959J09
DEFINITION ENHNC-PREAUTH.                                              !01959J0A
                                                                       !01959J0B
 02 SEG-LGTH                        TYPE *.                            !01959J0C
                                                                       !01959J0D
*             The following fields contain preauthorized hold amount  !!01959J0E
*             information created by BASE24-pos.  Please note that    !!01959J0F
*             even though the number of occurrences are fixed, the    !!01959J0G
*             information within this segment is stored as though it  !!01959J0H
*             were variable length.                                   !!01959J0I
*                                                                     !!01959J0J
 02 ENHNC-PRE-AUTH                  OCCURS 10 TIMES.                   !01959J0K
                                                                       !01959J0L
*                                                                     !!01959J0M
*             The sequence number of the preauthorized hold.          !!01959J0N
*                                                                     !!01959J0O
    04 SEQ-NUM                      PIC X(12).                         !01959J0P
                                                                       !01959J0Q
*                                                                     !!01959J0R
*             The amount, in whole and fractional currency units      !!01959J0S
*             (e.g., dollars and cents), of the preauthorized hold.   !!01959J0T
*                                                                     !!01959J0U
    04 HOLD-AMT                     TYPE BINARY 64.                    !01959J0V
                                                                       !01959J0W
*                                                                     !!01959J0X
*             The date and time the hold amount is cleared and no     !!01959J0Y
*             longer taken into consideration during Authorization    !!01959J0Z
*             processing.                                             !!01959J0a
*                                                                     !!01959J0b
    04 PR-TIMESTAMP                 TYPE BINARY 16 OCCURS 3 TIMES.     !01959J0c
                                                                       !01959J0d
*                                                                     !!01959J0e
*             The approval code used for preauthorization match.      !!01959J0f
*                                                                     !!01959J0g
    04 APPRV-CDE                    PIC X(8).                          !01959J0h
                                                                       !01959J0i
*                                                                     !!01959J0j
*             The issued date and time generated at the terminal.     !!01959J0k
*                                                                     !!01959J0l
    04 PR-TXN-TIMESTAMP             TYPE BINARY 16 OCCURS 3 TIMES.     !01959J0m
                                                                       !01959J0n
*                                                                     !!01959J0o
*             The terminal id which issued the preauthorized hold.    !!01959J0p
*                                                                     !!01959J0q
    04 TERM-ID                      PIC X(16).                         !01959J0r
                                                                       !01959J0s
*                                                                     !!01959J0t
*             The type of account with the funds on hold.             !!01959J0u
*             Values are:                                             !!01959J0v
*                                                                     !!01959J0w
*             01-09 = Checking                                        !!01959J0x
*             11-19 = Savings                                         !!01959J0y
*             31-39 = Credit                                          !!01959J0z
*                                                                     !!01959J10
*                                                                     !!01959J11
    04 ACCT-TYP                     TYPE BINARY 16.                    !01959J12
                                                                       !01959J13
*                                                                     !!01959J14
*             The account number (left-justified, blank-filled)       !!01959J15
*             identifying the application account with the funds on   !!01959J16
*             hold.  BASE24 currently supports a 19-digit maximum     !!01959J17
*             account number length.                                  !!01959J18
*                                                                     !!01959J19
    04 ACCT                         TYPE *.                            !01959J1A
                                                                       !01959J1B
*                                                                     !!01959J1C
*             The hold flag indicates whether this is an outstanding  !!01959J1D
*             hold or a timed-out hold.                               !!01959J1E
*                                                                     !!01959J1F
    04 HOLD-FLG                     PIC X.                             !01959J1G
                                                                       !01959J1H
END                                                                    !01959J1I
                                                                       !01959J1J
?nocomments
                                                                       !01959J1M
                                                                       !01962
?page
?section mail-addr
                                                                       !01967
*           Mailing address of a financial institution, corporation,  !!01968
*           retailer, vendor, etc..  The address contains:            !!01969
*                name, street address, city, state, postal-code,      !!01970
*                and country abbreviation.                            !!01971
                                                                       !01972
DEFINITION MAIL-ADDR.                                                  !01973
                                                                       !01974
    02  NAME                        TYPE *.                            !01975
    02  LOC                         TYPE *.                            !01976
    02  CITY                        PIC X(13).                         !01977
    02  ST                          PIC X(3).                          !01978
    02  POSTAL-CDE                  TYPE *.                            !01979
    02  CNTRY                       PIC X(2).                          !01980
                                                                       !01981
END                                                                    !01982
                                                                       !01983
?PAGE "mail-param def"
?SECTION mail-param
DEFINITION MAIL-PARAM.                                                 !01988
                                                                       !01989
*                                                                     !!01990
*   The Fininacial Institution Identifier.                            !!01991
*                                                                     !!01992
                                                                       !01993
                                                                       !01994D00
    02  FIID                            PIC X(4).                      !01994D01
                                                                       !01994D02
*                                                                     !!01995
*   The assigned DPC location of the FIID                             !!01996
*                                                                     !!01997
    02  DPC-NUM                         PIC 9(4).                      !01998
                                                                       !01999
*   The host originating the message.  This field is filled by the    !!02000
*   host interface process to identify the host originating the       !!02001
*   message.                                                          !!02002
                                                                       !02003
    02  HOST-PRO-NAM                    PIC X(16).                     !02004
                                                                       !02005
*                                                                     !!02006
*   The id of the originator of the message.  This field is filled by !!02007
*   the operator, the device handler or host interface                !!02008
*                                                                     !!02009
    02  ORIG-ID                         PIC X(8).                      !02010
                                                                       !02011
*                                                                     !!02012
*   Number used by the device handler process                         !!02013
*                                                                     !!02014
    02  DEV-SEQ-NUM                     PIC 9(8).                      !02015
                                                                       !02016
*                                                                     !!02017
*   Number used by host interface to trace mail message thru          !!02018
*   BASE24 network                                                    !!02019
*                                                                     !!02020
    02  TRACE-NUM                       PIC 9(6).                      !02021
                                                                       !02022
*                                                                     !!02023
*   The date the mail message originated.                             !!02024
*   Format: YYMMDD                                                    !!02025
*                                                                     !!02026
    02  TRAN-DAT                        TYPE DAT.                      !02027
                                                                       !02028
*                                                                     !!02029
*   The time the mail message originated.                             !!02030
*   Format: HHMMSS                                                    !!02031
*                                                                     !!02032
    02  TRAN-TIM                        TYPE TIM.                      !02033
                                                                       !02034
*                                                                     !!02035
*   The request type of the corresponding mail message                !!02036
*   Specifies the type of request.                                    !!02037
*       "01" - scroll                                                 !!02038
*       "02" - send to terminal                                       !!02039
*       "03" - delete                                                 !!02040
*       "04" - transfer                                               !!02041
*       "05" - update                                                 !!02042
*                                                                     !!02043
*                                                                     !!02044
    02  RQST-TYP                        PIC 99.                        !02045
                                                                       !02046
*                                                                     !!02047
*   The lookup request being considered.                              !!02048
*       1 - First record                                              !!02049
*       2 - The next record following the record which matches ID     !!02050
*       3 - The first record that hasn't been delivered to the        !!02051
*           terminal yet                                              !!02052
*       4 - The next record, not yet delivered, following the record  !!02053
*           which matches ID                                          !!02054
*       5 - Exact                                                     !!02055
*       6 - The latest record, following the record which matches ID  !!02056
*       7 - The latest record, not yet delivered, following the record!!02057
*           which matches ID                                          !!02058
*                                                                     !!02059
    02  LOOKUP-TYP                      PIC 9.                         !02060
                                                                       !02061
*                                                                     !!02062
*   Option to scroll within a single category                         !!02063
*       0 - Scroll within specified category ONLY                     !!02064
*       1 - Scroll thru categories, starting at specified category    !!02065
*                                                                     !!02066
    02  SCROLL-THRU                     PIC 9.                         !02067
                                                                       !02068
*                                                                     !!02069
*   The time the msg was entered into the <MBF> file                  !!02070
*                                                                     !!02071
    02  TIMSTP                          PIC 9(4).                      !02072
                                                                       !02073
*                                                                     !!02074
*   The date/time the msg was delivered to the intended terminal      !!02075
*                                                                     !!02076
    02  CERTIFY-STMP.                                                  !02077
        04   DELIVERY-DAT               PIC 9(6).                      !02078
        04   DELIVERY-TIM               PIC 9(4).                      !02079
                                                                       !02080
*                                                                     !!02081
*   The name of the terminal/host/operator that sent the msg          !!02082
*                                                                     !!02083
    02  MSG-SOURCE-NAM                  PIC X(16).                     !02084
                                                                       !02085
*                                                                     !!02086
*   The type of the message source that sent the msg                  !!02087
*                                                                     !!02088
    02  MSG-SOURCE-TYP                  PIC X(1).                      !02089
                                                                       !02090
*                                                                     !!02091
*   The name of the destination terminal or the broadcast id          !!02092
*                                                                     !!02093
    02  LOC-NAM                         PIC X(16).                     !02094
                                                                       !02095
*                                                                     !!02096
*   Describes the type of target involved                             !!02097
*       1 - LOC-NAME describes a BROADCAST id                         !!02098
*       2 - LOC-NAME describes a TERM name                            !!02099
*                                                                     !!02100
    02  LOC-TYP                         PIC 9.                         !02101
                                                                       !02102
*                                                                     !!02103
*   The name of the category the msg is to be filed under             !!02104
*                                                                     !!02105
    02  TO-CATEGORY                     PIC X(16).                     !02106
                                                                       !02107
*                                                                     !!02108
*   Is the extact date (YYMMDD) and time (HHMM) that the              !!02109
*   mail message expires on.                                          !!02110
*                                                                     !!02111
    02  EXP-STMP.                                                      !02112
        04  DAT                         PIC 9(6).                      !02113
        04  TIM                         PIC 9(4).                      !02114
                                                                       !02115
*                                                                     !!02116
*   Indicates the status of the message that was delivered            !!02117
*                                                                     !!02118
    02  DELIVERY-STAT                   PIC 9.                         !02119
                                                                       !02120
*                                                                     !!02121
*   Does the sender require a delivery acknowledgement,               !!02122
*   and if so, when.                                                  !!02123
*       1 - None required                                             !!02124
*       2 - Immediate, indicate to the sender that the MAIL           !!02125
*           BOX process has it and will eventually deliver it.        !!02126
*       3 - On delivery, only when delivered, and for each            !!02127
*           terminal delivered to.                                    !!02128
*                                                                     !!02129
    02  RESP-REQ                        PIC 9.                         !02130
                                                                       !02131
*                                                                     !!02132
*   The name of the broadcast location... or spaces                   !!02133
*                                                                     !!02134
    02  BROADCAST-NAM                   PIC X(16).                     !02135
                                                                       !02136
    02  INVOICE-NUM                     PIC 9(5).                      !02137
                                                                       !02138
*                                                                     !!02139
*   The number of lines of data involved in the message.              !!02140
*                                                                     !!02141
    02  MAIL-MSG.                                                      !02142
        04  TXT-LINES                   PIC 99.                        !02143
        04  TXT                         PIC X(40)                      !02144
                                        OCCURS 11 TIMES.               !02145
END                                                                    !02146
                                                                       !02147
                                                                       !02148
?section brcb
                                                                       !02151
DEFINITION BRCB.                                                       !02152
                                                                       !02152F00
?comments
                                                                       !02152F03
                                                                       !02153
*                                                                     !!02154
*           The file number given to the specified file when          !!02155
*           it was opened for structured I/O.                         !!02156
*                                                                     !!02157
                                                                       !02158
  02 STRUCTURED-FNUM                       TYPE BINARY 16.             !02159
                                                                       !02160
                                                                       !02160F00
*           This field indicates whether the file is format 1 or       !02160F01
*           format 2.  Valid values are:                               !02160F02
*                                                                      !02160F03
*           1 - file format 1                                          !02160F04
*           2 - file format 2                                          !02160F05
                                                                       !02160F06
  02 FILE-FRMT                            TYPE BINARY 16.              !02160F07
                                                                       !02160F08
*                                                                     !!02161
*           The read type indicator of the given file.                !!02162
*           Valid values are:                                         !!02163
                                                                       !02163F00
*           0 = unstructured reads                                     !02163F01
*           1 = structured reads                                       !02163F02
                                                                       !02163H00
*                                                                      !02163H01
                                                                       !02163H02
                                                                       !02164F00
                                                                       !02164F01
                                                                       !02164F02
*                                                                     !!02167
                                                                       !02168
                                                                       !02169G00
  02 READ-TYPE                            PIC X.                       !02169G01
                                                                       !02169G02
                                                                       !02170
                                                                       !02171G00
*           This field contains whether the calling application       !!02171G01
*           wants to read past the initial EOF.                        !02171G02
                                                                       !02171G03
  02 READ-PAST-INITIAL-EOF                PIC X.                       !02171G04
                                                                       !02171G05
                                                                       !02171G06
                                                                       !02171H00
*           This field indicates that the application wants to read    !02171H01
*           past the initial EOF with unstructured reads, and the      !02171H02
*           application determines whether the data past the initial   !02171H03
*           EOF is valid. E.g., the extract process performs this      !02171H04
*           validation on re-extracts.                                 !02171H05
                                                                       !02171H06
  02 APPL-DATA-VALIDATION                 TYPE BINARY 16.              !02171H07
                                                                       !02171H08
*           The number of bytes of data to read on the                !!02172
*           the bulk read operation.                                  !!02173
*                                                                     !!02174
                                                                       !02175
  02 READ-CNT                             TYPE BINARY 16.              !02176
                                                                       !02177
*                                                                     !!02178
*           The number of bytes of data read on the                   !!02179
*           bulk read operation.                                      !!02180
*                                                                     !!02181
                                                                       !02182
  02 CNT-READ                             TYPE BINARY 32.              !02183
                                                                       !02184
*                                                                     !!02185
*           The Relative Byte Address of the beginning of the         !!02186
*           current block in the bulk read data buffer.               !!02187
*                                                                     !!02188
                                                                       !02189
                                                                       !02190F00
                                                                       !02190F01
  02 BLK-RBA                              TYPE BINARY 64.              !02190F02
  02 BLK-RBA-FRMT-1  REDEFINES  BLK-RBA   TYPE BINARY 32               !02190F03
                                          OCCURS 2 TIMES.              !02190F04
                                                                       !02190H00
*           The block number that bulk read is reading.  The           !02190H01
*           first block number is zero.  The block number is only      !02190H02
*           in the leftmost 32 bits.                                   !02190H03
                                                                       !02190H04
  02 BLK-NUM         REDEFINES  BLK-RBA   TYPE BINARY 32               !02190H05
                                          OCCURS 2 TIMES.              !02190H06
                                                                       !02190H07
*           The record number that bulk read is reading.  The          !02190H08
*           first record number is zero.  The record number is only    !02190H09
*           in the rightmost 32 bits.                                  !02190H0A
                                                                       !02190H0B
  02 REC-NUM         REDEFINES  BLK-RBA   TYPE BINARY 32               !02190H0C
                                          OCCURS 2 TIMES.              !02190H0D
                                                                       !02190H0E
*                                                                     !!02192
*           The Relative Byte Address of the position in the          !!02193
*           given file where the next bulk read should begin at.      !!02194
*                                                                     !!02195
                                                                       !02196
                                                                       !02197F00
                                                                       !02197F01
  02 NXT-READ-RBA                         TYPE BINARY 64.              !02197F02
  02 NXT-READ-RBA-FRMT-1  REDEFINES  NXT-READ-RBA                      !02197F03
                                          TYPE BINARY 32               !02197F04
                                          OCCURS 2 TIMES.              !02197F05
                                                                       !02197H00
*           The block number where the next bulk read should begin.    !02197H01
*           The block number is only in the leftmost 32 bits.          !02197H02
                                                                       !02197H03
  02 BLK-NUM-NXT REDEFINES NXT-READ-RBA   TYPE BINARY 32               !02197H04
                                          OCCURS 2 TIMES.              !02197H05
                                                                       !02197H06
*           The record number where the next bulk read should begin.   !02197H07
*           The record number is only in the rightmost 32 bits.        !02197H08
                                                                       !02197H09
  02 REC-NUM-NXT REDEFINES NXT-READ-RBA   TYPE BINARY 32               !02197H0A
                                          OCCURS 2 TIMES.              !02197H0B
                                                                       !02197H0C
*                                                                     !!02199
*           The block size of the given file                          !!02200
*                                                                     !!02201
                                                                       !02202
  02 BLK-SIZE                             TYPE BINARY 16.              !02203
                                                                       !02204
*                                                                     !!02205
*           The byte offset from the beginning of the bulk read       !!02206
*           buffer to the start of the block currently being          !!02207
*           processed                                                 !!02208
*                                                                     !!02209
                                                                       !02210
  02 BLK-BYTE-OFST                        TYPE BINARY 32.              !02211
                                                                       !02212
*                                                                     !!02213
*           The count of the number of records or bytes within the    !!02214
*           block that is currently being processed that have been    !!02215
*           processed.  This field will be a record count in the      !!02216
*           case of entry seqeunced files and a byte count in the     !!02217
*           case of unstructured files.                               !!02218
*                                                                     !!02219
                                                                       !02220
  02 BLK-REC-CNT                          TYPE BINARY 16.              !02221
                                                                       !02222
*                                                                     !!02223
*           Flag used to indicate if the initial bulk read operation  !!02224
*           should begin at the beginning of the given file or at     !!02225
*           the position specified by the value specified in the      !!02226
*           NXT-READ-RBA field and the BLK-REC-CNT field.  If this    !!02227
*           flag is set to FALSE, then the bulk read will begin at    !!02228
*           at the beginning of the file.  If this flag is set to     !!02229
*           TRUE, then the bulk read will begin with the record       !!02230
*           specified in the NXT-READ-RBA and BLK-REC-CNT fields.     !!02231
*                                                                     !!02232
                                                                       !02233
  02 POSN-FLG                             TYPE BINARY 16.              !02234
                                                                       !02235
                                                                       !02235F00
                                                                       !02235F01
*           THE EOF pointer is returned by a call to FILE_GETINFO_     !02235F02
*           using STRUCTURED-FNUM as the file number.                  !02235F03
                                                                       !02235F04
                                                                       !02236F00
                                                                       !02236F01
                                                                       !02236F02
                                                                       !02249E00
  02 EOF-PTR                              TYPE BINARY 64.              !02249E01
                                                                       !02249E02
*                                                                     !!02250
*           The total byte offset into the given file of the current  !!02251
*           file block position.                                      !!02252
                                                                       !02253H00
*           For format 2 files, the byte offset into the given file,  !!02253H01
*           that is used in determining how many bytes are left to     !02253H02
*           read.                                                      !02253H03
                                                                       !02253H04
                                                                       !02254E00
  02 FILE-OFST                            TYPE BINARY 64.              !02254E01
                                                                       !02254E02
                                                                       !02254F00
*           Flag used to indicate if the previous bulk read            !02254F01
*           operation encountered the end of the file.                 !02254F02
                                                                       !02254F03
                                                                       !02255F00
                                                                       !02255F01
                                                                       !02255F02
                                                                       !02259
  02 EOF                                  TYPE BINARY 16.              !02260
*                                                                     !!02261
*           For partitioned files, the number of the file             !!02262
*           partition currently being processed.                      !!02263
*                                                                     !!02264
  02 PART-NUM                             TYPE BINARY 16.              !02265
*                                                                     !!02266
*           For partitioned files, the number of partitions           !!02267
*           defined for the file.                                     !!02268
*                                                                     !!02269
  02 NUM-PARTS                            TYPE BINARY 16.              !02270
*                                                                     !!02271
*           For partitioned files, the file number associated         !!02272
*           with the open of each of the file's defined               !!02273
*           partitions.                                               !!02274
*                                                                     !!02275
  02 PART-FNUM                            TYPE BINARY 16               !02276
                                          OCCURS 16 TIMES.             !02277
                                                                       !02278
                                                                       !02278H00
*           This field contains the number of blocks in this           !02278H01
*           partition based on the partition's EOF value.              !02278H02
                                                                       !02278H03
  02 PART-NUM-OF-BLKS                     TYPE BINARY 32               !02278H04
                                          OCCURS 16 TIMES.             !02278H05
                                                                       !02278H06
                                                                       !02278F00
                                                                       !02278F01
*           This field contains the length of the external file        !02278F02
*           name.                                                      !02278F03
                                                                       !02278F04
  02 FNAME-LGTH                           TYPE BINARY 16.              !02278F05
                                                                       !02278F06
*           This field contains the external file name.                !02278F07
                                                                       !02278F08
  02 FNAME                                PIC X(35).                   !02278F09
                                                                       !02278F0A
*           This field ensures a word boundary.                        !02278F0B
                                                                       !02278F0C
  02 USER-FLD-BRCB                        PIC X.                       !02278F0D
                                                                       !02278F0E
?nocomments
                                                                       !02278F0H
END                                                                    !02279
                                                                       !02279C00
                                                                       !02279C01
                                                                       !02279C02
