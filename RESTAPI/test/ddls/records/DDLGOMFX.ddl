**FIX2.28  12/04/07  DDLGOMFX6007 DDL    BA60DDL  BA0B352  G                 ***
**FIX2.11  01/02/01  DDLGOMFX6006 DDL    BA60DDL  BA04157  F                 ***
**SEQ0.04  11/01/00  DDLGOMFX6005 DDL    BA60DDL  BA04000  E                 ***
**SYNC.04  12/09/98  DDLGOMFX5305 DDL    BA53DDL  BA04000  E                 ***
**FIX2.03  08/28/98  DDLGOMFX5305 DDL    BA53DDL  BA03000  E                 ***
**FIX2.04  11/24/97  DDLGOMFX5105 DDL    BA51DDL  BA03026  E                 ***
**SYNC.03  08/22/97  DDLGOMFX5104 DDL    BA51DDL  BA03000  D                 ***
**SYNC.02  06/25/96  DDLGOMFX5104 DDL    BA51DDL  BA02000  D                 ***
**FIX2.00  12/08/95  DDLGOMFX5104 DDL    BA51DDL  BA51244  D                 ***
**FIX2.00  11/13/95  DDLGOMFX5103 DDL    BA51DDL  BA51219  C                 ***
**FIX2.00  06/06/95  DDLGOMFX5102 DDL    BA51DDL  BA51032  B                 ***
**FIX2.00  01/20/95  DDLGOMFX5101 DDL    BA51DDL  BA50283  A                 ***
!*SEQ2.00  10/20/92  DDLGOMFX5000 DDL    BA50DDL                               !
                                                                       !00000F00
?page "OMFX - Online Maintenance audit File extract format"
?section omfx-history
********************************************************************** !00000F05
*                                                                    * !00000F06
*                               BASE24                               * !00000F07
*                               ------                               * !00000F08
*                                                                    * !00000F09
*                  DDL for the OMF Extract format                    * !00000F0A
*                                                                    * !00000F0B
*                   Proprietary Software Product                     * !00000F0C
*                                                                    * !00000F0D
*                         ACI Worldwide Inc.                         * !00000F0E
*                       330 South 108th Avenue                       * !00000F0F
*                       Omaha, Nebraska  68154                       * !00000F0G
*                           (402) 390-7600                           * !00000F0H
*                                                                    * !00000F0I
*                                                                    * !00000F0J
*    Copyright by ACI Worldwide Inc. 1992 - 2000                     * !00000F0K
*                                                                    * !00000F0L
*    All Rights Reserved.  No part of this document may be           * !00000F0M
*    reproduced in any manner without the prior written consent of   * !00000F0N
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000F0O
*    confidentiality is strictly maintained.  Use of any copyright   * !00000F0P
*    notice does not imply unrestricted or public access to these    * !00000F0Q
*    materials.                                                      * !00000F0R
*                                                                    * !00000F0S
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000F0T
*                                                                    * !00000F0U
********************************************************************** !00000F0V
                                                                       !00000F0W
?page
*                                                                      !00000F0Z
* Record of Changes:                                                   !00000F10
*                                                                      !00000F11
* Date        Person/Emp #                                             !00000F12
* ---------   ------------                                             !00000F13
                                                                       !00000F14
                                                                       !00009F00
                                                                       !00009F01
                                                                       !00009F02
*********************************************************************  !00021A01
*               RESYNC OF BASE DDL/SRC SUBVOLUMES                   *  !00021A02
*********************************************************************  !00021A03
* 08-22-94  JAS  - JMS/583                                             !00021A04
* SYMPTOM:  BASE24-telebanking Initial Release.                        !00021A05
* PROBLEM:  (E) None.                                                  !00021A06
* FIX:      Updated list for APPL-CDE values.  Added the following     !00021A07
*           codes:  58, 65-69, 87-8A, 90-94, 9A, 9B, M0-MD, N0-N3,     !00021A08
*           P0-P9, Q0-Q2                                               !00021A09
* DEPENDENCIES:  None.                                                 !00021A0A
* REFERENCE:  Work Order TB930301-01                                   !00021A0B
                                                                       !00021A0C
                                                                       !00022A00
                                                                       !00022A01
                                                                       !00022B00
