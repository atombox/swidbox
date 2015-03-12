**FIX2.23  02/13/03  DDLFECF 6009 DDL    BA60DDL  BA06245  I                 ***
**FIX2.22  05/05/02  DDLFECF 6008 DDL    BA60DDL  BA05407  H                 ***
**FIX2.22  04/19/02  DDLFECF 6007 DDL    BA60DDL  BA05377  G                 ***
**FIX2.19  01/12/02  DDLFECF 6006 DDL    BA60DDL  BA05167  F                 ***
**FIX2.14  03/21/01  DDLFECF 6005 DDL    BA60DDL  BA04345  E                 ***
**FIX2.11  01/02/01  DDLFECF 6004 DDL    BA60DDL  BA04151  D                 ***
**SEQ0.04  11/01/00  DDLFECF 6003 DDL    BA60DDL  BA04000  C                 ***
**SYNC.04  12/09/98  DDLFECF 5303 DDL    BA53DDL  BA04000  C                 ***
**FIX2.03  08/28/98  DDLFECF 5303 DDL    BA53DDL  BA03000  C                 ***
**FIX2.04  03/03/98  DDLFECF 5103 DDL    BA51DDL  BA03095  C                 ***
**SYNC.03  08/22/97  DDLFECF 5102 DDL    BA51DDL  BA03000  B                 ***
**SYNC.02  06/25/96  DDLFECF 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  11/13/95  DDLFECF 5102 DDL    BA51DDL  BA51202  B                 ***
**FIX2.00  06/06/95  DDLFECF 5101 DDL    BA51DDL  BA51007  A                 ***
!*SEQ2.00  10/20/92  DDLFECF 5100 DDL    BA51DDL                               !
                                                                       !00000D00
?page "ECF - Extract Configuration File"
?section ecf-history
********************************************************************** !00000D05
*                                                                    * !00000D06
*                              BASE24                                * !00000D07
*                              ------                                * !00000D08
*                                                                    * !00000D09
*               DDL for the Extract Configuration File               * !00000D0A
*                                                                    * !00000D0B
*                    Proprietary Software Product                    * !00000D0C
*                                                                    * !00000D0D
*                         ACI Worldwide Inc.                         * !00000D0E
*                       330 South 108th Avenue                       * !00000D0F
*                       Omaha, Nebraska  68154                       * !00000D0G
*                           (402) 390-7600                           * !00000D0H
*                                                                    * !00000D0I
*    Copyright by ACI Worldwide Inc. 2000                            * !00000D0J
*                                                                    * !00000D0K
*    All Rights Reserved.  No part of this document may be           * !00000D0L
*    reproduced in any manner without the prior written consent of   * !00000D0M
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000D0N
*    confidentiality is strictly maintained.  Use of any copyright   * !00000D0O
*    notice does not imply unrestricted or public access to these    * !00000D0P
*    materials.                                                      * !00000D0Q
*                                                                    * !00000D0R
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000D0S
*                                                                    * !00000D0T
********************************************************************** !00000D0U
*                                                                      !00000D0V
* Record of Changes:                                                   !00000D0W
*                                                                      !00000D0X
* Date        Person/Emp #                                             !00000D0Y
* ---------   ------------                                             !00000D0Z
                                                                       !00000D10
                                                                       !00000A02
**********************************************************************!!00255
*                       RELEASE 5.0                                  *!!00256
**********************************************************************!!00257
* 92/04/01       Release 5.0 Design Team                              !!00258
* --------       -----------------------                              !!00259
* SYMPTOM:       BASE24 Release 5.0 Enhancements                      !!00260
* PROBLEM:       (E) None.                                            !!00261
* FIX:           1)  Added a DHSF flag to the ECFBASE definition for  !!00262
*                    the Diebold Hardware Status File.                !!00263
*                2)  Added a DHSF structure to the ATMECF segment.  It!!00264
*                    contains the following fields:                   !!00265
*                        JOB-NAME                                     !!00266
*                        FIID                                         !!00267
*                        START-DAT-OFST                               !!00268
*                        END-DAT-OFST                                 !!00269
*                3)  Cleaned up the FILE-MAP structure.  Reorganized  !!00270
*                    the fields and eliminated FILE-MAP flags for the !!00271
*                    VLF, VDC, VST, PRF and PTDF.                     !!00272
*                4)  Added the following fields to the BASE segment   !!00273
*                    for TAPECOM support:                             !!00274
*                        VOL-ID                                       !!00275
*                        RETENTION                                    !!00276
*                        DATA-SET-ID                                  !!00277
*                        MOUNT-MSG                                    !!00278
*                5)  Added the extract record format field EXTR-FRMT  !!00279
*                    to the ILF structure in the BASE segment.        !!00280
*                6)  Added the extract record format field EXTR-FRMT  !!00281
*                    to the TLF structure in the ATM segment and also !!00282
*                    expanded USER-FLD11 from 8 to 20 bytes.          !!00283
*                7)  Added the extract record format field EXTR-FRMT  !!00284
*                    to the PTLF structure in the POS segment.        !!00285
*                8)  Added the extract record format field EXTR-FRMT  !!00286
*                    to the TTLF structure in the TLR segment and also!!00287
*                    expanded USER-FLD13 from 10 to 20 bytes.         !!00288
*                9)  Changed the field name in the ULF structure in   !!00289
*                    the FHM segment from FIID to GRP.                !!00290
*               10)  Changed the TAPE-BLK-SIZE from an integer to an  !!00291
*                    int(32).                                         !!00292
*               11)  Removed the EXPR-DAT fields from the HMBF and MBF!!00293
*                    files in the BASE24-mail segment of the ECF.     !!00294
*               12)  Added the FILE-DAY-OFST fields to the HMBF and   !!00295
*                    MBF file in the BASE24-mail segment of the ECF.  !!00296
*               12)  Added the DENSITY field to the BASE segment for  !!00297
*                    TAPECOM support.                                 !!00298
*               13)  Removed the PRF fields from the POS segment.     !!00299
*               14)  Removed the VCAN ILF fields from the BASE        !!00300
*                    segment.                                         !!00301
*               15)  Removed the ATHIDF, ATHTDF, ATHTTF, and ATHVDF   !!00302
*                    from the base segment. Replaced them with USER-FLD
*                    1A, 1B, 1C, and 1D.                              !!00305
* DEPENDENCIES:  Re-DDL. Recompile all modules that source in the TLF.!!00306
*                Refer to the Release 5.0 Installation Documentation  !!00307
*                for further details.                                 !!00308
* REFERENCE:     BASE24-base Release 5.0 External Specifications      !!00309
*                - Super Extract Enhancements External Specification  !!00310
*                BASE24-atm Release 5.0 External Specifications       !!00311
*                - Diebold PAMS Support External Specification        !!00312
*                                                                     !!00313
**********************************************************************!!00314
                                                                       !00314A00
*********************************************************************  !00314A01
*                  RELEASE 5.1                                      *  !00314A02
*********************************************************************  !00314A03
*                                                                      !00314A04
* 95JUN01       JMS/583                                                !00314A05
* SYMPTOM:    BASE24-BASE RELEASE 5.1 ENHANCEMENTS                     !00314A06
* PROBLEM:    (E) NONE.                                                !00314A07
* FIX:        Removed AFS, EFTPOS, and Cash Manager products.          !00314A08
*             Removed these file from the FILE-MAP and replaced them   !00314A09
*             with User Fields.                                        !00314A0A
*                 CTLF   is now USER-FLD1E                             !00314A0B
*                 CFLF   is now USER-FLD1F                             !00314A0C
*                 PEND   is now USER-FLD1G                             !00314A0D
*                 BILL   is now USER-FLD1H                             !00314A0E
*                 FRDF   is now USER-FLD1I                             !00314A0F
*                 CLF    is now USER-FLD1J                             !00314A0G
*                 RLF    is now USER-FLD1K                             !00314A0H
*                 ALF    is now USER-FLD1L                             !00314A0I
*                 ACH-UP is now USER-FLD1M                             !00314A0J
*                 NRTF   is now USER-FLD1N                             !00314A0K
*                 RREC   is now USER-FLD1O                             !00314A0L
* IMPLEMENT:  Remove reference to these products in all modules.       !00314A0M
*             Re-compile DDL's. Apply related fix to the ECF           !00314A0N
*             requestor and server and recompile.  All modules         !00314A0O
*             that source in the ECF must be recompiled.               !00314A0P
*             Extract fix must be applied and recompiled/bound.        !00314A0Q
* REFERENCE:  950201-001                                               !00314A0R
*                                                                      !00314A0S
* 22AUG94     TMH - JMS/583                                            !00314A0T
* SYMPTOM:    BASE24-telebanking Initial Release                       !00314A0U
* PROBLEM:    <E> None.                                                !00314A0V
* FIX:        Added Segment 14 for BASE24-telebanking.                 !00314A0W
*             Added TBLF to the FILE-MAP as a file which can be        !00314A0X
*             extracted for BASE24-telebanking.  In doing so,          !00314A0Y
*             USER-FLD1A was removed.                                  !00314A0Z
* IMPLEMENT:  Apply related fix to ECF requester to qualify the        !00314A10
*             initialization of the ATM ECF field FILE-DAY-OFST OF     !00314A11
*             TLF to include of SEG1.  Recompile Base Extract          !00314A12
*             program, ECF requester, and ECF server.                  !00314A13
* REFERENCE:  TB930301-01, B24-telebanking External Specifications     !00314A14
*                                                                      !00314A15
* 24MAR95     JAS - JMS/583                                            !00314A16
* SYMPTOM:    None.                                                    !00314A17
* PROBLEM:    ITS Transaction Log File (ITLF) name in the FILE-MAP     !00314A18
*             was incorrect.                                           !00314A19
* FIX:        Renamed the TBLF entry in the FILE-MAP to ITLF.          !00314A1A
* IMPLEMENT:  Recompile Base Extract program, ECF requester            !00314A1B
*             and server, ITLF Extract, Refresh/Extract requester.     !00314A1C
* REFERENCE:  TB930301-01, B24-telebanking External Specifications     !00314A1D
*                                                                      !00314A1E
                                                                       !00314B00
* 01MAY95    SLA/435                                                   !00314B01
* SYMPTOM:   None.                                                     !00314B02
* PROBLEM:   <E> None.                                                 !00314B03
* FIX:       Modified comments in the Telebanking segment to           !00314B04
*            reflect support for Release 1.1.                          !00314B05
* IMPLEMENT: None.                                                     !00314B06
* REFERENCE: Work Order 950425-1.                                      !00314B07
*                                                                      !00314B08
                                                                       !00314B09
                                                                       !00314C00
* 18FEB1998   CLR/451                                                  !00314C01
* Symptom:    Bridge PI Table Phase 1 Enhancement.  The PI Table       !00314C02
*             has reached its limit of 32 product entries.  The        !00314C03
*             maximum entries will be expanded to 96.                  !00314C04
* Problem:    None.                                                    !00314C05
* Fix:        Added ECF-CONSTANTS section with constants               !00314C06
*             to represent the version and supported segments in       !00314C07
*             a record.                                                !00314C08
* Dependency: Apply fix and reMAKE.                                    !00314C09
* Reference:  WO #971118-2.                                            !00314C0A
                                                                       !00314D00
