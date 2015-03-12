**FIX2.28  03/31/11  DDLSDF  6018 DDL    SW60SDF  SW0F024  R                 ***
**FIX2.28  03/02/11  DDLSDF  6017 DDL    SW60SDF  SW0E328  Q                 ***
**FIX2.28  03/27/08  DDLSDF  6016 DDL    SW60SDF  SW0C276  P                 ***
**FIX2.28  02/09/08  DDLSDF  6015 DDL    SW60SDF  SW0C143  O                 ***
**FIX2.28  02/16/07  DDLSDF  6014 DDL    SW60SDF  SW0B104  N                 ***
**FIX2.26  08/23/06  DDLSDF  6013 DDL    SW60SDF  SW0A522  M                 ***
**FIX2.24  10/06/05  DDLSDF  6012 DDL    SW60SDF  SW09594  L                 ***
**FIX2.24  08/19/04  DDLSDF  6011 DDL    SW60SDF  SW08477  K                 ***
**FIX2.23  08/12/03  DDLSDF  6010 DDL    SW60SDF  SW07300  J                 ***
**FIX2.23  02/20/03  DDLSDF  6009 DDL    SW60SDF  SW06338  I                 ***
**FIX2.23  01/16/03  DDLSDF  6008 DDL    SW60SDF  SW06227  H                 ***
**FIX2.22  08/26/02  DDLSDF  6007 DDL    SW60SDF  SW06034  G                 ***
**FIX2.17  08/26/01  DDLSDF  6006 DDL    SW60SDF  SW05043  F                 ***
**SEQ0.04  11/01/00  DDLSDF  6005 DDL    SW60SDF  SW04000  E                 ***
**FIX2.11  03/28/00  DDLSDF  5305 DDL    SW53SDF  SW04116  E                 ***
**FIX2.09  08/02/99  DDLSDF  5304 DDL    SW53SDF  SW04046  D                 ***
**SYNC.04  12/08/98  DDLSDF  5303 DDL    SW53SDF  SW04000  C                 ***
**FIX2.03  08/28/98  DDLSDF  5303 DDL    SW53SDF  SW03000  C                 ***
**FIX2.04  01/05/98  DDLSDF  5103 DDL    SW51SDF  SW03025  C                 ***
**SYNC.03  08/25/97  DDLSDF  5102 DDL    SW51SDF  SW03000  B                 ***
**FIX2.04  02/18/97  DDLSDF  5102 DDL    SW51SDF  SW51031  B                 ***
**SYNC.02  06/28/96  DDLSDF  5101 DDL    SW51SDF  SW02000  A                 ***
**FIX2.00  11/02/92  DDLSDF  5101 DDL    SW51SDF  SW50060  A                 ***
!*SEQ2.17  06/29/87  DDLSDF  5000 DDL    SW50SDF                               !
                                                                       !00000E00
*##################################################################### !00000E01
*#                                                                   # !00000E02
*#                              BASE24                               # !00000E03
*#                              ------                               # !00000E04
*#                                                                   # !00000E05
*#                     Switch Dispute File DDLs                      # !00000E06
*#                                                                   # !00000E07
*#                   Proprietary Software Product                    # !00000E08
*#                                                                   # !00000E09
*#                        ACI Worldwide Inc.                         # !00000E0A
*#                      330 South 108th Avenue                       # !00000E0B
*#                      Omaha, Nebraska  68154                       # !00000E0C
*#                          (402) 390-7600                           # !00000E0D
*#                                                                   # !00000E0E
                                                                       !00000I00
*#    Copyright by ACI Worldwide Inc. 1992 - 2003                    # !00000I01
                                                                       !00000I02
                                                                       !00000I03
                                                                       !00000I04
*#                                                                   # !00000E0G
*#    All Rights Reserved.  No part of this document may be          # !00000E0H
*#    reproduced in any manner without the prior written consent of  # !00000E0I
*#    ACI Worldwide Inc.  This material is a trade secret and its    # !00000E0J
*#    confidentiality is strictly maintained.  Use of any copyright  # !00000E0K
*#    notice does not imply unrestricted or public access to these   # !00000E0L
*#    materials.                                                     # !00000E0M
*#                                                                   # !00000E0N
*#    BASE24 (R) is a registered trademark of ACI Worldwide Inc.     # !00000E0O
*#                                                                   # !00000E0P
*##################################################################### !00000E0Q
*                                                                      !00000E0R
* Record of Changes:                                                   !00000E0S
*                                                                      !00000E0T
* Date        Person/Emp #                                             !00000E0U
* ---------   ------------                                             !00000E0V
                                                                       !00000E0W
                                                                       !00001E00
                                                                       !00001E01
                                                                       !00001E02
********************************************************************** !00041A03
*                        RELEASE 5.0                                 * !00041A04
********************************************************************** !00041A05
* 04/01/92       Release 5.0 Design Team                             # !00041A06
* SYMPTOM:       BASE24 Release 5.0 Enhancements                     # !00041A07
* PROBLEM:       (E) None.                                           # !00041A08
*                                                                    # !00041A09
* FIX:        1. Increased the SDFX.RCD-CNT field by 2 bytes.        # !00041A0A
*                                                                    # !00041A0B
* DEPENDENCIES:  All modules that source in the SDFX must be         # !00041A0C
*                recompiled.  Refer to the Release 5.0 Installation  # !00041A0D
*                Document for a complete list of the applicable      # !00041A0E
*                modules.                                            # !00041A0F
*                                                                    # !00041A0G
*    REFERENCE:  BASE24 Release 5.0 External Specifications          # !00041A0H
*                - Refresh Enhancements                              # !00041A0I
*                                                                    # !00041A0J
* 04/01/92       TLT (588)                                           # !00041A0K
* SYMPTOM:       BASE24 Release 5.0 Enhancements                     # !00041A0L
* PROBLEM:       (E) None.                                           # !00041A0M
* FIX:           Added alternate key and redefines for VISA          # !00041A0N
* DEPENDENCIES:  All modules that source in the SDF must be          # !00041A0O
*                recompiled.  Refer to the Release 5.0 Installation  # !00041A0P
*                Document for a complete list of the applicable      # !00041A0Q
*                modules.                                            # !00041A0R
*    REFERENCE:  ACI Generated.                                      # !00041A0S
*                                                                    # !00041A0T
                                                                       !00041B00
* 10/05/93       SLA , CHH/1811                                      # !00041B01
* SYMPTOM:       None                                                # !00041B02
* PROBLEM:       (E) None.                                           # !00041B03
* FIX:           Added fields required to support Visa's August      # !00041B04
*                requirements for Payment Service 2000 (PS2000).     # !00041B05
* DEPENDENCIES:  All modules that source in the SDF must be          # !00041B06
*                recompiled.                                         # !00041B07
* REFERENCE:     WO #SW930317-02.                                    # !00041B08
*                                                                    # !00041B09
* 06/01/94        t.white/730 , CHH/1811                             # !00041B0A
* SYMPTOM:        None.                                              # !00041B0B
* PROBLEM:        (V) Enhanced the VisaNet ISO Interface to support  # !00041B0C
*                 PaymentService 2000 for 1994.                      # !00041B0D
* FIX:            Modified visa-supp-info to add two fields for      # !00041B0E
*                 PS2000 processing.                                 # !00041B0F
* DEPENDENCIES:   Apply fix to visas, visalibs, visag, ddlvisa, and  # !00041B0G
*                 ddlpstkn, ddlsdf and recompile and bind.           # !00041B0H
* REFERENCE:      RPW #931129-001.                                   # !00041B0I
                                                                       !00041C00
* 03DEC1997   RKK/299                                                # !00041C01
* Symptom:    March 1998 Visa Mandates Enhancement                   # !00041C02
* Problem:    None.                                                  # !00041C03
* Fix:        Added adnl-data-ind to visa-acq                        # !00041C04
* Dependency: Apply fixes to DDLs, add corresponding fixes to        # !00041C05
*             VISADDLS, VISALIBS, SCRNVSDF and RQVSDFS.              # !00041C06
*             Remake.                                                # !00041C07
* Reference:  WO #971028-1                                           # !00041C08
                                                                       !00041D00
