**FIX2.28  12/23/11  DDLGTSS 6019 DDL    BA60DDL  BA0F072  S                 ***
**FIX2.28  09/30/11  DDLGTSS 6018 DDL    BA60DDL  BA0F053  R                 ***
**FIX2.28  12/02/08  DDLGTSS 6017 DDL    BA60DDL  BA0C377  Q                 ***
**FIX2.28  12/02/08  DDLGTSS 6016 DDL    BA60DDL  BA0C306  P                 ***
**FIX2.28  12/04/07  DDLGTSS 6015 DDL    BA60DDL  BA0B312  O                 ***
**FIX2.28  06/28/07  DDLGTSS 6014 DDL    BA60DDL  BA0B084  N                 ***
**FIX2.28  11/23/06  DDLGTSS 6013 DDL    BA60DDL  BA0A311  M                 ***
**FIX2.26  11/17/05  DDLGTSS 6012 DDL    BA60DDL  BA09316  L                 ***
**FIX2.24  07/07/05  DDLGTSS 6011 DDL    BA60DDL  BA09093  K                 ***
**FIX2.24  11/18/04  DDLGTSS 6010 DDL    BA60DDL  BA08273  J                 ***
**FIX2.23  05/27/04  DDLGTSS 6009 DDL    BA60DDL  BA08110  I                 ***
**FIX2.23  11/17/03  DDLGTSS 6008 DDL    BA60DDL  BA07317  H                 ***
**FIX2.23  11/10/03  DDLGTSS 6007 DDL    BA60DDL  BA07161  G                 ***
**FIX2.23  03/13/03  DDLGTSS 6006 DDL    BA60DDL  BA07010  F                 ***
**FIX2.23  02/13/03  DDLGTSS 6005 DDL    BA60DDL  BA06238  E                 ***
**FIX2.23  02/13/03  DDLGTSS 6004 DDL    BA60DDL  BA06231  D                 ***
**FIX2.23  02/06/03  DDLGTSS 6003 DDL    BA60DDL  BA06204  C                 ***
**FIX2.23  01/16/03  DDLGTSS 6002 DDL    BA60DDL  BA06191  B                 ***
**FIX2.23  01/09/03  DDLGTSS 6001 DDL    BA60DDL  BA06167  A                 ***
!*SEQ2.05  05/31/02  DDLGTSS 6000 DDL    BA60DDL                               !
                                                                       !00001
**********************************************************************!!00002
*                                                                    *!!00003
*                                BASE24                              *!!00004
*                                ------                              *!!00005
*                                                                    *!!00006
*                    DDLs for the TSS Command Messages               *!!00007
*                                                                    *!!00008
*                     Proprietary Software Product                   *!!00009
*                                                                    *!!00010
*                         ACI Worldwide Inc.                         *!!00011
*                       330 South 108th Avenue                       *!!00012
*                       Omaha, Nebraska  68154                       *!!00013
*                           (402) 390-7600                           *!!00014
*                                                                    *!!00015
*    Copyright by ACI Worldwide Inc. 2002                            *!!00016
*                                                                    *!!00017
*    All Rights Reserved.                                            *!!00018
*                                                                    *!!00019
**********************************************************************!!00020
*                                                                     !!00021
* Record of Changes:                                                  !!00022
*                                                                     !!00023
* Date        Person/Emp #                                            !!00024
* ---------   ------------                                            !!00025
?nocomments
**********************************************************************!!00028
*                   RELEASE 6.0                                      *!!00029
**********************************************************************!!00030
*                                                                     !!00031
* 01JUN2002   RKK/299                                                 !!00032
* Symptom:    Transaction Security Services Enhancement               !!00033
* Problem:    None.                                                   !!00034
* Fix:        New records created for Release 6.0.                    !!00035
* Dependency: Apply fixes to BADDLM, BADDLMM and DDLGTSS and run      !!00036
*             MAKE.                                                   !!00037
* Reference:  WO #000211-01                                           !!00038
                                                                       !00038A00
* 30DEC2002   CHH/174                                                  !00038A01
* Symptom:    TSS New Key Activate                                     !00038A02
* Problem:    None.                                                    !00038A03
* Fix:        Added TSS Key Activate Request and Response defines.     !00038A04
*             Modified Key Generate request to include idx_updt.       !00038A05
*             Modified MAC Verify request to include old-key-flg.      !00038A06
* Dependency: Apply fixes to DDLGTSS, HISWUTLS and SECUTILS and        !00038A07
*             run MAKE.  Also restore BASECUTL to the BA60LOGM         !00038A08
*             subvolume.                                               !00038A09
* Reference:  WO #021105-10.                                           !00038A0A
                                                                       !00038A0B
                                                                       !00038B00
* 15JAN2003   TS/299                                                   !00038B01
* Symptom:    Offline PIN Management Enhancement 03.                   !00038B02
* Problem:    None.                                                    !00038B03
* Fix:        Added redefines for TSS command 47.                      !00038B04
*             Modified TSS command 03.                                 !00038B05
* Dependency: Apply fixes to DDLGTSS and run MAKE.                     !00038B06
*             Refer to BA60UD06.SCNPPOS2 for a complete listing of     !00038B07
*             dependencies.                                            !00038B08
* Reference:  WO #020707-15                                            !00038B09
                                                                       !00038C00
* 24JAN2003   RDS/485                                                  !00038C01
* Symptom:    Automated Key Distribution System Enhancement.           !00038C02
* Problem:    None.                                                    !00038C03
* Fix:        Added redefines for TSS commands 31 through 39.          !00038C04
* Dependency: Apply fix to DDLGTSS and run MAKE.  Refer to             !00038C05
*             BA60UD06.SCNAKDS for a complete listing of dependencies. !00038C06
* Reference:  WO #000609-01                                            !00038C07
                                                                       !00038D00
* 03FEB2003   rkk/299                                                  !00038D01
* Symptom:    Identikey PIN Verification via TSS.                      !00038D02
* Problem:    None.                                                    !00038D03
* Fix:        Added redefines for TSS commands 43 through 46.          !00038D04
* Dependency: Apply fixes to DDLGTSS and run Make.                     !00038D05
*             Refer to BA60UD06.SCNIDNT for a complete listing of      !00038D06
*             dependencies.                                            !00038D07
* Reference:  WO #020707-08                                            !00038D08
                                                                       !00038D09
                                                                       !00038C08
                                                                       !00038B0A
                                                                       !00038E00
* 07FEB2003   DLH/158                                                  !00038E01
* Symptom:    POS Enhancements.                                        !00038E02
* Problem:    None.                                                    !00038E03
* Fix:        Added additional TSS message definitions to support      !00038E04
*             the new commands for this enhancement.  Modified         !00038E05
*             cmd-08-rqst to contain a new IV-FLG to support the       !00038E06
*             initialization vector within the current command.        !00038E07
*             Modified Defs:  cmd-08-rqst                              !00038E08
*             Added Defs   :  cmd-40rqst                               !00038E09
*                             cmd-40-resp                              !00038E0A
*                             cmd-41-rqst                              !00038E0B
*                             cmd-41-resp                              !00038E0C
*                             cmd-42-rqst                              !00038E0D
*                             cmd-42-resp                              !00038E0E
* Dependency: Apply fix to DDLGTSS and run Make. Refer to              !00038E0F
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00038E0G
* Reference:  WO #020606-01                                            !00038E0H
                                                                       !00038F00
* 07MAR2003   JFP/1694                                                 !00038F01
* Symptom:    Dutch NBGC Switch Uplift.                                !00038F02
* Problem:    None.                                                    !00038F03
* Fix:        Added the 'MAC function' field to MAC Generate Request   !00038F04
*             (command 08).                                            !00038F05
* Dependency: New subvolume SW60NBGC.  Apply fixes to SECUTILS,        !00038F06
*             HISWUTLS, SVEMFS and RQEMFS, and run MAKE.               !00038F07
* Reference:  WO #020811-02                                            !00038F08
*                                                                      !00038F09
* 07MAR2003   JFP/1694                                                 !00038F0A
* Symptom:    TSS New Key Activate                                     !00038F0B
* Problem:    None.                                                    !00038F0C
* Fix:        Added idx-updt field to command 43.                      !00038F0D
* Dependency: Apply fixes to DDLGTSS, HISWUTLS and SECUTILS and        !00038F0E
*             run MAKE.                                                !00038F0F
* Reference:  WO #021105-10.                                           !00038F0G
                                                                       !00038F0H
                                                                       !00038G00
* 15OCT2003   jfu/543                                                  !00038G01
* Symptom:    Secure Internet Validation enhancement - CAVV testing    !00038G02
* Problem:    Tested CAVV processing.                                  !00038G03
* Fix:        Added the SIV structure to the Card Verification         !00038G04
*             Request (i.e.,cmd-01-rqst).                              !00038G05
* Dependency: Apply fix to DDLGTSS and run Make.  Refer to             !00038G06
*             BA60UD07.SCNSIV for a complete listing of dependencies.  !00038G07
* Reference:  WO #020718-01                                            !00038G08
                                                                       !00038G09
* 15OCT2003   sde/316                                                  !00038G0A
* Symptom:    TSS Key Index support                                    !00038G0B
* Problem:    None                                                     !00038G0C
* Fix:        Modified commands 04, 06, 08, 09, 13, 14, 15, 16, 19,    !00038G0D
*             41, 42, and 45 to include the key index and related      !00038G0E
*             fields.  Increased the TSS data size to 4200 to          !00038G0F
*             accommodate the expanded command 19 request.             !00038G0G
* Dependency: Apply fixes to DDLGTSS and run Make.  Refer to           !00038G0H
*             BA60UD07.SCNTKI for a complete listing of dependencies.  !00038G0I
* Reference:  WO #030226-02.                                           !00038G0J
                                                                       !00038G0K
* 15OCT2003   SP/211 MSH/872                                           !00038G0L
* Symptom:    M/Chip 4 support enhancement.                            !00038G0M
* Problem:    None.                                                    !00038G0N
* Fix:        Updated TSS message format for TSS command '02' to       !00038G0O
*             include four new fields:                                 !00038G0P
*             1) tss message bit map                                   !00038G0Q
*             2) data block length                                     !00038G0R
*             3) data block                                            !00038G0S
*             4) key derivation method                                 !00038G0T
*             Updated TSS message format for TSS command '03' to       !00038G0U
*             include new field:                                       !00038G0V
*                key derivation method                                 !00038G0W
* Dependency: Apply fixes to DDLGTSS and run MAKE.                     !00038G0X
*             Refer to BA60UD07.SCNMCHP4 for a complete listing        !00038G0Y
*             of dependencies.                                         !00038G0Z
* Reference:  WO #030609-01                                            !00038G0a
                                                                       !00038G0b
* 15OCT2003   RKK/299                                                  !00038G0c
* Symptom:    SPDH DUKPT Support via TSS enhancement.                  !00038G0d
* Problem:    None.                                                    !00038G0e
* Fix:        Added cmd-48-rqst and cmd-48-resp                        !00038G0f
*             Increased the TSS data size to 4300 to accommodate       !00038G0g
*             MAC data in several commands.                            !00038G0h
* Dependency: Apply fix to DDLGTSS and run Make.  Refer to             !00038G0i
*             BA60UD07.SCNDKTSS for a complete listing of              !00038G0j
*             dependencies.                                            !00038G0k
* Reference:  WO #020707-06, #020707-07                                !00038G0l
                                                                       !00038G0m
* 15OCT2003   CKC/163                                                  !00038G0n
* Symptom:    DUKPT MACing enhancement.                                !00038G0o
* Problem:    None.                                                    !00038G0p
* Fix:        Added cmd-49-rqst, cmd-49-resp, cmd-50-rqst and          !00038G0q
*             cmd-50-resp.                                             !00038G0r
* Dependency: Apply fix to DDLGTSS and run Make.  Refer to             !00038G0s
*             BA60UD07.SCNDKMAC for a complete listing of              !00038G0t
*             dependencies.                                            !00038G0u
* Reference:  WO #021119-07.                                           !00038G0v
                                                                       !00038H00
* 17NOV2003   ALP/455                                                  !00038H01
* Symptom:    The response command 42 define is not correct.           !00038H02
* Problem:    Response command 42 is missing two fields and has        !00038H03
*             declared the IV and IV-END fields incorrectly.           !00038H04
* Fix:        Added fields encrypt-data-type and encrypt-des-mode to   !00038H05
*             cmd-42-resp. Also, modified IV and IV-END to be the      !00038H06
*             the correct size.                                        !00038H07
* Dependency: Apply fix to DDLGTSS and run Make.                       !00038H08
* Reference:  Case #371641.                                            !00038H09
                                                                       !00038H0A
                                                                       !00038I00
* 25MAY2004   UrbaneJ                                                  !00038I01
* Symptom:    DUKPT MACing enhancement.                                !00038I02
* Problem:    None.                                                    !00038I03
* Fix:        Added the mac-key-loc field to cmd-49-rqst and           !00038I04
*             cmd-50-rqst.                                             !00038I05
* Dependency: Apply fix to DDLGTSS and run Make.  Refer to             !00038I06
*             BA60UD07.SCNDKMAC for a complete listing of              !00038I07
*             dependencies.                                            !00038I08
* Reference:  WO #021119-07.                                           !00038I09
                                                                       !00038J00
* 15OCT2004   WisharJ                                                  !00038J01
* Symptom:    AMEX CSC.                                                !00038J02
* Problem:    None.                                                    !00038J03
* Fix:        Updated TSS message format for TSS command '01' request  !00038J04
*             to include five new fields:                              !00038J05
*             1) TSS message version number                            !00038J06
*             2) Card Verification Algorithm                           !00038J07
*             3) Four digit Card Verification value                    !00038J08
*             4) Five digit Card Verification value                    !00038J09
*             5) Card Verification Expiration date                     !00038J0A
*             Updated TSS message format for TSS command '01'          !00038J0B
*             response to include two new fields:                      !00038J0C
*             1) TSS message version number                            !00038J0D
*             2) Card Verification Results                             !00038J0E
*             Corrected erroneous comments.                            !00038J0F
* Dependency: Apply fix to DDLGTSS and run Make.  Refer to             !00038J0G
*             BA60UD08.SCNACSC for the complete list of dependencies.  !00038J0H
* Reference:  WO #020707-10.                                           !00038J0I
                                                                       !00038J0J
* 15OCT2004   NgB                                                      !00038J0K
* Symptom:    BASE24 Message Compatibility with TSS 04.4.              !00038J0L
* Problem:    None.                                                    !00038J0M
* Fix:        Commands 02, 03, 04, 06, 17, 20, 48, A0, A1, A2,         !00038J0N
*             A3, A4, A5, A6, A6, A7, A9 have been modified to reflect !00038J0O
*             the TSS command message formats in TSS 04.4.             !00038J0P
*             Command 24, 40 have been removed.                        !00038J0Q
* Dependency: Apply fix to CAMUTILS, DDLGTSS, SECUTILS and run Make.   !00038J0R
* Reference:  WO #030926-02.                                           !00038J0S
                                                                       !00038J0T
* 15OCT2004   AngerT                                                   !00038J0U
* Symptom:    Support for EMV 2000 key derivation by TSS.              !00038J0V
* Problem:    Enhancement required to support the EMV 2000 key         !00038J0W
*             derivation for VISA and MasterCard EMV implementations   !00038J0X
*             provided by TSS.                                         !00038J0Y
* Fix:        Added following redefinitions of TSS-DATA in TSS-MSG:    !00038J0Z
*             - CMD-22-RQST                                            !00038J0a
*             - CMD-22-RESP                                            !00038J0b
*             - CMD-23-RQST                                            !00038J0c
*             - CMD-23-RESP                                            !00038J0d
* Dependency: Apply fix to DDLGTSS and run Make.  Refer to             !00038J0e
*             BA60UD08.SCNEMV2 for the complete list of dependencies.  !00038J0f
* Reference:  WO #030609-02                                            !00038J0g
                                                                       !00038K00
* 30JUN2005   SyedZ/MohanS                                             !00038K01
* Symptom:    SAMA SPAN Interchange Interface Project MBI Version 5.0  !00038K02
* Problem:    Enhancement required to support the Random String        !00038K03
*             Generate, Signature Generate and Signature Verify        !00038K04
*             commands added to TSS.                                   !00038K05
* Fix:        Added following redefinitions of TSS-DATA in TSS-MSG:    !00038K06
*             CMD-55-RQST                                              !00038K07
*                 55-RESP                                              !00038K08
*             CMD-56-RQST                                              !00038K09
*                 56-RESP                                              !00038K0A
*             CMD-57-RQST                                              !00038K0B
*                 57-RESP                                              !00038K0C
* Dependency: Apply fix to SPN2S, SPN2LIBS and DDLGTSS and run Make.   !00038K0D
* Reference:  WO #030504-09                                            !00038K0E
                                                                       !00038K0F
                                                                       !00038L00
* 14OCT2005   WisharJ                                                  !00038L01
* Symptom:    Shared 912 AKDS Enhancement                              !00038L02
*             Shared NDC+ AKDS Enhancement.                            !00038L03
* Problem:    None.                                                    !00038L04
* Fix:        New commands are required to support the Shared 912 AKDS !00038L05
*             and Shared NDC+ AKDS enhancements.                       !00038L06
*             Added following redefinitions of TSS-DATA in TSS-MSG:    !00038L07
*             - CMD-52-RQST                                            !00038L08
*             - CMD-52-RESP                                            !00038L09
*             - CMD-53-RQST                                            !00038L0A
*             - CMD-53-RESP                                            !00038L0B
*             - CMD-54-RQST                                            !00038L0C
*             - CMD-54-RESP                                            !00038L0D
* Dependency: Apply fix to DDLGTSS and run Make. Ensure that a         !00038L0E
*             compatible version of TSS is installed. Refer to         !00038L0F
*             BA60UD09.SCNWDAK and BA60UD09.SCNWNAK for complete       !00038L0G
*             listings of dependencies.                                !00038L0H
* Reference:  WO #041129-01 (Shared 912 AKDS)                          !00038L0I
*             WO #030917-03 (Shared NDC+ AKDS)                         !00038L0J
                                                                       !00038L0K
                                                                       !00038J0h
                                                                       !00038J0i
                                                                       !00038J0j
                                                                       !00038J0k
                                                                       !00038M00
* 14OCT2006   RinkC                                                    !00038M01
* Symptom:    Contactless Chip/Magnetic Stripe Support Enhancement     !00038M02
* Problem:    None.                                                    !00038M03
* Fix:        New commands are required to support Contactless         !00038M04
*             Magnetic Stripe Cards and Dynamic Card Verification.     !00038M05
*             Added following redefinitions of TSS-DATA in TSS-MSG:    !00038M06
*             - CMD-58-RQST                                            !00038M07
*             - CMD-58-RESP                                            !00038M08
* Dependency: Apply fix to DDLGTSS and run Make. Ensure that a         !00038M09
*             compatible version of TSS is installed. Refer to         !00038M0A
*             BA60UD0A.SCNCTLS for a complete listing of               !00038M0B
*             dependencies.                                            !00038M0C
* Reference:  WO #050209-01                                            !00038M0D
                                                                       !00038M0E
* 14OCT2006   MeyersC                                                  !00038M0F
* Symptom:    Visa DUKPT MACing Enhancement                            !00038M0G
* Problem:    None.                                                    !00038M0H
* Fix:        Added the mac-opt field to cmd-50-rqst.                  !00038M0I
*             Reduced rqst-filler-50 by one byte.                      !00038M0J
* Dependency: Apply fix to DDLGTSS and run Make. Ensure that a         !00038M0K
*             compatible version of TSS is installed. Refer to         !00038M0L
*             BA60UD0A.SCNVDKPT for a complete listing of              !00038M0M
*             dependencies.                                            !00038M0N
* Reference:  WO #051107-01                                            !00038M0O
                                                                       !00038M0P
* 14OCT2006   MeyersC                                                  !00038M0Q
* Symptom:    APACS MACing Enhancement                                 !00038M0R
* Problem:    None.                                                    !00038M0S
* Fix:        Modified the request and response for cmd-26, cmd-27,    !00038M0T
*             cmd-28, cmd-29 and cmd-30.  Added the following          !00038M0U
*             redefinitions of TSS-DATA in TSS-MSG:                    !00038M0V
*             - CMD-51-RQST                                            !00038M0W
*             - CMD-51-RESP                                            !00038M0X
* Dependency: Apply fix to DDLGTSS and run Make. Ensure that a         !00038M0Y
*             compatible version of TSS is installed. Refer to         !00038M0Z
*             BA60UD0A.SCNAPAC for a complete listing of               !00038M0a
*             dependencies.                                            !00038M0b
* Reference:  WO #030915-01                                            !00038M0c
                                                                       !00038M0d
                                                                       !00038N00
* 21JUN2007   funter                                                   !00038N01
* Symptom:    Thales (Racal) Command "RI" (Transaction Request with    !00038N02
*             Pin) defines the extended PIN Block Pointer parameter as !00038N03
*             4 Hex char.  However, TSS command 28 only has the Pin    !00038N04
*             Block Offset field defined as 2 bytes.  This field       !00038N05
*             length must be increased to 4 bytes.                     !00038N06
* Problem:    TSS command 28 has Pin Block Offset field defined as 2   !00038N07
*             bytes.  It should be 4 bytes.                            !00038N08
* Fix:        Increase size of Pin Block Offset field to 4 bytes for   !00038N09
*             CMD-28-RQST.                                             !00038N0A
* Dependency: Apply fix to DDLGTSS and MACUTILS.  Run Make.            !00038N0B
*             This fix is dependent upon the following TSS tasks:      !00038N0C
*             TSS 6.2 - #52168, TSS 6.4 - #51954, TSS 7.4 or later.    !00038N0D
* Reference:  Case #429410                                             !00038N0E
                                                                       !00038N0F
                                                                       !00038O00
* 12OCT2007   SteffeJ                                                  !00038O01
* Symptom:    CAP Authentication                                       !00038O02
* Problem:    None.                                                    !00038O03
* Fix:        Added the following redefinitions of TSS-DATA to         !00038O04
*             TSS-MSG:                                                 !00038O05
*             - CMD-60-RQST                                            !00038O06
*             - CMD-60-RESP                                            !00038O07
* Dependency: Apply fix to DDLGTSS.  Run Make.                         !00038O08
*             Refer to BA60UD0B.SCNCAP for a complete listing of       !00038O09
*             dependencies.                                            !00038O0A
* Reference:  WO #070307-01                                            !00038O0B
                                                                       !00038O0C
                                                                       !00038P00
* 17OCT2008   WisharJ                                                  !00038P01
* Symptom:    Triton AKDS Support                                      !00038P02
* Problem:    None.                                                    !00038P03
* Fix:        Updated the message format for TSS command 38, 53 and    !00038P04
*             54 requests to include new field key-typ. Added a        !00038P05
*             version field to TSS command 38. Reduced the filler      !00038P06
*             fields accordingly. Updated comments in various places.  !00038P07
* Dependency: Apply fix to DDLGTSS and run Make. Ensure that a         !00038P08
*             compatible version of TSS is installed. Refer to         !00038P09
*             BA60UD0C.SCNTRAK for a complete listing of               !00038P0A
*             dependencies.                                            !00038P0B
* Reference:  WO #070917-02                                            !00038P0C
*                                                                      !00038P0D
* 17OCT2008   MeyersC                                                  !00038P0E
* Symptom:    DUKPT Support with Message Data Encryption               !00038P0F
* Problem:    None.                                                    !00038P0G
* Fix:        Added the following redefinitions of TSS-DATA to         !00038P0H
*             TSS-MSG:                                                 !00038P0I
*             - CMD-62-RQST                                            !00038P0J
*             - CMD-62-RESP                                            !00038P0K
* Dependency: Apply fix to DDLGTSS.  Run Make.                         !00038P0L
*             Refer to BA60UD0C.SCNDMDE for a complete listing of      !00038P0M
*             dependencies.                                            !00038P0N
* Reference:  WO #070807-02                                            !00038P0O
                                                                       !00038P0P
                                                                       !00038Q00
* 17OCT2008   BhattaD                                                  !00038Q01
* Symptom:    Applications outside Tandem are not able to source in    !00038Q02
*             TSS definitions using BADDLCOB.                          !00038Q03
* Problem:    DDL definition of CMD-56-RQST and CMD-57-RESP structures !00038Q04
*             uses item name "sign" which is a COBOL reserved word.    !00038Q05
* Fix:        Changed the definition of CMD-56-RQST and CMD-57-RESP    !00038Q06
*             structure to use item name "signature" instead of        !00038Q07
*             "sign".                                                  !00038Q08
* Dependency: Apply fix to DDLGTSS. Run Make.                          !00038Q09
* Reference:  Case #482242                                             !00038Q0A
                                                                       !00038Q0B
                                                                       !00038R00
* 27SEP2011   WisharJ                                                  !00038R01
* Symptom:    NCR Enhanced AKDS                                        !00038R02
* Problem:    None.                                                    !00038R03
* Fix:        Added the following redefinitions of TSS-DATA to         !00038R04
*             TSS-MSG:                                                 !00038R05
*             - CMD-52-VER2-RQST                                       !00038R06
*             - CMD-52-VER2-RESP                                       !00038R07
*             - CMD-59-RQST                                            !00038R08
*             - CMD-59-RESP                                            !00038R09
*             Updated the comments on the TSS Command 54 request.      !00038R0A
* Dependency: Apply fix to DDLGTSS.  Run Make.                         !00038R0B
*             Refer to BA60UD0F.SCNRKL for a complete listing of       !00038R0C
*             dependencies.                                            !00038R0D
* Reference:  WO #001257                                               !00038R0E
                                                                       !00038R0F
                                                                       !00038S00
* 20DEC2011   PalummR                                                  !00038S01
* Symptom:    Update of card verification for compatability with       !00038S02
*             TSS 6.4 and later versions.                              !00038S03
* Problem:    CMD-01-RQST comments are no longer appropriate since     !00038S04
*             message format used prior to TSS 6.4 is no longer        !00038S05
*             supported.                                               !00038S06
* Fix:        Modified comments in CMD-01-RQST                         !00038S07
* Dependency: Apply fix to DDLGTSS and run Make.                       !00038S08
* Reference:  Case #1164441 and 1171005                                !00038S09
                                                                       !00038S0A
**********************************************************************!!00039
                                                                       !00040
                                                                       !00041
?section tss-msg
                                                                       !00044
**********************************************************************!!00045
*                                                                     !!00046
*             tss-msg describes the messages sent to TSS.             !!00047
                                                                       !00048G00
                                                                       !00048J00
*             It is 108 + 4300 = 4408 bytes.                          !!00048J01
                                                                       !00048J02
                                                                       !00048G02
*                                                                     !!00049
**********************************************************************!!00050
                                                                       !00051
def tss-msg.                                                           !00052
                                                                       !00053
*             Message header                                          !!00054
                                                                       !00055
    02  msg-hdr                            pic x(108).                 !00056
                                                                       !00057
*             Message data                                            !!00058
                                                                       !00059
                                                                       !00060G00
    02  tss-data                           pic x(4300).                !00060G01
                                                                       !00060G02
                                                                       !00061
**********************************************************************!!00062
*                                                                     !!00063
*             Card Verify request                                     !!00064
*                                                                     !!00065
**********************************************************************!!00066
                                                                       !00067
    02  cmd-01-rqst                        redefines tss-data.         !00068
                                                                       !00069
*             Command Type                                            !!00070
                                                                       !00071
        04  cmd-typ                        pic x(2).                   !00072
                                                                       !00073
                                                                       !00074S00
*             Card Expiration Date (YYMM or MMYY)                     !!00074S01
                                                                       !00074S02
                                                                       !00075
        04  crd-exp-dat                    pic x(4).                   !00076
                                                                       !00077
*             Card Service Code                                       !!00078
                                                                       !00079
        04  svc-cde                        pic x(3).                   !00080
                                                                       !00081
*             Primary key value to KEYA record                        !!00082
                                                                       !00083
        04  keya-grp                       pic x(16).                  !00084
                                                                       !00084G00
*             The KEYA-GRP field is redefined for the fields           !00084G01
*             required for searching the TSS database for the          !00084G02
*             appropriate set of verification keys.                    !00084G03
                                                                       !00084G04
        04  key-srch redefines keya-grp.                               !00084G05
                                                                       !00084G06
*             The name of the profile that TSS uses to find the        !00084G07
*             appropriate set of verification keys.                    !00084G08
                                                                       !00084G09
            06  profile                    pic x(4).                   !00084G0A
                                                                       !00084G0B
                                                                       !00084S00
                                                                       !00084S01
*             The expiration date that older versions of TSS (prior to !00084S02
*             6.4) used to find the appropriate set of verification    !00084S03
*             keys.  This field is no longer used in Base24.           !00084S04
                                                                       !00084S05
                                                                       !00084G0F
            06  exp-dat                    pic x(4).                   !00084G0G
                                                                       !00084G0H
*             For future use.                                          !00084G0I
                                                                       !00084G0J
            06  aci-key-srch               pic x(8).                   !00084G0K
                                                                       !00084G0L
                                                                       !00085
                                                                       !00086G00
*             Card Verification Digits                                !!00086G01
                                                                       !00086G02
                                                                       !00087
        04  cvd                            pic x(3).                   !00088
                                                                       !00089
*             Primary Account Number                                  !!00090
                                                                       !00091
        04  pan                            pic x(19).                  !00092
                                                                       !00093
*             Length of Primary Account Number                        !!00094
                                                                       !00095
        04  pan-lgth                       pic x(2).                   !00096
                                                                       !00097J00
                                                                       !00097J01
                                                                       !00097J02
*             The following data is required for Secure Internet       !00100G08
*             Validation (SIV) processing.                             !00100G09
                                                                       !00100G0A
                                                                       !00100J03
        04  siv.                                                       !00100J04
                                                                       !00100J05
                                                                       !00100G0C
*             Unpredictable number or random number used in the        !00100G0D
*             calculation of a Cardholder Authentication Verification  !00100G0E
*             Value (CAVV).                                            !00100G0F
                                                                       !00100J06
            06  cavv-unpredictable-num     pic x(4).                   !00100J07
            06  cavv-rndm-num redefines cavv-unpredictable-num         !00100J08
                                           pic x(4).                   !00100J09
                                                                       !00100J0A
*             Version number of the TSS message.                       !00100J0B
                                                                       !00100J0C
        04  version                        pic x(2).                   !00100J0D
                                                                       !00100J0E
*             Card Verification Algorithm.                             !00100J0F
                                                                       !00100J0G
        04  cv-algo                        pic x.                      !00100J0H
                                                                       !00100J0I
*             Four digit CSC value to be verified.                     !00100J0J
                                                                       !00100J0K
        04  cv-4-digit                     pic x(4).                   !00100J0L
                                                                       !00100J0M
*             Five digit CSC value to be verified.                     !00100J0N
                                                                       !00100J0O
        04  cv-5-digit                     pic x(5).                   !00100J0P
                                                                       !00100S00
*             The expiration date that TSS uses to find the            !00100S01
*             appropriate set of verification keys.  Date is in        !00100S02
*             YYMM format.                                             !00100S03
                                                                       !00100S04
                                                                       !00100S05
                                                                       !00100S06
                                                                       !00100S07
        04  cv-exp-dat                     pic x(4).                   !00100J0W
                                                                       !00100J0X
*             This field is not used.                                  !00100J0Y
                                                                       !00100J0Z
        04  rqst-filler-01                 pic x(4231).                !00100J0a
                                                                       !00100J0b
                                                                       !00100J0c
                                                                       !00100J0d
                                                                       !00100J0e
                                                                       !00101
**********************************************************************!!00102
*                                                                     !!00103
*             Card Verify response                                    !!00104
*                                                                     !!00105
**********************************************************************!!00106
                                                                       !00107
    02  cmd-01-resp                        redefines tss-data.         !00108
                                                                       !00109
*             Command Type                                            !!00110
                                                                       !00111
        04  cmd-typ                        pic x(2).                   !00112
                                                                       !00113
*             Response Status                                         !!00114
                                                                       !00115
        04  resp-stat                      pic x(2).                   !00116
                                                                       !00117
                                                                       !00117J00
*             Version number of the TSS message.                       !00117J01
                                                                       !00117J02
        04  version                        pic x(2).                   !00117J03
                                                                       !00117J04
*             Card Verification Results field.                         !00117J05
*             Byte 1 indicates result of 3 digit CSC verification.     !00117J06
*             Byte 2 indicates result of 4 digit CSC verification.     !00117J07
*             Byte 3 indicates result of 5 digit CSC verification.     !00117J08
                                                                       !00117J09
        04  cv-rslts                       pic x(3).                   !00117J0A
                                                                       !00117J0B
*             This field is not used.                                 !!00118
                                                                       !00119
                                                                       !00120G00
                                                                       !00120J00
        04  resp-filler-01                 pic x(4291).                !00120J01
                                                                       !00120J02
                                                                       !00120G02
                                                                       !00121
**********************************************************************!!00122
*                                                                     !!00123
*             ARPC Generate request                                   !!00124
*             ARQC Verify and ARPC Generate request                   !!00125
*                                                                     !!00126
**********************************************************************!!00127
                                                                       !00128
    02  cmd-02-rqst                        redefines tss-data.         !00129
                                                                       !00130
*             Command Type                                            !!00131
                                                                       !00132
        04  cmd-typ                        pic x(2).                   !00133
                                                                       !00134
*             Function Type                                           !!00135
                                                                       !00136
        04  fnct-typ                       pic x.                      !00137
                                                                       !00138
*             Primary key value to KEYI record                        !!00139
                                                                       !00140
        04  keyi-grp                       pic x(16).                  !00141
                                                                       !00142
*             Card Expiration Date (YYMM)                             !!00143
                                                                       !00144
        04  crd-exp-dat                    pic x(4).                   !00145
                                                                       !00146
*             Derivation Key Index                                    !!00147
                                                                       !00148
        04  drvtn-key-idx                  pic x.                      !00149
                                                                       !00150
*             Primary Account Number                                  !!00151
                                                                       !00152
        04  pan                            pic x(19).                  !00153
                                                                       !00154