*********************************************************************  !00314D01
*             Release 6.0                                           *  !00314D02
*********************************************************************  !00314D03
* 30NOV2000   CLR/451 jfu/543                                          !00314D04
* Symptom:    Release 6.0 Enhancements                                 !00314D05
* Problem:    None.                                                    !00314D06
* Fix:        Removed version literals and constants.                  !00314D07
*             Replaced USER-FLD1B with ICFE in the FILE-MAP.           !00314D08
*             Removed ASUF from the FILE-MAP and replaced it           !00314D09
*               with the user field - USER-FLD1-FILE-MAP.              !00314D0A
*             Removed RTLF from the FILE-MAP and replaced it           !00314D0B
*               with the user field - USER-FLD4-FILE-MAP.              !00314D0C
*             Removed DHSF from the FILE-MAP and replaced it           !00314D0D
*               with the user field - USER-FLD11-FILE-MAP.             !00314D0E
*             Removed DHSF from the atm    segment.                    !00314D0F
*             Removed RTLF from the pos    segment.                    !00314D0G
*             Removed ASUF from the teller segment.                    !00314D0H
*             Removed PCS support.                                     !00314D0I
*             - Removed PLF  from the FILE-MAP and replaced it         !00314D0J
*                 with the user field - USER-FLD2-FILE-MAP.            !00314D0K
*             - Removed INCF from the FILE-MAP and replaced it         !00314D0L
*                 with the user field - USER-FLD3-FILE-MAP.            !00314D0M
*             - Removed ODF  from the FILE-MAP and replaced it         !00314D0N
*                 with the user field - USER-FLD5-FILE-MAP.            !00314D0O
*             - Removed OGF  from the FILE-MAP and replaced it         !00314D0P
*                 with the user field - USER-FLD6-FILE-MAP.            !00314D0Q
*             - Removed MEF  from the FILE-MAP and replaced it         !00314D0R
*                 with the user field - USER-FLD7-FILE-MAP.            !00314D0S
*             - Removed PSRF from the FILE-MAP and replaced it         !00314D0T
*                 with the user field - USER-FLD8-FILE-MAP.            !00314D0U
*             - Removed LSRF from the FILE-MAP and replaced it         !00314D0V
*                 with the user field - USER-FLD9-FILE-MAP.            !00314D0W
*             - Removed CLEANUP from the FILE-MAP and replaced it      !00314D0X
*                 with the user field - USER-FLD10-FILE-MAP.           !00314D0Y
*             - Removed the PCS segment.                               !00314D0Z
* Dependency: Restore Release 6.0 files, modify the appropriate        !00314D10
*             CUSTMACS flags, and run MAKE.                            !00314D11
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00314D12
*             WO #981118-3 (Transactions Allowed)                      !00314D13
                                                                       !00314E00
*                                                                      !00314E01
* 30MAR2001   TLE/310                                                  !00314E02
* Symptom:    Release 6.0 Enhancement.                                 !00314E03
* Problem:    None.                                                    !00314E04
* Fix:        - Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST    !00314E05
*               to the end of the BASE Segment.                        !00314E06
*             - Added Stored Value History fields to the BASE          !00314E07
*               Segment                                                !00314E08
* Dependency: Restore Release 6.0 files, modify the appropriate        !00314E09
*             CUSTMACS flags, and run MAKE.                            !00314E0A
* Reference:  WO #000101-1 (General Release 6.0)                       !00314E0B
                                                                       !00314E0C
                                                                       !00314F00
* 08JAN2002   BEM/348                                                  !00314F01
* Symptom:    Release 6.0 Format 2 File Support                        !00314F02
* Problem:    None.                                                    !00314F03
* Fix:        1. Added the File Format field by reducing               !00314F04
*                USER-FLD4 to PIC X(29) from PIC X(30) and creating    !00314F05
*                FILE-FRMT as a PIC X field.                           !00314F06
*             2. Increased the following fields from binary 16 to      !00314F07
*                binary 32:                                            !00314F08
*                   PRI-EXT                                            !00314F09
*                   SECONDARY-EXT                                      !00314F0A
*                   PART1-PRI-EXT                                      !00314F0B
*                   PART1-SECONDARY-EXT                                !00314F0C
*                   PART2-PRI-EXT                                      !00314F0D
*                   PART2-SECONDARY-EXT                                !00314F0E
*                   PART3-PRI-EXT                                      !00314F0F
*                   PART3-SECONDARY-EXT                                !00314F0G
*                   PART4-PRI-EXT                                      !00314F0H
*                   PART4-SECONDARY-EXT                                !00314F0I
* Dependency: Apply fix to DDLFECF and run MAKE.                       !00314F0J
* Reference:  WO #000202-01                                            !00314F0K
                                                                       !00314G00
* 20APR2002   jfu/543                                                  !00314G01
* Symptom:    Unable to create an extract disk file that was           !00314G02
*             buffered.                                                !00314G03
* Problem:    Same as symptom.                                         !00314G04
* Fix:        Added the FILE-BUFFERED field by reducing the USER-FLD4  !00314G05
*             field in the base segment by one byte.                   !00314G06
* Dependency: Apply fix to DDLFECF and reMake.                         !00314G07
* Reference:  Case #344465                                             !00314G08
                                                                       !00314G09
                                                                       !00314H00
* 27APR2002   jfu/543                                                  !00314H01
* Symptom:    Extract not running until the physical EOF.              !00314H02
* Problem:    Extract stops at the initial EOF.                        !00314H03
* Fix:        Extract was enhanced to support either extracting to     !00314H04
*             the initial EOF or the physical EOF.                     !00314H05
*             Added the READ-PAST-INITIAL-EOF field by reducing the    !00314H06
*             USER-FLD4 field in the base segment by one byte.         !00314H07
* Dependency: Apply the fix to DDLFECF and reMake.                     !00314H08
* Reference:  Case #347208                                             !00314H09
                                                                       !00314H0A
                                                                       !00314I00
                                                                       !00314I01
* 07FEB2003   RR/26                                                    !00314I02
* Symptom:    POS Enhancements.                                        !00314I03
* Problem:    None.                                                    !00314I04
* Fix:        Added two fields for clean up and which group to clean.  !00314I05
* Dependency: Apply fix to DDLFECF and run MAKE.  Refer to             !00314I06
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00314I07
* Reference:  WO #020606-01                                            !00314I08
                                                                       !00314I09
                                                                       !00314I0A
                                                                       !00314H0B
                                                                       !00314H0C
*********************************************************************  !00314D14
                                                                       !00314H0D
                                                                       !00314H0E
                                                                       !00314H0F
                                                                       !00314D19
?deflist
?PAGE "ECFBASE  - Extract Configuration File"
?SECTION ECFBASE
********************************************************************** !00314D1G
*                   Extract Configuration File                       * !00314D1H
********************************************************************** !00314D1I
*                                                                    * !00314D1J
*    Extract Configuration File                                      * !00314D1K
*                                                                    * !00314D1L
*      Identification                                                * !00314D1M
*                                                                    * !00314D1N
*       The Extract Configuration File (ECF) contains one record for * !00314D1O
*       every extract tape to create.  Each record is logically      * !00314D1P
*       divided into segments, a BASE segment and one for each       * !00314D1Q
*       product.  Within each product segment are the                * !00314D1R
*       product-specific paramaters.  The BASE segment contains that * !00314D1S
*       information which is non-product-specific, (e.g. extract date* !00314D1T
*       and time and tape device name).                              * !00314D1U
*                                                                    * !00314D1V
*      Security                                                      * !00314D1W
*                                                                    * !00314D1X
*       The ECF is secured under Tandem's group level security so    * !00314D1Y
*       that only authorized network operators may access (or start  * !00314D1Z
*       programs which will access) the file.                        * !00314D20
*                                                                    * !00314D21
*       USER ID         = <BASE24 node name>.*                       * !00314D22
*       FILE CODE       = 0                                          * !00314D23
*       ACCESS SECURITY = GGGG                                       * !00314D24
*                                                                    * !00314D25
*      Usage                                                         * !00314D26
*                                                                    * !00314D27
*       File maintenance  i/o        RANDOM (Primary)     shared     * !00314D28
*       Extract           i/o        RANDOM (Pri/Alt)     shared     * !00314D29
*                                                                    * !00314D2A
********************************************************************** !00314D2B
                                                                       !00314D2C
                                                                       !00315D00
                                                                       !00315D01
                                                                       !00315D02
                                                                       !00346
?comments
*                                                                     !!00349
*              The Extract Configuration File (ECF) contains one      !!00350
*              record for each file extract session.  Each record is  !!00351
*              used by Super Extract to initiate a file extract       !!00352
*              session that includes a single BASE24 file or multiple !!00353
*              BASE24 files.                                          !!00354
*                                                                     !!00355
*              The primary key to the ECF is a tag that is a unique   !!00356
*              name used to distinguish one set of extract            !!00357
*              specifications from another.  The alternate key to the !!00358
*              ECF is the symbolic name of the Super Extract process  !!00359
*              that performs the extract.                             !!00360
*                                                                     !!00361
*              Each record defines the general characteristics of a   !!00362
*              particular extract session, such as the type of device !!00363
*              being used, the time the extract is to start, the type !!00364
*              of tape labels being used, the character set being     !!00365
*              used, and the BASE24 files that are included in the    !!00366
*              extract session.                                       !!00367
*                                                                     !!00368
*              File extract sessions can be performed either          !!00369
*              automatically or manually.  Automatic file extracts are!!00370
*              performed when timers that are set by Super Extract    !!00371
*              expire.  Manual file extracts are performed using the  !!00372
*              BASE24 Extract Screens (EXTR) or the Network Control   !!00373
*              Supervisor (NCS).  Both automatic and manual extracts  !!00374
*              require the use of ECF records to perform their        !!00375
*              extracts.  Manual extracts can override the file       !!00376
*              settings in the ECF record.                            !!00377
*                                                                     !!00378
*              The following pages describe the fields included in an !!00379
*              ECF record.  The first subsection describes the Base   !!00380
*              segment of the ECF with subsequent subsections         !!00381
*              describing the segments of the ECF specific to the     !!00382
*              BASE24 products.  The information below summarizes     !!00383
*              other information specific to the ECF.                 !!00384
*                                                                     !!00385
*              LCONF ASSIGN:       ECF                                !!00386
*                                                                     !!00387
*              The following fields make up the Base segment of the   !!00388
*              Extract Configuration File (ECF).                      !!00389
*                                                                     !!00390
                                                                       !00391
DEFINITION ECFBASE.                                                    !00392
                                                                       !00393
                                                                       !00394
    02  BASE-SEG                TYPE *.                                !00395
                                                                       !00396
                                                                       !00397
    02  PRIKEY.                                                        !00398
*                                                                     !!00399
*             The primary key for this ECF record.  The TAG field     !!00400
*             contains a unique name that is placed in the command    !!00401
*             message sent to Super Extract from the EXTR screens or  !!00402
*             NCS commands.  The value in this field is placed in the !!00403
*             file header and trailer records on the extract tape.    !!00404
*                                                                     !!00405
*             The name of the tag is at the discretion of the         !!00406
*             institution performing the extracts.  However, it is    !!00407
*             suggested that this value in some way describe the      !!00408
*             extract session to be performed when using this record. !!00409
*             For example, TLFEXTR might be the tag for a specific    !!00410
*             ECF record describing an extract of the Transaction Log !!00411
*             File (TLF) only.                                        !!00412
*                                                                     !!00413
*             If a manual extract is to be performed from the EXTR    !!00414
*             screens or NCS commands, Super Extract checks the ECF   !!00415
*             for a tag that matches the tag entered on the screen.   !!00416
*             If a valid tag is found, Super Extract then checks the  !!00417
*             record for its symbolic name.  If Super Extract does    !!00418
*             not find the tag in any of the ECF records, or does not !!00419
*             find its symbolic name, an error message appears at the !!00420
*             bottom of the screen and the extract does not occur.    !!00421
*                                                                     !!00422
        04  TAG                 PIC X(10).                             !00423
                                                                       !00424
                                                                       !00425
    02  ALTKEY.                                                        !00426
*                                                                     !!00427
*             The alternate key for this ECF record.  It contains the !!00428
*             symbolic process name of the Super Extract that creates !!00429
*             the extract tape.                                       !!00430
*                                                                     !!00431
*             When initialized or reinitialized, Super Extract reads  !!00432
*             all the ECF records that contain its symbolic name and  !!00433
*             sets timers to extract files based on the information   !!00434
*             read from the ECF.                                      !!00435
*                                                                     !!00436
        04  SYM-NAME            TYPE *.                                !00437
                                                                       !00438
                                                                       !00439
*                                                                     !!00440
*             The release number indicating the format of the data    !!00441
*             on the extract tape for all Base files.                 !!00442
*                                                                     !!00443
*             Super Extract supports extracts of all Base files in    !!00444
*             previous release format except the OMF.  Super Extract  !!00445
                                                                       !00446D00
*             only supports the current format of the OMF.            !
                                                                       !00446D03
*                                                                     !!00447
*             Since the release number flags are at the product level !!00448
*             all files being extracted in a single extract session   !!00449
*             for a given product are in the same format.  However,   !!00450
*             files for different products can be extracted in        !!00451
*             different formats during a single extract session (for  !!00452
                                                                       !00452D00
*             example, Base files in the previous release format and   !00452D01
*             BASE24-atm files in the current release format).         !00452D02
                                                                       !00452D03
                                                                       !00453D00
                                                                       !00453D01
                                                                       !00453D02
*                                                                     !!00455
    02  REL-NUM                 PIC 9(2).                              !00456
                                                                       !00457
                                                                       !00458
