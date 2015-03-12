**FIX2.28  03/25/13  DDLFIDF 6013 DDL    BA60DDL  BA0G041  M                 ***
**FIX2.28  12/22/09  DDLFIDF 6012 DDL    BA60DDL  BA0D332  L                 ***
**FIX2.28  12/04/07  DDLFIDF 6011 DDL    BA60DDL  BA0B349  K                 ***
**FIX2.23  02/13/03  DDLFIDF 6010 DDL    BA60DDL  BA06244  J                 ***
**FIX2.22  06/12/02  DDLFIDF 6009 DDL    BA60DDL  BA05479  I                 ***
**FIX2.14  03/19/01  DDLFIDF 6008 DDL    BA60DDL  BA04333  H                 ***
**FIX2.11  01/02/01  DDLFIDF 6007 DDL    BA60DDL  BA04153  G                 ***
**SEQ0.04  11/01/00  DDLFIDF 6006 DDL    BA60DDL  BA04000  F                 ***
**SYNC.04  12/09/98  DDLFIDF 5306 DDL    BA53DDL  BA04000  F                 ***
**FIX2.03  08/28/98  DDLFIDF 5306 DDL    BA53DDL  BA03000  F                 ***
**FIX2.04  11/24/97  DDLFIDF 5106 DDL    BA51DDL  BA03020  F                 ***
**SYNC.03  08/22/97  DDLFIDF 5105 DDL    BA51DDL  BA03000  E                 ***
**SYNC.02  06/25/96  DDLFIDF 5105 DDL    BA51DDL  BA02000  E                 ***
**FIX2.00  12/08/95  DDLFIDF 5105 DDL    BA51DDL  BA51240  E                 ***
**FIX2.00  11/13/95  DDLFIDF 5104 DDL    BA51DDL  BA51203  D                 ***
**FIX2.00  06/06/95  DDLFIDF 5103 DDL    BA51DDL  BA51011  C                 ***
**FIX2.00  01/20/95  DDLFIDF 5102 DDL    BA51DDL  BA50275  B                 ***
**FIX2.00  02/09/93  DDLFIDF 5001 DDL    BA50DDL  BA50066  A                 ***
!*SEQ2.00  10/20/92  DDLFIDF 5000 DDL    BA50DDL                               !
                                                                       !00000G00
?page "IDF - Institution Definition File"
?section idf-history
                                                                       !00000L00
********************************************************************** !00000L01
*                                                                    * !00000L02
*                               BASE24                               * !00000L03
*                               ------                               * !00000L04
*                                                                    * !00000L05
*               DDL for the Institution Definition File              * !00000L06
*                                                                    * !00000L07
*                   Proprietary Software Product                     * !00000L08
*                                                                    * !00000L09
*                         ACI Worldwide, Inc.                        * !00000L0A
*                         6060 Coventry Drive                        * !00000L0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000L0C
*                          (402) 390-7600                            * !00000L0D
*                                                                    * !00000L0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000L0F
*                                                                    * !00000L0G
*    All Rights Reserved.                                            * !00000L0H
*                                                                    * !00000L0I
********************************************************************** !00000L0J
                                                                       !00000L0K
                                                                       !00000L0L
                                                                       !00000L0M
                                                                       !00000L0N
*                                                                      !00000G0V
* Record of Changes:                                                   !00000G0W
*                                                                      !00000G0X
* Date        Person/Emp #                                             !00000G0Y
* ---------   ------------                                             !00000G0Z
                                                                       !00000G10
* 08Feb93  RRC                                                         !00306A02
* SYMPTOM:       None.                                                 !00306A03
* PROBLEM:       None.                                                 !00306A04
* FIX:           Modified the comments for the CHK-DISP field.         !00306A05
* DEPENDENCIES:  None.                                                 !00306A06
* REFERENCE:     Self Service Banking External Specification Update    !00306A07
*                Memo AE06BU05, dated February 2, 1993.                !00306A08
                                                                       !00306A09
                                                                       !00306B00
*********************************************************************  !00306B01
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   *  !00306B02
*********************************************************************  !00306B03
* 22AUG94        LJC   - JMS/583                                       !00306B04
* SYMPTOM:       BASE24-telebanking Initial Release                    !00306B05
* PROBLEM:       (E) None.                                             !00306B06
* FIX:           Added Telebanking segment.                            !00306B07
* DEPENDENCIES:  None.                                                 !00306B08
* REFERENCE:     BASE24-telebanking External Specifications,           !00306B09
*                Work Order TB930301-01                                !00306B0A
                                                                       !00306B0B
                                                                       !00306B0C
                                                                       !00306C03
*********************************************************************  !00306C04
*                  RELEASE 5.1                                      *  !00306C05
*********************************************************************  !00306C06
*                                                                      !00306C07
* 95JUN01    JMS/583                                                   !00306C08
* SYMPTOM:   BASE24-BASE RELEASE 5.1 ENHANCEMENTS                      !00306C09
* PROBLEM:   (E) NONE.                                                 !00306C0A
* FIX:       Removed AFS, EFTPOS, and Cash Manager products.           !00306C0B
* IMPLEMENT: Remove reference to these products in all modules.        !00306C0C
*            Re-compile DDL's. Apply related fix to the IDF requestor  !00306C0D
*            and server and recompile.  All modules that source in the !00306C0E
*            IDF must be recompiled.                                   !00306C0F
* REFERENCE: 950201-001                                                !00306C0G
*                                                                      !00306C0H
*********************************************************************  !00306C0I
                                                                       !00306D00
*                                                                      !00306D01
* 95AUG18    SLA                                                       !00306D02
* SYMPTOM:   None.                                                     !00306D03
* PROBLEM:   <E> None.                                                 !00306D04
* FIX:       Modified comments in the Telebanking segment to           !00306D05
*            reflect support for BASE24-billpay.                       !00306D06
* IMPLEMENT: All modules that source in the IDF must be recompiled.    !00306D07
* REFERENCE: Work Order 950425-1.                                      !00306D08
*                                                                      !00306D09
*********************************************************************  !00306D0A
                                                                       !00306D0B
                                                                       !00306E00
* 14NOV95        DPS/1064 - BDC/1448                                   !00306E01
* SYMPTOM:       Customer Service/Fraud Control - Initial Release      !00306E02
* PROBLEM:       (E) None.                                             !00306E03
* FIX:           Added comments to indicate that there is a            !00306E04
*                new Customer Service/Fraud Control segment.           !00306E05
*                This segment requires no new fields on the IDF.       !00306E06
* DEPENDENCIES:  None.                                                 !00306E07
* REFERENCE:     Work Order #950212-3.                                 !00306E08
                                                                       !00306F00
* 01OCT1997   CKC/163                                                  !00306F01
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00306F02
* Problem:    None.                                                    !00306F03
* Fix:        Added Non-Currency Dispense segment.                     !00306F04
* Dependency: Apply fix and remake.                                    !00306F05
* Reference:  WO #960311-05.                                           !00306F06
                                                                       !00306F07
* 01OCT1997   KJH/176   BH/177                                         !00306F08
* Symptom:    BASE24 VISA Cash Enhancement.                            !00306F09
* Problem:    None.                                                    !00306F0A
* Fix:        1. Added Smart Card segment.                             !00306F0B
*             2. Added comment to FAST-CASH-ACCT that it will also     !00306F0C
*                be used for unspecified account in load value         !00306F0D
*                transactions.                                         !00306F0E
* Dependency: Apply fix and remake.                                    !00306F0F
* Reference:  WO #970709-2.                                            !00306F0G
                                                                       !00306F0H
                                                                       !00306E09
                                                                       !00306G00
********************************************************************   !00306G01
*             Release 6.0                                          *   !00306G02
********************************************************************   !00306G03
* 30NOV2000   JAS/497                                                  !00306G04
* Symptom:    Release 6.0 Enhancements                                 !00306G05
* Problem:    None                                                     !00306G06
* Fix:        - Added ACQ-TXN-PRFL fields to the ATM and POS           !00306G07
*               segments.                                              !00306G08
*             - Added ISS-TXN-PRFL fields to the ATM and POS           !00306G09
*               segments.                                              !00306G0A
*             - Added ADMIN-TXN-PRFL and RTLR-TXN-PRFL to the POS      !00306G0B
*               segment.                                               !00306G0C
*             - Deleted the ON-US and NOT-ON-US fields from the ATM    !00306G0D
*               segment.                                               !00306G0E
*             - Deleted the ON-US and NOT-ON-US fields from the        !00306G0F
*               Smart Card segment.                                    !00306G0G
*             - Deleted the TRAN field from the POS segment.           !00306G0H
*             - Deleted the NCD segment.                               !00306G0I
*             - Added the FIID-SEG-MAP-EXT field to the BASE           !00306G0J
*               segment.                                               !00306G0K
*             - Added the TKN-RETRV-OPT fields to the ATM and POS      !00306G0L
*               segments.                                              !00306G0M
*             - Added the LAST-MSG-WRT-OPT field to the SM segment.    !00306G0N
*             - Removed segment list comments for FIID-SEG-MAP and     !00306G0O
*               FIID-SEG-MAP-EXT.                                      !00306G0P
*             - Decreased USER-FLD3D (ATM segment) from 2 bytes to     !00306G0Q
*               1 byte.                                                !00306G0R
*             - Decreased USER-FLD8 (POS segment) from 5 bytes to      !00306G0S
*               4 bytes.                                               !00306G0T
*             - Decreased USER-FLD (SM segment) from 9 bytes to        !00306G0U
*               8 bytes.                                               !00306G0V
*             - Renamed the COMPL-REQ field in the ATM segment         !00306G0W
*               to STMT-PRNT-ONLINE.                                   !00306G0X
*             - Reduced the COMPL-REQ field in the POS segment         !00306G0Y
*               from 30 bytes to 10 bytes.  Completions required       !00306G0Z
*               for only terminal totals will be configured in the     !00306G10
*               IDF POS segment.                                       !00306G11
* Dependency: Restore Release 6.0 files, modify the appropriate        !00306G12
*             CUSTMACS flags, and run MAKE.                            !00306G13
* Reference:  WO #971118-2 (PITABLE Enhancement)                       !00306G14
*             WO #981118-3 (Transactions Allowed)                      !00306G15
*             WO #990108-1 (TDF/PTDF Expansion)                        !00306G16
                                                                       !00306G17
                                                                       !00306G18
                                                                       !00306G19
                                                                       !00306G1A
********************************************************************* !!00307
                                                                       !00307H00
                                                                       !00307H01
* 31MAR2001   CDM/633                                                  !00307H02
* Symptom:    Release 6.0 Enhancements                                 !00307H03
* Problem:    None                                                     !00307H04
* Fix:        - Added USER-FLD-ACI, USER-FLD-REGN, and                 !00307H05
*               USER-FLD-CUST at the end of the Base Segment.          !00307H06
* Dependency: Restore Release 6.0 files, modify CUSTMACS flags,        !00307H07
*             and run MAKE.                                            !00307H08
* Reference:  WO #000101-1 (General Release 6.0)                       !00307H09
                                                                       !00307I00
* 01JUN2002   DLH/158                                                  !00307I01
* Symptom:    MAC MAS Release 6.0 Uplift.                              !00307I02
* Problem:    None.                                                    !00307I03
* Fix:        Uplifted the MAC MAS enhancement from 5.3 to 6.0.        !00307I04
*             Renamed USER-FLD1X in IDFBASE to OTHER-ACCT-TYP.         !00307I05
* Dependency: Apply fix to DDLFIDF, and run MAKE.                      !00307I06
* Reference:  WO #020417-01                                            !00307I07
                                                                       !00307J00
* 07FEB2003   JJD/615                                                  !00307J01
* Symptom:    POS Enhancements.                                        !00307J02
* Problem:    None.                                                    !00307J03
* Fix:        Added field PERSISTENT-UAF to IDFBASE by depleting       !00307J04
*             USER-FLD3 by one. Modified the comments for field        !00307J05
*             PRE-AUTH-HDLS-LVL in POSIDF to allow additional values.  !00307J06
* Dependency: Apply fix to DDLFIDF, and run MAKE. Refer to             !00307J07
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00307J08
* Reference:  WO #020606-01                                            !00307J09
                                                                       !00307J0A
                                                                       !00307I08
                                                                       !00307K00
* 12OCT2007   SteffeJ                                                  !00307K01
* Symptom:    Dynamic CAF                                              !00307K02
* Problem:    None.                                                    !00307K03
* Fix:        Added support for the new Dynamic Cardholder             !00307K04
*             Authorization File (CAFD).                               !00307K05
*             Added CAFD-NAME to the Base segment to support           !00307K06
*             configuration of the CAFD, reducing the length of        !00307K07
*             USER-FLD-ACI by 35 bytes.                                !00307K08
* Dependency: Apply fix to DDLFIDF.  Run Make.                         !00307K09
*             Refer to BA60UD0B.SCNCAFD for a complete listing of      !00307K0A
*             dependencies.                                            !00307K0B
* Reference:  WO #070511-01                                            !00307K0C
                                                                       !00307K0D
* 12OCT2007   LoganaB                                                  !00307K0E
* Symptom:    PCI - Masking on Reports.                                !00307K0F
* Problem:    None.                                                    !00307K0G
* Fix:        Added new fields under RPT-PAN-DIGITS to hold PAN        !00307K0H
*             masking parameters in the Base segment, reducing the     !00307K0I
*             length of USER-FLD-ACI by 4 bytes.                       !00307K0J
* Dependency: Apply fix to DDLFIDF and run Make.                       !00307K0K
*             Refer to BA60UD0B.SCNRMSK for a complete listing of      !00307K0L
*             dependencies.                                            !00307K0M
* Reference:  WO #070104-02.                                           !00307K0N
                                                                       !00307K0O
* 12OCT2007   KrishnB                                                  !00307K0P
* Symptom:    Preferred Transaction.                                   !00307K0Q
* Problem:    None.                                                    !00307K0R
* Fix:        Added fields to support the new preferred transaction    !00307K0S
*             segment.                                                 !00307K0T
* Dependency: Apply fix to DDLFIDF.  Run Make.  Refer to               !00307K0U
*             BA60UD0B.SCNPTXN for a complete listing of dependencies. !00307K0V
* Reference:  WO #060419-01                                            !00307K0W
                                                                       !00307K0X
                                                                       !00307L00
* 06NOV2009   BartonD                                                  !00307L01
* Symptom:    BNET transactions are mandated to include                !00307L02
*             withdrawal from default transactions.  These must        !00307L03
*             be distinguishable from fast cash transactions.          !00307L04
* Problem:    BASE24 does not support withdrawal from default          !00307L05
*             account.                                                 !00307L06
* Fix:        Modified description of FAST-CASH-ACCT field.            !00307L07
*             Added fast cash code 99 to indicate to BASE24            !00307L08
*             processes that fast cash transactions received           !00307L09
*             are to be processed as withdrawal from default           !00307L0A
*             and account type 00 should be sent on to the host.       !00307L0B
* Dependency: Apply fix to DDLFIDF.  Run Make.                         !00307L0C
* Reference:  Case #925810                                             !00307L0D
                                                                       !00307L0E
                                                                       !00307M00
* 15AUG2012   bensone                                                  !00307M01
* Symptom:    Banknet Release 12.Q4 Mandates                           !00307M02
* Problem:    None                                                     !00307M03
* Fix:        Added support for new field in the POS segment:          !00307M04
*                MONEY-XFER-CR-FLG                                     !00307M05
*             This field on screen #19 specifies whether Money         !00307M06
*             Transfer Credit transactions, e.g. MasterCard MoneySend  !00307M07
*             Payment Transactions, are supported.                     !00307M08
* Dependency: Apply fixes to AUTHLIBS, BAUTILS, BNETDDLS, BNETG,       !00307M09
*             BNETLIBS, BNETS, COBTKN, DDLFCPF, DDLIDF, DDLPSTKN,      !00307M0A
*             OKLIBTS, PSTKNCVS, PSTKNID, RQCPFS, RQIDFS, RTAUEMVG,    !00307M0B
*             RTAUEMVS, RTAUG, SCRNCPF, SCRNIDF, SUBTPTBL, SVCPFS      !00307M0C
*             and SVIDFS.                                              !00307M0D
*             Run Make.                                                !00307M0E
*             Replace BAMISCTD, LCONFBA, BNETLOGM, BNETMNWD, and       !00307M0F
*             BNETUPDT.                                                !00307M0G
* Reference:  WO #004536                                               !00307M0H
                                                                       !00307M0I
*********************************************************************  !00307H0A
                                                                       !00307H0B
                                                                       !00307G00
?deflist
?page "IDFBASE  - Base IDF Segment"
?section IDFBASE
                                                                       !00307G07
*#####################################################################!!00308
*#                  INSTITUTION DEFINITION FILE                      #!!00309
*#####################################################################!!00310
                                                                       !00311G00
*                                                                     !
                                                                       !00311G03
                                                                       !00312G00
                                                                       !00312G01
                                                                       !00312G02
                                                                       !00326G00
                                                                       !00326G01
*       Security                                                      !
*                                                                     !
*       The IDF is secured under Tandem's group level security so that!
*       only authorized network operators may access (or start!       !
*       programs which will access) the file.                         !
*                                                                     !
*       USER ID         = <BASE24 node name>.*                        !
*       FILE CODE       = 0                                           !
*       ACCESS SECURITY = GGGG                                        !
*                                                                     !
*       Usage                                                         !
*                                                                     !
*       Device handler    input        RANDOM (  )       shared       !
*       Mail Process      input        RANDOM (  )       shared       !
*       Authorization     input        SEQUENTIAL        shared       !
*       Settlement        i/o          RANDOM (  )       shared       !
*       Reporting         input        RANDOM (  )       shared       !
*       File maintenance  i/o          RANDOM (  )       shared       !
*       Extract           input        RANDOM (GL)       shared       !
*       Refresh           input        RANDOM (GL)       shared       !
*                                                                     !
                                                                       !00326G10
**********************************************************************!!00347
*                                                                     !!00348
?comments
*                                                                     !!00351
*              The Institution Definition File (IDF) contains one     !!00352
*              record for every BASE24 financial institution acting as!!00353
*              a terminal owner or card-issuing authorization entity. !!00354
*              It contains the names of the application files used in !!00355
*              authorization processing, terminal balancing/settlement!!00356
*              window times, PIN verification parameters, sharing     !!00357
*              information, prescreening parameters, authorization    !!00358
*              routing criteria, and work day information.            !!00359
*                                                                     !!00360
*              Record positions for each of the fields in the IDF have!!00361
*              been included in the documentation that follows because!!00362
*              BASE24 provides the ability to extract the IDF to tape !!00363
*              or disk.                                               !!00364
*                                                                     !!00365
*              The following pages describe the fields included in an !!00366
*              IDF record.  The first subsection describes the Base   !!00367
*              Segment of the IDF with subsequent subsections         !!00368
*              describing the BASE24 product-specific segments of the !!00369
*              IDF.  The information below and on the next page       !!00370
*              summarizes other information specific to the IDF.      !!00371
*                                                                     !!00372
*              LCONF ASSIGN:       IDF                                !!00373
*                                                                     !!00374
*                                                                     !!00375
*              The following fields make up the Base segment of the   !!00376
*              Institution Definition File (IDF).                     !!00377
*                                                                     !!00378
DEFINITION IDFBASE.                                                    !00379
  02 BASE-SEG                  TYPE *.                                 !00380
                                                                       !00381
                                                                       !00382
*                                                                     !!00383
*             The FIID identifying the financial institution.  The    !!00384
*             FIID must be unique within an entire BASE24 system.     !!00385
*                                                                     !!00386
  02 FIID                      TYPE *.                                 !00387
                                                                       !00388
                                                                       !00389
*                                                                     !!00390
*             A four-character identifier grouping institutions       !!00391
*             together for file extracts and refreshes.               !!00392
*                                                                     !!00393
*             File extracts and refreshes can be run using this       !!00394
*             identifier to process certain institutions together.    !!00395
*                                                                     !!00396
  02 REFR-GRP                  PIC X(4).                               !00397
                                                                       !00398
                                                                       !00399
*                                                                     !!00400
  02 ALTKEY                    PIC X(11).                              !00401
                                                                       !00402
*                                                                     !!00403
*             The institution's transit/routing number or issuer      !!00404
*             identification number.                                  !!00405
*                                                                     !!00406
*             Each FIID has a number that is unique to the            !!00407
*             institution.  The number is right-justified, zero-      !!00408
*             filled to the left.                                     !!00409
*                                                                     !!00410
  02 INST-ID-NUM               REDEFINES ALTKEY                        !00411
                               TYPE ID-NUM.                            !00412
                                                                       !00413
                                                                       !00414
*                                                                     !!00415
*             The name of the financial institution associated with   !!00416
*             this record.                                            !!00417
*                                                                     !!00418
  02 FI-NAME                   PIC X(22).                              !00419
                                                                       !00420
                                                                       !00421
*                                                                     !!00422
*             An ANSI Standard code indicating the state in which     !!00423
*             this institution is located.  This code is used for     !!00424
*             validating sharing transactions.                        !!00425
*                                                                     !!00426
*             The U.S. state codes are available in the following     !!00427
*             ANSI publication:  States and Outlying Areas of the     !!00428
*             United States, FIPS PUB 5-1, National Bureau of         !!00429
*             Standards, U.S. Department of Commerce, Washington,     !!00430
*             D.C., Government Printing Office, June 15, 1970.        !!00431
*                                                                     !!00432
  02 FI-ST                     PIC 9(2).                               !00433
                                                                       !00434
                                                                       !00435
*                                                                     !!00436
*             An ANSI Standard code indicating the county in which    !!00437
*             this institution is located.  This code is used for     !!00438
*             validating sharing transactions.                        !!00439
*                                                                     !!00440
*             The county codes are available in the following ANSI    !!00441
*             publication:  Counties and County Equivalents of the    !!00442
*             States of the United States, FIPS PUB 6-1, National     !!00443
*             Bureau of Standards, U.S. Department of Commerce,       !!00444
*             Washington, D.C., Government Printing Office, June 15,  !!00445
*             1970.                                                   !!00446
*                                                                     !!00447
  02 FI-CNTY                   PIC 9(3).                               !00448
                                                                       !00449
                                                                       !00450