*             Member Number                                           !!00155
                                                                       !00156
        04  mbr-num                        pic x(3).                   !00157
                                                                       !00158
*             Converted Response Code                                 !!00159
                                                                       !00160
        04  conv-resp-cde                  pic x(2).                   !00161
                                                                       !00162
*             Authorization Request Cryptogram                        !!00163
                                                                       !00164
        04  arqc                           pic x(8).                   !00165
                                                                       !00166
*             Crypto Version Number                                   !!00167
                                                                       !00168
        04  crypto-ver-num                 pic x.                      !00169
                                                                       !00170
*             Card Verify Results                                     !!00171
                                                                       !00172
        04  cvr                            pic x(4).                   !00173
                                                                       !00174
*             Authorization Amount                                    !!00175
*                                                                     !!00176
                                                                       !00177
        04  amt-auth                       pic x(6).                   !00178
                                                                       !00179
*             Other Amount                                            !!00180
                                                                       !00181
        04  amt-other                      pic x(6).                   !00182
                                                                       !00183
*             Terminal Country Code                                   !!00184
                                                                       !00185
        04  term-cntry-cde                 pic x(2).                   !00186
                                                                       !00187
*             Terminal Verification Results                           !!00188
                                                                       !00189
        04  tvr                            pic x(5).                   !00190
                                                                       !00191
*             Transaction Currency Code                               !!00192
                                                                       !00193
        04  txn-crncy-cde                  pic x(2).                   !00194
                                                                       !00195
*             Transaction Date                                        !!00196
                                                                       !00197
        04  txn-dat                        pic x(3).                   !00198
                                                                       !00199
*             Transaction Type                                        !!00200
                                                                       !00201
        04  txn-typ                        pic x.                      !00202
                                                                       !00203
*             Unpredictable Number                                    !!00204
                                                                       !00205
        04  unpredictable-num              pic x(4).                   !00206
                                                                       !00207
*             Application Interchange Profile                         !!00208
                                                                       !00209
        04  aip                            pic x(2).                   !00210
                                                                       !00211
*             Application Transaction Counter                         !!00212
                                                                       !00213
        04  atc                            pic x(2).                   !00214
                                                                       !00215
                                                                       !00215G00
*             TSS Message Bit Map                                      !00215G01
                                                                       !00215G02
        04  tss-msg-bit-map                pic x(4).                   !00215G03
                                                                       !00215G04
*             Data Block Length                                        !00215G05
                                                                       !00215G06
        04  data-blk-lgth                  pic x(2).                   !00215G07
                                                                       !00215G08
*             Data Block                                               !00215G09
                                                                       !00215G0A
        04  data-blk                       pic x(100).                 !00215G0B
                                                                       !00215G0C
                                                                       !00215J00
                                                                       !00215J01
                                                                       !00215J02
                                                                       !00215G0G
                                                                       !00215G0H
*             This field is not used.                                 !!00216
                                                                       !00217
                                                                       !00218G00
                                                                       !00218J00
        04  rqst-filler-02                 pic x(4100).                !00218J01
                                                                       !00218J02
                                                                       !00218G02
                                                                       !00219
**********************************************************************!!00220
*                                                                     !!00221
*             ARPC Generate response                                  !!00222
*             ARQC Verify and ARPC Generate response                  !!00223
*                                                                     !!00224
**********************************************************************!!00225
                                                                       !00226
    02  cmd-02-resp                        redefines tss-data.         !00227
                                                                       !00228
*             Command Type                                            !!00229
                                                                       !00230
        04  cmd-typ                        pic x(2).                   !00231
                                                                       !00232
*             Function Type                                           !!00233
                                                                       !00234
        04  fnct-typ                       pic x.                      !00235
                                                                       !00236
*             Response Status                                         !!00237
                                                                       !00238
        04  resp-stat                      pic x(2).                   !00239
                                                                       !00240
*             Authorization Response Cryptogram                       !!00241
                                                                       !00242
        04  arpc                           pic x(16).                  !00243
                                                                       !00244
*             This field is not used.                                 !!00245
                                                                       !00246
                                                                       !00247G00
        04  resp-filler-02                 pic x(4279).                !00247G01
                                                                       !00247G02
                                                                       !00248
**********************************************************************!!00249
*                                                                     !!00250
*             Script MAC Generate request                             !!00251
*                                                                     !!00252
**********************************************************************!!00253
                                                                       !00254
    02  cmd-03-rqst                        redefines tss-data.         !00255
                                                                       !00256
*             Command Type                                            !!00257
                                                                       !00258
        04  cmd-typ                        pic x(2).                   !00259
                                                                       !00260
*             Primary key value to KEYI record                        !!00261
                                                                       !00262
        04  keyi-grp                       pic x(16).                  !00263
                                                                       !00264
*             Card Expiration Date (YYMM)                             !!00265
                                                                       !00266
        04  crd-exp-dat                    pic x(4).                   !00267
                                                                       !00268
*             Primary Account Number                                  !!00269
                                                                       !00270
        04  pan                            pic x(19).                  !00271
                                                                       !00272
*             Member Number                                           !!00273
                                                                       !00274
        04  mbr-num                        pic x(3).                   !00275
                                                                       !00276
*             Application Transaction Counter                         !!00277
                                                                       !00278
        04  atc                            pic x(2).                   !00279
                                                                       !00280
*             Authorization Request Cryptogram                        !!00281
                                                                       !00282
        04  arqc                           pic x(8).                   !00283
                                                                       !00284
*             Script Data                                             !!00285
                                                                       !00286
        04  script-data                    pic x(128).                 !00287
                                                                       !00288
*             Script Data Length                                      !!00289
                                                                       !00290
        04  script-data-lgth               pic x(3).                   !00291
                                                                       !00292
                                                                       !00292B00
*             PIN data                                                 !00292B01
        04  pin-data.                                                  !00292B02
                                                                       !00292B03
*             Key Locator                                              !00292B04
                                                                       !00292B05
            06  key-loc                    pic x(16).                  !00292B06
                                                                       !00292B07
*             Transaction Origin                                       !00292B08
                                                                       !00292B09
            06  txn-orig                   pic x.                      !00292B0A
                                                                       !00292B0B
*             New Encrypted PIN Block                                  !00292B0C
                                                                       !00292B0D
            06  new-pin-in                 pic x(16).                  !00292B0E
                                                                       !00292B0F
*             Derivation Key Index                                     !00292B0G
                                                                       !00292B0H
            06  drvtn-key-idx              pic x.                      !00292B0I
                                                                       !00292B0J
*             PIN Issue Number                                         !00292B0K
                                                                       !00292B0L
            06  pin-issue-num              pic x(3).                   !00292B0M
                                                                       !00292B0N
*             Current Encrypted PIN Block                              !00292B0O
                                                                       !00292B0P
            06  cur-pin-in                 pic x(16).                  !00292B0Q
                                                                       !00292B0R
*             Ciphertext Offset                                        !00292B0S
                                                                       !00292B0T
            06  cipher-text-ofst           pic x(4).                   !00292B0U
                                                                       !00292B0V
                                                                       !00292B0W
                                                                       !00292G00
                                                                       !00292J00
                                                                       !00292J01
                                                                       !00292J02
                                                                       !00292G04
                                                                       !00292G05
*             This field is not used.                                 !!00293
                                                                       !00294
                                                                       !00294B00
                                                                       !00294G00
                                                                       !00294J00
        04  rqst-filler-03             pic x(4058).                    !00294J01
                                                                       !00294J02
                                                                       !00294G02
                                                                       !00294B02
                                                                       !00295B00
                                                                       !00295B01
                                                                       !00296
**********************************************************************!!00297
*                                                                     !!00298
*             Script MAC Generate response                            !!00299
*                                                                     !!00300
**********************************************************************!!00301
                                                                       !00302
    02  cmd-03-resp                        redefines tss-data.         !00303
                                                                       !00304
*             Command Type                                            !!00305
                                                                       !00306
        04  cmd-typ                        pic x(2).                   !00307
                                                                       !00308
*             Response Status                                         !!00309
                                                                       !00310
        04  resp-stat                      pic x(2).                   !00311
                                                                       !00312
*             MAC Value                                               !!00313
                                                                       !00314
        04  mac-val                        pic x(16).                  !00315
                                                                       !00316
                                                                       !00316B00
*             Encripted PIN out                                        !00316B01
                                                                       !00316B02
        04  encrypt-pin-out                pic x(32).                  !00316B03
                                                                       !00316B04
*             This field is not used.                                  !00316B05
                                                                       !00316B06
                                                                       !00316G00
        04  resp-filler-03                 pic x(4248).                !00316G01
                                                                       !00316G02
                                                                       !00316B08
                                                                       !00317B00
                                                                       !00317B01
                                                                       !00317B02
                                                                       !00320
**********************************************************************!!00321
*                                                                     !!00322
*             Device PIN Key Generate request                         !!00323
*             Device MAC Key Generate request                         !!00324
*             Interface PIN Key Generate request                      !!00325
*             Interface MAC Key Generate request                      !!00326
*                                                                     !!00327
**********************************************************************!!00328
                                                                       !00329
    02  cmd-04-rqst                        redefines tss-data.         !00330
                                                                       !00331
*             Command Type                                            !!00332
                                                                       !00333
        04  cmd-typ                        pic x(2).                   !00334
                                                                       !00335
*             Key Type                                                !!00336
                                                                       !00337
        04  key-typ                        pic x(2).                   !00338
                                                                       !00339
*             Key Direction                                           !!00340
                                                                       !00341
        04  key-dir                        pic x.                      !00342
                                                                       !00343
*             Key Locator                                             !!00344
                                                                       !00345
        04  key-loc                        pic x(16).                  !00346
                                                                       !00347
*             Docutel Type                                            !!00348
                                                                       !00349
        04  docutel-typ                    pic x.                      !00350
                                                                       !00351
*             Docutel Verify Constant                                 !!00352
                                                                       !00353
        04  docutel-vrfy-cnst              pic x(16).                  !00354
                                                                       !00355
*             Transaction Origin                                      !!00356
                                                                       !00357
        04  txn-orig                       pic x.                      !00358
                                                                       !00359
*             Number of Check Digits                                  !!00360
                                                                       !00361
        04  num-chk-dgt                    pic x.                      !00362
                                                                       !00362A00
*             Index Update Flag                                        !00362A01
                                                                       !00362A02
        04  idx-updt                       pic x.                      !00362A03
                                                                       !00362A04
                                                                       !00363
*             This field is not used.                                 !!00364
                                                                       !00365
                                                                       !00366A00
                                                                       !00366G00
        04  rqst-filler-04                 pic x(4259).                !00366G01
                                                                       !00366G02
                                                                       !00366A02
                                                                       !00367G00
*             The filler field is redefined for the fields             !00367G01
*             required by the optional enhancements.                   !00367G02
                                                                       !00367G03
        04  opt redefines rqst-filler-04.                              !00367G04
                                                                       !00367G05
*             The following data is required for TSS Key Index         !00367G06
*             (TKI) processing.                                        !00367G07
                                                                       !00367G08
            06  tki.                                                   !00367G09
                                                                       !00367G0A
*             Index of new key                                         !00367G0B
                                                                       !00367G0C
                08  new-key-idx            pic x.                      !00367G0D
                                                                       !00367G0E
                                                                       !00367J00
*             The following data is required for AS2805 processing     !00367J01
                                                                       !00367J02
            06  as2805-data.                                           !00367J03
                                                                       !00367J04
*             Version Number                                           !00367J05
                                                                       !00367J06
                08  ver-num                pic x(2).                   !00367J07
                                                                       !00367J08
*             Variant Flag                                             !00367J09
                                                                       !00367J0A
                08  variant-flg            pic x.                      !00367J0B
                                                                       !00367J0C
*             This field is the leftover data from redefining          !00367G0F
*             the rqst-filler-04 field.                                !00367G0G
                                                                       !00367G0H
                                                                       !00367J0D
            06  aci-opt                    pic x(4255).                !00367J0E
                                                                       !00367J0F
                                                                       !00367G0J
                                                                       !00367G0K
**********************************************************************!!00368
*                                                                     !!00369
*             Device PIN Key Generate response                        !!00370
*             Device MAC Key Generate response                        !!00371
*             Interface PIN Key Generate response                     !!00372
*             Interface MAC Key Generate response                     !!00373
*                                                                     !!00374
**********************************************************************!!00375
                                                                       !00376
    02  cmd-04-resp                        redefines tss-data.         !00377
                                                                       !00378
*             Command Type                                            !!00379
                                                                       !00380
        04  cmd-typ                        pic x(2).                   !00381
                                                                       !00382
*             Response Status                                         !!00383
                                                                       !00384
        04  resp-stat                      pic x(2).                   !00385
                                                                       !00386
*             Key Type                                                !!00387
                                                                       !00388
        04  key-typ                        pic x(2).                   !00389
                                                                       !00390
*             Key Direction                                           !!00391
                                                                       !00392
        04  key-dir                        pic x.                      !00393
                                                                       !00394
*             Number of Check Digits for the new key                  !!00395
                                                                       !00396
        04  new-key-chk-dgt                pic x(6).                   !00397
                                                                       !00398
*             Key Length                                              !!00399
                                                                       !00400
        04  key-lgth                       pic x.                      !00401
                                                                       !00402
*             New Key for Distribution Header                         !!00403
                                                                       !00404
        04  new-key-dist-hdr               pic x(8).                   !00405
                                                                       !00406
*             New Key for Distribution                                !!00407
                                                                       !00408
        04  new-key-dist                   pic x(48).                  !00409
                                                                       !00410
*             New Key for Distribution MAC                            !!00411
                                                                       !00412
        04  new-key-dist-mac               pic x(16).                  !00413
                                                                       !00414
*             New Key for Storage                                     !!00415
                                                                       !00416
        04  new-key-store                  pic x(16).                  !00417
                                                                       !00418
*             Docutel Verification Value                              !!00419
                                                                       !00420
        04  docutel-vrfy-val               pic x(16).                  !00421
                                                                       !00422
*             This field is not used.                                 !!00423
                                                                       !00424
                                                                       !00425G00
        04  resp-filler-04                 pic x(4182).                !00425G01
*             The filler field is redefined for the fields             !00425G02
*             required by the optional enhancements.                   !00425G03
                                                                       !00425G04
        04  opt redefines resp-filler-04.                              !00425G05
                                                                       !00425G06
*             The following data is required for TSS Key Index         !00425G07
*             (TKI) processing.                                        !00425G08
                                                                       !00425G09
            06  tki.                                                   !00425G0A
                                                                       !00425G0B
*             Index of new key                                         !00425G0C
                                                                       !00425G0D
                08  new-key-idx            pic x.                      !00425G0E
                                                                       !00425G0F
                                                                       !00425J00
*             The following data is required for AS2805 processing     !00425J01
                                                                       !00425J02
            06  as2805-data.                                           !00425J03
                                                                       !00425J04
*             Version Number                                           !00425J05
                                                                       !00425J06
                08  ver-num                pic x(2).                   !00425J07
                                                                       !00425J08
*             Variant Flag                                             !00425J09
                                                                       !00425J0A
                08  variant-flg            pic x.                      !00425J0B
                                                                       !00425J0C
*             This field is the leftover data from redefining          !00425G0G
*             the resp-filler-04 field.                                !00425G0H
                                                                       !00425G0I
                                                                       !00425J0D
            06  aci-opt                    pic x(4178).                !00425J0E
                                                                       !00425J0F
                                                                       !00425G0K
                                                                       !00426
**********************************************************************!!00427
*                                                                     !!00428
*             Key Generate Followup request                           !!00429
*                                                                     !!00430
**********************************************************************!!00431
                                                                       !00432
    02  cmd-05-rqst                        redefines tss-data.         !00433
                                                                       !00434
*             Command Type                                            !!00435
                                                                       !00436
        04  cmd-typ                        pic x(2).                   !00437
                                                                       !00438
*             Key Type                                                !!00439
                                                                       !00440
        04  key-typ                        pic x(2).                   !00441
                                                                       !00442
*             Key Direction                                           !!00443
                                                                       !00444
        04  key-dir                        pic x.                      !00445
                                                                       !00446
*             Key Locator                                             !!00447
                                                                       !00448
        04  key-loc                        pic x(16).                  !00449
                                                                       !00450
*             Transaction Origin                                      !!00451
                                                                       !00452
        04  txn-orig                       pic x.                      !00453
                                                                       !00454
*             This field is not used.                                 !!00455
                                                                       !00456
                                                                       !00457G00
        04  rqst-filler-05                 pic x(4278).                !00457G01
                                                                       !00457G02
                                                                       !00458
**********************************************************************!!00459
*                                                                     !!00460
*             Key Generate Followup response                          !!00461
*                                                                     !!00462
**********************************************************************!!00463
                                                                       !00464
    02  cmd-05-resp                        redefines tss-data.         !00465
                                                                       !00466
*             Command Type                                            !!00467
                                                                       !00468
        04  cmd-typ                        pic x(2).                   !00469
                                                                       !00470
*             Response Status                                         !!00471
                                                                       !00472
        04  resp-stat                      pic x(2).                   !00473
                                                                       !00474
*             Key Type                                                !!00475
                                                                       !00476
        04  key-typ                        pic x(2).                   !00477
                                                                       !00478
*             Key Direction                                           !!00479
                                                                       !00480
        04  key-dir                        pic x.                      !00481
                                                                       !00482
*             Key Locator                                             !!00483
                                                                       !00484
        04  key-loc                        pic x(16).                  !00485
                                                                       !00486
*             This field is not used.                                 !!00487
                                                                       !00488
                                                                       !00489G00
        04  resp-filler-05                 pic x(4277).                !00489G01
                                                                       !00489G02
                                                                       !00490
**********************************************************************!!00491
*                                                                     !!00492
*             Translate PIN Key for Storage request                   !!00493
*             Translate MAC Key for Storage request                   !!00494
*                                                                     !!00495
**********************************************************************!!00496
                                                                       !00497
    02  cmd-06-rqst                        redefines tss-data.         !00498
                                                                       !00499
*             Command Type                                            !!00500
                                                                       !00501
        04  cmd-typ                        pic x(2).                   !00502
                                                                       !00503
*             Key Type                                                !!00504
                                                                       !00505
        04  key-typ                        pic x(2).                   !00506
                                                                       !00507
*             Key to be Translated Header                             !!00508
                                                                       !00509
        04  key-xlate-hdr                  pic x(8).                   !00510
                                                                       !00511
*             Key to be Translated                                    !!00512
                                                                       !00513
        04  key-xlate                      pic x(48).                  !00514
                                                                       !00515
*             Key to be Translated MAC                                !!00516
                                                                       !00517
        04  key-xlate-mac                  pic x(16).                  !00518
                                                                       !00519
*             Key Direction                                           !!00520
                                                                       !00521
        04  key-dir                        pic x.                      !00522
                                                                       !00523
*             Key Exchange Key Locator                                !!00524
                                                                       !00525
        04  kek-loc                        pic x(16).                  !00526
                                                                       !00527
*             Transaction Origin                                      !!00528
                                                                       !00529
        04  txn-orig                       pic x.                      !00530
                                                                       !00531
*             Number of Check Digits                                  !!00532
                                                                       !00533
        04  num-chk-dgt                    pic x.                      !00534
                                                                       !00535
*             This field is not used.                                 !!00536
                                                                       !00537
                                                                       !00538G00
        04  rqst-filler-06                 pic x(4205).                !00538G01
*             The filler field is redefined for the fields             !00538G02
*             required by the optional enhancements.                   !00538G03
                                                                       !00538G04
        04  opt redefines rqst-filler-06.                              !00538G05
                                                                       !00538G06
*             The following data is required for TSS Key Index         !00538G07
*             (TKI) processing.                                        !00538G08
                                                                       !00538G09
            06  tki.                                                   !00538G0A
                                                                       !00538G0B
*             Index of new key                                         !00538G0C
                                                                       !00538G0D
                08  new-key-idx            pic x.                      !00538G0E
                                                                       !00538G0F
                                                                       !00538J00
*             The following data is required for AS2805 processing     !00538J01
                                                                       !00538J02
            06  as2805-data.                                           !00538J03
                                                                       !00538J04
*             Version Number                                           !00538J05
                                                                       !00538J06
                08  ver-num                pic x(2).                   !00538J07
                                                                       !00538J08
*             Variant Flag                                             !00538J09
                                                                       !00538J0A
                08  variant-flg            pic x.                      !00538J0B
                                                                       !00538J0C
*             This field is the leftover data from redefining          !00538G0G
*             the rqst-filler-06 field.                                !00538G0H
                                                                       !00538G0I
                                                                       !00538J0D
            06  aci-opt                    pic x(4201).                !00538J0E
                                                                       !00538J0F
                                                                       !00538G0K
                                                                       !00539
**********************************************************************!!00540
*                                                                     !!00541
*             Translate PIN Key for Storage response                  !!00542
*             Translate MAC Key for Storage response                  !!00543
*                                                                     !!00544
**********************************************************************!!00545
                                                                       !00546
    02  cmd-06-resp                        redefines tss-data.         !00547
                                                                       !00548
*             Command Type                                            !!00549
                                                                       !00550
        04  cmd-typ                        pic x(2).                   !00551
                                                                       !00552
*             Response Status                                         !!00553
                                                                       !00554
        04  resp-stat                      pic x(2).                   !00555
                                                                       !00556
*             Key Type                                                !!00557
                                                                       !00558
        04  key-typ                        pic x(2).                   !00559
                                                                       !00560
*             Key Check Digits                                        !!00561
                                                                       !00562
        04  key-chk-dgt                    pic x(6).                   !00563
                                                                       !00564
*             Key for Storage                                         !!00565
                                                                       !00566
        04  key-store                      pic x(16).                  !00567
                                                                       !00568
*             This field is not used.                                 !!00569
                                                                       !00570
                                                                       !00571G00
        04  resp-filler-06                 pic x(4272).                !00571G01
                                                                       !00571G02
                                                                       !00572
**********************************************************************!!00573
*                                                                     !!00574
*             Translate PIN Key for Distribution request              !!00575
*             Translate MAC Key for Distribution request              !!00576
*                                                                     !!00577
**********************************************************************!!00578
                                                                       !00579
    02  cmd-07-rqst                        redefines tss-data.         !00580
                                                                       !00581
*             Command Type                                            !!00582
                                                                       !00583
        04  cmd-typ                        pic x(2).                   !00584
                                                                       !00585
*             Key Type                                                !!00586
                                                                       !00587
        04  key-typ                        pic x(2).                   !00588
                                                                       !00589
*             Key Direction                                           !!00590
                                                                       !00591
        04  key-dir                        pic x.                      !00592
                                                                       !00593
*             Key Exchange Key Locator                                !!00594
                                                                       !00595
        04  kek-loc                        pic x(16).                  !00596
                                                                       !00597
*             Transaction Origin                                      !!00598
                                                                       !00599
        04  txn-orig                       pic x.                      !00600
                                                                       !00601
*             Number of Check Digits                                  !!00602
                                                                       !00603
        04  num-chk-dgt                    pic x.                      !00604
                                                                       !00605
*             This field is not used.                                 !!00606
                                                                       !00607
                                                                       !00608G00
        04  rqst-filler-07                 pic x(4277).                !00608G01
                                                                       !00608G02
                                                                       !00609
**********************************************************************!!00610
*                                                                     !!00611
*             Translate PIN Key for Distribution response             !!00612
*             Translate MAC Key for Distribution response             !!00613
*                                                                     !!00614
**********************************************************************!!00615
                                                                       !00616
    02  cmd-07-resp                        redefines tss-data.         !00617
                                                                       !00618
*             Command Type                                            !!00619
                                                                       !00620
        04  cmd-typ                        pic x(2).                   !00621
                                                                       !00622
*             Response Status                                         !!00623
                                                                       !00624
        04  resp-stat                      pic x(2).                   !00625
                                                                       !00626
*             Key Type                                                !!00627
                                                                       !00628
        04  key-typ                        pic x(2).                   !00629
                                                                       !00630
*             Key Check Digits                                        !!00631
                                                                       !00632
        04  key-chk-dgt                    pic x(6).                   !00633
                                                                       !00634
*             Key Length                                              !!00635
                                                                       !00636
        04  key-lgth                       pic x.                      !00637
                                                                       !00638
*             Key for Distribution Header                             !!00639
                                                                       !00640
        04  key-dist-hdr                   pic x(8).                   !00641
                                                                       !00642
*             Key for Distribution                                    !!00643
                                                                       !00644
        04  key-dist                       pic x(48).                  !00645
                                                                       !00646
*             Key for Distribution MAC                                !!00647
                                                                       !00648
        04  key-dist-mac                   pic x(16).                  !00649
                                                                       !00650
*             This field is not used.                                 !!00651
                                                                       !00652
                                                                       !00653G00
        04  resp-filler-07                 pic x(4215).                !00653G01
                                                                       !00653G02
                                                                       !00654
**********************************************************************!!00655
*                                                                     !!00656
*             MAC Generate request                                    !!00657
*                                                                     !!00658
**********************************************************************!!00659
                                                                       !00660
    02  cmd-08-rqst                        redefines tss-data.         !00661
                                                                       !00662
*             Command Type                                            !!00663
                                                                       !00664
        04  cmd-typ                        pic x(2).                   !00665
                                                                       !00666
*             Code for the length of the MAC Response                 !!00667
                                                                       !00668
        04  mac-resp-lgth-cde              pic x.                      !00669
                                                                       !00670
*             Data to be MACed                                        !!00671
                                                                       !00672
        04  mac-data                       pic x(4096).                !00673
                                                                       !00674
*             Length of Data to be MACed                              !!00675
                                                                       !00676
        04  mac-data-lgth                  pic x(4).                   !00677
                                                                       !00678
*             Key Locator                                             !!00679
                                                                       !00680
        04  key-loc                        pic x(16).                  !00681
                                                                       !00682
*             Transaction Origin                                      !!00683
                                                                       !00684
        04  txn-orig                       pic x.                      !00685
                                                                       !00686
*             Key Direction                                           !!00687
                                                                       !00688
        04  key-dir                        pic x.                      !00689
                                                                       !00690
*             Flag indicating that the old MAC key should be used     !!00691
                                                                       !00692
        04  old-key-flg                    pic x.                      !00693
                                                                       !00694
                                                                       !00694E00
*             Flag indicating whether to include the IV in the HSM     !00694E01
*             command.                                                 !00694E02
*                 "Y" - Include the IV in the HSM command.             !00694E03
*                 "N" - Do not include the IV in the HSM command.      !00694E04
                                                                       !00694E05
        04  iv-flg                         pic x.                      !00694E06
                                                                       !00694E07
                                                                       !00694F00
*             MAC function                                             !00694F01
                                                                       !00694F02
        04  mac-function                   pic x.                      !00694F03
                                                                       !00694F04
                                                                       !00694E08
*             This field is not used.                                 !!00695
                                                                       !00696
                                                                       !00697E00
                                                                       !00697F00
                                                                       !00697G00
        04  rqst-filler-08                 pic x(176).                 !00697G01
                                                                       !00697G02
                                                                       !00697F02
                                                                       !00697E02
                                                                       !00698
                                                                       !00698G00
*             The filler field is redefined for the fields             !00698G01
*             required by the optional enhancements.                   !00698G02
                                                                       !00698G03
        04  opt redefines rqst-filler-08.                              !00698G04
                                                                       !00698G05
*             The following data is required for TSS Key Index         !00698G06
*             (TKI) processing.                                        !00698G07
                                                                       !00698G08
            06  tki.                                                   !00698G09
                                                                       !00698G0A
*             Index of MAC key                                         !00698G0B
                                                                       !00698G0C
                08  mac-key-idx            pic x.                      !00698G0D
                                                                       !00698G0E
*             This field is the leftover data from redefining          !00698G0F
*             the rqst-filler-08 field.                                !00698G0G
                                                                       !00698G0H
            06  aci-opt                    pic x(175).                 !00698G0I
                                                                       !00698G0J
**********************************************************************!!00699
*                                                                     !!00700
*             MAC Generate response                                   !!00701
*                                                                     !!00702
**********************************************************************!!00703
                                                                       !00704
    02  cmd-08-resp                        redefines tss-data.         !00705
                                                                       !00706
*             Command Type                                            !!00707
                                                                       !00708
        04  cmd-typ                        pic x(2).                   !00709
                                                                       !00710
*             Response Status                                         !!00711
                                                                       !00712
        04  resp-stat                      pic x(2).                   !00713
                                                                       !00714
*             MAC Check Digits                                        !!00715
                                                                       !00716
        04  mac-chk-dgt                    pic x(6).                   !00717
                                                                       !00718
*             MAC Value                                               !!00719
                                                                       !00720
        04  mac-val                        pic x(16).                  !00721
                                                                       !00722
*             This field is not used.                                 !!00723
                                                                       !00724
                                                                       !00725G00
        04  resp-filler-08                 pic x(4274).                !00725G01
*             The filler field is redefined for the fields             !00725G02
*             required by the optional enhancements.                   !00725G03
                                                                       !00725G04
        04  opt redefines resp-filler-08.                              !00725G05
                                                                       !00725G06
*             The following data is required for TSS Key Index         !00725G07
*             (TKI) processing.                                        !00725G08
                                                                       !00725G09
            06  tki.                                                   !00725G0A
                                                                       !00725G0B
*             Index of MAC key used                                    !00725G0C
                                                                       !00725G0D
                08  mac-key-idx            pic x.                      !00725G0E
                                                                       !00725G0F
*             This field is the leftover data from redefining          !00725G0G
*             the resp-filler-08 field.                                !00725G0H
                                                                       !00725G0I
            06  aci-opt                    pic x(4273).                !00725G0J
                                                                       !00725G0K
                                                                       !00726
**********************************************************************!!00727
*                                                                     !!00728
*             MAC Verify request                                      !!00729
*                                                                     !!00730
**********************************************************************!!00731
                                                                       !00732
    02  cmd-09-rqst                        redefines tss-data.         !00733
                                                                       !00734
*             Command Type                                            !!00735
                                                                       !00736
        04  cmd-typ                        pic x(2).                   !00737
                                                                       !00738
*             Code for the length of the MAC Response                 !!00739
                                                                       !00740
        04  mac-resp-lgth-cde              pic x.                      !00741
                                                                       !00742
*             MAC Value                                               !!00743
                                                                       !00744
        04  mac-val                        pic x(16).                  !00745
                                                                       !00746
*             Data to be MACed                                        !!00747
                                                                       !00748
        04  mac-data                       pic x(4096).                !00749
                                                                       !00750
*             Lengtth of Data to be MACed                             !!00751
                                                                       !00752
        04  mac-data-lgth                  pic x(4).                   !00753
                                                                       !00754
*             Key Locator                                             !!00755
                                                                       !00756
        04  key-loc                        pic x(16).                  !00757
                                                                       !00758
*             Transaction Origin                                      !!00759
                                                                       !00760
        04  txn-orig                       pic x.                      !00761
                                                                       !00762
*             Key Direction                                           !!00763
                                                                       !00764
        04  key-dir                        pic x.                      !00765
                                                                       !00766
                                                                       !00766A00
*             Flag indicating that the old MAC key should be used      !00766A01
                                                                       !00766A02
        04  old-key-flg                    pic x.                      !00766A03
                                                                       !00766A04
*             This field is not used.                                 !!00767
                                                                       !00768
                                                                       !00769A00
                                                                       !00769G00
        04  rqst-filler-09                 pic x(162).                 !00769G01
                                                                       !00769G02
                                                                       !00769A02
                                                                       !00769G03
*             The filler field is redefined for the fields             !00769G04
*             required by the optional enhancements.                   !00769G05
                                                                       !00769G06
        04  opt redefines rqst-filler-09.                              !00769G07
                                                                       !00769G08
*             The following data is required for TSS Key Index         !00769G09
*             (TKI) processing.                                        !00769G0A
                                                                       !00769G0B
            06  tki.                                                   !00769G0C
                                                                       !00769G0D
*             Racal MAC function                                       !00769G0E
                                                                       !00769G0F
                08  racal-mac-funct        pic x.                      !00769G0G
                                                                       !00769G0H
*             Index of MAC key to be used                              !00769G0I
                                                                       !00769G0J
                08  mac-key-idx            pic x.                      !00769G0K
                                                                       !00769G0L
*             This field is the leftover data from redefining          !00769G0M
*             the rqst-filler-09 field.                                !00769G0N
                                                                       !00769G0O
            06  aci-opt                    pic x(160).                 !00769G0P
                                                                       !00769G0Q
                                                                       !00770
**********************************************************************!!00771
*                                                                     !!00772
*             MAC Verify response                                     !!00773
*                                                                     !!00774
**********************************************************************!!00775
                                                                       !00776
    02  cmd-09-resp                        redefines tss-data.         !00777
                                                                       !00778
*             Command Type                                            !!00779
                                                                       !00780
        04  cmd-typ                        pic x(2).                   !00781
                                                                       !00782
*             Response Status                                         !!00783
                                                                       !00784
        04  resp-stat                      pic x(2).                   !00785
                                                                       !00786
*             MAC Check Digits                                        !!00787
                                                                       !00788
        04  mac-chk-dgt                    pic x(6).                   !00789
                                                                       !00790
*             This field is not used.                                 !!00791
                                                                       !00792
                                                                       !00793G00
        04  resp-filler-09                 pic x(4290).                !00793G01
*             The filler field is redefined for the fields             !00793G02
*             required by the optional enhancements.                   !00793G03
                                                                       !00793G04
        04  opt redefines resp-filler-09.                              !00793G05
                                                                       !00793G06
*             The following data is required for TSS Key Index         !00793G07
*             (TKI) processing.                                        !00793G08
                                                                       !00793G09
            06  tki.                                                   !00793G0A
                                                                       !00793G0B
*             Index of MAC key used                                    !00793G0C
                                                                       !00793G0D
                08  mac-key-idx            pic x.                      !00793G0E
                                                                       !00793G0F
*             This field is the leftover data from redefining          !00793G0G
*             the resp-filler-09 field.                                !00793G0H
                                                                       !00793G0I
            06  aci-opt                    pic x(4289).                !00793G0J
                                                                       !00793G0K
                                                                       !00794