*********************************************************************  !00022B01
*                  RELEASE 5.1                                      *  !00022B02
*********************************************************************  !00022B03
* 01JUN95     JMS/583                                                  !00022B04
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00022B05
* PROBLEM:    <E> None.                                                !00022B06
* FIX:        Removed old history sections not associated with a       !00022B07
*             specific Fix level.                                      !00022B08
* IMPLEMENT:  None.                                                    !00022B09
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00022B0A
*                                                                      !00022B0B
                                                                       !00022C00
*                                                                      !00022C01
*********************************************************************  !00022C02
*                                                                      !00022C03
* 95NOV9     SLA/435                                                   !00022C04
* SYMPTOM:   None.                                                     !00022C05
* PROBLEM:   <E> None.                                                 !00022C06
* FIX:       Modified comments to reflect support for new and          !00022C07
*            modified Telebanking and BillPay Files and Tables.        !00022C08
* IMPLEMENT: None.                                                     !00022C09
* REFERENCE: Work Order 950425-1.                                      !00022C0A
*                                                                      !00022C0B
                                                                       !00022D00
*********************************************************************  !00022D01
*                                                                      !00022D02
* 95/11/14        DPS/1064 -bdc/1448                                   !00022D03
* SYMPTOM:        None.                                                !00022D04
* PROBLEM:        (E) None.                                            !00022D05
* FIX:            BASE24 Release 1.0 Customer Service/Fraud Control    !00022D06
*                 Updated list for APPL-CDE values.  Added the         !00022D07
*                 following codes: CI, CM, CS, CT, FA, FP, FS.         !00022D08
* DEPENDENCIES:   None.                                                !00022D09
* REFERENCE:      Work order #950212-3.                                !00022D0A
*                                                                      !00022D0B
*********************************************************************  !00022D0C
                                                                       !00022E00
* 01OCT1997   KJH/176  BH/177                                          !00022E01
* Symptom:    BASE24 VISA Cash Enhancement.                            !00022E02
* Problem:    None.                                                    !00022E03
* Fix:        Updated list for APPL-CDE values.  Added B0 for CNRF.    !00022E04
* Dependency: Apply fix and remake.                                    !00022E05
* Reference:  WO #970709-2.                                            !00022E06
                                                                       !00022E07
                                                                       !00022F00
********************************************************************   !00022F01
*             Release 6.0                                          *   !00022F02
********************************************************************   !00022F03
* 30NOV2000   JAS/497                                                  !00022F04
* Symptom:    BASE24 Release 6.0 Enhancements                          !00022F05
* Problem:    None.                                                    !00022F06
* Fix:        Removed the Application Code comments.  These codes      !00022F07
*             are specified in the OMF DDL.                            !00022F08
* Dependency: Restore Release 6.0 files, modify the appropriate        !00022F09
*             CUSTMACS flags, and run MAKE.                            !00022F0A
* Reference:  WO #971118-2 (PITABLE Expansion)                         !00022F0B
*             WO #981118-3 (Transactions Allowed)                      !00022F0C
*             WO #990108-1 (TDF/PTDF Expansion)                        !00022F0D
                                                                       !00022G00
* 12OCT2007   KrishnG                                                  !00022G01
* Symptom:    PCI - Audit Enhancement                                  !00022G02
* Problem:    None.                                                    !00022G03
* Fix:        Added new file maintenance types of 'E' (read), 'F'      !00022G04
*             (read next), 'I' (institution security error) and 'J'    !00022G05
*             (file operation security error) to support auditing of   !00022G06
*             user access to sensitive information.                    !00022G07
* Dependency: Apply fix to DDLGOMFX and run Make. Refer to             !00022G08
*             BA60UD0B.SCNAUDT for a complete list of dependencies.    !00022G09
* Reference:  WO #070423-02                                            !00022G0A
                                                                       !00022G0B