*                                                                     !!00459
*             The date (YYMMDD) the next automatic extract controlled !!00460
*             by this record is to begin.                             !!00461
*                                                                     !!00462
*             The value in this field is automatically incremented by !!00463
*             Super Extract to the next calendar day once the extract !!00464
*             for this date has been performed if the RESTRT-FLG      !!00465
*             field is set to Y.  The value in this field always      !!00466
*             follows a seven-day-per-week schedule.  Super Extract   !!00467
*             resets the value in this field to the current date if   !!00468
*             the field contains zeros.                               !!00469
*                                                                     !!00470
    02  EXTRACT-DAT             TYPE DAT.                              !00471
                                                                       !00472
                                                                       !00473
*                                                                     !!00474
*             The time (HHMM based on a 24-hour clock) the automatic  !!00475
*             extract is to begin.  The default value for this field  !!00476
*             is 0000, indicating the extract is to begin at          !!00477
*             midnight.                                               !!00478
*                                                                     !!00479
    02  EXTRACT-TIM             PIC 9(4).                              !00480
                                                                       !00481
                                                                       !00482
*                                                                     !!00483
*             An indicator that specifies whether the extract timer   !!00484
*             should be restarted after the automatic extract for     !!00485
*             this record occurs.                                     !!00486
*                                                                     !!00487
*             If the extract timer is restarted after the extract,    !!00488
*             the extract is started daily; otherwise, the extract is !!00489
*             started only once.  The value in this field is used in  !!00490
*             conjunction with the value in the EXTRACT-TIM field.    !!00491
*             Values are:                                             !!00492
*                                                                     !!00493
*             Y = Yes, restart the extract timer.                     !!00494
*             N = No, do not restart the extract timer.               !!00495
*                                                                     !!00496
    02  RESTRT-FLG              PIC X.                                 !00497
                                                                       !00498
                                                                       !00499
                                                                       !00500
                                                                       !00501
                                                                       !00502
*                                                                     !!00503
*             The name of the tape device when extracting to tape, or !!00504
*             the fully-qualified name of the file when extracting to !!00505
*             disk.  The name is left-justified and blank-filled.     !!00506
*                                                                     !!00507
*             Tape device names are an maximum of eight characters    !!00508
*             long and the first character must be a dollar sign ($), !!00509
*             for example, $TAPE.                                     !!00510
*                                                                     !!00511
*             When extracting a file to disk, Super Extract uses the  !!00512
*             system name, volume name, subvolume name, and first     !!00513
*             character of the file name indicated in this field.     !!00514
*             Super Extract appends the date (MMDD) of the extract,   !!00515
*             followed by a unique three-digit sequence number.       !!00516
*                                                                     !!00517
*             To determine the sequence number to be used, Super      !!00518
*             Extract starts with 000 and increments the sequence     !!00519
*             number by one until it creates a unique file name.      !!00520
*                                                                     !!00521
*             For example, if this field contains                     !!00522
*             $DATA.PRO1DATA.EMMDDnnn then Super Extract will place   !!00523
*             the current month and day in the MMDD portion and place !!00524
*             a unique three-digit number in the nnn portion.         !!00525
*                                                                     !!00526
    02  TAPE-NAME               TYPE FNAME.                            !00527
                                                                       !00528
                                                                       !00529
*                                                                     !!00530
*             The type of tape labels to use on the extract tape      !!00531
*             associated with this record.  Values are:               !!00532
*                                                                     !!00533
*             IBM = IBM                                               !!00534
*             ANS = ANSI (only allowed when using TAPECOM)            !!00535
*             BUR = Burroughs                                         !!00536
*             NON = Non-labelled                                      !!00537
*                                                                     !!00538
    02  TAPE-LABEL              PIC X(3).                              !00539
                                                                       !00540
                                                                       !00541
*                                                                     !!00542
*             The character set used for extract tape data records.   !!00543
*             The character set in the tape labels is always EBCDIC.  !!00544
*             Values are:                                             !!00545
*                                                                     !!00546
*             A = ASCII                                               !!00547
*             E = EBCDIC                                              !!00548
*                                                                     !!00549
*             If the value in this field is E, Super Extract will     !!00550
*             convert any ASCII fields in the header, trailer, and    !!00551
*             data records to EBCDIC.  Binary fields will be left as  !!00552
*             is, subject to the setting in the NUMERIC-FLD-FRMT      !!00553
*             field.                                                  !!00554
*                                                                     !!00555
    02  CHAR-SET                PIC X.                                 !00556
                                                                       !00557
                                                                       !00558
                                                                       !00559
                                                                       !00560
*                                                                     !!00561
*             The blocking factor to use when writing records to tape !!00562
*             or disk.  The value in this field identifies the        !!00563
*             maximum size of each block written to tape or disk.     !!00564
*             Super Extract establishes a buffer using the size       !!00565
*             specified in this field.  During processing, Super      !!00566
*             Extract fills this buffer with records until no more    !!00567
*             can fit and then writes the records to tape or disk as  !!00568
*             a block.  The actual block size is the sum of the       !!00569
*             lengths of all the records that will fit in the buffer. !!00570
*                                                                     !!00571
    02  TAPE-BLK-SIZE           TYPE BINARY 32.                        !00572
                                                                       !00573
                                                                       !00574
*                                                                     !!00575
*             The name of the spooler location to use to produce the  !!00576
*             extract report.                                         !!00577
*                                                                     !!00578
    02  BASE-RPT-NAM            TYPE FNAME.                            !00579
                                                                       !00580
                                                                       !00581
*                                                                     !!00582
*             The values in the following fields indicate the files   !!00583
*             to be included in the extract.                          !!00584
*                                                                     !!00585
    02  FILE-MAP.                                                      !00586
                                                                       !00587
                                                                       !00588
*                                                                     !!00589
*             An indicator that specifies whether to include the      !!00590
*             Interchange Log File (ILF) in the extract.  Values are: !!00591
*                                                                     !!00592
*             Y = Yes, include the ILF in the extract.                !!00593
*             N = No, do not include the ILF in the extract           !!00594
*                 (default).                                          !!00595
*                                                                     !!00596
        04  ILF                 PIC X.                                 !00597
                                                                       !00598
*                                                                     !!00599
*             An indicator that specifies whether to include the      !!00600
*             Online Maintenance File (OMF) in the extract.  Values   !!00601
*             are:                                                    !!00602
*                                                                     !!00603
*             Y = Yes, include the OMF in the extract.                !!00604
*             N = No, do not include the OMF in the extract           !!00605
*                 (default).                                          !!00606
*                                                                     !!00607
        04  OM                  PIC X.                                 !00608
                                                                       !00609
                                                                       !00610
*                                                                     !!00611
*             An indicator that specifies whether to include the Host !!00612
*             Store-and-Forward File (SAF) in the extract.  Values    !!00613
*             are:                                                    !!00614
*                                                                     !!00615
*             Y = Yes, include the SAF in the extract.                !!00616
*             N = No, do not include the SAF in the extract           !!00617
*                 (default).                                          !!00618
*                                                                     !!00619
        04  SAF                 PIC X.                                 !00620
                                                                       !00621
                                                                       !00622
*                                                                     !!00623
*             An indicator that specifies whether to include the      !!00624
*             Interchange Configuration File (ICF) in the extract.    !!00625
*             Values are:                                             !!00626
*                                                                     !!00627
*             Y = Yes, include the ICF in the extract.                !!00628
*             N = No, do not include the ICF in the extract           !!00629
*                 (default).                                          !!00630
*                                                                     !!00631
        04  ICF                 PIC X.                                 !00632
                                                                       !00633
                                                                       !00634
*                                                                     !!00635
*             An indicator that specifies whether to include the      !!00636
*             Institution Definition File (IDF) in the extract.       !!00637
*             Values are:                                             !!00638
*                                                                     !!00639
*             Y = Yes, include the IDF in the extract.                !!00640
*             N = No, do not include the IDF in the extract           !!00641
*                 (default).                                          !!00642
*                                                                     !!00643
        04  IDF                 PIC X.                                 !00644
                                                                       !00645
                                                                       !00646
*                                                                     !!00647
*             An indicator that specifies whether to include the      !!00648
*             BASE24-atm Transaction Log File (TLF) in the extract.   !!00649
*             Values are:                                             !!00650
*                                                                     !!00651
*             Y = Yes, include the TLF in the extract.                !!00652
*             N = No, do not include the TLF in the extract           !!00653
*                 (default).                                          !!00654
*                                                                     !!00655
        04  TLF                 PIC X.                                 !00656
                                                                       !00657
                                                                       !00657A00
*             An indicator that specifies whether to include the       !00657A01
*             ITS Transaction Log File (ITLF) in the extract.          !00657A02
*             Values are:                                              !00657A03
*                                                                      !00657A04
*             Y = Yes, include the ITLF in the extract.                !00657A05
*             N = No, do not include the ITLF in the extract           !00657A06
*                 (default).                                           !00657A07
*                                                                      !00657A08
                                                                       !00657A09
        04  ITLF                PIC X.                                 !00657A0A
                                                                       !00657A0B
                                                                       !00658A00
                                                                       !00658A01
                                                                       !00658A02
                                                                       !00658D00
*             An indicator that specifies whether to include the       !00658D01
*             Enhanced Interchange Configuration File (ICFE) in the    !00658D02
*             extract.  Valid values are:                              !00658D03
*                                                                      !00658D04
*             Y = Yes, include the ICFE in the extract.                !00658D05
*             N = No, do not include the ICFE in the extract           !00658D06
*                 (default).                                           !00658D07
                                                                       !00658D08
        04  ICFE                PIC X.                                 !00658D09
                                                                       !00658D0A
                                                                       !00662D00
                                                                       !00662D01
                                                                       !00662D02
                                                                       !00665
*             This field is not used.                                 !!00666
                                                                       !00667
        04  USER-FLD1C          PIC X.                                 !00668
                                                                       !00669
*             This field is not used.                                 !!00670
                                                                       !00671
        04  USER-FLD1D          PIC X.                                 !00672
                                                                       !00673
                                                                       !00674
*                                                                     !!00675
*             An indicator that specifies whether to include the      !!00676
*             BASE24-pos Transaction Log File (PTLF) in the extract.  !!00677
*             Values are:                                             !!00678
*                                                                     !!00679
*             Y = Yes, include the PTLF in the extract.               !!00680
*             N = No, do not include the PTLF in the extract          !!00681
*                 (default).                                          !!00682
*                                                                     !!00683
        04  PTLF                PIC X.                                 !00684
                                                                       !00685
                                                                       !00686
*                                                                     !!00687
*             An indicator that specifies whether to include the      !!00688
*             BASE24-pos Retailer Definition File (PRDF) in the       !!00689
*             extract.  Values are:                                   !!00690
*                                                                     !!00691
*             Y = Yes, include the PRDF in the extract.               !!00692
*             N = No, do not include the PRDF in the extract          !!00693
*                 (default).                                          !!00694
*                                                                     !!00695
        04  PRDF                PIC X.                                 !00696
                                                                       !00697
                                                                       !00698
*                                                                     !!00699
*             An indicator that specifies whether to include the      !!00700
*             BASE24-teller Transaction Log File (TTLF) in the        !!00701
*             extract.  Values are:                                   !!00702
*                                                                     !!00703
*             Y = Yes, include the TTLF in the extract.               !!00704
*             N = No, do not include the TTLF in the extract          !!00705
*                 (default).                                          !!00706
*                                                                     !!00707
        04  TTLF                PIC X.                                 !00708
                                                                       !00709
                                                                       !00710
*                                                                     !!00711
*             An indicator that specifies whether to include the      !!00712
*             BASE24-teller Transaction File (TTF) in the extract.    !!00713
*             Values are:                                             !!00714
*                                                                     !!00715
*             Y = Yes, include the TTF in the extract.                !!00716
*             N = No, do not include the TTF in the extract           !!00717
*                 (default).                                          !!00718
*                                                                     !!00719
        04  TTF                 PIC X.                                 !00720
                                                                       !00721
                                                                       !00721D00
*             This field is not used.                                  !00721D01
                                                                       !00721D02
        04  USER-FLD1-FILE-MAP  PIC X.                                 !00721D03
                                                                       !00721D04
*             This field is not used.                                  !00721D05
                                                                       !00721D06
        04  USER-FLD2-FILE-MAP  PIC X.                                 !00721D07
                                                                       !00721D08
*             This field is not used.                                  !00721D09
                                                                       !00721D0A
        04  USER-FLD3-FILE-MAP  PIC X.                                 !00721D0B
                                                                       !00721D0C
                                                                       !00722D00
                                                                       !00722D01
                                                                       !00722D02
                                                                       !00757A00
                                                                       !00757E00