**********************************************************************!!00795
*                                                                     !!00796
*             Generate IBM PIN Offset request                         !!00797
*                                                                     !!00798
**********************************************************************!!00799
                                                                       !00800
    02  cmd-10-rqst                        redefines tss-data.         !00801
                                                                       !00802
*             Command Type                                            !!00803
                                                                       !00804
        04  cmd-typ                        pic x(2).                   !00805
                                                                       !00806
*             Encrypted PIN                                           !!00807
                                                                       !00808
        04  pin                            pic x(16).                  !00809
                                                                       !00810
*             Key Locator                                             !!00811
                                                                       !00812
        04  key-loc                        pic x(16).                  !00813
                                                                       !00814
*             Primary key value to KEYA record                        !!00815
                                                                       !00816
        04  keya-grp                       pic x(16).                  !00817
                                                                       !00818
*             Card Expiration Date (YYMM)                             !!00819
                                                                       !00820
        04  crd-exp-dat                    pic x(4).                   !00821
                                                                       !00822
*             Primary Account Number                                  !!00823
                                                                       !00824
        04  pan                            pic x(19).                  !00825
                                                                       !00826
*             Length of Primary Account Number                        !!00827
                                                                       !00828
        04  pan-lgth                       pic x(2).                   !00829
                                                                       !00830
*             PIN Block Type                                          !!00831
                                                                       !00832
        04  pin-blk-typ                    pic x.                      !00833
                                                                       !00834
*             PIN Offset                                              !!00835
                                                                       !00836
        04  pin-ofst                       pic x(12).                  !00837
                                                                       !00838
*             PIN Offset Length                                       !!00839
                                                                       !00840
        04  pin-ofst-lgth                  pic x(2).                   !00841
                                                                       !00842
*             Transaction Origin                                      !!00843
                                                                       !00844
        04  txn-orig                       pic x.                      !00845
                                                                       !00846
*             This field is not used.                                 !!00847
                                                                       !00848
                                                                       !00849G00
        04  rqst-filler-10                 pic x(4209).                !00849G01
                                                                       !00849G02
                                                                       !00850
**********************************************************************!!00851
*                                                                     !!00852
*             Generate IBM PIN Offset response                        !!00853
*                                                                     !!00854
**********************************************************************!!00855
                                                                       !00856
    02  cmd-10-resp                        redefines tss-data.         !00857
                                                                       !00858
*             Command Type                                            !!00859
                                                                       !00860
        04  cmd-typ                        pic x(2).                   !00861
                                                                       !00862
*             Response Status                                         !!00863
                                                                       !00864
        04  resp-stat                      pic x(2).                   !00865
                                                                       !00866
*             PIN Offset                                              !!00867
                                                                       !00868
        04  pin-ofst                       pic x(12).                  !00869
                                                                       !00870
*             PIN Offset Length                                       !!00871
                                                                       !00872
        04  pin-ofst-lgth                  pic x(2).                   !00873
                                                                       !00874
*             This field is not used.                                 !!00875
                                                                       !00876
                                                                       !00877G00
        04  resp-filler-10                 pic x(4282).                !00877G01
                                                                       !00877G02
                                                                       !00878
**********************************************************************!!00879
*                                                                     !!00880
*             Generate Dieblod PIN Offset request                     !!00881
*                                                                     !!00882
**********************************************************************!!00883
                                                                       !00884
    02  cmd-11-rqst                        redefines tss-data.         !00885
                                                                       !00886
*             Command Type                                            !!00887
                                                                       !00888
        04  cmd-typ                        pic x(2).                   !00889
                                                                       !00890
*             Diebold Algo Number                                     !!00891
                                                                       !00892
        04  diebold-algo-num               pic x(2).                   !00893
                                                                       !00894
*             Encrypted PIN                                           !!00895
                                                                       !00896
        04  pin                            pic x(16).                  !00897
                                                                       !00898
*             Key Locator                                             !!00899
                                                                       !00900
        04  key-loc                        pic x(16).                  !00901
                                                                       !00902
*             Primary key value to KEYA record                        !!00903
                                                                       !00904
        04  keya-grp                       pic x(16).                  !00905
                                                                       !00906
*             Card Expiration Date (YYMM)                             !!00907
                                                                       !00908
        04  crd-exp-dat                    pic x(4).                   !00909
                                                                       !00910
*             Primary Account Number                                  !!00911
                                                                       !00912
        04  pan                            pic x(19).                  !00913
                                                                       !00914
*             Length of Primary Account Number                        !!00915
                                                                       !00916
        04  pan-lgth                       pic x(2).                   !00917
                                                                       !00918
*             PIN Block Type                                          !!00919
                                                                       !00920
        04  pin-blk-typ                    pic x.                      !00921
                                                                       !00922
*             PIN Offset                                              !!00923
                                                                       !00924
        04  pin-ofst                       pic x(12).                  !00925
                                                                       !00926
*             PIN Offset Length                                       !!00927
                                                                       !00928
        04  pin-ofst-lgth                  pic x(2).                   !00929
                                                                       !00930
*             Transaction Origin                                      !!00931
                                                                       !00932
        04  txn-orig                       pic x.                      !00933
                                                                       !00934
*             This field is not used.                                 !!00935
                                                                       !00936
                                                                       !00937G00
        04  rqst-filler-11                 pic x(4207).                !00937G01
                                                                       !00937G02
                                                                       !00938
**********************************************************************!!00939
*                                                                     !!00940
*             Generate Dieblod PIN Offset response                    !!00941
*                                                                     !!00942
**********************************************************************!!00943
                                                                       !00944
    02  cmd-11-resp                        redefines tss-data.         !00945
                                                                       !00946
*             Command Type                                            !!00947
                                                                       !00948
        04  cmd-typ                        pic x(2).                   !00949
                                                                       !00950
*             Response Status                                         !!00951
                                                                       !00952
        04  resp-stat                      pic x(2).                   !00953
                                                                       !00954
*             PIN Offset                                              !!00955
                                                                       !00956
        04  pin-ofst                       pic x(12).                  !00957
                                                                       !00958
*             PIN Offset Length                                       !!00959
                                                                       !00960
        04  pin-ofst-lgth                  pic x(2).                   !00961
                                                                       !00962
*             This field is not used.                                 !!00963
                                                                       !00964
                                                                       !00965G00
        04  resp-filler-11                 pic x(4282).                !00965G01
                                                                       !00965G02
                                                                       !00966
**********************************************************************!!00967
*                                                                     !!00968
*             Generate VISA PVV PIN Offset request                    !!00969
*                                                                     !!00970
**********************************************************************!!00971
                                                                       !00972
    02  cmd-12-rqst                        redefines tss-data.         !00973
                                                                       !00974
*             Command Type                                            !!00975
                                                                       !00976
        04  cmd-typ                        pic x(2).                   !00977
                                                                       !00978
*             Encrypted PIN                                           !!00979
                                                                       !00980
        04  pin                            pic x(16).                  !00981
                                                                       !00982
*             PIN Encryption Key Locator                              !!00983
                                                                       !00984
        04  kpe-loc                        pic x(16).                  !00985
                                                                       !00986
*             Primary key value to KEYA record                        !!00987
                                                                       !00988
        04  keya-grp                       pic x(16).                  !00989
                                                                       !00990
*             Card Expiration Date (YYMM)                             !!00991
                                                                       !00992
        04  crd-exp-dat                    pic x(4).                   !00993
                                                                       !00994
*             Primary Account Number                                  !!00995
                                                                       !00996
        04  pan                            pic x(19).                  !00997
                                                                       !00998
*             Length of Primary Account Number                        !!00999
                                                                       !01000
        04  pan-lgth                       pic x(2).                   !01001
                                                                       !01002
*             PIN Block Type                                          !!01003
                                                                       !01004
        04  pin-blk-typ                    pic x.                      !01005
                                                                       !01006
*             PIN Verification Key Locator                            !!01007
                                                                       !01008
        04  pvk-ind                        pic x.                      !01009
                                                                       !01010
*             PVV Value                                               !!01011
                                                                       !01012
        04  pvv-val                        pic x(4).                   !01013
                                                                       !01014
*             Transaction Origin                                      !!01015
                                                                       !01016
        04  txn-orig                       pic x.                      !01017
                                                                       !01018
*             This field is not used.                                 !!01019
                                                                       !01020
                                                                       !01021G00
        04  rqst-filler-12                 pic x(4218).                !01021G01
                                                                       !01021G02
                                                                       !01022
**********************************************************************!!01023
*                                                                     !!01024
*             Generate VISA PVV PIN Offset response                   !!01025
*                                                                     !!01026
**********************************************************************!!01027
                                                                       !01028
    02  cmd-12-resp                        redefines tss-data.         !01029
                                                                       !01030
*             Command Type                                            !!01031
                                                                       !01032
        04  cmd-typ                        pic x(2).                   !01033
                                                                       !01034
*             Response Status                                         !!01035
                                                                       !01036
        04  resp-stat                      pic x(2).                   !01037
                                                                       !01038
*             PVV Value                                               !!01039
                                                                       !01040
        04  pvv-val                        pic x(12).                  !01041
                                                                       !01042
*             PVV Length                                              !!01043
                                                                       !01044
        04  pvv-lgth                       pic x(2).                   !01045
                                                                       !01046
*             This field is not used.                                 !!01047
                                                                       !01048
                                                                       !01049G00
        04  resp-filler-12                 pic x(4282).                !01049G01
                                                                       !01049G02
                                                                       !01050
**********************************************************************!!01051
*                                                                     !!01052
*             Translate Internal PIN to External PIN request          !!01053
*                                                                     !!01054
**********************************************************************!!01055
                                                                       !01056
    02  cmd-13-rqst                        redefines tss-data.         !01057
                                                                       !01058
*             Command Type                                            !!01059
                                                                       !01060
        04  cmd-typ                        pic x(2).                   !01061
                                                                       !01062
*             Input PIN Encryption Key Locator                        !!01063
                                                                       !01064
        04  kpe-loc-in                     pic x(16).                  !01065
                                                                       !01066
*             Output PIN Encryption Key Locator                       !!01067
                                                                       !01068
        04  kpe-loc-out                    pic x(16).                  !01069
                                                                       !01070
*             Input PIN Block                                         !!01071
                                                                       !01072
        04  pin-in                         pic x(16).                  !01073
                                                                       !01074
*             Primary Account Number                                  !!01075
                                                                       !01076
        04  pan                            pic x(19).                  !01077
                                                                       !01078
*             Length of Primary Account Number                        !!01079
                                                                       !01080
        04  pan-lgth                       pic x(2).                   !01081
                                                                       !01082
*             Transaction Origin                                      !!01083
                                                                       !01084
        04  txn-orig                       pic x.                      !01085
                                                                       !01086
*             This field is not used.                                 !!01087
                                                                       !01088
                                                                       !01089G00
        04  rqst-filler-13                 pic x(4228).                !01089G01
*             The filler field is redefined for the fields             !01089G02
*             required by the optional enhancements.                   !01089G03
                                                                       !01089G04
        04  opt redefines rqst-filler-13.                              !01089G05
                                                                       !01089G06
*             The following data is required for TSS Key Index         !01089G07
*             (TKI) processing.                                        !01089G08
                                                                       !01089G09
            06  tki.                                                   !01089G0A
                                                                       !01089G0B
*             Index of the input PIN encryption key to be used         !01089G0C
                                                                       !01089G0D
                08  input-pin-key-idx      pic x.                      !01089G0E
                                                                       !01089G0F
*             Index of the output PIN encryption key to be used        !01089G0G
                                                                       !01089G0H
                08  output-pin-key-idx     pic x.                      !01089G0I
                                                                       !01089G0J
*             This field is the leftover data from redefining          !01089G0K
*             the rqst-filler-13 field.                                !01089G0L
                                                                       !01089G0M
            06  aci-opt                    pic x(4226).                !01089G0N
                                                                       !01089G0O
                                                                       !01090
**********************************************************************!!01091
*                                                                     !!01092
*             Translate Internal PIN to External PIN response         !!01093
*                                                                     !!01094
**********************************************************************!!01095
                                                                       !01096
    02  cmd-13-resp                        redefines tss-data.         !01097
                                                                       !01098
*             Command Type                                            !!01099
                                                                       !01100
        04  cmd-typ                        pic x(2).                   !01101
                                                                       !01102
*             Response Status                                         !!01103
                                                                       !01104
        04  resp-stat                      pic x(2).                   !01105
                                                                       !01106
*             Output PIN Block                                        !!01107
                                                                       !01108
        04  pin-out                        pic x(16).                  !01109
                                                                       !01110
*             This field is not used.                                 !!01111
                                                                       !01112
                                                                       !01113G00
        04  resp-filler-13                 pic x(4280).                !01113G01
*             The filler field is redefined for the fields             !01113G02
*             required by the optional enhancements.                   !01113G03
                                                                       !01113G04
        04  opt redefines resp-filler-13.                              !01113G05
                                                                       !01113G06
*             The following data is required for TSS Key Index         !01113G07
*             (TKI) processing.                                        !01113G08
                                                                       !01113G09
            06  tki.                                                   !01113G0A
                                                                       !01113G0B
*             Index of the output PIN encryption key used.             !01113G0C
                                                                       !01113G0D
                08  output-pin-key-idx     pic x.                      !01113G0E
                                                                       !01113G0F
*             This field is the leftover data from redefining          !01113G0G
*             the resp-filler-13 field.                                !01113G0H
                                                                       !01113G0I
            06  aci-opt                    pic x(4279).                !01113G0J
                                                                       !01113G0K
                                                                       !01114
**********************************************************************!!01115
*                                                                     !!01116
*             Verfiy IBM PIN request                                  !!01117
*                                                                     !!01118
**********************************************************************!!01119
                                                                       !01120
    02  cmd-14-rqst                        redefines tss-data.         !01121
                                                                       !01122
*             Command Type                                            !!01123
                                                                       !01124
        04  cmd-typ                        pic x(2).                   !01125
                                                                       !01126
*             Encrypted PIN                                           !!01127
                                                                       !01128
        04  pin                            pic x(16).                  !01129
                                                                       !01130
*             PIN Encryption Key Locator                              !!01131
                                                                       !01132
        04  kpe-loc                        pic x(16).                  !01133
                                                                       !01134
*             Primary key value to KEYA record                        !!01135
                                                                       !01136
        04  keya-grp                       pic x(16).                  !01137
                                                                       !01138
*             Card Expiration Date (YYMM)                             !!01139
                                                                       !01140
        04  crd-exp-dat                    pic x(4).                   !01141
                                                                       !01142
*             Primary Account Number                                  !!01143
                                                                       !01144
        04  pan                            pic x(19).                  !01145
                                                                       !01146
*             Length of Primary Account Number                        !!01147
                                                                       !01148
        04  pan-lgth                       pic x(2).                   !01149
                                                                       !01150
*             PIN Offset                                              !!01151
                                                                       !01152
        04  pin-ofst                       pic x(12).                  !01153
                                                                       !01154
*             PIN Offset Length                                       !!01155
                                                                       !01156
        04  pin-ofst-lgth                  pic x(2).                   !01157
                                                                       !01158
*             Transaction Origin                                      !!01159
                                                                       !01160
        04  txn-orig                       pic x.                      !01161
                                                                       !01162
*             This field is not used.                                 !!01163
                                                                       !01164
                                                                       !01165G00
        04  rqst-filler-14                 pic x(4210).                !01165G01
*             The filler field is redefined for the fields             !01165G02
*             required by the optional enhancements.                   !01165G03
                                                                       !01165G04
        04  opt redefines rqst-filler-14.                              !01165G05
                                                                       !01165G06
*             The following data is required for TSS Key Index         !01165G07
*             (TKI) processing.                                        !01165G08
                                                                       !01165G09
            06  tki.                                                   !01165G0A
                                                                       !01165G0B
*             Index of the PIN encryption key to be used.              !01165G0C
                                                                       !01165G0D
                08  pin-key-idx            pic x.                      !01165G0E
                                                                       !01165G0F
*             This field is the leftover data from redefining          !01165G0G
*             the rqst-filler-14 field.                                !01165G0H
                                                                       !01165G0I
            06  aci-opt                    pic x(4209).                !01165G0J
                                                                       !01165G0K
                                                                       !01166
**********************************************************************!!01167
*                                                                     !!01168
*             Verfiy IBM PIN response                                 !!01169
*                                                                     !!01170
**********************************************************************!!01171
                                                                       !01172
    02  cmd-14-resp                        redefines tss-data.         !01173
                                                                       !01174
*             Command Type                                            !!01175
                                                                       !01176
        04  cmd-typ                        pic x(2).                   !01177
                                                                       !01178
*             Response Status                                         !!01179
                                                                       !01180
        04  resp-stat                      pic x(2).                   !01181
                                                                       !01182
*             This field is not used.                                 !!01183
                                                                       !01184
                                                                       !01185G00
        04  resp-filler-14                 pic x(4296).                !01185G01
                                                                       !01185G02
                                                                       !01186
**********************************************************************!!01187
*                                                                     !!01188
*             Verfiy Diebold PIN request                              !!01189
*                                                                     !!01190
**********************************************************************!!01191
                                                                       !01192
    02  cmd-15-rqst                        redefines tss-data.         !01193
                                                                       !01194
*             Command Type                                            !!01195
                                                                       !01196
        04  cmd-typ                        pic x(2).                   !01197
                                                                       !01198
*             Diebold Algo Number                                     !!01199
                                                                       !01200
        04  diebold-algo-num               pic x(2).                   !01201
                                                                       !01202
*             Encrypted PIN                                           !!01203
                                                                       !01204
        04  pin                            pic x(16).                  !01205
                                                                       !01206
*             PIN Encryption Key Locator                              !!01207
                                                                       !01208
        04  kpe-loc                        pic x(16).                  !01209
                                                                       !01210
*             Primary key value to KEYA record                        !!01211
                                                                       !01212
        04  keya-grp                       pic x(16).                  !01213
                                                                       !01214
*             Card Expiration Date (YYMM)                             !!01215
                                                                       !01216
        04  crd-exp-dat                    pic x(4).                   !01217
                                                                       !01218
*             Primary Account Number                                  !!01219
                                                                       !01220
        04  pan                            pic x(19).                  !01221
                                                                       !01222
*             Length of Primary Account Number                        !!01223
                                                                       !01224
        04  pan-lgth                       pic x(2).                   !01225
                                                                       !01226
*             PIN Offset                                              !!01227
                                                                       !01228
        04  pin-ofst                       pic x(12).                  !01229
                                                                       !01230
*             PIN Offset Length                                       !!01231
                                                                       !01232
        04  pin-ofst-lgth                  pic x(2).                   !01233
                                                                       !01234
*             Transaction Origin                                      !!01235
                                                                       !01236
        04  txn-orig                       pic x.                      !01237
                                                                       !01238
*             This field is not used.                                 !!01239
                                                                       !01240
                                                                       !01241G00
        04  rqst-filler-15                 pic x(4208).                !01241G01
*             The filler field is redefined for the fields             !01241G02
*             required by the optional enhancements.                   !01241G03
                                                                       !01241G04
        04  opt redefines rqst-filler-15.                              !01241G05
                                                                       !01241G06
*             The following data is required for TSS Key Index         !01241G07
*             (TKI) processing.                                        !01241G08
                                                                       !01241G09
            06  tki.                                                   !01241G0A
                                                                       !01241G0B
*             Index of the PIN encryption key to be used.              !01241G0C
                                                                       !01241G0D
                08  pin-key-idx            pic x.                      !01241G0E
                                                                       !01241G0F
*             This field is the leftover data from redefining          !01241G0G
*             the rqst-filler-15 field.                                !01241G0H
                                                                       !01241G0I
            06  aci-opt                    pic x(4207).                !01241G0J
                                                                       !01241G0K
                                                                       !01242
**********************************************************************!!01243
*                                                                     !!01244
*             Verfiy Diebold PIN response                             !!01245
*                                                                     !!01246
**********************************************************************!!01247
                                                                       !01248
    02  cmd-15-resp                        redefines tss-data.         !01249
                                                                       !01250
*             Command Type                                            !!01251
                                                                       !01252
        04  cmd-typ                        pic x(2).                   !01253
                                                                       !01254
*             Response Status                                         !!01255
                                                                       !01256
        04  resp-stat                      pic x(2).                   !01257
                                                                       !01258
*             This field is not used.                                 !!01259
                                                                       !01260
                                                                       !01261G00
        04  resp-filler-15                 pic x(4296).                !01261G01
                                                                       !01261G02
                                                                       !01262
**********************************************************************!!01263
*                                                                     !!01264
*             Verfiy VISA PVV PIN request                             !!01265
*                                                                     !!01266
**********************************************************************!!01267
                                                                       !01268
    02  cmd-16-rqst                        redefines tss-data.         !01269
                                                                       !01270
*             Command Type                                            !!01271
                                                                       !01272
        04  cmd-typ                        pic x(2).                   !01273
                                                                       !01274
*             Encrypted PIN                                           !!01275
                                                                       !01276
        04  pin                            pic x(16).                  !01277
                                                                       !01278
*             PIN Encryption Key Locator                              !!01279
                                                                       !01280
        04  kpe-loc                        pic x(16).                  !01281
                                                                       !01282
*             Primary key value to KEYA record                        !!01283
                                                                       !01284
        04  keya-grp                       pic x(16).                  !01285
                                                                       !01286
*             Card Expiration Date (YYMM)                             !!01287
                                                                       !01288
        04  crd-exp-dat                    pic x(4).                   !01289
                                                                       !01290
*             Primary Account Number                                  !!01291
                                                                       !01292
        04  pan                            pic x(19).                  !01293
                                                                       !01294
*             Length of Primary Account Number                        !!01295
                                                                       !01296
        04  pan-lgth                       pic x(2).                   !01297
                                                                       !01298
*             PIN Verification Key Locator                            !!01299
                                                                       !01300
        04  pvk-ind                        pic x.                      !01301
                                                                       !01302
*             PVV Value                                               !!01303
                                                                       !01304
        04  pvv-val                        pic x(4).                   !01305
                                                                       !01306
*             Transaction Origin                                      !!01307
                                                                       !01308
        04  txn-orig                       pic x.                      !01309
                                                                       !01310
*             This field is not used.                                 !!01311
                                                                       !01312
                                                                       !01313G00
        04  rqst-filler-16                 pic x(4219).                !01313G01
*             The filler field is redefined for the fields             !01313G02
*             required by the optional enhancements.                   !01313G03
                                                                       !01313G04
        04  opt redefines rqst-filler-16.                              !01313G05
                                                                       !01313G06
*             The following data is required for TSS Key Index         !01313G07
*             (TKI) processing.                                        !01313G08
                                                                       !01313G09
            06  tki.                                                   !01313G0A
                                                                       !01313G0B
*             Index of the PIN encryption key to be used.              !01313G0C
                                                                       !01313G0D
                08  pin-key-idx            pic x.                      !01313G0E
                                                                       !01313G0F
*             This field is the leftover data from redefining          !01313G0G
*             the rqst-filler-16 field.                                !01313G0H
                                                                       !01313G0I
            06  aci-opt                    pic x(4218).                !01313G0J
                                                                       !01313G0K
                                                                       !01314
**********************************************************************!!01315
*                                                                     !!01316
*             Verfiy VISA PVV PIN response                            !!01317
*                                                                     !!01318
**********************************************************************!!01319
                                                                       !01320
    02  cmd-16-resp                        redefines tss-data.         !01321
                                                                       !01322
*             Command Type                                            !!01323
                                                                       !01324
        04  cmd-typ                        pic x(2).                   !01325
                                                                       !01326
*             Response Status                                         !!01327
                                                                       !01328
        04  resp-stat                      pic x(2).                   !01329
                                                                       !01330
*             This field is not used.                                 !!01331
                                                                       !01332
                                                                       !01333G00
        04  resp-filler-16                 pic x(4296).                !01333G01
                                                                       !01333G02
                                                                       !01334
                                                                       !01334J00
**********************************************************************!!01334J01
*                                                                     !!01334J02
*             EMV Verify Encrypted Counters request                   !!01334J03
*                                                                     !!01334J04
**********************************************************************!!01334J05
                                                                       !01334J06
                                                                       !01335J00
                                                                       !01335J01
                                                                       !01335J02
                                                                       !01340
    02  cmd-17-rqst                        redefines tss-data.         !01341
                                                                       !01342
*             Command Type                                            !!01343
                                                                       !01344
        04  cmd-typ                        pic x(2).                   !01345
                                                                       !01346
                                                                       !01346J00
*             KEYI Group                                               !01346J01
                                                                       !01346J02
        04  keyi-grp                       pic x(16).                  !01346J03
                                                                       !01346J04
*             Card Expiration Date                                     !01346J05
                                                                       !01346J06
        04  crd-exp-dat                    pic x(4).                   !01346J07
                                                                       !01346J08
*             Derivation Key Index                                     !01346J09
                                                                       !01346J0A
        04  drvtn-key-idx                  pic x.                      !01346J0B
                                                                       !01346J0C
*             Primary Account Number                                   !01346J0D
                                                                       !01346J0E
        04  pan                            pic x(19).                  !01346J0F
                                                                       !01346J0G
*             Member Number                                            !01346J0H
                                                                       !01346J0I
        04  mbr-num                        pic x(3).                   !01346J0J
                                                                       !01346J0K
*             Crypto Version Number                                    !01346J0L
                                                                       !01346J0M
        04  crypto-ver-num                 pic x.                      !01346J0N
                                                                       !01346J0O
*             Application Transaction Counter                          !01346J0P
                                                                       !01346J0Q
        04  atc                            pic x(2).                   !01346J0R
                                                                       !01346J0S
*             Encrypted Counters                                       !01346J0T
                                                                       !01346J0U
        04  encrypt-cntrs                  pic x(8).                   !01346J0V
                                                                       !01346J0W
*             Key Derivation Method                                    !01346J0X
                                                                       !01346J0Y
        04  key-drvtn-method               pic x.                      !01346J0Z
                                                                       !01346J0a
*             This field is not used.                                 !!01347
                                                                       !01348
                                                                       !01349G00
                                                                       !01349J00
        04  rqst-filler-17                 pic x(4243).                !01349J01
                                                                       !01349J02
                                                                       !01349G02
                                                                       !01350
                                                                       !01350J00
**********************************************************************!!01350J01
*                                                                     !!01350J02
*             EMV Verify Encrypted Counters response                  !!01350J03
*                                                                     !!01350J04
**********************************************************************!!01350J05
                                                                       !01350J06
                                                                       !01351J00
                                                                       !01351J01
                                                                       !01351J02
                                                                       !01356
    02  cmd-17-resp                        redefines tss-data.         !01357
                                                                       !01358
*             Command Type                                            !!01359
                                                                       !01360
        04  cmd-typ                        pic x(2).                   !01361
                                                                       !01362
*             Response Status                                         !!01363
                                                                       !01364
        04  resp-stat                      pic x(2).                   !01365
                                                                       !01366
                                                                       !01366J00
*             Offline Cumulated Transaction Amount                     !01366J01
                                                                       !01366J02
        04  offl-cumulated-txn-amt         pic x(6).                   !01366J03
                                                                       !01366J04
*             Offline Consecutive Transaction Number                   !01366J05
                                                                       !01366J06
        04  offl-cnsc-txn-num              pic x(2).                   !01366J07
                                                                       !01366J08
*             This field is not used.                                 !!01367
                                                                       !01368
                                                                       !01369G00
                                                                       !01369J00
        04  resp-filler-17                 pic x(4288).                !01369J01
                                                                       !01369J02
                                                                       !01369G02
                                                                       !01370
                                                                       !01370A00
********************************************************************** !01370A01
*                                                                      !01370A02
*             Key Activate request                                     !01370A03
*                                                                      !01370A04
********************************************************************** !01370A05
                                                                       !01370A06
    02  cmd-18-rqst                        redefines tss-data.         !01370A07
                                                                       !01370A08
*             Command Type                                             !01370A09
                                                                       !01370A0A
        04  cmd-typ                        pic x(2).                   !01370A0B
                                                                       !01370A0C
*             Key Type                                                 !01370A0D
                                                                       !01370A0E
        04  key-typ                        pic x(2).                   !01370A0F
                                                                       !01370A0G
*             Key Direction                                            !01370A0H
                                                                       !01370A0I
        04  key-dir                        pic x.                      !01370A0J
                                                                       !01370A0K
*             Key Locator                                              !01370A0L
                                                                       !01370A0M
        04  key-loc                        pic x(16).                  !01370A0N
                                                                       !01370A0O
*             Transaction Origin                                       !01370A0P
                                                                       !01370A0Q
        04  txn-orig                       pic x.                      !01370A0R
                                                                       !01370A0S
*             This field is not used.                                  !01370A0T
                                                                       !01370A0U
                                                                       !01370G00
        04  rqst-filler-18                 pic x(4278).                !01370G01
                                                                       !01370G02
                                                                       !01370A0W
********************************************************************** !01370A0X
*                                                                      !01370A0Y
*             Key Activate response                                    !01370A0Z
*                                                                      !01370A0a
********************************************************************** !01370A0b
                                                                       !01370A0c
    02  cmd-18-resp                        redefines tss-data.         !01370A0d
                                                                       !01370A0e
*             Command Type                                             !01370A0f
                                                                       !01370A0g
        04  cmd-typ                        pic x(2).                   !01370A0h
                                                                       !01370A0i
*             Response Status                                          !01370A0j
                                                                       !01370A0k
        04  resp-stat                      pic x(2).                   !01370A0l
                                                                       !01370A0m
*             Key Type                                                 !01370A0n
                                                                       !01370A0o
        04  key-typ                        pic x(2).                   !01370A0p
                                                                       !01370A0q
*             Key Direction                                            !01370A0r
                                                                       !01370A0s
        04  key-dir                        pic x.                      !01370A0t
                                                                       !01370A0u
*             Key Locator                                              !01370A0v
                                                                       !01370A0w
        04  key-loc                        pic x(16).                  !01370A0x
                                                                       !01370A0y
*             This field is not used.                                  !01370A0z
                                                                       !01370A10
                                                                       !01370G03
        04  resp-filler-18                 pic x(4277).                !01370G04
                                                                       !01370G05
                                                                       !01370A12
**********************************************************************!!01371
*                                                                     !!01372
*             PIN Translate/MAC Generate request                      !!01373
*                                                                     !!01374
**********************************************************************!!01375
                                                                       !01376
    02  cmd-19-rqst                        redefines tss-data.         !01377
                                                                       !01378
*             Command Type                                            !!01379
                                                                       !01380
        04  cmd-typ                        pic x(2).                   !01381
                                                                       !01382
*             Input PIN Encryption Key Locator                        !!01383
                                                                       !01384
        04  kpe-loc-in                     pic x(16).                  !01385
                                                                       !01386
*             Output PIN Encryption Key Locator                       !!01387
                                                                       !01388
        04  kpe-loc-out                    pic x(16).                  !01389
                                                                       !01390
*             Input PIN Block                                         !!01391
                                                                       !01392
        04  pin-in                         pic x(16).                  !01393
                                                                       !01394
*             Primary Account Number                                  !!01395
                                                                       !01396
        04  pan                            pic x(19).                  !01397
                                                                       !01398
*             Length of Primary Account Number                        !!01399
                                                                       !01400
        04  pan-lgth                       pic x(2).                   !01401
                                                                       !01402
*             Data to be MACed                                        !!01403
                                                                       !01404
        04  mac-data                       pic x(4096).                !01405
                                                                       !01406
*             Length of Data to be MACed                              !!01407
                                                                       !01408
        04  mac-data-lgth                  pic x(4).                   !01409
                                                                       !01410
*             MAC Data Type                                           !!01411
                                                                       !01412
        04  mac-data-typ                   pic x.                      !01413
                                                                       !01414
*             Offset of the PIN in the MAC data                       !!01415
                                                                       !01416
        04  pin-loc                        pic x(4).                   !01417
                                                                       !01417G00
                                                                       !01417G01
*             This field is not used.                                  !01417G02
                                                                       !01417G03
        04  rqst-filler-19                 pic x(124).                 !01417G04
                                                                       !01417G05
*             The filler field is redefined for the fields             !01417G06
*             required by the optional enhancements.                   !01417G07
                                                                       !01417G08
        04  opt redefines rqst-filler-19.                              !01417G09
                                                                       !01417G0A
*             The following data is required for TSS Key Index         !01417G0B
*             (TKI) processing.                                        !01417G0C
                                                                       !01417G0D
            06  tki.                                                   !01417G0E
                                                                       !01417G0F
*             Index of the PIN encryption key to be used.              !01417G0G
                                                                       !01417G0H
                08  pin-key-idx            pic x.                      !01417G0I
                                                                       !01417G0J
*             MAC key direction.                                       !01417G0K
                                                                       !01417G0L
                08  mac-key-dir            pic x.                      !01417G0M
                                                                       !01417G0N
*             Index of the MAC key to be used.                         !01417G0O
                                                                       !01417G0P
                08  mac-key-idx            pic x.                      !01417G0Q
                                                                       !01417G0R
*             This field is the leftover data from redefining          !01417G0S
*             the rqst-filler-19 field.                                !01417G0T
                                                                       !01417G0U
            06  aci-opt                    pic x(121).                 !01417G0V
                                                                       !01417G0W
                                                                       !01418
**********************************************************************!!01419
*                                                                     !!01420
*             PIN Translate/MAC Generate response                     !!01421
*                                                                     !!01422
**********************************************************************!!01423
                                                                       !01424
    02  cmd-19-resp                        redefines tss-data.         !01425
                                                                       !01426
*             Command Type                                            !!01427
                                                                       !01428
        04  cmd-typ                        pic x(2).                   !01429
                                                                       !01430
*             Response Status                                         !!01431
                                                                       !01432
        04  resp-stat                      pic x(2).                   !01433
                                                                       !01434
*             Output PIN Block                                        !!01435
                                                                       !01436
        04  pin-out                        pic x(16).                  !01437
                                                                       !01438