********************************************************************** !00022F0E
                                                                       !00022F0F
?deflist
?section omfx
                                                                       !00022F0K
                                                                       !00022F0L
                                                                       !00022F0M
                                                                       !00022F0N
*#####################################################################!!00023
*#    OMFX - ONLINE MAINTENTANCE FILE EXTRACT                        #!!00024
*#####################################################################!!00025
                                                                       !00025F00
?comments
                                                                       !00025F03
                                                                       !00026F00
                                                                       !00026F01
                                                                       !00026F02
*                                                                     !!00046
*              The Online Maintenance File (OMF) contains records of  !!00047
*              daily additions, deletions, and updates made to the    !!00048
*              BASE24 application files.  The OMF provides an audit   !!00049
*              trail of file maintenance operations.  This includes   !!00050
*              information on the BASE24 operators that have logged on!!00051
*              and performed operations, the times file operations    !!00052
*              were performed, and the actual records that were       !!00053
*              affected.                                              !!00054
*                                                                     !!00055
*              The following pages describe the fields included in an !!00056
*              OMF extract record. BASE24 provides the ability to     !!00057
*              extract the OMF.                                       !!00058
*                                                                     !!00059
DEFINITION OMFX.                                                       !00060
                                                                       !00061
                                                                       !00062
*                                                                     !!00063
*             A code identifying the file whose activity is           !!00064
*             represented by this record.  Each BASE24 file is        !!00065
*             assigned its own file code which allows for             !!00066
                                                                       !00067F00
                                                                       !00067F01
*             distinguishing OMF records.  Please refer to the        !
*             OMF-APPL-CDE-CONSTANTS section in the OMF DDL.          !
                                                                       !00067F06
                                                                       !00069F00
                                                                       !00069F01
                                                                       !00069F02
 02  APPL-CDE                PIC X(2).                                 !00221
                                                                       !00222
                                                                       !00223
*                                                                     !!00224
*             Identifies the type of file maintenance performed and   !!00225
*             the timing of the image contained in the OMF record.    !!00226
*             Valid codes are:                                        !!00227
*                                                                     !!00228
*             A = Added record.  When a record is added to an         !!00229
*                 application file, that record is written to the OMF !!00230
*                 with the value in the FM-TYP field set to A.        !!00231
*             B = Updated record; before-image.  When a record is     !!00232
*                 updated in an application file, a copy of the       !!00233
*                 record prior to the update is written to the OMF    !!00234
*                 with the value in the FM-TYP field set to B.        !!00235
*             C = Updated record; after-image.  When a record is      !!00236
*                 updated in an application file, a copy of the       !!00237
*                 record after the update is written to the OMF with  !!00238
*                 the value in the FM-TYP field set to C.             !!00239
*             D = Deleted record.  When a record is deleted from an   !!00240
*                 application file, that record is written to the OMF !!00241
*                 with the value in the FM-TYP field set to D.        !!00242
                                                                       !00242G00
*             E = Read record.  When a record is read from an         !!00242G01
*                 application file, that record is written to the OMF !!00242G02
*                 with the value in the FM-TYP field set to E.        !!00242G03
*             F = Read next record.  When a next record is read from  !!00242G04
*                 an application file, that record is written to the  !!00242G05
*                 OMF with the value in the FM-TYP field set to F.    !!00242G06
*             I = Institution security error.  When an institution    !!00242G07
*                 security error occurs, a record is written to the   !!00242G08
*                 OMF with the value in the FM-TYP field set to I.    !!00242G09
*                 (For this type of record, the REC-IMAGE field in    !!00242G0A
*                 the OMF contains spaces.)                           !!00242G0B
*             J = File operation security error.  When a file         !!00242G0C
*                 operation security error occurs, a record is        !!00242G0D
*                 written to the OMF with the value in the FM-TYP     !!00242G0E
*                 field set to J.  (For this type of record, the      !!00242G0F
*                 REC-IMAGE field in the OMF contains spaces.)        !!00242G0G
                                                                       !00242G0H