*                                                                     !!00451
*             The country code associated with the country in which   !!00452
*             this institution is located.                            !!00453
*                                                                     !!00454
*             The country codes are available in the following ISO    !!00455
*             publication: Codes for the Representation of Names of   !!00456
*             Countries, ISO 3166-1981.                               !!00457
*                                                                     !!00458
  02 FI-CNTRY                  PIC 9(3).                               !00459
                                                                       !00460
                                                                       !00461
*                                                                     !!00462
*             The telephone number of this institution.               !!00463
*                                                                     !!00464
  02 FI-PHONE                  TYPE PHONE-NUM.                         !00465
                                                                       !00466
                                                                       !00467
*                                                                     !!00468
*             The currency used by the institution to compute its     !!00469
*             cardholder account balances.  Valid values are listed   !!00470
*             in the following booklet:  Codes for the Representation !!00471
*             of Currencies and Funds, ISO 4217-1981.  The value in   !!00472
*             this field should be set at installation.               !!00473
*                                                                     !!00474
 02 CRNCY-CDE                  PIC 9(3).                               !00475
                                                                       !00476
                                                                       !00477
*                                                                     !!00478
*             The name of the Negative Card File (NEG) for            !!00479
*             institutions that use either the Negative Authorization !!00480
*             without Usage Accumulation method or Negative           !!00481
*             Authorization with Usage Accumulation method.           !!00482
*                                                                     !!00483
  02 NEG-NAME                  TYPE FNAME.                             !00484
                                                                       !00485
                                                                       !00486
                                                                       !00487
*                                                                     !!00488
*             The name of the Usage Accumulation File (UAF) for       !!00489
*             institutions that use the Negative Authorization with   !!00490
*             Usage Accumulation method.                              !!00491
*                                                                     !!00492
  02 UAF-NAME                  TYPE FNAME.                             !00493
                                                                       !00494
                                                                       !00495
*                                                                     !!00496
*             The name of the Cardholder Authorization File (CAF) for !!00497
*             institutions that use either the Positive               !!00498
*             Authorization, Positive Balance Authorization, or       !!00499
*             Parametric Authorization methods.                       !!00500
*                                                                     !!00501
  02 CAF-NAME                  TYPE FNAME.                             !00502
                                                                       !00503
                                                                       !00504
*                                                                     !!00505
*             The name of the Checking Account PBF for institutions   !!00506
*             that use the Positive Balance Authorization method.     !!00507
*                                                                     !!00508
*             If this institution uses only one PBF for all accounts  !!00509
*             (i.e., checking, savings, and credit), the PBF1-NAME,   !!00510
*             PBF2-NAME, and PBF3-NAME fields must contain identical  !!00511
*             information.                                            !!00512
*                                                                     !!00513
  02 PBF1-NAME                 TYPE FNAME.                             !00514
                                                                       !00515
                                                                       !00516
*                                                                     !!00517
*             The name of the Savings Account PBF for institutions    !!00518
*             that use the Positive Balance Authorization method.     !!00519
*                                                                     !!00520
*             If this institution uses only one PBF for all accounts  !!00521
*             (i.e., checking, savings, and credit), the PBF1-NAME,   !!00522
*             PBF2-NAME, and PBF3-NAME fields must contain identical  !!00523
*             information.                                            !!00524
*                                                                     !!00525
  02 PBF2-NAME                 TYPE FNAME.                             !00526
                                                                       !00527
                                                                       !00528
*                                                                     !!00529
*             The name of the Credit Account PBF for institutions     !!00530
*             that use the Positive Balance Authorization method.     !!00531
*                                                                     !!00532
*             If this institution uses only one PBF for authorization !!00533
*             on all accounts (i.e., checking, savings, and credit),  !!00534
*             the PBF1-NAME, PBF2-NAME, and PBF3-NAME fields must     !!00535
*             contain identical information.                          !!00536
*                                                                     !!00537
  02 PBF3-NAME                 TYPE FNAME.                             !00538
                                                                       !00539
                                                                       !00540
*                                                                     !!00541
*             This field was used for the name of the Corporate       !!00542
*             Positive Balance File (CPBF) by institutions that use   !!00543
*             the Positive Balance Authorization method and have      !!00544
*             BASE24-cash manager configured in their system.         !!00545
*                                                                     !!00546
*             Support for BASE24-cash manager product has been        !!00547
*             discontinued.  This field was not removed or renamed    !!00548
*             because it was used by all other products in that       !!00549
*             system--not just BASE24-cash manager.                   !!00550
*                                                                     !!00551
  02 PBF4-NAME                 TYPE FNAME.                             !00552
                                                                       !00553
                                                                       !00554
*                                                                     !!00555
*             A list of sharing groups to which this institution      !!00556
*             belongs.  The BASE24-atm Authorization process searches !!00557
*             for this group value whenever the terminal owner and    !!00558
*             card issuer are not the same to determine if the        !!00559
*             terminal and issuer belong to any of the same sharing   !!00560
*             groups.                                                 !!00561
*                                                                     !!00562
                                                                       !00562B00
*             This field is not currently used by BASE24-pos,          !00562B01
*             BASE24-teller, or BASE24-telebanking.                    !00562B02
                                                                       !00562B03
                                                                       !00563B00
                                                                       !00563B01
                                                                       !00563B02
  02 SHRG-GRP                   PIC X              OCCURS 24 TIMES.    !00565
                                                                       !00566
                                                                       !00567
*                                                                     !!00568
*             A code indicating whether the CRD-STAT field in the     !!00569
*             Base segment of the CAF is to be checked during         !!00570
*             prescreening processing by BASE24.                      !!00571
*                                                                     !!00572
*             Note that BASE24-pos will check the NEG based on this   !!00573
*             flag if the NEG is being used in processing rather than !!00574
*             the CAF.  Valid values:                                 !!00575
*                                                                     !!00576
*             0     = Send the request to a host without checking the !!00577
*                     card status.                                    !!00578
*             Other = Check the card status:  If not valid, decline   !!00579
*                     the request and do not send to a host.          !!00580
*                                                                     !!00581
*             The value in this field is used only with authorization !!00582
*             level 3 (online/offline) and with Positive              !!00583
*             Authorization and Positive Balance Authorization        !!00584
*             methods.                                                !!00585
*                                                                     !!00586
  02 CRD-STAT-CHK               PIC X.                                 !00587
                                                                       !00588
                                                                       !00589
*                                                                     !!00590
*             A code indicating whether the expiration date should be !!00591
*             checked during prescreening processing by BASE24.       !!00592
*             Valid values are:                                       !!00593
*                                                                     !!00594
*             0     = Send requests to a host without checking the    !!00595
*                     expiration date.                                !!00596
*             Other = Check the expiration date:  If expired, decline !!00597
*                     the request and do not send the request to a    !!00598
*                     host.                                           !!00599
*                                                                     !!00600
*             When the value in this field is non-zero, the value in  !!00601
*             the EXP-CHK-IND field in the Base segment of the CPF is !!00602
*             used to determine how the expiration date is to be      !!00603
*             checked.                                                !!00604
*                                                                     !!00605
*             The value in this field is used only with authorization !!00606
*             level 3 (online/offline).                               !!00607
*                                                                     !!00608
  02 EXP-DAT-CHK                PIC X.                                 !00609
                                                                       !00610
                                                                       !00611
*                                                                     !!00612
*             A code indicating whether the cardholder's entered PIN  !!00613
*             is to be checked during prescreening processing by      !!00614
*             BASE24.  Valid values are:                              !!00615
*                                                                     !!00616
*             0     = Send requests to a host without checking the    !!00617
*                     Customer's PIN.                                 !!00618
*             Other = Check the customer's PIN:  If not valid,        !!00619
*                     decline the request and do not send to a host.  !!00620
*                                                                     !!00621
*             The value in this field is only used with authorization !!00622
*             level 1 (online) and authorization level 3              !!00623
*             (online/offline) since prescreening checks are          !!00624
*             performed only with these authorization levels.         !!00625
*                                                                     !!00626
  02 PIN-CHK                    PIC X.                                 !00627
                                                                       !00628
                                                                       !00629
*                                                                     !!00630
*             The PIN verification method used for this institution.  !!00631
*             This field must contain a valid value, even when the    !!00632
*             value in the AUTH-TYP field in this IDF segment is set  !!00633
*             to 0 (host authorization).  Valid values are:           !!00634
*                                                                     !!00635
*             00 = No verification.                                   !!00636
*             01 = DES (IBM 3624)                                     !!00637
*             02 = Diebold                                            !!00638
*             03 = Identikey                                          !!00639
*             04 = VISA PVV                                           !!00640
*                                                                     !!00641
  02 PIN-VRFY-TYP               PIC XX.                                !00642
                                                                       !00643
                                                                       !00644
*                                                                     !!00645
*             A code specifying the location of the DES (IBM 3624) or !!00646
*             Diebold PIN verification method PIN offset, the VISA    !!00647
*             PVV PIN verification method PIN Verification Value      !!00648
*             (PVV), or the Identikey PIN verification method PIN     !!00649
*             Verification Number (PVN).  Valid values are:           !!00650
*                                                                     !!00651
*             0 = No offset, 0000 is used if an offset is required    !!00652
*                 for the verification method.  Not valid for VISA    !!00653
*                 PVV.                                                !!00654
*             1 = Offset is on the card, the value in the POFST-OFST  !!00655
*                 field in the Base segment of the CPF specifies the  !!00656
*                 exact location on Track 2 of the card.              !!00657
*             2 = Offset is specified in the cardholder's individual  !!00658
*                 CAF record.                                         !!00659
*                                                                     !!00660
  02 PIN-OFST-LOC               PIC X.                                 !00661
                                                                       !00662
                                                                       !00663
*                                                                     !!00664
*             A code specifying the location of the algorithm number. !!00665
*             Currently the algorithm number is required only for     !!00666
*             Diebold PIN verification.  If another PIN method is     !!00667
*             used, this field should contain a value of zero.        !!00668
*             Values are:                                             !!00669
*                                                                     !!00670
*             0 = The algorithm number is not required for PIN        !!00671
*                 verification.                                       !!00672
*             1 = The algorithm number is in the KEYF.                !!00673
*             2 = The algorithm number is on Track 2 of the card, the !!00674
*                 value in the ALGO-OFST field in the Base segment of !!00675
*                 the CPF specifies the exact location.               !!00676
*                                                                     !!00677
  02 ALGO-NUM-LOC               PIC X.                                 !00678
                                                                       !00679
                                                                       !00680
*                                                                     !!00681
*             A code, used by BASE24-atm only, identifying whether    !!00682
*             the institution allows its cardholders to select their  !!00683
*             PINs.                                                   !!00684
*                                                                     !!00685
*             Valid values are:                                       !!00686
*                                                                     !!00687
*             Y = Cardholders select their PINs.                      !!00688
*             N = Cardholders do not select their PINs.               !!00689
*                                                                     !!00690
*             The value in this field may only be set to Y if the     !!00691
*             value in the PIN-VRFY-TYP field in this IDF segment is  !!00692
*             set to 01 (DES) or 02 (Diebold), and the value in the   !!00693
*             PIN-OFST-LOC field is set to 2 (PIN offset is on the    !!00694
*             CAF).  The institution must also be implementing PIN    !!00695
*             verification of clear text PINs in software.            !!00696
*                                                                     !!00697
*             If the value in this field is set to Y, the value in    !!00698
*             the PIN-OFST field in the Base segment of the CAF must  !!00699
*             be set to spaces in order for the PIN offset value to   !!00700
*             be placed in the CAF when the cardholder first uses the !!00701
*             card and selects a PIN.                                 !!00702
*                                                                     !!00703
  02 CRD-HLD-SELCT              PIC X.                                 !00704
                                                                       !00705
                                                                       !00706
                                                                       !00707
                                                                       !00708
                                                                       !00709
                                                                       !00710
                                                                       !00711
                                                                       !00712
                                                                       !00713
                                                                       !00714
                                                                       !00715
                                                                       !00716
                                                                       !00717
                                                                       !00718
                                                                       !00719
                                                                       !00720
                                                                       !00721
                                                                       !00722
                                                                       !00723
*                                                                     !!00724
*             A code indicating how accumulated bad PIN tries in the  !!00725
                                                                       !00725B00
*             CAF, UAF, CUST, or Administrative Card File (ADMN) are   !00725B01
*             to be reset for an institution's cardholders. The ADMN   !00725B02
*             is used by BASE24-pos to keep track of bad PIN tries     !00725B03
*             for administrative cards.  The CUST file is used by      !00725B04
*             BASE24-telebanking to keep track of bad PIN tries        !00725B05
*             for Telebanking customers.                               !00725B06
                                                                       !00725B07
                                                                       !00726B00
                                                                       !00726B01
                                                                       !00726B02
*                                                                     !!00730
*             The system keeps track of the number of incorrect PIN   !!00731
*             tries for a cardholder in the BAD-PIN-TRIES field of    !!00732
                                                                       !00732B00
*             the CAF, UAF, CUST, or ADMN, depending on the type of    !00732B01
                                                                       !00732B02
                                                                       !00733B00
                                                                       !00733B01
*             authorization an institution is using.  This allows bad !!00734
*             PIN tries to be accumulated over a period of time, and  !!00735
*             institutions can then choose to decline authorization   !!00736
*             of a transaction for a cardholder if that cardholder    !!00737
*             has had an excessive number of incorrect PIN tries.     !!00738
*                                                                     !!00739
*             The number of bad PIN tries allowed for a cardholder is !!00740
*             defined in the MAX-PIN-TRY field in this IDF segment.   !!00741
*             For BASE24-pos, the number of bad PIN tries allowed for !!00742
*             an administrative card is set in the BAD-PIN-TRIES      !!00743
*             field in the ADMN.                                      !!00744
*                                                                     !!00745
*             BASE24 essentially offers two methods for clearing a    !!00746
*             cardholder's accumulated PIN tries.  The first allows   !!00747
*             for clearing the accumulated bad PIN tries when the     !!00748
*             cardholder enters a correct PIN.  The second method     !!00749
                                                                       !00749B00
*             allows for clearing the CAF, UAF, CUST, and ADMN         !00749B01
*             accumulation totals at the end of each usage             !00749B02
*             accumulation period.  The value in this field controls   !00749B03
*             how these clearance methods are to be applied for an     !00749B04
*             institution's cardholders.                               !00749B05
                                                                       !00749B06
                                                                       !00750B00
                                                                       !00750B01
                                                                       !00750B02
*                                                                     !!00755
*             Because of the way UAF totals are cleared, the          !!00756
*             accumulated bad PIN tries in the UAF are always cleared !!00757
*             at the end of each usage accumulation period.  In       !!00758
*             addition, this field allows institutions using the UAF  !!00759
*             to have the UAF bad PIN tries cleared by the entry of a !!00760
*             correct PIN.                                            !!00761
*                                                                     !!00762
                                                                       !00762B00
*             Unlike the UAF, the bad PIN tries in the CAF, ADMN, and  !00762B01
*             CUST are not automatically cleared at the end of each    !00762B02
*             usage accumulation period.  Institutions using the CAF,  !00762B03
*             CUST or ADMN can choose--via this field--to have their   !00762B04
*             CAF, CUST and ADMN bad PIN tries automatically cleared   !00762B05
*             with the rest of their totals at the end of each usage   !00762B06
*             accumulation period (values 0, 1, or 2) or not (values   !00762B07
*             3 or 4).  In the latter case, the entry of a correct     !00762B08
*             PIN would be the only means for resetting the bad PIN    !00762B09
*             in the CAF, CUST, and ADMN short of a file maintenance   !00762B0A
*             update or a refresh of the cardholder's record.          !00762B0B
                                                                       !00762B0C
                                                                       !00762B0D
                                                                       !00763B00
                                                                       !00763B01
                                                                       !00763B02
*                                                                     !!00774
*             The following table illustrates how the accumulated bad !!00775
                                                                       !00775B00
*             PIN tries in the CAF, UAF, CUST, and ADMN files are to   !00775B01
*             be reset for an institution's cardholders.               !00775B02
                                                                       !00775B03
*                         Reset at end of      Reset in all four       !00775B04
                                                                       !00775B05
                                                                       !00775B06
                                                                       !00776B00
                                                                       !00776B01
                                                                       !00776B02
*             Field     Usage Accumulation     files when correct     !!00780
*             Value           Period             PIN is entered       !!00781
*             -----     ------------------   ----------------------   !!00782
                                                                       !00782B00
*                                   CAF,       If MAX    Regardless    !00782B01
*                          UAF      CUST,      PIN TRY     of MAX      !00782B02
                                                                       !00782B03
                                                                       !00783B00
                                                                       !00783B01
                                                                       !00783B02
*                                   ADMN     not reached   PIN TRY    !!00785
*                       --------  --------   ----------- ----------   !!00786
*               0          Yes      Yes          No          No       !!00787
*               1          Yes      Yes          Yes         No       !!00788
*               2          Yes      Yes          Yes         Yes      !!00789
*               3          Yes      No           Yes         No       !!00790
*               4          Yes      No           Yes         Yes      !!00791
*                                                                     !!00792
*             NOTE:  Values of 2 and 4 do not limit the number of bad !!00793
*             PIN tries a cardholder may attempt.                     !!00794
*                                                                     !!00795
  02 PIN-TRIES-RESET-OPTION     PIC X.                                 !00796
                                                                       !00797
                                                                       !00798
                                                                       !00799
*                                                                     !!00800
*             The number of times per usage accumulation period that  !!00801
*             the institution allows a cardholder to enter an         !!00802
*             incorrect PIN.  Once a cardholder's accumulated bad PIN !!00803
*             tries (specified in the CAF or UAF) is equal to the     !!00804
*             value of this field, all further requests by the        !!00805
*             cardholder are denied and BASE24 takes the action       !!00806
*             designated by the value in the BAD-PIN-DISP field of    !!00807
*             this IDF segment.                                       !!00808
*                                                                     !!00809
*             The UAF accumulates a cardholder's incorrect PIN tries  !!00810
*             for institutions using the Negative Authorization with  !!00811
*             Usage Accumalation method.  The CAF accumulates this    !!00812
*             information for institutions using either the Positive  !!00813
*             or Positive Balance Authorization method.               !!00814
*                                                                     !!00815
*             Use of this field is subject to the setting in the PIN- !!00816
*             TRIES-RESET-OPTION field and can be overridden by a     !!00817
*             value of 2 or 4 in that field.                          !!00818
*                                                                     !!00819
  02 MAX-PIN-TRY                TYPE BINARY 16.                        !00820
                                                                       !00821
                                                                       !00822
*                                                                     !!00823
*             The action taken by BASE24 if a cardholder exceeds the  !!00824
*             maximum number of incorrect PIN entries specified in    !!00825
*             the MAX-PIN-TRY field.                                  !!00826
*                                                                     !!00827
*             The value in this field is checked when a cardholder    !!00828
*             enters an incorrect PIN, causing the accumulated number !!00829
*             of bad PIN tries in the CAF or UAF to equal the number  !!00830
*             of incorrect PINs allowed in the MAX-PIN-TRY field of   !!00831
*             this IDF segment.  Values are:                          !!00832
*                                                                     !!00833
*             0 = Return the card                                     !!00834
*             1 = Retain the card                                     !!00835
*                                                                     !!00836
  02 BAD-PIN-DISP               PIC X.                                 !00837
                                                                       !00838
                                                                       !00839
*                                                                     !!00840
*             The action taken if the Authorization process detects   !!00841
*             that a card has expired.  Values are:                   !!00842
*                                                                     !!00843
*             0 = Return the card                                     !!00844
*             1 = Retain the card                                     !!00845
*                                                                     !!00846
  02 EXP-CHK-DISP               PIC X.                                 !00847
                                                                       !00848
                                                                       !00849
*                                                                     !!00850
*             A code indicating whether the cardholder withdrawal     !!00851
*             limit fields in the CAF or CPF are to be checked during !!00852
*             prescreening processing by BASE24.  Valid values are:   !!00853
*                                                                     !!00854
*             0     = Send requests to the host without checking any  !!00855
*                     limits.                                         !!00856
*             Other = Check the limits; if exceeded, decline the      !!00857
*                     request and do not send the request to a host.  !!00858
*                                                                     !!00859
*             The value in this field is used only with authorization !!00860
*             level 1 (online) and authorization level 3              !!00861
*             (online/offline) since prescreening is only done with   !!00862
*             these authorization levels.                             !!00863
*                                                                     !!00864
  02 LMT-CHK                    PIC X.                                 !00865
                                                                       !00866
                                                                       !00867
                                                                       !00868
                                                                       !00869
                                                                       !00870
                                                                       !00871
                                                                       !00872
                                                                       !00873
*                                                                     !!00874
*             The parameters that determine when the UAF is to be     !!00875
*             purged and the usage accumulation fields in the CAF are !!00876
*             to begin being reset.  The value in this field is used  !!00877
*             by the Authorization and Settlement Initiator processes !!00878
*             to coordinate and clear cardholder usage accumulation.  !!00879
                                                                       !00879B00
*             As well, this field is used to clear customer usages     !00879B01
*             in BASE24-telebanking's CUSTOMER File.                   !00879B02
                                                                       !00879B03
*                                                                     !!00880
*             At institution cutover, dates are changed in the IDF.   !!00881
*             These dates become effective at logical network cutover !!00882
*             or when the Authorization and Settlement Initiator      !!00883
*             processes are reinitialized.  Once these dates are      !!00884
*             effective, CAF usage accumulation begins being cleared  !!00885
*             as needed on a transaction-by-transaction basis.  Valid !!00886
*             values are:                                             !!00887
*                                                                     !!00888
*             0 = Purge UAF.                                          !!00889
*             1 = Purge UAF at institution cutover; begin clearing    !!00890
                                                                       !00890B00
*                 CAF/CUST usage accumulation fields at logical        !00890B01
*                 network cutover                                      !00890B02
*             2 = Purge UAF at midnight; begin clearing CAF/CUST       !00890B03
*                 usage accumulation fields at midnight.               !00890B04
*             4 = Do not purge UAF; begin clearing the CAF/CUST at     !00890B05
*                 logical network cutover.                             !00890B06
*             5 = Do not purge UAF; begin clearing the CAF/CUST at     !00890B07
                                                                       !00890B08
                                                                       !00891B00
                                                                       !00891B01
                                                                       !00891B02