*             An indicator that specifies whether to include the       !00757E01
*             BASE24-pos Stored Value History Files (SVHF) in the      !00757E02
*             extract.  Values are:                                    !00757E03
*                                                                      !00757E04
*             Y = Yes, include the SVHF in the extract.                !00757E05
*             N = No, do not include the SVHF in the extract           !00757E06
*                 (default).                                           !00757E07
                                                                       !00757E08
        04  SVHF                PIC X.                                 !00757E09
                                                                       !00757E0A
                                                                       !00757E0B
                                                                       !00757E0C
                                                                       !00757E0D
                                                                       !00757A04
*             This field is not used.                                  !00757A05
                                                                       !00757A06
        04  USER-FLD1F          PIC X.                                 !00757A07
                                                                       !00757A08
*             This field is not used.                                  !00757A09
                                                                       !00757A0A
        04  USER-FLD1G          PIC X.                                 !00757A0B
                                                                       !00757A0C
                                                                       !00757D03
*             This field is not used.                                  !00757D04
                                                                       !00757D05
        04  USER-FLD4-FILE-MAP  PIC X.                                 !00757D06
                                                                       !00757D07
*             This field is not used.                                  !00757D08
                                                                       !00757D09
        04  USER-FLD5-FILE-MAP  PIC X.                                 !00757D0A
                                                                       !00757D0B
*             This field is not used.                                  !00757D0C
                                                                       !00757D0D
        04  USER-FLD6-FILE-MAP  PIC X.                                 !00757D0E
                                                                       !00757D0F
*             This field is not used.                                  !00757D0G
                                                                       !00757D0H
        04  USER-FLD7-FILE-MAP  PIC X.                                 !00757D0I
                                                                       !00757D0J
*             This field is not used.                                  !00757D0K
                                                                       !00757D0L
        04  USER-FLD8-FILE-MAP  PIC X.                                 !00757D0M
                                                                       !00757D0N
*             This field is not used.                                  !00757D0O
                                                                       !00757D0P
        04  USER-FLD9-FILE-MAP  PIC X.                                 !00757D0Q
                                                                       !00757D0R
*             This field is not used.                                  !00757D0S
                                                                       !00757D0T
        04  USER-FLD10-FILE-MAP PIC X.                                 !00757D0U
                                                                       !00757D0V
                                                                       !00758D00
                                                                       !00758D01
                                                                       !00758D02
                                                                       !00871
*                                                                     !!00872
*             An indicator that specifies whether to include the      !!00873
*             BASE24-mail Mail Box File (MBF) in the extract.  Values !!00874
*             are:                                                    !!00875
*                                                                     !!00876
*             Y = Yes, include the MBF in the extract.                !!00877
*             N = No, do not include the MBF in the extract           !!00878
*                 (default).                                          !!00879
*                                                                     !!00880
        04  MBF                 PIC X.                                 !00881
                                                                       !00882
                                                                       !00883
*                                                                     !!00884
*             An indicator that specifies whether to include the      !!00885
*             BASE24-mail Host Mail Box File (HMBF) in the extract.   !!00886
*             Values are:                                             !!00887
*                                                                     !!00888
*             Y = Yes, include the HMBF in the extract.               !!00889
*             N = No, do not include the HMBF in the extract          !!00890
*                 (default).                                          !!00891
*                                                                     !!00892
        04  HMBF                PIC X.                                 !00893
                                                                       !00894
                                                                       !00895
*                                                                     !!00896
*             An indicator that specifies whether to include the      !!00897
*             BASE24-from host maintenance Update Log File (ULF) in   !!00898
*             the extract.  Values are:                               !!00899
*                                                                     !!00900
*             Y = Yes, include the ULF in the extract.                !!00901
*             N = No, do not include the ULF in the extract           !!00902
*                 (default).                                          !!00903
*                                                                     !!00904
        04  ULF                 PIC X.                                 !00905
                                                                       !00905A00
*             This field is not used.                                  !00905A01
                                                                       !00905A02
        04  USER-FLD1H          PIC X.                                 !00905A03
                                                                       !00905A04
*             This field is not used.                                  !00905A05
                                                                       !00905A06
        04  USER-FLD1I          PIC X.                                 !00905A07
                                                                       !00905A08
*             This field is not used.                                  !00905A09
                                                                       !00905A0A
        04  USER-FLD1J          PIC X.                                 !00905A0B
                                                                       !00905A0C
*             This field is not used.                                  !00905A0D
                                                                       !00905A0E
        04  USER-FLD1K          PIC X.                                 !00905A0F
                                                                       !00905A0G
                                                                       !00906A00
                                                                       !00906A01
                                                                       !00906A02
*                                                                     !!00947
*             An indicator that specifies whether to include the      !!00948
*             BASE24-atm Hardware Status File (HSF) in the extract.   !!00949
*             Values are:                                             !!00950
*                                                                     !!00951
*             Y = Yes, include the HSF in the extract.                !!00952
*             N = No, do not include the HSF in the extract           !!00953
*                 (default).                                          !!00954
*                                                                     !!00955
        04  HSF                 PIC X.                                 !00956
                                                                       !00956A00
*             This field is not used.                                  !00956A01
                                                                       !00956A02
        04  USER-FLD1L          PIC X.                                 !00956A03
                                                                       !00956A04
*             This field is not used.                                  !00956A05
                                                                       !00956A06
        04  USER-FLD1M          PIC X.                                 !00956A07
                                                                       !00956A08
*             This field is not used.                                  !00956A09
                                                                       !00956A0A
        04  USER-FLD1N          PIC X.                                 !00956A0B
                                                                       !00956A0C
*             This field is not used.                                  !00956A0D
                                                                       !00956A0E
        04  USER-FLD1O          PIC X.                                 !00956A0F
                                                                       !00956A0G
                                                                       !00956D00
*             This field is not used.                                  !00956D01
                                                                       !00956D02
        04  USER-FLD11-FILE-MAP PIC X.                                 !00956D03
                                                                       !00956D04
                                                                       !00957D00
                                                                       !00957D01
                                                                       !00957E00
*             Stored Value History File Extract Date/Time Ranges       !00957E01
*                                                                      !00957E02
        04  SVHF-STRT-DAT       TYPE DAT.                              !00957E03
        04  SVHF-STRT-TIM       PIC 9(4).                              !00957E04
        04  SVHF-END-DAT        TYPE DAT.                              !00957E05
        04  SVHF-END-TIM        PIC 9(4).                              !00957E06
                                                                       !00957E07
                                                                       !00957E08
                                                                       !00957D02
*                                                                     !!01023
*             This field is not used.                                 !!01024
*                                                                     !!01025
                                                                       !01025E00
        04  USER-FLD2           PIC X(72).                             !01025E01
                                                                       !01025E02
                                                                       !01026E00
                                                                       !01026E01
                                                                       !01027
                                                                       !01028
                                                                       !01029
                                                                       !01030
                                                                       !01031
                                                                       !01032
*                                                                     !!01033
*             The date Super Extract last created an extract tape     !!01034
*             using this record.  The extract tape may have been      !!01035
*             created manually (via EXTR screens or NCS commands) or  !!01036
*             automatically.  The value in this field is used in      !!01037
*             conjunction with values in the FILE-DAY-OFST fields     !!01038
*             when determining the appropriate file to reextract.     !!01039
*                                                                     !!01040
    02  LAST-RUN-DAT            TYPE DAT.                              !01041
                                                                       !01042
                                                                       !01043
                                                                       !01044
                                                                       !01045
                                                                       !01046
*                                                                     !!01047
*             The format in which the numeric fields are used for the !!01048
*             extract tape data records.  Values are:                 !!01049
*                                                                     !!01050
*             A = ASCII--Super Extract will convert any binary        !!01051
*                 fields on the extract tape to ASCII character       !!01052
*                 display format.                                     !!01053
*             B = Binary--leaves all data records unchanged.          !!01054
*                                                                     !!01055
*             The value of A is designed for use with certain         !!01056
*             Burroughs host mainframes that cannot read binary data  !!01057
*             on the tapes.  A value of A converts all binary fields  !!01058
*             on the tape to ASCII display format.  This includes     !!01059
*             block headers, data records, record prefix characters,  !!01060
*             block prefix characters, and headers and trailers, but  !!01061
*             excludes IBM volume labels.  Currently, this option is  !!01062
*             only available for Transaction Log File (TLF), Teller   !!01063
*             Transaction Log File (TTLF), and POS Transaction Log    !!01064
*             File (PTLF) extracts.                                   !!01065
*                                                                     !!01066
    02  NUMERIC-FLD-FRMT        PIC X.                                 !01067
                                                                       !01068
                                                                       !01069
                                                                       !01070
*                                                                     !!01071
*             The following fields contain the information needed to  !!01072
*             perform an ILF extract.                                 !!01073
*                                                                     !!01074
    02  ILFX.                                                          !01075
                                                                       !01076
                                                                       !01077
*                                                                     !!01078
*             The time difference, in number of days, to add to or    !!01079
*             subtract from the current system date to obtain the     !!01080
*             date of the first ILF to extract.  For reextracts, this !!01081
*             field contains the time difference, in number of days,  !!01082
*             to add to or subtract from the value in the LAST-RUN-   !!01083
*             DAT field when determining the date of the ILF to       !!01084
*             reextract.                                              !!01085
*                                                                     !!01086
*             The value of this field is added to or subtracted from  !!01087
*             the current system date to obtain the date of the first !!01088
*             ILF to extract.  A sign (- or +) indicates whether the  !!01089
*             value is added or subtracted.                           !!01090
*                                                                     !!01091
*             For example, if the value of this field is -2 and the   !!01092
*             current system date is August 25, the date of the first !!01093
*             ILF to extract is  August 23 (two days prior to the     !!01094
*             current system date).                                   !!01095
*                                                                     !!01096
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !01097
                                                                       !01098
                                                                       !01099
*                                                                     !!01100
*             The FIID of the ICF record for which the extract is to  !!01101
*             be performed.  The ICF record is read to retrieve the   !!01102
*             values of the SWI-PRO and ILF-EXTRACT-NUM fields in the !!01103
*             Base segment of the ICF.  The value in the ILF-EXTRACT- !!01104
*             NUM field is used for host reporting only.              !!01105
*                                                                     !!01106
*             The value in the SWI-PRO field is used to find the ILF  !!01107
*             assign in the LCONF that is associated with this        !!01108
*             Interchange Interface process.  The value in the ILF-   !!01109
*             EXTRACT-NUM field is used to determine the number of    !!01110
*             ILFs to be extracted.                                   !!01111
*                                                                     !!01112
        04  FIID                TYPE *.                                !01113
                                                                       !01114
                                                                       !01115
*                                                                     !!01116
*             The name of the spooler location used to print the ILF  !!01117
*             extract report.  This field is currently not used.      !!01118
*                                                                     !!01119
        04  RPT-NAME            TYPE FNAME.                            !01120
                                                                       !01121
                                                                       !01122
*                                                                     !!01123
*             An indicator that specifies whether the ILF is being    !!01124
*             extracted for host reporting.  The ILF can be extracted !!01125
*             in two ways.  It can be extracted for a specific date   !!01126
*             or it can be extracted for host reporting.  When a host !!01127
*             reporting extract occurs, multiple days' ILF records    !!01128
*             (default of three) are extracted.  The number of days   !!01129
*             for which ILF records are extracted is set in the       !!01130
*             ILF-EXTRACT-NUM field in the Interchange Configuration  !!01131
*             File (ICF).  If the value in the ILF-EXTRACT-NUM field  !!01132
*             is not set, Super Extract uses a default of 3.          !!01133
*                                                                     !!01134
*             The system determines the current date by adding or     !!01135
*             subtracting the FILE-DAY-OFST value from the date in    !!01136
*             the EXTRACT-DAT field.  Then, beginning with the        !!01137
*             previous date, the system extracts the number of days'  !!01138
*             ILFs set in the ILF-EXTRACT-NUM field in the ICF.  For  !!01139
*             example, if the ILF-EXTRACT-NUM field in the ICF is 4,  !!01140
*             the EXTRACT-DAT is 990909 (YYMMDD), and the FILE-DAY-   !!01141
*             OFST is -3, the system extracts the ILFs for the        !!01142
*             previous date 990905, the current date 990906 (EXTRACT- !!01143
*             DAT minus 3), and the next two days' dates 990907 and   !!01144
*             990908 for a total of four days' extracts (the number   !!01145
*             in the ILF-EXTRACT-NUM field).                          !!01146
*                                                                     !!01147
*             NOTE:  If the previous day's ILF is not on the system,  !!01148
*             Super Extract searches for up to five dates prior to    !!01149
*             the previous date to locate an ILF.  It searches        !!01150
*             forward in the same manner if one of the next day's ILF !!01151
*             is not on the system.  Valid values are:                !!01152
*                                                                     !!01153
*             Y = Yes, extract multiple days' ILF records.            !!01154
*             N = No, do not extract multiple days' ILF records,      !!01155
*                 extract ILF records only for the date specified     !!01156
*                 (default).                                          !!01157
*                                                                     !!01158
        04  RPT-EXTRACT         PIC X.                                 !01159
                                                                       !01160