*             MAC Value                                               !!01439
                                                                       !01440
        04  mac-val                        pic x(16).                  !01441
                                                                       !01442
*             MAC Check Digits                                        !!01443
                                                                       !01444
        04  mac-chk-dgt                    pic x(6).                   !01445
                                                                       !01446
*             This field is not used.                                 !!01447
                                                                       !01448
                                                                       !01449G00
        04  resp-filler-19                 pic x(4258).                !01449G01
*             The filler field is redefined for the fields             !01449G02
*             required by the optional enhancements.                   !01449G03
                                                                       !01449G04
        04  opt redefines resp-filler-19.                              !01449G05
                                                                       !01449G06
*             The following data is required for TSS Key Index         !01449G07
*             (TKI) processing.                                        !01449G08
                                                                       !01449G09
            06  tki.                                                   !01449G0A
                                                                       !01449G0B
*             Index of the PIN encryption key to be used.              !01449G0C
                                                                       !01449G0D
                08  pin-key-idx            pic x.                      !01449G0E
                                                                       !01449G0F
*             Index of the MAC key to be used.                         !01449G0G
                                                                       !01449G0H
                08  mac-key-idx            pic x.                      !01449G0I
                                                                       !01449G0J
*             This field is the leftover data from redefining          !01449G0K
*             the resp-filler-19 field.                                !01449G0L
                                                                       !01449G0M
            06  aci-opt                    pic x(4256).                !01449G0N
                                                                       !01449G0O
                                                                       !01450
**********************************************************************!!01451
*                                                                     !!01452
*             Generate Check Digits request                           !!01453
*                                                                     !!01454
**********************************************************************!!01455
                                                                       !01456
    02  cmd-20-rqst                        redefines tss-data.         !01457
                                                                       !01458
*             Command Type                                            !!01459
                                                                       !01460
        04  cmd-typ                        pic x(2).                   !01461
                                                                       !01462
                                                                       !01462J00
*             Version Number                                           !01462J01
                                                                       !01462J02
        04  ver-num                        pic x(2).                   !01462J03
                                                                       !01462J04
*             Key Locator                                             !!01463
                                                                       !01464
        04  key-loc                        pic x(16).                  !01465
                                                                       !01466
*             Key Type                                                !!01467
                                                                       !01468
        04  key-typ                        pic x(2).                   !01469
                                                                       !01470
*             Key Direction                                           !!01471
                                                                       !01472
        04  key-dir                        pic x.                      !01473
                                                                       !01474
*             Key Index                                               !!01475
                                                                       !01476
        04  key-idx                        pic x.                      !01477
                                                                       !01478
*             Transaction Origin                                      !!01479
                                                                       !01480
        04  txn-orig                       pic x.                      !01481
                                                                       !01482
                                                                       !01482J00
*             Number of Check Digits                                   !01482J01
                                                                       !01482J02
        04  num-chk-dgt                    pic x.                      !01482J03
                                                                       !01482J04
*             This field is not used.                                 !!01483
                                                                       !01484
                                                                       !01485G00
                                                                       !01485J00
        04  rqst-filler-20                 pic x(4274).                !01485J01
                                                                       !01485J02
                                                                       !01485G02
                                                                       !01486
**********************************************************************!!01487
*                                                                     !!01488
*             Generate Check Digits response                          !!01489
*                                                                     !!01490
**********************************************************************!!01491
                                                                       !01492
    02  cmd-20-resp                        redefines tss-data.         !01493
                                                                       !01494
*             Command Type                                            !!01495
                                                                       !01496
        04  cmd-typ                        pic x(2).                   !01497
                                                                       !01498
                                                                       !01498J00
*             Version Number                                           !01498J01
                                                                       !01498J02
        04  ver-num                        pic x(2).                   !01498J03
                                                                       !01498J04
*             Response Status                                         !!01499
                                                                       !01500
        04  resp-stat                      pic x(2).                   !01501
                                                                       !01502
*             Check Digits                                            !!01503
                                                                       !01504
        04  chk-dgt                        pic x(6).                   !01505
                                                                       !01506
*             This field is not used.                                 !!01507
                                                                       !01508
                                                                       !01509G00
                                                                       !01509J00
        04  resp-filler-20                 pic x(4288).                !01509J01
                                                                       !01509J02
                                                                       !01509G02
                                                                       !01510
                                                                       !01510J00
**********************************************************************!!01510J01
*                                                                     !!01510J02
*             EMV 2000 ARPC Generate request                          !!01510J03
*             EMV 2000 ARQC Verify and ARPC Generate request          !!01510J04
*                                                                     !!01510J05
**********************************************************************!!01510J06
    02  cmd-22-rqst                        redefines tss-data.         !01510J07
                                                                       !01510J08
*             Command Type                                             !01510J09
                                                                       !01510J0A
        04  cmd-typ                        pic x(2).                   !01510J0B
                                                                       !01510J0C
*             Version                                                  !01510J0D
                                                                       !01510J0E
        04  version                        pic x(2).                   !01510J0F
                                                                       !01510J0G
*             Function Type                                            !01510J0H
                                                                       !01510J0I
        04  fnct-typ                       pic x.                      !01510J0J
                                                                       !01510J0K
*             Primary key value to KEYI record                         !01510J0L
                                                                       !01510J0M
        04  keyi-grp                       pic x(16).                  !01510J0N
                                                                       !01510J0O
*             Card Expiration Date (YYMM)                              !01510J0P
                                                                       !01510J0Q
        04  crd-exp-dat                    pic x(4).                   !01510J0R
                                                                       !01510J0S
*             Derivation Key Index                                     !01510J0T
                                                                       !01510J0U
        04  drvtn-key-idx                  pic x.                      !01510J0V
                                                                       !01510J0W
*             Primary Account Number                                   !01510J0X
                                                                       !01510J0Y
        04  pan                            pic x(19).                  !01510J0Z
                                                                       !01510J0a
*             Member Number                                            !01510J0b
                                                                       !01510J0c
        04  mbr-num                        pic x(3).                   !01510J0d
                                                                       !01510J0e
*             Converted Response Code                                  !01510J0f
                                                                       !01510J0g
        04  conv-resp-cde                  pic x(16).                  !01510J0h
                                                                       !01510J0i
*             Authorization Request Cryptogram                         !01510J0j
                                                                       !01510J0k
        04  arqc                           pic x(8).                   !01510J0l
                                                                       !01510J0m
*             Crypto Version Number                                    !01510J0n
                                                                       !01510J0o
        04  crypto-ver-num                 pic x.                      !01510J0p
                                                                       !01510J0q
*             Unpredictable Number                                     !01510J0r
                                                                       !01510J0s
        04  unpredictable-num              pic x(4).                   !01510J0t
*             Application Transaction Counter                          !01510J0u
                                                                       !01510J0v
        04  atc                            pic x(2).                   !01510J0w
                                                                       !01510J0x
*             Data Block Length                                        !01510J0y
                                                                       !01510J0z
        04  data-blk-lgth                  pic x(2).                   !01510J10
                                                                       !01510J11
*             Data Block                                               !01510J12
                                                                       !01510J13
        04  data-blk                       pic x(100).                 !01510J14
                                                                       !01510J15
*             Key Derivation Method                                    !01510J16
                                                                       !01510J17
        04  key-drvtn-method               pic x(1).                   !01510J18
                                                                       !01510J19
*             This field is not used.                                  !01510J1A
                                                                       !01510J1B
        04  rqst-filler-22                 pic x(4118).                !01510J1C
                                                                       !01510J1D
**********************************************************************!!01510J1E
*                                                                     !!01510J1F
*             EMV 2000 ARPC Generate response                         !!01510J1G
*             EMV 2000 ARQC Verify and ARPC Generate response         !!01510J1H
*                                                                     !!01510J1I
**********************************************************************!!01510J1J
                                                                       !01510J1K
    02  cmd-22-resp                        redefines tss-data.         !01510J1L
                                                                       !01510J1M
*             Command Type                                             !01510J1N
                                                                       !01510J1O
        04  cmd-typ                        pic x(2).                   !01510J1P
                                                                       !01510J1Q
*             Version                                                  !01510J1R
                                                                       !01510J1S
        04  version                        pic x(2).                   !01510J1T
                                                                       !01510J1U
*             Response Status                                          !01510J1V
                                                                       !01510J1W
        04  resp-stat                      pic x(2).                   !01510J1X
                                                                       !01510J1Y
*             Function Type                                            !01510J1Z
                                                                       !01510J1a
        04  fnct-typ                       pic x.                      !01510J1b
                                                                       !01510J1c
*             Authorization Response Cryptogram                        !01510J1d
                                                                       !01510J1e
        04  arpc                           pic x(16).                  !01510J1f
                                                                       !01510J1g
*             This field is not used.                                  !01510J1h
                                                                       !01510J1i
        04  resp-filler-22                 pic x(4277).                !01510J1j
                                                                       !01510J1k
                                                                       !01510J1l
**********************************************************************!!01510J1m
*                                                                     !!01510J1n
*             EMV 2000 Script MAC Generate request                    !!01510J1o
*             EMV 2000 Offline PIN Change request                     !!01510J1p
*                                                                     !!01510J1q
**********************************************************************!!01510J1r
                                                                       !01510J1s
    02  cmd-23-rqst                        redefines tss-data.         !01510J1t
                                                                       !01510J1u
*             Command Type                                             !01510J1v
                                                                       !01510J1w
        04  cmd-typ                        pic x(2).                   !01510J1x
                                                                       !01510J1y
*             Version                                                  !01510J1z
                                                                       !01510J20
        04  version                        pic x(2).                   !01510J21
                                                                       !01510J22
*             Function Type                                            !01510J23
                                                                       !01510J24
        04  fnct-typ                       pic x.                      !01510J25
                                                                       !01510J26
*             Primary key value to KEYI record                         !01510J27
                                                                       !01510J28
        04  keyi-grp                       pic x(16).                  !01510J29
                                                                       !01510J2A
*             Card Expiration Date (YYMM)                              !01510J2B
                                                                       !01510J2C
        04  crd-exp-dat                    pic x(4).                   !01510J2D
                                                                       !01510J2E
*             Primary Account Number                                   !01510J2F
                                                                       !01510J2G
        04  pan                            pic x(19).                  !01510J2H
                                                                       !01510J2I
*             Member Number                                            !01510J2J
                                                                       !01510J2K
        04  mbr-num                        pic x(3).                   !01510J2L
                                                                       !01510J2M
*             Application Transaction Counter                          !01510J2N
                                                                       !01510J2O
        04  atc                            pic x(2).                   !01510J2P
                                                                       !01510J2Q
*             Authorization Request Cryptogram                         !01510J2R
                                                                       !01510J2S
        04  arqc                           pic x(8).                   !01510J2T
                                                                       !01510J2U
*             Script Data                                              !01510J2V
                                                                       !01510J2W
        04  script-data                    pic x(128).                 !01510J2X
                                                                       !01510J2Y
*             Script Data Length                                       !01510J2Z
                                                                       !01510J2a
        04  script-data-lgth               pic x(2).                   !01510J2b
                                                                       !01510J2c
*             Key Derivation Method                                    !01510J2d
                                                                       !01510J2e
        04  key-drvtn-method               pic x(1).                   !01510J2f
                                                                       !01510J2g
*             PIN data                                                 !01510J2h
                                                                       !01510J2i
        04  pin-data.                                                  !01510J2j
                                                                       !01510J2k
*             Acquirer Key Locator                                     !01510J2l
                                                                       !01510J2m
            06  key-loc                    pic x(16).                  !01510J2n
                                                                       !01510J2o
*             Transaction Origin                                       !01510J2p
                                                                       !01510J2q
            06  txn-orig                   pic x.                      !01510J2r
                                                                       !01510J2s
*             New Encrypted PIN Block                                  !01510J2t
                                                                       !01510J2u
            06  new-pin-in                 pic x(16).                  !01510J2v
                                                                       !01510J2w
*             Derivation Key Index                                     !01510J2x
                                                                       !01510J2y
            06  drvtn-key-idx              pic x.                      !01510J2z
                                                                       !01510J30
*             PIN Issue Number                                         !01510J31
                                                                       !01510J32
            06  pin-issue-num              pic x(3).                   !01510J33
                                                                       !01510J34
*             Current Encrypted PIN Block                              !01510J35
                                                                       !01510J36
            06  cur-pin-in                 pic x(16).                  !01510J37
                                                                       !01510J38
*             Ciphertext Offset                                        !01510J39
                                                                       !01510J3A
            06  cipher-text-ofst           pic x(4).                   !01510J3B
                                                                       !01510J3C
*             This field is not used.                                  !01510J3D
                                                                       !01510J3E
        04  rqst-filler-23                 pic x(4055).                !01510J3F
                                                                       !01510J3G
**********************************************************************!!01510J3H
*                                                                     !!01510J3I
*             EMV 2000 Script MAC Generate response                   !!01510J3J
*             EMV 2000 Offline PIN Change response                    !!01510J3K
*                                                                     !!01510J3L
**********************************************************************!!01510J3M
                                                                       !01510J3N
    02  cmd-23-resp                        redefines tss-data.         !01510J3O
                                                                       !01510J3P
*             Command Type                                             !01510J3Q
                                                                       !01510J3R
        04  cmd-typ                        pic x(2).                   !01510J3S
                                                                       !01510J3T
*             Version                                                  !01510J3U
                                                                       !01510J3V
        04  version                        pic x(2).                   !01510J3W
                                                                       !01510J3X
*             Response Status                                          !01510J3Y
                                                                       !01510J3Z
        04  resp-stat                      pic x(2).                   !01510J3a
                                                                       !01510J3b
*             Function Type                                            !01510J3c
                                                                       !01510J3d
        04  fnct-typ                       pic x.                      !01510J3e
                                                                       !01510J3f
*             MAC Value                                                !01510J3g
                                                                       !01510J3h
        04  mac-val                        pic x(16).                  !01510J3i
                                                                       !01510J3j
*             Encripted PIN out                                        !01510J3k
                                                                       !01510J3l
        04  encrypt-pin-out                pic x(32).                  !01510J3m
                                                                       !01510J3n
*             This field is not used.                                  !01510J3o
                                                                       !01510J3p
        04  resp-filler-23                 pic x(4245).                !01510J3q
                                                                       !01510J3r
                                                                       !01511J00
                                                                       !01511J01
                                                                       !01511J02
                                                                       !01609G02
                                                                       !01610
**********************************************************************!!01611
*                                                                     !!01612
*             Translate a PIN Verification Key for Distribution       !!01613
*             request                                                 !!01614
*                                                                     !!01615
**********************************************************************!!01616
                                                                       !01617
    02  cmd-25-rqst                        redefines tss-data.         !01618
                                                                       !01619
*             Command Type                                            !!01620
                                                                       !01621
        04  cmd-typ                        pic x(2).                   !01622
                                                                       !01623
*             Key Type                                                !!01624
                                                                       !01625
        04  key-typ                        pic x(2).                   !01626
                                                                       !01627
*             Key Direction                                           !!01628
                                                                       !01629
        04  key-dir                        pic x.                      !01630
                                                                       !01631
*             Key Locator                                             !!01632
                                                                       !01633
        04  key-loc                        pic x(16).                  !01634
                                                                       !01635
*             PIN Verification Key Header                             !!01636
                                                                       !01637
        04  pvk-hdr                        pic x(8).                   !01638
                                                                       !01639
*             PIN Verification Key                                    !!01640
                                                                       !01641
        04  pvk                            pic x(48).                  !01642
                                                                       !01643
*             PIN Verification Key MAC                                !!01644
                                                                       !01645
        04  pvk-mac                        pic x(16).                  !01646
                                                                       !01647
*             Transaction Origin                                      !!01648
                                                                       !01649
        04  txn-orig                       pic x.                      !01650
                                                                       !01651
*             This field is not used.                                 !!01652
                                                                       !01653
                                                                       !01654G00
        04  rqst-filler-25                 pic x(4206).                !01654G01
                                                                       !01654G02
                                                                       !01655
**********************************************************************!!01656
*                                                                     !!01657
*             Translate a PIN Verification Key for Distribution       !!01658
*             response                                                !!01659
*                                                                     !!01660
**********************************************************************!!01661
                                                                       !01662
    02  cmd-25-resp                        redefines tss-data.         !01663
                                                                       !01664
*             Command Type                                            !!01665
                                                                       !01666
        04  cmd-typ                        pic x(2).                   !01667
                                                                       !01668
*             Response Status                                         !!01669
                                                                       !01670
        04  resp-stat                      pic x(2).                   !01671
                                                                       !01672
*             Key Type                                                !!01673
                                                                       !01674
        04  key-typ                        pic x(2).                   !01675
                                                                       !01676
*             Key Check Digits                                        !!01677
                                                                       !01678
        04  key-chk-dgt                    pic x(6).                   !01679
                                                                       !01680
*             Key Length                                              !!01681
                                                                       !01682
        04  key-lgth                       pic x.                      !01683
                                                                       !01684
*             Translated PIN Verification Key Header                  !!01685
                                                                       !01686
        04  pvk-xlate-hdr                  pic x(8).                   !01687
                                                                       !01688
*             Translated PIN Verification Key                         !!01689
                                                                       !01690
        04  pvk-xlate                      pic x(48).                  !01691
                                                                       !01692
*             Translated PIN Verification Key MAC                     !!01693
                                                                       !01694
        04  pvk-xlate-mac                  pic x(16).                  !01695
                                                                       !01696
*             This field is not used.                                 !!01697
                                                                       !01698
                                                                       !01699G00
        04  resp-filler-25                 pic x(4215).                !01699G01
                                                                       !01699G02
                                                                       !01700
**********************************************************************!!01701
*                                                                     !!01702
*             APACS MAC verify request - Admin                        !!01703
*                                                                     !!01704
**********************************************************************!!01705
                                                                       !01706
    02  cmd-26-rqst                        redefines tss-data.         !01707
                                                                       !01708
*             Command Type                                            !!01709
                                                                       !01710
        04  cmd-typ                        pic x(2).                   !01711
                                                                       !01712
                                                                       !01712M00
*             Version Number                                           !01712M01
                                                                       !01712M02
        04  version                        pic x(2).                   !01712M03
                                                                       !01712M04
*             Key Locator                                              !01712M05
                                                                       !01712M06
        04  key-loc                        type *.                     !01712M07
                                                                       !01712M08
*             Key Register Roll Option                                 !01712M09
                                                                       !01712M0A
        04  key-rgstr-roll-opt             pic x.                      !01712M0B
                                                                       !01712M0C
                                                                       !01713M00
                                                                       !01713M01
                                                                       !01713M02
                                                                       !01716
*             Fields A & B                                            !!01717
                                                                       !01718
        04  fld-a-b                        pic x(16).                  !01719
                                                                       !01720
*             Message length                                          !!01721
                                                                       !01722
        04  msg-lgth                       pic x(4).                   !01723
                                                                       !01724
                                                                       !01725M00
                                                                       !01725M01
                                                                       !01725M02
*             Message Text                                            !!01729
                                                                       !01730
                                                                       !01731G00
                                                                       !01731M00
        04  msg-txt                        pic x(4259).                !01731M01
                                                                       !01731M02
                                                                       !01731G02
                                                                       !01732
**********************************************************************!!01733
*                                                                     !!01734
*             APACS MAC verify response - Admin                       !!01735
*                                                                     !!01736
**********************************************************************!!01737
                                                                       !01738
    02  cmd-26-resp                        redefines tss-data.         !01739
                                                                       !01740
*             Command Type                                            !!01741
                                                                       !01742
        04  cmd-typ                        pic x(2).                   !01743
                                                                       !01744
                                                                       !01744M00
*             Version Number                                           !01744M01
                                                                       !01744M02
        04  version                        pic x(2).                   !01744M03
                                                                       !01744M04
*             Response Status                                         !!01745
                                                                       !01746
        04  resp-stat                      pic x(2).                   !01747
                                                                       !01748
*             Encrypted MAC residue                                   !!01749
                                                                       !01750
                                                                       !01751M00
        04  encrypt-mac-residue            pic x(8).                   !01751M01
                                                                       !01751M02
                                                                       !01752
*             This field is not used.                                 !!01753
                                                                       !01754
                                                                       !01755G00
                                                                       !01755M00
        04  resp-filler-26                 pic x(4286).                !01755M01
                                                                       !01755M02
                                                                       !01755G02
                                                                       !01756
**********************************************************************!!01757
*                                                                     !!01758
*             APACS MAC verify response - Confirmation request        !!01759
*                                                                     !!01760
**********************************************************************!!01761
                                                                       !01762
    02  cmd-27-rqst                        redefines tss-data.         !01763
                                                                       !01764
*             Command Type                                            !!01765
                                                                       !01766
        04  cmd-typ                        pic x(2).                   !01767
                                                                       !01768
                                                                       !01768M00
*             Version Number                                           !01768M01
                                                                       !01768M02
        04  version                        pic x(2).                   !01768M03
                                                                       !01768M04
*             Key Locator                                              !01768M05
                                                                       !01768M06
        04  key-loc                        type *.                     !01768M07
                                                                       !01768M08
*             Key Register Roll Option                                 !01768M09
                                                                       !01768M0A
        04  key-rgstr-roll-opt             pic x.                      !01768M0B
                                                                       !01768M0C
                                                                       !01769M00
                                                                       !01769M01
                                                                       !01769M02
*             Fields A & B                                            !!01773
                                                                       !01774
        04  fld-a-b                        pic x(16).                  !01775
                                                                       !01776
*             Encrypted MAC residue                                   !!01777
                                                                       !01778
        04  encrypt-mac-residue            pic x(8).                   !01779
                                                                       !01780
*             Message length                                          !!01781
                                                                       !01782
        04  msg-lgth                       pic x(4).                   !01783
                                                                       !01784
                                                                       !01785M00
                                                                       !01785M01
                                                                       !01785M02
*             Message Text                                            !!01789
                                                                       !01790
                                                                       !01791G00
                                                                       !01791M00
        04  msg-txt                        pic x(4251).                !01791M01
                                                                       !01791M02
                                                                       !01791G02
                                                                       !01792
**********************************************************************!!01793
*                                                                     !!01794
*             APACS MAC verify response - Confirmation request        !!01795
*                                                                     !!01796
**********************************************************************!!01797
                                                                       !01798
    02  cmd-27-resp                        redefines tss-data.         !01799
                                                                       !01800
*             Command Type                                            !!01801
                                                                       !01802
        04  cmd-typ                        pic x(2).                   !01803
                                                                       !01804
                                                                       !01804M00
*             Version Number                                           !01804M01
                                                                       !01804M02
        04  version                        pic x(2).                   !01804M03
                                                                       !01804M04
*             Response Status                                         !!01805
                                                                       !01806
        04  resp-stat                      pic x(2).                   !01807
                                                                       !01808
*             This field is not used.                                 !!01809
                                                                       !01810
                                                                       !01811G00
                                                                       !01811M00
        04  resp-filler-27                 pic x(4294).                !01811M01
                                                                       !01811M02
                                                                       !01811G02
                                                                       !01812
**********************************************************************!!01813
*                                                                     !!01814
*             Validate MAC on Terminal Request and Return TPK and     !!01815
*             MAC Residue Request                                     !!01816
*                                                                     !!01817
**********************************************************************!!01818
                                                                       !01819
    02  cmd-28-rqst                        redefines tss-data.         !01820
                                                                       !01821
*             Command Type                                            !!01822
                                                                       !01823
        04  cmd-typ                        pic x(2).                   !01824
                                                                       !01825
                                                                       !01825M00
*             Version Number                                           !01825M01
                                                                       !01825M02
        04  version                        pic x(2).                   !01825M03
                                                                       !01825M04
*             Key Locator                                              !01825M05
                                                                       !01825M06
        04  key-loc                        type *.                     !01825M07
                                                                       !01825M08
*             Key Register Roll Option                                 !01825M09
                                                                       !01825M0A
        04  key-rgstr-roll-opt             pic x.                      !01825M0B
                                                                       !01825M0C
                                                                       !01826M00
                                                                       !01826M01
                                                                       !01826M02
*             Account number offset                                   !!01830
                                                                       !01831
        04  acct-num-ptr                   pic x(2).                   !01832
                                                                       !01833
*             Fields C & D                                            !!01834
                                                                       !01835
        04  fld-c-d                        pic x(16).                  !01836
                                                                       !01837
*             PIN Block Offset                                        !!01838
                                                                       !01839
                                                                       !01840N00
        04  pin-blk-ptr                    pic x(4).                   !01840N01
                                                                       !01840N02
                                                                       !01841
*             Message length                                          !!01842
                                                                       !01843
        04  msg-lgth                       pic x(4).                   !01844
                                                                       !01845
                                                                       !01846M00
                                                                       !01846M01
                                                                       !01846M02
*             Message Text                                            !!01850
                                                                       !01851
                                                                       !01852G00
                                                                       !01852M00
                                                                       !01852N00
        04  msg-txt                        pic x(4253).                !01852N01
                                                                       !01852N02
                                                                       !01852M02
                                                                       !01852G02
                                                                       !01853
**********************************************************************!!01854
*                                                                     !!01855
*             Validate MAC on Terminal Request and Return TPK and     !!01856
*             MAC Residue Response                                    !!01857
*                                                                     !!01858
**********************************************************************!!01859
                                                                       !01860
    02  cmd-28-resp                        redefines tss-data.         !01861
                                                                       !01862
*             Command Type                                            !!01863
                                                                       !01864
        04  cmd-typ                        pic x(2).                   !01865
                                                                       !01866
                                                                       !01866M00
*             Version Number                                           !01866M01
                                                                       !01866M02
        04  version                        pic x(2).                   !01866M03
                                                                       !01866M04
*             Response Status                                         !!01867
                                                                       !01868
        04  resp-stat                      pic x(2).                   !01869
                                                                       !01870
                                                                       !01871M00
                                                                       !01871M01
                                                                       !01871M02
*             Encrypted MAC residue                                   !!01875
                                                                       !01876
                                                                       !01877M00
        04  encrypt-mac-residue            pic x(8).                   !01877M01
                                                                       !01877M02
                                                                       !01878
*             This field is not used.                                 !!01879
                                                                       !01880
                                                                       !01881G00
                                                                       !01881M00
        04  resp-filler-28                 pic x(4286).                !01881M01
                                                                       !01881M02
                                                                       !01881G02
                                                                       !01882
**********************************************************************!!01883
*                                                                     !!01884
*             Validate MAC on Terminal Request and Return MAC Residue !!01885
*             request                                                 !!01886
*                                                                     !!01887
**********************************************************************!!01888
                                                                       !01889
    02  cmd-29-rqst                        redefines tss-data.         !01890
                                                                       !01891
*             Command Type                                            !!01892
                                                                       !01893
        04  cmd-typ                        pic x(2).                   !01894
                                                                       !01895
                                                                       !01895M00
*             Version Number                                           !01895M01
                                                                       !01895M02
        04  version                        pic x(2).                   !01895M03
                                                                       !01895M04
*             Key Locator                                              !01895M05
                                                                       !01895M06
        04  key-loc                        type *.                     !01895M07
                                                                       !01895M08
*             Key Register Roll Option                                 !01895M09
                                                                       !01895M0A
        04  key-rgstr-roll-opt             pic x.                      !01895M0B
                                                                       !01895M0C
                                                                       !01896M00
                                                                       !01896M01
                                                                       !01896M02
*             Account Number Offset                                   !!01900
                                                                       !01901
        04  acct-num-ptr                   pic x(2).                   !01902
                                                                       !01903
*             Message length                                          !!01904
                                                                       !01905
        04  msg-lgth                       pic x(4).                   !01906
                                                                       !01907
                                                                       !01908M00
                                                                       !01908M01
                                                                       !01908M02
*             Message Text                                            !!01912
                                                                       !01913
                                                                       !01914G00
                                                                       !01914M00
        04  msg-txt                        pic x(4273).                !01914M01
                                                                       !01914M02
                                                                       !01914G02
                                                                       !01915
**********************************************************************!!01916
*                                                                     !!01917
*             Validate MAC on Terminal Request and Return MAC Residue !!01918
*             response                                                !!01919
*                                                                     !!01920
**********************************************************************!!01921
                                                                       !01922
    02  cmd-29-resp                        redefines tss-data.         !01923
                                                                       !01924
*             Command Type                                            !!01925
                                                                       !01926
        04  cmd-typ                        pic x(2).                   !01927
                                                                       !01928
                                                                       !01928M00
*             Version Number                                           !01928M01
                                                                       !01928M02
        04  version                        pic x(2).                   !01928M03
                                                                       !01928M04
*             Response Status                                         !!01929
                                                                       !01930
        04  resp-stat                      pic x(2).                   !01931
                                                                       !01932
*             Encrypted MAC residue                                   !!01933
                                                                       !01934
                                                                       !01935M00
        04  encrypt-mac-residue            pic x(8).                   !01935M01
                                                                       !01935M02
                                                                       !01936
*             This field is not used.                                 !!01937
                                                                       !01938
                                                                       !01939G00
                                                                       !01939M00
        04  resp-filler-29                 pic x(4286).                !01939M01
                                                                       !01939M02
                                                                       !01939G02
                                                                       !01940
**********************************************************************!!01941
*                                                                     !!01942
*             Generate Auth Param, MAC Residue and New Key Register   !!01943
*             request                                                 !!01944
*                                                                     !!01945
**********************************************************************!!01946
                                                                       !01947
    02  cmd-30-rqst                        redefines tss-data.         !01948
                                                                       !01949
*             Command Type                                            !!01950
                                                                       !01951
        04  cmd-typ                        pic x(2).                   !01952
                                                                       !01953
                                                                       !01953M00
*             Version Number                                           !01953M01
                                                                       !01953M02
        04  version                        pic x(2).                   !01953M03
                                                                       !01953M04
*             Key Locator                                              !01953M05
                                                                       !01953M06
        04  key-loc                        type *.                     !01953M07
                                                                       !01953M08
                                                                       !01954M00
                                                                       !01954M01
                                                                       !01954M02
*             Fields A & B                                            !!01958
                                                                       !01959
        04  fld-a-b                        pic x(16).                  !01960
                                                                       !01961
*             Authorization  Parameter                                !!01962
                                                                       !01963
        04  auth-param                     pic x(16).                  !01964
                                                                       !01965
*             Encrypted MAC residue                                   !!01966
                                                                       !01967
        04  encrypt-mac-residue            pic x(8).                   !01968
                                                                       !01969
*             Message length                                          !!01970
                                                                       !01971
        04  msg-lgth                       pic x(4).                   !01972
                                                                       !01973
                                                                       !01974M00
                                                                       !01974M01
                                                                       !01974M02
*             Message Text                                            !!01978
                                                                       !01979
                                                                       !01980G00
                                                                       !01980M00
        04  msg-txt                        pic x(4236).                !01980M01
                                                                       !01980M02
                                                                       !01980G02
                                                                       !01981
**********************************************************************!!01982
*                                                                     !!01983
*             Generate Auth Param, MAC Residue and New Key Register   !!01984
*             response                                                !!01985
*                                                                     !!01986
**********************************************************************!!01987
                                                                       !01988
    02  cmd-30-resp                        redefines tss-data.         !01989
                                                                       !01990
*             Command Type                                            !!01991
                                                                       !01992
        04  cmd-typ                        pic x(2).                   !01993
                                                                       !01994
                                                                       !01994M00
*             Version Number                                           !01994M01
                                                                       !01994M02
        04  version                        pic x(2).                   !01994M03
                                                                       !01994M04
*             Response Status                                         !!01995
                                                                       !01996
        04  resp-stat                      pic x(2).                   !01997
                                                                       !01998
*             Response MAC                                            !!01999
                                                                       !02000
        04  resp-mac                       pic x(8).                   !02001
                                                                       !02002
                                                                       !02003M00
                                                                       !02003M01
                                                                       !02003M02
*             Encrypted MAC residue                                   !!02007
                                                                       !02008
        04  encrypt-mac-residue            pic x(8).                   !02009
                                                                       !02010
*             This field is not used.                                 !!02011
                                                                       !02012
                                                                       !02013G00
                                                                       !02013M00
        04  resp-filler-30                 pic x(4278).                !02013M01
                                                                       !02013M02
                                                                       !02013G02
                                                                       !02014
                                                                       !02014C00
********************************************************************** !02014C01
*                                                                      !02014C02
*             Verify Public Key Signature / Generate MAC request       !02014C03
*                                                                      !02014C04
********************************************************************** !02014C05
                                                                       !02014C06
    02  cmd-31-rqst                        redefines tss-data.         !02014C07
                                                                       !02014C08
*             Command Type                                             !02014C09
                                                                       !02014C0A
        04  cmd-typ                        pic x(2).                   !02014C0B
                                                                       !02014C0C
*             Device Type                                              !02014C0D
                                                                       !02014C0E
        04  dev-typ                        pic x(2).                   !02014C0F
                                                                       !02014C0G
*             Terminal ID                                              !02014C0H
                                                                       !02014C0I
        04  term-id                        pic x(16).                  !02014C0J
                                                                       !02014C0K
*             Variable-Length Data (Public Key Length, Public Key,     !02014C0L
*             Signature Length and Signature)                          !02014C0M
                                                                       !02014C0N
                                                                       !02014G00
        04  var-data                       pic x(4280).                !02014G01
                                                                       !02014G02
                                                                       !02014C0P
********************************************************************** !02014C0Q
*                                                                      !02014C0R
*             Verify Public Key Signature / Generate MAC response      !02014C0S
*                                                                      !02014C0T
********************************************************************** !02014C0U
                                                                       !02014C0V
    02  cmd-31-resp                        redefines tss-data.         !02014C0W
                                                                       !02014C0X
*             Command Type                                             !02014C0Y
                                                                       !02014C0Z
        04  cmd-typ                        pic x(2).                   !02014C0a
                                                                       !02014C0b
*             Response Status                                          !02014C0c
                                                                       !02014C0d
        04  resp-stat                      pic x(2).                   !02014C0e
                                                                       !02014C0f
*             Terminal ID                                              !02014C0g
                                                                       !02014C0h
        04  term-id                        pic x(16).                  !02014C0i
                                                                       !02014C0j