*                 midnight.                                           !!00898
*                                                                     !!00899
*             In an environment where several institutions share the  !!00900
*             same UAF, it is critical that only one of these         !!00901
*             institutions be set up to purge the UAF.  All others    !!00902
*             should be set to a 0, 4, or 5.  This ensures that when  !!00903
*             institutions have different cutover times, the UAF will !!00904
*             only be purged once per usage accumulation period.      !!00905
*                                                                     !!00906
*             Values 0, 4, and 5 all affect the UAF identically, they !!00907
*             never purge it.  Since institutions may set up their    !!00908
*             RT-TBL to have more than one authorization method in    !!00909
*             use at the same time, options 4 and 5 have been         !!00910
*             supplied in order to clear the CAF's usage accumulation !!00911
*             fields without purging the UAF.  Option 0 may only be   !!00912
*             used when an institution uses the Negative              !!00913
*             Authorization with Usage Accumulation method            !!00914
*             exclusively.                                            !!00915
*                                                                     !!00916
  02 FLD-CUTOVER                PIC X.                                 !00917
                                                                       !00918
                                                                       !00919
*                                                                     !!00920
*             A code indicating how a card-issuer supports processing !!00921
*             of adjustment (5400) transactions.  The first position  !!00922
*             of the field indicates how adjustments are processed by !!00923
*             the Authorization process.                              !!00924
*                                                                     !!00925
*             Valid first characters are:                             !!00926
*                                                                     !!00927
*             0 = Process adjustments manually.                       !!00928
*             1 = Process at the Tandem only (adjust cardholder files !!00929
*                 if necessary, log, and report as required).  If     !!00930
*                 BASE24-atm receives a 5400 message, it will process !!00931
*                 it against its own files only.  No message is sent  !!00932
*                 to the host regardless of authorization level.      !!00933
*             2 = Process at the Tandem and also at the host.  If     !!00934
*                 BASE24-atm receives a 5400 message, it will process !!00935
*                 it as it can on the Tandem and send a 5400 message  !!00936
*                 to the host.                                        !!00937
*                                                                     !!00938
*             If the first position of this field is non-zero, the    !!00939
*             second position is used to indicate whether or not the  !!00940
*             adjustments should be reflected in the BASE24-atm       !!00941
*             Settlement Clearing Report.  Valid second characters    !!00942
*             are:                                                    !!00943
*                                                                     !!00944
*             0 = Do not include adjustments in settlement clearings  !!00945
*                 report.                                             !!00946
*             1 = Include adjustments in settlement clearings report. !!00947
*                                                                     !!00948
  02 HOST-ADJ-PROCESSING        PIC XX.                                !00949
                                                                       !00950
                                                                       !00951
                                                                       !00952
*                                                                     !!00953
*             A code defining the institution's usage accumulation    !!00954
*             period length.  The length of a usage accumulation      !!00955
*             period defines how long customer usage data on the CAF  !!00956
*             and UAF is allowed to accumulate before it is cleared.  !!00957
*                                                                     !!00958
*             The value in this field is only referenced if the value !!00959
*             in the WRK-DAY field in this IDF segment is set to 0,   !!00960
*             indicating that the usage accumulation period length    !!00961
*             should be determined by this field.  If the value in    !!00962
*             the WRK-DAY field is set to 1, 2, or 3, the value in    !!00963
*             this field must be set to 0.                            !!00964
*                                                                     !!00965
*             If weekends and holidays affect when the usage          !!00966
*             accumulation fields are cleared, the value in the WRK-  !!00967
*             DAY field below must be used.  Valid values are:        !!00968
*                                                                     !!00969
*             0    = The period is indicated by the value in the      !!00970
*                    WRK-DAY field defined in this IDF segment.       !!00971
*             1-79 = The number of days in the period.                !!00972
*             80   = The period is one week (7 days).                 !!00973
*             81   = The period is two weeks (14 days).               !!00974
*             82   = The period begins on the first and fifteenth of  !!00975
*                    each month.                                      !!00976
*             83   = The period begins on the first of each month.    !!00977
*             84   = The period is 3 months.                          !!00978
*             85   = The period is 6 months.                          !!00979
*             86   = The period is 1 year.                            !!00980
*                                                                     !!00981
  02 PRD-LGTH                   TYPE BINARY 16.                        !00982
                                                                       !00983
                                                                       !00984
                                                                       !00985
                                                                       !00986
                                                                       !00987
*                                                                     !!00988
*             A code defining the institution's usage accumulation    !!00989
*             period length.  The length of a usage accumulation      !!00990
*             period defines how long customer usage data on the CAF  !!00991
*             and UAF are allowed to accumulate before they are       !!00992
*             cleared.                                                !!00993
*                                                                     !!00994
*             If codes 1, 2, or 3 are used in this field, the value   !!00995
*             in the PRD-LGTH field in this IDF segment must be set   !!00996
*             to 0.  If the value in the PRD-LGTH field is to be used !!00997
*             to determine the usage accumulation period length, the  !!00998
*             value in this field must be set to 0.  Valid values     !!00999
*             are:                                                    !!01000
*                                                                     !!01001
*             0 = The value in the PRD-LGTH field above is used to    !!01002
*                 determine the usage accumulation.                   !!01003
*             1 = Clear usage accumulation fields daily, except on    !!01004
*                 weekends and specified holidays.                    !!01005
*             2 = Clear usage accumulation fields daily, except on    !!01006
*                 Sundays and specified holidays.                     !!01007
*             3 = Clear usage accumulation fields daily, except on    !!01008
*                 Saturdays and specified holidays.                   !!01009
*                                                                     !!01010
*             Holidays are specified by the values in the HOL field   !!01011
*             of this IDF segment.                                    !!01012
*                                                                     !!01013
  02 WRK-DAY                      PIC X.                               !01014
                                                                       !01015
                                                                       !01016
*                                                                     !!01017
*             This field is not used.                                 !!01018
*                                                                     !!01019
  02 USER-FLD1                    PIC X.                               !01020
                                                                       !01021
                                                                       !01022
                                                                       !01023
                                                                       !01024
*                                                                     !!01025
*             The values in the following fields define the dates     !!01026
*             that are considered holidays by the institution.        !!01027
*                                                                     !!01028
  02 HOL                          OCCURS 20 TIMES.                     !01029
                                                                       !01030
*                                                                     !!01031
*             A maximum of twenty dates (YYMMDD) defining the         !!01032
*             legitimate holidays for this institution.               !!01033
*                                                                     !!01034
*             If the WRK-DAY field contains a value of 1, 2, or 3,    !!01035
*             these fields specify the holidays on which usage        !!01036
*             accumulation is not cleared.                            !!01037
*                                                                     !!01038
     04 DAT                       TYPE DAT.                            !01039
                                                                       !01040
                                                                       !01041
                                                                       !01042
*                                                                     !!01043
*             The starting date (YYMMDD) of the current usage         !!01044
*             accumulation period for all cardholders belonging to    !!01045
*             this institution.                                       !!01046
*                                                                     !!01047
*             The date in this field is placed in the LAST-RESET-DAT  !!01048
*             field in the Base segment of the CAF and in the LAST-   !!01049
*             USED fields of the BASE24-atm and BASE24-pos segments   !!01050
*             of the CAF records in which the usage accumulation      !!01051
*             fields have been cleared.                               !!01052
*                                                                     !!01053
*             When the value in the CUS-BUS-DAT field in the BASE24-  !!01054
*             atm or BASE24-pos segments is greater than or equal to  !!01055
*             the value in the NXT-BEG-DAT field of this IDF segment, !!01056
*             the value in the NXT-BEG-DAT field is placed in this    !!01057
*             field.                                                  !!01058
*                                                                     !!01059
  02 BEG-DAT                     TYPE DAT.                             !01060
                                                                       !01061
                                                                       !01062
*                                                                     !!01063
*             The starting date (YYMMDD) of the next usage            !!01064
*             accumulation period for all cardholders belonging to    !!01065
*             this institution.                                       !!01066
*                                                                     !!01067
*             When the value in the CUS-BUS-DAT field in the BASE24-  !!01068
*             atm or BASE24-pos segments is greater than or equal to  !!01069
*             the value in this field, this value is placed in the    !!01070
*             BEG-DAT field of this IDF segment.  A new value is then !!01071
*             computed and placed in this field.                      !!01072
*                                                                     !!01073
  02 NXT-BEG-DAT                 TYPE DAT.                             !01074
                                                                       !01075
                                                                       !01076
                                                                       !01077
*                                                                     !!01078
*             An indicator that identifies the last transaction to    !!01079
*             update this record.  The value in this field ensures    !!01080
*             against multiple or incomplete updates due to process   !!01081
*             failure and restart and occurs in every record that is  !!01082
*             updated by the online system.                           !!01083
*                                                                     !!01084
  02 LAST-TRAN                  TYPE *.                                !01085
                                                                       !01086
                                                                       !01087
*                                                                     !!01088
*             An indicator that identifies the last file maintenance  !!01089
*             action on this record.  This includes the user who      !!01090
*             performed the update, the time at which it was done,    !!01091
*             and the type of update.                                 !!01092
*                                                                     !!01093
  02 LAST-FM                    TYPE *.                                !01094
                                                                       !01095
                                                                       !01096
                                                                       !01097
                                                                       !01098
                                                                       !01099
                                                                       !01100
                                                                       !01101
                                                                       !01102
                                                                       !01102I00
*             This field indicates whether 'Other' accounts will       !01102I01
*             be processed as credit accounts or debit accounts.       !01102I02
*             Valid values are:  'C' - Credit and 'D' - Debit.         !01102I03
*             'D' is the default.                                      !01102I04
  02 OTHER-ACCT-TYP             PIC X.                                 !01102I05
                                                                       !01102I06
                                                                       !01103I00
                                                                       !01103I01
                                                                       !01103I02
                                                                       !01107
                                                                       !01108
*             The following fields are used to control the transaction!!01109
*             impacting preformed by the Refresh process after a PBF  !!01110
*             or CAF has been refreshed.  The Authorization process   !!01111
*             places this indicator in the product specific           !!01112
*             transaction log file for each transaction processed for !!01113
*             this institution.                                       !!01114
*                                                                     !!01115
*             Three settings are used for the PBF because an          !!01116
*             institution may have three separate PBFs and, therefore,!!01117
*             three Refresh processes; one for DDA accounts, one for  !!01118
*             Savings accounts and for credit accounts.  The four PBF !!01119
*             indicator is not used.                                  !!01120
*                                                                     !!01121
*             For systems where only one PBF is maintained, only PBF1 !!01122
*             is used.                                                !!01123
*                                                                     !!01124
*             The value of these fields consists of alphabetic        !!01125
*             indicators incremented by the Refresh process after each!!01126
*             refresh ( A to B, B to C, C to D, etc.).                !!01127
*                                                                     !!01128
  02 REFR-IND.                                                         !01129
     04  CAF1                   PIC X.                                 !01130
     04  PBF1                   PIC X.                                 !01131
     04  PBF2                   PIC X.                                 !01132
     04  PBF3                   PIC X.                                 !01133
     04  PBF4                   PIC X.                                 !01134
                                                                       !01135
                                                                       !01136
                                                                       !01137
*                                                                     !!01138
*                                                                     !!01139
*             This field was used for the alternate name of the       !!01140
*             Corporate Positive Balance File (CPBF) by institutions  !!01141
*             that use the Positive Balance Authorization method and  !!01142
*             have BASE24-cash manager configured in their system.    !!01143
*                                                                     !!01144
*             Support for BASE24-cash manager product has been        !!01145
*             discontinued.  This field was not removed or renamed    !!01146
*             because it was used by all other products in that       !!01147
*             system--not just BASE24-cash manager.                   !!01148
*                                                                     !!01149
  02 ALT-PBF4-NAME              TYPE FNAME.                            !01150
                                                                       !01151
                                                                       !01152
*                                                                     !!01153
*             This field is not used.                                 !!01154
*                                                                     !!01155
  02 USER-FLD3C                 PIC X.                                 !01156
*                                                                     !!01157
*             A map indicating the segments supported by this         !!01158
*             institution for the authorization files (i.e.,          !!01159
*             Cardholder Authorization File (CAF), Negative Card      !!01160
*             File (NEG), Positive Balance File (PBF), and Usage      !!01161
*             Accumulation File (UAF)).  The map is made up of 32     !!01162
                                                                       !01162G00
*             bits, followed by a second field of 224 bits.            !01162G01
                                                                       !01162G02
                                                                       !01163G00
*             Each bit indicates the presence (1) or                  !
                                                                       !01163G03
*             absence (0) of the corresponding file segment within    !!01164
*             the files mentioned previously.  Only those segments    !!01165
*             which are in the CAF, NEG, PBF, or UAF are assigned an  !!01166
*             entry.  The segments supported by an institution will   !!01167
*             always be a subset of those supported by the logical    !!01168
*             network.                                                !!01169
*                                                                     !!01170
*             The value in this field is set by the IDF               !!01171
*             requester/server based on the values in the FIID AUTH   !!01172
*             FILE SEGMENT INDICATORS fields.  This value is used     !!01173
*             by the CAF, NEG, PBF, and UAF requesters and servers    !!01174
*             to determine the segments which are supported in the    !!01175
*             file.  It is also used by the ATM, POS, and Teller      !!01176
*             Authorization and Settlement Initator processes to      !!01177
*             determine which IDF records to process, as they will    !!01178
*             not process for institutions which do not support their !!01179
*             specific product.  The Refresh and From Host Maintenance!!01180
*             processes also uses this field to determine which       !!01181
*             segments supported in the file.                         !!01182
*                                                                     !!01183
                                                                       !01183G00
*             The bit positions are in the same order as the           !01183G01
*             SEG-TABLE in the PITABLE file.                           !01183G02
                                                                       !01183G03
                                                                       !01183G04
                                                                       !01184G00
                                                                       !01184G01
                                                                       !01184G02
*                                                                     !!01211
  02 FIID-SEG-MAP               TYPE BINARY 32.                        !01212
                                                                       !01212G00
                                                                       !01212G01
  02 FIID-SEG-MAP-R             REDEFINES FIID-SEG-MAP                 !01212G02
                                TYPE BINARY 16 OCCURS 2 TIMES.         !01212G03
                                                                       !01212G04
                                                                       !01213
                                                                       !01213G00
                                                                       !01213G01
*             FIID-SEG-MAP extension. This field must always directly  !01213G02
*             follow the FIID-SEG-MAP.                                 !01213G03
                                                                       !01213G04
  02 FIID-SEG-MAP-EXT           TYPE BINARY 16 OCCURS 14 TIMES.        !01213G05
                                                                       !01213G06
                                                                       !01213G07
*                                                                     !!01214
*             The name of the Stop Payment File (SPF) for this        !!01215
*             institution.                                            !!01216
*                                                                     !!01217
                                                                       !01218
  02 SPF-NAME                  TYPE FNAME.                             !01219
                                                                       !01220
                                                                       !01220J00
*                                                                      !01220J01
*            This field contains a value that indicates whether        !01220J02
*            this institution utilizes a UAF, and if so, whether       !01220J03
*            the UAF is to be maintained as persistent.                !01220J04
*            Valid values are:                                         !01220J05
*                                                                      !01220J06
*            "0" - No, UAF is not utilized or Persistent UAF           !01220J07
*                  functionality not required (default)                !01220J08
*                                                                      !01220J09
*            "1" - Yes, Persistent UAF with Settlement support. The    !01220J0A
*                  UAF Cleanup will be initiated automatically         !01220J0B
*                  by the SETL process at LN or Midnight               !01220J0C
*                  Cutover, or can be initiated manually               !01220J0D
*                  by an operator, or automatically via an             !01220J0E
*                  ECF timer                                           !01220J0F
*                                                                      !01220J0G
*            "2" - Yes, Persistent UAF without Settlement support.     !01220J0H
*                  The UAF Cleanup can be initiated manually           !01220J0I
*                  by an operator, or automatically via an ECF         !01220J0J
*                  timer.                                              !01220J0K
*                                                                      !01220J0L
  02 PERSISTENT-UAF             PIC X.                                 !01220J0M
                                                                       !01220J0N
*                                                                     !!01221
*             This field is not used.                                 !!01222
*                                                                     !!01223
                                                                       !01224J00
  02 USER-FLD3                  PIC X(78).                             !01224J01
                                                                       !01224J02
                                                                       !01224K00
*                                                                      !01224K01
*             The name of the Dynamic Cardholder Authorization File    !01224K02
*             (CAFD) for this institution.                             !01224K03
*                                                                      !01224K04
                                                                       !01224K05
  02 CAFD-NAME                  TYPE FNAME.                            !01224K06
                                                                       !01224K07
*                                                                      !01224K08
*             Values indicating whether/how the PAN value is masked    !01224K09
*             in BASE24 reports.                                       !01224K0A
*                                                                      !01224K0B
                                                                       !01224K0C
  02 RPT-PAN-DIGITS.                                                   !01224K0D
     04 MASKING-FLG             PIC X.                                 !01224K0E
     04 MAX-LEFT-UNMASKED       PIC X.                                 !01224K0F
     04 MIN-MASKED              PIC X.                                 !01224K0G
     04 RIGHT-UNMASKED          PIC X.                                 !01224K0H
                                                                       !01224K0I
                                                                       !01224H00
                                                                       !01224H01
*             USER-FLD-ACI is reserved for future BASE24 product       !01224H02
*             use only.  The designation of "product use only"         !01224H03
*             provides ACI with the ability to deplete the number      !01224H04
*             of bytes available within USER-FLD-ACI as product        !01224H05
*             enhancements are introduced.  When product               !01224H06
*             enhancements require the addition of new fields          !01224H07
*             within this file, the procedure to be followed is        !01224H08
*             to deplete from USER-FLD-ACI bytes and use that          !01224H09
*             number of bytes to define new fields.  The new           !01224H0A
*             field definition(s) should precede the USER-FLD-ACI      !01224H0B
*             field.                                                   !01224H0C
                                                                       !01224H0D
                                                                       !01224K0J
  02 USER-FLD-ACI               PIC X(11).                             !01224K0K
                                                                       !01224K0L
                                                                       !01224H0F
*             USER-FLD-REGN is reserved for regional use only.         !01224H0G
*             Only regions are allowed to use USER-FLD-REGN            !01224H0H
*             space.                                                   !01224H0I
                                                                       !01224H0J
   02 USER-FLD-REGN              PIC X(50).                            !01224H0K
                                                                       !01224H0L
*             USER-FLD-CUST is reserved for customer use only.         !01224H0M
*             Only customers are allowed to use USER-FLD-CUST          !01224H0N
*             space.                                                   !01224H0O
                                                                       !01224H0P
    02 USER-FLD-CUST              PIC X(50).                           !01224H0Q
                                                                       !01224H0R
                                                                       !01224H0S
                                                                       !01225
                                                                       !01226G00
                                                                       !01226G01
 END                                                                   !01227
                                                                       !01228
?page "ATMIDF - ATM IDF Segment"
?section ATMIDF
                                                                       !01233
*             The following fields make up the ATM segment of the     !!01234
*             Institution Definition File (IDF).                      !!01235
  DEFINITION ATMIDF.                                                   !01236
                                                                       !01237
                                                                       !01238
  02 SEG-LGTH                     TYPE *.                              !01239
                                                                       !01240
                                                                       !01241
*                                                                     !!01242
*             A code indicating whether PIN Change transactions       !!01243
*             are sent to the host.  Valid values are:                !!01244
*                                                                     !!01245
*             0 = Do not send to the host, approve and log to the     !!01246
*                 Transaction Log File (TLF).                         !!01247
*             1 = Send to the host, approve if host is down.          !!01248
*             2 = Send to the host, deny if host is down.             !!01249
*                                                                     !!01250
*             The value in this field is only used with authorization !!01251
*             level 1 (online) and authorization level 3              !!01252
*             (online/offline).                                       !!01253
*                                                                     !!01254
  02 HOST-PIN-CHANGE-OPT          PIC 9(1).                            !01255
                                                                       !01256
                                                                       !01257
                                                                       !01258
*                                                                     !!01259
*             A code indicating how customer balance information is   !!01260
*             to be handled at the terminal.  Based on the            !!01261
*             transaction, this information includes either balance   !!01262
*             or payment information.  Values are:                    !!01263
*                                                                     !!01264
*             0 = Give no amount information.                         !!01265
*             1 = Give the AMT-2 only.                                !!01266
*             2 = Give the AMT-3 only.                                !!01267
*             3 = Give both AMT-2 and AMT-3, AMT-2 is given           !!01268
*                 preference.                                         !!01269
*             4 = Give both AMT-2 and AMT-3, AMT-3 is given           !!01270
*                 preference.                                         !!01271
*                                                                     !!01272
*             The amounts reflect the amounts in the AMT-1, AMT-2,    !!01273
*             and AMT-3 fields in the Standard Internal Message       !!01274
*             (STM).                                                  !!01275
*                                                                     !!01276
*             The preference noted in codes 3 and 4 is used when the  !!01277
*             terminal is unable to print two amounts.                !!01278
*                                                                     !!01279
  02 CUST-BAL-INFO               PIC 9.                                !01280
                                                                       !01281
                                                                       !01282
                                                                       !01283
*                                                                     !!01284
*             A code indicating the method in which the card issuer   !!01285
*             wants balances to be presented to customers.            !!01286
*                                                                     !!01287
*             The value in this field is used with the value in the   !!01288
*             CUST-BAL-DSPY field in the Terminal Data File (TDF).    !!01289
*             Values are:                                             !!01290
*                                                                     !!01291
*             0 = Do not print or display.                            !!01292
*             1 = Display on the screen only.                         !!01293
*             2 = Print on the receipt only.                          !!01294
*             3 = Print and display.                                  !!01295
*                                                                     !!01296
  02 CUST-BAL-DSPY               PIC 9.                                !01297
                                                                       !01298
                                                                       !01299
                                                                       !01300