* 19JUL1999   NP/1618  JEM/1695                                      # !00041D01
* Symptom:    VisaNet April 1999 Mandates                            # !00041D02
* Problem:    None.                                                  # !00041D03
* Fix:        Added Subfield 62.18, Excluded Transaction Identifier  # !00041D04
* Dependency: Apply fixes to VISAS, VISALIBS, VISAFMTS, VISAMSGS,    # !00041D05
*             VISAG, VISADDLS, DDLSDF, SCRNVSDF, SCRNVCRC, RQVSDFS,  # !00041D06
*             RQVCRCS and re-make. Run conversion on ILF and also    # !00041D07
*             replace VISALOGM, VISAUPDT and VISAMAN files.          # !00041D08
* Reference:  None.  (retro of SW5P031 from WO #981120-02)           # !00041D09
                                                                       !00041E03
* 27MAR2000   JFP/1694 JFP/1694                                        !00041E04
* Symptom:    VisaNet June 2000 Mandates                               !00041E05
* Problem:    None.                                                    !00041E06
* Fix:        Added the Service Development field to the VISA          !00041E07
*             supplemental field of the SDF.                           !00041E08
* Dependency: Apply changes to VISADDLS, VISALIBS, VISAFMTS, DDLSDF,   !00041E09
*             RQVSDFS, and SCRNVSDF and re-MAKE.  Replace VISALOGM,    !00041E0A
*             VISAUPDT, and VISAMAN.                                   !00041E0B
* Reference:  Retro of SW5P203 from WO #991231-01.                     !00041E0C
                                                                       !00041F00
* 20AUG2001   EDA/2121    jds/1802                                     !00041F01
* Symptom:    Check Authorization Support in Visa Interface and SPDH.  !00041F02
* Problem:    None.                                                    !00041F03
* Fix:        Added support for the POS Check Service Chargeback and   !00041F04
*             Chargeback reversal messages.                            !00041F05
* Dependency: Apply fix to DDLSDF and remake.                          !00041F06
* Reference:  Retro of SCN SW5P543 from WO #001013-05.                 !00041F07
                                                                       !00041G00
* 19AUG2002   cal/283                                                  !00041G01
* Symptom:    October 2002 Mandates                                    !00041G02
* Problem:    None                                                     !00041G03
* Fix:        Modified code to support Visa October 2002 mandates.     !00041G04
*             Added fields fpi and mrch-vrfcn-val.                     !00041G05
* Dependency: Apply fix to DDLSDF.  Apply corresponding fixes to       !00041G06
*             RQVSDFS, RQVCRCS, SCRNVSDF, VISADDLS, VISAFMTS,          !00041G07
*             VISAG, VISALIBS, VISAMM, VISAMSGS, VISAS, VISAEMVS and   !00041G08
*             VISIS.  Replace VISALOGM, VISAMAN and VISAUPDT.  Run     !00041G09
*             MAKE.                                                    !00041G0A
* Reference:  WO #020424-01                                            !00041G0B
                                                                       !00041H00
* 03JAN2003   kjw/571                                                  !00041H01
* Symptom:    Field 137 (application transaction counter) is not sent  !00041H02
*             in 0220 SDF adjustment transactions.                     !00041H03
* Problem:    The field is not available for entry in the SDF screen.  !00041H04
* Fix:        Add field 137 (ATC) to SDF adjustment screen and format  !00041H05
*             the field in the SEM if present from SDF record.         !00041H06
*             Added field:    app-tran-ctr                             !00041H07
* Dependency: Apply fixes to VISAFMTS, VISAEMVS, VISAD, SCRNVSDF,      !00041H08
*             RQVSDFS, SW60SDF.DDLSDF.                                 !00041H09
*             Replace VISAMAN and re-MAKE.                             !00041H0A
* Reference:  Case #354278.                                            !00041H0B
                                                                       !00041H0C
                                                                       !00041I00
* 19FEB2003   DOO/1693                                                 !00041I01
* Symptom:    Visa April 2003 Mandates.                                !00041I02
* Problem:    None.                                                    !00041I03
* Fix:        Added two new fields, RTI and FEEFUND-INFO-TXT, to the   !00041I04
*             VISA-SUPP-INFO define.                                   !00041I05
* Dependency: Apply fixes to VISADDLS, VISAFMTS, VISAG, VISAMSGS,      !00041I06
*             VISALIBS, VISAS, DDLSDF, SCRNRLF, SCRNVSDF, RQRLFS,      !00041I07
*             RQVCRCS, RQVSDFS, and SVRLFS and re-MAKE.  Replace       !00041I08
*             VISALOGM, VISAMAN and VISAUPDT.                          !00041I09
* Reference:  WO #021115-01                                            !00041I0A
                                                                       !00041J00
* 08AUG2003   cal/283                                                  !00041J01
* Symptom:    Alpha data not allowed in FPI field.                     !00041J02
* Problem:    Visa changed the Fee Program Indicator from a strictly   !00041J03
*             numeric field to an alphanumeric field.                  !00041J04
* Fix:        Changed the data declaration for FPI to pic x.           !00041J05
* Dependency: Apply fix to DDLSDF, RQVSDFS and SCRNVSDF.  Run MAKE.    !00041J06
* Reference:  Case #353761                                             !00041J07
                                                                       !00041K00
* 16AUG2004   sanderj                                                  !00041K01
* Symptom:    Visa October 2004 Mandates.                              !00041K02
* Problem:    None.                                                    !00041K03
* Fix:        Added a new field, tran-fee, to the definition.          !00041K04
* Dependency: Apply fix to DDLATTKN, DDLPSTKN, DDLSDF, PSCOUTLS,       !00041K05
*             RQRLFS, RQVCRCS, RQVSDFS, RQPTLS, SCRNPTL, SCRNVSDF,     !00041K06
*             SVPTLS, VISADDLS, VISAEMVS, VISAFMTS, VISAG, VISAMSGS,   !00041K07
*             VISAS and VISPS.  Replace files VISALOGM, VISAMNWD and   !00041K08
*             VISAUPDT.  Run MAKE.                                     !00041K09
* Reference:  WO #040515-02.                                           !00041K0A
                                                                       !00041K0B
                                                                       !00041L00
* 30SEP2005   owallad                                                  !00041L01
* Symptom:    Visa SDF Requester Updates.                              !00041L02
* Problem:    None.                                                    !00041L03
* Fix:        Added support for the following new DEs within the       !00041L04
*             VISA-SUPP-INFO definition.                               !00041L05
*               - TERMINAL CAPIBILITY PROFILE (DE 130)                 !00041L06
*               - TERMINAL VERIFICATION RESULTS (DE 131)               !00041L07
*               - UNPREDICTABLE NUMBER (DE 132)                        !00041L08
*               - CRYPTOGRAM(DE 136)                                   !00041L09
*               - APPLICATION INTERCHANGE PROFILE (DE 138)             !00041L0A
*               - CRYPTOGRAM TRANSACTION TYPE (DE 144)                 !00041L0B
*               - TERMINAL COUNTRY CODE (DE 145)                       !00041L0C
*               - TERMINAL TRANSACTION DATE (DE 146)                   !00041L0D
*               - CRYPTOGRAM AMOUNT (DE 147)                           !00041L0E
*               - CRYPTOGRAM CURRENCY CODE (DE 148)                    !00041L0F
*             Modified section:  SDFD                                  !00041L0G
* Dependency: Apply fix to DDLSDF and run MAKE.                        !00041L0H
* Reference:  WO #050303-01                                            !00041L0I
                                                                       !00041L0J
                                                                       !00041M00
* 23AUG2006   saderc                                                   !00041M01
* Symptom:    The modifications made per the Visa SDF Requester        !00041M02
*             Updates enhancement (WO #050303-01) were unnecessary.    !00041M03
* Problem:    None.                                                    !00041M04
* Fix:        Removed the EMV fields added per Visa SDF Requesters     !00041M05
*             Updates enhancement.                                     !00041M06
* Dependency: Apply fix to DDLSDF, RQVSDFS, SCRNVSDF, VISAD, VISAEMVS  !00041M07
*             and VISAFMTS.  Run MAKE.                                 !00041M08
* Reference:  Case #417410                                             !00041M09
                                                                       !00041M0A
* 23AUG2006   saderc                                                   !00041M0B
* Symptom:    VisaNet October 2006 Mandates and VisaNet April          !00041M0C
*             2006 Last Minute Updates.                                !00041M0D
* Problem:    None                                                     !00041M0E
* Fix:        Added a redefine to MSG-TXT within the VISA-SUPP-INFO    !00041M0F
*             definition.                                              !00041M0G
* Dependency: Replace VISALOGM, VISAMNWD and VISAUPDT.  Apply fixes    !00041M0H
*             to IPF3DDLS, VISREFRS, BATKNCVS, BAUTILS, OKLIBTS,       !00041M0I
*             BATKNID, DDLBATKN, COBTKN, DDLSDF, RQRLFS, RQVCRCS,      !00041M0J
*             RQVSDFS, SCRNRLF, SCRNVSDF, VISADDLS, VISAFMTS,          !00041M0K
*             VISAG, VISALIBS and VISAS.  Run MAKE.                    !00041M0L
* Reference:  WO #060521-01 and WO #060325-02                          !00041M0M
                                                                       !00041M0N
                                                                       !00041J08
                                                                       !00041I0B
                                                                       !00041G0C
                                                                       !00041G0D
                                                                       !00041F08
                                                                       !00041E0D
                                                                       !00041D0A
                                                                       !00041C09
                                                                       !00041N00
* 15FEB2007   HUAC                                                     !00041N01
* Symptom:    VisaNet April 2007 Mandates and VisaNet October 2006     !00041N02
*             Optional Enhancements.                                   !00041N03
* Problem:    None                                                     !00041N04
* Fix:        Added bus-appl-id to supp-info to support Business       !00041N05
*             Application Identifier in Adjustment, Chargeback and     !00041N06
*             Representment messages.                                  !00041N07
* Dependency: Replace VISALOGM, VISAMNWD and VISAUPDT.                 !00041N08
*             Apply fixes to DDLPSTKN, DDLSDF, RQVSDFS, SCRNVSDF,      !00041N09
*             SVVSDFS, VISADDLS, VISAFMTS, VISAG, VISALIBS, VISAMSGS   !00041N0A
*             and VISPS.  Run Make.                                    !00041N0B
* Reference:  WO #061027-01 and WO #060531-01.                         !00041N0C
                                                                       !00041N0D
                                                                       !00041O00
* 08FEB2008   SaderC                                                   !00041O01
* Symptom:    VisaNet April 2008 Mandates                              !00041O02
* Problem:    None.                                                    !00041O03
* Fix:        Replace the existing PMC-ID field with USER-FLD-ACI      !00041O04
*             in MISC-VISA-INFO of SDFD.                               !00041O05
* Dependency: Apply fixes to DDLBATKN, DDLPSTKN, DDLSDF, PSTKNCVS,     !00041O06
*             RP09VISS, RQVCRCS, RQVIIFS, RQVSDFS, SCRNVCRC,           !00041O07
*             SCRNVIIF, SCRNVSDF, SVVSDFS, SUBTPTBL, VISAD, VISADDLS,  !00041O08
*             VISAEMVS, VISAFMTS, VISAG, VISALIBS, VISAMSGS, VISAS,    !00041O09
*             VISIS and VISPS. Run Make.  Replace VISALOGM, VISAMNWD   !00041O0A
*             and VISAUPDT.                                            !00041O0B
* Reference:  WO #071025-01                                            !00041O0C
                                                                       !00041O0D
                                                                       !00041P00
* 24MAR2008   huac                                                     !00041P01
* Symptom:    VisaNet Healthcare Update for April 2008                 !00041P02
* Problem:    None.                                                    !00041P03
* Fix:        Added MKT-SPFC-DATA-ID and USER-FLD-ACI to               !00041P04
*             VISA-SUPP-INFO.  Removed EMV-DATA-USERFLD-1 and          !00041P05
*             EMV-DATA-USERFLD-2 from EMV-DATA.                        !00041P06
* Dependency: Apply fix to RQVSDFS, SCRNVSDF, VISAFMTS, VISAG,         !00041P07
*             DDLSDF and SVVSDFS.  Run Make.  Replace VISAMNWD         !00041P08
*             and VISAUPDT.                                            !00041P09
* Reference:  WO #080227-01.                                           !00041P0A
                                                                       !00041P0B
                                                                       !00041Q00
* 05OCT2010   engelk                                                   !00041Q01
* Symptom:    EMV tag 9F33, Terminal Capability Profile, was not       !00041Q02
*             included in chargebacks and representments.              !00041Q03
* Problem:    In order to take advantage of VISA's chip incentive      !00041Q04
*             program, EMV tag 9F33 is required, but there was no      !00041Q05
*             place to enter this data on chargeback and representment !00041Q06
*             SDF screens.  There was also no place to store this      !00041Q07
*             information in the SDF.                                  !00041Q08
* Fix:        Added EMV tag 9F33 to the SDF definition as part of the  !00041Q09
*             VISA-SUPP-INFO redefine.                                 !00041Q0A
* Dependency: Apply fixes to SW60SDF.DDLSDF, SCRNVSDF, RQVSDFS,        !00041Q0B
*             SVVSDFS, VISAFMTS, VISAD, and VISAEMVS.  Replace         !00041Q0C
*             VISAMNWD.  Run Make.                                     !00041Q0D
* Reference:  Case #1085605                                            !00041Q0E
                                                                       !00041Q0F
                                                                       !00041R00
* 25FEB2011   gruberg                                                  !00041R01
* Symptom:    Visa April 2011 Business Enhancements                    !00041R02
* Problem:    None                                                     !00041R03
* Fix:        Added DCC-IND to VISA-SUPP-INFO.  Decremented the        !00041R04
*             USER-FLD-ACI by 1 byte.                                  !00041R05
* Dependency: Apply fix to DDLSDF and run Make.                        !00041R06
* Reference:  WO #PR001172                                             !00041R07
                                                                       !00041R08
*********************************************************************# !00041B0J
                                                                       !00041B0K
?section sdfd
?page "sdfd"
                                                                       !00041B0P
                                                                       !00041B0Q
                                                                       !00041B0R
                                                                       !00041B0S
*******************************************************************   !!00047
*                                                                 *   !!00048
*   SDFD is used for the format of the SDF File records for NEN,  *   !!00049
*   INTERLINK and VISANET and is also used in the SDFX Refresh    *   !!00050
*   Tape Record Layout (See section sdfx below).                  *   !!00051
*                                                                 *   !!00052
*******************************************************************   !!00053
                                                                       !00054
DEF sdfd.                                                              !00055
                                                                       !00056
*                                                                     !!00057
* Switch type                                                         !!00058
*   This field is used by the interface processes to determine whether!!00059
*   or not this SDF record belongs to the interface.  Valid switch    !!00060
*   types are:                                                        !!00061
*                                                                     !!00062
*       "LINK" = INTERLINK                                            !!00063
*       "NEN " = NEN                                                  !!00064
*       "VISA" = VISANET                                              !!00065
*                                                                     !!00066
  02  swi-typ                          pic x(4).                       !00067
                                                                       !00067A00
                                                                       !00067A01
  02  key-data.                                                        !00067A02
      05  byte                         pic x(34).                      !00067A03
                                                                       !00067A04
  02  k-dat                            redefines key-data.             !00067A05
                                                                       !00067A06
*                                                                     !!00068
* Message Type                                                        !!00069
*   This field is defined by interface processes as follows:          !!00070
*                                                                     !!00071
*       INTERLINK                                                     !!00072
*                                                                     !!00073
*           "0200" = regular debit request, sales draft               !!00074
*           "0220" = representation                                   !!00075
*           "0422" = charge back                                      !!00076
*           "0600" = CAS administrative request                       !!00077
*           "0602" = MIS administrative request                       !!00078
*                                                                     !!00079
*           Maps into INTERLINK's bit map position = N/A              !!00080
*                                                                     !!00081
*       NEN                                                           !!00082
*                                                                     !!00083
*           "0200" = regular debit request, sales draft or            !!00084
*                      representation                                 !!00085
*           "0402" = charge back                                      !!00086
*                                                                     !!00087
*           Maps into NEN's bit map position = N/A                    !!00088
*                                                                     !!00089
*       VISANET                                                       !!00090
*                                                                     !!00091
*           "0200" = regular debit request                            !!00092
*           "0220" = representation, funds disbursements,             !!00093
                                                                       !00094A00
*                    fee collections, adjustments                     !
*           "0422" = chargebacks, funds disbursements,                 !00094A03
*                    fee collections                                   !00094A04
                                                                       !00094A05
                                                                       !00095A00
                                                                       !00095A01
*                                                                     !!00096
*           Maps into VisaNet's bit map position = N/A                !!00097
*                                                                     !!00098
*                                                                     !!00099
                                                                       !00100A00
  05  typ                              pic x(4).                       !00100A01
                                                                       !00100A02
                                                                       !00101
*                                                                     !!00102
* Primary Account Number                                              !!00103
*   This field is defined by interface processes as follows:          !!00104
*                                                                     !!00105
*       INTERLINK                                                     !!00106
*           Left justified and blank filled to the right, maximum     !!00107
*           length 20.                                                !!00108
*                                                                     !!00109
*           Maps into INTERLINK's bit map position = 2                !!00110
*                                                                     !!00111
*       NEN                                                           !!00112
*           Left justified and blank filled to the right, maximum     !!00113
*           length 19.                                                !!00114
*                                                                     !!00115
*           Maps into NEN's bit map position = 2                      !!00116
*                                                                     !!00117
*       VISANET                                                       !!00118
*           Left justified and blank filled to the right.         !   !!00119
*           If "59" card then maximum length can be 28.           !   !!00120
*                                                                     !!00121
*           Maps into VisaNet's bit map position = 2 or 34        !   !!00122
*                                                                     !!00123
                                                                       !00124A00
                                                                       !00124A01
  05  pan.                                                             !00124A02
      10  lgth                         pic x(2).                       !00124A03
      10  num                          pic x(28).                      !00124A04
                                                                       !00124A05
*                                                                     !!00127
* Processing Code                                                     !!00128
*   This field is defined by interface processes as follows:          !!00129
*       INTERLINK                                                     !!00130
*                                                                     !!00131
*           004000 = Goods and services from UNIVERSAL, sales draft   !!00132
*           9x0000 = Chargeback:                                      !!00133
*                    Reason for chargeback:                           !!00134
*                    0 - Copy/original not received                   !!00135
*                    1 - Missort                                      !!00136
*                    2 - Document unreadable                          !!00137
*                    3 - Special merchant                             !!00138
*                    4 - Unauthorized use                             !!00139
*                    5 - Transaction record not received              !!00140
*                    6 - Duplicate processing                         !!00141
*                    7 - Charge verified/miscellaneous                !!00142
*                    8 - Processing Error                             !!00143
*                    9 - Late presentation/Past time limit            !!00144
*                                                                     !!00145
*           Maps into INTERLINK's bit map position = 3                !!00146
*                                                                     !!00147
*       NEN                                                           !!00148
*                                                                     !!00149
*           Sales Draft and Representations                           !!00150
*                                                                     !!00151
*           00FF00 = Debit, goods and services - where                !!00152
*                          FF = 00 no account                         !!00153
*                               10 savings                            !!00154
*                               20 checking                           !!00155
*                               30 credit card                        !!00156
*                               31 credit line                        !!00157
*                                                                     !!00158
*           Sales Draft returns                                       !!00159
*                                                                     !!00160
*           2000TT = Credit, return/cancelation - where               !!00161
*                          TT = 00 no account                         !!00162
*                               10 savings                            !!00163
*                               20 checking                           !!00164
*                               30 credit card                        !!00165
*                               31 credit line                        !!00166
*                                                                     !!00167
*           Charge backs                                              !!00168
*                                                                     !!00169
*           AAFFTT   Where AA =  original  0200 action code           !!00170
*                                                                     !!00171
*                    Where FF =  original  0210 from account          !!00172
*                                                                     !!00173
*                    Where TT =  original  0210 to account            !!00174
*                                                                     !!00175
*           Maps into NEN's bit map position = 3                      !!00176
*                                                                     !!00177
*       VISANET                                                       !!00178
*                                                                     !!00179
*                                                                     !!00180
                                                                       !00181A00
*           Adjustments Requests                                !     !
                                                                       !00181A03
*                                                                     !!00182
                                                                       !00183A00
                                                                       !00183A01
*           AATT00 = Debit/Credit, adjustments - where                !
*                          AA = 02 debit adjustment                    !00183A04
*                               22 credit adjustment                   !00183A05
*                                                                      !00183A06
*                          TT = 00 no account                         !
                                                                       !00183A09
*                               10 savings                            !!00185
*                               20 checking                           !!00186
*                               30 credit card                        !!00187
*                               40 universal                          !!00188
*                                                                     !!00189
*           Fee Collections                                     !     !!00190
*                                                                     !!00191
*           1900FF = Debit, fee collections - where             !     !!00192
*                          FF = 00 no account                   !     !!00193
*                               10 savings                      !     !!00194
*                               20 checking                     !     !!00195
*                               30 credit card                  !     !!00196
*                               40 universal                    !     !!00197
*                                                                     !!00198
                                                                       !00199A00
                                                                       !00199A01
                                                                       !00199A02
*           Funds Disbursements                                 !     !!00208
*                                                                     !!00209
                                                                       !00210A00
*           29TT00 = Credit, funds disbursements - where        !     !
                                                                       !00210A03
*                          TT = 00 no account                   !     !!00211
*                               10 savings                      !     !!00212
*                               20 checking                     !     !!00213
*                               30 credit card                  !     !!00214
*                               40 universal                    !     !!00215
*                                                                     !!00216
                                                                       !00216A00
*           Sales Drafts                                               !00216A01
*                                                                      !00216A02
*           AATT00 = Debit, sales draft - where                        !00216A03
*                          AA = 00 purchase                            !00216A04
*                               17 scrip                               !00216A05
*                                                                      !00216A06
*                          TT = 00 no account                          !00216A07
*                               10 savings                             !00216A08
*                               20 checking                            !00216A09
*                               30 credit card                         !00216A0A
*                               40 universal                           !00216A0B
*                                                                      !00216A0C
                                                                       !00216A0D
*           Chargebacks and Representations                     !     !!00217
*                                                                     !!00218
*           AATTFF   Where AA =  original  0200 action code           !!00219
*                                                                     !!00220
*                    Where TT =  original  0210 to account            !!00221
*                                                                     !!00222
*                    Where FF =  original  0210 from account          !!00223
*                                                                     !!00224
*           Maps into VisaNet's bit map position = 3                  !!00225
*                                                                     !!00226
  02  proc-cde                         pic x(6).                       !00227
                                                                       !00228
*                                                                     !!00229
* Transaction Amount  (dollars and cents)                             !!00230
*   This field is defined by interface processes as follows:          !!00231
*                                                                     !!00232
*       INTERLINK                                                     !!00233
*           Maps into INTERLINK's bit map position = 4                !!00234
*                                                                     !!00235
*       NEN                                                           !!00236
*           Maps into NEN's bit map position = 4                      !!00237
*                                                                     !!00238
*       VISANET                                                       !!00239
*           Maps into VisaNet's bit map position = 4                  !!00240
*                                                                     !!00241
  02  tran-amt                         pic x(12).                      !00242
*                                                                     !!00243
* Terminal Transaction Time  (HHMMSS).                                !!00244
*   This field is defined by interface processes as follows:          !!00245
*                                                                     !!00246
*       INTERLINK                                                     !!00247
*           Used for Sales Draft only.                                !!00248
*                                                                     !!00249
*           Maps into INTERLINK's bit map position = 16               !!00250
*                                                                     !!00251
*       NEN                                                           !!00252
*           Used for Sales Draft only.                                !!00253
*                                                                     !!00254
*           Maps into NEN's bit map position = 12                     !!00255
*                                                                     !!00256
*       VISANET                                                       !!00257
*           Term-tim used for Debit Requests, maps into bit map  !    !!00258
*               position = 12.                                   !    !!00259
*           Trace-num used for Chargebacks and Representations   !    !!00260
*               maps into bit map position = 11.                 !    !!00261
*                                                                     !!00262
  02  term-tim                         pic x(6).                       !00263
*                                                                !    !!00264
  02  trace-num  redefines term-tim    pic x(6).                 !    !!00265
                                                                       !00266
*                                                                     !!00267
* Terminal Transaction Date  (MMDD).                                  !!00268
*   This field is defined by interface processes as follows:          !!00269
*                                                                     !!00270
*       INTERLINK                                                     !!00271
*           Used for Sales Draft only.                                !!00272
*                                                                     !!00273
*           Maps into INTERLINK's bit map position = 17               !!00274
*                                                                     !!00275
*       NEN                                                           !!00276
*           Used for Sales Draft only.                                !!00277
*                                                                     !!00278
*           Maps into NEN's bit map position = 13                     !!00279
*                                                                     !!00280
*       VISANET                                                       !!00281
*           Used for Debit Requests, Representations and              !!00282
*           Chargebacks.  From the original transaction for           !!00283
*           Representations and Chargebacks.                          !!00284
*                                                                     !!00285
*           Maps into Visanet's bit map position = 13           !     !!00286
*                                                                     !!00287
  02  term-dat                         pic x(4).                       !00288
                                                                       !00289
*                                                                     !!00290
* Conversion Rate of Card Issuer                                      !!00291
*   This field is defined by interface processes as follows:          !!00292
*                                                                     !!00293
*       INTERLINK                                                     !!00294
*           NOT USED.                                                 !!00295
*                                                                     !!00296
*       NEN                                                           !!00297
*           NOT USED.                                                 !!00298
*                                                                     !!00299
*       VISANET                                                       !!00300
                                                                       !00300A00
                                                                       !00300O00
                                                                       !00300O01
*           First 3 bytes are reserved by ACI for future use           !00300O02
*                                                                      !00300O03
                                                                       !00300O04
*                                                                      !00300A03
*           CNTY-CDE maps into the county code, bit map                !00300A04
*           position = 59.                                             !00300A05
                                                                       !00300A06
                                                                       !00301A00
                                                                       !00301A01
                                                                       !00301A02
*                                                                     !!00306
  02  conv-rate-crd-iss                pic x(8).                       !00307
                                                                       !00307A00
  02  misc-visa-info   redefines conv-rate-crd-iss.                    !00307A01
                                                                       !00307O00
      04  user-fld-aci                 pic x(3).                       !00307O01
                                                                       !00307O02
      04  cnty-cde                     pic x(3).                       !00307A03
      04  fwd-cntry-cde                pic x(3)                        !00307A04
          redefines cnty-cde.                                          !00307A05
      04  filler1                      pic x(2).                       !00307A06
                                                                       !00307A07
                                                                       !00308
*                                                                     !!00309
* Expiration Date  (YYMM).                                            !!00310
*   This field is defined by interface processes as follows:          !!00311
*                                                                     !!00312
*       INTERLINK                                                     !!00313
*           Sales Draft only.                                         !!00314
*                                                                     !!00315
*           Maps into INTERLINK's bit map position = 18               !!00316
*                                                                     !!00317
*       NEN                                                           !!00318
*           Sales Draft only.                                         !!00319
*                                                                     !!00320
*           Maps into NEN's bit map position = 14                     !!00321
*                                                                     !!00322
*       VISANET                                                       !!00323
*                                                                     !!00324
*           Debit Requests, Chargebacks and Representations.    !     !!00325
*           Maps into VisaNet's bit map position = 14           !     !!00326
*                                                                     !!00327
  02  exp-dat                          pic x(4).                       !00328
                                                                       !00329
*                                                                     !!00330
* Acquiring Institution Country Code                                  !!00331
*   This field is defined by interface processes as follows:          !!00332
*                                                                     !!00333
*       INTERLINK                                                     !!00334
*           NOT USED.                                                 !!00335
*                                                                     !!00336
*       NEN                                                           !!00337
*           NOT USED.                                                 !!00338
*                                                                     !!00339
*       VISANET                                                       !!00340
*           Used only in Debit Requests to BASE I.                    !!00341
*                                                                     !!00342
*           Maps into VisaNet's bit map position = 19                 !!00343
*                                                                     !!00344
  02  acq-cntry-cde                    pic x(3).                       !00345
                                                                       !00346
*                                                                     !!00347
* PAN Extended Country Code                                           !!00348
*   This field is defined by interface processes as follows:          !!00349
*                                                                     !!00350
*       INTERLINK                                                     !!00351
*           NOT USED.                                                 !!00352
*                                                                     !!00353
*       NEN                                                           !!00354
*           NOT USED.                                                 !!00355
*                                                                     !!00356
*       VISANET                                                       !!00357
*           If this is a "59" card then this is required.             !!00358
*                                                                     !!00359
*           Maps into VisaNet's bit map position = 20                 !!00360
*                                                                     !!00361
  02  pan-cntry-cde                    pic x(3).                       !00362
                                                                       !00363
*                                                                     !!00364
* Point Of Service Entry Mode                                         !!00365
*   This field is defined by interface processes as follows:          !!00366
*                                                                     !!00367
*       INTERLINK                                                     !!00368
*           NOT USED.                                                 !!00369
*                                                                     !!00370
*       NEN                                                           !!00371
*           The point of service entry mode contains the following    !!00372
*           two sub-element identification codes :                    !!00373
*           PAN entry code indentifies the entry method of the PAN    !!00374
*           and card expiration date.                                 !!00375
*                                                                     !!00376
*               00  Unkown                                            !!00377
*               01  Manual                                            !!00378
*               02  Magnetic stripe read                              !!00379
*               03  Bar code read                                     !!00380
*               04  OCR code read                                     !!00381
*               05  integrated                                        !!00382
*                                                                     !!00383
*           PIN entry code is the capablilites of the point of service!!00384
*           terminal.                                                 !!00385
*                                                                     !!00386
*               0   unkown                                            !!00387
*               1   terminal can accept entry of PINs                 !!00388
*               2   terminal cannot accept entry of PINs              !!00389
*                                                                     !!00390
*           Maps into NEN's bit map position = 22                     !!00391
*                                                                     !!00392
*                                                                     !!00393
*       VISANET                                                       !!00394
*                                                                     !!00395
*           The point of service entry mode contains the following    !!00396
*           two sub-element identification codes :                    !!00397
*           PAN entry code indentifies the entry method of the PAN    !!00398
*           and card expiration date.                                 !!00399
*                                                                     !!00400
*               00  Unkown                                            !!00401
*               01  Manual                                            !!00402
*                                                                  !  !!00403
*               03  Bar code read                                     !!00404
*               04  OCR code read                                     !!00405
*                                                                  !  !!00406
*                                                                     !!00407
*           PIN entry code is the capablilites of the point of service!!00408
*           terminal.                                                 !!00409
*                                                                     !!00410
*               0   unkown                                            !!00411
*               1   terminal can accept entry of PINs                 !!00412
*               2   terminal cannot accept entry of PINs              !!00413
*               8   terminal PIN/PAD is down.                         !!00414
*                                                                     !!00415
*           Maps into VisaNet's bit map position = 22                 !!00416
*                                                                     !!00417
  02  pos-entry-mde.                                                   !00418
      04  pan-mde                      pic x(2).                       !00419
      04  pin-mde                      pic x(1).                       !00420
                                                                       !00421
*                                                                     !!00422
* SIC Code                                                            !!00423
*   This field is defined by interface processes as follows:          !!00424
*                                                                     !!00425
*       INTERLINK                                                     !!00426
*           Sales Draft only.                                         !!00427
*                                                                     !!00428
*           Maps into INTERLINK's bit map position = 22               !!00429
*                                                                     !!00430
*       NEN                                                           !!00431
*                                                                     !!00432
*           Maps into NEN's bit map position = 18                     !!00433
*                                                                     !!00434
*       VISANET                                                       !!00435
*                                                                     !!00436
*           Maps into VisaNet's bit map position = 18                 !!00437
*                                                                     !!00438
*                                                                     !!00439
  02  sic-cde                          pic x(4).                       !00440
                                                                       !00441
*                                                                     !!00442
* Network Identifier                                                  !!00443
*   This field is defined by interface processes as follows:          !!00444
*                                                                     !!00445
*       INTERLINK                                                     !!00446
*           NOT USED.                                                 !!00447
*                                                                     !!00448
*       NEN                                                           !!00449
*                                                                     !!00450
*           Maps into NEN's bit map position = 24                     !!00451
*                                                                     !!00452
*       VISANET                                                       !!00453
                                                                       !00453A00
*           002 - VISA                                                 !00453A01
*           003 - Interlink                                            !00453A02
*           004 - PLUS                                                 !00453A03
*                                                                      !00453A04
*           Maps into VISA's bit map position = 63.                    !00453A05
                                                                       !00453A06
                                                                       !00454A00
                                                                       !00454A01
                                                                       !00454A02
*                                                                     !!00456
  02  network-id                       pic x(3).                       !00457
                                                                       !00458
*                                                                     !!00459
* Point of Transaction Special Condition Code,                        !!00460
*   This field is defined by interface processes as follows:          !!00461
*                                                                     !!00462
*       INTERLINK                                                     !!00463
*                                                                     !!00464
*           Maps into INTERLINK's bit map position = 26               !!00465
*                                                                     !!00466
*       NEN                                                           !!00467
*                                                                     !!00468
*                                                                     !!00469
*     The point of service condition code contains the following      !!00470
*     three sub-element identification codes:                         !!00471
*           Terminal type                                             !!00472
*                  Terminal                                           !!00473
*                  type codes            Description                  !!00474
*                  ----------   --------------------------------------!!00475
*                      02       Unatteneded terminal  ( i.e. ATM )    !!00476
*                      04       Electronic cash register              !!00477
*                      07       Telephone device                      !!00478
*                      14       Attened terminal  ( i.e. POS )        !!00479
*                      15       Customer terminal  ( i.e. Home term. )!!00480
*                      16       Administrative terminal               !!00481
*                      51       Coupon dispenser                      !!00482
*                      52       Fuel dispenser                        !!00483
*                      53       Script writer                         !!00484
*                      54       Ticket dispenser                      !!00485
*                      55       Travellers cheque dispenser           !!00486
*                                                                     !!00487
*           Maps into NEN's bit map position = 25                     !!00488
*           Used to fill in the first two bytes.                      !!00489
*                                                                     !!00490
*       VISANET                                                       !!00491
*                                                                     !!00492
*             Condition                                               !!00493
*               code            Description                           !!00494
*             ---------  ---------------------------------------------!!00495
*                00      Normal presentment                           !!00496
*                01      Customer not present/sales draft manual entry!!00497
*                02      Unatteneded terminal  ( i.e. ATM )           !!00498
*                03      Merchant Suspicious of tran                  !!00499
*                04      Electronic cash register                     !!00500
*                05      Customer present, card not present           !!00501
*                06      Pre-authorized financial request             !!00502
*                07       Telephone device                            !!00503
*                08             Mail or telephone order               !!00504
*                09             Security alert                        !!00505
*                10             Customer identity verified            !!00506
*                11             Suspected fraud                       !!00507
*                12             Security reasons                      !!00508
*                13             Respresentation of a purchase request !!00509
*                17             Returned item ( charge back )         !!00510
*                                                                     !!00511
*           Maps into VisaNet's bit map position = 25                 !!00512
*                                                                     !!00513
  02  point-tran-spec                  pic x(2).                       !00514
*                                                                     !!00515
* Point Of Transaction Entry Mode                                     !!00516
*   This field is defined by interface processes as follows:          !!00517
*                                                                     !!00518
*       INTERLINK                                                     !!00519
*                                                                     !!00520
*           Maps into INTERLINK's bit map position = 27               !!00521
*                                                                     !!00522
*       NEN                                                           !!00523
*                                                                     !!00524
*           Presentation type                                         !!00525
*             Type code      Description                              !!00526
*             ---------  ---------------------------------------------!!00527
*                00      Normal presentment                           !!00528
*                01      Customer not present/sales draft manual entry!!00529
*                05      Customer present, card not present           !!00530
*                06      Pre-authorized financial request             !!00531
*                13      Respresentation of a purchase request        !!00532
*           Security condition                                        !!00533
*             Condition                                               !!00534
*               code         Description                              !!00535
*             ---------  ---------------------------------------------!!00536
*                00      Normal                                       !!00537
*                03      Merchant suspicious of transaction           !!00538
*                10      Customer identity verified                   !!00539
*                11      Suspected fraud                              !!00540
*                                                                     !!00541
*           Maps into NEN's bit map position = 25                     !!00542
*           Used to fill in the last 4 bytes.                         !!00543
*                                                                     !!00544
*       VISANET                                                       !!00545
                                                                       !00545A00
*               Positions 1-2: Pan and date entry mode                 !00545A01
*                                                                      !00545A02
*                  00      Unknown                                     !00545A03
*                  01      Manual (key entry)                          !00545A04
*                  02      Magnetic stripe read                        !00545A05
*                  03      Bar code read                               !00545A06
*                  04      OCR coding read                             !00545A07
*                  05      Integrated circuit card read                !00545A08
*                                                                      !00545A09
*               Position 3: Pin entry capability                       !00545A0A
*                                                                      !00545A0B
*                  0       Unknown                                     !00545A0C
*                  1       Terminal can accept PINs                    !00545A0D
*                  2       Terminal cannot accept entry of PINs        !00545A0E
*                  8       Terminal PIN pad is down                    !00545A0F
*                  9       Accepts PINs and encryptes them using       !00545A0G
*                          derived keys                                !00545A0H
*                                                                      !00545A0I
*               Position 4: Zero value                                 !00545A0J
*                                                                      !00545A0K
                                                                       !00545A0L
                                                                       !00546A00
                                                                       !00546A01
                                                                       !00546A02
  02  entry-mode                       pic x(4).                       !00549
                                                                       !00550
* Member Number                                                       !!00551
*   This field is defined by interface processes as follows:          !!00552
*                                                                     !!00553
*       INTERLINK                                                     !!00554
*                                                                     !!00555
*           Maps into INTERLINK's bit map position = 29               !!00556
*                                                                     !!00557
*       NEN                                                           !!00558
*           NOT USED.                                                 !!00559
*                                                                     !!00560
*       VISANET                                                       !!00561
*           If present in the original transaction.                   !!00562
*                                                                     !!00563
*           Maps into VisaNet's bit map position = 23                 !!00564
*                                                                     !!00565
*                                                                     !!00566
  02  member-num                       pic x(2).                       !00567
                                                                       !00568
                                                                       !00568K00
*                                                                      !00568K01
* Transaction Fee                                                      !00568K02
*   This field is defined by interface processes as follows:           !00568K03
*       VISANET                                                        !00568K04
*                                                                      !00568K05
*           Maps into VISA's bit map position = 28                     !00568K06
*           1 ebcdic sign char + 8 ebcdic numeric characters           !00568K07
*                                                                      !00568K08
*           ind is a c(credit) or d(debit)                             !00568K09
*                                                                      !00568K0A
  02 tran-fee.                                                         !00568K0B
         04 ind                        pic x.                          !00568K0C
         04 amt                        pic 9(8).                       !00568K0D
                                                                       !00568K0E
*                                                                     !!00569
* Acquiring Institution Identifier                                    !!00570
*   This field is defined by interface processes as follows:          !!00571
*                                                                     !!00572
*       INTERLINK                                                     !!00573
*           Left Justified and blank filled to the right.             !!00574
*                                                                     !!00575
*           Maps into INTERLINK's bit map position = 30               !!00576
*                                                                     !!00577
*       NEN                                                           !!00578
*           Left Justified and blank filled to the right,             !!00579
*           maximum length is 11.                                     !!00580
*                                                                     !!00581
*           Maps into NEN's bit map position = 32                     !!00582
*                                                                     !!00583
*       VISANET                                                       !!00584
*           Left Justified and blank filled to the right,             !!00585
*           maximum length is 11.  This is the BIN of the insti- !    !!00586
*           tution that originally acquired the transaction.     !    !!00587
*                                                                     !!00588
*           Maps into VisaNet's bit map position = 32                 !!00589
*                                                                     !!00590
*                                                                     !!00591
  02  acq-inst.                                                        !00592
      04  lgth                         pic x(2).                       !00593
      04  num                          pic x(12).                      !00594
                                                                       !00595
*                                                                     !!00596
* Retrieval Reference Number                                          !!00597
*   This field is defined by interface processes as follows:          !!00598
*                                                                     !!00599
*       INTERLINK                                                     !!00600
*                                                                     !!00601
*           Maps into INTERLINK's bit map position = 35               !!00602
*                                                                     !!00603
*       NEN                                                           !!00604
*           Format of YYMMDDnnnnnn.                                   !!00605
*                                                                     !!00606
*           Maps into NEN's bit map position = 37                     !!00607
*                                                                     !!00608
*       VISANET                                                       !!00609
*                                                                     !!00610
*           Format of YDDDnnnnnnnn - for VDCS transactions            !!00611
*           Format of MMDDnnnnnnnn - for BASE transactions            !!00612
*                                                                     !!00613
*           Maps into VisaNet's bit map position = 37                 !!00614
*                                                                     !!00615
*                                                                     !!00616
  02  ref-num                          pic x(12).                      !00617
                                                                       !00618
*                                                                     !!00619
* merchant identifier                                                 !!00620
*   This field is defined by interface processes as follows:          !!00621
*                                                                     !!00622
*       INTERLINK                                                     !!00623
*                                                                     !!00624
*           Maps into INTERLINK's bit map position = 40               !!00625
*                                                                     !!00626
*       NEN                                                           !!00627
*                                                                     !!00628
*           Maps into NEN's bit map position = 42                     !!00629
*                                                                     !!00630
*       VISANET                                                       !!00631
*                                                                     !!00632
                                                                       !00633A00
*           PLUS timestamp, in hhmmssnnn.                             !
                                                                       !00633A03
*                                                                     !!00634
  02  merch-id                         pic x(15).                      !00635
                                                                       !00636
*                                                                     !!00637
* Merchant Name and Location/City and State                           !!00638
*   This field is defined by interface processes as follows:          !!00639
*                                                                     !!00640
*       INTERLINK                                                     !!00641
*           Sales Draft only, in this format:                         !!00642
*                                                                     !!00643
*               reg-e-loc  for 23 bytes                               !!00644
*               city       for 13 bytes                               !!00645
*               state      for  2 bytes                               !!00646
*               country    for  2 bytes                               !!00647
*                                                                     !!00648
*           Maps into INTERLINK's bit map position = 41               !!00649
*                                                                     !!00650
*       NEN                                                           !!00651
*           In this format:                                           !!00652
*                                                                     !!00653
*               reg-e-loc  for 23 bytes                               !!00654
*               city       for 13 bytes                               !!00655
*               state      for  2 bytes                               !!00656
*               country    for  2 bytes                               !!00657
*                                                                     !!00658
*           Maps into NEN's bit map position = 43                     !!00659
*                                                                     !!00660
*       VISANET                                                       !!00661
*           Debit Requests and Representations, In this format:  !    !!00662
*                                                                     !!00663
*               reg-e-loc  for 25 bytes                               !!00664
*               city       for 13 bytes                               !!00665
*               country    for  2 bytes                               !!00666
*                                                                     !!00667
*           Maps into VisaNet's bit map position = 43                 !!00668
*                                                                     !!00669
  02  merch-reg-e                      pic x(40).                      !00670
                                                                       !00671
*                                                                     !!00672
* Card Acceptor Terminal Identification                               !!00673
*   This field is defined by interface processes as follows:          !!00674
*                                                                     !!00675
*       INTERLINK                                                     !!00676
*                                                                     !!00677
*           NOT USED.                                                 !!00678
*                                                                     !!00679
*       NEN                                                           !!00680
*                                                                     !!00681
*           Maps into NEN's bit map position = 41                     !!00682
*                                                                     !!00683
*       VISANET                                                       !!00684
*                                                                     !!00685
                                                                       !00686A00
*           Maps into VISA's bit map position = 41                    !
                                                                       !00686A03
*                                                                     !!00687
  02  crd-acpt-term-id                 pic x(8).                       !00688
                                                                       !00689
*                                                                     !!00690
* Card Acceptor Identification Code                                   !!00691
*   This field is defined by interface processes as follows:          !!00692
*                                                                     !!00693
*       INTERLINK                                                     !!00694
*                                                                     !!00695
*           NOT USED.                                                 !!00696
*                                                                     !!00697
*       NEN                                                           !!00698
*                                                                     !!00699
*           Maps into NEN's bit map position = 42                     !!00700
*                                                                     !!00701
*       VISANET                                                       !!00702
*                                                                     !!00703
                                                                       !00704A00
*           Maps into VISA's bit map position = 42                    !
                                                                       !00704A03
*                                                                     !!00705
  02  crd-acpt-id-cde                  pic x(15).                      !00706
                                                                       !00707
*                                                                     !!00708
* Response Code                                                       !!00709
*   This field is defined by interface processes as follows:          !!00710
*                                                                     !!00711
*       INTERLINK                                                     !!00712
*                                                                     !!00713
*           NOT USED.                                                 !!00714
*                                                                     !!00715
*       NEN                                                           !!00716
*                                                                     !!00717
*           Maps into NEN's bit map position = 39                     !!00718
*                                                                     !!00719
*       VISANET                                                       !!00720
*                                                                     !!00721
*           NOT USED.                                                 !!00722
*                                                                     !!00723
  02  resp-cde                         pic x(2).                       !00724
                                                                       !00725
*                                                                     !!00726
* Currency Code, Transaction                                          !!00727
*   This field is defined by interface processes as follows:          !!00728
*                                                                     !!00729
*       INTERLINK                                                     !!00730
*                                                                     !!00731
*           NOT USED.                                                 !!00732
*                                                                     !!00733
*       NEN                                                           !!00734
*                                                                     !!00735
*           Maps into NEN's bit map position = 39                     !!00736
*                                                                     !!00737
*       VISANET                                                       !!00738
*                                                                     !!00739
*           Maps into VisaNet's bit map position = 49                 !!00740
*                                                                     !!00741
*                                                                     !!00742
  02  crncy-cde-tran                   pic x(3).                       !00743
                                                                       !00744
*                                                                     !!00745
* Private Field Number One                                            !!00746
*   This field is defined by interface processes as follows:          !!00747
*                                                                     !!00748
*       INTERLINK                                                     !!00749
*                                                                     !!00750
*           Maps into INTERLINK's bit map position = 61               !!00751
*                                                                     !!00752
*       NEN                                                           !!00753
*                                                                     !!00754
*           NOT USED.                                                 !!00755
*                                                                     !!00756
*       VISANET                                                       !!00757
*                                                                     !!00758
                                                                       !00759A00
*           Used for zip code in bit map position = 59                !
                                                                       !00759A03
*                                                                     !!00760
*                                                                     !!00761
  02  private1.                                                        !00762
      04  lgth                         pic x(2).                       !00763
      04  amount                       pic x(8).                       !00764
                                                                       !00764A00
  02  visa-private1                    redefines private1.             !00764A01
      04  zip-cde                      pic x(9).                       !00764A02
      04  filler1                      pic x.                          !00764A03
                                                                       !00764A04
                                                                       !00765
*                                                                     !!00766
* Time/Reason Code                                                    !!00767
*   This field is defined by interface processes as follows:          !!00768
*                                                                     !!00769
*       INTERLINK                                                     !!00770
*                                                                     !!00771
*           NOT USED.                                                 !!00772
*                                                                     !!00773
*       NEN                                                           !!00774
*                                                                     !!00775
*           NOT USED.                                                 !!00776
*                                                                     !!00777
*       VISANET                                                       !!00778
*                                                                     !!00779
                                                                       !00780A00
                                                                       !00780A01
                                                                       !00780A02
*           Maps into VISANET's bit map position = 63.3               !!00788
*                                                                     !!00789
*                                                                     !!00790
  02  tim-reason                       pic x(4).                       !00791
                                                                       !00792
  02  mis-cas-cde redefines tim-reason pic x(4).                       !00793
*                                                                     !!00794
* Replacement Amounts                                                 !!00795
*   This field is defined by interface processes as follows:          !!00796
*                                                                     !!00797
*       INTERLINK                                                     !!00798
*                                                                     !!00799
*           NOT USED.                                                 !!00800
*                                                                     !!00801
*       NEN                                                           !!00802
*                                                                     !!00803
*           Maps into NEN's bit map position = 95                     !!00804
*                                                                     !!00805
*       VISANET                                                       !!00806
*           Used as Other amount in Debit Requests.              !    !!00807
*                                                                     !!00808
*           Maps into VISANET's bit position = 61                     !!00809
                                                                       !00809A00
*                                                                      !00809A01
*           Used as Acquirer Business ID in Chargebacks and            !00809A02
*           Representations if present                                 !00809A03
*                                                                      !00809A04
*           Maps into VISANET's bit position = 63                      !00809A05
*                                                                      !00809A06
*           Used as Special Program Flag in Chargebacks if present     !00809A07
*               "03" = Express Payment Service                         !00809A08
*               "04" = Supermarket Incentive Program                   !00809A09
*                                                                      !00809A0A
*           Maps into VISANET's bit position = 63                      !00809A0B
                                                                       !00809A0C
*                                                                     !!00810
*                                                                     !!00811
                                                                       !00811D00
*           A code indicating that a transaction identifier is not     !00811D01
*           included in the transaction.                               !00811D02
*                                                                      !00811D03
*           Maps into VISANET's bit position = 62.18                   !00811D04
*                                                                      !00811D05
*                                                                      !00811D06
                                                                       !00811D07
  02  repl-amt.                                                        !00812
      04  tran                         pic x(12).                      !00813
                                                                       !00813A00
  02  visa-acq                         redefines repl-amt.             !00813A01
      04  bus-id                       pic x(8).                       !00813A02
      04  spcl-prgm-flg                pic x(2).                       !00813A03
                                                                       !00813C00
      04  adnl-data-ind                pic x.                          !00813C01
                                                                       !00813D00
      04  exclud-tran-id-rsn           pic x.                          !00813D01
                                                                       !00813D02
                                                                       !00813C03
                                                                       !00813C04
                                                                       !00813C05
                                                                       !00813A05
                                                                       !00814
*                                                                     !!00815
* Private Field Number Two                                            !!00816
*   This field is defined by interface processes as follows:          !!00817
*                                                                     !!00818
*       INTERLINK                                                     !!00819
*                                                                     !!00820
*           Maps into INTERLINK's bit map position = 62               !!00821
*                                                                     !!00822
*       NEN                                                           !!00823
*                                                                     !!00824
*           Length is not used.                                       !!00825
*                                                                     !!00826
*           Maps into NEN's bit map position = 62                     !!00827
*                                                                     !!00828
*       VISANET                                                       !!00829
*                                                                     !!00830
*           Debit Requests, Representations and Chargebacks.          !!00831
*           Length subfiled is not used.                              !!00832
*                                                                     !!00833
*           Maps into VISANET's bit map position = 59                 !!00834
*           NOT USED.                                                 !!00835
*                                                                     !!00836
*                                                                     !!00837
  02  private2.                                                        !00838
      04  lgth                         pic x(2).                       !00839
      04  st-cde                       pic x(2).                       !00840
                                                                       !00841
*                                                                     !!00842
* Private Field Number Three                                          !!00843
*   This field is defined by interface processes as follows:          !!00844
*                                                                     !!00845
*       INTERLINK                                                     !!00846
*                                                                     !!00847
*           Maps into INTERLINK's bit map position = 64               !!00848
*                                                                     !!00849
*       NEN                                                           !!00850
*                                                                     !!00851
*           NOT USED.                                                 !!00852
*                                                                     !!00853
*       VISANET                                                       !!00854
*                                                                     !!00855
*           Used in Representations for the Auth Id Resp field.       !!00856
*                                                                     !!00857
*           Maps into VisaNet's bit map position 38.                  !!00858
*                                                                     !!00859
  02  private4.                                                        !00860
      04  lgth                         pic x(2).                       !00861
      04  echo                         pic x(8).                       !00862
                                                                       !00863
*                                                                     !!00864
* Original Data Elements                                              !!00865
*   This field is defined by interface processes as follows:          !!00866
*                                                                     !!00867
*       INTERLINK                                                     !!00868
*                                                                     !!00869
*           In the following format:                                  !!00870
*               typ                          pic x(4).                !!00871
*               trace-num                    pic x(6).                !!00872
*               date-time                    pic x(10).               !!00873
*               zero2                        pic x(12).               !!00874
*               zero3                        pic x(12).               !!00875
*                                                                     !!00876
*           Maps into INTERLINK's bit map position = 102              !!00877
*                                                                     !!00878
*       NEN                                                           !!00879
*                                                                     !!00880
*           In the following format:                                  !!00881
*               typ                          pic x(4).                !!00882
*               tim                          pic x(6).                !!00883
*               dat                          pic x(4).                !!00884
*               trace-num                    pic x(12).               !!00885
*               filler                       pic x(18).               !!00886
*                                                                     !!00887
*           Maps into NEN's bit map position = 90                     !!00888
*                                                                     !!00889
*       VISANET                                                       !!00890
*                                                                     !!00891
*           Used in Chargebacks to BASE I issuer, from the original   !!00892
*           '0220' received from the BASE I issuer.                   !!00893
*           In the following format:                                  !!00894
*               typ                          pic x(4).                !!00895
*               trace-num                    pic x(23).               !!00896
*               filler                       pic x(15).               !!00897
                                                                       !00897A00
*                                                                      !00897A01
*           For Interlink messages:                                    !00897A02
*                                                                      !00897A03
*               typ                          pic x(4).                 !00897A04
*               trace-num                    pic x(6).                 !00897A05
*               acq-inst                     pic x(11).                !00897A06
*               fwd-inst                     pic x(11).                !00897A07
                                                                       !00897A08
*                                                                     !!00898
*           Maps into VISANET's bit map position = 90                 !!00899
*                                                                     !!00900
*                                                                     !!00901
  02  orig                                   pic x(44).                !00902
                                                                       !00903
*                                                                     !!00904
* Payee                                                               !!00905
*   This field is defined by interface processes as follows:          !!00906
*                                                                     !!00907
*       INTERLINK                                                     !!00908
*                                                                     !!00909
*           NOT USED.                                                 !!00910
*                                                                     !!00911
*       NEN                                                           !!00912
*                                                                     !!00913
*           Maps into NEN's bit map position = 98                     !!00914
*                                                                     !!00915
*       VISANET                                                       !!00916
*                                                                     !!00917
                                                                       !00917A00
*           Used for PLUS's contact for information.                   !00917A01
*                                                                      !00917A02
                                                                       !00917A03
                                                                       !00918A00
                                                                       !00918A01
                                                                       !00918A02
  02  payee                            pic x(25).                      !00921
                                                                       !00922
*                                                                     !!00923
* Receiving Institution Identification Code                           !!00924
*   This field is defined by interface processes as follows:          !!00925
*                                                                     !!00926
*       INTERLINK                                                     !!00927
*                                                                     !!00928
*           NOT USED.                                                 !!00929
*                                                                     !!00930
*       NEN                                                           !!00931
*                                                                     !!00932
*           NOT USED.                                                 !!00933
*                                                                     !!00934
*       VISANET                                                       !!00935
*                                                                     !!00936
*           Only needed if the issuer cannot be determined from    !  !!00937
*           the PAN in a Debit Request or Representation.          !  !!00938
*                                                                  !  !!00939
*           Used in a Chargeback if it was present in the original !  !!00940
*           transaction.                                           !  !!00941
*                                                                  !  !!00942
*           In a Fee Collection or Funds Disbursement message orig-!  !!00943
*           inated by a MIS (acquirer) this is the BIN of the is-  !  !!00944
*           uer that will receive the message.                     !  !!00945
*                                                                  !  !!00946
*           In a Fee Collection or Funds Disbursement message orig-!  !!00947
*           inated by a CAS (issuer) this is the BIN of the issuer !  !!00948
*           itself, and will be used as the forwarding instituiton !  !!00949
*           id.                                                    !  !!00950
*                                                                  !  !!00951
*           Maps into VISANET's bit map position = 100 or 33       !  !!00952
*                                                                     !!00953
                                                                       !00953A00
*           Used as Acquirer Business ID in Adjustments if present     !00953A01
*                                                                      !00953A02
*           Maps into VISANET's bit position = 63                      !00953A03
                                                                       !00953A04
*                                                                     !!00954
  02  iss-inst.                                                        !00955
      04  lgth                         pic x(3).                       !00956
      04  cde                          pic x(11).                      !00957
                                                                       !00957A00
  02  visa-adj                         redefines iss-inst.             !00957A01
      04  lgth                         pic x(3).                       !00957A02
      04  acq-bus-id                   pic x(8).                       !00957A03
      04  filler1                      pic x(3).                       !00957A04
                                                                       !00957A05
                                                                       !00958
*                                                                     !!00959
*   Supporting Information                                            !!00960
*   This field is defined by interface processes as follows:          !!00961
*                                                                     !!00962
*       INTERLINK                                                     !!00963
*                                                                     !!00964
*           Maps into INTERLINK's bit map position = 125              !!00965
*                                                                     !!00966
*       NEN                                                           !!00967
*                                                                     !!00968
*           NOT USED.                                                 !!00969
*                                                                     !!00970
*       VISANET                                                       !!00971
*                                                                     !!00972
*           If lgth subfield is not zero for a Fee Collection or      !!00973
*           Funds Disbursement message then the text will be inserted !!00974
*           into the message sent to VisaNet.                         !!00975
*                                                                     !!00976
*           Map into VisaNet's Bit Map Position 48.                   !!00977
                                                                       !00977B00
*                                                                      !00977B01
*           The visa-supp-info redefine will be used for Visa          !00977B02
*           chargebacks/chargeback reversals and representments.       !00977B03
*           Information in this field maps into VisaNet's Bit Map      !00977B04
*           Positions 33 Forwarding Institution Id, 62 Payment         !00977B05
*           Service Fields, 63.6 Chargeback Reduction/BASE II Flags    !00977B06
*           and Field 48 Additional Data Private.                      !00977B07
                                                                       !00977F00
*           Map MICR fields to S-125.                                  !00977F01
                                                                       !00977F02
                                                                       !00977B08
*                                                                     !!00978
  02  supp-info.                                                       !00979
      04  lgth                         pic x(3).                       !00980
                                                                       !00981L00
                                                                       !00981N00
      04  txt                          pic x(386).                     !00981N01
                                                                       !00981N02
                                                                       !00981L02
                                                                       !00981B00
  02  visa-supp-info redefines supp-info.                              !00981B01
      04  lgth                         pic x(3).                       !00981B02
      04  payment-srv-fld.                                             !00981B03
          06  ind                      pic x.                          !00981B04
          06  tran-id                  pic 9(15).                      !00981B05
          06  mult-clrng-seq-num       pic 9(2).                       !00981B06
          06  rqstd-pymnt-srvc         pic x.                          !00981B07
      04  vdcs-private.                                                !00981B08
          06  chgbk-bii-flags          pic x(7).                       !00981B09
          06  chgbk-bii-flag           redefines chgbk-bii-flags.      !00981B0A
              08 flr-lmt-ind           pic x.                          !00981B0B
              08 cwb-crb-ind           pic x.                          !00981B0C
              08 lcs-ind               pic x.                          !00981B0D
              08 mail-phone-ind        pic x.                          !00981B0E
              08 spcl-chgbk-ind        pic x.                          !00981B0F
              08 spcl-cond-ris         pic x.                          !00981B0G
              08 spcl-cond-merch       pic x.                          !00981B0H
      04  addl-data.                                                   !00981B0I
          06  fld-id                   pic x.                          !00981B0J
          06  usage-cde                pic x.                          !00981B0K
          06  doc-ind                  pic x.                          !00981B0L
          06  chgbk-ref-num            pic x(6).                       !00981B0M
          06  msg-txt                  pic x(50).                      !00981B0N
                                                                       !00981M00
          06  cntct-info-msg-txt redefines msg-txt.                    !00981M01
              08  cntct-info.                                          !00981M02
                  10  cntct-nam        pic x(15).                      !00981M03
                  10  cntct-phn-num    pic x(10).                      !00981M04
              08  atm-msg-txt          pic x(25).                      !00981M05
                                                                       !00981M06
      04  fwd-inst.                                                    !00981B0O
          06  lgth                     pic x(2).                       !00981B0P
          06  cde                      pic x(11).                      !00981B0Q
                                                                       !00981E00
      04  srvc-dvlp-ind.                                               !00981E01
          06 trnspndr-ind              pic x.                          !00981E02
          06 reln-partcpnt-ind         pic x.                          !00981E03
                                                                       !00981E04
                                                                       !00981E05
                                                                       !00981F00
      04  micr.                                                        !00981F01
          06  rttn                     pic x(9).                       !00981F02
          06  chk-num                  pic x(15).                      !00981F03
                                                                       !00981F04
                                                                       !00981G00
      04 payment-srv-fld-ext.                                          !00981G01
                                                                       !00981J00
         06 fpi                        pic x(3).                       !00981J01
                                                                       !00981J02
         06 mrch-vrfcn-val             pic x(10).                      !00981G03
                                                                       !00981G04
                                                                       !00981H00
                                                                       !00981L03
                                                                       !00981L04
                                                                       !00981L05
                                                                       !00981H04
                                                                       !00981H05
                                                                       !00981H06
                                                                       !00981P00
      04 emv-data.                                                     !00981P01
                                                                       !00981Q00
*                                                                      !00981Q01
*        Bit 130 (Terminal Capability Profile)                         !00981Q02
*                                                                      !00981Q03
         06 term-cap-prof              pic x(24).                      !00981Q04
                                                                       !00981Q05
         !                                                            !!00981P02
         ! Bit 137 (Application Transaction Counter)                  !!00981P03
         !                                                            !!00981P04
         06 app-tran-ctr               pic x(4).                       !00981P05
      04 mkt-spfc-data-id              pic x.                          !00981P06
                                                                       !00981R00
                                                                       !00981R01
      04 dcc-ind                       pic x.                          !00981R02
      04 user-fld-aci                  pic x(104).                     !00981R03
                                                                       !00981R04
                                                                       !00981Q08
                                                                       !00981Q09
                                                                       !00981Q0A
                                                                       !00981P08
                                                                       !00981P09
                                                                       !00981P0A
                                                                       !00981P0B
      04  bus-appl-id                  pic x(2).                       !00981N04
                                                                       !00981N05
      04  rti                          pic x(1).                       !00981I01
      04  feefund-info-txt             pic x(112).                     !00981I02
                                                                       !00981I03
                                                                       !00981I04
                                                                       !00981I05
                                                                       !00981H0A
                                                                       !00981G07
                                                                       !00981F06
                                                                       !00981F07
                                                                       !00981F08
                                                                       !00981E07
                                                                       !00981B0S
                                                                       !00982
end.                                                                   !00983
                                                                       !00984
                                                                       !00985
?section sdf
?page "sdf"
                                                                       !00990
RECORD  sdf.   FILE IS "SDF" relative.                                 !00991
                                                                       !00992
  DEF IS sdfd.                                                         !00993
                                                                       !00994
                                                                       !00994A00
  key "KD" is key-data   duplicates allowed.                           !00994A01
                                                                       !00994A02
END                                                                    !00995
                                                                       !00996
                                                                       !00997
?section sdfx
DEF  sdfx.                                                             !01000
                                                                       !01001
*   The record count, it should be one greater than the previous      !!01002
*   record.  The file header record is included in this count.        !!01003
                                                                       !01004
                                                                       !01005A00
  02  rcd-cnt                          pic 9(9).                       !01005A01
                                                                       !01005A02
  02  sdf-rcd                          type sdfd.                      !01006
                                                                       !01007
END                                                                    !01008