*             This field is not used.                                  !02014C0k
                                                                       !02014C0l
                                                                       !02014G03
        04  resp-filler-31                 pic x(4280).                !02014G04
                                                                       !02014G05
                                                                       !02014C0n
********************************************************************** !02014C0o
*                                                                      !02014C0p
*             Generate Master Key request                              !02014C0q
*                                                                      !02014C0r
********************************************************************** !02014C0s
                                                                       !02014C0t
    02  cmd-32-rqst                        redefines tss-data.         !02014C0u
                                                                       !02014C0v
*             Command Type                                             !02014C0w
                                                                       !02014C0x
        04  cmd-typ                        pic x(2).                   !02014C0y
                                                                       !02014C0z
*             Device Type                                              !02014C10
                                                                       !02014C11
        04  dev-typ                        pic x(2).                   !02014C12
                                                                       !02014C13
*             Terminal ID                                              !02014C14
                                                                       !02014C15
        04  term-id                        pic x(16).                  !02014C16
                                                                       !02014C17
*             This field is not used.                                  !02014C18
                                                                       !02014C19
                                                                       !02014G06
        04  rqst-filler-32                 pic x(4280).                !02014G07
                                                                       !02014G08
                                                                       !02014C1B
********************************************************************** !02014C1C
*                                                                      !02014C1D
*             Generate Master Key response                             !02014C1E
*                                                                      !02014C1F
********************************************************************** !02014C1G
                                                                       !02014C1H
    02  cmd-32-resp                        redefines tss-data.         !02014C1I
                                                                       !02014C1J
*             Command Type                                             !02014C1K
                                                                       !02014C1L
        04  cmd-typ                        pic x(2).                   !02014C1M
                                                                       !02014C1N
*             Response Status                                          !02014C1O
                                                                       !02014C1P
        04  resp-stat                      pic x(2).                   !02014C1Q
                                                                       !02014C1R
*             Terminal ID                                              !02014C1S
                                                                       !02014C1T
        04  term-id                        pic x(16).                  !02014C1U
                                                                       !02014C1V
*             Variable-Length Data (Master Key Length, Master Key,     !02014C1W
*             Signature Length, Signature)                             !02014C1X
                                                                       !02014C1Y
                                                                       !02014G09
        04  var-data                       pic x(4280).                !02014G0A
                                                                       !02014G0B
                                                                       !02014C1a
********************************************************************** !02014C1b
*                                                                      !02014C1c
*             Retrieve Certificate request                             !02014C1d
*                                                                      !02014C1e
********************************************************************** !02014C1f
                                                                       !02014C1g
    02  cmd-33-rqst                        redefines tss-data.         !02014C1h
                                                                       !02014C1i
*             Command Type                                             !02014C1j
                                                                       !02014C1k
        04  cmd-typ                        pic x(2).                   !02014C1l
                                                                       !02014C1m
*             Device Type                                              !02014C1n
                                                                       !02014C1o
        04  dev-typ                        pic x(2).                   !02014C1p
                                                                       !02014C1q
*             Terminal ID                                              !02014C1r
                                                                       !02014C1s
        04  term-id                        pic x(16).                  !02014C1t
                                                                       !02014C1u
*             This field is not used.                                  !02014C1v
                                                                       !02014C1w
                                                                       !02014G0C
        04  rqst-filler-33                 pic x(4280).                !02014G0D
                                                                       !02014G0E
                                                                       !02014C1y
********************************************************************** !02014C1z
*                                                                      !02014C20
*             Retrieve Certificate response                            !02014C21
*                                                                      !02014C22
********************************************************************** !02014C23
                                                                       !02014C24
    02  cmd-33-resp                        redefines tss-data.         !02014C25
                                                                       !02014C26
*             Command Type                                             !02014C27
                                                                       !02014C28
        04  cmd-typ                        pic x(2).                   !02014C29
                                                                       !02014C2A
*             Response Status                                          !02014C2B
                                                                       !02014C2C
        04  resp-stat                      pic x(2).                   !02014C2D
                                                                       !02014C2E
*             Message Length                                           !02014C2F
                                                                       !02014C2G
        04  msg-lgth                       type binary 16.             !02014C2H
                                                                       !02014C2I
*             Message Text                                             !02014C2J
                                                                       !02014C2K
                                                                       !02014G0F
        04  msg-txt                        pic x(4294).                !02014G0G
                                                                       !02014G0H
                                                                       !02014C2M
********************************************************************** !02014C2N
*                                                                      !02014C2O
*             Verify Certificate request                               !02014C2P
*                                                                      !02014C2Q
********************************************************************** !02014C2R
                                                                       !02014C2S
    02  cmd-34-rqst                        redefines tss-data.         !02014C2T
                                                                       !02014C2U
*             Command Type                                             !02014C2V
                                                                       !02014C2W
        04  cmd-typ                        pic x(2).                   !02014C2X
                                                                       !02014C2Y
*             Device Type                                              !02014C2Z
                                                                       !02014C2a
        04  dev-typ                        pic x(2).                   !02014C2b
                                                                       !02014C2c
*             Terminal ID                                              !02014C2d
                                                                       !02014C2e
        04  term-id                        pic x(16).                  !02014C2f
                                                                       !02014C2g
*             Public Key Type                                          !02014C2h
                                                                       !02014C2i
        04  pub-key-typ                    type binary 16.             !02014C2j
                                                                       !02014C2k
*             Serial Number Verify                                     !02014C2l
                                                                       !02014C2m
        04  serial-num-vrfy                pic x(2).                   !02014C2n
                                                                       !02014C2o
*             FIID                                                     !02014C2p
                                                                       !02014C2q
        04  fiid                           pic x(4).                   !02014C2r
                                                                       !02014C2s
*             Message Length                                           !02014C2t
                                                                       !02014C2u
        04  msg-lgth                       type binary 16.             !02014C2v
                                                                       !02014C2w
*             Message Text                                             !02014C2x
                                                                       !02014C2y
                                                                       !02014G0I
        04  msg-txt                        pic x(4270).                !02014G0J
                                                                       !02014G0K
                                                                       !02014C30
********************************************************************** !02014C31
*                                                                      !02014C32
*             Verify Certificate response                              !02014C33
*                                                                      !02014C34
********************************************************************** !02014C35
                                                                       !02014C36
    02  cmd-34-resp                        redefines tss-data.         !02014C37
                                                                       !02014C38
*             Command Type                                             !02014C39
                                                                       !02014C3A
        04  cmd-typ                        pic x(2).                   !02014C3B
                                                                       !02014C3C
*             Response Status                                          !02014C3D
                                                                       !02014C3E
        04  resp-stat                      pic x(2).                   !02014C3F
                                                                       !02014C3G
*             Terminal ID                                              !02014C3H
                                                                       !02014C3I
        04  term-id                        pic x(16).                  !02014C3J
                                                                       !02014C3K
*             This field is not used.                                  !02014C3L
                                                                       !02014C3M
                                                                       !02014G0L
        04  resp-filler-34                 pic x(4280).                !02014G0M
                                                                       !02014G0N
                                                                       !02014C3O
********************************************************************** !02014C3P
*                                                                      !02014C3Q
*             Generate Master Key Block request                        !02014C3R
*                                                                      !02014C3S
********************************************************************** !02014C3T
                                                                       !02014C3U
    02  cmd-35-rqst                        redefines tss-data.         !02014C3V
                                                                       !02014C3W
*             Command Type                                             !02014C3X
                                                                       !02014C3Y
        04  cmd-typ                        pic x(2).                   !02014C3Z
                                                                       !02014C3a
*             Device Type                                              !02014C3b
                                                                       !02014C3c
        04  dev-typ                        pic x(2).                   !02014C3d
                                                                       !02014C3e
*             Terminal ID                                              !02014C3f
                                                                       !02014C3g
        04  term-id                        pic x(16).                  !02014C3h
                                                                       !02014C3i
*             Device Data Length                                       !02014C3j
                                                                       !02014C3k
        04  dev-data-lgth                  type binary 16.             !02014C3l
                                                                       !02014C3m
*             Device Data                                              !02014C3n
                                                                       !02014C3o
                                                                       !02014G0O
        04  dev-data                       pic x(4278).                !02014G0P
                                                                       !02014G0Q
                                                                       !02014C3q
********************************************************************** !02014C3r
*                                                                      !02014C3s
*             Generate Master Key Block response                       !02014C3t
*                                                                      !02014C3u
********************************************************************** !02014C3v
                                                                       !02014C3w
    02  cmd-35-resp                        redefines tss-data.         !02014C3x
                                                                       !02014C3y
*             Command Type                                             !02014C3z
                                                                       !02014C40
        04  cmd-typ                        pic x(2).                   !02014C41
                                                                       !02014C42
*             Response Status                                          !02014C43
                                                                       !02014C44
        04  resp-stat                      pic x(2).                   !02014C45
                                                                       !02014C46
*             Terminal ID                                              !02014C47
                                                                       !02014C48
        04  term-id                        pic x(16).                  !02014C49
                                                                       !02014C4A
*             Message Length                                           !02014C4B
                                                                       !02014C4C
        04  msg-lgth                       type binary 16.             !02014C4D
                                                                       !02014C4E
*             Message Text                                             !02014C4F
                                                                       !02014C4G
                                                                       !02014G0R
        04  msg-txt                        pic x(4278).                !02014G0S
                                                                       !02014G0T
                                                                       !02014C4I
********************************************************************** !02014C4J
*                                                                      !02014C4K
*             Verify Signature Block request                           !02014C4L
*                                                                      !02014C4M
********************************************************************** !02014C4N
                                                                       !02014C4O
    02  cmd-36-rqst                        redefines tss-data.         !02014C4P
                                                                       !02014C4Q
*             Command Type                                             !02014C4R
                                                                       !02014C4S
        04  cmd-typ                        pic x(2).                   !02014C4T
                                                                       !02014C4U
*             Device Type                                              !02014C4V
                                                                       !02014C4W
        04  dev-typ                        pic x(2).                   !02014C4X
                                                                       !02014C4Y
*             Terminal ID                                              !02014C4Z
                                                                       !02014C4a
        04  term-id                        pic x(16).                  !02014C4b
                                                                       !02014C4c
*             Message Length                                           !02014C4d
                                                                       !02014C4e
        04  msg-lgth                       type binary 16.             !02014C4f
                                                                       !02014C4g
*             Message Text                                             !02014C4h
                                                                       !02014C4i
                                                                       !02014G0U
        04  msg-txt                        pic x(4278).                !02014G0V
                                                                       !02014G0W
                                                                       !02014C4k
********************************************************************** !02014C4l
*                                                                      !02014C4m
*             Verify Signature Block response                          !02014C4n
*                                                                      !02014C4o
********************************************************************** !02014C4p
                                                                       !02014C4q
    02  cmd-36-resp                        redefines tss-data.         !02014C4r
                                                                       !02014C4s
*             Command Type                                             !02014C4t
                                                                       !02014C4u
        04  cmd-typ                        pic x(2).                   !02014C4v
                                                                       !02014C4w
*             Response Status                                          !02014C4x
                                                                       !02014C4y
        04  resp-stat                      pic x(2).                   !02014C4z
                                                                       !02014C50
*             Terminal ID                                              !02014C51
                                                                       !02014C52
        04  term-id                        pic x(16).                  !02014C53
                                                                       !02014C54
*             This field is not used.                                  !02014C55
                                                                       !02014C56
                                                                       !02014G0X
        04  resp-filler-36                 pic x(4280).                !02014G0Y
                                                                       !02014G0Z
                                                                       !02014C58
********************************************************************** !02014C59
*                                                                      !02014C5A
*             Verify Serial Number Signature request                   !02014C5B
*                                                                      !02014C5C
********************************************************************** !02014C5D
                                                                       !02014C5E
    02  cmd-37-rqst                        redefines tss-data.         !02014C5F
                                                                       !02014C5G
*             Command Type                                             !02014C5H
                                                                       !02014C5I
        04  cmd-typ                        pic x(2).                   !02014C5J
                                                                       !02014C5K
*             Device Type                                              !02014C5L
                                                                       !02014C5M
        04  dev-typ                        pic x(2).                   !02014C5N
                                                                       !02014C5O
*             Terminal ID                                              !02014C5P
                                                                       !02014C5Q
        04  term-id                        pic x(16).                  !02014C5R
                                                                       !02014C5S
*             Serial Number                                            !02014C5T
                                                                       !02014C5U
        04  serial-num                     pic x(8).                   !02014C5V
                                                                       !02014C5W
*             Serial Number Verify                                     !02014C5X
                                                                       !02014C5Y
        04  serial-num-vrfy                pic x(2).                   !02014C5Z
                                                                       !02014C5a
*             FIID                                                     !02014C5b
                                                                       !02014C5c
        04  fiid                           pic x(4).                   !02014C5d
                                                                       !02014C5e
*             Signature Length                                         !02014C5f
                                                                       !02014C5g
        04  sig-lgth                       type binary 16.             !02014C5h
                                                                       !02014C5i
*             Signature                                                !02014C5j
                                                                       !02014C5k
                                                                       !02014G0a
        04  sig                            pic x(4264).                !02014G0b
                                                                       !02014G0c
                                                                       !02014C5m
********************************************************************** !02014C5n
*                                                                      !02014C5o
*             Verify Serial Number Signature response                  !02014C5p
*                                                                      !02014C5q
********************************************************************** !02014C5r
                                                                       !02014C5s
    02  cmd-37-resp                        redefines tss-data.         !02014C5t
                                                                       !02014C5u
*             Command Type                                             !02014C5v
                                                                       !02014C5w
        04  cmd-typ                        pic x(2).                   !02014C5x
                                                                       !02014C5y
*             Response Status                                          !02014C5z
                                                                       !02014C60
        04  resp-stat                      pic x(2).                   !02014C61
                                                                       !02014C62
*             Terminal ID                                              !02014C63
                                                                       !02014C64
        04  term-id                        pic x(16).                  !02014C65
                                                                       !02014C66
*             Variable-Length Data (Public Key Length, Public Key,     !02014C67
*             Signature Length, Signature)                             !02014C68
                                                                       !02014C69
                                                                       !02014G0d
        04  var-data                       pic x(4280).                !02014G0e
                                                                       !02014G0f
                                                                       !02014C6B
********************************************************************** !02014C6C
*                                                                      !02014C6D
*             Back Out Master Key request                              !02014C6E
*                                                                      !02014C6F
********************************************************************** !02014C6G
                                                                       !02014C6H
    02  cmd-38-rqst                        redefines tss-data.         !02014C6I
                                                                       !02014C6J
*             Command Type                                             !02014C6K
                                                                       !02014C6L
        04  cmd-typ                        pic x(2).                   !02014C6M
                                                                       !02014C6N
*             Device Type                                              !02014C6O
                                                                       !02014C6P
        04  dev-typ                        pic x(2).                   !02014C6Q
                                                                       !02014C6R
*             Terminal ID                                              !02014C6S
                                                                       !02014C6T
        04  term-id                        pic x(16).                  !02014C6U
                                                                       !02014C6V
                                                                       !02014P00
*             Version number                                           !02014P01
                                                                       !02014P02
        04  ver-num                        pic x(2).                   !02014P03
                                                                       !02014P04
*             Key Type                                                 !02014P05
                                                                       !02014P06
        04  key-typ                        pic x(2).                   !02014P07
                                                                       !02014P08
*             This field is not used.                                  !02014C6W
                                                                       !02014C6X
                                                                       !02014G0g
                                                                       !02014P09
        04  rqst-filler-38                 pic x(4276).                !02014P0A
                                                                       !02014P0B
                                                                       !02014G0i
                                                                       !02014C6Z
********************************************************************** !02014C6a
*                                                                      !02014C6b
*             Back Out Master Key response                             !02014C6c
*                                                                      !02014C6d
********************************************************************** !02014C6e
                                                                       !02014C6f
    02  cmd-38-resp                        redefines tss-data.         !02014C6g
                                                                       !02014C6h
*             Command Type                                             !02014C6i
                                                                       !02014C6j
        04  cmd-typ                        pic x(2).                   !02014C6k
                                                                       !02014C6l
*             Response Status                                          !02014C6m
                                                                       !02014C6n
        04  resp-stat                      pic x(2).                   !02014C6o
                                                                       !02014C6p
*             This field is not used.                                  !02014C6q
                                                                       !02014C6r
                                                                       !02014G0j
        04  resp-filler-38                 pic x(4296).                !02014G0k
                                                                       !02014G0l
                                                                       !02014C6t
********************************************************************** !02014C6u
*                                                                      !02014C6v
*             Verify Check Digits / Key Status request                 !02014C6w
*                                                                      !02014C6x
********************************************************************** !02014C6y
                                                                       !02014C6z
    02  cmd-39-rqst                        redefines tss-data.         !02014C70
                                                                       !02014C71
*             Command Type                                             !02014C72
                                                                       !02014C73
        04  cmd-typ                        pic x(2).                   !02014C74
                                                                       !02014C75
*             End Point Type                                           !02014C76
                                                                       !02014C77
        04  ep-typ                         pic x(2).                   !02014C78
                                                                       !02014C79
*             Key Locator                                              !02014C7A
                                                                       !02014C7B
        04  key-locator                    pic x(16).                  !02014C7C
                                                                       !02014C7D
*             Key Type                                                 !02014C7E
                                                                       !02014C7F
        04  key-typ                        pic x(2).                   !02014C7G
                                                                       !02014C7H
*             Key Direction                                            !02014C7I
                                                                       !02014C7J
        04  key-dir                        pic x.                      !02014C7K
                                                                       !02014C7L
*             Key Index                                                !02014C7M
                                                                       !02014C7N
        04  key-idx                        pic x.                      !02014C7O
                                                                       !02014C7P
*             Transport Flag                                           !02014C7Q
                                                                       !02014C7R
        04  transport-flg                  pic x.                      !02014C7S
                                                                       !02014C7T
*             Check Digits                                             !02014C7U
                                                                       !02014C7V
        04  chk-dgts                       pic x(6).                   !02014C7W
                                                                       !02014C7X
*             This field is not used.                                  !02014C7Y
                                                                       !02014C7Z
                                                                       !02014G0m
        04  rqst-filler-39                 pic x(4269).                !02014G0n
                                                                       !02014G0o
                                                                       !02014C7b
********************************************************************** !02014C7c
*                                                                      !02014C7d
*             Verify Check Digits / Key Status response                !02014C7e
*                                                                      !02014C7f
********************************************************************** !02014C7g
                                                                       !02014C7h
    02  cmd-39-resp                        redefines tss-data.         !02014C7i
                                                                       !02014C7j
*             Command Type                                             !02014C7k
                                                                       !02014C7l
        04  cmd-typ                        pic x(2).                   !02014C7m
                                                                       !02014C7n
*             Response Status                                          !02014C7o
                                                                       !02014C7p
        04  resp-stat                      pic x(2).                   !02014C7q
                                                                       !02014C7r
*             This field is not used.                                  !02014C7s
                                                                       !02014C7t
                                                                       !02014G0p
        04  resp-filler-39                 pic x(4296).                !02014G0q
                                                                       !02014G0r
                                                                       !02014C7v
                                                                       !02015
                                                                       !02015E00
                                                                       !02015J00
                                                                       !02015J01
                                                                       !02015J02
                                                                       !02015G05
                                                                       !02015E12
*********************************************************************  !02015E13
*                                                                   *  !02015E14
*             Encrypt/Decrypt/Translate Data Request.               *  !02015E15
*                                                                   *  !02015E16
*********************************************************************  !02015E17
                                                                       !02015E18
    02  cmd-41-rqst                        redefines tss-data.         !02015E19
                                                                       !02015E1A
*             Command Type                                             !02015E1B
                                                                       !02015E1C
        04  cmd-typ                        pic x(2).                   !02015E1D
                                                                       !02015E1E
*             The function being performed.                            !02015E1F
*                 "0" - Decrypt                                        !02015E1G
*                 "1" - Encrypt                                        !02015E1H
*                 "2" - Translate                                      !02015E1I
                                                                       !02015E1J
        04  fnct                           pic x.                      !02015E1K
                                                                       !02015E1L
*             Used to locate the Source Key within TSS.                !02015E1M
                                                                       !02015E1N
        04  src-key-loc                    pic x(16).                  !02015E1O
                                                                       !02015E1P
*             The origin of the transaction of the Source.             !02015E1Q
*                 "0" - Device                                         !02015E1R
*                 "1" - Interface                                      !02015E1S
                                                                       !02015E1T
        04  src-txn-orig                   pic x.                      !02015E1U
                                                                       !02015E1V
*             Used to locate the Destination Key within TSS.           !02015E1W
                                                                       !02015E1X
        04  dest-key-loc                   pic x(16).                  !02015E1Y
                                                                       !02015E1Z
*             The origin of the transaction of the Destination.        !02015E1a
*                 "0" - Device                                         !02015E1b
*                 "1" - Interface                                      !02015E1c
                                                                       !02015E1d
        04  dest-txn-orig                  pic x.                      !02015E1e
                                                                       !02015E1f
*             Length of the data within the input data field.          !02015E1g
                                                                       !02015E1h
        04  input-data-lgth                pic 9(4).                   !02015E1i
                                                                       !02015E1j
*             Input data to be Encrypted/Decrypted/Translated.         !02015E1k
                                                                       !02015E1l
        04  input-data                     pic x(4096).                !02015E1m
                                                                       !02015E1n
*             This field is not used.                                  !02015E1o
                                                                       !02015E1p
                                                                       !02015G06
        04  rqst-filler-41                 pic x(163).                 !02015G07
*             The filler field is redefined for the fields             !02015G08
*             required by the optional enhancements.                   !02015G09
                                                                       !02015G0A
        04  opt redefines rqst-filler-41.                              !02015G0B
                                                                       !02015G0C
*             The following data is required for TSS Key Index         !02015G0D
*             (TKI) processing.                                        !02015G0E
                                                                       !02015G0F
            06  tki.                                                   !02015G0G
                                                                       !02015G0H
*             Source key direction                                     !02015G0I
                                                                       !02015G0J
                08  src-key-dir            pic x.                      !02015G0K
                                                                       !02015G0L
*             Index of the source key to be used                       !02015G0M
                                                                       !02015G0N
                08  src-key-idx            pic x.                      !02015G0O
                                                                       !02015G0P
*             Destination key direction                                !02015G0Q
                                                                       !02015G0R
                08  dest-key-dir           pic x.                      !02015G0S
                                                                       !02015G0T
*             Index of the destination key to be used                  !02015G0U
                                                                       !02015G0V
                08  dest-key-idx           pic x.                      !02015G0W
                                                                       !02015G0X
*             This field is the leftover data from redefining          !02015G0Y
*             the rqst-filler-41 field.                                !02015G0Z
                                                                       !02015G0a
            06  aci-opt                    pic x(159).                 !02015G0b
                                                                       !02015G0c
                                                                       !02015E1r
*********************************************************************  !02015E1s
*                                                                   *  !02015E1t
*             Encrypt/Decrypt/Translate Data Response.              *  !02015E1u
*                                                                   *  !02015E1v
*********************************************************************  !02015E1w
                                                                       !02015E1x
    02  cmd-41-resp                        redefines tss-data.         !02015E1y
                                                                       !02015E1z
*             Command Type                                             !02015E20
                                                                       !02015E21
        04  cmd-typ                        pic x(2).                   !02015E22
                                                                       !02015E23
*             Response Status                                          !02015E24
                                                                       !02015E25
        04  resp-stat                      pic x(2).                   !02015E26
                                                                       !02015E27
*             The function being performed.                            !02015E28
*                 "0" - Decrypt                                        !02015E29
*                 "1" - Encrypt                                        !02015E2A
*                 "2" - Translate                                      !02015E2B
                                                                       !02015E2C
        04  fnct                           pic x.                      !02015E2D
                                                                       !02015E2E
*             Check Digits that are returned when a decrypt or         !02015E2F
*             translate function is performed.                         !02015E2G
                                                                       !02015E2H
        04  chk-dgt1                       pic x(6).                   !02015E2I
                                                                       !02015E2J
*             Check Digits that are returned when a decrypt or         !02015E2K
*             translate function with inner or outer passes is         !02015E2L
*             performed.                                               !02015E2M
                                                                       !02015E2N
        04  chk-dgt2                       pic x(6).                   !02015E2O
                                                                       !02015E2P
*             Check Digits that are returned when an encrypt or        !02015E2Q
*             translate function is performed.                         !02015E2R
                                                                       !02015E2S
        04  chk-dgt3                       pic x(6).                   !02015E2T
                                                                       !02015E2U
*             Check Digits that are returned when an encrypt or        !02015E2V
*             translate function with inner or outer passes is         !02015E2W
*             performed.                                               !02015E2X
                                                                       !02015E2Y
        04  chk-dgt4                       pic x(6).                   !02015E2Z
                                                                       !02015E2a
*             Length of the data within the output data field.         !02015E2b
                                                                       !02015E2c
        04  output-data-lgth               pic 9(4).                   !02015E2d
                                                                       !02015E2e
*             Output data from the function being performed.           !02015E2f
                                                                       !02015E2g
        04  output-data                    pic x(4096).                !02015E2h
                                                                       !02015E2i
*             The data encryption data type.                           !02015E2j
*                 "B" - Binary                                         !02015E2k
*                 "U" - Unpacked ASCII                                 !02015E2l
                                                                       !02015E2m
        04  encrypt-data-typ               pic x.                      !02015E2n
                                                                       !02015E2o
*             The DES encrpytion mode.                                 !02015E2p
                                                                       !02015E2q
        04  encrypt-data-mde               pic x.                      !02015E2r
                                                                       !02015E2s
*             This field is not used.                                  !02015E2t
                                                                       !02015E2u
                                                                       !02015G0d
        04  resp-filler-41                 pic x(169).                 !02015G0e
                                                                       !02015G0f
*             The filler field is redefined for the fields             !02015G0g
*             required by the optional enhancements.                   !02015G0h
                                                                       !02015G0i
        04  opt redefines resp-filler-41.                              !02015G0j
                                                                       !02015G0k
*             The following data is required for TSS Key Index         !02015G0l
*             (TKI) processing.                                        !02015G0m
                                                                       !02015G0n
            06  tki.                                                   !02015G0o
                                                                       !02015G0p
*             Index of the source key used                             !02015G0q
                                                                       !02015G0r
                08  src-key-idx            pic x.                      !02015G0s
                                                                       !02015G0t
*             Index of the destination key used                        !02015G0u
                                                                       !02015G0v
                08  dest-key-idx           pic x.                      !02015G0w
                                                                       !02015G0x
*             This field is the leftover data from redefining          !02015G0y
*             the resp-filler-41 field.                                !02015G0z
                                                                       !02015G10
            06  aci-opt                    pic x(167).                 !02015G11
                                                                       !02015G12
                                                                       !02015E2w
*********************************************************************  !02015E2x
*                                                                   *  !02015E2y
*             Generate MAC and Encrypt/Translate Data Request.      *  !02015E2z
*                                                                   *  !02015E30
*********************************************************************  !02015E31
                                                                       !02015E32
    02  cmd-42-rqst                        redefines tss-data.         !02015E33
                                                                       !02015E34
*             Command Type                                             !02015E35
                                                                       !02015E36
        04  cmd-typ                        pic x(2).                   !02015E37
                                                                       !02015E38
*             The function being performed.                            !02015E39
*                 "1" - Encrypt                                        !02015E3A
*                 "2" - Translate                                      !02015E3B
                                                                       !02015E3C
        04  fnct                           pic x.                      !02015E3D
                                                                       !02015E3E
*             Used to locate the Destination Key within TSS.           !02015E3F
                                                                       !02015E3G
        04  dest-key-loc                   pic x(16).                  !02015E3H
                                                                       !02015E3I
*             The origin of the transaction of the Destination.        !02015E3J
*                 "0" - Device                                         !02015E3K
*                 "1" - Interface                                      !02015E3L
                                                                       !02015E3M
        04  dest-txn-orig                  pic x.                      !02015E3N
                                                                       !02015E3O
                                                                       !02015E3P
*             Flag indicating whether to include the IV in the HSM     !02015E3Q
*             command.                                                 !02015E3R
*                 "Y" - Include the IV in the HSM command.             !02015E3S
*                 "N" - Do not include the IV in the HSM command.      !02015E3T
                                                                       !02015E3U
        04  iv-flg                         pic x.                      !02015E3V
                                                                       !02015E3W
*             Length of the data within the MAC data length field.     !02015E3X
                                                                       !02015E3Y
        04  mac-data-lgth                  pic 9(3).                   !02015E3Z
                                                                       !02015E3a
*             MAC data.                                                !02015E3b
                                                                       !02015E3c
        04  mac-data                       pic x(240).                 !02015E3d
                                                                       !02015E3e
*             Length of the data within the input data field.          !02015E3f
                                                                       !02015E3g
        04  input-data-lgth                pic 9(4).                   !02015E3h
                                                                       !02015E3i
*             Input data.                                              !02015E3j
                                                                       !02015E3k
        04  input-data                     pic x(3500).                !02015E3l
                                                                       !02015E3m
*             Used to locate the Source Key within TSS.                !02015E3n
                                                                       !02015E3o
        04  src-key-loc                    pic x(16).                  !02015E3p
                                                                       !02015E3q
*             The origin of the transaction of the Source.             !02015E3r
                                                                       !02015E3s
        04  src-txn-orig                   pic x.                      !02015E3t
*                 "0" - Device                                         !02015E3u
*                 "1" - Interface                                      !02015E3v
                                                                       !02015G13
                                                                       !02015G14
                                                                       !02015G15
                                                                       !02015G16
                                                                       !02015G17
*             This field is not used.                                  !02015G18
                                                                       !02015G19
        04  rqst-filler-42                 pic x(515).                 !02015G1A
                                                                       !02015G1B
*             The filler field is redefined for the fields             !02015G1C
*             required by the optional enhancements.                   !02015G1D
                                                                       !02015G1E
        04  opt redefines rqst-filler-42.                              !02015G1F
                                                                       !02015G1G
*             The following data is required for TSS Key Index         !02015G1H
*             (TKI) processing.                                        !02015G1I
                                                                       !02015G1J
            06  tki.                                                   !02015G1K
                                                                       !02015G1L
*             Source key direction                                     !02015G1M
                                                                       !02015G1N
                08  src-key-dir            pic x.                      !02015G1O
                                                                       !02015G1P
*             Index of the source key to be used.                      !02015G1Q
                                                                       !02015G1R
                08  src-key-idx            pic x.                      !02015G1S
                                                                       !02015G1T
*             Destination key direction                                !02015G1U
                                                                       !02015G1V
                08  dest-key-dir           pic x.                      !02015G1W
                                                                       !02015G1X
*             Index of the destination key to be used.                 !02015G1Y
                                                                       !02015G1Z
                08  dest-key-idx           pic x.                      !02015G1a
                                                                       !02015G1b
*             MAC key direction                                        !02015G1c
                                                                       !02015G1d
                08  mac-key-dir            pic x.                      !02015G1e
                                                                       !02015G1f
*             Index of the MAC key to be used.                         !02015G1g
                                                                       !02015G1h
                08  mac-key-idx            pic x.                      !02015G1i
                                                                       !02015G1j
*             This field is the leftover data from redefining          !02015G1k
*             the rqst-filler-42 field.                                !02015G1l
                                                                       !02015G1m
            06  aci-opt                    pic x(509).                 !02015G1n
*********************************************************************  !02015G1o
*                                                                   *  !02015G1p
*             Generate MAC and Encrypt/Translate Data Response.     *  !02015G1q
*                                                                   *  !02015G1r
*********************************************************************  !02015G1s
                                                                       !02015G1t
    02  cmd-42-resp                        redefines tss-data.         !02015G1u
                                                                       !02015G1v
*             Command Type                                             !02015G1w
                                                                       !02015G1x
        04  cmd-typ                        pic x(2).                   !02015G1y
                                                                       !02015G1z
*             Response Status                                          !02015G20
                                                                       !02015G21
        04  resp-stat                      pic x(2).                   !02015G22
                                                                       !02015G23
*             The function being performed.                            !02015G24
*                 "1" - Encrypt                                        !02015G25
*                 "2" - Translate                                      !02015G26
                                                                       !02015G27
        04  fnct                           pic x.                      !02015G28
                                                                       !02015G29
*             MAC                                                      !02015G2A
                                                                       !02015G2B
        04  mac                            pic x(8).                   !02015G2C
                                                                       !02015G2D
*             MAC Check Digits.                                        !02015G2E
                                                                       !02015G2F
        04  mac-chk-dgt                    pic x(6).                   !02015G2G
                                                                       !02015G2H
*             Incoming data encryption check digits.  Will be          !02015G2I
*             spaces for the encrypt function.                         !02015G2J
                                                                       !02015G2K
        04  in-chk-dgt                     pic x(6).                   !02015G2L
                                                                       !02015G2M
*             Outgoing data encryption check digits.                   !02015G2N
                                                                       !02015G2O
        04  out-chk-dgt                    pic x(6).                   !02015G2P
                                                                       !02015G2Q
*             Initialization Vector (translation command).             !02015G2R
                                                                       !02015G2S
                                                                       !02015H00
        04  iv                             pic x(74).                  !02015H01
                                                                       !02015H02
                                                                       !02015H03
                                                                       !02015H04
                                                                       !02015G2U
*             Ending Initialization Vector.                            !02015G2V
                                                                       !02015G2W
                                                                       !02015H05
        04  end-iv                         pic x(74).                  !02015H06
                                                                       !02015H07
                                                                       !02015H08
                                                                       !02015H09
                                                                       !02015G2Y
*             Length of the data within the output data field.         !02015G2Z
                                                                       !02015G2a
        04  output-data-lgth               pic 9(4).                   !02015G2b
                                                                       !02015G2c
*             Ouput data from the function begin performed.            !02015G2d
                                                                       !02015G2e
        04  output-data                    pic x(4096).                !02015G2f
                                                                       !02015G2g
                                                                       !02015H0A
*                                                                      !02015H0B
*            Encryption data type                                      !02015H0C
                                                                       !02015H0D
        04  encrypt-data-type              pic x.                      !02015H0E
                                                                       !02015H0F