*                                                                     !!01301
*             A code identifying which ATM balance information is     !!01302
*             printed or displayed.  This field is only functional    !!01303
*             with the Positive Balance Authorization method.  With   !!01304
*             other authorization methods, balance information from   !!01305
*             the online host is used.  Values are:                   !!01306
*                                                                     !!01307
*             0 = Use BASE24 balance information.                     !!01308
*             1 = Use online host balance information.                !!01309
*                                                                     !!01310
  02 HOST-B24-BAL                PIC 9.                                !01311
                                                                       !01312
                                                                       !01313
                                                                       !01314
                                                                       !01314L00
*                                                                      !01314L01
*             The account type to be used for fast cash transactions,  !01314L02
*             balance inquiries in which no account type has been      !01314L03
*             specified, and PIN change/EMV PIN unblock transactions   !01314L04
*             with a non-zero transaction amount.                      !01314L05
*                                                                      !01314L06
*             Also used for Smart Card when funds account unspecified. !01314L07
*                                                                      !01314L08
*             Valid values are:                                        !01314L09
*                                                                      !01314L0A
*             00 = Use CAF first primary account. If a CAF is not      !01314L0B
*                  configured for authorization processing, use        !01314L0C
*                  checking account type.                              !01314L0D
*             01 = Use checking account type.                          !01314L0E
*             11 = Use savings account type.                           !01314L0F
*             31 = Use credit account type.                            !01314L0G
*             60 = Use other account type.                             !01314L0H
*             99 = Use default account type (00) for Level 1           !01314L0I
*                  authorization. Perform same processing as a value   !01314L0J
*                  of 00 for other authorization levels.               !01314L0K
*                                                                      !01314L0L
                                                                       !01314L0M
                                                                       !01315L00
                                                                       !01315L01
                                                                       !01315L02
  02 FAST-CASH-ACCT              PIC X(2).                             !01324
                                                                       !01325
                                                                       !01326
                                                                       !01327
*                                                                     !!01328
*             The ATM balancing window start time (HHMM).             !!01329
*                                                                     !!01330
*             The value in this field must be less than or equal to   !!01331
*             the balance window end time defined in the ATM-BAL-AND- !!01332
*             CUTOVER-END field.                                      !!01333
*                                                                     !!01334
*             For institutions that allow their terminals to be       !!01335
*             balanced only once during a BASE24 processing day (the  !!01336
*             value in the TERM-BAL-FLG field is set to 0), the value !!01337
*             in this field designates the time period during which   !!01338
*             ATMs are normally balanced with an administrative card  !!01339
*             or via the Device Control Terminal (DCT).  ATMs not     !!01340
*             balanced by the end of the window are automatically cut !!01341
*             over to a new posting date.                             !!01342
*                                                                     !!01343
*             Refer to the "BASE24-atm Settlement and Reporting       !!01344
*             Manual" for a detailed discussion of balancing and      !!01345
*             cutover.                                                !!01346
*                                                                     !!01347
  02 ATM-BAL-AND-CUTOVER-STRT     TYPE BINARY 16.                      !01348
                                                                       !01349
                                                                       !01350
*                                                                     !!01351
*             The ATM balancing window stop time (HHMM).              !!01352
*                                                                     !!01353
*             The value in this field must be at least 30 minutes     !!01354
*             prior to the logical network cutover time specified in  !!01355
*             the ATM-LN-CUTOVER param in the LCONF.                  !!01356
*                                                                     !!01357
*             For institutions that allow their terminals to be       !!01358
*             balanced more than once during a BASE24 processing day  !!01359
*             (the value in the TERM-BAL-FLG field is set to 1), the  !!01360
*             value in this field designates the time at which the    !!01361
*             Settlement Initiator process cuts the terminal over to  !!01362
*             a new posting date.                                     !!01363
*                                                                     !!01364
*             Refer to the "BASE24-atm Settlement and Reporting       !!01365
*             Manual" for a detailed discussion of balancing and      !!01366
*             cutover.                                                !!01367
*                                                                     !!01368
  02 ATM-BAL-AND-CUTOVER-END      TYPE BINARY 16.                      !01369
                                                                       !01370
                                                                       !01371
*                                                                     !!01372
*             A code identifying the terminal balancing procedures    !!01373
*             for this institution.  Valid values are:                !!01374
*                                                                     !!01375
*             0 = Use terminal balancing window.                      !!01376
*             1 = Balance terminals anytime but do not update posting !!01377
*                 date.                                               !!01378
*                                                                     !!01379
*             For value 0, terminals can only be balanced once a day; !!01380
*             They must be balanced within the institution's          !!01381
*             balancing window. A balancing transaction cuts over     !!01382
*             the value in the POST-DAT field in the TDF.             !!01383
*                                                                     !!01384
*             For value 1, terminals can be balanced any time and as  !!01385
*             many times as desired by the terminal owner without     !!01386
*             regard for the balancing window.  In this case,         !!01387
*             terminal balancing does not cut over the value in the   !!01388
*             POST-DAT field in the TDF.  The value in the POST-DAT   !!01389
*             field is instead cut over automatically by the system   !!01390
*             at the end time specified in the institution's          !!01391
*             balancing window (the value in the ATM-BAL-AND-CUTOVER- !!01392
*             END field).                                             !!01393
*                                                                     !!01394
  02 TERM-BAL-FLG                 PIC X.                               !01395
                                                                       !01396
                                                                       !01397
*                                                                     !!01398
*             The previous BASE24-atm processing date (YYMMDD).       !!01399
*                                                                     !!01400
*             This is one calendar date less than the value in the    !!01401
*             CUR-BUS-DAT field and is referred to as the reporting   !!01402
*             business date because the current reports reflect this  !!01403
*             date's activity.                                        !!01404
*                                                                     !!01405
*             The value in this field may be altered for record       !!01406
*             maintenance purposes (i.e., in the event that the       !!01407
*             Settlement Initiator process fails).                    !!01408
*                                                                     !!01409
  02 RPT-BUS-DAT                  TYPE DAT.                            !01410
                                                                       !01411
                                                                       !01412
*                                                                     !!01413
*             The current BASE24-atm processing date (YYMMDD).        !!01414
*                                                                     !!01415
*             The value of this field is incremented by one calendar  !!01416
*             day at institution cutover (the time specified in the   !!01417
*             ATM-BAL-AND-CUTOVER-END field).  The date is            !!01418
*             incremented every day, including holidays and weekends. !!01419
*                                                                     !!01420
*             The date can be altered for record maintenance          !!01421
*             purposes, (i.e., in the event the Settlement Initiator  !!01422
*             process fails).                                         !!01423
*                                                                     !!01424
  02 CUR-BUS-DAT                  TYPE DAT.                            !01425
                                                                       !01426
                                                                       !01427
*                                                                     !!01428
*             The next BASE24-atm processing date (YYMMDD).  This is  !!01429
*             one calendar day greater than the value in the CUR-BUS- !!01430
*             DAT field.                                              !!01431
*                                                                     !!01432
*             This date can be altered for record maintenance         !!01433
*             purposes, (i.e., in the event the Settlement Initiator  !!01434
*             process fails).                                         !!01435
*                                                                     !!01436
  02 NXT-BUS-DAT                  TYPE DAT.                            !01437
                                                                       !01438
                                                                       !01439
*                                                                     !!01440
*             The ending date (YYMMDD) of the current usage           !!01441
*             accumulation period.                                    !!01442
*                                                                     !!01443
*             For institutions that consider holidays, Saturdays,     !!01444
*             and/or Sundays when determining their usage             !!01445
*             accumulation periods (the value in the WRK-DAY field in !!01446
*             the Base segment of the IDF set to 1, 2, or 3), the     !!01447
*             value in this field is the end date of the current      !!01448
*             usage accumulation period.                              !!01449
*                                                                     !!01450
*             For institutions that determine their usage             !!01451
*             accumulation periods by the value in the PRD-LGTH field !!01452
*             in the Base segment of the IDF, the value in this field !!01453
*             is the current BASE24 processing date.                  !!01454
*                                                                     !!01455
*             Depending on how the values in the WRK-DAY and PRD-LGTH !!01456
*             fields in the Base segment of the IDF are set, this     !!01457
*             field may contain a date greater than the date in the   !!01458
*             CUR-BUS-DAT field of this IDF segment.                  !!01459
*                                                                     !!01460
*             The value in this field is used for processing purposes !!01461
*             to determine when to purge the UAF and when the values  !!01462
*             in the BEG-DAT and NXT-BEG-DAT fields in the Base       !!01463
*             segment of the IDF are changed.                         !!01464
*                                                                     !!01465
  02 CUS-BUS-DAT                  TYPE DAT.                            !01466
                                                                       !01467
                                                                       !01468
*                                                                     !!01469
*             A code indicating whether log-only transactions         !!01470
*             are sent to the host.  Valid values are:                !!01471
*                                                                     !!01472
*             0 = Do not send to the host, approve and log to the     !!01473
*                 Transaction Log File (TLF).                         !!01474
*             1 = Send to the host, approve if host is down.          !!01475
*             2 = Send to the host, deny if host is down.             !!01476
*                                                                     !!01477
*             The value in this field is only used with authorization !!01478
*             level 1 (online) and authorization level 3              !!01479
*             (online/offline).                                       !!01480
*                                                                     !!01481
  02 HOST-LOGONLY-OPT             PIC 9(1).                            !01482
                                                                       !01483
                                                                       !01483G00
*             The token data retrieval option.  When the device        !01483G01
*             handler is processing a reversal, this field indicates   !01483G02
*             where the token data should be retrieved.  Valid values  !01483G03
*             are:                                                     !01483G04
*                                                                      !01483G05
*             0 = no tokens included in the reversal message.          !01483G06
*             1 = ATD. Token data retrieved from the terminal data     !01483G07
*                      file, and appended to the reversal message.     !01483G08
*             2 = TLF. Token data retrieved from the transaction log   !01483G09
*                      file, and appended to the reversal message.     !01483G0A
*                                                                      !01483G0B
*             The default value is 2.                                  !01483G0C
                                                                       !01483G0D
  02 TKN-RETRV-OPT                PIC X.                               !01483G0E
                                                                       !01483G0F
*             This field is not used.                                 !!01484
                                                                       !01485
                                                                       !01486G00
  02 USER-FLD3D                   PIC X(1).                            !01486G01
                                                                       !01486G02
                                                                       !01487
                                                                       !01488
                                                                       !01489G00
                                                                       !01489G01
                                                                       !01489G02
*                                                                     !!01585
*             A code that determines whether deposits at an ATM have  !!01586
*             settlement impact.                                      !!01587
*                                                                     !!01588
*             An institution can choose to collect paper items        !!01589
*             without clearing them, and thus these items would not   !!01590
*             be included in settlement totals.  The value in this    !!01591
*             field is used in the creation of an institution's       !!01592
*             settlement reports; it does not affect whether a        !!01593
*             transaction is logged to the TLF.  Values are:          !!01594
*                                                                     !!01595
*             0 = Deposits do not have settlement impact.             !!01596
*             1 = Envelope and check deposits have settlement impact. !!01597
*             2 = Commercial deposits (e.g., Securomatic deposits)    !!01598
*                 have settlement impact.                             !!01599
*             3 = Envelope, check and commercial deposits have        !!01600
*                 settlement impact.                                  !!01601
*                                                                     !!01602
  02 DEP-SETL-IMP-FLG             PIC X.                               !01603
                                                                       !01604
                                                                       !01605
                                                                       !01605G00
*                                                                      !01605G01
*             Indicates if a statement print transaction should be     !01605G02
*             sent to the Host even if the IDF routing table           !01605G03
*             entry indicates that the transaction should be           !01605G04
*             authorized offline. Valid values:                        !01605G05
*                                                                      !01605G06
*             0 = Do not send the statement print transaction to       !01605G07
*                 the Host.                                            !01605G08
*             1 = Send the statement print transaction to the Host.    !01605G09
*                                                                      !01605G0A
                                                                       !01605G0B
  02 STMT-PRNT-ONLINE             PIC X.                               !01605G0C
                                                                       !01605G0D
                                                                       !01605G0E
                                                                       !01606G00
                                                                       !01606G01
                                                                       !01606G02
*                                                                     !!01629
*             This field is not used.                                 !!01630
*                                                                     !!01631
  02 USER-FLD3B                   PIC X(2).                            !01632
                                                                       !01633
                                                                       !01634
*                                                                     !!01635
*             The routing table used by BASE24-atm to control the     !!01636
*             authorization processing for a particular institution.  !!01637
*                                                                     !!01638
*             The values in this table allow institutions to specify  !!01639
*             the host DPC, authorization level, and authorization    !!01640
*             method to use for authorizations.  Parameters are set   !!01641
*             at the transaction level, that is, according to the     !!01642
*             card prefix and account type involved in a transaction. !!01643
*                                                                     !!01644
*             The intent of this table is to enable institutions to   !!01645
*             segregate transactions by prefix group and account type !!01646
*             for processing by separate host DPCs under separate     !!01647
*             authorization parameters.  For example, one DPC might   !!01648
*             process a separate group of prefixes exclusively while  !!01649
*             another might process authorizations only for credit    !!01650
*             accounts.  In this case, each DPC would have a separate !!01651
*             entry in the table, each entry with its own processing  !!01652
*             parameters.  If all processing is handled by the same   !!01653
*             DPC, only one entry is required.                        !!01654
*                                                                     !!01655
  02 RT-TBL                       OCCURS 5 TIMES.                      !01656
                                                                       !01657
                                                                       !01658
*                                                                     !!01659
*             The DPC number of the host computer to which            !!01660
*             transactions included under this table entry's          !!01661
*             processing parameters are routed.                       !!01662
*                                                                     !!01663
*             This DPC number must correspond to the DPC number       !!01664
*             assigned to the host computer in the Host Configuration !!01665
*             File (HCF).                                             !!01666
*                                                                     !!01667
*             Unless a table entry requires absolutely no             !!01668
*             communications with a host, this field should always    !!01669
*             contain a DPC number.  If no communications are         !!01670
*             required with a host, the value in this field can be    !!01671
*             set to zero.                                            !!01672
*                                                                     !!01673
     04  PRI-DPC                  TYPE BINARY 16.                      !01674
                                                                       !01675
                                                                       !01676
*                                                                     !!01677
*             The symbolic name of the Host Interface process used    !!01678
*             for sending this group of transactions to the host DPC. !!01679
*                                                                     !!01680
*             If used, the value in the SYM-NAME field must match     !!01681
*             exactly the name given to the Host Interface process in !!01682
*             the Network Environment Source File (NEFS).             !!01683
*                                                                     !!01684
*             Unless a table entry requires absolutely no             !!01685
*             communication with a host, this field should always     !!01686
*             contain the symbolic name of a Host Interface process.  !!01687
*             If no communication is required with a host, this field !!01688
*             may be left blank except for the first table entry.     !!01689
*             The first table entry must always contain a value.      !!01690
*                                                                     !!01691
*             Wildcarding refers to the ability to substitute         !!01692
*             asterisks in this field for certain positions of the    !!01693
*             symbolic name.  The Authorization process can then      !!01694
*             replace the asterisks with corresponding positions of   !!01695
*             its own name when selecting the Host Interface process  !!01696
*             to which to forward a message.                          !!01697
*                                                                     !!01698
*             This wildcard feature allows for matching multiple      !!01699
*             Authorization processes to multiple Host Interface      !!01700
*             processes via a single table entry.                     !!01701
*                                                                     !!01702
*             For example, if this field was set to ***^HSAF* and the !!01703
*             Authorization process's name was P1A^AUTH1, the         !!01704
*             Authorization process would use P1A^HSAF1.  If the      !!01705
*             Authorization process's name was P1C^AUTH2, it would    !!01706
*             use P1C^HSAF2.                                          !!01707
*                                                                     !!01708
     04  SYM-NAME                 TYPE *.                              !01709
                                                                       !01710
                                                                       !01711
*                                                                     !!01712
*             The transaction account type to be processed according  !!01713
*             to this table entry's parameters.                       !!01714
*                                                                     !!01715
*             A match in the value in this field and the value in the !!01716
*             PREFIX-RTE field in this table entry determines the     !!01717
*             authorization and routing parameters for a transaction. !!01718
*             Valid values are:                                       !!01719
*                                                                     !!01720
*             01 = Checking accounts (used for account types 01-09).  !!01721
*             11 = Savings accounts (used for account types 11-19).   !!01722
*             31 = Credit accounts (used for account types 31-39).    !!01723
*             AL = All accounts (will match on any account type).     !!01724
*                                                                     !!01725
*             For transactions, such as transfers, involving          !!01726
*             different account types, the from account and to        !!01727
*             account sides may be processed differently according to !!01728
*             different table entries.  The withdrawal side of the    !!01729
*             transaction may be sent to one DPC while the deposit    !!01730
*             side is sent to another.                                !!01731
*                                                                     !!01732
     04  ACCT-TYP                 PIC X(2).                            !01733
                                                                       !01734
                                                                       !01735
*                                                                     !!01736
*             The card prefixes processed according to this table     !!01737
*             entry's parameters.                                     !!01738
*                                                                     !!01739
*             Card prefixes can be grouped in the Card Prefix File    !!01740
*             (using the values in the PREFIX-RTE field in the Base   !!01741
*             segment of the CPF for different types of authorization !!01742
*             processing).  The value in this field ties the card     !!01743
*             prefix groups to this table entry.                      !!01744
*                                                                     !!01745
*             A match in the value in this field and the value in the !!01746
*             ACCT-TYP in this table entry determines the             !!01747
*             authorization and routing parameters for a transaction. !!01748
*             Valid values are:                                       !!01749
*                                                                     !!01750
*             0-9 = Prefix routing numbers - must match the prefix    !!01751
*                   group number assigned in the PREFIX-RTE field in  !!01752
*                   the Base segment of the CPF.                      !!01753
*             A   = All prefixes.  This setting acts as a default     !!01754
*                   value for any prefixes not accounted for by a     !!01755
*                   more specific table entry.                        !!01756
*                                                                     !!01757
     04  PREFIX-RTE               PIC X.                               !01758
                                                                       !01759
                                                                       !01760
*                                                                     !!01761
*             A code indicating the type of authorization method used !!01762
*             to process transactions when the values in the ACCT-TYP !!01763
*             and PREFIX-RTE fields on the same line in the table     !!01764
*             match those of the transaction being processed.  Valid  !!01765
*             values are:                                             !!01766
*                                                                     !!01767
*             0 = Host Authorization (no database maintained on       !!01768
*                 BASE24) - used when the value in the AUTH-LVL field !!01769
*                 is set to 1.                                        !!01770
*             1 = Negative Authorization with Usage Accumulation      !!01771
*                 (NEG/UAF) - requires NEG and UAF file names to be   !!01772
*                 present in the Base segment of the IDF.             !!01773
*             2 = Positive Authorization (CAF) - requires the CAF     !!01774
*                 name to be present in the Base segment of the IDF.  !!01775
*             3 = Positive Balance Authorization (CAF/PBF) - requires !!01776
*                 the CAF and PBF file names to be present in the     !!01777
*                 Base segment of the IDF.                            !!01778
*             4 = Negative Authorization without Usage Accumulation   !!01779
*                 (NEG) - requires the NEG file name to be present in !!01780
*                 the Base segment of the IDF.                        !!01781
*             5 = Future use                                          !!01782
*                                                                     !!01783
*             A value of 0 is valid with Authorization level 1 only.  !!01784
*             Values of 1 through 4 are valid with Authorization      !!01785
*             levels 2 and 3 only.                                    !!01786
*                                                                     !!01787
     04  AUTH-TYP                 PIC X.                               !01788
                                                                       !01789
                                                                       !01790
*                                                                     !!01791
*             The authorization level that applies when the values in !!01792
*             the ACCT-TYP field and PREFIX-RTE fields in this table  !!01793
*             entry match those of the transaction being processed.   !!01794
*             Valid values are:                                       !!01795
*                                                                     !!01796
*             1 = Authorization level 1 (online only).  The host      !!01797
*                 receives requests and reversals (subject to the     !!01798
*                 setting in the COMPL-REQ field).  Authorizations    !!01799
*                 may not be granted when the host is down.           !!01800
*             2 = Authorization level 2 (offline only).  The host     !!01801
*                 does not receive any messages (subject to the       !!01802
*                 setting in the COMPL-REQ field).  BASE24 performs   !!01803
*                 all authorizations.                                 !!01804
*             3 = Authorization level 3 (online/offline).  The host   !!01805
*                 receives requests and reversals (subject to the     !!01806
*                 setting in the COMPL-REQ field).  If the host is    !!01807
*                 down, authorizations may still be granted by        !!01808
*                 BASE24.                                             !!01809
*                                                                     !!01810
     04  AUTH-LVL                 PIC X.                               !01811
                                                                       !01812
*                                                                     !!01813
*             This field is not used.                                 !!01814
*                                                                     !!01815
     04  USER-FLD4                PIC X.                               !01816
                                                                       !01817
                                                                       !01818
*                                                                     !!01819
*             A code used by the BASE24-atm Authorization process for !!01820
*             routing log messages specifically on behalf of this     !!01821
*             institution.                                            !!01822
*                                                                     !!01823
  02 LOG-RT-CDE                   TYPE BINARY 16.                      !01824
                                                                       !01825G00
*                                                                      !01825G01
*             Profile used as part of the key to read the APCF         !01825G02
*             to determine if a specific transaction is allowed        !01825G03
                                                                       !01825I00
*             for not-on-us cardholders at terminals owned by          !01825I01
*             this institution.                                        !01825I02
                                                                       !01825I03
*                                                                      !01825G05
  02 ACQ-TXN-PRFL                 TYPE PRFL.                           !01825G06
*                                                                      !01825G07
*             Profile used as part of the key to read the IPCF         !01825G08
*             to determine if a specific transaction is allowed        !01825G09
                                                                       !01825I04
*             by cardholders of this institution.                      !01825I05
                                                                       !01825I06
*                                                                      !01825G0B
  02 ISS-TXN-PRFL                 TYPE PRFL.                           !01825G0C
                                                                       !01825G0D
                                                                       !01825G0E
*                                                                     !!01826
*             This field is not used.                                 !!01827
*                                                                     !!01828
  02 USER-FLD5                    PIC X(48).                           !01829
                                                                       !01830
 END                                                                   !01831
                                                                       !01832