*                                                                     !!01161
*             A code sepcifying the format of records in the ILF      !!01162
                                                                       !01162D00
*             extract.  Valid values are:                              !01162D01
                                                                       !01162D02
                                                                       !01163D00
                                                                       !01163D01
                                                                       !01163D02
*                                                                     !!01165
*             00 = Fixed length format (default)                      !!01166
*             01 = Variable length format                             !!01167
*                                                                     !!01168
*             Fixed format means that each record extracted of a given!!01169
*             type and subtype contains the same tokens.  If a token  !!01170
*             configured to be extracted from the ILF is not present  !!01171
*             in the ILF record, the Super Extract process creates an !!01172
*             empty token in the extract.  The Super Extract also pads!!01173
*             variable-length tokens included in the extract to their !!01174
*             maximum length.                                         !!01175
*                                                                     !!01176
        04  EXTR-FRMT           PIC 99.                                !01177
                                                                       !01178
*                                                                     !!01179
*             The following fields contain the information needed to  !!01180
*             perform an OMF extract.                                 !!01181
*                                                                     !!01182
    02  OMFX.                                                          !01183
                                                                       !01184
                                                                       !01185
*                                                                     !!01186
*             The time difference, in number of days, to add to or    !!01187
*             subtract from the current system date to obtain the     !!01188
*             date of the first OMF to extract.  For reextracts, this !!01189
*             field contains the time difference, in number of days,  !!01190
*             to add to or subtract from the value in the LAST-RUN-   !!01191
*             DAT field when determining the date of the first OMF to !!01192
*             reextract.                                              !!01193
*                                                                     !!01194
*             The value entered in this field is added to or          !!01195
*             subtracted from the current system date to obtain the   !!01196
*             date of the first OMF to extract.  A sign (- or +)      !!01197
*             indicates whether the value is added or subtracted.     !!01198
*                                                                     !!01199
*             For example, if the value of this field is -2 and the   !!01200
*             current system date is August 25, the date of the first !!01201
*             OMF to extract is August 23 (two days prior to the      !!01202
*             current system date).                                   !!01203
*                                                                     !!01204
        04  FILE-DAY-OFST-BEG   TYPE BINARY 16.                        !01205
                                                                       !01206
                                                                       !01207
*                                                                     !!01208
*             The time difference, in number of days, to add to or    !!01209
*             subtract from the current system date to obtain the     !!01210
*             date of the last OMF to extract.  For reextracts, this  !!01211
*             field contains the time difference, in number of days,  !!01212
*             to add to or subtract from the value in the LAST-RUN-   !!01213
*             DAT field when determining the date of the last OMF to  !!01214
*             reextract.                                              !!01215
*                                                                     !!01216
*             The value entered in this field is added to or          !!01217
*             subtracted from the current system date to obtain the   !!01218
*             date of the last OMF to extract.  A sign (- or +)       !!01219
*             indicates whether the value is added or subtracted.     !!01220
*                                                                     !!01221
*             For example, if the value of this field is -2 and the   !!01222
*             current system date is August 25, the date of the last  !!01223
*             OMF to extract is August 23 (two days prior to the      !!01224
*             current system date).                                   !!01225
*                                                                     !!01226
        04  FILE-DAY-OFST-END   TYPE BINARY 16.                        !01227
                                                                       !01228
                                                                       !01229
*                                                                     !!01230
*             The name of the spooler location used to print the OMF  !!01231
*             extract report.  This field is currently not used.      !!01232
*                                                                     !!01233
        04  RPT-NAME            TYPE FNAME.                            !01234
                                                                       !01235
*                                                                     !!01236
*             This field is not used.                                 !!01237
*                                                                     !!01238
        04  USER-FLD5           PIC X.                                 !01239
                                                                       !01240
                                                                       !01241
*                                                                     !!01242
*             The following fields contain the information needed to  !!01243
*             perform an SAF extract.                                 !!01244
*                                                                     !!01245
    02  SAFX.                                                          !01246
                                                                       !01247
                                                                       !01248
*                                                                     !!01249
*             A number identifying the Data Processing Center (DPC)   !!01250
*             whose transactions are to be extracted from the SAF.    !!01251
*                                                                     !!01252
        04  DPC-NUM             TYPE BINARY 16.                        !01253
                                                                       !01254
                                                                       !01255
*                                                                     !!01256
*             A flag indicating whether to extract only those         !!01257
*             transactions occurring before network cutover.          !!01258
*                                                                     !!01259
*             If the value is Y, only those transactions occurring    !!01260
*             before network cutover are included in the SAF extract. !!01261
*                                                                     !!01262
*             If the value is N, all transactions from the file are   !!01263
*             included in the SAF extract, regardless of when the     !!01264
*             network has cut over to a new processing day.  Valid    !!01265
*             values are:                                             !!01266
*                                                                     !!01267
*             Y = Yes, extract only transaction occurring before      !!01268
*                 network cutover.                                    !!01269
*             N = No, extract all transactions regardless of network  !!01270
*                 cutover.                                            !!01271
*                                                                     !!01272
        04  CUTOVER-FLG         PIC X.                                 !01273
                                                                       !01274
                                                                       !01275
*                                                                     !!01276
*             The symbolic process name of the Host Interface process !!01277
*             that must be notified of the SAF extract.               !!01278
*                                                                     !!01279
        04  HI-NAME             TYPE SYM-NAME.                         !01280
                                                                       !01281
                                                                       !01282
*                                                                     !!01283
*             The product name of the product-specific transactions   !!01284
*             to be extracted. In addition to the standard product    !!01285
*             names, a default value exists to indicate all products. !!01286
*             The default value is ALL_ (_ denotes a blank space).    !!01287
*                                                                     !!01288
*             ALL_ = Extract all BASE24 products.                     !!01289
*             ATM  = Extract BASE24-atm.                              !!01290
*             POS  = Extract BASE24-pos                               !!01291
*             TLR  = Extract BASE24-teller.                           !!01292
*             FHM  = Extract BASE24-from host maintenance.            !!01293
*             MAIL = Extract BASE24-electronic mail system.           !!01294
*                                                                     !!01295
        04  PROD-NAME           TYPE *.                                !01296
                                                                       !01297
*                                                                     !!01298
*             This field is not used.                                 !!01299
*                                                                     !!01300
        04  USER-FLD3           PIC X.                                 !01301
                                                                       !01302
                                                                       !01303
                                                                       !01304
*                                                                     !!01305
*             The following fields are used when extracting to disk   !!01306
*             to create the disk file.                                !!01307
*                                                                     !!01308
    02  FILE-CONF.                                                     !01309
                                                                       !01310
                                                                       !01311
*                                                                     !!01312
*             The size, in pages, of the primary extent of the disk   !!01313
*             file.  One page is equal to 2048 bytes. The default is  !!01314
*             one page.                                               !!01315
*                                                                     !!01316
                                                                       !01317F00
        04  PRI-EXT             TYPE BINARY 32.                        !01317F01
                                                                       !01317F02
                                                                       !01318
                                                                       !01319
*                                                                     !!01320
*             An Enscribe file code identifying the disk file.        !!01321
*                                                                     !!01322
        04  FILE-CDE            TYPE BINARY 16.                        !01323
                                                                       !01324
                                                                       !01325
*                                                                     !!01326
*             The size, in pages, of the secondary extent of the disk !!01327
*             file.  One page is equal to 2048 bytes. The default is  !!01328
*             one page.                                               !!01329
*                                                                     !!01330
                                                                       !01331F00
        04  SECONDARY-EXT       TYPE BINARY 32.                        !01331F01
                                                                       !01331F02
                                                                       !01332
                                                                       !01333
*                                                                     !!01334
*             The maximum number of extents that can be allocated for !!01335
*             the disk file.  This field is only applicable for an    !!01336
*             unpartitioned file.  The default is 0016.               !!01337
*                                                                     !!01338
        04  MAX-EXT             TYPE BINARY 16.                        !01339
                                                                       !01340
                                                                       !01341
*                                                                     !!01342
*             The name of the partition 1 file.  The name can be in   !!01343
*             $<volume name> format.  If PART1-NAME is left blank,    !!01344
*             the file is not partitioned.                            !!01345
*                                                                     !!01346
        04  PART1-NAME          PIC X(8).                              !01347
*                                                                     !!01348
*             The size, in pages, of the primary extent of partition  !!01349
*             1 of the disk file.  One page is equal to 2048 bytes.   !!01350
*                                                                     !!01351
                                                                       !01352F00
        04  PART1-PRI-EXT       TYPE BINARY 32.                        !01352F01
                                                                       !01352F02
*                                                                     !!01353
*             The size, in pages, of the secondary extents of         !!01354
*             partition 1 of the disk file.  One page is equal to     !!01355
*             2048 bytes.                                             !!01356
*                                                                     !!01357
                                                                       !01358F00
        04  PART1-SECONDARY-EXT TYPE BINARY 32.                        !01358F01
                                                                       !01358F02
*                                                                     !!01359
*             The name of the partition 2 file.  The name can be in   !!01360
*             $<volume name> format.                                  !!01361
*                                                                     !!01362
        04  PART2-NAME          PIC X(8).                              !01363
*                                                                     !!01364
*             The size, in pages, of the primary extent of partition  !!01365
*             2 of the disk file.  One page is equal to 2048 bytes.   !!01366
*                                                                     !!01367
                                                                       !01368F00
        04  PART2-PRI-EXT       TYPE BINARY 32.                        !01368F01
                                                                       !01368F02
*                                                                     !!01369
*             The size, in pages, of the secondary extents of         !!01370
*             partition 2 of the disk file.  One page is equal to     !!01371
*             2048 bytes.                                             !!01372
*                                                                     !!01373
                                                                       !01374F00
        04  PART2-SECONDARY-EXT TYPE BINARY 32.                        !01374F01
                                                                       !01374F02
*                                                                     !!01375
*             The name of the partition 3 file.  The name can be in   !!01376
*             $<volume name> format.                                  !!01377
*                                                                     !!01378
        04  PART3-NAME          PIC X(8).                              !01379
*                                                                     !!01380
*             The size, in pages, of the primary extent of partition  !!01381
*             3 of the disk file.  One page is equal to 2048 bytes.   !!01382
*                                                                     !!01383
                                                                       !01384F00
        04  PART3-PRI-EXT       TYPE BINARY 32.                        !01384F01
                                                                       !01384F02
*                                                                     !!01385
*             The size, in pages, of the secondary extents of         !!01386
*             partition 3 of the disk file.  One page is equal to     !!01387
*             2048 bytes.                                             !!01388
*                                                                     !!01389
                                                                       !01390F00
        04  PART3-SECONDARY-EXT TYPE BINARY 32.                        !01390F01
                                                                       !01390F02
*                                                                     !!01391
*             The name of the partition 4 file.  The name can be in   !!01392
*             $<volume name> format.                                  !!01393
*                                                                     !!01394
        04  PART4-NAME          PIC X(8).                              !01395
*                                                                     !!01396
*             The size, in pages, of the primary extent of partition  !!01397
*             4 of the disk file.  One page is equal to 2048 bytes.   !!01398
*                                                                     !!01399
                                                                       !01400F00
        04  PART4-PRI-EXT       TYPE BINARY 32.                        !01400F01
                                                                       !01400F02
*                                                                     !!01401
*             The size, in pages, of the secondary extents of         !!01402
*             partition 4 of the disk file.  One page is equal to     !!01403
*             2048 bytes.                                             !!01404
*                                                                     !!01405
                                                                       !01406F00
        04  PART4-SECONDARY-EXT TYPE BINARY 32.                        !01406F01
                                                                       !01406F02
                                                                       !01407
                                                                       !01408