*            Encryption DES mode                                       !02015H0G
                                                                       !02015H0H
        04  encrypt-des-mode               pic x.                      !02015H0I
                                                                       !02015H0J
*             This field is not used.                                  !02015G2h
                                                                       !02015G2i
                                                                       !02015H0K
        04  resp-filler-42                 pic x(19).                  !02015H0L
                                                                       !02015H0M
                                                                       !02015G2k
*             The filler field is redefined for the fields             !02015G2l
*             required by the optional enhancements.                   !02015G2m
                                                                       !02015G2n
        04  opt redefines resp-filler-42.                              !02015G2o
                                                                       !02015G2p
*             The following data is required for TSS Key Index         !02015G2q
*             (TKI) processing.                                        !02015G2r
                                                                       !02015G2s
            06  tki.                                                   !02015G2t
                                                                       !02015G2u
*             Index of the source key to be used.                      !02015G2v
                                                                       !02015G2w
                08  src-key-idx            pic x.                      !02015G2x
                                                                       !02015G2y
*             Index of the destination key to be used.                 !02015G2z
                                                                       !02015G30
                08  dest-key-idx           pic x.                      !02015G31
                                                                       !02015G32
*             Index of the MAC key to be used.                         !02015G33
                                                                       !02015G34
                08  mac-key-idx            pic x.                      !02015G35
                                                                       !02015G36
*             This field is the leftover data from redefining          !02015G37
*             the resp-filler-42 field.                                !02015G38
                                                                       !02015G39
                                                                       !02015H0N
            06  aci-opt                    pic x(16).                  !02015H0O
                                                                       !02015H0P
                                                                       !02015G3B
                                                                       !02015G3C
**********************************************************************!!02015G3D
*                                                                     !!02015G3E
                                                                       !02015G3F
*             Generate RVS, RVT request                               !!02015G3G
                                                                       !02015G3H
*                                                                     !!02015G3I
**********************************************************************!!02015G3J
                                                                       !02015G3K
    02  cmd-43-rqst                        redefines tss-data.         !02015G3L
                                                                       !02015G3M
*             Command Type                                             !02015G3N
                                                                       !02015G3O
        04  cmd-typ                        pic x(2).                   !02015G3P
                                                                       !02015G3Q
*             Function Type                                            !02015G3R
                                                                       !02015G3S
        04  fnct-typ                       pic x(2).                   !02015G3T
                                                                       !02015G3U
*             Key Locator                                              !02015G3V
                                                                       !02015G3W
        04  key-loc                        pic x(16).                  !02015G3X
                                                                       !02015G3Y
*             Transaction Origin                                       !02015G3Z
                                                                       !02015G3a
        04  txn-orig                       pic x.                      !02015G3b
                                                                       !02015G3c
*             Index Update                                             !02015G3d
                                                                       !02015G3e
        04  idx-updt                       pic x.                      !02015G3f
                                                                       !02015G3g
                                                                       !02015G3h
*             RVS/RVT                                                  !02015G3i
                                                                       !02015G3j
        04  rvs-rvt                        pic x(32).                  !02015G3k
                                                                       !02015G3l
*             This field is not used.                                  !02015G3m
                                                                       !02015G3n
                                                                       !02015G3o
        04  rqst-filler-43                 pic x(4246).                !02015G3p
                                                                       !02015G3q
                                                                       !02015G3r
********************************************************************** !02015G3s
*                                                                      !02015G3t
*             Generate RVS/RVT response                                !02015G3u
*                                                                      !02015G3v
********************************************************************** !02015G3w
                                                                       !02015G3x
    02  cmd-43-resp                        redefines tss-data.         !02015G3y
                                                                       !02015G3z
*             Command Type                                             !02015G40
                                                                       !02015G41
        04  cmd-typ                        pic x(2).                   !02015G42
                                                                       !02015G43
*             Response Status                                          !02015G44
                                                                       !02015G45
        04  resp-stat                      pic x(2).                   !02015G46
                                                                       !02015G47
*             Function Type                                            !02015G48
                                                                       !02015G49
        04  fnct-typ                       pic x(2).                   !02015G4A
                                                                       !02015G4B
*             Length of RVS/RVT                                        !02015G4C
                                                                       !02015G4D
        04  rvs-rvt-lgth                   pic x(2).                   !02015G4E
                                                                       !02015G4F
*             RVS/RVT                                                  !02015G4G
                                                                       !02015G4H
        04  rvs-rvt                        pic x(32).                  !02015G4I
                                                                       !02015G4J
*             This field is not used.                                  !02015G4K
                                                                       !02015G4L
        04  resp-filler-43                 pic x(4260).                !02015G4M
                                                                       !02015G4N
********************************************************************** !02015G4O
*                                                                      !02015G4P
*             Generate NCR PIN Verification request                    !02015G4Q
*                                                                      !02015G4R
********************************************************************** !02015G4S
                                                                       !02015G4T
    02  cmd-44-rqst                        redefines tss-data.         !02015G4U
                                                                       !02015G4V
*             Command Type                                             !02015G4W
                                                                       !02015G4X
        04  cmd-typ                        pic x(2).                   !02015G4Y
                                                                       !02015G4Z
*             Encrypted PIN                                            !02015G4a
                                                                       !02015G4b
        04  pin                            pic x(16).                  !02015G4c
                                                                       !02015G4d
*             Key Locator                                              !02015G4e
                                                                       !02015G4f
        04  key-loc                        pic x(16).                  !02015G4g
                                                                       !02015G4h
*             Primary key value to KEYA record                         !02015G4i
                                                                       !02015G4j
        04  keya-grp                       pic x(16).                  !02015G4k
                                                                       !02015G4l
*             Version number                                           !02015G4m
                                                                       !02015G4n
        04  ver-num                        pic x(3).                   !02015G4o
                                                                       !02015G4p
*             PIN Data Block                                           !02015G4q
                                                                       !02015G4r
        04  pin-data-blk                   pic x(16).                  !02015G4s
                                                                       !02015G4t
*             Primary Account Number                                   !02015G4u
                                                                       !02015G4v
        04  pan                            pic x(19).                  !02015G4w
                                                                       !02015G4x
*             Length of Primary Account Number                         !02015G4y
                                                                       !02015G4z
        04  pan-lgth                       pic x(2).                   !02015G50
                                                                       !02015G51
*             PIN Offset                                               !02015G52
                                                                       !02015G53
        04  pin-ofst                       pic x(12).                  !02015G54
                                                                       !02015G55
*             PIN Offset Length                                        !02015G56
                                                                       !02015G57
        04  pin-ofst-lgth                  pic x(2).                   !02015G58
                                                                       !02015G59
*             Transaction Origin                                       !02015G5A
                                                                       !02015G5B
        04  txn-orig                       pic x.                      !02015G5C
                                                                       !02015G5D
*             This field is not used.                                  !02015G5E
                                                                       !02015G5F
        04  rqst-filler-44                 pic x(4195).                !02015G5G
                                                                       !02015G5H
********************************************************************** !02015G5I
*                                                                      !02015G5J
*             Generate NCR PIN Verification response                   !02015G5K
*                                                                      !02015G5L
********************************************************************** !02015G5M
                                                                       !02015G5N
    02  cmd-44-resp                        redefines tss-data.         !02015G5O
                                                                       !02015G5P
*             Command Type                                             !02015G5Q
                                                                       !02015G5R
        04  cmd-typ                        pic x(2).                   !02015G5S
                                                                       !02015G5T
*             Response Status                                          !02015G5U
                                                                       !02015G5V
        04  resp-stat                      pic x(2).                   !02015G5W
                                                                       !02015G5X
*             This field is not used.                                  !02015G5Y
                                                                       !02015G5Z
        04  resp-filler-44                 pic x(4296).                !02015G5a
                                                                       !02015G5b
                                                                       !02015G5c
********************************************************************** !02015G5d
*                                                                      !02015G5e
*             Verify Identikey PIN request                             !02015G5f
*                                                                      !02015G5g
********************************************************************** !02015G5h
                                                                       !02015G5i
    02  cmd-45-rqst                        redefines tss-data.         !02015G5j
                                                                       !02015G5k
*             Command Type                                             !02015G5l
                                                                       !02015G5m
        04  cmd-typ                        pic x(2).                   !02015G5n
                                                                       !02015G5o
*             PIN format                                               !02015G5p
                                                                       !02015G5q
        04  pin-frmt                       pic x.                      !02015G5r
                                                                       !02015G5s
*             Encrypted PIN                                            !02015G5t
                                                                       !02015G5u
        04  pin                            pic x(16).                  !02015G5v
                                                                       !02015G5w
*             PIN Encryption Key Locator                               !02015G5x
                                                                       !02015G5y
        04  kpe-loc                        pic x(16).                  !02015G5z
                                                                       !02015G60
*             Primary key value to KEYA record                         !02015G61
                                                                       !02015G62
        04  keya-grp                       pic x(16).                  !02015G63
                                                                       !02015G64
*             Card Expiration Date (YYMM)                              !02015G65
                                                                       !02015G66
        04  crd-exp-dat                    pic x(4).                   !02015G67
                                                                       !02015G68
*             Primary Account Number                                   !02015G69
                                                                       !02015G6A
        04  pan                            pic x(19).                  !02015G6B
                                                                       !02015G6C
*             Length of Primary Account Number                         !02015G6D
                                                                       !02015G6E
        04  pan-lgth                       pic x(2).                   !02015G6F
                                                                       !02015G6G
*             PIN Offset                                               !02015G6H
                                                                       !02015G6I
        04  pin-ofst                       pic x(12).                  !02015G6J
                                                                       !02015G6K
*             PIN Offset Length                                        !02015G6L
                                                                       !02015G6M
        04  pin-ofst-lgth                  pic x(2).                   !02015G6N
                                                                       !02015G6O
*             Transaction Origin                                       !02015G6P
                                                                       !02015G6Q
        04  txn-orig                       pic x.                      !02015G6R
                                                                       !02015G6S
*             This field is not used.                                  !02015G6T
                                                                       !02015G6U
        04  rqst-filler-45                 pic x(4209).                !02015G6V
*             The filler field is redefined for the fields             !02015G6W
*             required by the optional enhancements.                   !02015G6X
                                                                       !02015G6Y
        04  opt redefines rqst-filler-45.                              !02015G6Z
                                                                       !02015G6a
*             The following data is required for TSS Key Index         !02015G6b
*             (TKI) processing.                                        !02015G6c
                                                                       !02015G6d
            06  tki.                                                   !02015G6e
                                                                       !02015G6f
*             Index of the PIN encryption key to be used               !02015G6g
                                                                       !02015G6h
                08  pin-key-idx            pic x.                      !02015G6i
                                                                       !02015G6j
*             This field is the leftover data from redefining          !02015G6k
*             the rqst-filler-45 field.                                !02015G6l
                                                                       !02015G6m
            06  aci-opt                    pic x(4208).                !02015G6n
                                                                       !02015G6o
********************************************************************** !02015G6p
*                                                                      !02015G6q
*             Verify Identikey PIN response                            !02015G6r
*                                                                      !02015G6s
********************************************************************** !02015G6t
                                                                       !02015G6u
    02  cmd-45-resp                        redefines tss-data.         !02015G6v
                                                                       !02015G6w
*             Command Type                                             !02015G6x
                                                                       !02015G6y
        04  cmd-typ                        pic x(2).                   !02015G6z
                                                                       !02015G70
*             Response Status                                          !02015G71
                                                                       !02015G72
        04  resp-stat                      pic x(2).                   !02015G73
                                                                       !02015G74
*             This field is not used.                                  !02015G75
                                                                       !02015G76
        04  resp-filler-45                 pic x(4296).                !02015G77
                                                                       !02015G78
                                                                       !02015G79
********************************************************************** !02015G7A
*                                                                      !02015G7B
*             Generate Identikey PIN request                           !02015G7C
*                                                                      !02015G7D
********************************************************************** !02015G7E
                                                                       !02015G7F
    02  cmd-46-rqst                        redefines tss-data.         !02015G7G
                                                                       !02015G7H
*             Command Type                                             !02015G7I
                                                                       !02015G7J
        04  cmd-typ                        pic x(2).                   !02015G7K
                                                                       !02015G7L
*             Encrypted PIN                                            !02015G7M
                                                                       !02015G7N
        04  pin                            pic x(16).                  !02015G7O
                                                                       !02015G7P
*             PIN Encryption Key Locator                               !02015G7Q
                                                                       !02015G7R
        04  kpe-loc                        pic x(16).                  !02015G7S
                                                                       !02015G7T
*             Primary key value to KEYA record                         !02015G7U
                                                                       !02015G7V
        04  keya-grp                       pic x(16).                  !02015G7W
                                                                       !02015G7X
*             Card Expiration Date (YYMM)                              !02015G7Y
                                                                       !02015G7Z
        04  crd-exp-dat                    pic x(4).                   !02015G7a
                                                                       !02015G7b
*             Primary Account Number                                   !02015G7c
                                                                       !02015G7d
        04  pan                            pic x(19).                  !02015G7e
                                                                       !02015G7f
*             Length of Primary Account Number                         !02015G7g
                                                                       !02015G7h
        04  pan-lgth                       pic x(2).                   !02015G7i
                                                                       !02015G7j
*             PIN Block Type                                           !02015G7k
                                                                       !02015G7l
        04  pin-blk-typ                    pic x.                      !02015G7m
                                                                       !02015G7n
*             PIN Offset                                               !02015G7o
                                                                       !02015G7p
        04  pin-ofst                       pic x(12).                  !02015G7q
                                                                       !02015G7r
*             PIN Offset Length                                        !02015G7s
                                                                       !02015G7t
        04  pin-ofst-lgth                  pic x(2).                   !02015G7u
                                                                       !02015G7v
*             Transaction Origin                                       !02015G7w
                                                                       !02015G7x
        04  txn-orig                       pic x.                      !02015G7y
                                                                       !02015G7z
*             This field is not used.                                  !02015G80
                                                                       !02015G81
        04  rqst-filler-46                 pic x(4209).                !02015G82
                                                                       !02015G83
********************************************************************** !02015G84
*                                                                      !02015G85
*             Generate Identikey PIN response                          !02015G86
*                                                                      !02015G87
********************************************************************** !02015G88
                                                                       !02015G89
    02  cmd-46-resp                        redefines tss-data.         !02015G8A
                                                                       !02015G8B
*             Command Type                                             !02015G8C
                                                                       !02015G8D
        04  cmd-typ                        pic x(2).                   !02015G8E
                                                                       !02015G8F
*             Response Status                                          !02015G8G
                                                                       !02015G8H
        04  resp-stat                      pic x(2).                   !02015G8I
                                                                       !02015G8J
*             PIN Offset                                               !02015G8K
                                                                       !02015G8L
        04  pin-ofst                       pic x(12).                  !02015G8M
                                                                       !02015G8N
*             PIN Offset Length                                        !02015G8O
                                                                       !02015G8P
        04  pin-ofst-lgth                  pic x(2).                   !02015G8Q
                                                                       !02015G8R
*             This field is not used.                                  !02015G8S
                                                                       !02015G8T
        04  resp-filler-46                 pic x(4282).                !02015G8U
                                                                       !02015G8V
                                                                       !02015G8W
                                                                       !02015G8X
********************************************************************** !02015G8Y
*                                                                      !02015G8Z
*             EMV Scheme Get request                                   !02015G8a
*                                                                      !02015G8b
********************************************************************** !02015G8c
                                                                       !02015G8d
    02  cmd-47-rqst                        redefines tss-data.         !02015G8e
                                                                       !02015G8f
*             Command Type                                             !02015G8g
                                                                       !02015G8h
        04  cmd-typ                        pic x(2).                   !02015G8i
                                                                       !02015G8j
*             Primary key value to KEYI record                         !02015G8k
                                                                       !02015G8l
        04  keyi-grp                       pic x(16).                  !02015G8m
                                                                       !02015G8n
*             Card Expiration Date (YYMM)                              !02015G8o
                                                                       !02015G8p
        04  crd-exp-dat                    pic x(4).                   !02015G8q
                                                                       !02015G8r
        04  rqst-filler-47                 pic x(4278).                !02015G8s
                                                                       !02015G8t
********************************************************************** !02015G8u
*                                                                      !02015G8v
*             EMV Scheme Get response                                  !02015G8w
*                                                                      !02015G8x
********************************************************************** !02015G8y
                                                                       !02015G8z
    02  cmd-47-resp                        redefines tss-data.         !02015G90
                                                                       !02015G91
*             Command Type                                             !02015G92
                                                                       !02015G93
        04  cmd-typ                        pic x(2).                   !02015G94
                                                                       !02015G95
*             Response Status                                          !02015G96
                                                                       !02015G97
        04  resp-stat                      pic x(2).                   !02015G98
                                                                       !02015G99
*             EMV Scheme                                               !02015G9A
                                                                       !02015G9B
        04  emv-scheme                     pic x.                      !02015G9C
                                                                       !02015G9D
*             This field is not used.                                  !02015G9E
                                                                       !02015G9F
        04  resp-filler-47                 pic x(4295).                !02015G9G
                                                                       !02015G9H
                                                                       !02015G9I
********************************************************************** !02015G9J
*                                                                      !02015G9K
*             DUKPT PIN Translate request                              !02015G9L
*                                                                      !02015G9M
********************************************************************** !02015G9N
                                                                       !02015G9O
    02  cmd-48-rqst                        redefines tss-data.         !02015G9P
                                                                       !02015G9Q
*             Command Type                                             !02015G9R
                                                                       !02015G9S
        04  cmd-typ                        pic x(2).                   !02015G9T
                                                                       !02015G9U
*             Version number                                           !02015G9V
                                                                       !02015G9W
        04  ver-num                        pic x(2).                   !02015G9X
                                                                       !02015G9Y
*             Derivation key locator                                   !02015G9Z
                                                                       !02015G9a
        04  drv-key-loc                    pic x(16).                  !02015G9b
                                                                       !02015G9c
*             Output PIN Encryption Key Locator                        !02015G9d
                                                                       !02015G9e
        04  kpe-loc-out                    pic x(16).                  !02015G9f
                                                                       !02015G9g
*             Input PIN Block                                          !02015G9h
                                                                       !02015G9i
        04  pin-in                         pic x(16).                  !02015G9j
                                                                       !02015G9k
*             Key Sequence Number                                      !02015G9l
                                                                       !02015G9m
        04  ksn                            pic x(20).                  !02015G9n
                                                                       !02015G9o
*             Key Sequence Number                                      !02015G9p
                                                                       !02015G9q
        04  ksn-lgth                       pic x(2).                   !02015G9r
                                                                       !02015G9s
*             Key Sequence Number Descriptor                           !02015G9t
                                                                       !02015G9u
        04  ksn-descr                      pic x(3).                   !02015G9v
                                                                       !02015G9w
*             Primary Account Number                                   !02015G9x
                                                                       !02015G9y
        04  pan                            pic x(19).                  !02015G9z
                                                                       !02015GA0
*             Transaction Origin                                       !02015GA1
                                                                       !02015GA2
        04  txn-orig                       pic x.                      !02015GA3
                                                                       !02015GA4
*             This field is not used.                                  !02015GA5
                                                                       !02015GA6
        04  rqst-filler-48                 pic x(4203).                !02015GA7
                                                                       !02015GA8
*             Version 2 fields                                         !02015GA9
                                                                       !02015GAA
        04  rqst-48-ver-2                  redefines rqst-filler-48.   !02015GAB
                                                                       !02015GAC
*             MAC Data Length                                          !02015GAD
                                                                       !02015GAE
            06  mac-data-lgth              pic x(4).                   !02015GAF
                                                                       !02015GAG
*             MAC Data                                                 !02015GAH
                                                                       !02015GAI
            06  mac-data                   pic x(4096).                !02015GAJ
                                                                       !02015GAK
*             MAC Value                                                !02015GAL
                                                                       !02015GAM
            06  mac-val                    pic x(16).                  !02015GAN
                                                                       !02015GAO
*             This field is the leftover data from redefining          !02015GAP
*             the rqst-filler-48 field.                                !02015GAQ
                                                                       !02015GAR
            06  aci-opt                    pic x(87).                  !02015GAS
                                                                       !02015GAT
*             Version 3 fields                                         !02015GAU
                                                                       !02015GAV
        04  rqst-48-ver-3                  redefines rqst-filler-48.   !02015GAW
                                                                       !02015GAX
*             ISECD Key Locator                                        !02015GAY
                                                                       !02015GAZ
            06  isecd-key-loc              pic x(16).                  !02015GAa
                                                                       !02015GAb
*             MAC Character Set                                        !02015GAc
                                                                       !02015GAd
            06  mac-char-set               pic x.                      !02015GAe
                                                                       !02015GAf
*             PIN Offet in the MAC                                     !02015GAg
                                                                       !02015GAh
            06  pin-ofst-in-mac            pic x(4).                   !02015GAi
                                                                       !02015GAj
*             PIN Key Index                                            !02015GAk
                                                                       !02015GAl
            06  pin-key-idx                pic x.                      !02015GAm
                                                                       !02015GAn
*             MAC Key Direction                                        !02015GAo
                                                                       !02015GAp
            06  mac-key-dir                pic x.                      !02015GAq
                                                                       !02015GAr
                                                                       !02015J03
*             MAC Key Index                                            !02015J04
                                                                       !02015J05
            06  mac-key-idx                pic x.                      !02015J06
                                                                       !02015J07
*             MAC Data Length                                          !02015GAs
                                                                       !02015GAt
            06  mac-data-lgth              pic x(4).                   !02015GAu
                                                                       !02015GAv
*             MAC Data                                                 !02015GAw
                                                                       !02015GAx
            06  mac-data                   pic x(4096).                !02015GAy
                                                                       !02015GAz
*             This field is the leftover data from redefining          !02015GB0
*             the rqst-filler-48 field.                                !02015GB1
                                                                       !02015GB2
                                                                       !02015J08
            06  aci-opt                    pic x(79).                  !02015J09
                                                                       !02015J0A
                                                                       !02015GB4
********************************************************************** !02015GB5
*                                                                      !02015GB6
*             DUKPT PIN Translate response                             !02015GB7
*                                                                      !02015GB8
********************************************************************** !02015GB9
                                                                       !02015GBA
    02  cmd-48-resp                        redefines tss-data.         !02015GBB
                                                                       !02015GBC
*             Command Type                                             !02015GBD
                                                                       !02015GBE
        04  cmd-typ                        pic x(2).                   !02015GBF
                                                                       !02015GBG
*             Version number                                           !02015GBH
                                                                       !02015GBI
        04  ver-num                        pic x(2).                   !02015GBJ
                                                                       !02015GBK
*             Response Status                                          !02015GBL
                                                                       !02015GBM
        04  resp-stat                      pic x(2).                   !02015GBN
                                                                       !02015GBO
*             Output PIN Block                                         !02015GBP
                                                                       !02015GBQ
        04  pin-out                        pic x(16).                  !02015GBR
                                                                       !02015GBS
*             This field is not used.                                  !02015GBT
                                                                       !02015GBU
        04  resp-filler-48                 pic x(4278).                !02015GBV
                                                                       !02015GBW
        04  resp-48-ver-3                  redefines resp-filler-48.   !02015GBX
                                                                       !02015GBY
*             MAC Value                                                !02015GBZ
                                                                       !02015GBa
            06  mac-val                    pic x(16).                  !02015GBb
                                                                       !02015GBc
*             MAC Check Digits                                         !02015GBd
                                                                       !02015GBe
            06  mac-chk-dgt                pic x(6).                   !02015GBf
                                                                       !02015GBg
*             PIN Key Index                                            !02015GBh
                                                                       !02015GBi
            06  pin-key-idx                pic x.                      !02015GBj
                                                                       !02015GBk
*             MAC Key Index                                            !02015GBl
                                                                       !02015GBm
            06  mac-key-idx                pic x.                      !02015GBn
                                                                       !02015GBo
*             This field is the leftover data from redefining          !02015GBp
*             the resp-filler-48 field.                                !02015GBq
                                                                       !02015GBr
            06  aci-opt                    pic x(4254).                !02015GBs
********************************************************************** !02015GBt
*                                                                      !02015GBu
*             DUKPT MAC Verify request                                 !02015GBv
*                                                                      !02015GBw
********************************************************************** !02015GBx
                                                                       !02015GBy
    02  cmd-49-rqst                        redefines tss-data.         !02015GBz
                                                                       !02015GC0
*             Command Type                                             !02015GC1
                                                                       !02015GC2
        04  cmd-typ                        pic x(2).                   !02015GC3
                                                                       !02015GC4
*             Version number                                           !02015GC5
                                                                       !02015GC6
        04  ver-num                        pic x(2).                   !02015GC7
                                                                       !02015GC8
*             Derivation key locator                                   !02015GC9
                                                                       !02015GCA
        04  drv-key-loc                    pic x(16).                  !02015GCB
                                                                       !02015GCC
*             Key Sequence Number                                      !02015GCD
                                                                       !02015GCE
        04  ksn                            pic x(20).                  !02015GCF
                                                                       !02015GCG
*             Key Sequence Number                                      !02015GCH
                                                                       !02015GCI
        04  ksn-lgth                       pic x(2).                   !02015GCJ
                                                                       !02015GCK
*             Key Sequence Number Descriptor                           !02015GCL
                                                                       !02015GCM
        04  ksn-descr                      pic x(3).                   !02015GCN
                                                                       !02015GCO
*             Data to be MACed                                         !02015GCP
                                                                       !02015GCQ
        04  mac-data                       pic x(4096).                !02015GCR
                                                                       !02015GCS
*             Length of Data to be MACed                               !02015GCT
                                                                       !02015GCU
        04  mac-data-lgth                  pic x(4).                   !02015GCV
                                                                       !02015GCW
*             MAC value                                                !02015GCX
                                                                       !02015GCY
        04  mac-val                        pic x(16).                  !02015GCZ
                                                                       !02015GCa
*             Transaction Origin                                       !02015GCb
                                                                       !02015GCc
        04  txn-orig                       pic x.                      !02015GCd
                                                                       !02015I00
*             MAC Key Locator                                          !02015I01
                                                                       !02015I02
        04  mac-key-loc                    pic x(16).                  !02015I03
                                                                       !02015I04
                                                                       !02015GCe
*             This field is not used.                                  !02015GCf
                                                                       !02015GCg
                                                                       !02015I05
        04  rqst-filler-49                 pic x(122).                 !02015I06
                                                                       !02015I07
                                                                       !02015GCi
********************************************************************** !02015GCj
*                                                                      !02015GCk
*             DUKPT MAC Verify response                                !02015GCl
*                                                                      !02015GCm
********************************************************************** !02015GCn
                                                                       !02015GCo
    02  cmd-49-resp                        redefines tss-data.         !02015GCp
                                                                       !02015GCq
*             Command Type                                             !02015GCr
                                                                       !02015GCs
        04  cmd-typ                        pic x(2).                   !02015GCt
                                                                       !02015GCu
*             Version number                                           !02015GCv
                                                                       !02015GCw
        04  ver-num                        pic x(2).                   !02015GCx
                                                                       !02015GCy
*             Response Status                                          !02015GCz
                                                                       !02015GD0
        04  resp-stat                      pic x(2).                   !02015GD1
                                                                       !02015GD2
*             This field is not used.                                  !02015GD3
                                                                       !02015GD4
        04  resp-filler-49                 pic x(4294).                !02015GD5
                                                                       !02015GD6
********************************************************************** !02015GD7
*                                                                      !02015GD8
*             DUKPT MAC Generate request                               !02015GD9
*                                                                      !02015GDA
********************************************************************** !02015GDB
                                                                       !02015GDC
    02  cmd-50-rqst                        redefines tss-data.         !02015GDD
                                                                       !02015GDE
*             Command Type                                             !02015GDF
                                                                       !02015GDG
        04  cmd-typ                        pic x(2).                   !02015GDH
                                                                       !02015GDI
*             Version number                                           !02015GDJ
                                                                       !02015GDK
        04  ver-num                        pic x(2).                   !02015GDL
                                                                       !02015GDM
*             Derivation key locator                                   !02015GDN
                                                                       !02015GDO
        04  drv-key-loc                    pic x(16).                  !02015GDP
                                                                       !02015GDQ
*             Key Sequence Number                                      !02015GDR
                                                                       !02015GDS
        04  ksn                            pic x(20).                  !02015GDT
                                                                       !02015GDU
*             Key Sequence Number                                      !02015GDV
                                                                       !02015GDW
        04  ksn-lgth                       pic x(2).                   !02015GDX
                                                                       !02015GDY
*             Key Sequence Number Descriptor                           !02015GDZ
                                                                       !02015GDa
        04  ksn-descr                      pic x(3).                   !02015GDb
                                                                       !02015GDc
*             Data to be MACed                                         !02015GDd
                                                                       !02015GDe
        04  mac-data                       pic x(4096).                !02015GDf
                                                                       !02015GDg
*             Length of Data to be MACed                               !02015GDh
                                                                       !02015GDi
        04  mac-data-lgth                  pic x(4).                   !02015GDj
                                                                       !02015GDk
*             Transaction Origin                                       !02015GDl
                                                                       !02015GDm
        04  txn-orig                       pic x.                      !02015GDn
                                                                       !02015I08
*             MAC Key Locator                                          !02015I09
                                                                       !02015I0A
        04  mac-key-loc                   pic x(16).                   !02015I0B
                                                                       !02015I0C
                                                                       !02015GDo
                                                                       !02015M00
*             MAC Option                                               !02015M01
                                                                       !02015M02
        04  mac-opt                       pic x.                       !02015M03
                                                                       !02015M04
*             This field is not used.                                  !02015GDp
                                                                       !02015GDq
                                                                       !02015I0D
                                                                       !02015M05
        04  rqst-filler-50                 pic x(137).                 !02015M06
                                                                       !02015M07
                                                                       !02015I0F
                                                                       !02015GDs
********************************************************************** !02015GDt
*                                                                      !02015GDu
*             DUKPT MAC Generate response                              !02015GDv
*                                                                      !02015GDw
********************************************************************** !02015GDx
                                                                       !02015GDy
    02  cmd-50-resp                        redefines tss-data.         !02015GDz
                                                                       !02015GE0
*             Command Type                                             !02015GE1
                                                                       !02015GE2
        04  cmd-typ                        pic x(2).                   !02015GE3
                                                                       !02015GE4
*             Version number                                           !02015GE5
                                                                       !02015GE6
        04  ver-num                        pic x(2).                   !02015GE7
                                                                       !02015GE8
*             Response Status                                          !02015GE9
                                                                       !02015GEA
        04  resp-stat                      pic x(2).                   !02015GEB
                                                                       !02015GEC
*             MAC value                                                !02015GED
                                                                       !02015GEE
        04  mac-val                        pic x(16).                  !02015GEF
                                                                       !02015GEG
*             This field is not used.                                  !02015GEH
                                                                       !02015GEI
        04  resp-filler-50                 pic x(4278).                !02015GEJ
                                                                       !02015K00
                                                                       !02015M08
********************************************************************** !02015M09
*                                                                      !02015M0A
*             Key Register Reset request                               !02015M0B
*                                                                      !02015M0C
********************************************************************** !02015M0D
                                                                       !02015M0E
    02  cmd-51-rqst                        redefines tss-data.         !02015M0F
                                                                       !02015M0G
*             Command Type                                             !02015M0H
                                                                       !02015M0I
        04  cmd-typ                        pic x(2).                   !02015M0J
                                                                       !02015M0K
*             Version Number                                           !02015M0L
                                                                       !02015M0M
        04  version                        pic x(2).                   !02015M0N
                                                                       !02015M0O
*             Key Locator                                              !02015M0P
                                                                       !02015M0Q
        04  key-loc                        type *.                     !02015M0R
                                                                       !02015M0S
*             This field is not used.                                  !02015M0T
                                                                       !02015M0U
        04  rqst-filler-50                 pic x(4280).                !02015M0V
                                                                       !02015M0W
********************************************************************** !02015M0X
*                                                                      !02015M0Y
*             Key Register Reset response                              !02015M0Z
*                                                                      !02015M0a
********************************************************************** !02015M0b
                                                                       !02015M0c
    02  cmd-51-resp                        redefines tss-data.         !02015M0d
                                                                       !02015M0e
*             Command Type                                             !02015M0f
                                                                       !02015M0g
        04  cmd-typ                        pic x(2).                   !02015M0h
                                                                       !02015M0i
*             Version Number                                           !02015M0j
                                                                       !02015M0k
        04  version                        pic x(2).                   !02015M0l
                                                                       !02015M0m
*             Response Status                                          !02015M0n
                                                                       !02015M0o
        04  resp-stat                      pic x(2).                   !02015M0p
                                                                       !02015M0q
*             This field is not used.                                  !02015M0r
                                                                       !02015M0s
        04  resp-filler-51                 pic x(4294).                !02015M0t
                                                                       !02015M0u
                                                                       !02015L00
********************************************************************** !02015L01
*                                                                      !02015L02
*             Retrieve Host Certificate request                        !02015L03
*                                                                      !02015L04
********************************************************************** !02015L05
                                                                       !02015L06
    02  cmd-52-rqst                        redefines tss-data.         !02015L07
                                                                       !02015L08
*             Command Type                                             !02015L09
                                                                       !02015L0A
        04  cmd-typ                        pic x(2).                   !02015L0B
                                                                       !02015L0C
*             Version Number                                           !02015L0D
                                                                       !02015L0E
        04  ver-num                        pic x(2).                   !02015L0F
                                                                       !02015L0G
*             Device Type                                              !02015L0H
                                                                       !02015L0I
        04  dev-typ                        pic x(2).                   !02015L0J
                                                                       !02015L0K
*             Terminal ID                                              !02015L0L
                                                                       !02015L0M
        04  term-id                        pic x(16).                  !02015L0N
                                                                       !02015L0O
*             Key Locator                                              !02015L0P
                                                                       !02015L0Q
        04  key-loc                        pic x(16).                  !02015L0R
                                                                       !02015L0S
*             Name of the Host Public Key Owner                        !02015L0T
                                                                       !02015L0U
        04  host-nam                       pic x(16).                  !02015L0V
                                                                       !02015L0W