?page "POSIDF - POS IDF Segment"
?section POSIDF
                                                                       !01837
*             The following fields make up the POS segment of the     !!01838
*             Institution Definition File (IDF).                      !!01839
DEFINITION POSIDF.                                                     !01840
                                                                       !01841
                                                                       !01842
*                                                                     !!01843
  02 SEG-LGTH                  TYPE *.                                 !01844
                                                                       !01845G00
                                                                       !01845G01
                                                                       !01845G02
                                                                       !01909
                                                                       !01910
*                                                                     !!01911
*             A set of codes indicating whether the institution       !!01912
                                                                       !01913G00
                                                                       !01913G01
*             requires BASE24 to transmit completion messages (0500)  !
*             to the host for terminal totals transactions.           !
                                                                       !01913G06
                                                                       !01915G00
                                                                       !01915G01
                                                                       !01915G02
*             Values are:                                             !!01924
*                                                                     !!01925
                                                                       !01926G00
                                                                       !01926G01
*             0 = Do not send 0500 messages                           !
*             1 = Send 0500 messages                                  !
                                                                       !01926G06
                                                                       !01928G00
                                                                       !01928G01
                                                                       !01928G02
*                                                                     !!01932
*             OFFSET  TRANSACTIONS                                    !!01933
*             ------  ----------------------------------------------- !!01934
                                                                       !01935G00
                                                                       !01935G01
                                                                       !01935G02
                                                                       !01937G00
*               0     Terminal batch totals                           !
                                                                       !01937G03
                                                                       !01938G00
                                                                       !01938G01
                                                                       !01938G02
                                                                       !01940G00
*               1     Terminal shift totals                           !
                                                                       !01940G03
                                                                       !01941G00
                                                                       !01941G01
                                                                       !01941G02
                                                                       !01943G00
*               2     Terminal daily totals                           !
                                                                       !01943G03
                                                                       !01944G00
                                                                       !01944G01
                                                                       !01944G02
                                                                       !01946G00
*               3     Current terminal network totals                 !
                                                                       !01946G03
                                                                       !01947G00
                                                                       !01947G01
                                                                       !01947G02
                                                                       !01949G00
*               4     Service totals                                  !
                                                                       !01949G03
                                                                       !01950G00
                                                                       !01950G01
                                                                       !01950G02
                                                                       !01956G00
*              5-9    Not used                                        !
                                                                       !01956G03
*                                                                     !!01957
                                                                       !01958G00
  02 COMPL-REQ                 PIC X(10).                              !01958G01
                                                                       !01958G02
                                                                       !01959
                                                                       !01960
*                                                                     !!01961
*             The BASE24-pos balancing window start time (HHMM).      !!01962
*                                                                     !!01963
*             The time indicated in this field must be less than or   !!01964
*             equal to the stop time indicated in the BAL-AND-        !!01965
*             CUTOVER-END field.  Refer to the "BASE24-pos Settlement !!01966
*             and Reporting Manual" for a detailed discussion of      !!01967
*             balancing and cutover.                                  !!01968
*                                                                     !!01969
  02 BAL-AND-CUTOVER-STRT      TYPE BINARY 16.                         !01970
                                                                       !01971
                                                                       !01972
*                                                                     !!01973
*             The BASE24-pos balancing window end time (HHMM).        !!01974
*                                                                     !!01975
*             The end time must be less the the difference between    !!01976
*             the logical network cutover time specified in the       !!01977
*             POS-LN-CUTOVER param of the LCONF and the logical       !!01978
*             network cutover lead time specified in the              !!01979
*             POS-SETL-LN-CUTOVER-LEAD-TIME param of the LCONF.       !!01980
*             Refer to the "BASE24-pos Settlement and Reporting       !!01981
*             Manual" for a detailed discussion of balancing and      !!01982
*             cutover.                                                !!01983
*                                                                     !!01984
  02 BAL-AND-CUTOVER-END       TYPE BINARY 16.                         !01985
                                                                       !01986
                                                                       !01987
*                                                                     !!01988
*             The values in the following fields are used to set      !!01989
*             parameters controlling the production of Cardholder     !!01990
*             Activity Reports.                                       !!01991
*                                                                     !!01992
  02 CRD-ACT-RPT.                                                      !01993
                                                                       !01994
                                                                       !01995