*                                                                     !!01409
*             The tape volume identifier of the initial tape that the !!01410
*             Super Extract module will process.  The value in this   !!01411
*             field is only used when the Tandem TAPECOM utility      !!01412
*             performs tape label processing.                         !!01413
*                                                                     !!01414
    02  VOL-ID                  PIC X(6).                              !01415
                                                                       !01416
*                                                                     !!01417
*             The retention period, in days for the tape.  The value  !!01418
*             in this field is only used when the Tandem TAPECOM      !!01419
*             utility performs tape label processing.                 !!01420
*                                                                     !!01421
    02  RETENTION               PIC 9(2).                              !01422
                                                                       !01423
*                                                                     !!01424
*             The name of the file that the Super Extract module will !!01425
*             process.  The value in this field is only used when the !!01426
*             Tandem TAPECOM utility performs tape label processing.  !!01427
*                                                                     !!01428
    02  DATA-SET-ID             PIC X(17).                             !01429
                                                                       !01430
*                                                                     !!01431
*             An indicator that specifies an additional message       !!01432
*             that will be displayed with the system mount message    !!01433
*             through TAPECOM when the Super Extract process          !!01434
*             requests the use of a tape drive.  The value in this    !!01435
*             field is only used when the Tandem TAPECOM utility      !!01436
*             performs tape label processing.                         !!01437
*                                                                     !!01438
    02  MOUNT-MSG               PIC X(25).                             !01439
                                                                       !01440
*                                                                     !!01441
*             The density of the output tape in bit per inch.         !!01442
*             Valid values are 800, 1600, 6250.                       !!01443
*                                                                     !!01444
*             The default value is 6250.                              !!01445
*                                                                     !!01446
    02  DENSITY                 PIC X(4).                              !01447
                                                                       !01448
                                                                       !01448F00
*                                                                      !01448F01
*             This field tells whether the Extract file should be      !01448F02
*             created as a format 1 or format 2 file.  The default     !01448F03
*             is format 1.  No entry need be made unless a format 2    !01448F04
*             extract file is desired.                                 !01448F05
*                                                                      !01448F06
    02  FILE-FRMT               PIC X.                                 !01448F07
                                                                       !01448F08
                                                                       !01448F09
                                                                       !01448G00
*             Indicates whether the created extract file will be       !01448G01
*             buffered.                                                !01448G02
                                                                       !01448G03
    02  FILE-BUFFERED           PIC X.                                 !01448G04
                                                                       !01448G05
                                                                       !01448H00
*             Indicates whether extract should stop at the initial     !01448H01
*             EOF or continue past it and read until the physical      !01448H02
*             EOF.                                                     !01448H03
                                                                       !01448H04
    02  READ-PAST-INITIAL-EOF   PIC X.                                 !01448H05
                                                                       !01448H06
*             This field is not used.                                  !01448G06
                                                                       !01448G07
                                                                       !01448H07
    02  USER-FLD4               PIC X(27).                             !01448H08
                                                                       !01448H09
                                                                       !01448G09
                                                                       !01449G00
                                                                       !01449G01
                                                                       !01449G02
                                                                       !01452
*                                                                     !!01453
*             An indicator that identifies the last file maintenance  !!01454
*             action on this record.  This includes the user who      !!01455
*             performed the update, the time at which it was done,    !!01456
*             and the type of update.                                 !!01457
*                                                                     !!01458
    02  LAST-FM                 TYPE *.                                !01459
                                                                       !01460
                                                                       !01460I00
*             Each ECF record that has a new UAF Cleanup flag enabled !!01460I01
*             will be examined as to whether it should be added to a  !!01460I02
*             new internal settlement UAF Cleanup table. The ECF      !!01460I03
*             record will have a new Cleanup Refresh Group name to    !!01460I04
*             ECF record will have a new Cleanup Refresh Group name to!!01460I05
*             be cleaned within the UAF, or ALL may be entered.       !!01460I06
*                                                                     !!01460I07
    02  UAF-CLEANUP.                                                   !01460I08
                                                                       !01460I09
*             BASE24 Usage Accumulation File Cleanup Flag.            !!01460I0A
*             This field is used as an indicator to determine whether !!01460I0B
*             the UAF Cleanup should be performed.                    !!01460I0C
*             Valid values are                                        !!01460I0D
*             "N" - Do not perform the UAF Cleanup (default "N")      !!01460I0E
*             "Y" - Perform the UAF Cleanup.                          !!01460I0F
                                                                       !01460I0G
        04  FLG                 PIC X.                                 !01460I0H
                                                                       !01460I0I
*                                                                     !!01460I0J
*             This field contains the name of the refresh group as    !!01460I0K
*             specified on the IDF file.  It determines which         !!01460I0L
*             UAF will be cleaned up.  Valid values are:              !!01460I0M
*             "ALL"      - Perform the UAF Cleanup on all UAFs        !!01460I0N
*                          (default)                                  !!01460I0O
*             "<group>"  - Perform the UAF Cleanup on the UAF         !!01460I0P
*                          associated with this specifed <group>.     !!01460I0Q
*                          This <group> value must correspond to a    !!01460I0R
*                          value in the IDF "REFRESH GROUP" field.    !!01460I0S
                                                                       !01460I0T
        04  GRP                 PIC X(4).                              !01460I0U
                                                                       !01460I0V
                                                                       !01460E00
*             USER-FLD-ACI is reserved for future BASE24 product use   !01460E01
*             only. The designation of "product use only" provides     !01460E02
*             ACI with the ability to deplete the number of bytes      !01460E03
*             available within USER-FLD-ACI as product enhancements    !01460E04
*             are introduced.  When product enhancements require the   !01460E05
*             addition of new fields within this file, the procedure   !01460E06
*             to be followed is to deplete bytes from USER-FLD-ACI     !01460E07
*             and use that number of bytes to define new fields. The   !01460E08
*             new field definition(s) should precede the               !01460E09
*             USER-FLD-ACI field.                                      !01460E0A
                                                                       !01460E0B
                                                                       !01460I0W
    02  USER-FLD-ACI            PIC X(45).                             !01460I0X
                                                                       !01460I0Y
                                                                       !01460E0D
*                                                                      !01460E0E
*             USER-FLD-REGN is reserved for regional use only.  Only   !01460E0F
*             regions are allowed to use USER-FLD-REGN space.          !01460E0G
*                                                                      !01460E0H
    02  USER-FLD-REGN           PIC X(50).                             !01460E0I
*                                                                      !01460E0J
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !01460E0K
*             Only customers are allowed to use USER-FLD-CUST space.   !01460E0L
*                                                                      !01460E0M
    02  USER-FLD-CUST           PIC X(50).                             !01460E0N
                                                                       !01460E0O
                                                                       !01460E0P
    END                                                                !01461
                                                                       !01462
?page "ATMECF - ATM ECF Segment"
?section ATMECF
*             The following fields make up the ATM segment of the     !!01467
*             Extract Configuration File (ECF).                       !!01468
*                                                                     !!01469
                                                                       !01470
  DEFINITION ATMECF.                                                   !01471
                                                                       !01472
                                                                       !01473
    02  SEG-LGTH                     TYPE *.                           !01474
                                                                       !01475
                                                                       !01476
*                                                                     !!01477
*                                                                     !!01478
*             The release number indicating the format of the data    !!01479
*             on the extract tape for all ATM files.                  !!01480
*                                                                     !!01481
*             Super Extract supports extracts of all ATM files in     !!01482
*             previous release format.                                !!01483
*                                                                     !!01484
*             Since the release number flags are at the product level !!01485
*             all files being extracted in a single extract session   !!01486
*             for a given product are in the same format.  However,   !!01487
*             files for different products can be extracted in        !!01488
*             different formats during a single extract session (for  !!01489
                                                                       !01489D00
*             example, Base files in the previous release format and   !01489D01
*             BASE24-atm files in the current release format).         !01489D02
                                                                       !01489D03
                                                                       !01490D00
                                                                       !01490D01
                                                                       !01490D02
*                                                                     !!01492
    02  REL-NUM                      PIC 9(2).                         !01493
                                                                       !01494
                                                                       !01495
*                                                                     !!01496
*             The following fields contain information necessary for  !!01497
*             extracting the BASE24-atm Transaction Log File (TLF).   !!01498
*                                                                     !!01499
    02  TLF.                                                           !01500
                                                                       !01501
                                                                       !01502
*                                                                     !!01503
*             The time difference, in number of days, to add to or    !!01504
*             subtract from the current system date to obtain the     !!01505
*             date of the TLF to extract.  For reextracts, this field !!01506
*             contains the time difference, in number of days, to add !!01507
*             to or subtract from the value in the LAST-RUN-DAT field !!01508
*             when determining the date of the TLF to reextract.      !!01509
*                                                                     !!01510
*             The value entered in this field is added to or          !!01511
*             subtracted from the current system date to obtain the   !!01512
*             date of the TLF to extract.  A sign (- or +) indicates  !!01513
*             whether the value is added or subtracted.               !!01514
*                                                                     !!01515
*             For example, if the value of this field is -2 and the   !!01516
*             current system date is August 25, the date of the TLF   !!01517
*             to extract is August 23 (two days prior to the current  !!01518
*             system date).                                           !!01519
*                                                                     !!01520
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !01521
                                                                       !01522
                                                                       !01523
*                                                                     !!01524
*             A name identifying the extract group for which TLF      !!01525
*             transactions are to be extracted.                       !!01526
*                                                                     !!01527
*             Institutions are assigned refresh groups via the REFR-  !!01528
*             GRP field in the Base segment of the IDF.  These same   !!01529
*             groups are used during extracts.  When this field       !!01530
*             contains the name of a specific refresh group, Super    !!01531
*             Extract only extracts TLF records associated with that  !!01532
*             refresh group.  The default value is ALL_ (_ denotes a  !!01533
*             blank space), indicating that all TLF records should be !!01534
*             extracted.                                              !!01535
*                                                                     !!01536
        04  GRP                 PIC X(4).                              !01537
*                                                                     !!01538
*             A code sepcifying the format of records in the TLF      !!01539
                                                                       !01539D00
*             extract.  Valid values are:                              !01539D01
                                                                       !01539D02
                                                                       !01540D00
                                                                       !01540D01
                                                                       !01540D02
*                                                                     !!01542
*             00 = Fixed length format (default)                      !!01543
*             01 = Variable length format                             !!01544
*                                                                     !!01545
*             Fixed format means that each record extracted of a given!!01546
*             type and subtype contains the same tokens.  If a token  !!01547
*             configured to be extracted from the TLF is not present  !!01548
*             in the TLF record, the Super Extract process creates an !!01549
*             empty token in the extract.  The Super Extract also pads!!01550
*             variable-length tokens included in the extract to their !!01551
*             maximum length.                                         !!01552
*                                                                     !!01553
        04  EXTR-FRMT           PIC 99.                                !01554
                                                                       !01555
*                                                                     !!01556
*             The following fields contain information necessary for  !!01557
*             extracting the BASE24-atm Hardware Status File (HSF).   !!01558
*                                                                     !!01559
    02  HSF.                                                           !01560
                                                                       !01561
                                                                       !01562
*                                                                     !!01563
*             The time difference, in number of days, to add to or    !!01564
*             subtract from the current system date to obtain the     !!01565
*             date of the HSF to extract.  For reextracts, this field !!01566
*             contains the time difference, in number of days, to add !!01567
*             to or subtract from the value in the LAST-RUN-DAT field !!01568
*             when determining the date of the HSF to reextract.      !!01569
*                                                                     !!01570
*             The value entered in this field is added to or          !!01571
*             subtracted from the current system date to obtain the   !!01572
*             date of the HSF to extract.  A sign (- or +) indicates  !!01573
*             whether the value is added or subtracted.               !!01574
*                                                                     !!01575
*             For example, if the value of this field is -2 and the   !!01576
*             current system date is August 25, the date of the HSF   !!01577
*             to extract is August 23 (two days prior to the current  !!01578
*             system date).                                           !!01579
*                                                                     !!01580
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !01581
                                                                       !01582
*                                                                     !!01583
                                                                       !01584D00
                                                                       !01584D01
                                                                       !01584D02
*             This field is not used.                                 !!01642
*                                                                     !!01643
    02  USER-FLD11              PIC X(08).                             !01644
                                                                       !01645
                                                                       !01646
                                                                       !01647
                                                                       !01648
                                                                       !01649
    END.                                                               !01650