*             Serial Number (used by NCR and Wincor only)              !02015L0X
                                                                       !02015L0Y
        04  serial-num                     pic x(16).                  !02015L0Z
                                                                       !02015L0a
*             Serial Number Verify (used by NCR and Wincor only)       !02015L0b
                                                                       !02015L0c
        04  serial-num-vrfy                pic x(2).                   !02015L0d
                                                                       !02015L0e
*             FIID (used by NCR and Wincor only)                       !02015L0f
                                                                       !02015L0g
        04  fiid                           pic x(4).                   !02015L0h
                                                                       !02015L0i
*             Signature Length (used by NCR and Wincor only)           !02015L0j
                                                                       !02015L0k
        04  sig-lgth                       type binary 16.             !02015L0l
                                                                       !02015L0m
*             Signature (used by NCR and Wincor only)                  !02015L0n
                                                                       !02015L0o
        04  sig                            pic x(4222).                !02015L0p
                                                                       !02015L0q
********************************************************************** !02015L0r
*                                                                      !02015L0s
*             Retrieve Host Certificate response                       !02015L0t
*                                                                      !02015L0u
********************************************************************** !02015L0v
                                                                       !02015L0w
    02  cmd-52-resp                        redefines tss-data.         !02015L0x
                                                                       !02015L0y
*             Command Type                                             !02015L0z
                                                                       !02015L10
        04  cmd-typ                        pic x(2).                   !02015L11
                                                                       !02015L12
*             Version Number                                           !02015L13
                                                                       !02015L14
        04  ver-num                        pic x(2).                   !02015L15
                                                                       !02015L16
*             Response Status                                          !02015L17
                                                                       !02015L18
        04  resp-stat                      pic x(2).                   !02015L19
                                                                       !02015L1A
*             Device Type                                              !02015L1B
                                                                       !02015L1C
        04  dev-typ                        pic x(2).                   !02015L1D
                                                                       !02015L1E
*             Terminal ID                                              !02015L1F
                                                                       !02015L1G
        04  term-id                        pic x(16).                  !02015L1H
                                                                       !02015L1I
*             ACI's Public Key Length (used by NCR and Wincor only)    !02015L1J
                                                                       !02015L1K
        04  aci-pub-key-lgth               type binary 16.             !02015L1L
                                                                       !02015L1M
*             ACI's Public Key (used by NCR and Wincor only)           !02015L1N
                                                                       !02015L1O
        04  aci-pub-key                    pic x(300).                 !02015L1P
                                                                       !02015L1Q
*             Signature Length (NCR/Wincor) or length of               !02015L1R
                                                                       !02015P00
*             PKCS #7 Message (Diebold/Triton)                         !02015P01
                                                                       !02015P02
                                                                       !02015L1T
        04  dev-data-lgth                  type binary 16.             !02015L1U
                                                                       !02015L1V
*             Signature of ACI's Public Key (NCR/Wincor) or            !02015L1W
                                                                       !02015P03
*             PKCS #7 message (Diebold/Triton)                         !02015P04
                                                                       !02015P05
                                                                       !02015L1Y
        04  dev-data                       pic x(3972).                !02015L1Z
                                                                       !02015L1a
                                                                       !02015R00
********************************************************************** !02015R01
*                                                                      !02015R02
*             Retrieve Host Certificate request - Version 2            !02015R03
*                                                                      !02015R04
********************************************************************** !02015R05
                                                                       !02015R06
    02  cmd-52-ver2-rqst                   redefines tss-data.         !02015R07
                                                                       !02015R08
*             Command Type                                             !02015R09
                                                                       !02015R0A
        04  cmd-typ                        pic x(2).                   !02015R0B
                                                                       !02015R0C
*             Version Number                                           !02015R0D
                                                                       !02015R0E
        04  ver-num                        pic x(2).                   !02015R0F
                                                                       !02015R0G
*             Device Type                                              !02015R0H
                                                                       !02015R0I
        04  dev-typ                        pic x(2).                   !02015R0J
                                                                       !02015R0K
*             Terminal ID                                              !02015R0L
                                                                       !02015R0M
        04  term-id                        pic x(16).                  !02015R0N
                                                                       !02015R0O
*             Key Locator                                              !02015R0P
                                                                       !02015R0Q
        04  key-loc                        pic x(16).                  !02015R0R
                                                                       !02015R0S
*             Name of the Host Public Key Owner                        !02015R0T
                                                                       !02015R0U
        04  host-nam                       pic x(16).                  !02015R0V
                                                                       !02015R0W
*             Serial Number (used by NCR and Wincor only)              !02015R0X
                                                                       !02015R0Y
        04  serial-num                     pic x(16).                  !02015R0Z
                                                                       !02015R0a
*             Serial Number Verify (used by NCR and Wincor only)       !02015R0b
                                                                       !02015R0c
        04  serial-num-vrfy                pic x(2).                   !02015R0d
                                                                       !02015R0e
*             FIID (used by NCR and Wincor only)                       !02015R0f
                                                                       !02015R0g
        04  fiid                           pic x(4).                   !02015R0h
                                                                       !02015R0i
*             Key Option (used by NCR Enhanced Scheme only)            !02015R0j
                                                                       !02015R0k
        04  key-opt                        pic x(1).                   !02015R0l
                                                                       !02015R0m
*             This field is not used.                                  !02015R0n
                                                                       !02015R0o
        04  rqst-filler-52-ver2            pic x(1).                   !02015R0p
                                                                       !02015R0q
*             Signature Length (used by NCR and Wincor only)           !02015R0r
                                                                       !02015R0s
        04  sig-lgth                       type binary 16.             !02015R0t
                                                                       !02015R0u
*             Signature (used by NCR and Wincor only)                  !02015R0v
                                                                       !02015R0w
        04  sig                            pic x(4220).                !02015R0x
                                                                       !02015R0y
********************************************************************** !02015R0z
*                                                                      !02015R10
*             Retrieve Host Certificate response - Version 2           !02015R11
*                                                                      !02015R12
********************************************************************** !02015R13
                                                                       !02015R14
    02  cmd-52-ver2-resp                   redefines tss-data.         !02015R15
                                                                       !02015R16
*             Command Type                                             !02015R17
                                                                       !02015R18
        04  cmd-typ                        pic x(2).                   !02015R19
                                                                       !02015R1A
*             Version Number                                           !02015R1B
                                                                       !02015R1C
        04  ver-num                        pic x(2).                   !02015R1D
                                                                       !02015R1E
*             Response Status                                          !02015R1F
                                                                       !02015R1G
        04  resp-stat                      pic x(2).                   !02015R1H
                                                                       !02015R1I
*             Device Type                                              !02015R1J
                                                                       !02015R1K
        04  dev-typ                        pic x(2).                   !02015R1L
                                                                       !02015R1M
*             Terminal ID                                              !02015R1N
                                                                       !02015R1O
        04  term-id                        pic x(16).                  !02015R1P
                                                                       !02015R1Q
*             ACI's Public Key Length (used by NCR and Wincor only)    !02015R1R
                                                                       !02015R1S
        04  aci-pub-key-lgth               type binary 16.             !02015R1T
                                                                       !02015R1U
*             ACI's Public Key (used by NCR and Wincor only)           !02015R1V
                                                                       !02015R1W
        04  aci-pub-key                    pic x(300).                 !02015R1X
                                                                       !02015R1Y
*             Key Option (used by NCR Enhanced Scheme only)            !02015R1Z
                                                                       !02015R1a
        04  key-opt                        pic x(1).                   !02015R1b
                                                                       !02015R1c
*             This field is not used.                                  !02015R1d
                                                                       !02015R1e
        04  resp-filler-52-ver2            pic x(1).                   !02015R1f
                                                                       !02015R1g
*             Signature Length (NCR/Wincor) or length of               !02015R1h
*             PKCS #7 Message (Diebold/Triton)                         !02015R1i
                                                                       !02015R1j
        04  dev-data-lgth                  type binary 16.             !02015R1k
                                                                       !02015R1l
*             Signature of ACI's Public Key (NCR/Wincor) or            !02015R1m
*             PKCS #7 message (Diebold/Triton)                         !02015R1n
                                                                       !02015R1o
                                                                       !02015R1p
        04  dev-data                       pic x(3970).                !02015R1q
                                                                       !02015R1r
                                                                       !02015R1s
********************************************************************** !02015L1b
*                                                                      !02015L1c
*             Verify Signature Certificate request                     !02015L1d
*                                                                      !02015L1e
********************************************************************** !02015L1f
                                                                       !02015L1g
    02  cmd-53-rqst                        redefines tss-data.         !02015L1h
                                                                       !02015L1i
*             Command Type                                             !02015L1j
                                                                       !02015L1k
        04  cmd-typ                        pic x(2).                   !02015L1l
                                                                       !02015L1m
*             Version Number                                           !02015L1n
                                                                       !02015L1o
        04  ver-num                        pic x(2).                   !02015L1p
                                                                       !02015L1q
*             Device Type                                              !02015L1r
                                                                       !02015L1s
        04  dev-typ                        pic x(2).                   !02015L1t
                                                                       !02015L1u
*             Terminal ID                                              !02015L1v
                                                                       !02015L1w
        04  term-id                        pic x(16).                  !02015L1x
                                                                       !02015L1y
*             Key Locator                                              !02015L1z
                                                                       !02015L20
        04  key-loc                        pic x(16).                  !02015L21
                                                                       !02015L22
*             Name of the Host Public Key Owner                        !02015L23
                                                                       !02015L24
        04  host-nam                       pic x(16).                  !02015L25
                                                                       !02015L26
*             Signature Type                                           !02015L27
                                                                       !02015L28
        04  sig-typ                        pic x(2).                   !02015L29
                                                                       !02015L2A
                                                                       !02015P06
*             Serial Number Verify (used by Diebold and Triton)        !02015P07
                                                                       !02015P08
                                                                       !02015L2C
        04  serial-num-vrfy                pic x(2).                   !02015L2D
                                                                       !02015L2E
                                                                       !02015P09
*             FIID (used by Diebold and Triton)                        !02015P0A
                                                                       !02015P0B
                                                                       !02015L2G
        04  fiid                           pic x(4).                   !02015L2H
                                                                       !02015L2I
*             EPP Public Key Length (used by NCR and Wincor only)      !02015L2J
                                                                       !02015L2K
        04  epp-pub-key-lgth               type binary 16.             !02015L2L
                                                                       !02015L2M
*             EPP Public Key (used by NCR and Wincor only)             !02015L2N
                                                                       !02015L2O
        04  epp-pub-key                    pic x(300).                 !02015L2P
                                                                       !02015L2Q
*             Signature Length (NCR/Wincor) or length of               !02015L2R
                                                                       !02015P0C
*             PKCS #7 Message (Diebold/Triton)                         !02015P0D
                                                                       !02015P0E
                                                                       !02015L2T
        04  dev-data-lgth                  type binary 16.             !02015L2U
                                                                       !02015L2V
*             Signature of ACI's Public Key (NCR/Wincor) or            !02015L2W
                                                                       !02015P0F
*             PKCS #7 message (Diebold/Triton)                         !02015P0G
                                                                       !02015P0H
                                                                       !02015L2Y
                                                                       !02015P0I
        04  dev-data                       pic x(3932).                !02015P0J
*             Key Type                                                 !02015P0K
                                                                       !02015P0L
        04  key-typ                        pic x(2).                   !02015P0M
                                                                       !02015P0N
                                                                       !02015L2a
********************************************************************** !02015L2b
*                                                                      !02015L2c
*             Verify Signature Certificate response                    !02015L2d
*                                                                      !02015L2e
********************************************************************** !02015L2f
                                                                       !02015L2g
    02  cmd-53-resp                        redefines tss-data.         !02015L2h
                                                                       !02015L2i
*             Command Type                                             !02015L2j
                                                                       !02015L2k
        04  cmd-typ                        pic x(2).                   !02015L2l
                                                                       !02015L2m
*             Version Number                                           !02015L2n
                                                                       !02015L2o
        04  ver-num                        pic x(2).                   !02015L2p
                                                                       !02015L2q
*             Response Status                                          !02015L2r
                                                                       !02015L2s
        04  resp-stat                      pic x(2).                   !02015L2t
                                                                       !02015L2u
*             Device Type                                              !02015L2v
                                                                       !02015L2w
        04  dev-typ                        pic x(2).                   !02015L2x
                                                                       !02015L2y
*             Terminal ID                                              !02015L2z
                                                                       !02015L30
        04  term-id                        pic x(16).                  !02015L31
                                                                       !02015L32
*             This field is not used.                                  !02015L33
                                                                       !02015L34
        04  resp-filler-53                 pic x(4276).                !02015L35
                                                                       !02015L36
********************************************************************** !02015L37
*                                                                      !02015L38
*             Generate Master Key request                              !02015L39
*                                                                      !02015L3A
********************************************************************** !02015L3B
                                                                       !02015L3C
    02  cmd-54-rqst                        redefines tss-data.         !02015L3D
                                                                       !02015L3E
*             Command Type                                             !02015L3F
                                                                       !02015L3G
        04  cmd-typ                        pic x(2).                   !02015L3H
                                                                       !02015L3I
*             Version Number                                           !02015L3J
                                                                       !02015L3K
        04  ver-num                        pic x(2).                   !02015L3L
                                                                       !02015L3M
*             Device Type                                              !02015L3N
                                                                       !02015L3O
        04  dev-typ                        pic x(2).                   !02015L3P
                                                                       !02015L3Q
*             Terminal ID                                              !02015L3R
                                                                       !02015L3S
        04  term-id                        pic x(16).                  !02015L3T
                                                                       !02015L3U
*             Key Locator                                              !02015L3V
                                                                       !02015L3W
        04  key-loc                        pic x(16).                  !02015L3X
                                                                       !02015L3Y
*             Name of the Host Public Key Owner                        !02015L3Z
                                                                       !02015L3a
        04  host-nam                       pic x(16).                  !02015L3b
                                                                       !02015L3c
                                                                       !02015P0O
                                                                       !02015R1t
*             EPP's Random Nonce Length (used by Diebold, NCR and      !02015R1u
*             Triton)                                                  !02015R1v
                                                                       !02015R1w
                                                                       !02015R1x
                                                                       !02015R1y
                                                                       !02015P0Q
                                                                       !02015L3e
        04  dev-data-lgth                  type binary 16.             !02015L3f
                                                                       !02015L3g
                                                                       !02015P0R
                                                                       !02015R1z
*             EPP's Random Nonce (used by Diebold, NCR and Triton)     !02015R20
                                                                       !02015R21
                                                                       !02015P0T
                                                                       !02015L3i
        04  dev-data                       pic x(100).                 !02015L3j
                                                                       !02015L3k
                                                                       !02015P0U
*             Key Type                                                 !02015P0V
                                                                       !02015P0W
        04  key-typ                        pic x(2).                   !02015P0X
                                                                       !02015P0Y
*             This field is not used.                                  !02015L3l
                                                                       !02015L3m
                                                                       !02015P0Z
        04  rqst-filler-54                 pic x(4142).                !02015P0a
                                                                       !02015P0b
                                                                       !02015L3o
********************************************************************** !02015L3p
*                                                                      !02015L3q
*             Generate Master Key response                             !02015L3r
*                                                                      !02015L3s
********************************************************************** !02015L3t
                                                                       !02015L3u
    02  cmd-54-resp                        redefines tss-data.         !02015L3v
                                                                       !02015L3w
*             Command Type                                             !02015L3x
                                                                       !02015L3y
        04  cmd-typ                        pic x(2).                   !02015L3z
                                                                       !02015L40
*             Version Number                                           !02015L41
                                                                       !02015L42
        04  ver-num                        pic x(2).                   !02015L43
                                                                       !02015L44
*             Response Status                                          !02015L45
                                                                       !02015L46
        04  resp-stat                      pic x(2).                   !02015L47
                                                                       !02015L48
*             Device Type                                              !02015L49
                                                                       !02015L4A
        04  dev-typ                        pic x(2).                   !02015L4B
                                                                       !02015L4C
*             Terminal ID                                              !02015L4D
                                                                       !02015L4E
        04  term-id                        pic x(16).                  !02015L4F
                                                                       !02015L4G
*             Master Key Length (used by NCR and Wincor only)          !02015L4H
                                                                       !02015L4I
        04  mstr-key-lgth                  type binary 16.             !02015L4J
                                                                       !02015L4K
*             Master Key (used by NCR and Wincor only)                 !02015L4L
                                                                       !02015L4M
        04  mstr-key                       pic x(300).                 !02015L4N
                                                                       !02015L4O
*             Signature Length (NCR/Wincor) or length of               !02015L4P
                                                                       !02015P0c
*             PKCS #7 Message (Diebold/Triton)                         !02015P0d
                                                                       !02015P0e
                                                                       !02015L4R
        04  dev-data-lgth                  type binary 16.             !02015L4S
                                                                       !02015L4T
*             Signature of ACI's Public Key (NCR/Wincor) or            !02015L4U
                                                                       !02015P0f
*             PKCS #7 message (Diebold/Triton)                         !02015P0g
                                                                       !02015P0h
                                                                       !02015L4W
        04  dev-data                       pic x(3972).                !02015L4X
                                                                       !02015L4Y
                                                                       !02015L4Z
********************************************************************** !02015K01
*                                                                      !02015K02
*             RANDOM STRING GENERATION REQUEST                         !02015K03
*                                                                      !02015K04
********************************************************************** !02015K05
    02  cmd-55-rqst                        redefines tss-data.         !02015K06
                                                                       !02015K07
*             Command Type                                             !02015K08
                                                                       !02015K09
        04  cmd-typ                        pic x(2).                   !02015K0A
                                                                       !02015K0B
*             Version                                                  !02015K0C
                                                                       !02015K0D
        04  version                        pic x(2).                   !02015K0E
                                                                       !02015K0F
*             Device Type                                              !02015K0G
                                                                       !02015K0H
        04  device-typ                     pic x(2).                   !02015K0I
                                                                       !02015K0J
*             Key Type                                                 !02015K0K
                                                                       !02015K0L
        04  key-typ                        pic x(3).                   !02015K0M
                                                                       !02015K0N
*             Key Length                                               !02015K0O
                                                                       !02015K0P
        04  key-lgth                       pic x(2).                   !02015K0Q
                                                                       !02015K0R
*             This field is not used.                                  !02015K0S
                                                                       !02015K0T
        04  rqst-filler-55                 pic x(4289).                !02015K0U
                                                                       !02015K0V
********************************************************************** !02015K0W
*                                                                      !02015K0X
*             RANDOM STRING GENERATION RESPONSE                        !02015K0Y
*                                                                      !02015K0Z
********************************************************************** !02015K0a
    02  cmd-55-resp                        redefines tss-data.         !02015K0b
                                                                       !02015K0c
*             Command Type                                             !02015K0d
                                                                       !02015K0e
        04  cmd-typ                        pic x(2).                   !02015K0f
                                                                       !02015K0g
*             Version                                                  !02015K0h
                                                                       !02015K0i
        04  version                        pic x(2).                   !02015K0j
                                                                       !02015K0k
*             Response Status                                          !02015K0l
                                                                       !02015K0m
        04  resp-stat                      pic x(2).                   !02015K0n
                                                                       !02015K0o
*             Random String Sequence                                   !02015K0p
                                                                       !02015K0q
        04  random-string                  pic x(48).                  !02015K0r
                                                                       !02015K0s
*             This field is not used.                                  !02015K0t
                                                                       !02015K0u
        04  resp-filler-55                 pic x(4246).                !02015K0v
                                                                       !02015K0w
********************************************************************** !02015K0x
*                                                                      !02015K0y
*             SIGNATURE VERIFICATION REQUEST                           !02015K0z
*                                                                      !02015K10
********************************************************************** !02015K11
    02  cmd-56-rqst                        redefines tss-data.         !02015K12
                                                                       !02015K13
*             Command Type                                             !02015K14
                                                                       !02015K15
        04  cmd-typ                        pic x(2).                   !02015K16
                                                                       !02015K17
*             Version                                                  !02015K18
                                                                       !02015K19
        04  version                        pic x(2).                   !02015K1A
                                                                       !02015K1B
*             Device Type                                              !02015K1C
                                                                       !02015K1D
        04  device-typ                     pic x(2).                   !02015K1E
                                                                       !02015K1F
*             Signature Data Length                                    !02015K1G
                                                                       !02015K1H
        04  sign-data-lgth                 type binary 16.             !02015K1I
                                                                       !02015K1J
*             Signature Data                                           !02015K1K
                                                                       !02015K1L
        04  sign-data                      pic x(62).                  !02015K1M
                                                                       !02015K1N
*             Signature Length                                         !02015K1O
                                                                       !02015K1P
        04  sign-lgth                      type binary 16.             !02015K1Q
                                                                       !02015K1R
*             Signature Data                                           !02015K1S
                                                                       !02015K1T
                                                                       !02015Q00
        04  signature                      pic x(256).                 !02015Q01
                                                                       !02015Q02
                                                                       !02015Q03
                                                                       !02015Q04
                                                                       !02015K1V
*             This field is not used.                                  !02015K1W
                                                                       !02015K1X
        04  rqst-filler-56                 pic x(3972).                !02015K1Y
                                                                       !02015K1Z
********************************************************************** !02015K1a
*                                                                      !02015K1b
*             SIGNATURE VERIFICATION RESPONSE                          !02015K1c
*                                                                      !02015K1d
********************************************************************** !02015K1e
    02  cmd-56-resp                        redefines tss-data.         !02015K1f
                                                                       !02015K1g
*             Command Type                                             !02015K1h
                                                                       !02015K1i
        04  cmd-typ                        pic x(2).                   !02015K1j
                                                                       !02015K1k
*             Version                                                  !02015K1l
                                                                       !02015K1m
        04  version                        pic x(2).                   !02015K1n
                                                                       !02015K1o
*             Response Status                                          !02015K1p
                                                                       !02015K1q
        04  resp-stat                      pic x(2).                   !02015K1r
                                                                       !02015K1s
*             This field is not used.                                  !02015K1t
                                                                       !02015K1u
        04  resp-filler-56                 pic x(4294).                !02015K1v
                                                                       !02015K1w
********************************************************************** !02015K1x
*                                                                      !02015K1y
*             SIGNATURE GENERATION REQUEST                             !02015K1z
*                                                                      !02015K20
********************************************************************** !02015K21
    02  cmd-57-rqst                        redefines tss-data.         !02015K22
                                                                       !02015K23
*             Command Type                                             !02015K24
                                                                       !02015K25
        04  cmd-typ                        pic x(2).                   !02015K26
                                                                       !02015K27
*             Version                                                  !02015K28
                                                                       !02015K29
        04  version                        pic x(2).                   !02015K2A
                                                                       !02015K2B
*             Device Type                                              !02015K2C
                                                                       !02015K2D
        04  device-typ                     pic x(2).                   !02015K2E
                                                                       !02015K2F
*             Signature Data Length                                    !02015K2G
                                                                       !02015K2H
        04  sign-data-lgth                 type binary 16.             !02015K2I
                                                                       !02015K2J
*             Signature Data                                           !02015K2K
                                                                       !02015K2L
        04  sign-data                      pic x(61).                  !02015K2M
                                                                       !02015K2N
*             This field is not used.                                  !02015K2O
                                                                       !02015K2P
        04  rqst-filler-57                 pic x(4231).                !02015K2Q
                                                                       !02015K2R
********************************************************************** !02015K2S
*                                                                      !02015K2T
*             SIGNATURE GENERATION RESPONSE                            !02015K2U
*                                                                      !02015K2V
********************************************************************** !02015K2W
    02  cmd-57-resp                        redefines tss-data.         !02015K2X
                                                                       !02015K2Y
*             Command Type                                             !02015K2Z
                                                                       !02015K2a
        04  cmd-typ                        pic x(2).                   !02015K2b
                                                                       !02015K2c
*             Version                                                  !02015K2d
                                                                       !02015K2e
        04  version                        pic x(2).                   !02015K2f
                                                                       !02015K2g
*             Response Status                                          !02015K2h
                                                                       !02015K2i
        04  resp-stat                      pic x(2).                   !02015K2j
                                                                       !02015K2k
*             Signature                                                !02015K2l
                                                                       !02015K2m
                                                                       !02015Q05
        04  signature                      pic x(256).                 !02015Q06
                                                                       !02015Q07
                                                                       !02015Q08
                                                                       !02015Q09
                                                                       !02015K2o
*             This field is not used.                                  !02015K2p
                                                                       !02015K2q
        04  resp-filler-57                 pic x(4038).                !02015K2r
                                                                       !02015K2s
                                                                       !02015M0v
********************************************************************** !02015M0w
*                                                                      !02015M0x
*             DYNAMIC CARD VERIFICATION REQUEST                        !02015M0y
*                                                                      !02015M0z
********************************************************************** !02015M10
    02  cmd-58-rqst                        redefines tss-data.         !02015M11
                                                                       !02015M12
*             Command Type                                             !02015M13
                                                                       !02015M14
        04  cmd-typ                        pic x(2).                   !02015M15
                                                                       !02015M16
*             Version                                                  !02015M17
                                                                       !02015M18
        04  version                        pic x(2).                   !02015M19
                                                                       !02015M1A
*             Algorithm (MasterCard or Visa) always set to spaces      !02015M1B
*             in BASE24.                                               !02015M1C
                                                                       !02015M1D
        04  algo                           pic x.                      !02015M1E
                                                                       !02015M1F
*             Key Locator                                              !02015M1G
                                                                       !02015M1H
        04  key-loc                        pic x(16).                  !02015M1I
                                                                       !02015M1J
*             Card Expiration Date (YYMM) used to find the correct     !02015M1K
*             key record.                                              !02015M1L
                                                                       !02015M1M
        04  crd-exp-dat                    pic x(4).                   !02015M1N
                                                                       !02015M1O
*             Dynamic Card Verification Digits (dCVV/CVC3)             !02015M1P
                                                                       !02015M1Q
        04  dcvd                           pic x(5).                   !02015M1R
                                                                       !02015M1S
*             Primary Account Number                                   !02015M1T
                                                                       !02015M1U
        04  pan                            type *.                     !02015M1V
                                                                       !02015M1W
*             PAN Sequence Number                                      !02015M1X
                                                                       !02015M1Y
        04  pan-seq-num                    pic x(3).                   !02015M1Z
                                                                       !02015M1a
*             Application Transaction Counter                          !02015M1b
                                                                       !02015M1c
        04  atc                            pic x(2).                   !02015M1d
                                                                       !02015M1e
*             Card Service Code                                        !02015M1f
                                                                       !02015M1g
        04  svc-cde                        pic x(3).                   !02015M1h
                                                                       !02015M1i
*             Expiration Date from track data used to calculate        !02015M1j
*             the DCVD                                                 !02015M1k
                                                                       !02015M1l
        04  exp-dat                        pic x(4).                   !02015M1m
                                                                       !02015M1n
*             Unpredictable number used in the calculation of a        !02015M1o
*             Cardholder Verification Code 3 Value (CVC3).             !02015M1p
                                                                       !02015M1q
        04 dcv-unpredictable-num           pic x(4).                   !02015M1r
                                                                       !02015M1s
*             Track 1/2 Static Data Length                             !02015M1t
                                                                       !02015M1u
        04 trk-static-data-lgth            pic x(3).                   !02015M1v
                                                                       !02015M1w
*             Track 1/2 Static Data used in the calculation of a       !02015M1x
*             Cardholder Verification Code 3 Value (CVC3).             !02015M1y
                                                                       !02015M1z
        04 trk-static-data                 pic x(160).                 !02015M20
                                                                       !02015M21
*             Track 1/2 Issuer Proprietary Static Data element         !02015M22
*             used in the calculation of a Cardholder Verification     !02015M23
*             Code 3 Value (CVC3).                                     !02015M24
                                                                       !02015M25
        04 trk-ivcvc3                      pic x(5).                   !02015M26
                                                                       !02015M27
*             This field is not used.                                  !02015M28
                                                                       !02015M29
        04  rqst-filler-58                 pic x(4067).                !02015M2A
                                                                       !02015M2B
********************************************************************** !02015M2C
*                                                                      !02015M2D
*             DYNAMIC CARD VERIFICATION RESPONSE                       !02015M2E
*                                                                      !02015M2F
********************************************************************** !02015M2G
    02  cmd-58-resp                        redefines tss-data.         !02015M2H
                                                                       !02015M2I
*             Command Type                                             !02015M2J
                                                                       !02015M2K
        04  cmd-typ                        pic x(2).                   !02015M2L
                                                                       !02015M2M
*             Version                                                  !02015M2N
                                                                       !02015M2O
        04  version                        pic x(2).                   !02015M2P
                                                                       !02015M2Q
*             Algorithm                                                !02015M2R
                                                                       !02015M2S
        04  algo                           pic x.                      !02015M2T
                                                                       !02015M2U
*             Response Status                                          !02015M2V
                                                                       !02015M2W
        04  resp-stat                      pic x(2).                   !02015M2X
                                                                       !02015M2Y
*             Unique Derived Check Digits (Atalla only)                !02015M2Z
                                                                       !02015M2a
        04  udk-chk-dgt                    pic x(6).                   !02015M2b
                                                                       !02015M2c
*             This field is not used.                                  !02015M2d
                                                                       !02015M2e
        04  resp-filler-58                 pic x(4287).                !02015M2f
                                                                       !02015M2g
                                                                       !02015GEK
                                                                       !02015O00
                                                                       !02015R22
********************************************************************** !02015R23
*                                                                      !02015R24
*             Delete Host Public Key request                           !02015R25
*                                                                      !02015R26
********************************************************************** !02015R27
                                                                       !02015R28
    02  cmd-59-rqst                        redefines tss-data.         !02015R29
                                                                       !02015R2A
*             Command Type                                             !02015R2B
                                                                       !02015R2C
        04  cmd-typ                        pic x(2).                   !02015R2D
                                                                       !02015R2E
*             Version Number                                           !02015R2F
                                                                       !02015R2G
        04  ver-num                        pic x(2).                   !02015R2H
                                                                       !02015R2I
*             Device Type                                              !02015R2J
                                                                       !02015R2K
        04  dev-typ                        pic x(2).                   !02015R2L
                                                                       !02015R2M
*             Terminal ID                                              !02015R2N
                                                                       !02015R2O
        04  term-id                        pic x(16).                  !02015R2P
                                                                       !02015R2Q
*             Key Option                                               !02015R2R
                                                                       !02015R2S
        04  key-opt                        pic x(1).                   !02015R2T
                                                                       !02015R2U
*             Name of the Host Public Key Owner                        !02015R2V
                                                                       !02015R2W
        04  host-nam                       pic x(16).                  !02015R2X
                                                                       !02015R2Y
*             This field is not used.                                  !02015R2Z
                                                                       !02015R2a
        04  rqst-filler-59                 pic x(4261).                !02015R2b
                                                                       !02015R2c
********************************************************************** !02015R2d
*                                                                      !02015R2e
*             Delete Host Public Key response                          !02015R2f
*                                                                      !02015R2g
********************************************************************** !02015R2h
                                                                       !02015R2i
    02  cmd-59-resp                        redefines tss-data.         !02015R2j
                                                                       !02015R2k
*             Command Type                                             !02015R2l
                                                                       !02015R2m
        04  cmd-typ                        pic x(2).                   !02015R2n
                                                                       !02015R2o
*             Version Number                                           !02015R2p
                                                                       !02015R2q
        04  ver-num                        pic x(2).                   !02015R2r
                                                                       !02015R2s
*             Response Status                                          !02015R2t
                                                                       !02015R2u
        04  resp-stat                      pic x(2).                   !02015R2v
                                                                       !02015R2w
*             Device Type                                              !02015R2x
                                                                       !02015R2y
        04  dev-typ                        pic x(2).                   !02015R2z
                                                                       !02015R30
*             Terminal ID                                              !02015R31
                                                                       !02015R32
        04  term-id                        pic x(16).                  !02015R33
                                                                       !02015R34
*             Key Option                                               !02015R35
                                                                       !02015R36
        04  key-opt                        pic x(1).                   !02015R37
                                                                       !02015R38
*             This field is not used.                                  !02015R39
                                                                       !02015R3A
        04  resp-filler-59                 pic x(1).                   !02015R3B
                                                                       !02015R3C
*             ACI's Public Key Length                                  !02015R3D
                                                                       !02015R3E
        04  aci-pub-key-lgth               type binary 16.             !02015R3F
                                                                       !02015R3G
*             ACI's Public Key                                         !02015R3H
                                                                       !02015R3I
        04  aci-pub-key                    pic x(300).                 !02015R3J
                                                                       !02015R3K
*             Signature Length                                         !02015R3L
                                                                       !02015R3M
        04  sig-lgth                       type binary 16.             !02015R3N
                                                                       !02015R3O
*             Signature                                                !02015R3P
                                                                       !02015R3Q
        04  sig                            pic x(3970).                !02015R3R
                                                                       !02015R3S
                                                                       !02015R3T
********************************************************************** !02015O01
*                                                                      !02015O02
*             CAP Token Verification Request                           !02015O03
*                                                                      !02015O04
********************************************************************** !02015O05
    02  cmd-60-rqst                        redefines tss-data.         !02015O06
                                                                       !02015O07
*             Command Type                                             !02015O08
                                                                       !02015O09
        04  cmd-typ                        pic x(2).                   !02015O0A
                                                                       !02015O0B
*             Version                                                  !02015O0C
                                                                       !02015O0D
        04  version                        pic x(2).                   !02015O0E
                                                                       !02015O0F
*             Primary key value to TSS data source                     !02015O0G
                                                                       !02015O0H
        04  cap-grp                        pic x(16).                  !02015O0I
                                                                       !02015O0J
*             Card expiration date (YYMM)                              !02015O0K
                                                                       !02015O0L
        04  crd-exp-dat                    pic x(4).                   !02015O0M
                                                                       !02015O0N
*             Derivation Key Index                                     !02015O0O
                                                                       !02015O0P
        04  drvtn-key-idx                  pic x.                      !02015O0Q
                                                                       !02015O0R