*                                                                     !!01996
*             The printer location at which the Cardholder Activity   !!01997
*             Reports print.  This field must contain a valid Tandem  !!01998
*             Spooler location name (e.g., $S.#LP).  A network name   !!01999
*             can be inserted before $S.# (e.g., \ACI.$S.#CARD).      !!02000
*                                                                     !!02001
*             The default value for this field is $S.#CARD.           !!02002
*                                                                     !!02003
     04 PRNT-LOC                       PIC X(16).                      !02004
                                                                       !02005
                                                                       !02006
*                                                                     !!02007
*             A code indicating the type of reports to generate.      !!02008
*             Values are:                                             !!02009
*                                                                     !!02010
*             0 = Full reports (default value)                        !!02011
*             1 = Full reports - print totals separately              !!02012
*             2 = Totals only                                         !!02013
*             3 = No report                                           !!02014
*                                                                     !!02015
     04 RPT-CREATION-FLG               PIC X.                          !02016
                                                                       !02017
                                                                       !02018
*                                                                     !!02019
*             The number of days periodic report data is kept in the  !!02020
*             Periodic Institution Reporting File (PIRF) for this     !!02021
*             institution.  The BASE24-pos report programs            !!02022
*             automatically purge data from the PIRF that is dated    !!02023
*             outside the report retention period indicated in this   !!02024
*             field.  The default value is 7.                         !!02025
*                                                                     !!02026
     04 PERIODIC-FILE-RET              PIC X(3).                       !02027
                                                                       !02028
                                                                       !02029
*                                                                     !!02030
*             The value in the following field is used to set         !!02031
*             parameters controlling the production of the retailer   !!02032
*             reports.                                                !!02033
*                                                                     !!02034
  02 MERCHANT-SETL-RPT.                                                !02035
                                                                       !02036
                                                                       !02037
*                                                                     !!02038
*             The printer location at which the retailer settlement   !!02039
*             reports for this institution's retailers are to be      !!02040
*             printed.  This field must contain a valid Tandem        !!02041
*             Spooler location name (e.g., $S.#LP).  A network name   !!02042
*             can be inserted before the $S.# (e.g., \ACI.$S.#RETL).  !!02043
*                                                                     !!02044
*             The default value for this field is $S.#RETL.           !!02045
*                                                                     !!02046
     04 PRNT-LOC                       PIC X(16).                      !02047
                                                                       !02048
                                                                       !02049
*                                                                     !!02050
*             The previous BASE24-pos processing date (YYMMDD).       !!02051
*                                                                     !!02052
*             This is one calendar date less than the date in the     !!02053
*             CUR-BUS-DAT field and is referred to as the reporting   !!02054
*             business date because the current reports reflect this  !!02055
*             date's activity.                                        !!02056
*                                                                     !!02057
*             The value in this field can be altered for record       !!02058
*             maintenance purposes (i.e., in the event that the       !!02059
*             Settlement Initiator process fails).                    !!02060
*                                                                     !!02061
  02 RPT-BUS-DAT               TYPE DAT.                               !02062
                                                                       !02063
                                                                       !02064
*                                                                     !!02065
*             The current BASE24-pos processing date (YYMMDD).        !!02066
*                                                                     !!02067
*             The value of this field is incremented by one calendar  !!02068
*             day at institution cutover.  The date is incremented    !!02069
*             every day, including holidays and weekends.             !!02070
*                                                                     !!02071
*             The value in this field can be altered for record       !!02072
*             maintenance purposes (i.e., in the event that the       !!02073
*             Settlement Initiator process fails).                    !!02074
*                                                                     !!02075
  02 CUR-BUS-DAT               TYPE DAT.                               !02076
                                                                       !02077
                                                                       !02078
*                                                                     !!02079
*             The next BASE24-pos processing date (YYMMDD).  This is  !!02080
*             one calendar day greater than the value in the CUR-BUS- !!02081
*             DAT field.                                              !!02082
*                                                                     !!02083
*             The value in this field can be altered for record       !!02084
*             maintenance purposes (i.e., in the event that the       !!02085
*             Settlement Initiator process fails).                    !!02086
*                                                                     !!02087
  02 NXT-BUS-DAT               TYPE DAT.                               !02088
                                                                       !02089
                                                                       !02090
*                                                                     !!02091
*             The current customer processing date (YYMMDD).          !!02092
*                                                                     !!02093
*             For institutions that consider holidays, Saturdays,     !!02094
*             and/or Sundays when determining their usage             !!02095
*             accumulation period (the value in the WRK-DAY field in  !!02096
*             the Base segment of the IDF set to 1, 2, or 3), this    !!02097
*             field is the ending date of the current usage           !!02098
*             accumulation period.                                    !!02099
*                                                                     !!02100
*             For institutions that determine their usage             !!02101
*             accumulation period by the value in the PRD-LGTH field  !!02102
*             in the Base segment of the IDF, the value in this field !!02103
*             is the current BASE24 processing date.                  !!02104
*                                                                     !!02105
*             Depending on the how the values in the WRK-DAY and PRD- !!02106
*             LGTH fields are set, this field may display a date      !!02107
*             greater than the value in the CUR-BUS-DAT field in this !!02108
*             IDF segment.                                            !!02109
*                                                                     !!02110
*             The value in this field is also used to determine when  !!02111
*             to purge the UAF and when to change the values in the   !!02112
*             BEG-DAT and NXT-BEG-DAT fields in the Base segment of   !!02113
*             the IDF.                                                !!02114
*                                                                     !!02115
  02 CUS-BUS-DAT               TYPE DAT.                               !02116
                                                                       !02117
                                                                       !02118
*                                                                     !!02119
*             The name of the Card History File (CHF) for             !!02120
*             institutions using BASE24-pos CRT Authorization         !!02121
*             functions.                                              !!02122
*                                                                     !!02123
  02 CHF-NAME                  PIC X(35).                              !02124
                                                                       !02125
*                                                                     !!02126
*             This field is not used.                                 !!02127
*                                                                     !!02128
                                                                       !02128M00
  02 USER-FLD6                 PIC X(48).                              !02128M01
*                                                                     !!02128M02
*             A flag indicating whether a money transfer credit       !!02128M03
*             transaction is allowed. A money transfer credit is      !!02128M04
*             identified by a transaction code of 14 (merchandise     !!02128M05
*             return) and a transaction subtype of C010.              !!02128M06
*             Valid values are:                                       !!02128M07
*                                                                     !!02128M08
*             0 = Money transfer credits are not allowed.             !!02128M09
*             1 = Money transfer credits are allowed.                 !!02128M0A
*                                                                     !!02128M0B
  02 MONEY-XFER-CR-FLG         PIC X.                                  !02128M0C
                                                                       !02128M0D
                                                                       !02129M00
                                                                       !02129M01
                                                                       !02130
                                                                       !02131
*                                                                     !!02132
*             A code used by the BASE24-pos Authorization process for !!02133
*             routing log messages specifically on behalf of this     !!02134
*             institution.                                            !!02135
*                                                                     !!02136
  02 LOG-RT-CDE                TYPE BINARY 16.                         !02137
                                                                       !02138
                                                                       !02139
*                                                                     !!02140
*             This routing table controls the authorization           !!02141
*             processing for the institution defined by this record.  !!02142
*                                                                     !!02143
*             The values in this table allow institutions to specify  !!02144
*             the host DPC, authorization level, authorization        !!02145
*             method, and level of Preauthorization holds to use for  !!02146
*             authorizations.  Parameters are set at the transaction  !!02147
*             level, that is, according to the card prefix and account!!02148
*             type involved in a transaction.                         !!02149
*                                                                     !!02150
*             The intent of this table is to enable institutions to   !!02151
*             segregate transactions by prefix group and account type !!02152
*             for processing by separate host DPCs under separate     !!02153
*             authorization parameters.  For example, one DPC might   !!02154
*             process a separate group of prefixes exclusively while  !!02155
*             another might process authorizations for only credit    !!02156
*             accounts.  In this case, each DPC would have a separate !!02157
*             entry in the table, each entry with its own processing  !!02158
*             parameters.  If all processing is handled by the same   !!02159
*             DPC, only one entry is required.                        !!02160
*                                                                     !!02161
  02 RT-TBL               OCCURS 9 TIMES.                              !02162
                                                                       !02163
                                                                       !02164
*                                                                     !!02165
*             The DPC number of the host computer to which            !!02166
*             transactions under this table entry's processing        !!02167
*             parameters are routed.                                  !!02168
*                                                                     !!02169
*             This DPC number must correspond to the DPC number       !!02170
*             assigned to the host computer in the Host Configuration !!02171
*             File (HCF).                                             !!02172
*                                                                     !!02173
*             Unless a table entry requires absolutely no             !!02174
*             communication with a host, this field should always     !!02175
*             contain a DPC number.  If no communication is required  !!02176
*             with a host, the value in this field can be set to      !!02177
*             zero.                                                   !!02178
*                                                                     !!02179
     04 PRI-DPC                TYPE BINARY 16.                         !02180
                                                                       !02181
                                                                       !02182
*                                                                     !!02183
*             The symbolic name of the Host Interface process used    !!02184
*             for sending this group of transactions to the host DPC. !!02185
*                                                                     !!02186
*             If used, the value in the SYM-NAME field must match     !!02187
*             exactly the name given to the Host Interface process in !!02188
*             the Network Environment Source File (NEFS).             !!02189
*                                                                     !!02190
*             Unless a table entry requires absolutely no             !!02191
*             communication with a host, this field should always     !!02192
*             contain the symbolic name of a Host Interface process.  !!02193
*             If no communication is required with a host, this field !!02194
*             may be left blank except for the first table entry.     !!02195
*             The first table entry must always contain a value.      !!02196
*                                                                     !!02197
*             Wildcarding refers to the ability to substitute         !!02198
*             asterisks in this field for certain positions of the    !!02199
*             symbolic name.  The Authorization process can then      !!02200
*             replace the asterisks with corresponding positions of   !!02201
*             its own name when selecting the Host Interface process  !!02202
*             to which to forward a message.                          !!02203
*                                                                     !!02204
*             This wildcard feature allows for matching multiple      !!02205
*             Authorization processes to multiple Host Interface      !!02206
*             processes via a single table entry.                     !!02207
*                                                                     !!02208
*             For example, if the value in this field was set to      !!02209
*             ***^HSAF1 and the Authorization process's name was      !!02210
*             P1A^AUTH1, the Authorization process would use          !!02211
*             P1A^HSAF1.  If the Authorization process's name was     !!02212
*             P1C^AUTH1, it would use P1C^HSAF1.                      !!02213
*                                                                     !!02214
     04 SYM-NAME               TYPE *.                                 !02215
                                                                       !02216
                                                                       !02217
*                                                                     !!02218
*             The transaction account type to be processed according  !!02219
*             to this table entry's parameters.                       !!02220
*                                                                     !!02221
*             A match in this field and the value in the PREFIX-      !!02222
*             ROUTING field in this table entry determines the        !!02223
*             authorization and routing parameters for a transaction. !!02224
*             Valid values are:                                       !!02225
*                                                                     !!02226
*             00 = Administrative accounts.                           !!02227
*             01 = Checking accounts (used for account types 01-09).  !!02228
*             11 = Savings accounts (used for account types 11-19).   !!02229
*             31 = Credit accounts (used for account types 31-39).    !!02230
*             AL = All accounts (will match on any account type).     !!02231
*                                                                     !!02232
     04 ACCT-TYP               PIC X(2).                               !02233
                                                                       !02234
                                                                       !02235
*                                                                     !!02236
*             The card prefixes that are processed according to this  !!02237
*             table entry's parameters.                               !!02238
*                                                                     !!02239
*             Card prefixes can be grouped on the Card Prefix File    !!02240
*             (using the value in the PREFIX-RTE field in the Base    !!02241
*             segment of the CPF) for different types of              !!02242
*             authorization processing.  The value in this field then !!02243
*             ties the card prefix groups to this table entry.        !!02244
*                                                                     !!02245
*             A match in the value in this field and the value in the !!02246
*             ACCT-TYP in this table entry determines the             !!02247
*             authorization and routing parameters for a transaction. !!02248
*             Valid values are:                                       !!02249
*                                                                     !!02250
*             0-9 = Prefix routing numbers - must match the prefix    !!02251
*                   group number assigned in the PREFIX-RTE field in  !!02252
*                   the Base segment of the CPF.                      !!02253
*             A =   All prefixes.  This setting acts as a default     !!02254
*                   value for any prefixes not accounted for by a     !!02255
*                   more specific table entry.                        !!02256
*                                                                     !!02257
     04 PREFIX-ROUTING         PIC X.                                  !02258
                                                                       !02259
                                                                       !02260
*                                                                     !!02261
*             A code indicating the type of authorization method used !!02262
*             to process transactions when the values in the ACCT-TYP !!02263
*             and PREFIX-ROUTING fields on the same line in the table !!02264
*             match those of the transaction being processed.  Valid  !!02265
*             values are:                                             !!02266
*                                                                     !!02267
*             0 = Host Authorization (no database maintained on       !!02268
*                 BASE24) - used when the value in the AUTH-LVL field !!02269
*                 is set to 1.                                        !!02270
*             1 = Negative Authorization with Usage Accumulation      !!02271
*                 (NEG/UAF) - requires NEG and UAF file names to be   !!02272
*                 present in the Base segment of the IDF.             !!02273
*             2 = Positive Authorization (CAF) - requires the CAF     !!02274
*                 name to be present in the Base segment of the IDF.  !!02275
*             3 = Positive Balance Authorization (CAF/PBF) - requires !!02276
*                 the CAF and PBF file names to be present in the     !!02277
*                 Base segment of the IDF.                            !!02278
*             4 = Negative Authorization without Usage Accumulation   !!02279
*                 (NEG) - requires the NEG file name to be present in !!02280
*                 the Base segment of the IDF.                        !!02281
*             5 = Future use                                          !!02282
*             6 = Parametric Authorization with Cardholder            !!02283
*                 Authorization File (CAF/PBF/CAPF) - requires the    !!02284
*                 CAF name and PBF file names to exist in the Base    !!02285
*                 segment of the IDF.  A valid card type must also    !!02286
*                 exist in the CAPF.                                  !!02287
*                                                                     !!02288
*             A value of 0 is valid with Authorization level 1 only.  !!02289
*             Values of 1 through 4 and 6 are valid with              !!02290
*             Authorization levels 2 and 3 only.                      !!02291
*                                                                     !!02292
     04 AUTH-TYP               PIC X.                                  !02293
                                                                       !02294
                                                                       !02295
*                                                                     !!02296
*             The authorization level that applies for a transaction  !!02297
*             when the values in the ACCT-TYP and PREFIX-ROUTING      !!02298
*             fields in the same entry of this table match those of   !!02299
*             the transaction being processed.  The authorization     !!02300
*             level determines the amount of participation a host has !!02301
*             in the processing of a transaction.  Valid values are:  !!02302
*                                                                     !!02303
*             1 = Online, authorize transactions on the host only.    !!02304
*                 If the host is offline, deny transaction.  This     !!02305
*                 code is used when the value in the AUTH-TYP field   !!02306
*                 is set to 0.                                        !!02307
*             2 = Offline, authorize transactions on BASE24.          !!02308
*             3 = Online/offline, authorize transactions on the host  !!02309
*                 if the host is online; if the host is offline,      !!02310
*                 authorize transactions on BASE24 and forward        !!02311
*                 completions to the host when the host is online.    !!02312
*                                                                     !!02313
     04 AUTH-LVL               PIC X.                                  !02314
                                                                       !02315
*                                                                     !!02316
                                                                       !02317J00
*             The level at which Preauthorization Holds and/or        !!02317J01
*             Enhanced Preauthorization Holds will be                  !02317J02
                                                                       !02317J03
*             stored and tracked within the BASE24 database.  The     !!02318
*             value in this field is used in conjunction with the     !!02319
*             value in the AUTH-TYP field in order to determine       !!02320
*             where Preauthorization holds are stored on the          !!02321
*             database.  The following table identifies the           !!02322
*             relationship between a value within the AUTH-TYP        !!02323
*             field and the possible vaid values within the           !!02324
*             PRE-AUTH-HLDS-LVL field:                                !!02325
*                                                                     !!02326
*             AUTH-TYP/                                               !!02327
*               PRE-AUTH-HLDS-LVL                                     !!02328
*             ----------------------                                  !!02329
*             HOST                                                    !!02330
*               0 = N/A, no Preauthorization holds will be            !!02331
*                   stored within the BASE24 database.                !!02332
                                                                       !02332J00
*               1 = UAF, Preauthorization holds and/or Enhanced       !!02332J01
*                   Preauthorization holds will be stored and tracked !!02332J02
*                   within the UAF.                                   !!02332J03
                                                                       !02332J04
*                                                                     !!02333
*             NEG/UAF                                                 !!02334
*               0 = N/A, no Preauthorization holds will be            !!02335
*                   stored within the BASE24 database.                !!02336
                                                                       !02337J00
*               1 = UAF, Preauthorization holds and/or Enhanced       !!02337J01
*                   Preauthorization holds will be stored              !02337J02
                                                                       !02337J03
*                   and tracked within the UAF.                       !!02338
*                                                                     !!02339
*             CAF                                                     !!02340
*               0 = N/A, no Preauthorization holds will be            !!02341
*                   stored within the BASE24 database.                !!02342
                                                                       !02343J00
*               1 = CAF, Preauthorization holds and/or Enhanced       !!02343J01
*                   Preauthorization holds will be stored              !02343J02
                                                                       !02343J03
*                   and tracked within the CAF.                       !!02344
*                                                                     !!02345
*             CAF/PBF                                                 !!02346
*               0 = N/A, no Preauthorization holds will be            !!02347
*                   stored within the BASE24 database.                !!02348
                                                                       !02349J00
*               1 = CAF, Preauthorization holds and/or Enhanced       !!02349J01
*                   Preauthorization holds will be stored and          !02349J02
                                                                       !02349J03
*                   tracked within the CAF.                           !!02350
*               2 = PBF, Preauthorization holds will be stored and    !!02351
*                   tracked within the PBF.                           !!02352
                                                                       !02353J00
                                                                       !02353J01
*               3 = CAF/PBF, Preauthorization holds and/or Enhanced   !!02353J02
*                   Preauthorization holds will be stored and tracked !!02353J03
*                   within the CAF and Preauthorization holds will be !!02353J04
*                   stored and tracked within the PBF.                !!02353J05
                                                                       !02353J06
*                                                                     !!02355
*             NEG                                                     !!02356
*               0 = N/A, no Preauthorization holds will be stored     !!02357
*                   within the BASE24 database.                       !!02358
*                                                                     !!02359
*             PARAMETRIC                                              !!02360
*               0 = N/A, no Preauthorization holds will be            !!02361
*                   stored within the BASE24 database.                !!02362
                                                                       !02363J00
*               1 = CAF, Preauthorization holds and/or Enhanced       !!02363J01
*                   Preauthorization holds will be stored and          !02363J02
                                                                       !02363J03
*                   tracked within the CAF.                           !!02364
*               2 = PBF, Preauthorization holds will be stored and    !!02365
*                   tracked within the PBF.                           !!02366
                                                                       !02367J00
                                                                       !02367J01
*               3 = CAF/PBF, Preauthorization holds and/or Enhanced   !!02367J02
*                   Preauthorization holds will be stored and tracked !!02367J03
*                   within the CAF and Preauthorization holds will be !!02367J04
*                   stored and tracked within the PBF.                !!02367J05
                                                                       !02367J06
*                                                                     !!02369
     04 PRE-AUTH-HLDS-LVL      PIC X.                                  !02370
                                                                       !02371
                                                                       !02372
                                                                       !02373
                                                                       !02374
*                                                                     !!02375
*             A flag indicating whether an adjustment transaction is  !!02376
*             allowed when the new transaction amount (AMT-2 in the   !!02377
*             PSTM) is greater than the original transaction amount   !!02378
*             (AMT-1 in the PSTM).  Valid values are:                 !!02379
*                                                                     !!02380
*             0 = Adjustments greater than the original transaction   !!02381
*                 are not allowed.                                    !!02382
*             1 = Adjustments greater than the original transaction   !!02383
*                 are allowed.                                        !!02384
*                                                                     !!02385
  02 ADJ-FLG                   PIC X.                                  !02386
                                                                       !02387
                                                                       !02388
                                                                       !02389
                                                                       !02390
                                                                       !02391
                                                                       !02392
                                                                       !02393
                                                                       !02394
*                                                                     !!02395
*             The telephone number at the institution that can be     !!02396
*             called when a switch-originated transaction is referred !!02397
*             with any referral response (e.g., the response code in  !!02398
*             the PSTM is greater than 99 and less than 150).  If the !!02399
*             PSTM referral phone field does not already contain a    !!02400
*             value, the BASE24-pos Authorization process places this !!02401
*             value in the PSTM.                                      !!02402
*                                                                     !!02403
  02 RFRL-PHONE                TYPE PHONE-NUM.                         !02404
                                                                       !02405
*                                                                     !!02406
*             This field is not used.                                 !!02407
*                                                                     !!02408
                                                                       !02409G00
  02 USER-FLD8                 PIC X(4).                               !02409G01
                                                                       !02409G02
                                                                       !02410
                                                                       !02411
                                                                       !02412G00
*                                                                      !02412G01
*             The token data retrieval option.  When the device        !02412G02
*             handler is processing a reversal, this field indicates   !02412G03
*             where the token data should be retrieved.  Valid values  !02412G04
*             are:                                                     !02412G05
*                                                                      !02412G06
*             0 = no tokens included in the reversal message.          !02412G07
*             1 = PTD.  Token data retrieved from the terminal data    !02412G08
*                       file, and appended to the reversal message.    !02412G09
*             2 = PTLF. Token data retrieved from the transaction log  !02412G0A
*                       file, and appended to the reversal message.    !02412G0B
*                                                                      !02412G0C
*             The default value is 2.                                  !02412G0D
                                                                       !02412G0E
  02 TKN-RETRV-OPT             PIC X.                                  !02412G0F
                                                                       !02412G0G
*             Profile used as part of the key to read the APCF         !02412G0H
*             to determine if a specific transaction is allowed        !02412G0I
                                                                       !02412I00
*             at terminals owned by this institution.                  !02412I01
                                                                       !02412I02
*                                                                      !02412G0K
  02 ACQ-TXN-PRFL              TYPE PRFL.                              !02412G0L
                                                                       !02412G0M
*             Profile used as part of the key to read the IPCF         !02412G0N
*             to determine if a specific transaction is allowed        !02412G0O
                                                                       !02412I03
*             by cardholders of this institution.                      !02412I04
                                                                       !02412I05
                                                                       !02412G0Q
  02 ISS-TXN-PRFL              TYPE PRFL.                              !02412G0R
                                                                       !02412G0S
*             Profile used as part of the key to read the APCF         !02412G0T
*             to determine if a specific Admin card is allowed to      !02412G0U
*             initiate a specific transaction.  This value is used     !02412G0V
*             if an Admin profile is not specified in the ADMN file.   !02412G0W
                                                                       !02412G0X
  02 ADMIN-TXN-PRFL            TYPE PRFL.                              !02412G0Y
                                                                       !02412G0Z
*             Profile used as part of the key to read the APCF         !02412G10
*             to determine if an Admin card is required for a          !02412G11
*             specific transaction.  This value is used if a           !02412G12
*             Retailer profile is not specified in the PRDF file.      !02412G13
                                                                       !02412G14
  02 RTLR-TXN-PRFL             TYPE PRFL.                              !02412G15
                                                                       !02412G16
                                                                       !02413
                                                                       !02414
                                                                       !02415
END                                                                    !02416
                                                                       !02417
?page "TLRIDF - Teller IDF Segment"
?section TLRIDF
                                                                       !02422
*             The following fields make up the Teller segment of the  !!02423
*             Institution Definition File (IDF).                      !!02424
                                                                       !02425
DEFINITION TLRIDF.                                                     !02426
                                                                       !02427
*                                                                     !!02428
                                                                       !02429
  02 SEG-LGTH                  TYPE *.                                 !02430
                                                                       !02431
*             The name of the Warning/Hold/Float File (WHFF)          !!02432
*             for this institution.                                   !!02433
                                                                       !02434
  02 WHFF-NAME                 TYPE FNAME.                             !02435
                                                                       !02436
*             The name of the No Book File (NBF) for this             !!02437
*             institution.  The entries in the NBF are used to update !!02438
*             the customer's passbook, and once posted to the         !!02439
*             passbook, will be deleted.                              !!02440
                                                                       !02441
  02 NBF-NAME                  TYPE FNAME.                             !02442
                                                                       !02443
*             A code indicating whether to accept passbook print      !!02444
*             requests when the NBF is not current.  Valid values are:!!02445
*                                                                     !!02446
*             0 = Print passbooks                                     !!02447
*             1 = Deny passbook print requests (Default)              !!02448
                                                                       !02449
  02 NBF-UPDATE-FLG            PIC X.                                  !02450
                                                                       !02451
*             An indicator used by the Refresh process to determine   !!02452
*             whether an SPF transaction record has been impacted.    !!02453
                                                                       !02454
  02 SPF-REFR-IND              PIC X.                                  !02455
                                                                       !02456
*             An indicator used by the Refresh process to determine   !!02457
*             whether a WHFF transaction record has been impacted.    !!02458
                                                                       !02459
  02 WHFF-REFR-IND             PIC X.                                  !02460
                                                                       !02461
*             An indicator used by the Refresh process to determine   !!02462
*             whether an NBF transaction record has been impacted.    !!02463
                                                                       !02464
  02 NBF-REFR-IND              PIC X.                                  !02465
                                                                       !02466
*             The following fields contain the dates of holidays      !!02467
*             observed by this institution.                           !!02468
                                                                       !02469
  02 HOL                       OCCURS 20 TIMES.                        !02470
                                                                       !02471
     04 DAT                    TYPE DAT.                               !02472
                                                                       !02473
*             The time (HHMM) that this institution allows individual !!02474
*             tellers to begin cutover.                               !!02475
                                                                       !02476
  02 STRT-CUTOVER              TYPE BINARY 16.                         !02477
                                                                       !02478
*             The ending time (HHMM) of the teller cutover window.    !!02479
*             At this time, the institution will no longer be logging !!02480
*             to the current Teller Transaction Log File (TTLF).  The !!02481
*             old TTLF is closed and prepared for extracting.         !!02482
*             Transactions posted after this time are logged to the   !!02483
*             new TTLF.  Transactions will be rejected for any teller !!02484
*             who has not cut over to the next business day until the !!02485
*             cutover is completed.                                   !!02486
                                                                       !02487
  02 END-CUTOVER               TYPE BINARY 16.                         !02488
                                                                       !02489
*             A flag, set by the Settlement Initiator process,        !!02490
*             indicating that this institution has been cut over.     !!02491
*             Valid values are:                                       !!02492
*                                                                     !!02493
*             Y = Yes, the institution has been cut over.             !!02494
*             N = No, the institution has not been cut over.          !!02495
*                                                                     !!02496
*             The value in this field is set to Y at institution      !!02497
*             settlement time, and is set to N at network settlement  !!02498
*             time.                                                   !!02499
                                                                       !02500
  02 FI-CUT                    PIC X.                                  !02501
                                                                       !02502
*             A code defining the days for which Teller Transaction   !!02503
*             Log Files (TTLFs) are created for transaction logging.  !!02504
*             The value in this field controls the current and next   !!02505
*             business days in the IDF, which control the transaction !!02506
*             log files that are created.  Valid values are:          !!02507
*                                                                     !!02508
*             0 = Processes 7 days per week                           !!02509
*             1 = Do not process on weekends and specified holidays   !!02510
*             2 = Do not process on Sundays and specified holidays    !!02511
*             3 = Do not process on Saturdays and specified holidays  !!02512
                                                                       !02513
  02 WRK-DAY                   PIC X.                                  !02514
                                                                       !02515
*             A code used by the BASE24-teller Authorization process  !!02516
*             for routing log messages specifically on behalf of this !!02517
*             institution.  Valid values are 0 to 9999.               !!02518
                                                                       !02519
  02 LOG-RTE-CDE               TYPE BINARY 16.                         !02520
                                                                       !02521
*             A routing table used by the Authorization process to    !!02522
*             control authorization processing for the institution    !!02523
*             defined by this record.                                 !!02524
                                                                       !02525
  02 RTE-TBL                   OCCURS 5 TIMES.                         !02526
                                                                       !02527
                                                                       !02528
*             A number identifying the destined Data Processing       !!02529
*             Center (DPC) for authorization routing.  All entries in !!02530
*             this field must have a matching record in the HCF.      !!02531
*                                                                     !!02532
*             A value of 0 in this field is used for stand-alone      !!02533
*             systems, when no communication is required between the  !!02534
*             Tandem and the host.                                    !!02535
                                                                       !02536
     04 DPC-NUM                TYPE BINARY 16.                         !02537
                                                                       !02538
*             The symbolic name for the Host Interface process used   !!02539
*             by the DPC identified in this table entry's DPC-NUM     !!02540
*             field.                                                  !!02541
*                                                                     !!02542
*             The value of this field must match the name given to    !!02543
*             the Host Interface process in the Network Environment   !!02544
*             Source File (NEFS), except for stand-alone systems, in  !!02545
*             which case a dummy name should be present and need not  !!02546
*             be declared in the NEFS.                                !!02547
*                                                                     !!02548
*             When the value in the DPC-NUM field is set to 0, the    !!02549
*             value of this field is set to NO HOST ROUTING.          !!02550
*                                                                     !!02551
*             The BASE24-teller Authorization process does not allow  !!02552
*             the use of wildcarding (the entry of asterisks in       !!02553
*             positions of the name) in this field.                   !!02554
                                                                       !02555
     04 HI-NAME                TYPE SYM-NAME.                          !02556
                                                                       !02557
*             The type of account processed with the routing          !!02558
*             information in this table entry.  Valid values are:     !!02559
*                                                                     !!02560
*             01 = Checking only (used for account types 01-09).      !!02561
*             11 = Savings only (used for account types 11-19).       !!02562
*             31 = Credit only (used for account types 31-39).        !!02563
*             AL = All accounts (will match on any account type).     !!02564
                                                                       !02565
     04 ACCT-TYP               PIC X(2).                               !02566
                                                                       !02567
*             Reserved for future use.                                !!02568
                                                                       !02569
     04 USER-FLD10             PIC X(4).                               !02570
                                                                       !02571
  02 TLR.                                                              !02572
                                                                       !02573
*             The following fields contain the customer class table   !!02574
*             that is used to determine how much instant credit a     !!02575
*             customer should receive when a deposit is made.         !!02576
                                                                       !02577
     04 CC-TBL                 OCCURS 10 TIMES.                        !02578
                                                                       !02579
*             A flag indicating the amount of cash available to this  !!02580
*             institution's customers after a check deposit.  This    !!02581
*             field contains up to ten values, or customer classes,   !!02582
*             that range from 0 through 9.                            !!02583
*                                                                     !!02584
*             The value in this field is the key to the following     !!02585
*             fields, which define the parameters governing customer  !!02586
*             deposits and withdrawals.  Each customer account has a  !!02587
*             customer class in the Positive Balance File (PBF)       !!02588
*             record corresponding to one of the classes defined in   !!02589
*             the following fields.                                   !!02590
                                                                       !02591
        06 CUST-CLASS          PIC X.                                  !02592
                                                                       !02593
*             Reserved for future use.                                !!02594
                                                                       !02595
        06 USER-FLD11          PIC X(2).                               !02596
                                                                       !02597
*             The percentage of the deposit that is immediately       !!02598
*             credited to the customer's account upon deposit via a   !!02599
*             teller terminal.  The value in this field is used in    !!02600
*             conjunction with the values in the CC-TBL.MAX-CREDIT    !!02601
*             and the CC-TBL.MAX-NUM-DEP fields to determine the      !!02602
*             amount of instant credit given on deposits.             !!02603
                                                                       !02604
        06 PERCENT-DEP         PIC 9(3).                               !02605
                                                                       !02606
*             The maximum amount of instant credit on a given         !!02607
*             calendar day via a teller terminal.  The value in this  !!02608
*             field is used in conjunction with the values in the CC- !!02609
*             TBL.PERCENT-DEP and CC-TBL.MAX-NUM-DEP fields to        !!02610
*             determine the amount of instant credit given on         !!02611
*             deposits.                                               !!02612
*                                                                     !!02613
*             The value of this field is expressed in whole currency  !!02614
*             units.                                                  !!02615
                                                                       !02616
        06 MAX-CR              TYPE BINARY 64.                         !02617
                                                                       !02618
*             The maximum number of deposits that will be considered  !!02619
*             for instant credit on the account.  If the number of    !!02620
*             deposits exceeds the value of this field, no instant    !!02621
*             credit is available for this deposit.  The value in     !!02622
*             this field is used in conjunction with the values in    !!02623
*             the CC-TBL.PERCENT-DEP and CC-TBL.MAX-CREDIT fields to  !!02624
*             determine the amount of instant credit given on         !!02625
*             deposits.                                               !!02626
                                                                       !02627
        06 MAX-NUM-DEP         TYPE BINARY 16.                         !02628
                                                                       !02629
*             The maximum amount of cash that can be withdrawn from a !!02630
*             depository account by the customer in any one business  !!02631
*             day via a teller terminal.                              !!02632
*                                                                     !!02633
*             The value of this field is expressed in whole currency  !!02634
*             units.                                                  !!02635
                                                                       !02636
        06 MAX-CASH-OUT        TYPE BINARY 64.                         !02637
                                                                       !02638
*             A code established at the institution level and used to !!02639
*             determine how memo post deposits are credited to a      !!02640
*             customer's available and ledger balances in the PBF.    !!02641
*                                                                     !!02642
*             The value in this field is checked whenever a deposit   !!02643
*             is made to the customer's account to determine whether  !!02644
*             the portion of the deposit made in cash is considered   !!02645
*             when adding to the account's available balance and      !!02646
*             amount on hold in the PBF.  In all cases, the ledger    !!02647
*             balance is increased by the full deposit amount.  Valid !!02648
*             values are:                                             !!02649
*                                                                     !!02650
*             N = No, do not memo post the cash in portion of the     !!02651
*                 deposit.  Deposits involving cash in are posted to  !!02652
*                 the PBF as follows:                                 !!02653
*                                                                     !!02654
*                 Ledger Balance    = increased by the total amount   !!02655
*                                     of the deposit (including       !!02656
*                                     checks and cash in).            !!02657
*                 Available Balance = increased by a percentage of    !!02658
*                                     the total deposit amount        !!02659
*                                     (including checks and cash in). !!02660
*                                     The percentage used is set in   !!02661
*                                     the PERCENT-DEP field.          !!02662
*                 Amount on Hold    = increased by the total amount   !!02663
*                                     of the deposit (including       !!02664
*                                     checks and cash in), minus the  !!02665
*                                     amount of the deposit added to  !!02666
*                                     the available balance.          !!02667
*                                                                     !!02668
*             Y = Yes, memo post the cash in portion of the deposit.  !!02669
*                 Deposits involving cash in are posted to the PBF as !!02670
*                 follows:                                            !!02671
*                                                                     !!02672
*                 Ledger Balance    = increased by the total amount   !!02673
*                                     of the deposit (including       !!02674
*                                     checks and cash in).            !!02675
*                 Available Balance = increased by the cash in        !!02676
*                                     amount, plus a percentage of    !!02677
*                                     the non-cash in amount of the   !!02678
*                                     deposit.  The percentage used   !!02679
*                                     is set in the PERCENT-DEP       !!02680
*                                     field.                          !!02681
*                 Amount on Hold    = increased by the total amount   !!02682
*                                     of the deposit (including       !!02683
*                                     checks and cash in), minus the  !!02684
*                                     amount of the deposit added to  !!02685
*                                     the available balance.          !!02686
                                                                       !02687
     04 CASH-IN-IND            PIC X.                                  !02688
                                                                       !02689
*             A code established at the institution level and used to !!02690
*             determine how memo post deposits are debited to a       !!02691
*             customer's available and ledger amount balances in the  !!02692
*             Positive Balance File (PBF).                            !!02693
*                                                                     !!02694
*             The value in this field is checked whenever a deposit   !!02695
*             is made to the customer's account to determine whether  !!02696
*             the portion of the deposit returned to the customer in  !!02697
*             cash is considered when adding to the account's         !!02698
*             available balance and amount on hold in the PBF.        !!02699
*             Valid values are:                                       !!02700
*                                                                     !!02701
*             N = No, do not memo post the cash out portion of the    !!02702
*                 deposit.  Deposits involving cash out are posted to !!02703
*                 the PBF as follows:                                 !!02704
*                                                                     !!02705
*                 Ledger Balance    = increased by the total amount   !!02706
*                                     of the deposit (including       !!02707
*                                     checks and cash in), without    !!02708
*                                     regard for the amount of cash   !!02709
*                                     out.                            !!02710
*                 Available Balance = increased by the cash in amount !!02711
*                                     portion of the deposit, plus a  !!02712
*                                     percentage of the non-cash in   !!02713
*                                     amount of the deposit, without  !!02714
*                                     regard for the amount of cash   !!02715
*                                     out.  The percentage used is    !!02716
*                                     set in the PERCENT-DEP field.   !!02717
*                 Amount on Hold    = increased by the total amount   !!02718
*                                     of the deposit (including       !!02719
*                                     checks and cash in), minus the  !!02720
*                                     amount of the deposit added to  !!02721
*                                     the available balance, without  !!02722
*                                     regard for the amount of cash   !!02723
*                                     out.                            !!02724
*                 Cash Out Today    = increase by the cash out        !!02725
*                                     amount.                         !!02726
*                                                                     !!02727
*             Y = Yes, memo post the cash out portion of the deposit. !!02728
*                 Deposits involving cash out are posted to the PBF   !!02729
*                 as follows:                                         !!02730
*                                                                     !!02731
*                 Ledger Balance    = increased by the total amount   !!02732
*                                     of the deposit (including       !!02733
*                                     checks and cash in), without    !!02734
*                                     regard for the amount of cash   !!02735
*                                     out.                            !!02736
*                 Available Balance = increased by the cash in amount !!02737
*                                     of the deposit, plus a          !!02738
*                                     percentage of the non-cash      !!02739
*                                     amount of the deposit (the      !!02740
*                                     total deposit minus the cash in !!02741
*                                     amount), minus the cash out     !!02742
*                                     amount of the deposit.  The     !!02743
*                                     percentage used is set in the   !!02744
*                                     PERCENT-DEP field.              !!02745
*                 Amount on Hold    = increased by the total amount   !!02746
*                                     of the deposit (including       !!02747
*                                     checks and cash in), minus the  !!02748
*                                     amount of the deposit added to  !!02749
*                                     the available balance.          !!02750
*                 Cash Out Today    = increased by the cash out       !!02751
*                                     amount.                         !!02752
*                                                                     !!02753
*             X = Memo post only the difference between the cash in   !!02754
*                 and cash out portions of the deposit.  Deposits are !!02755
*                 posted to the PBF as follows:                       !!02756
*                                                                     !!02757
*                 Ledger Balance    = increased by the total amount   !!02758
*                                     of the deposit (including       !!02759
*                                     checks and cash in).            !!02760
*                 Available Balance = increased by a percentage of    !!02761
*                                     the total deposit amount minus  !!02762
*                                     the difference between the cash !!02763
*                                     out and cash in (cash out minus !!02764
*                                     cash in).  The percentage used  !!02765
*                                     is set in the PERCENT-DEP       !!02766
*                                     field.                          !!02767
*                 Amount on Hold    = increased by the total amount   !!02768
*                                     of the deposit (including       !!02769
*                                     checks and cash in), minus the  !!02770
*                                     amount of the deposit added to  !!02771
*                                     the available balance.          !!02772
*                 Cash Out Today    = increased by the cash out       !!02773
*                                     amount.                         !!02774
*                                                                     !!02775
*             A value of X may be used only if the CASH-IN-IND field  !!02776
*             is set to Y.                                            !!02777
                                                                       !02778
     04 CASH-OUT-IND           PIC X.                                  !02779
                                                                       !02780
*             A code used to determine if the Report Transaction by   !!02781
*             Type File (RTTF) or periodic report file should be      !!02782
*             created.  Valid values are:                             !!02783
*                                                                     !!02784
*             0 = Produce Report 2 and create the RTTF.               !!02785
*             1 = Do not produce Report 2 but create the RTTF.        !!02786
*             2 = Do not produce either Report 2 or the RTTF.         !!02787
*                                                                     !!02788
*             The system default is 2.                                !!02789
                                                                       !02790
     04 RTTF-RPT-IND           PIC X.                                  !02791
                                                                       !02792
*             A code used to determine if the Report Transactions by  !!02793
*             Time Block File (RTTB) or periodic report file should   !!02794
*             be created.  Valid values are:                          !!02795
*                                                                     !!02796
*             0 = Produce Reports 3 and 4; create the RTTB.           !!02797
*             1 = Do not produce Reports 3 and 4; create the RTTB.    !!02798
*             2 = Do not produce Reports 3 and 4; do not create the   !!02799
*                 RTTB.                                               !!02800
*                                                                     !!02801
*             The system default is 2.                                !!02802
                                                                       !02803
     04 RTTB-RPT-IND           PIC X.                                  !02804
                                                                       !02805
*             A flag indicating whether the PBF DDA is current.  The  !!02806
*             value in this field is set to N by the Super Extract    !!02807
*             process to indicate that the PBF is not current and to  !!02808
*             Y by the Refresh process to indicate that the PBF is    !!02809
*             current.  This indicator is included in the message to  !!02810
*             the Authorization processes.  The message can then be   !!02811
*             sent to the Device Handler from the Authorization       !!02812
*             processes.  Depending on the device, it can be          !!02813
*             displayed on the teller terminal to inform the teller   !!02814
*             if the file is or is not current.                       !!02815
                                                                       !02816
     04 DDA-CUR                PIC X.                                  !02817
                                                                       !02818
*             A flag indicating whether the PBF SAV is current.  The  !!02819
*             value in this field is set to N by the Super Extract    !!02820
*             process to indicate that the PBF is not current and to  !!02821
*             Y by the Refresh process to indicate that the PBF is    !!02822
*             current.  This indicator is included in the message to  !!02823
*             the Authorization processes.  The message can then be   !!02824
*             sent to the Device Handler from the Authorization       !!02825
*             processes.  Depending on the device, it can be          !!02826
*             displayed on the teller terminal to inform the teller   !!02827
*             if the file is or is not current.                       !!02828
                                                                       !02829
     04 SAV-CUR                PIC X.                                  !02830
                                                                       !02831
*             A flag indicating whether the PBF CCD is current.  The  !!02832
*             value in this field is set to N by the Super Extract    !!02833
*             process to indicate that the PBF is not current and to  !!02834
*             Y by the Refresh process to indicate that the PBF is    !!02835
*             current.  This indicator is included in the message to  !!02836
*             the Authorization processes.  The message can then be   !!02837
*             sent to the Device Handler from the Authorization       !!02838
*             processes.  Depending on the device, it can be          !!02839
*             displayed on the teller terminal to inform the teller   !!02840
*             if the file is or is not current.                       !!02841
                                                                       !02842
     04 CCD-CUR                PIC X.                                  !02843
                                                                       !02844
*             A flag indicating whether the SPF is current.  The      !!02845
*             value in this field is set to N by the Super Extract    !!02846
*             process to indicate that the SPF is not current and to  !!02847
*             Y by the Refresh process to indicate that the PBF and   !!02848
*             SPF are current.  This indicator is included in the     !!02849
*             message to the Authorization processes.  The message    !!02850
*             can then be sent to the Device Handler from the         !!02851
*             Authorization processes.  Depending on the device, it   !!02852
*             can be displayed on the teller terminal to inform the   !!02853
*             teller if the file is or is not current.                !!02854
                                                                       !02855
     04 SPF-CUR                PIC X.                                  !02856
                                                                       !02857
*             A flag indicating whether the NBF is current.  The      !!02858
*             value in this field is set to N by the Super Extract    !!02859
*             process to indicate that the NBF is not current and to  !!02860
*             Y by the Refresh process to indicate that the NBF and   !!02861
*             PBF are current.  This indicator is included in the     !!02862
*             message to the Authorization processes.  The message    !!02863
*             can then be sent to the Device Handler from the         !!02864
*             Authorization processes.  Depending on the device, it   !!02865
*             can be displayed on the teller terminal to inform the   !!02866
*             teller if the file is or is not current.                !!02867
                                                                       !02868
     04 NBF-CUR                PIC X.                                  !02869
                                                                       !02870
*             A flag indicating whether the WHFF is current.  The     !!02871
*             value in this field is set to N by the Super Extract    !!02872
*             process to indicate that the WHFF is not current and to !!02873
*             Y by the Refresh process to indicate that the PBF and   !!02874
*             WHFF are current.  This indicator is included in the    !!02875
*             message to the Authorization processes.  The message    !!02876
*             can then be sent to the Device Handler from the         !!02877
*             Authorization processes.  Depending on the device, it   !!02878
*             can be displayed on the teller terminal to inform the   !!02879
*             teller if the file is or is not current.                !!02880
                                                                       !02881
     04 WHFF-CUR               PIC X.                                  !02882
                                                                       !02883
*             The current business date (YYMMDD) for this             !!02884
*             institution.                                            !!02885
                                                                       !02886
     04 CUR-BUS-DAT            TYPE DAT.                               !02887
                                                                       !02888
*             The next business date (YYMMDD) for this institution.   !!02889
                                                                       !02890
     04 NXT-BUS-DAT            TYPE DAT.                               !02891
                                                                       !02892
*             Reserved for future use.                                !!02893
                                                                       !02894
     04 USER-FLD12             PIC X(7).                               !02895
                                                                       !02896
*             An eight-character identifier grouping institutions     !!02897
*             together for override processing.                       !!02898
                                                                       !02899
 02  ORF-PROFILE               PIC X(8).                               !02900
                                                                       !02901
*             A code which indicates whether the BASE24-teller        !!02902
*             institution supports interbank routing.  Valid values   !!02903
*             are:                                                    !!02904
*                                                                     !!02905
*             0 = No, Interbank Routing is not supported              !!02906
*             1 = Yes, Interbank Routing is supported                 !!02907
                                                                       !02908
 02  INTERBNK-RTG              PIC X.                                  !02909
                                                                       !02910
*             The banking relationships defined for the account       !!02911
*             owning institution.  The BASE24-teller Authorization    !!02912
*             process evaluates this relationship whenever the        !!02913
*             terminal owner and card issuer are not the same to      !!02914
*             determine if the terminal owner and issuer have a       !!02915
*             banking relationship.                                   !!02916
                                                                       !02917
 02  BNK-RELNSHP               PIC X OCCURS 24 TIMES.                  !02918
                                                                       !02919
*             A code that indicate how account selection from the     !!02920
*             CAF record is to be handled and is used by the          !!02921
*             BASE24-teller Authorization process when there is more  !!02922
*             than one account type in the CAF that could be          !!02923
*             associated with the transaction request.  Valid values  !!02924
*             are:                                                    !!02925
*                                                                     !!02926
*             0 = No account selection.  Deny request.                !!02927
*             1 = Select the first primary account.                   !!02928
*             2 = Customer selects account.                           !!02929
                                                                       !02930
 02  CRD-ACCT-SELECT-IND       PIC X.                                  !02931
                                                                       !02932
*             Reserved for future use.                                !!02933
                                                                       !02934
 02  USER-FLD13                PIC X(17).                              !02935
                                                                       !02936
END                                                                    !02937
                                                                       !02937C00
?page "MAILIDF - Mail IDF Segment"
?section MAILIDF
                                                                       !02937C05
                                                                       !02938C00
                                                                       !02938C01
                                                                       !02938C02
                                                                       !03044
*             The following fields make up the Mail segment of the    !!03045
*             Institution Definition File (IDF).                      !!03046
DEFINITION MAILIDF.                                                    !03047
                                                                       !03048
                                                                       !03049
    02  SEG-LGTH                        TYPE *.                        !03050
                                                                       !03051
                                                                       !03052
*                                                                     !!03053
*             The DPC to which the Mail Box process sends mail        !!03054
*             messages.                                               !!03055
*                                                                     !!03056
    02  DPC                             TYPE BINARY 16.                !03057
                                                                       !03058
                                                                       !03059
*                                                                     !!03060
*             The number of days, past the current date, in which     !!03061
*             mail messages are saved.  This value is used when the   !!03062
*             DPC does not specify an expiration date.                !!03063
*                                                                     !!03064
    02  NUM-DAYS                        TYPE BINARY 16.                !03065
                                                                       !03066
                                                                       !03067
*                                                                     !!03068
*             The exact time of day (HHMM) mail messages expire after !!03069
*             exceeding the number of days storage limit specified in !!03070
*             the NUM-DAYS field.  This value is used when the DPC    !!03071
*             does not specify an expiration time.                    !!03072
*                                                                     !!03073
    02  EXPIRE-TIM                      TYPE BINARY 16.                !03074
                                                                       !03075
                                                                       !03076
*                                                                     !!03077
*             A code indicating the type of response required for     !!03078
*             mail messages.  Valid values are:                       !!03079
*                                                                     !!03080
*             1 = No response is required.                            !!03081
*             2 = Respond immediately. Indicate to sender that the    !!03082
*                 Mail Box process has the piece of mail and will     !!03083
*                 eventually deliver it.                              !!03084
*             3 = Respond on delivery, only when delivered, and for   !!03085
*                 each terminal to which the piece of mail was        !!03086
*                 delivered.                                          !!03087
*                                                                     !!03088
    02  TYP-RESP                        PIC 9.                         !03089
                                                                       !03090
                                                                       !03091
*                                                                     !!03092
*             The Mail Box process symbolic name.                     !!03093
*                                                                     !!03094
    02  SYM-NAME                        TYPE *.                        !03095
                                                                       !03096
*                                                                     !!03097
*             This field is not used.                                 !!03098
*                                                                     !!03099
                                                                       !03100
    02  USER-FLD11A                     PIC X(21).                     !03101
                                                                       !03102
END                                                                    !03103
                                                                       !03103C00
?page "TBIDF - Telebanking IDF Segment"
                                                                       !03103C03
                                                                       !03104C00
                                                                       !03104C01
                                                                       !03104C02
                                                                       !03148B05
?section TBIDF
                                                                       !03148B08
*             The following fields make up the Telebanking segment of  !03148B09
*             the Institution Definition File (IDF).                   !03148B0A
                                                                       !03148B0B
DEFINITION TBIDF.                                                      !03148B0C
                                                                       !03148B0D
                                                                       !03148B0E
  02 SEG-LGTH                     TYPE *.                              !03148B0F
                                                                       !03148B0G
*             This field defines the Routing Profile.  Left-justified, !03148B0H
*             blank-filled, no embedded spaces; default is the FIID.   !03148B0I
*                                                                      !03148B0J
  02 RTE-PRFL                     PIC X(8).                            !03148B0K
                                                                       !03148B0L
*             This flag identifies whether a customer is required to   !03148B0M
*             enter/voice a PIN at the Customer Service Interface.     !03148B0N
*                                                                      !03148B0O
*               Valid values are:                                      !03148B0P
*                                                                      !03148B0Q
*                     Y = PIN is required                              !03148B0R
*                     N = PIN is not required                          !03148B0S
*                     O = CSI Operator can override, PIN preferred     !03148B0T
*                                                                      !03148B0U
*               Default value is Y (ie. PIN required).                 !03148B0V
*                                                                      !03148B0W
  02 CSI-PIN-REQ                  PIC X.                               !03148B0X
                                                                       !03148B0Y
*             This flag indicates whether a customer is allowed to     !03148B0Z
*             change their PIN at the Customer Service Interface.      !03148B10
*                                                                      !03148B11
*               Valid values are:                                      !03148B12
*                                                                      !03148B13
*                     Y = PIN change allowed                           !03148B14
*                     N = PIN change not allowed                       !03148B15
*                                                                      !03148B16
*               Default value is N (ie. PIN change not allowed).       !03148B17
*                                                                      !03148B18
  02 CSI-PIN-CHNG-ALWD            PIC X.                               !03148B19
                                                                       !03148B1A
*             This field indicates the PIN Verification Group to       !03148B1B
*             which this record belongs in the Key Authorization       !03148B1C
*             File (KEYA).  Any alpha-numeric value can be used.       !03148B1D
*             It is left-justified, blank-filled, no embedded spaces.  !03148B1E
*             The default is the FIID.  Only four characters are       !03148B1F
*             displayed.                                               !03148B1G
*                                                                      !03148B1H
  02 PIN-VRFY-GRP                 PIC X(8).                            !03148B1I
                                                                       !03148B1J
  02 BAL-OPT.                                                          !03148B1K
                                                                       !03148B1L
*             This field indicates which balances, if any, the         !03148B1M
*             issuing FI prefers to be reported to the customer        !03148B1N
*             upon completion of a transaction.                        !03148B1O
*                                                                      !03148B1P
*               Valid values are:                                      !03148B1Q
*                                                                      !03148B1R
*                  0 = Return no balances to customer                  !03148B1S
*                  1 = Return Ledger Balance only                      !03148B1T
*                  2 = Return Available Balance only                   !03148B1U
*                  3 = Return both Ledger and Available                !03148B1V
*                      balances.  If only a single balance can         !03148B1W
*                      be returned, return Ledger.                     !03148B1X
*                  4 = Return both Ledger and Available                !03148B1Y
*                      balances.  If only a single balance can         !03148B1Z
*                      be returned, return Available.  DEFAULT.        !03148B20
                                                                       !03148B21
     04 INFO                     PIC X.                                !03148B22
                                                                       !03148B23
*                                                                      !03148B24
*             This field is for future use.                            !03148B25
*                                                                      !03148B26
                                                                       !03148B27
     04 USER-FLD1                PIC X.                                !03148B28
                                                                       !03148B29
*                                                                      !03148B2A
*             This field indicates the issuing FI's display            !03148B2B
*             preferences when a multiple account selection            !03148B2C
*             situation is encountered.                                !03148B2D
*                                                                      !03148B2E
*               Valid values are:                                      !03148B2F
*                                                                      !03148B2G
*                  1 = Display Account Descriptions.  DEFAULT.         !03148B2H
*                  2 = Display Account Numbers.                        !03148B2I
*                  3 = Display both Account Descriptions               !03148B2J
*                      and Account Numbers.  If only                   !03148B2K
*                      possible to display one, display                !03148B2L
*                      Account Descriptions.                           !03148B2M
*                  4 = Display both Account Descriptions               !03148B2N
*                      and Account Numbers.  If only                   !03148B2O
*                      possible to display one, display                !03148B2P
*                      Account Numbers.                                !03148B2Q
*                                                                      !03148B2R
  02 MAS-DSPY-OPT                 PIC 9.                               !03148B2S
                                                                       !03148B2T
*                                                                      !03148B2U
*             This field indicates whether non-financial               !03148B2V
*             reversals are logged and, if necessary, sent to          !03148B2W
*             the host.                                                !03148B2X
*                                                                      !03148B2Y
*               Valid values are:                                      !03148B2Z
*                                                                      !03148B30
*                  Y = Yes, discard non-financial reversals.  This     !03148B31
*                      is the DEFAULT.                                 !03148B32
*                  N = No, do not discard non-financial reversals.     !03148B33
*                                                                      !03148B34
  02 DISCRD-NON-FNCL-RVSL         PIC X.                               !03148B35
                                                                       !03148B36
*                                                                      !03148B37
*             This field indicates what usage accumulation             !03148B38
                                                                       !03148D00
*             periods are used for transfers and payments done         !03148D01
*             through BASE24-telebanking/BASE24-billpay.               !03148D02
                                                                       !03148D03
                                                                       !03148D04
                                                                       !03148D05
                                                                       !03148D06
*                                                                      !03148B3B
*               Valid values are:                                      !03148B3C
*                                                                      !03148B3D
*                  N = No Periodic or Cyclic Usage                     !03148B3E
*                      Accumulation Periods.  This is the              !03148B3F
*                      DEFAULT.                                        !03148B3G
*                  P = Periodic Usage Accumulation Period              !03148B3H
*                      ONLY                                            !03148B3I
*                  C = Cyclic Usage Accumulation Period                !03148B3J
*                      ONLY                                            !03148B3K
*                  B = BOTH Periodic and Cyclic Usage                  !03148B3L
*                      Accumulation Period                             !03148B3M
*                                                                      !03148B3N
  02 XFER-USG-IND            PIC X.                                    !03148B3O
                                                                       !03148B3P
*                                                                      !03148B3Q
*             A code defining the institution's usage accumulation     !03148B3R
                                                                       !03148D07
*             period length for transfers and payments performed       !03148D08
*             through BASE24-telebanking/BASE24-billpay.  The          !03148D09
*             length of the usage accumulation period defines how      !03148D0A
*             long usage data in the Telebanking segment of the        !03148D0B
                                                                       !03148D0C
                                                                       !03148D0D
                                                                       !03148D0E
                                                                       !03148D0F
*             PBF is allowed to accumulate before it is cleared.       !03148B3W
*                                                                      !03148B3X
*             If codes 1, 2, or 3 are used in this field, the value    !03148B3Y
*             in the USG-PRD-LGTH field in this IDF segment must be    !03148B3Z
*             set to 0.  If the value in the USG-PRD-LGTH field is     !03148B40
*             to be used to determine the usage accumulation period    !03148B41
*             length, the value in this field must be set to 0.        !03148B42
*                                                                      !03148B43
*             Valid values are:                                        !03148B44
*                                                                      !03148B45
*             0 = The value in the USG-PRD-LGTH field below is used    !03148B46
*                 to determine the usage accumulation.                 !03148B47
*             1 = Clear usage accumulation fields daily, except on     !03148B48
*                 weekends and specified holidays.                     !03148B49
*             2 = Clear usage accumulation fields daily, except on     !03148B4A
*                 Sundays and specified holidays.                      !03148B4B
*             3 = Clear usage accumulation fields daily, except on     !03148B4C
*                 Saturdays and specified holidays.                    !03148B4D
*                                                                      !03148B4E
*             Holidays are specified by the values in the HOL field    !03148B4F
*             of the Base segment of the IDF.                          !03148B4G
*                                                                      !03148B4H
  02 PRD-WRK-DAY                  PIC X.                               !03148B4I
                                                                       !03148B4J
*                                                                      !03148B4K
*             A code defining the institution's usage accumulation     !03148B4L
                                                                       !03148D0G
*             period length for transfers and payments performed       !03148D0H
*             through BASE24-telebanking/BASE24-billpay.  The length   !03148D0I
*             of a periodic usage accumulation period defines how      !03148D0J
*             long usage data in the Telebanking segment of the PBF    !03148D0K
                                                                       !03148D0L
                                                                       !03148D0M
                                                                       !03148D0N
                                                                       !03148D0O
*             PBF is allowed to accumulate before it is cleared.       !03148B4Q
*                                                                      !03148B4R
*             The value in this field is only referenced if the value  !03148B4S
*             in the PRD-WRK-DAY field in this IDF segment is set      !03148B4T
*             to 0, indicating that the usage accumulation period      !03148B4U
*             length should be determined by this field.  If the       !03148B4V
*             value in the PRD-WRK-DAY field is set to 1, 2, or 3,     !03148B4W
*             the value in this field must be set to 0.                !03148B4X
*                                                                      !03148B4Y
*             If weekends and holidays affect when the usage           !03148B4Z
*             accumulation fields are cleared, the value in the        !03148B50
*             PRD-WRK-DAY field below must be used.  Valid values      !03148B51
*             are:                                                     !03148B52
*                                                                      !03148B53
*             0    = The period is indicated by the value in the       !03148B54
*                    PRD-WRK-DAY field defined in this IDF segment.    !03148B55
*             1-79 = The number of days in the period.                 !03148B56
*             80   = The period is one week (7 days).                  !03148B57
*             81   = The period is two weeks (14 days).                !03148B58
*             82   = The period begins on the first and fifteenth of   !03148B59
*                    each month.                                       !03148B5A
*             83   = The period begins on the first of each month.     !03148B5B
*             84   = The period is 3 months.                           !03148B5C
*             85   = The period is 6 months.                           !03148B5D
*             86   = The period is 1 year.                             !03148B5E
*                                                                      !03148B5F
  02 USG-PRD-LGTH               TYPE BINARY 16.                        !03148B5G
                                                                       !03148B5H
*             The starting date (YYMMDD) of the current usage          !03148B5I
*             accumulation period for all customers belonging to       !03148B5J
                                                                       !03148D0P
*             this institution.                                        !03148D0Q
                                                                       !03148D0R
                                                                       !03148D0S
                                                                       !03148D0T
                                                                       !03148D0U
*                                                                      !03148B5M
  02 CUR-PRD-BEG-DAT              TYPE DAT.                            !03148B5N
                                                                       !03148B5O
*                                                                      !03148B5P
*             The starting date (YYMMDD) of the next usage             !03148B5Q
*             accumulation period for all customers belonging          !03148B5R
                                                                       !03148D0V
*             to this institution.                                     !03148D0W
                                                                       !03148D0X
                                                                       !03148D0Y
                                                                       !03148D0Z
                                                                       !03148D10
*                                                                      !03148B5U
  02 NXT-PRD-BEG-DAT              TYPE DAT.                            !03148B5V
                                                                       !03148B5W
*                                                                      !03148B5X
*             A code defining the institution's usage accumulation     !03148B5Y
                                                                       !03148D11
*             cycle length.  The length of the usage accumulation      !03148D12
*             cycle defines how long usage data in the Telebanking     !03148D13
*             segment of the PBF is allowed to accumulate before       !03148D14
*             it is cleared.                                           !03148D15
                                                                       !03148D16
                                                                       !03148D17
                                                                       !03148D18
                                                                       !03148D19
*                                                                      !03148B64
*             The value in this field is only referenced if the value  !03148B65
*             in the CYC-WRK-DAY field in this IDF segment is set      !03148B66
*             to 0, indicating that the usage accumulation period      !03148B67
*             length should be determined by this field.  If the       !03148B68
*             value in the CYC-WRK-DAY field is set to 1, 2, or 3,     !03148B69
*             the value in this field must be set to 0.                !03148B6A
*                                                                      !03148B6B
*             If weekends and holidays affect when the usage           !03148B6C
*             accumulation fields are cleared, the value in the        !03148B6D
*             CYC-WRK-DAY field below must be used.  Valid values      !03148B6E
*             are:                                                     !03148B6F
*                                                                      !03148B6G
*             0    = The period is indicated by the value in the       !03148B6H
*                    CYC-WRK-DAY field defined in this IDF segment.    !03148B6I
*             1-79 = The number of days in the period.                 !03148B6J
*             80   = The period is one week (7 days).                  !03148B6K
*             81   = The period is two weeks (14 days).                !03148B6L
*             82   = The period begins on the first and fifteenth of   !03148B6M
*                    each month.                                       !03148B6N
*             83   = The period begins on the first of each month.     !03148B6O
*             84   = The period is 3 months.                           !03148B6P
*             85   = The period is 6 months.                           !03148B6Q
*             86   = The period is 1 year.                             !03148B6R
*                                                                      !03148B6S
  02 CYC-PRD-LGTH               TYPE BINARY 16.                        !03148B6T
                                                                       !03148B6U
*                                                                      !03148B6V
*             A code defining the institution's usage accumulation     !03148B6W
                                                                       !03148D1A
*             cycle length.  The length of the usage accumulation      !03148D1B
*             cycle defines how long usage data in the Telebanking     !03148D1C
*             segment of the PBF are allowed to accumulate before      !03148D1D
*             they are cleared.                                        !03148D1E
                                                                       !03148D1F
                                                                       !03148D1G
                                                                       !03148D1H
                                                                       !03148D1I
*                                                                      !03148B72
*             If codes 1, 2, or 3 are used in this field, the value    !03148B73
*             in the CYC-PRD-LGTH field in this IDF segment must be    !03148B74
*             set to 0.  If the value in the CYC-PRD-LGTH field is     !03148B75
*             to be used to determine the usage accumulation period    !03148B76
*             length, the value in this field must be set to 0.        !03148B77
*             Valid values are:                                        !03148B78
*                                                                      !03148B79
*             0 = The value in the CYC-PRD-LGTH field above is used    !03148B7A
*                 to determine the usage accumulation.                 !03148B7B
*             1 = Clear usage accumulation fields daily, except on     !03148B7C
*                 weekends and specified holidays.                     !03148B7D
*             2 = Clear usage accumulation fields daily, except on     !03148B7E
*                 Sundays and specified holidays.                      !03148B7F
*             3 = Clear usage accumulation fields daily, except on     !03148B7G
*                 Saturdays and specified holidays.                    !03148B7H
*                                                                      !03148B7I
*             Holidays are specified by the values in the HOL field    !03148B7J
*             of the Base segment of the IDF.                          !03148B7K
*                                                                      !03148B7L
  02 CYC-WRK-DAY                  PIC X.                               !03148B7M
                                                                       !03148B7N
*                                                                      !03148B7O
*             The starting date (YYMMDD) of the current usage          !03148B7P
*             accumulation cycle for customers belonging to            !03148B7Q
                                                                       !03148D1J
*             this institution.                                        !03148D1K
                                                                       !03148D1L
                                                                       !03148D1M
                                                                       !03148D1N
                                                                       !03148D1O
*                                                                      !03148B7T
  02 CUR-CYC-BEG-DAT              TYPE DAT.                            !03148B7U
                                                                       !03148B7V
*                                                                      !03148B7W
*              The starting date (YYMMDD) of the next usage            !03148B7X
*              accumulation cycle for all customers belonging to       !03148B7Y
                                                                       !03148D1P
*              this institution.                                       !03148D1Q
                                                                       !03148D1R
                                                                       !03148D1S
                                                                       !03148D1T
                                                                       !03148D1U
*                                                                      !03148B81
  02 NXT-CYC-BEG-DAT              TYPE DAT.                            !03148B82
                                                                       !03148B83
*                                                                      !03148B84
*             The previous BASE24-telebanking processing               !03148B85
*             date (YYMMDD).                                           !03148B86
*                                                                      !03148B87
*             This is one calendar date less than the value in the     !03148B88
*             CUR-BUS-DAT field and is referred to as the reporting    !03148B89
*             business date because the current reports reflect this   !03148B8A
*             date's activity.                                         !03148B8B
*                                                                      !03148B8C
*             The value in this field may be altered for record        !03148B8D
*             maintenance purposes (i.e., in the event that the        !03148B8E
*             Settlement Initiator process fails).                     !03148B8F
*                                                                      !03148B8G
  02 RPT-BUS-DAT                  TYPE DAT.                            !03148B8H
                                                                       !03148B8I
*                                                                      !03148B8J
*             The current BASE24-telebanking processing                !03148B8K
*             date (YYMMDD).                                           !03148B8L
*                                                                      !03148B8M
*             The value of this field is incremented by one calendar   !03148B8N
*             day at institution cutover (the time specified in the    !03148B8O
*             incremented every day, including holidays and weekends.  !03148B8P
*                                                                      !03148B8Q
*             The date can be altered for record maintenance           !03148B8R
*             purposes, (i.e., in the event the Settlement Initiator   !03148B8S
*             process fails).                                          !03148B8T
*                                                                      !03148B8U
  02 CUR-BUS-DAT                  TYPE DAT.                            !03148B8V
                                                                       !03148B8W
*                                                                      !03148B8X
*             This field is not used.                                  !03148B8Y
*                                                                      !03148B8Z
  02 USER-FLD2                    PIC X.                               !03148B90
                                                                       !03148B91
*             This field contains the end time (HHMM) for financial    !03148B92
*             institution cutover.  At the time indicated, the         !03148B93
*             Report Business Date and Current Business Date are       !03148B94
*             cutover to the appropriate new date.  Valid values       !03148B95
*             are 0-2359; default is 0 (midnight).                     !03148B96
*                                                                      !03148B97
  02 CUTOVER-END                  TYPE BINARY 16.                      !03148B98
                                                                       !03148B99
*             This field identifies the reports this institution       !03148B9A
*             requires.  Each bit identifies a type of report.  If     !03148B9B
*             the bit is turned off, no report is produced (default).  !03148B9C
*             If the bit is turned on, the report is required.         !03148B9D
*                                                                      !03148B9E
*             Bit 0  -    TB01 Daily Customer Activity Detail          !03148B9F
*                 1  -    TB02 Daily Customer Activity Summary         !03148B9G
*                 2  -    TB03 Daily Financial Activity Detail         !03148B9H
*                 3  -    TB04 Daily Financial Activity Summary        !03148B9I
*                 4  -    TB05 Monthly Customer Activity Summary       !03148B9J
*                 5  -    TB06 Monthly Financial Activity Summary      !03148B9K
*                 6  - 31 Not Used                                     !03148B9L
                                                                       !03148B9M
  02 RPT-MAP                      TYPE BINARY 32.                      !03148B9N
                                                                       !03148B9O
*             The number of days summary information is maintained     !03148B9P
*             in the Institution Periodic Reporting File (IPRF) for    !03148B9Q
*             this institution.  The Telebanking Reporting Program     !03148B9R
*             automatically purges data from the IPRF that is dated    !03148B9S
*             outside of the retention period specified in this field. !03148B9T
*             Valid values are 0 - 999.  The default value is 31.      !03148B9U
*             If monthly reports are supported, this field should be   !03148B9V
*             set to a value greater than or equal to 31.              !03148B9W
                                                                       !03148B9X
  02 PRD-FILE-RETN                TYPE BINARY 16.                      !03148B9Y
                                                                       !03148B9Z
 END                                                                   !03148BA0
                                                                       !03148BA1
?page "CRLINEIDF - CREDIT LINE IDF Segment"
?section CRLINEIDF
                                                                       !03148BA6
*             The following fields make up the Credit Line segment of !!03153
*             the Institution Definition File (IDF).                  !!03154
                                                                       !03155
  DEFINITION CRLINEIDF.                                                !03156
                                                                       !03157
                                                                       !03158
  02 SEG-LGTH                     TYPE *.                              !03159
                                                                       !03160
*             A code that indicates how to determine the              !!03161
*             transfer amount for an automatic transfer from          !!03162
*             a credit line backup account to the primary account.    !!03163
*             The user can configure whether funds are transferred in !!03164
*             increments or whether the exact amount required for the !!03165
*             transaction is transferred.  Valid values are:          !!03166
*                                                                     !!03167
*             E = Exact Amount                                        !!03168
*             I = Increment Amount                                    !!03169
*             _ = Not Supported ( _ denotes blank)                    !!03170
                                                                       !03171
 02  CR-XFER-METHOD            PIC X.                                  !03172
                                                                       !03173
*             A code that indicates how to determine the              !!03174
*             transfer amount for an automatic transfer from          !!03175
*             a demand deposit or savings backup account to the       !!03176
*             primary account.  The user can configure whether funds  !!03177
*             are transferred in increments or whether the exact      !!03178
*             amount required for the transaction is transferred.     !!03179
*             Valid values are:                                       !!03180
*                                                                     !!03181
*             E = Exact Amount                                        !!03182
*             I = Increment Amount                                    !!03183
*             _ = Not Supported ( _ denotes blank)                    !!03184
                                                                       !03185
 02  DB-XFER-METHOD            PIC X.                                  !03186
                                                                       !03187
*             The increment amount used as the basis for internal     !!03188
*             transfers from a credit line backup account to the      !!03189
*             primary account.  This value must be greater than       !!03190
*             zero if the CR-XFER-METHOD field is set to I            !!03191
*             (Increment Amount).                                     !!03192
                                                                       !03193
 02  CR-INCR-AMT               TYPE BINARY 64.                         !03194
                                                                       !03195
*             The increment amount used as the basis for internal     !!03196
*             transfers from a demand deposit or savings backup       !!03197
*             account to the primary account.  This value must be     !!03198
*             greater than zero if the DB-XFER-METHOD field is set to !!03199
*             I (Increment Amount).                                   !!03200
                                                                       !03201
 02  DB-INCR-AMT               TYPE BINARY 64.                         !03202
                                                                       !03203
END                                                                    !03204
                                                                       !03205
?page "SSBCIDF - SSBC IDF Segment"
?section SSBCIDF
*             The following fields make up the BASE24-atm Self-Service!!03210
*             Banking Check segment of the Institution Definition File!!03211
*             (IDF).                                                  !!03212
                                                                       !03213
  DEFINITION SSBCIDF.                                                  !03214
                                                                       !03215
  02 SEG-LGTH                     TYPE *.                              !03216
                                                                       !03217
*                                                                     !!03218
*             A code indicating whether the Stop Payment File (SPF)   !!03219
*             should be checked during prescreening processing by     !!03220
*             BASE24.  Valid values are:                              !!03221
*                                                                     !!03222
*             0 = Send check-related transactions to the host without !!03223
*                 checking the SPF.                                   !!03224
*             1 = Check the SPF before sending check-related          !!03225
*                 transactions to the host.                           !!03226
*                                                                     !!03227
*             The value in this field is only used with Authorization !!03228
*             Level (online/offline).                                 !!03229
                                                                       !03230
                                                                       !03231
  02  SPF-CHK                     PIC X.                               !03232
                                                                       !03233
*                                                                     !!03234
*             A code indicating whether the Check Status File (CSF)   !!03235
*             should be checked during prescreening processing by     !!03236
*             BASE24.  Valid values are:                              !!03237
*                                                                     !!03238
*             0 = Send check-related transactions to the host without !!03239
*                 checking the CSF.                                   !!03240
*             1 = Check the CSF before sending check-related          !!03241
*                 transactions to the host.                           !!03242
*                                                                     !!03243
*             The value in this field is only used with Authorization !!03244
*             Level (online/offline).                                 !!03245
*                                                                     !!03246
  02  CSF-CHK                     PIC X.                               !03247
                                                                       !03248
*                                                                     !!03249
*             A code indicating whether the Corporate Check File (CCF)!!03250
*             should be checked during prescreening processing by     !!03251
*             BASE24.  Valid values are:                              !!03252
*                                                                     !!03253
*             0 = Send check-related transactions to the host without !!03254
*                 checking the CCF.                                   !!03255
*             1 = Check the CCF before sending check-related          !!03256
*                 transactions to the host.                           !!03257
*                                                                     !!03258
*             The value in this field is only used with Authorization !!03259
*             Level (online/offline).                                 !!03260
*                                                                     !!03261
  02  CCF-CHK                     PIC X.                               !03262
                                                                       !03263
                                                                       !03263A00
*                                                                      !03263A01
*             The disposition of the check for cash check transactions !03263A02
*             in which the acquiring terminal is unable to dispense    !03263A03
*             the full amount requested.  Valid values are:            !03263A04
*                                                                      !03263A05
*             0 = Cancel the cash check transaction and return the     !03263A06
*                 check to the cardholder.  The approved transaction   !03263A07
*                 will be reversed.  Note that it is possible that     !03263A08
*                 coins have already been dispensed to the customer,   !03263A09
*                 so the reversal that is generated may be a partial   !03263A0A
*                 reversal with a completed amount equivalent to the   !03263A0B
*                 amount of change dispensed.                          !03263A0C
*             1 = Allow the cash check transaction to complete by      !03263A0D
*                 retaining the check and dispensing the cash that     !03263A0E
*                 is available.  BASE24-atm will generate a full or    !03263A0F
*                 partial reversal to reflect that the check was       !03263A0G
*                 accepted, but the full dispense was not successful.  !03263A0H
*                                                                      !03263A0I
                                                                       !03263A0J
                                                                       !03264A00
                                                                       !03264A01
                                                                       !03264A02
                                                                       !03281
  02  CHK-DISP                    PIC X.                               !03282
                                                                       !03283
 END                                                                   !03284
                                                                       !03284F00
?page "SMIDF - SMART CARD IDF Segment"
?section SMIDF
                                                                       !03284F05
*             The following fields make up the Smart Card segment of   !03284F06
*             the Institution Definition File (IDF).                   !03284F07
                                                                       !03284F08
  DEFINITION SMIDF.                                                    !03284F09
                                                                       !03284F0A
                                                                       !03284F0B
  02 SEG-LGTH                     TYPE *.                              !03284F0C
*                                                                      !03284F0D
*             A code indicating whether the Smart Card request/response
*             security is to be handled by BASE24 or the host.         !03284F0G
*             Valid values are:                                        !03284F0H
*                                                                      !03284F0I
*             "0"   = Host.                                            !03284F0J
*             "1"   = BASE24.                                          !03284F0K
*                                                                      !03284F0L
*             The value in this field is only used with authorization  !03284F0M
*             level 1 (online) and authorization level 3               !03284F0N
*             (online/offline).                                        !03284F0O
*                                                                      !03284F0P
                                                                       !03284F0Q
  02 SM-SEC                     PIC X.                                 !03284F0R
*             A code indicating whether the chip expiration date       !03284F0S
*             (DEXP) is to be checked during prescreening by           !03284F0T
*             BASE24.  Valid values are:                               !03284F0U
*                                                                      !03284F0V
*             "0"   = Send requests to a host without checking the     !03284F0W
*                     chip expiration date.                            !03284F0X
*             Other = Check the chip expiration date. If expired,      !03284F0Y
*                     decline the request and do not send to a host.   !03284F0Z
*                                                                      !03284F10
*             The value in this field is only used with authorization  !03284F11
*             level 1 (online) and authorization level 3               !03284F12
*             (online/offline).                                        !03284F13
*                                                                      !03284F14
  02 DEXP-CHK                   PIC X.                                 !03284F15
*                                                                      !03284F16
*             A code indicating whether separate completion advices    !03284F17
*             are required for the Smart Card issuer, if the Smart     !03284F18
*             Card issuer is different from the funds account issuer.  !03284F19
*             If the two halves (SVC and funds) are being authorized   !03284F1A
*             via separate authorization requests, then they can both  !03284F1B
*             be followed up by completions.                           !03284F1C
*             If the two halves are being handled in one authorization,
*             then the COMPL-REQ field of the ATM segment              !03284F1F
*             of the IDF controls the sending of completions.          !03284F1G
*             Values are:                                              !03284F1H
*                                                                      !03284F1I
*             "0" = Do not send 0220 messages to Smart Card issuer     !03284F1J
*             "1" = Send 0220 messages                                 !03284F1K
                                                                       !03284F1L
  02 COMPL-REQ                  PIC X.                                 !03284F1M
                                                                       !03284G00
                                                                       !03284G01
                                                                       !03284G02
                                                                       !03284F2N
*             Indicates whether the institution wishes combination     !03284F2O
*             funds/stored value cards to be captured when maximum     !03284F2P
*             PIN tries has been exceeded.                             !03284F2Q
*             "0" = do not capture                                     !03284F2R
*             "1" = capture                                            !03284F2S
                                                                       !03284F2T
  02 CAPTURE-ON-MAX-PIN-TRIES     PIC X.                               !03284F2U
                                                                       !03284F2V
*             Indicates whether the institution wishes combination     !03284F2W
*             funds/stored value cards to be captured when the card    !03284F2X
*             status indicates lost/stolen.                            !03284F2Y
*             "0" = do not capture                                     !03284F2Z
*             "1" = capture                                            !03284F30
                                                                       !03284F31
  02 CAPTURE-ON-LOST-STOLEN       PIC X.                               !03284F32
                                                                       !03284F33
                                                                       !03284G03
*             The last message write option.  Before the device        !03284G04
*             handler sends the Smard Card response message to the     !03284G05
*             terminal, this field will indicate whether the device    !03284G06
*             handler should write the BASE24 Standard Internal        !03284G07
*             Message to the BASE24-atm Terminal Data Dynamic          !03284G08
*             scratch pad file (ATDD2).                                !03284G09
*                                                                      !03284G0A
*             0 = do not write the response to the ATDD2.              !03284G0B
*             1 = do write the response to the ATDD2.                  !03284G0C
*                                                                      !03284G0D
*             The default value is 0.                                  !03284G0E
                                                                       !03284G0F
  02 LAST-MSG-WRT-OPT             PIC X.                               !03284G0G
                                                                       !03284G0H
*             This field is not used.                                  !03284F34
                                                                       !03284F35
                                                                       !03284G0I
  02 USER-FLD                     PIC X(8).                            !03284G0J
                                                                       !03284G0K
                                                                       !03284F37
  END                                                                  !03284F38
                                                                       !03284K00
                                                                       !03284K01
?page "PFRD-TXN-IDF -  Preferred Transaction Segment"
?section PFRD-TXN-IDF
                                                                       !03284K06
*             The following fields make up the preferred transaction   !03284K07
*             segment of the Institution Definition File (IDF).        !03284K08
*             This segment contains the information about how the      !03284K09
*             institution will support the cardholder's preferred      !03284K0A
*             transaction.                                             !03284K0B
*                                                                      !03284K0C
DEFINITION PFRD-TXN-IDF.                                               !03284K0D
                                                                       !03284K0E
  02 SEG-LGTH                     TYPE *.                              !03284K0F
*                                                                      !03284K0G
*             The location from which to retrieve the preferences for  !03284K0H
*             the cardholder's preferred transaction.                  !03284K0I
*                   1 - From the CAF                                   !03284K0J
*                   2 - From the host                                  !03284K0K
*                   3 - From the CAF if host unavailable               !03284K0L
                                                                       !03284K0M
  02  PFRD-TXN-RETRV-DATA-LOC     PIC X.                               !03284K0N
                                                                       !03284K0O
*             The location to store the preferences for the            !03284K0P
*             cardholder's preferred transaction.                      !03284K0Q
*                   1 - Store in the CAF only                          !03284K0R
*                   2 - Store at the host only                         !03284K0S
*                   3 - Store in the CAF if host unavailable           !03284K0T
*                   4 - Store both CAF and the host (update the        !03284K0U
*                       CAF on the response leg of the transaction)    !03284K0V
                                                                       !03284K0W
  02  PFRD-TXN-STORE-DATA-LOC     PIC X.                               !03284K0X
                                                                       !03284K0Y
  END                                                                  !03284K0Z
                                                                       !03284K0a
                                                                       !03284G0L
                                                                       !03284G0M
                                                                       !03284G0N
                                                                       !03284F3D
                                                                       !03284G0O
?nocomments
?page "IDF - Institution Definition File"
?section IDF
                                                                       !03284G0V
                                                                       !03284G0W
                                                                       !03284G0X
                                                                       !03284G0Y
                                                                       !03284F5J
                                                                       !03284F5K
                                                                       !03284F5L
                                                                       !03284F5M
                                                                       !03284B05
                                                                       !03284B06
                                                                       !03284B07
RECORD IDF.            FILE IS "IDF" RELATIVE.                         !03296
                                                                       !03297
 02 SEG0                TYPE IDFBASE.                                  !03298
 02 SEG1                TYPE ATMIDF.                                   !03299
 02 SEG2                TYPE POSIDF.                                   !03300
 02 SEG3                TYPE TLRIDF.                                   !03301
                                                                       !03302C00
                                                                       !03302C01
                                                                       !03302C02
 02 SEG11               TYPE MAILIDF.                                  !03305
                                                                       !03306C00
                                                                       !03306C01
                                                                       !03306C02
 02 SEG14               TYPE TBIDF.                                    !03307B01
                                                                       !03307B02
 02 SEG15               TYPE CRLINEIDF.                                !03308
 02 SEG18               TYPE SSBCIDF.                                  !03309
                                                                       !03309F00
 02 SEG20               TYPE SMIDF.                                    !03309F01
                                                                       !03309K00
 02 SEG27               TYPE PFRD-TXN-IDF.                             !03309K01
                                                                       !03309K02
                                                                       !03309G00
                                                                       !03309G01
                                                                       !03309F03
                                                                       !03310
                                                                       !03311
                                                                       !03312G00
 KEY "FI"  IS FIID          DUPLICATES NOT ALLOWED.                    !03312G01
                                                                       !03312G02
 KEY "GL"  IS REFR-GRP.                                                !03313
 KEY "RT"  IS ALTKEY        DUPLICATES NOT ALLOWED.                    !03314
                                                                       !03315
END                                                                    !03316
                                                                       !03317
                                                                       !03317G00
                                                                       !03317G01