?page "POSECF - POS ECF Segment"
?section POSECF
*             The following fields make up the POS segment of the     !!01655
*             Extract Configuration File (ECF).                       !!01656
*                                                                     !!01657
                                                                       !01658
DEFINITION POSECF.                                                     !01659
                                                                       !01660
                                                                       !01661
    02  SEG-LGTH                     TYPE *.                           !01662
                                                                       !01663
                                                                       !01664
*                                                                     !!01665
*             The release number indicating the format of the data    !!01666
*             on the extract tape for all POS files.                  !!01667
*                                                                     !!01668
*             Super Extract supports extracts of all POS files in     !!01669
*             previous release format.                                !!01670
*                                                                     !!01671
*             Since the release number flags are at the product level !!01672
*             all files being extracted in a single extract session   !!01673
*             for a given product are in the same format.  However,   !!01674
*             files for different products can be extracted in        !!01675
*             different formats during a single extract session (for  !!01676
                                                                       !01676D00
*             example, Base files in the previous release format and   !01676D01
*             BASE24-pos files in the current release format).         !01676D02
                                                                       !01676D03
                                                                       !01677D00
                                                                       !01677D01
                                                                       !01677D02
*                                                                     !!01679
    02  REL-NUM                      PIC 9(2).                         !01680
                                                                       !01681
                                                                       !01682
*                                                                     !!01683
*             The following fields contain the information necessary  !!01684
*             for extracting the BASE24-pos Transaction Log File      !!01685
*             (PTLF).                                                 !!01686
*                                                                     !!01687
    02  PTLF.                                                          !01688
                                                                       !01689
                                                                       !01690
*                                                                     !!01691
*             The time difference, in number of days, to add to or    !!01692
*             subtract from the current system date to obtain the     !!01693
*             date of the PTLF to extract.  For reextracts, this      !!01694
*             field contains the time difference, in number of days,  !!01695
*             to add to or subtract from the value in the LAST-RUN-   !!01696
*             DAT field when determining the date of the PTLF to      !!01697
*             reextract.                                              !!01698
*                                                                     !!01699
*             The value entered in this field is added to or          !!01700
*             subtracted from the current system date to obtain the   !!01701
*             date of the PTLF to extract.  A sign (- or +) indicates !!01702
*             whether the value is added or subtracted.               !!01703
*                                                                     !!01704
*             For example, if the value of this field is -2 and the   !!01705
*             current system date is August 25, the date of the PTLF  !!01706
*             to extract is August 23 (two days prior to the current  !!01707
*             system date).                                           !!01708
*                                                                     !!01709
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !01710
                                                                       !01711
                                                                       !01712
*                                                                     !!01713
*             A name identifying the extract group for which PTLF     !!01714
*             transactions are to be extracted.                       !!01715
*                                                                     !!01716
*             Institutions are assigned refresh groups via the REFR-  !!01717
*             GRP field in the Base segment of the IDF.  These same   !!01718
*             groups are used during extracts.  When this field       !!01719
*             contains the name of a specific refresh group, Super    !!01720
*             Extract only extracts PTLF records associated with that !!01721
*             refresh group.                                          !!01722
*                                                                     !!01723
*             Super Extract uses the value in this field to determine !!01724
*             what PTLF records to retrieve.  The default value is    !!01725
*             ALL_ (_ denotes a blank space).                         !!01726
*                                                                     !!01727
        04  GRP                 PIC X(4).                              !01728
                                                                       !01729
                                                                       !01730
*                                                                     !!01731
*             The name of the spooler location to use for printing    !!01732
*             the PTLF extract report.  This field is currently not   !!01733
*             used.                                                   !!01734
*                                                                     !!01735
        04  RPT-NAME            TYPE FNAME.                            !01736
                                                                       !01737
*             A code sepcifying the format of records in the PTLF     !!01738
                                                                       !01738D00
*             extract.  Valid values are:                              !01738D01
                                                                       !01738D02
                                                                       !01739D00
                                                                       !01739D01
                                                                       !01739D02
*                                                                     !!01741
*             00 = Fixed length format (default)                      !!01742
*             01 = Variable length format                             !!01743
*                                                                     !!01744
*             Fixed format means that each record extracted of a given!!01745
*             type and subtype contains the same tokens.  If a token  !!01746
*             configured to be extracted from the PTLF is not present !!01747
*             in the PTLF record, the Super Extract process creates an!!01748
*             empty token in the extract.  The Super Extract also pads!!01749
*             variable-length tokens included in the extract to their !!01750
*             maximum length.                                         !!01751
*                                                                     !!01752
        04  EXTR-FRMT           PIC 99.                                !01753
                                                                       !01754
*                                                                     !!01755
*             This field is not used.                                 !!01756
*                                                                     !!01757
        04  USER-FLD6           PIC X.                                 !01758
                                                                       !01759
                                                                       !01760D00
                                                                       !01760D01
                                                                       !01760D02
*             This field is not used.                                 !!01802
*                                                                     !!01803
    02  USER-FLD12              PIC X(50).                             !01804
                                                                       !01805
    END.                                                               !01806
?page "TLRECF - TELLER ECF Segment"
?section TLRECF
                                                                       !01811
*             The following fields make up the Teller segment of the  !!01812
*             Extract Configuration File (ECF).                       !!01813
                                                                       !01814
DEFINITION TLRECF.                                                     !01815
                                                                       !01816
                                                                       !01817
    02  SEG-LGTH                     TYPE *.                           !01818
                                                                       !01819
                                                                       !01820
*             The release number indicating the format of the data    !!01821
*             on the extract tape for all Teller files.               !!01822
*                                                                     !!01823
*             Super Extract supports extracts of all Teller files in  !!01824
*             previous release format except the TTF.  The TTF extract!!01825
                                                                       !01826D00
*             is only available in the current release format.        !
                                                                       !01826D03
*                                                                     !!01827
*             Since the release number flags are at the product level !!01828
*             all files being extracted in a single extract session   !!01829
*             for a given product are in the same format.  However,   !!01830
*             files for different products can be extracted in        !!01831
*             different formats during a single extract session (for  !!01832
                                                                       !01832D00
*             example, Base files in the previous release format and   !01832D01
*             BASE24-teller files in the current release format).      !01832D02
                                                                       !01832D03
                                                                       !01833D00
                                                                       !01833D01
                                                                       !01833D02
*                                                                     !!01835
                                                                       !01836
    02  REL-NUM                      PIC 9(2).                         !01837
                                                                       !01838
                                                                       !01839
*             The following fields contain the information necessary  !!01840
*             for extracting the BASE24-teller Transaction Log        !!01841
*             File (TTLF).                                            !!01842
                                                                       !01843
    02  TTLF.                                                          !01844
                                                                       !01845
*             The time difference, in number of days, to add to or    !!01846
*             subtract from the current system date to obtain the     !!01847
*             date of the TTLF to extract.  For reextracts, this      !!01848
*             field contains the time difference, in number of days,  !!01849
*             to add to or subtract from the value in the LAST-RUN-   !!01850
*             DAT field when determining the date of the TTLF to      !!01851
*             reextract.                                              !!01852
*                                                                     !!01853
*             The value entered in this field is added to or          !!01854
*             subtracted from the current system date to obtain the   !!01855
*             date of the TTLF to extract.  A sign (- or +) indicates !!01856
*             whether the value is added or subtracted.               !!01857
*                                                                     !!01858
*             For example, if the value of this field is -2 and the   !!01859
*             current system date is August 25, the date of the TTLF  !!01860
*             to extract is August 23 (two days prior to the current  !!01861
*             system date).                                           !!01862
*                                                                     !!01863
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !01864
                                                                       !01865
                                                                       !01866
*             A name identifying the extract group for which TTLF     !!01867
*             transactions are to be extracted.                       !!01868
*                                                                     !!01869
*             Institutions are assigned refresh groups via the REFR-  !!01870
*             GRP field in the Base segment of the IDF.  These same   !!01871
*             groups are used during extracts.  When this field       !!01872
*             contains the name of a specific refresh group, Super    !!01873
*             Extract only extracts TTLF records associated with that !!01874
*             refresh group.  The name of the extract group as        !!01875
*             specified by the REFR-GRP field is located in the Base  !!01876
*             segment of the IDF.                                     !!01877
*                                                                     !!01878
*             Super Extract uses the value in this field to determine !!01879
*             what TTLF records to retrieve.  The default value is    !!01880
*             ALL_ (_ denotes a blank space).                         !!01881
*                                                                     !!01882
        04  GRP                 PIC X(4).                              !01883
                                                                       !01884
*             A code sepcifying the format of records in the TTLF     !!01885
                                                                       !01885D00
*             extract.  Valid values are:                              !01885D01
                                                                       !01885D02
                                                                       !01886D00
                                                                       !01886D01
                                                                       !01886D02
*                                                                     !!01888
*             00 = Fixed length format (default)                      !!01889
*             01 = Variable length format                             !!01890
*                                                                     !!01891
*             Fixed format means that each record extracted of a given!!01892
*             type and subtype contains the same tokens.  If a token  !!01893
*             configured to be extracted from the TTLF is not present !!01894
*             in the TTLF record, the Super Extract process creates an!!01895
*             empty token in the extract.  The Super Extract also pads!!01896
*             variable-length tokens included in the extract to their !!01897
*             maximum length.                                         !!01898
*                                                                     !!01899
        04  EXTR-FRMT           PIC 99.                                !01900
                                                                       !01901
*             The following fields contain the information necessary  !!01902
*             for extracting the BASE24-teller Transaction            !!01903
*             File (TTF).                                             !!01904
                                                                       !01905
    02  TTF.                                                           !01906
                                                                       !01907
*             The FIID of the financial institution for which the TTF !!01908
*             extract is being run.                                   !!01909
                                                                       !01910
        04  FIID                TYPE *.                                !01911
                                                                       !01912
                                                                       !01913D00
                                                                       !01913D01
                                                                       !01913D02
    02  USER-FLD13              PIC X(10).                             !01977
                                                                       !01978
    END.                                                               !01979
                                                                       !01979D00
?page "FHMECF - FHM ECF Segment"
?section FHMECF
                                                                       !01979D05
                                                                       !01979D06
                                                                       !01979D07
                                                                       !01979D08
*             The following fields make up the FHM segment of the     !!02124
*             Extract Configuration File (ECF).                       !!02125
*                                                                     !!02126
                                                                       !02127
DEFINITION FHMECF.                                                     !02128
                                                                       !02129
                                                                       !02130
    02  SEG-LGTH                     TYPE *.                           !02131
                                                                       !02132
                                                                       !02133
*                                                                     !!02134
*             The release number indicating the format of the data    !!02135
*             on the extract tape for ULF File.                       !!02136
*                                                                     !!02137
*             Super Extract does not support the ULF in a previous    !!02138
*             release format.                                         !!02139
*                                                                     !!02140
*             Since the release number flags are at the product level !!02141
*             all files being extracted in a single extract session   !!02142
*             for a given product are in the same format.  However,   !!02143
*             files for different products can be extracted in        !!02144
*             different formats during a single extract session (for  !!02145
                                                                       !02145D00
*             example, Base files in the previous release format and   !02145D01
*             BASE24-from host maintenance files in the current        !02145D02
*             release format).                                         !02145D03
                                                                       !02145D04
                                                                       !02146D00
                                                                       !02146D01
                                                                       !02146D02
*                                                                     !!02148
    02  REL-NUM             PIC 9(2).                                  !02149
                                                                       !02150
                                                                       !02151
*                                                                     !!02152
*             The following fields contain the information necessary  !!02153
*             for performing the Update Log File (ULF) extract.       !!02154
*                                                                     !!02155
    02  ULF.                                                           !02156
                                                                       !02157
                                                                       !02158
*                                                                     !!02159
*             The time difference, in number of days, to add to or    !!02160
*             subtract from the current system date to obtain the     !!02161
*             date of the ULF to extract.  For reextracts, this field !!02162
*             contains the time difference, in number of days, to add !!02163
*             to or subtract from the value in the LAST-RUN-DAT field !!02164
*             when determining the date of the ULF to reextract.      !!02165
*                                                                     !!02166
*             The value entered in this field is added to or          !!02167
*             subtracted from the current system date to obtain the   !!02168
*             date of the ULF to extract.  A sign (- or +) indicates  !!02169
*             whether the value is added or subtracted.               !!02170
*                                                                     !!02171
*             For example, if the value of this field is -2 and the   !!02172
*             current system date is August 25, the date of the ULF   !!02173
*             to extract is August 23 (two days prior to the current  !!02174
*             system date).                                           !!02175
*                                                                     !!02176
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !02177
                                                                       !02178
                                                                       !02179