*             Primary Account Number                                   !02015O0S
                                                                       !02015O0T
        04  pan                            pic x(19).                  !02015O0U
                                                                       !02015O0V
*             Application PAN Sequence Number                          !02015O0W
                                                                       !02015O0X
                                                                       !02015O0Y
        04  mbr-num                        pic x(3).                   !02015O0Z
                                                                       !02015O0a
*             CAP token                                                !02015O0b
                                                                       !02015O0c
        04  cap-tkn                        pic x(18).                  !02015O0d
                                                                       !02015O0e
*             Application Transaction Counter                          !02015O0f
                                                                       !02015O0g
        04  atc                            pic x(2).                   !02015O0h
                                                                       !02015O0i
*             Unpredictable Number                                     !02015O0j
                                                                       !02015O0k
        04  unpredictable-num              pic x(4).                   !02015O0l
                                                                       !02015O0m
*             Authorized amount                                        !02015O0n
                                                                       !02015O0o
        04  amt-auth                       pic x(6).                   !02015O0p
                                                                       !02015O0q
*             Transaction currency code                                !02015O0r
                                                                       !02015O0s
        04  crncy-cde                      pic x(2).                   !02015O0t
                                                                       !02015O0u
*             This field is not used.                                  !02015O0v
                                                                       !02015O0w
        04  rqst-filler-60                 pic x(4221).                !02015O0x
                                                                       !02015O0y
                                                                       !02015O0z
********************************************************************** !02015O10
*                                                                      !02015O11
*             CAP Token Verification Response                          !02015O12
*                                                                      !02015O13
********************************************************************** !02015O14
    02  cmd-60-resp                        redefines tss-data.         !02015O15
                                                                       !02015O16
*             Command Type                                             !02015O17
                                                                       !02015O18
        04  cmd-typ                        pic x(2).                   !02015O19
                                                                       !02015O1A
*             Version                                                  !02015O1B
                                                                       !02015O1C
        04  version                        pic x(2).                   !02015O1D
                                                                       !02015O1E
*             Response Status                                          !02015O1F
                                                                       !02015O1G
        04  resp-stat                      pic x(2).                   !02015O1H
                                                                       !02015O1I
*             New ATC                                                  !02015O1J
                                                                       !02015O1K
        04  new-atc                        pic x(2).                   !02015O1L
                                                                       !02015O1M
*             This field is not used.                                  !02015O1N
                                                                       !02015O1O
        04  resp-filler-60                 pic x(4292).                !02015O1P
                                                                       !02015O1Q
                                                                       !02015P0i
********************************************************************** !02015P0j
*                                                                      !02015P0k
*             Encrypt/Decrypt Data Request                             !02015P0l
*                                                                      !02015P0m
********************************************************************** !02015P0n
    02  cmd-62-rqst                        redefines tss-data.         !02015P0o
                                                                       !02015P0p
*             Command Type                                             !02015P0q
                                                                       !02015P0r
        04  cmd-typ                        pic x(2).                   !02015P0s
                                                                       !02015P0t
*             Version Number                                           !02015P0u
                                                                       !02015P0v
        04  version                        pic x(2).                   !02015P0w
                                                                       !02015P0x
*             The function being performed.                            !02015P0y
*                 "0" - Decrypt                                        !02015P0z
*                 "1" - Encrypt                                        !02015P10
                                                                       !02015P11
        04  fnct                           pic x.                      !02015P12
                                                                       !02015P13
*             The origin of the transaction of the Source.             !02015P14
*                 "0" - Device                                         !02015P15
*                 "1" - Interface                                      !02015P16
                                                                       !02015P17
        04  src-txn-orig                   pic x.                      !02015P18
                                                                       !02015P19
*             Used to locate the Derivation Key within TSS.            !02015P1A
                                                                       !02015P1B
        04  drv-key-loc                    pic x(16).                  !02015P1C
                                                                       !02015P1D
*             Length of the KSN field.                                 !02015P1E
                                                                       !02015P1F
        04  ksn-lgth                       pic x(2).                   !02015P1G
                                                                       !02015P1H
*             Key Serial Number                                        !02015P1I
                                                                       !02015P1J
        04  ksn                            pic x(20).                  !02015P1K
                                                                       !02015P1L
*             KSN Descriptor                                           !02015P1M
                                                                       !02015P1N
        04  ksn-descr                      pic x(3).                   !02015P1O
                                                                       !02015P1P
*             Length of the data within the input data field.          !02015P1Q
                                                                       !02015P1R
        04  input-data-lgth                pic x(4).                   !02015P1S
                                                                       !02015P1T
*             Input data to be Encrypted/Decrypted.                    !02015P1U
                                                                       !02015P1V
        04  input-data                     pic x(4096).                !02015P1W
                                                                       !02015P1X
*             This field is not used.                                  !02015P1Y
                                                                       !02015P1Z
        04  rqst-filler-62                 pic x(153).                 !02015P1a
                                                                       !02015P1b
********************************************************************** !02015P1c
*                                                                      !02015P1d
*             Encrypt/Decrypt Data Response                            !02015P1e
*                                                                      !02015P1f
********************************************************************** !02015P1g
    02  cmd-62-resp                        redefines tss-data.         !02015P1h
                                                                       !02015P1i
*             Command Type                                             !02015P1j
                                                                       !02015P1k
        04  cmd-typ                        pic x(2).                   !02015P1l
                                                                       !02015P1m
*             Version                                                  !02015P1n
                                                                       !02015P1o
        04  version                        pic x(2).                   !02015P1p
                                                                       !02015P1q
*             Response Status                                          !02015P1r
                                                                       !02015P1s
        04  resp-stat                      pic x(2).                   !02015P1t
                                                                       !02015P1u
*             Function                                                 !02015P1v
                                                                       !02015P1w
        04  fnct                           pic x(1).                   !02015P1x
                                                                       !02015P1y
*             Length of the data within the output data field.         !02015P1z
                                                                       !02015P20
        04  output-data-lgth               pic x(4).                   !02015P21
                                                                       !02015P22
*             Putput data from the function being performed.           !02015P23
                                                                       !02015P24
        04  output-data                    pic x(4096).                !02015P25
                                                                       !02015P26
*             This field is not used.                                  !02015P27
                                                                       !02015P28
        04  resp-filler-62                 pic x(193).                 !02015P29
                                                                       !02015P2A
                                                                       !02015J0B
**********************************************************************!!02015J0C
*                                                                     !!02015J0D
*             AS2805 Generate Keys request                            !!02015J0E
*                                                                     !!02015J0F
**********************************************************************!!02015J0G
                                                                       !02015J0H
    02  cmd-A0-rqst                        redefines tss-data.         !02015J0I
                                                                       !02015J0J
*             Command Type                                             !02015J0K
                                                                       !02015J0L
        04  cmd-typ                        pic x(2).                   !02015J0M
                                                                       !02015J0N
*             Version Number                                           !02015J0O
                                                                       !02015J0P
        04  ver-num                        pic x(2).                   !02015J0Q
                                                                       !02015J0R
*             Transaction Origin                                       !02015J0S
                                                                       !02015J0T
        04  txn-orig                       pic x.                      !02015J0U
                                                                       !02015J0V
*             Key Locator                                              !02015J0W
                                                                       !02015J0X
        04  key-loc                        pic x(16).                  !02015J0Y
                                                                       !02015J0Z
*             Key Type                                                 !02015J0a
                                                                       !02015J0b
        04  key-typ                        pic x(2).                   !02015J0c
                                                                       !02015J0d
*             Key Generate Option                                      !02015J0e
                                                                       !02015J0f
        04  key-gen-opt                    pic x.                      !02015J0g
                                                                       !02015J0h
*             This field is not used.                                  !02015J0i
                                                                       !02015J0j
        04  rqst-filler-A0                 pic x(4276).                !02015J0k
                                                                       !02015J0l
**********************************************************************!!02015J0m
*                                                                     !!02015J0n
*             AS2805 Generate Keys response                           !!02015J0o
*                                                                     !!02015J0p
**********************************************************************!!02015J0q
                                                                       !02015J0r
    02  cmd-A0-resp                        redefines tss-data.         !02015J0s
                                                                       !02015J0t
*             Command Type                                             !02015J0u
                                                                       !02015J0v
        04  cmd-typ                        pic x(2).                   !02015J0w
                                                                       !02015J0x
*             Version Number                                           !02015J0y
                                                                       !02015J0z
        04  ver-num                        pic x(2).                   !02015J10
                                                                       !02015J11
*             Response Status                                          !02015J12
                                                                       !02015J13
        04  resp-stat                      pic x(2).                   !02015J14
                                                                       !02015J15
*             Key Type                                                 !02015J16
                                                                       !02015J17
        04  key-typ                        pic x(2).                   !02015J18
                                                                       !02015J19
*             Key Length                                               !02015J1A
                                                                       !02015J1B
        04  key-lgth                       pic x.                      !02015J1C
                                                                       !02015J1D
*             MAC Key - Send                                           !02015J1E
                                                                       !02015J1F
        04  mac-key-send                   pic x(48).                  !02015J1G
                                                                       !02015J1H
*             MAC Key - Receive                                        !02015J1I
                                                                       !02015J1J
        04  mac-key-rcv                    pic x(48).                  !02015J1K
                                                                       !02015J1L
*             PIN Encryption Key                                       !02015J1M
                                                                       !02015J1N
        04  kpe                            pic x(48).                  !02015J1O
                                                                       !02015J1P
*             Data Encryption Key - Send                               !02015J1Q
                                                                       !02015J1R
        04  encrypt-data-key-send          pic x(48).                  !02015J1S
                                                                       !02015J1T
*             Data Encryption Key - Receive                            !02015J1U
                                                                       !02015J1V
        04  encrypt-data-key-rcv           pic x(48).                  !02015J1W
                                                                       !02015J1X
*             Encryption Type                                          !02015J1Y
                                                                       !02015J1Z
        04  encrypt-typ                    pic x(2).                   !02015J1a
                                                                       !02015J1b
*             This field is not used.                                  !02015J1c
                                                                       !02015J1d
        04  resp-filler-A0                 pic x(4049).                !02015J1e
                                                                       !02015J1f
**********************************************************************!!02015J1g
*                                                                     !!02015J1h
*             AS2805 Verify PPASN request                             !!02015J1i
*                                                                     !!02015J1j
**********************************************************************!!02015J1k
                                                                       !02015J1l
    02  cmd-A1-rqst                        redefines tss-data.         !02015J1m
                                                                       !02015J1n
*             Command Type                                             !02015J1o
                                                                       !02015J1p
        04  cmd-typ                        pic x(2).                   !02015J1q
                                                                       !02015J1r
*             Version Number                                           !02015J1s
                                                                       !02015J1t
        04  ver-num                        pic x(2).                   !02015J1u
                                                                       !02015J1v
*             Transaction Origin                                       !02015J1w
                                                                       !02015J1x
        04  txn-orig                       pic x.                      !02015J1y
                                                                       !02015J1z
*             Key Locator                                              !02015J20
                                                                       !02015J21
        04  key-loc                        pic x(16).                  !02015J22
                                                                       !02015J23
*             PPASN                                                    !02015J24
                                                                       !02015J25
        04  ppasn                          pic x(18).                  !02015J26
                                                                       !02015J27
*             This field is not used.                                  !02015J28
                                                                       !02015J29
        04  rqst-filler-A1                 pic x(4261).                !02015J2A
                                                                       !02015J2B
**********************************************************************!!02015J2C
*                                                                     !!02015J2D
*             AS2805 Verify PPASN response                            !!02015J2E
*                                                                     !!02015J2F
**********************************************************************!!02015J2G
                                                                       !02015J2H
    02  cmd-A1-resp                        redefines tss-data.         !02015J2I
                                                                       !02015J2J
*             Command Type                                             !02015J2K
                                                                       !02015J2L
        04  cmd-typ                        pic x(2).                   !02015J2M
                                                                       !02015J2N
*             Version Number                                           !02015J2O
                                                                       !02015J2P
        04  ver-num                        pic x(2).                   !02015J2Q
                                                                       !02015J2R
*             Response Status                                          !02015J2S
                                                                       !02015J2T
        04  resp-stat                      pic x(2).                   !02015J2U
                                                                       !02015J2V
*             This field is not used.                                  !02015J2W
                                                                       !02015J2X
        04  resp-filler-A1                 pic x(4294).                !02015J2Y
                                                                       !02015J2Z
**********************************************************************!!02015J2a
*                                                                     !!02015J2b
*             AS2805 Key Translate request                            !!02015J2c
*                                                                     !!02015J2d
**********************************************************************!!02015J2e
                                                                       !02015J2f
    02  cmd-A2-rqst                        redefines tss-data.         !02015J2g
                                                                       !02015J2h
*             Command Type                                             !02015J2i
                                                                       !02015J2j
        04  cmd-typ                        pic x(2).                   !02015J2k
                                                                       !02015J2l
*             Version Number                                           !02015J2m
                                                                       !02015J2n
        04  ver-num                        pic x(2).                   !02015J2o
                                                                       !02015J2p
*             Transaction Origin                                       !02015J2q
                                                                       !02015J2r
        04  txn-orig                       pic x.                      !02015J2s
                                                                       !02015J2t
*             Key Locator                                              !02015J2u
                                                                       !02015J2v
        04  key-loc                        pic x(16).                  !02015J2w
                                                                       !02015J2x
*             MAC Key - Receive                                        !02015J2y
                                                                       !02015J2z
        04  mac-key-rcv                    pic x(48).                  !02015J30
                                                                       !02015J31
*             PIN Encryption Key                                       !02015J32
                                                                       !02015J33
        04  kpe                            pic x(48).                  !02015J34
                                                                       !02015J35
*             Data Encryption Key - Receive                            !02015J36
                                                                       !02015J37
        04  encrypt-data-key-rcv           pic x(48).                  !02015J38
                                                                       !02015J39
*             Key Index of New Key                                     !02015J3A
                                                                       !02015J3B
        04  new-key-idx                    pic x.                      !02015J3C
                                                                       !02015J3D
*             This field is not used.                                  !02015J3E
                                                                       !02015J3F
        04  rqst-filler-A2                 pic x(4134).                !02015J3G
                                                                       !02015J3H
**********************************************************************!!02015J3I
*                                                                     !!02015J3J
*             AS2805 Key Translate response                           !!02015J3K
*                                                                     !!02015J3L
**********************************************************************!!02015J3M
                                                                       !02015J3N
    02  cmd-A2-resp                        redefines tss-data.         !02015J3O
                                                                       !02015J3P
*             Command Type                                             !02015J3Q
                                                                       !02015J3R
        04  cmd-typ                        pic x(2).                   !02015J3S
                                                                       !02015J3T
*             Version Number                                           !02015J3U
                                                                       !02015J3V
        04  ver-num                        pic x(2).                   !02015J3W
                                                                       !02015J3X
*             Response Status                                          !02015J3Y
                                                                       !02015J3Z
        04  resp-stat                      pic x(2).                   !02015J3a
                                                                       !02015J3b
*             This field is not used.                                  !02015J3c
                                                                       !02015J3d
        04  resp-filler-A2                 pic x(4294).                !02015J3e
                                                                       !02015J3f
**********************************************************************!!02015J3g
*                                                                     !!02015J3h
*             AS2805 PIN Translate request                            !!02015J3i
*                                                                     !!02015J3j
**********************************************************************!!02015J3k
                                                                       !02015J3l
    02  cmd-A3-rqst                        redefines tss-data.         !02015J3m
                                                                       !02015J3n
*             Command Type                                             !02015J3o
                                                                       !02015J3p
        04  cmd-typ                        pic x(2).                   !02015J3q
                                                                       !02015J3r
*             Version Number                                           !02015J3s
                                                                       !02015J3t
        04  ver-num                        pic x(2).                   !02015J3u
                                                                       !02015J3v
*             Transaction Origin                                       !02015J3w
                                                                       !02015J3x
        04  txn-orig                       pic x.                      !02015J3y
                                                                       !02015J3z
*             Acquirer Key Locator                                     !02015J40
                                                                       !02015J41
        04  acq-key-loc                    pic x(16).                  !02015J42
                                                                       !02015J43
*             Issuer Key Locator                                       !02015J44
                                                                       !02015J45
        04  iss-key-loc                    pic x(16).                  !02015J46
                                                                       !02015J47
*             Encrypted PIN                                            !02015J48
                                                                       !02015J49
        04  pin-in                         pic x(16).                  !02015J4A
                                                                       !02015J4B
*             Primary Account Number                                   !02015J4C
                                                                       !02015J4D
        04  pan                            pic x(19).                  !02015J4E
                                                                       !02015J4F
*             Length of Primary Account Number                         !02015J4G
                                                                       !02015J4H
        04  pan-lgth                       pic x(2).                   !02015J4I
                                                                       !02015J4J
*             System Trace Audit Number                                !02015J4K
                                                                       !02015J4L
        04  stan                           pic x(6).                   !02015J4M
                                                                       !02015J4N
*             Amount                                                   !02015J4O
                                                                       !02015J4P
        04  amt                            pic x(12).                  !02015J4Q
                                                                       !02015J4R
*             Index of the input PIN encryption key to be used         !02015J4S
                                                                       !02015J4T
        04  input-pin-key-idx              pic x.                      !02015J4U
                                                                       !02015J4V
*             Index of the output PIN encryption key to be used        !02015J4W
                                                                       !02015J4X
        04  output-pin-key-idx             pic x.                      !02015J4Y
                                                                       !02015J4Z
*             This field is not used.                                  !02015J4a
                                                                       !02015J4b
        04  rqst-filler-A3                 pic x(4206).                !02015J4c
                                                                       !02015J4d
**********************************************************************!!02015J4e
*                                                                     !!02015J4f
*             AS2805 PIN Translate response                           !!02015J4g
*                                                                     !!02015J4h
**********************************************************************!!02015J4i
                                                                       !02015J4j
    02  cmd-A3-resp                        redefines tss-data.         !02015J4k
                                                                       !02015J4l
*             Command Type                                             !02015J4m
                                                                       !02015J4n
        04  cmd-typ                        pic x(2).                   !02015J4o
                                                                       !02015J4p
*             Version Number                                           !02015J4q
                                                                       !02015J4r
        04  ver-num                        pic x(2).                   !02015J4s
                                                                       !02015J4t
*             Response Status                                          !02015J4u
                                                                       !02015J4v
        04  resp-stat                      pic x(2).                   !02015J4w
                                                                       !02015J4x
*             Translated PIN                                           !02015J4y
                                                                       !02015J4z
        04  pin-out                        pic x(8).                   !02015J50
                                                                       !02015J51
*             Index of the output PIN encryption key used              !02015J52
                                                                       !02015J53
        04  output-pin-key-idx             pic x.                      !02015J54
                                                                       !02015J55
*             This field is not used.                                  !02015J56
                                                                       !02015J57
        04  resp-filler-A3                 pic x(4285).                !02015J58
                                                                       !02015J59
**********************************************************************!!02015J5A
*                                                                     !!02015J5B
*             AS2805 Generate Random Number request                   !!02015J5C
*                                                                     !!02015J5D
**********************************************************************!!02015J5E
                                                                       !02015J5F
    02  cmd-A4-rqst                        redefines tss-data.         !02015J5G
                                                                       !02015J5H
*             Command Type                                             !02015J5I
                                                                       !02015J5J
        04  cmd-typ                        pic x(2).                   !02015J5K
                                                                       !02015J5L
*             Version Number                                           !02015J5M
                                                                       !02015J5N
        04  ver-num                        pic x(2).                   !02015J5O
                                                                       !02015J5P
*             Transaction Origin                                       !02015J5Q
                                                                       !02015J5R
        04  txn-orig                       pic x.                      !02015J5S
                                                                       !02015J5T
*             Key Locator                                              !02015J5U
                                                                       !02015J5V
        04  key-loc                        pic x(16).                  !02015J5W
                                                                       !02015J5X
*             This field is not used.                                  !02015J5Y
                                                                       !02015J5Z
        04  rqst-filler-A4                 pic x(4279).                !02015J5a
                                                                       !02015J5b
**********************************************************************!!02015J5c
*                                                                     !!02015J5d
*             AS2805 Generate Random Number response                  !!02015J5e
*                                                                     !!02015J5f
**********************************************************************!!02015J5g
                                                                       !02015J5h
    02  cmd-A4-resp                        redefines tss-data.         !02015J5i
                                                                       !02015J5j
*             Command Type                                             !02015J5k
                                                                       !02015J5l
        04  cmd-typ                        pic x(2).                   !02015J5m
                                                                       !02015J5n
*             Version Number                                           !02015J5o
                                                                       !02015J5p
        04  ver-num                        pic x(2).                   !02015J5q
                                                                       !02015J5r
*             Response Status                                          !02015J5s
                                                                       !02015J5t
        04  resp-stat                      pic x(2).                   !02015J5u
                                                                       !02015J5v
*             Random Number                                            !02015J5w
                                                                       !02015J5x
        04  rndm-num                       pic x(48).                  !02015J5y
                                                                       !02015J5z
*             Random Number Inverted                                   !02015J60
                                                                       !02015J61
        04  rndm-num-inverted              pic x(48).                  !02015J62
                                                                       !02015J63
*             This field is not used.                                  !02015J64
                                                                       !02015J65
        04  resp-filler-A4                 pic x(4198).                !02015J66
                                                                       !02015J67
**********************************************************************!!02015J68
*                                                                     !!02015J69
*             AS2805 Decrypt Random Number request                    !!02015J6A
*                                                                     !!02015J6B
**********************************************************************!!02015J6C
                                                                       !02015J6D
    02  cmd-A5-rqst                        redefines tss-data.         !02015J6E
                                                                       !02015J6F
*             Command Type                                             !02015J6G
                                                                       !02015J6H
        04  cmd-typ                        pic x(2).                   !02015J6I
                                                                       !02015J6J
*             Version Number                                           !02015J6K
                                                                       !02015J6L
        04  ver-num                        pic x(2).                   !02015J6M
                                                                       !02015J6N
*             Transaction Origin                                       !02015J6O
                                                                       !02015J6P
        04  txn-orig                       pic x.                      !02015J6Q
                                                                       !02015J6R
*             Key Locator                                              !02015J6S
                                                                       !02015J6T
        04  key-loc                        pic x(16).                  !02015J6U
                                                                       !02015J6V
*             Random Number                                            !02015J6W
                                                                       !02015J6X
        04  rndm-num                       pic x(48).                  !02015J6Y
                                                                       !02015J6Z
*             This field is not used.                                  !02015J6a
                                                                       !02015J6b
        04  rqst-filler-A5                 pic x(4231).                !02015J6c
                                                                       !02015J6d
**********************************************************************!!02015J6e
*                                                                     !!02015J6f
*             AS2805 Decrypt Random Number response                   !!02015J6g
*                                                                     !!02015J6h
**********************************************************************!!02015J6i
                                                                       !02015J6j
    02  cmd-A5-resp                        redefines tss-data.         !02015J6k
                                                                       !02015J6l
*             Command Type                                             !02015J6m
                                                                       !02015J6n
        04  cmd-typ                        pic x(2).                   !02015J6o
                                                                       !02015J6p
*             Version Number                                           !02015J6q
                                                                       !02015J6r
        04  ver-num                        pic x(2).                   !02015J6s
                                                                       !02015J6t
*             Response Status                                          !02015J6u
                                                                       !02015J6v
        04  resp-stat                      pic x(2).                   !02015J6w
                                                                       !02015J6x
*             Random Number Inverted                                   !02015J6y
                                                                       !02015J6z
        04  rndm-num-inverted              pic x(48).                  !02015J70
                                                                       !02015J71
*             This field is not used.                                  !02015J72
                                                                       !02015J73
        04  resp-filler-A5                 pic x(4246).                !02015J74
                                                                       !02015J75
**********************************************************************!!02015J76
*                                                                     !!02015J77
*             AS2805 PIN Verify request                               !!02015J78
*                                                                     !!02015J79
**********************************************************************!!02015J7A
                                                                       !02015J7B
    02  cmd-A6-rqst                        redefines tss-data.         !02015J7C
                                                                       !02015J7D
*             Command Type                                             !02015J7E
                                                                       !02015J7F
        04  cmd-typ                        pic x(2).                   !02015J7G
                                                                       !02015J7H
*             Version Number                                           !02015J7I
                                                                       !02015J7J
        04  ver-num                        pic x(2).                   !02015J7K
                                                                       !02015J7L
*             PIN Verification Method                                  !02015J7M
                                                                       !02015J7N
        04  pin-vrfy-method                pic x.                      !02015J7O
                                                                       !02015J7P
*             Transaction Origin                                       !02015J7Q
                                                                       !02015J7R
        04  txn-orig                       pic x.                      !02015J7S
                                                                       !02015J7T
*             Acquirer Key Locator                                     !02015J7U
                                                                       !02015J7V
        04  acq-key-loc                    pic x(16).                  !02015J7W
                                                                       !02015J7X
*             Auth Key Locator                                         !02015J7Y
                                                                       !02015J7Z
        04  auth-key-loc                   pic x(16).                  !02015J7a
                                                                       !02015J7b
*             Card Expiration Date                                     !02015J7c
                                                                       !02015J7d
        04  crd-exp-dat                    pic x(4).                   !02015J7e
                                                                       !02015J7f
*             Encrypted PIN                                            !02015J7g
                                                                       !02015J7h
        04  pin                            pic x(16).                  !02015J7i
                                                                       !02015J7j
*             System Trace Audit Number                                !02015J7k
                                                                       !02015J7l
        04  stan                           pic x(6).                   !02015J7m
                                                                       !02015J7n
*             Amount                                                   !02015J7o
                                                                       !02015J7p
        04  amt                            pic x(12).                  !02015J7q
                                                                       !02015J7r
*             KPVV Index                                               !02015J7s
                                                                       !02015J7t
        04  kpvv-idx                       pic x.                      !02015J7u
                                                                       !02015J7v
*             Primary Account Number                                   !02015J7w
                                                                       !02015J7x
        04  pan                            pic x(19).                  !02015J7y
                                                                       !02015J7z
*             Length of Primary Account Number                         !02015J80
                                                                       !02015J81
        04  pan-lgth                       pic x(2).                   !02015J82
                                                                       !02015J83
*             PVV/Offset Value                                         !02015J84
                                                                       !02015J85
        04  pvv-ofst-val                   pic x(12).                  !02015J86
                                                                       !02015J87
*             PVV/Offset Length                                        !02015J88
                                                                       !02015J89
        04  pvv-ofst-lgth                  pic x(2).                   !02015J8A
                                                                       !02015J8B
*             ISEC PIN Key Index to be used                            !02015J8C
                                                                       !02015J8D
        04  isec-pin-key-idx               pic x.                      !02015J8E
                                                                       !02015J8F
*             This field is not used.                                  !02015J8G
                                                                       !02015J8H
        04  rqst-filler-A6                 pic x(4187).                !02015J8I
                                                                       !02015J8J
**********************************************************************!!02015J8K
*                                                                     !!02015J8L
*             AS2805 PIN Verify response                              !!02015J8M
*                                                                     !!02015J8N
**********************************************************************!!02015J8O
                                                                       !02015J8P
    02  cmd-A6-resp                        redefines tss-data.         !02015J8Q
                                                                       !02015J8R
*             Command Type                                             !02015J8S
                                                                       !02015J8T
        04  cmd-typ                        pic x(2).                   !02015J8U
                                                                       !02015J8V
*             Version Number                                           !02015J8W
                                                                       !02015J8X
        04  ver-num                        pic x(2).                   !02015J8Y
                                                                       !02015J8Z
*             Response Status                                          !02015J8a
                                                                       !02015J8b
        04  resp-stat                      pic x(2).                   !02015J8c
                                                                       !02015J8d
*             This field is not used.                                  !02015J8e
                                                                       !02015J8f
        04  resp-filler-A6                 pic x(4294).                !02015J8g
                                                                       !02015J8h
**********************************************************************!!02015J8i
*                                                                     !!02015J8j
*             AS2805 Generate Interface Keys request                  !!02015J8k
*                                                                     !!02015J8l
**********************************************************************!!02015J8m
                                                                       !02015J8n
    02  cmd-A7-rqst                        redefines tss-data.         !02015J8o
                                                                       !02015J8p
*             Command Type                                             !02015J8q
                                                                       !02015J8r
        04  cmd-typ                        pic x(2).                   !02015J8s
                                                                       !02015J8t
*             Version Number                                           !02015J8u
                                                                       !02015J8v
        04  ver-num                        pic x(2).                   !02015J8w
                                                                       !02015J8x
*             Transaction Origin                                       !02015J8y
                                                                       !02015J8z
        04  txn-orig                       pic x.                      !02015J90
                                                                       !02015J91
*             Key Locator                                              !02015J92
                                                                       !02015J93
        04  key-loc                        pic x(16).                  !02015J94
                                                                       !02015J95
*             Key Type                                                 !02015J96
                                                                       !02015J97
        04  key-typ                        pic x(2).                   !02015J98
                                                                       !02015J99
*             Index Update                                             !02015J9A
                                                                       !02015J9B
        04  idx-updt                       pic x.                      !02015J9C
                                                                       !02015J9D
*             Key Index to Generate                                    !02015J9E
                                                                       !02015J9F
        04  key-idx-gen                    pic x.                      !02015J9G
                                                                       !02015J9H
*             This field is not used.                                  !02015J9I
                                                                       !02015J9J
        04  rqst-filler-A7                 pic x(4275).                !02015J9K
                                                                       !02015J9L
**********************************************************************!!02015J9M
*                                                                     !!02015J9N
*             AS2805 Generate Interface Keys response                 !!02015J9O
*                                                                     !!02015J9P
**********************************************************************!!02015J9Q
                                                                       !02015J9R
    02  cmd-A7-resp                        redefines tss-data.         !02015J9S
                                                                       !02015J9T
*             Command Type                                             !02015J9U
                                                                       !02015J9V
        04  cmd-typ                        pic x(2).                   !02015J9W
                                                                       !02015J9X
*             Version Number                                           !02015J9Y
                                                                       !02015J9Z
        04  ver-num                        pic x(2).                   !02015J9a
                                                                       !02015J9b
*             Response Status                                          !02015J9c
                                                                       !02015J9d
        04  resp-stat                      pic x(2).                   !02015J9e
                                                                       !02015J9f
*             Key Type                                                 !02015J9g
                                                                       !02015J9h
        04  key-typ                        pic x(2).                   !02015J9i
                                                                       !02015J9j
*             Key Length                                               !02015J9k
                                                                       !02015J9l
        04  key-lgth                       pic x.                      !02015J9m
                                                                       !02015J9n
*             MAC Key - Send                                           !02015J9o
                                                                       !02015J9p
        04  mac-key-send                   pic x(48).                  !02015J9q
                                                                       !02015J9r
*             PIN Encryption Key                                       !02015J9s
                                                                       !02015J9t
        04  kpe                            pic x(48).                  !02015J9u
                                                                       !02015J9v
*             Data Encryption Key - Send                               !02015J9w
                                                                       !02015J9x
        04  encrypt-data-key-send          pic x(48).                  !02015J9y
                                                                       !02015J9z
*             Key Index of New Key                                     !02015JA0
                                                                       !02015JA1
        04  new-key-idx                    pic x.                      !02015JA2
                                                                       !02015JA3
*             This field is not used.                                  !02015JA4
                                                                       !02015JA5
        04  resp-filler-A7                 pic x(4146).                !02015JA6
                                                                       !02015JA7
**********************************************************************!!02015JA8
*                                                                     !!02015JA9
*             AS2805 Key Set request                                  !!02015JAA
*                                                                     !!02015JAB
**********************************************************************!!02015JAC
                                                                       !02015JAD
    02  cmd-A9-rqst                        redefines tss-data.         !02015JAE
                                                                       !02015JAF
*             Command Type                                             !02015JAG
                                                                       !02015JAH
        04  cmd-typ                        pic x(2).                   !02015JAI
                                                                       !02015JAJ
*             Version Number                                           !02015JAK
                                                                       !02015JAL
        04  ver-num                        pic x(2).                   !02015JAM
                                                                       !02015JAN
*             Transaction Origin                                       !02015JAO
                                                                       !02015JAP
        04  txn-orig                       pic x.                      !02015JAQ
                                                                       !02015JAR
*             Key Locator                                              !02015JAS
                                                                       !02015JAT
        04  key-loc                        pic x(16).                  !02015JAU
                                                                       !02015JAV
*             KEK1 Value                                               !02015JAW
                                                                       !02015JAX
        04  kek1-val                       pic x(52).                  !02015JAY
                                                                       !02015JAZ
*             KEK2 Value                                               !02015JAa
                                                                       !02015JAb
        04  kek2-val                       pic x(52).                  !02015JAc
                                                                       !02015JAd
*             PPASN                                                    !02015JAe
                                                                       !02015JAf
        04  ppasn                          pic x(18).                  !02015JAg
                                                                       !02015JAh
*             This field is not used.                                  !02015JAi
                                                                       !02015JAj
        04  rqst-filler-A9                 pic x(4157).                !02015JAk
                                                                       !02015JAl
**********************************************************************!!02015JAm
*                                                                     !!02015JAn
*             AS2805 Key Set response                                 !!02015JAo
*                                                                     !!02015JAp
**********************************************************************!!02015JAq
                                                                       !02015JAr
    02  cmd-A9-resp                        redefines tss-data.         !02015JAs
                                                                       !02015JAt
*             Command Type                                             !02015JAu
                                                                       !02015JAv
        04  cmd-typ                        pic x(2).                   !02015JAw
                                                                       !02015JAx
*             Version Number                                           !02015JAy
                                                                       !02015JAz
        04  ver-num                        pic x(2).                   !02015JB0
                                                                       !02015JB1
*             Response Status                                          !02015JB2
                                                                       !02015JB3
        04  resp-stat                      pic x(2).                   !02015JB4
                                                                       !02015JB5
*             This field is not used.                                  !02015JB6
                                                                       !02015JB7
        04  resp-filler-A9                 pic x(4294).                !02015JB8
                                                                       !02015JB9
end                                                                    !02016
                                                                       !02017