*             O = Operations access record.  When an operator         !!00243
*                 accesses the BASE24 operations screens, a record is !!00244
*                 written to the OMF with the value in the FM-TYP     !!00245
*                 field set to O.  (For this type of record, the      !!00246
*                 REC-IMAGE field in the OMF contains spaces.)        !!00247
*             S = Logon security check.  When an operator attempts to !!00248
*                 log on to BASE24, a record is written to the OMF    !!00249
*                 with the value in the FM-TYP field set to S.  If    !!00250
*                 the logon is rejected or has an error, the RECORD-  !!00251
*                 IMAGE field in the OMF contains the server-         !!00252
*                 generated error message.                            !!00253
*                                                                     !!00254
 02  FM-TYP                 PIC X(1).                                  !00255
                                                                       !00256
                                                                       !00257
*                                                                     !!00258
*             Date and time the OMF record was written to the file in !!00259
*             YYMMDD HHMMSSTT format (left-justified and padded with  !!00260
*             blanks).                                                !!00261
*                                                                     !!00262
 02  FM-DAT                 PIC X(16).                                 !00263
                                                                       !00264
                                                                       !00265
*                                                                     !!00266
*             The current logical network of the user at the time the !!00267
*             record was logged.                                      !!00268
*                                                                     !!00269
 02  LNET                   TYPE LN.                                   !00270
                                                                       !00271
                                                                       !00272
*                                                                     !!00273
*             The current FIID of the user at the time the record was !!00274
*             logged.  If the operator is SUPER.GROUP, the value in   !!00275
*             this field can be ****.                                 !!00276
*                                                                     !!00277
 02  FIID                   TYPE *.                                    !00278
                                                                       !00279
                                                                       !00280
*                                                                     !!00281
*             The current region of the user at the time the          !!00282
*             record was logged.  If the operator is SUPER.GROUP, the !!00283
*             value in this field can be ****.                        !!00284
*                                                                     !!00285
 02  REGN                   TYPE *.                                    !00286
                                                                       !00287
                                                                       !00288
*                                                                     !!00289
*             The current branch of the user at the time the          !!00290
*             record was logged.  If the operator is SUPER.GROUP, the !!00291
*             value in this field can be ****.                        !!00292
*                                                                     !!00293
 02  BRCH                   TYPE *.                                    !00294
                                                                       !00295
                                                                       !00296
                                                                       !00297
*                                                                     !!00298
*             The terminal ID of the physical terminal where the      !!00299
*             BASE24 operator is performing the file maintenance      !!00300
*             operations.                                             !!00301
*                                                                     !!00302
 02  TERM-ID                TYPE SYM-NAME.                             !00303
*                                                                     !!00304
 02  FILLER                 PIC X(1).                                  !00305
                                                                       !00306
                                                                       !00307
*                                                                     !!00308
*             The user group number specified at logon by the BASE24  !!00309
*             operator.                                               !!00310
*                                                                     !!00311
 02  USER-GRPX              PIC 9(4).                                  !00312
                                                                       !00313
                                                                       !00314
*                                                                     !!00315
*             The user number specified at logon by the BASE24        !!00316
*             operator.                                               !!00317
*                                                                     !!00318
 02  USER-NUMX              PIC 9(9).                                  !00319
                                                                       !00320
                                                                       !00321
                                                                       !00322
*                                                                     !!00323
*             Records are placed in this field to be audited.  Since  !!00324
*             file records vary in format, they are left-justified in !!00325
*             this field with the field length calculated by Super    !!00326
*             Extract based on the length of the audit record with no !!00327
*             trailing blanks.                                        !!00328
*                                                                     !!00329
*             Device-dependent and Last Tran data from the            !!00330
*             TDF/PTDF/TTDF will be converted to EBCDIC.  This will   !!00331
*             cause any binary data contained in these fields to be   !!00332
*             unreadable.                                             !!00333
*                                                                     !!00334
 02 REC-IMAGE           PIC X(4010).                                   !00335
                                                                       !00336
END                                                                    !00337
                                                                       !00338
?nocomments