*                                                                     !!02180
*             A name identifying the extract group for which ULF      !!02181
*             transactions are to be extracted.                       !!02182
*                                                                     !!02183
*             Institutions are assigned refresh groups via the REFR-  !!02184
*             GRP field in the Base segment of the IDF.  These same   !!02185
*             groups are used during extracts.  When this field       !!02186
*             contains the name of a specific refresh group, Super    !!02187
*             Extract only extracts ULF records associated with that  !!02188
*             refresh group.  The name of the extract group as        !!02189
*             specified by the REFR-GRP field is located in the Base  !!02190
*             segment of the IDF.                                     !!02191
*                                                                     !!02192
*             Super Extract uses the value in this field to determine !!02193
*             what ULF records to retrieve.  The default value is     !!02194
*             ALL_ (_ denotes a blank space).                         !!02195
*                                                                     !!02196
        04  GRP                 PIC X(4).                              !02197
                                                                       !02198
*                                                                     !!02199
*             This field is not used.                                 !!02200
*                                                                     !!02201
    02  USER-FLD14          PIC X(50).                                 !02202
                                                                       !02203
END.                                                                   !02204
                                                                       !02204A00
?page "MAECF - MAIL ECF Segment"
?section MAECF
                                                                       !02204A05
                                                                       !02205A00
                                                                       !02205A01
                                                                       !02205A02
                                                                       !02237
*             The following fields make up the Mail segment of the    !!02238
*             Extract Configuration File (ECF).                       !!02239
*                                                                     !!02240
                                                                       !02241
DEFINITION MAECF.                                                      !02242
                                                                       !02243
                                                                       !02244
    02  SEG-LGTH                     TYPE *.                           !02245
                                                                       !02246
                                                                       !02247
*                                                                     !!02248
*             The release number indicating the format of the data    !!02249
*             on the extract tape for Mail files.                     !!02250
*                                                                     !!02251
*             Since the release number flags are at the product level !!02252
*             all files being extracted in a single extract session   !!02253
*             for a given product are in the same format.  However,   !!02254
*             files for different products can be extracted in        !!02255
*             different formats during a single extract session (for  !!02256
                                                                       !02256D00
*             example, Base files in the previous release format and   !02256D01
*             BASE24-mail files in the current release format).        !02256D02
                                                                       !02256D03
                                                                       !02257D00
                                                                       !02257D01
                                                                       !02257D02
*                                                                     !!02259
    02  REL-NUM             PIC 9(2).                                  !02260
                                                                       !02261
                                                                       !02262
*                                                                     !!02263
*             The reextract volume name for reextracting information. !!02264
*                                                                     !!02265
    02  VOL-NAM             PIC X(8).                                  !02266
                                                                       !02267
                                                                       !02268
*                                                                     !!02269
*             The reextract subvolume name for reextracting           !!02270
*             information.                                            !!02271
*                                                                     !!02272
    02  SUBVOL-NAM          PIC X(8).                                  !02273
                                                                       !02274
                                                                       !02275
*                                                                     !!02276
*             The following fields contain the information necessary  !!02277
*             for extracting the BASE24-mail Host Mail Box File       !!02278
*             (HMBF).                                                 !!02279
*                                                                     !!02280
    02  HMBF.                                                          !02281
                                                                       !02282
                                                                       !02283
*                                                                     !!02284
*             A name identifying the extract group for which HMBF     !!02285
*             messages are to be extracted.                           !!02286
*                                                                     !!02287
*             Super Extract uses the value in this field to determine !!02288
*             what HMBF records to retrieve.  Currently, the only     !!02289
*             valid value allowed for this field is ALL_ (_ denotes a !!02290
*             blank space).                                           !!02291
*                                                                     !!02292
        04  GRP                 PIC X(4).                              !02293
                                                                       !02294
                                                                       !02295
                                                                       !02296
*                                                                     !!02297
*             The time difference, in number of days, to add to or    !!02298
*             subtract from the EXTRACT-DAT field to obtain the       !!02299
*             cutoff date of HMBF records to extract.                 !!02300
*                                                                     !!02301
*             The value entered in this field is added to or          !!02302
*             subtracted from the date in the EXTRACT-DAT field in    !!02303
*             the BASE24-base segment of the ECF record.  A sign      !!02304
*             (+ of -) indicates whether the value is added or        !!02305
*             subtracted.                                             !!02306
*                                                                     !!02307
*             Super Extract compares the date value calculated to the !!02308
*             date portion of the EXP-STMP field value                !!02309
*             of each HMBF record to determine which records are      !!02310
*             extracted.                                              !!02311
*                                                                     !!02312
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !02313
                                                                       !02314
                                                                       !02315
*                                                                     !!02316
*             The expiration time (HHMM) of the HMBF records to be    !!02317
*             extracted.  Super Extract compares the value in this    !!02318
*             field to the time portion of the EXP-STMP field value   !!02319
*             of each HMBF record to determine which records are      !!02320
*             extracted.                                              !!02321
*                                                                     !!02322
        04  EXPR-TIM            PIC X(4).                              !02323
                                                                       !02324
*                                                                     !!02325
*             The following fields contain the information necessary  !!02326
*             for extracting the BASE24-mail Mail Box File (MBF).     !!02327
*                                                                     !!02328
    02  MBF.                                                           !02329
                                                                       !02330
                                                                       !02331
*                                                                     !!02332
*             A name identifying the extract group for which MBF      !!02333
*             messages are to be extracted.                           !!02334
*                                                                     !!02335
*             Super Extract uses the value in this field to determine !!02336
*             what MBF records to retrieve.  Currently, the only      !!02337
*             valid value allowed for this field is ALL_ (_ denotes a !!02338
*             blank space).                                           !!02339
*                                                                     !!02340
        04  GRP                 PIC X(4).                              !02341
                                                                       !02342
                                                                       !02343
*                                                                     !!02344
*             The time difference, in number of days, to add to or    !!02345
*             subtract from the EXTRACT-DAT field to obtain the       !!02346
*             cutoff date of HMBF records to extract.                 !!02347
*                                                                     !!02348
*             The value entered in this field is added to or          !!02349
*             subtracted from the date in the EXTRACT-DAT field in    !!02350
*             the BASE24-base segment of the ECF record.  A sign      !!02351
*             (+ of -) indicates whether the value is added or        !!02352
*             subtracted.                                             !!02353
*                                                                     !!02354
*             Super Extract compares the date value calculated to the !!02355
*             date portion of the EXP-STMP field value                !!02356
*             of each HMBF record to determine which records are      !!02357
*             extracted.                                              !!02358
*                                                                     !!02359
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !02360
                                                                       !02361
                                                                       !02362
*                                                                     !!02363
*             The expiration time (HHMM) of the MBF records to be     !!02364
*             extracted.  Super Extract compares the value in this    !!02365
*             field to the time portion of the EXP-STMP field value   !!02366
*             of each MBF record to determine which records are       !!02367
*             extracted.                                              !!02368
*                                                                     !!02369
        04  EXPR-TIM            PIC X(4).                              !02370
                                                                       !02371
                                                                       !02372
*                                                                     !!02373
*             This field is not used.                                 !!02374
*                                                                     !!02375
    02  USER-FLD15              PIC X(50).                             !02376
                                                                       !02377
                                                                       !02378
END                                                                    !02379
                                                                       !02379A00
?page "TBECF - Telebanking ECF Segment"
?section TBECF
*                                                                      !02379A05
*             The following fields make up the Telebanking segment of  !02379A06
*             the Extract Configuration File (ECF).                    !02379A07
*                                                                      !02379A08
                                                                       !02379A09
  DEFINITION TBECF.                                                    !02379A0A
                                                                       !02379A0B
    02  SEG-LGTH                     TYPE *.                           !02379A0C
                                                                       !02379A0D
*                                                                      !02379A0E
*             The release number indicating the format of the data     !02379A0F
*             on the extract tape for all telebanking files.           !02379A0G
*                                                                      !02379A0H
*             Since the release number flags are at the product level  !02379A0I
*             all files being extracted in a single extract session    !02379A0J
*             for a given product are in the same format.  However,    !02379A0K
*             files for different products can be extracted in         !02379A0L
*             different formats during a single extract session (for   !02379A0M
                                                                       !02379D00
*             example, Base files in the previous release format and   !02379D01
*             BASE24-telebanking files in the current release format). !02379D02
                                                                       !02379D03
                                                                       !02379D04
                                                                       !02379D05
                                                                       !02379D06
*                                                                      !02379D07
    02  REL-NUM                      PIC 9(2).                         !02379D08
                                                                       !02379D09
*                                                                      !02379D0A
*             The following fields contain information necessary for   !02379D0B
*             extracting the ITS Transaction Log File (ITLF).          !02379D0C
*                                                                      !02379D0D
    02  TLF.                                                           !02379D0E
                                                                       !02379D0F
*                                                                      !02379D0G
*             The time difference, in number of days, to add to or     !02379D0H
*             subtract from the current system date to obtain the      !02379D0I
*             date of the ITLF to extract.  For reextracts, this field !02379D0J
*             contains the time difference, in number of days, to add  !02379D0K
*             to or subtract from the value in the LAST-RUN-DAT field  !02379D0L
*             when determining the date of the ITLF to reextract.      !02379D0M
*                                                                      !02379D0N
*             The value entered in this field is added to or           !02379D0O
*             subtracted from the current system date to obtain the    !02379D0P
*             date of the ITLF to extract.  A sign (- or +) indicates  !02379D0Q
*             whether the value is added or subtracted.                !02379D0R
*                                                                      !02379D0S
*             For example, if the value of this field is -2 and the    !02379D0T
*             current system date is August 25, the date of the ITLF   !02379D0U
*             to extract is August 23 (two days prior to the current   !02379D0V
*             system date).                                            !02379D0W
*                                                                      !02379D0X
*             Default value is 0.                                      !02379D0Y
*                                                                      !02379D0Z
        04  FILE-DAY-OFST       TYPE BINARY 16.                        !02379D10
                                                                       !02379D11
*                                                                      !02379D12
*             A name identifying the extract group for which ITLF      !02379D13
*             transactions are to be extracted.                        !02379D14
*                                                                      !02379D15
*             Institutions are assigned refresh groups via the REFR-   !02379D16
*             GRP field in the Base segment of the IDF.  These same    !02379D17
*             groups are used during extracts.  When this field        !02379D18
*             contains the name of a specific refresh group, Super     !02379D19
*             Extract only extracts ITLF records associated with that  !02379D1A
*             refresh group.  The default value is ALL_ (_ denotes a   !02379D1B
*             blank space), indicating that all ITLF records should be !02379D1C
*             extracted.                                               !02379D1D
*                                                                      !02379D1E
        04  GRP                 PIC X(4).                              !02379D1F
                                                                       !02379D1G
        04  USER-FLD            PIC 99.                                !02379D1H
END.                                                                   !02379D1I
?nocomments
?page "ECF - Extract Configuration File"
?section ECF
                                                                       !02379D1P
                                                                       !02379D1Q
                                                                       !02379D1R
                                                                       !02379D1S
                                                                       !02379D1T
                                                                       !02380A00
                                                                       !02380A01
                                                                       !02380A02
                                                                       !02414
                                                                       !02415
                                                                       !02416
RECORD ECF.            FILE IS "ECF" KEY-SEQUENCED.                    !02417
                                                                       !02418
 02 SEG0                TYPE ECFBASE.                                  !02419
 02 SEG1                TYPE ATMECF.                                   !02420
 02 SEG2                TYPE POSECF.                                   !02421
 02 SEG3                TYPE TLRECF.                                   !02422
                                                                       !02423D00
                                                                       !02423D01
                                                                       !02423D02
 02 SEG8                TYPE FHMECF.                                   !02426
                                                                       !02427A00
                                                                       !02427A01
                                                                       !02427A02
 02 SEG11               TYPE MAECF.                                    !02430
                                                                       !02430A00
 02 SEG14               TYPE TBECF.                                    !02430A01
                                                                       !02430A02
                                                                       !02431A00
                                                                       !02431A01
                                                                       !02431A02
                                                                       !02435
 KEY IS PRIKEY         DUPLICATES NOT ALLOWED.                         !02436
 KEY "AK"  IS ALTKEY   DUPLICATES ALLOWED.                             !02437
                                                                       !02438
END                                                                    !02439
                                                                       !02440
?deflist
                                                                       !02440D00
                                                                       !02440D01
                                                                       !02440D02
