**FIX2.28  12/03/08  DDLFPTD 6008 DDL    PS60DDL  PS0C309  H                 ***
**FIX2.28  12/05/07  DDLFPTD 6007 DDL    PS60DDL  PS0B303  G                 ***
**FIX2.28  11/23/06  DDLFPTD 6006 DDL    PS60DDL  PS0A302  F                 ***
**FIX2.23  11/15/03  DDLFPTD 6005 DDL    PS60DDL  PS07167  E                 ***
**FIX2.23  11/11/03  DDLFPTD 6004 DDL    PS60DDL  PS07085  D                 ***
**FIX2.23  02/13/03  DDLFPTD 6003 DDL    PS60DDL  PS06080  C                 ***
**FIX2.19  01/12/02  DDLFPTD 6002 DDL    PS60DDL  PS05071  B                 ***
**FIX2.14  03/22/01  DDLFPTD 6001 DDL    PS60DDL  PS04141  A                 ***
!*SEQ2.00  01/03/01  DDLFPTD 6000 DDL    PS60DDL                               !
!#####################################################################!
!#    CSM History:                                                   #!
!#                                                                   #!
!#    CSM:       Description:                                        #!
!#   ---------   -------------------------------------------         #!
!#                                                                   #!!CSM51
!#   04JUL2011   Mike Keeble                                         #!!CSM51
!#   CSM  #51    VUB "Disconnect" processing.                        #!!CSM51
!#   Summary:    Some VUB  terminals (connected via MegaNAC) do not  #!!CSM51
!#               disconnect the session when they have received a    #!!CSM51
!#               response from Base24. This means they "tie up" a    #!!CSM51
!#               port until the timeout period, which is currently   #!!CSM51
!#               set to 90 seconds.                                  #!!CSM51
!#               Added new processing based on PTD field that, when  #!!CSM51
!#               configured, will result in DH requesting XPNET      #!!CSM51
!#               to disconnect terminal, regardless of processing    #!!CSM51
!#               flag 1 value.                                       #!!CSM51
!#               Redefined USER-FLD1 of the PTDS1-CORE structure     #!!CSM51
!#               to VUB-DISC, for use by the PTD screen 1.           #!!CSM51
!#                                                                   #!!CSM51
!#                                                                   #!!CSM51
!#####################################################################!
?page "PTD - BASE24-pos Terminal Data files"
?section ptd-history
**********************************************************************!!00005
*                                                                    *!!00006
*                             BASE24-pos                             *!!00007
*                             ----------                             *!!00008
*                                                                    *!!00009
*             DDL for the BASE24-pos Terminal Data files             *!!00010
*                                                                    *!!00011
*                   Proprietary Software Product                     *!!00012
*                                                                    *!!00013
*                         ACI Worldwide Inc.                         *!!00014
*                       330 South 108th Avenue                       *!!00015
*                       Omaha, Nebraska  68154                       *!!00016
*                           (402) 390-7600                           *!!00017
*                                                                    *!!00018
*    Copyright by ACI Worldwide Inc. 2000                            *!!00019
*                                                                    *!!00020
*    All Rights Reserved.  No part of this document may be           *!!00021
*    reproduced in any manner without the prior written consent of   *!!00022
*    ACI Worldwide Inc.  This material is a trade secret and its     *!!00023
*    confidentiality is strictly maintained.  Use of any copyright   *!!00024
*    notice does not imply unrestricted or public access to these    *!!00025
*    materials.                                                      *!!00026
*                                                                    *!!00027
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      *!!00028
*                                                                    *!!00029
**********************************************************************!!00030
*                                                                     !!00031
* Record of Changes:                                                  !!00032
*                                                                     !!00033
* Date        Person/Emp #                                            !!00034
* ---------   ------------                                            !!00035
********************************************************************* !!00036
*             Release 6.0                                           * !!00037
********************************************************************* !!00038
* 30NOV2000   SJL/306                                                 !!00039
* Symptom:    Release 6.0 Enhancements                                !!00040
* Problem:    None.                                                   !!00041
* Fix:        Initial Release.                                        !!00042
*             Split terminal data records into separate files - two   !!00043
*             for dynamic data and one for static data.               !!00044
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00045
*             CUSTMACS flags, and run MAKE.                           !!00046
* Reference:  WO #981118-3 (Transactions Allowed)                     !!00047
*             WO #990108-1 (PTDF Expansion)                           !!00048
*             WO #000616-1 (Product Separation)                       !!00049
                                                                       !00049A00
* 30MAR2001   ljc/202                                                  !00049A01
* Symptom:    Release 6.0 Enhancements.                                !00049A02
* Problem:    None.                                                    !00049A03
* Fix:        Added the following field to Static Core Data            !00049A04
*             for EMV:                                                 !00049A05
*                 EMV-TERM-CAP                                         !00049A06
*             Added the following field to Static Core Data for        !00049A07
*             DUK/PT:                                                  !00049A08
*                 KEYD-GRP                                             !00049A09
*             Added the following fields to Static Core Data           !00049A0A
*             for MC:                                                  !00049A0B
*                 MULT-CRNCY-TTL                                       !00049A0C
*                 PRE-COMM-FLR-LMT                                     !00049A0D
*                 POST-COMM-FLR-LMT                                    !00049A0E
*                 PRE-COMM-LMT-FLG                                     !00049A0F
*                 POST-COMM-LMT-FLG                                    !00049A0G
*             Added the following field to Static Core Data            !00049A0H
*             for Italian Product:                                     !00049A0I
*                 SFTWR-REL                                            !00049A0J
*             Added the following field to Dynamic Core Data           !00049A0K
*             for Italian Product:                                     !00049A0L
*                 STAT-RSN-CDE                                         !00049A0M
*             Added the following fields to Dynamic General            !00049A0N
*             record (PTDD1) for Multi-threaded SPDH:                  !00049A0O
*                 SITE-ID                                              !00049A0P
*                 REC-TYP                                              !00049A0Q
*             Added the following fields to Static Core Data and       !00049A0R
*             Dynamic Core Data:                                       !00049A0S
*                 USER-FLD-ACI                                         !00049A0T
*                 USER-FLD-REGN                                        !00049A0U
*                 USER-FLD-CUST                                        !00049A0V
*             Updated comments on CRNCY-CDE field.                     !00049A0W
* Dependency: Restore Release 6.0 files, modify the appropriate        !00049A0X
*             CUSTMACS flags, and run MAKE.                            !00049A0Y
* Reference:  WO #990405-01 (Multicurrency 5.3/6.0 Uplift)             !00049A0Z
*             WO #000101-1  (General Release 6.0)                      !00049A10
*             WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00049A11
*             WO #010308-01 (Italian Product)                          !00049A12
                                                                       !00049B00
* 08JAN2002   TLE/310                                                  !00049B01
* Symptom:    Uplift DUKPT to Release 6.0.                             !00049B02
* Problem:    None.                                                    !00049B03
* Fix:        Added support for a PIN_ENCRYPT_TYP of "07" - DUKPT.     !00049B04
* Dependency: Apply fix to DDLFPTD and remake.                         !00049B05
* Reference:  WO #011003-04.                                           !00049B06
                                                                       !00049C00
* 07FEB2003   JJD/615                                                  !00049C01
* Symptom:    POS Enhancements.                                        !00049C02
* Problem:    None.                                                    !00049C03
* Fix:        Added support for the fields MAC-PENDING-FLG, PIN-       !00049C04
*             PENDING-FLG, DATA-PENDING-FLG and DATA-ENCRYPT-TYP to    !00049C05
*             the ptdd1-core definition.  Added support for the        !00049C06
*             fields DPC-NUM, RCNCL-ENT, ENHNC-PRE-AUTH-FLG,           !00049C07
*             PRE-AUTH-CHRGBCK-FLG and BAL-RTRN-FLG to the             !00049C08
*             ptds1-core definition.                                   !00049C09
* Dependency: Apply fix to DDLFPTD and remake. Refer to                !00049C0A
*             BA60UD06.SCNFIL for a complete listing of dependencies.  !00049C0B
* Reference:  WO #020606-01                                            !00049C0C
*                                                                      !00049C0D
* 01SEP2002   JJD/615                                                  !00049C0E
* Symptom:    BASE24 6.0 version 3 enhancments.                        !00049C0F
* Problem:    None.                                                    !00049C0G
* Fix:        Added support for the fields TERM-ATTEND-IND,            !00049C0H
*             TERM-LOC-IND, CRD-CAPTR-IND, CRDHLDR-ACTVT-TERM-IND and  !00049C0I
*             TERM-INPUT-CAP-IND to the PTDS1-CORE definition.         !00049C0J
* Dependency: Apply fix to DDLFPTD and run MAKE.                       !00049C0K
* Reference:  WO #020611-01                                            !00049C0L
                                                                       !00049D00
* 15OCT2003   ldw/1889                                                 !00049D01
* Symptom:    SPDH Enhanced Multi-Threading                            !00049D02
* Problem:    None.                                                    !00049D03
* Fix:        The substructure 'MULT-THREAD-SPDH' was made an          !00049D04
*             alternate key by adding 'KEYTAG "MT"' to the             !00049D05
*             declaration line. Also, changed the comments for         !00049D06
*             the substructure's 'REC-TYP' to reflect valid values     !00049D07
*             of "P", "S", and blank.                                  !00049D08
* Dependency: Apply fix to DDLFPTD and run MAKE.  Refer to             !00049D09
*             BA60UD07.SCNSEMT for a complete listing of dependencies. !00049D0A
* Reference:  WO #001109-01                                            !00049D0B
                                                                       !00049D0C
* 15OCT2003   sjt/272                                                  !00049D0D
* Symptom:    Dual Site Enhancement                                    !00049D0E
* Problem:    None.                                                    !00049D0F
* Fix:        Add the DUAL-SITE-IND field to PTDD1-CORE and reduce     !00049D0G
*             the size of USER-FLD-ACI.                                !00049D0H
* Dependency: Apply fix to DDLFPTD and run MAKE. Refer to              !00049D0I
*             BA60UD07.SCNDUALS for a complete listing of              !00049D0J
*             dependencies.                                            !00049D0K
* Reference:  WO #030930-01                                            !00049D0L
                                                                       !00049D0M
                                                                       !00049E00
* 10NOV2003   jfu/543                                                  !00049E01
* Symptom:    Misleading comments for the acquirer tranaction profile  !00049E02
*             field.                                                   !00049E03
* Problem:    Same as symptom.                                         !00049E04
* Fix:        Modified the comments for the acquirer transaction       !00049E05
*             profile field.                                           !00049E06
* Dependency: Apply fix to DDLFPTD and run Make.                       !00049E07
* Reference:  Case #349106                                             !00049E08
                                                                       !00049E09
                                                                       !00049F00
* 14OCT2006   bartond                                                  !00049F01
* Symptom:    Add Additional Values to PTD/ATD Enhancement.            !00049F02
* Problem:    None.                                                    !00049F03
* Fix:        Add the TERM-OUTPUT-CAP-IND and CRDHLDR-AUTHN-CAP-IND    !00049F04
*             to PTDS1-CORE and reduce the size of USER-FLD-ACI.       !00049F05
* Dependency: Apply fix to DDLFPTD and run MAKE. Refer to              !00049F06
*             BA60UD0A.SCNPTD for a complete listing of dependencies.  !00049F07
* Reference:  WO #051128-05                                            !00049F08
                                                                       !00049F09
                                                                       !00049C0M
                                                                       !00049B07
                                                                       !00049G00
* 12OCT2007   ranadia                                                  !00049G01
* Symptom:    SPDH Message Data Element Encryption                     !00049G02
* Problem:    None                                                     !00049G03
* Fix:        Updated comments on DATA-ENCRYPT-TYP field.              !00049G04
* Dependency: Apply fix to DDLFPTD and run Make.  Refer to             !00049G05
*             BA60UD0B.SCNMDEE for a complete listing of dependencies. !00049G06
* Reference:  WO #061107-01                                            !00049G07
*                                                                      !00049G08
* 12OCT2007   WisharJ                                                  !00049G09
* Symptom:    None.                                                    !00049G0A
* Problem:    Incorrect descriptions for the PRE-AUTH-LESSER-AMT       !00049G0B
*             field.                                                   !00049G0C
* Fix:        Modified comments only. Updated descriptions for the     !00049G0D
*             PRE-AUTH-LESS-AMT-FLG field.                             !00049G0E
* Dependency: Apply fix to DDLFPTD and run Make.                       !00049G0F
* Reference:  Case #429513                                             !00049G0G
                                                                       !00049G0H
                                                                       !00049H00
* 17OCT2008   meyersc                                                  !00049H01
* Symptom:    DUKPT Support with Message Data Encryption               !00049H02
* Problem:    None                                                     !00049H03
* Fix:        Updated comments on DATA-ENCRYPT-TYP field.              !00049H04
* Dependency: Apply fix to DDLFPTD and run Make.  Refer to             !00049H05
*             BA60UD0C.SCNDMDE for a complete listing of dependencies. !00049H06
* Reference:  WO #070807-02                                            !00049H07
                                                                       !00049H08
* 17OCT2008   meyersc                                                  !00049H09
* Symptom:    None.                                                    !00049H0A
* Problem:    Updated comments for CRDHLDR-ACTVT-TERM-IND field.       !00049H0B
* Fix:        Modified the comments for the CRDHLDR-ACTVT-TERM-IND     !00049H0C
*             field to indicate that a contactless proximity terminal  !00049H0D
*             should be set to '2' in this field (not 7).              !00049H0E
* Dependency: Apply fix to DDLFPTD and run Make.                       !00049H0F
* Reference:  Case #450136                                             !00049H0G
                                                                       !00049H0H
* 17OCT2008   MhaskaS                                                  !00049H0I
* Symptom:    Visa Contactless MSD with CVN 17 Enhancement             !00049H0J
* Problem:    None.                                                    !00049H0K
* Fix:        - Added the CTLS-INPUT-CAP-IND field to PTDD1 and        !00049H0L
*             reduced the size of USER-FLD-ACI.                        !00049H0M
*             - Updated comments for TERM-INPUT-CAP-IND.               !00049H0N
* Dependency: Apply fix to DDLFPTD and run Make. Refer to              !00049H0O
*             BA60UD0C.SCNCV17 for a complete listing of dependencies. !00049H0P
* Reference:  WO #080703-01                                            !00049H0Q
                                                                       !00049H0R
*********************************************************************  !00049A13
                                                                       !00049A14
********************************************************************* !!00050
                                                                       !00051
?section ptd-deflist
?deflist
********************************************************************* !!00056
*              BASE24-pos Terminal Data files (PTD)                 * !!00057
********************************************************************* !!00058
*                                                                   * !!00059
*   Identification                                                  * !!00060
*                                                                   * !!00061
*     The PTD contains the files for every POS type terminal in the * !!00062
*     logical network controlled by the BASE24 network.  A file     * !!00063
*     contains either dynamic or static data associated with the    * !!00064
*     device.  Dynamic data is data that is updated during the      * !!00065
*     online transaction path).  Static data is data that is not    * !!00066
*     updated during the online transaction path.                   * !!00067
*                                                                   * !!00068
*   Security                                                        * !!00069
*                                                                   * !!00070
*     The PTD is secured under Tandem's group level security so     * !!00071
*     only authorized network operators may access (or start        * !!00072
*     programs which access) the file.                              * !!00073
*                                                                   * !!00074
*       USER ID         = <BASE24 node name>.*                      * !!00075
*       FILE CODE       = 0                                         * !!00076
*       ACCESS SECURITY = GGGG                                      * !!00077
*                                                                   * !!00078
*   Usage                                                           * !!00079
*                                                                   * !!00080
*       Device Handler    I/O  Random (Primary)           Shared    * !!00081
*       Settlement        I/O  Random (Alternate - "OW")  Shared    * !!00082
*       File Maintenance  I/O  Random (Primary)           Shared    * !!00083
*                                                                   * !!00084
********************************************************************* !!00085
                                                                       !00086
?section ptdd1
?setsection ptdd1
********************************************************************* !!00091
*              BASE24-pos Terminal Data Dynamic file - general data * !!00092
********************************************************************* !!00093
                                                                       !00094
?comments
                                                                       !00097
*             The PTDD1 contains dynamic records for each POS type    !!00098
*             terminal in the logical network controlled by the       !!00099
*             BASE24 network.  The PTDD1 is used to define the        !!00100
*             characteristics of the terminal that will change from   !!00101
*             transaction to transaction (e.g., transaction totals).  !!00102
*                                                                     !!00103
*             This section describes the fields included in a PTDD1   !!00104
*             record.                                                 !!00105
*                                                                     !!00106
*             LCONF ASSIGN:    POS-PTD-DYN-GNRL                       !!00107
                                                                       !00108
                                                                       !00109
RECORD PTDD1.                   FILE IS "PTDD1" KEY-SEQUENCED.         !00110
                                                                       !00111
*             A unique identifier, terminal ID, for the terminal,     !!00112
*             which is used to access the appropriate PTDD record.    !!00113
*             This field contains the network symbolic station name.  !!00114
                                                                       !00115
02 TERM-ID                             TYPE TDF-PRIKEY   KEYTAG 0.     !00116
                                                                       !00117
*             The symbolic name of the Device Handler process that    !!00118
*             handles the terminal.  This name must match the name    !!00119
*             given the Device Handler process in the Network         !!00120
*             Environment File (NEF).  Because each Device Handler    !!00121
*             process is bound together with the Router and           !!00122
*             Authorization processes, this field contains the name   !!00123
*             of the combined Device Handler/Router/ Authorization    !!00124
*             process.  For example, the entry in this field for a    !!00125
*             VISA I Device Handler (bound with Router and            !!00126
*             Authorization) might be P1A^V1DH.                       !!00127
                                                                       !00128
02 DH-PRO-NAME                         TYPE SYM-NAME.                  !00129
                                                                       !00130
*                                                                     !!00131
*             The values in the following fields identify the         !!00132
*             terminal owner.                                         !!00133
*                                                                     !!00134
                                                                       !00135
02 TERM-OWNER                                  KEYTAG "OW".            !00136
                                                                       !00137
*             The logical network of the institution owning the       !!00138
*             terminal.                                               !!00139
                                                                       !00140
   04 LN                               TYPE *.                         !00141
                                                                       !00142
*             The FIID, as defined in the IDF, for the terminal       !!00143
*             owner's retailer sponsor.  The FIID is the key to the   !!00144
*             IDF.                                                    !!00145
                                                                       !00146
   04 FIID                             TYPE *.                         !00147
                                                                       !00148
*             An identifier for the retailer group of which the       !!00149
*             terminal is a part.  This field is provided for         !!00150
*             retailers who choose to group their terminals for       !!00151
*             reporting purposes.  Use of this field is optional.     !!00152
*             When used, this value must match the value of the       !!00153
*             RKEY.GRP field in the POS Retailer Definition File      !!00154
*             (PRDF) records for the retailers in this group.         !!00155
                                                                       !00156
   04 RETAILER-GRP                     PIC X(4).                       !00157
                                                                       !00158
*             An identifier for the retailer region of which the      !!00159
*             terminal is a part.  This field is provided for         !!00160
*             retailers who choose to group their terminals by region !!00161
*             for reporting purposes.  Use of this field is optional. !!00162
*             When used, this value must match the value of the       !!00163
*             RKEY.REGN field in the PRDF records for retailers in    !!00164
*             this region.                                            !!00165
                                                                       !00166
   04 RETAILER-REGN                    TYPE REGN.                      !00167
                                                                       !00168
*             The retailer ID, as defined in the PRDF, of the         !!00169
*             retailer that owns the terminal.                        !!00170
                                                                       !00171
   04 RETAILER-ID                      PIC X(19).                      !00172
                                                                       !00173
*             This field is not used.                                 !!00174
                                                                       !00175
02 USER-FLD1                           PIC X.                          !00176
                                                                       !00177
                                                                       !00177A00
*             The values in this field identify the integrated         !00177A01
*             site used by the Multi-threaded SPDH.                    !00177A02
                                                                       !00177A03
                                                                       !00177D00
02 MULT-THREAD-SPDH                            KEYTAG "MT".            !00177D01
                                                                       !00177D02
                                                                       !00177A05
*             Identifies the integrated site.  The default value       !00177A06
*             is spaces.                                               !00177A07
                                                                       !00177A08
   04 SITE-ID                          PIC X(16).                      !00177A09
                                                                       !00177A0A
                                                                       !00177D03
*             Identifies the record type. A primary record defines     !00177D04
*             a site. A secondary record defines a terminal at a       !00177D05
*             site. Valie values are:                                  !00177D06
*                                                                      !00177D07
*             P     - Primary Record                                   !00177D08
*             S     - Secondary Record                                 !00177D09
*             blank - Not Applicable (default)                         !00177D0A
                                                                       !00177D0B
                                                                       !00177D0C
                                                                       !00177D0D
                                                                       !00177D0E
                                                                       !00177A0L
   04 REC-TYP                          PIC X.                          !00177A0M
                                                                       !00177A0N
*             This field ensures word-alignment.                       !00177A0O
                                                                       !00177A0P
   04 USER-FLD1-MULT-THREAD            PIC X.                          !00177A0Q
                                                                       !00177A0R
                                                                       !00177A0S
*             Identifies the last file maintenance action on this     !!00178
*             record.  This includes the user who did the update, the !!00179
*             time at which it was done, and the type of update.      !!00180
                                                                       !00181
*             An indicator that identifies the last file maintenance  !!00182
*             action on this record.  This includes the user who      !!00183
*             performed the update, the time at which it was done,    !!00184
*             the type of update, and the terminal originating the    !!00185
*             update transaction.                                     !!00186
                                                                       !00187
02 LAST-AFM                            TYPE *.                         !00188
                                                                       !00189
*             Identifies the last transaction to update this record.  !!00190
*             The value in this field ensures against multiple or     !!00191
*             incomplete updates due to process failure and restart   !!00192
*             and occurs in every record that is updated by the       !!00193
*             online system.                                          !!00194
                                                                       !00195
02 LAST-TRAN                           TYPE *.                         !00196
                                                                       !00197
*             The offset to the common data in the record data area   !!00198
*             (DATA-AREA) of this record is not defined, since a      !!00199
*             core-ofst field would always be zero (i.e., the common  !!00200
*             data is always at the beginning of the record data      !!00201
*             area).                                                  !!00202
*                                                                     !!00203
*             The length of the common data in this record.  This     !!00204
*             length is not device specific.                          !!00205
                                                                       !00206
02 CORE-LGTH                           TYPE BINARY 16.                 !00207
                                                                       !00208
*             The offset to the device information data in the record !!00209
*             data area (DATA-AREA) of this record.  This offset is   !!00210
*             always equal to the length of the core data.            !!00211
                                                                       !00212
02 DEV-INFO-OFST                       TYPE BINARY 16.                 !00213
                                                                       !00214
*             The length of the device information data in this       !!00215
*             record.  This length is device specific.                !!00216
*                                                                     !!00217
*             Currently not used by POS, the length is zero.          !!00218
                                                                       !00219
02 DEV-INFO-LGTH                       TYPE BINARY 16.                 !00220
                                                                       !00221
*             The offset to the device dependent data in the record   !!00222
*             data area (DATA-AREA) of this record.                   !!00223
                                                                       !00224
02 DEV-DATA-OFST                       TYPE BINARY 16.                 !00225
                                                                       !00226
*             The length of the device dependent data in this record. !!00227
*             This length is device specific.                         !!00228
                                                                       !00229
02 DEV-DATA-LGTH                       TYPE BINARY 16.                 !00230
                                                                       !00231
*             Contains the common data, the device information data,  !!00232
*             and the device dependent data for this record.  Please  !!00233
*             refer to the appropriate device handler subvolume for   !!00234
*             the device information data and the device dependent    !!00235
*             data layouts.                                           !!00236
                                                                       !00237
                                                                       !00238A00
02 DATA-AREA                           PIC X(3916).                    !00238A01
                                                                       !00238A02
                                                                       !00239
END                                                                    !00240
                                                                       !00241
                                                                       !00241A00
?nocomments
?page
?section ptdd2
?setsection ptdd2
                                                                       !00241A09
********************************************************************* !!00248
*              BASE24-pos Terminal Data Dynamic file - scratch pad  * !!00249
********************************************************************* !!00250
                                                                       !00251
?comments
                                                                       !00254
                                                                       !00255
*             The PTDD2 contains dynamic records for each POS type    !!00256
*             terminal in the logical network controlled by the       !!00257
*             BASE24 network.  The PTDD2 is used to store the         !!00258
*             token data that existed in the BASE24-pos Standard      !!00259
*             Internal Message (i.e., PSTM) for the last transaction  !!00260
*             processed by BASE24 and acquired at this terminal.      !!00261
*                                                                     !!00262
*             This section describes the fields included in a PTDD2   !!00263
*             record.                                                 !!00264
*                                                                     !!00265
*             LCONF ASSIGN:     POS-PTD-DYN-SCRATCH-PAD               !!00266
                                                                       !00267
                                                                       !00268
RECORD PTDD2.                   FILE IS "PTDD2" KEY-SEQUENCED.         !00269
                                                                       !00270
*             Unique identifier for this terminal.                    !!00271
                                                                       !00272
02 TERM                                TYPE TDF-PRIKEY   KEYTAG 0.     !00273
                                                                       !00274
*             The sequence number associated with this transaction.   !!00275
                                                                       !00276
02 SEQ-NUM                             PIC X(12).                      !00277
                                                                       !00278
*             Contains the token data that existed in the BASE24-pos  !!00279
*             Standard Internal Message (i.e., PSTM) for the last     !!00280
*             transaction processed by BASE24 and acquired at this    !!00281
*             terminal.                                               !!00282
                                                                       !00283
02 DATA-AREA                           PIC X(4034).                    !00284
                                                                       !00285
END                                                                    !00286
                                                                       !00287
                                                                       !00287A00
?nocomments
?page
?section ptds1
?setsection ptds1
                                                                       !00287A09
********************************************************************* !!00294
*              BASE24-pos Terminal Data Static file - general data  * !!00295
********************************************************************* !!00296
                                                                       !00297
?comments
                                                                       !00300
*             The PTDS1 contains static records for each POS type     !!00301
*             terminal in the logical network controlled by the       !!00302
*             BASE24 network.  The PTDS1 is used to define the        !!00303
*             characteristics of the terminal that does not           !!00304
*             change from transaction to transaction (e.g.,           !!00305
*             terminal owner and address).                            !!00306
*                                                                     !!00307
*             This section describes the fields included in a PTDS1   !!00308
*             record.                                                 !!00309
*                                                                     !!00310
*             LCONF ASSIGN:    POS-PTD-STATIC-GNRL                    !!00311
                                                                       !00312
RECORD PTDS1.                   FILE IS "PTDS1" KEY-SEQUENCED.         !00313
                                                                       !00314
*             A unique identifier, terminal ID, for the terminal,     !!00315
*             which is used to access the appropriate PTDS record.    !!00316
*             This field contains the network symbolic station name.  !!00317
                                                                       !00318
02 TERM-ID                             TYPE TDF-PRIKEY   KEYTAG 0.     !00319
                                                                       !00320
*             Identifies the last file maintenance action on this     !!00321
*             record.  This includes the user who did the update, the !!00322
*             time at which it was done, and the type of update.      !!00323
                                                                       !00324
*             An indicator that identifies the last file maintenance  !!00325
*             action on this record.  This includes the user who      !!00326
*             performed the update, the time at which it was done,    !!00327
*             the type of update, and the terminal originating the    !!00328
*             update transaction.                                     !!00329
                                                                       !00330
02 LAST-AFM                            TYPE *.                         !00331
                                                                       !00332
*             The offset to the common data in the record data area   !!00333
*             (DATA-AREA) of this record is not defined, since a      !!00334
*             core-ofst field would always be zero (i.e., the common  !!00335
*             data is always at the beginning of the record data      !!00336
*             area).                                                  !!00337
*                                                                     !!00338
*             The length of the common data in this record.  This     !!00339
*             length is not device specific.                          !!00340
                                                                       !00341
02 CORE-LGTH                           TYPE BINARY 16.                 !00342
                                                                       !00343
*             The offset to the device information data in the record !!00344
*             data area (DATA-AREA) of this record.  This offset is   !!00345
*             always equal to the length of the core data.            !!00346
                                                                       !00347
02 DEV-INFO-OFST                       TYPE BINARY 16.                 !00348
                                                                       !00349
*             The length of the device information data in this       !!00350
*             record.  This length is device specific.                !!00351
*                                                                     !!00352
*             Currently not used by POS, the length is zero.          !!00353
                                                                       !00354
02 DEV-INFO-LGTH                       TYPE BINARY 16.                 !00355
                                                                       !00356
*             The offset to the device dependent data in the record   !!00357
*             data area (DATA-AREA) of this record.                   !!00358
                                                                       !00359
02 DEV-DATA-OFST                       TYPE BINARY 16.                 !00360
                                                                       !00361
*             The length of the device dependent data in this record. !!00362
*             This length is device specific.                         !!00363
                                                                       !00364
02 DEV-DATA-LGTH                       TYPE BINARY 16.                 !00365
                                                                       !00366
*             Contains the common data, the device information data,  !!00367
*             and the device dependent data for this record.  Please  !!00368
*             refer to the appropriate device handler subvolume for   !!00369
*             the device information data and the device dependent    !!00370
*             data layouts.                                           !!00371
                                                                       !00372
02 DATA-AREA                           PIC X(3996).                    !00373
                                                                       !00374
END                                                                    !00375
                                                                       !00376
?page
?section ptdd1-core
?setsection ptdd1-core
                                                                       !00383
*             The following structure defines the common data area for!!00384
*             the records defined in the BASE24-pos Terminal Data     !!00385
*             Dynamic file - general data (i.e., PTDD1).              !!00386
*                                                                     !!00387
*             This data will be located at beginning of the record    !!00388
*             data area of the PTDD1.                                 !!00389
                                                                       !00390
DEFINITION PTDD1-CORE.                                                 !00391
                                                                       !00392
*             The type of terminal defined in the record.  Valid      !!00393
*             values are:                                             !!00394
*                                                                     !!00395
*             41 = ACI Standard                                       !!00396
*             78 = Merchant Host Interface                            !!00397
*             D0 = Hypercom TDS                                       !!00398
*             D6 = BASE24 SPDH (fuel)                                 !!00399
*             D7 = BASE24 SPDH (electronic cash register)             !!00400
*             D8 = BASE24 SPDH (script dispenser)                     !!00401
                                                                       !00402
02 TERM-TYP                            PIC X(2).                       !00403
                                                                       !00404
*             The value in this field identifies the group of which   !!00405
*             the terminal is a member.  Terminal groups are          !!00406
*             generally used for DCT functions, such as down-line     !!00407
*             loading and stopping and starting processes.  The value !!00408
*             in this field is also an index into the ACI Standard    !!00409
*             Device Handler Configuration File (ACNF).               !!00410
                                                                       !00411
02 TERM-GRP                            PIC X(4).                       !00412
                                                                       !00413
*             The institution's route and transit number,             !!00414
*             transit/routing number, or issuer identification number !!00415
*             of the terminal owner.  The identification data is      !!00416
*             right-justified with high-order zero fill.              !!00417
                                                                       !00418
02 RTTN                                TYPE ID-NUM.                    !00419
                                                                       !00420
*             The value in this field specifies the PAD character     !!00421
*             utilized in the formation of the external message's PIN !!00422
*             block if the PIN/PAD PIN block format is used in PIN    !!00423
*             encryption.                                             !!00424
*             Valid values are A through F and 0 through 9.           !!00425
                                                                       !00426
02 PIN-PAD-CHAR                        PIC X.                          !00427
                                                                       !00428
*             The values in the following fields relate to the        !!00429
*             encryption and decryption of PIN data.  Several of      !!00430
*             these fields are in support of the Security Device      !!00431
*             Modules.                                                !!00432
                                                                       !00433
02 ENCR-PIN.                                                           !00434
                                                                       !00435
*             A code indicating whether the terminal has PIN entry    !!00436
*             capability.  Valid values are:                          !!00437
*                                                                     !!00438
*             0 = No, Terminal does not have PIN entry capability     !!00439
*             1 = Yes, Terminal has PIN entry capability              !!00440
                                                                       !00441
   04 PIN-VAL-TERM                     PIC X.                          !00442
                                                                       !00443
*             A code indicating the type of PIN encryption used.      !!00444
*             Valid values are:                                       !!00445
*                                                                     !!00446
*             00 = No encryption                                      !!00447
*             01 = DES algorithm (non-security device, PIN/PAD        !!00448
*                  PIN block)                                         !!00449
*             02 = DES algorithm (non-security device, ANSI standard  !!00450
*                  PIN/PAN PIN block, 12 right-most digits excluding  !!00451
*                  the check digit)                                   !!00452
*             03 = DES algorithm (security device, PIN/PAD PIN block) !!00453
*             04 = DES algorithm (security device, ANSI standard      !!00454
*                  PIN/PAN PIN block, 12 right-most digits of the     !!00455
*                  PAN, excluding the check digit)                    !!00456
*             06 = Reversible PIN encryption (used only with the 4B   !!00457
*                  Device Handler)                                    !!00458
                                                                       !00458B00
*             07 = DUKPT (derived unique key per transaction)          !00458B01
                                                                       !00458B02
                                                                       !00459
   04 PIN-ENCRYPT-TYP                  PIC X(2).                       !00460
                                                                       !00461
*             The following keys are used in encrypting data from or  !!00462
*             to the terminal.                                        !!00463
                                                                       !00464
   04 ENCR-KEYS.                                                       !00465
                                                                       !00466
*             The PIN master key.                                     !!00467
*                                                                     !!00468
*             The value in this field is used by the ASMCOM and RSMCOM!!00469
*             security tools in check digit validation/generation and !!00470
*             security key translation functions.                     !!00471
*                                                                     !!00472
*             This field may contain 16 HEX digits or 32 HEX digits   !!00473
*             compressed to 16 bytes.                                 !!00474
                                                                       !00475
      06 M-KEY                         TYPE KEYX.                      !00476
                                                                       !00477
*             The PIN encryption key used by this terminal.           !!00478
*                                                                     !!00479
*             The value in this field is used by the ASMCOM and RSMCOM!!00480
*             security tools in security key translation functions.   !!00481
                                                                       !00482
      06 P-KEY                         TYPE KEYX.                      !00483
                                                                       !00484
*             This field ensures word-alignment.                      !!00485
                                                                       !00486
02 USER-FLD2                           PIC X.                          !00487
                                                                       !00488
*             The values in the following fields relate to the        !!00489
*             Message Authentication Code (MAC) associated data       !!00490
*             flowing to and from the terminal, and to the            !!00491
*             verification of MAC data presented by the terminal. The !!00492
*             values in several of these fields are in support of the !!00493
*             Security Device Modules.                                !!00494
                                                                       !00495
02 MAC-DATA.                                                           !00496
                                                                       !00497
*             A code indicating the type of MAC encryption used.      !!00498
*             Valid values are:                                       !!00499
*                                                                     !!00500
*             00 = No encryption (default)                            !!00501
*             01 = Software message authentication                    !!00502
*             02 = Proprietary software message authentication        !!00503
*             03 = Security Module message authentication             !!00504
                                                                       !00505
   04 MAC-ENCRYPT-TYP                  PIC X(2).                       !00506
                                                                       !00507
*             The following keys are used in encrypting data from or  !!00508
*             to the terminal.                                        !!00509
                                                                       !00510
   04 ENCR-KEYS.                                                       !00511
                                                                       !00512
*             The MAC master key.                                     !!00513
*                                                                     !!00514
*             The value in this field is used by the ASMCOM and RSMCOM!!00515
*             security tools in check digit validation/generation and !!00516
*             security key translation functions.                     !!00517
*                                                                     !!00518
*             This field may contain 16 HEX digits or 32 HEX digits   !!00519
*             compressed to 16 bytes.                                 !!00520
                                                                       !00521
      06 MAS-KEY                       PIC X(16).                      !00522
                                                                       !00523
*             The MAC encryption key used by this terminal.           !!00524
*                                                                     !!00525
*             The value in this field is used by the ASMCOM and RSMCOM!!00526
*             security tools in security key translation functions.   !!00527
                                                                       !00528
      06 MAC-KEY                       PIC X(16).                      !00529
                                                                       !00530
*                                                                     !!00531
*             The length of the PIN/MAC Master Key supported by       !!00532
*             this device.  This field will be supported in a         !!00533
*             future release.  Valid values are:                      !!00534
*                                                                     !!00535
*             1 = Single Length PIN/MAC Master Key                    !!00536
*             2 = Double Length PIN/MAC Master Key                    !!00537
*                                                                     !!00538
                                                                       !00539
02 KEY-LGTH                            PIC X.                          !00540
                                                                       !00541
*             This field ensures word-alignment.                      !!00542
                                                                       !00543
02 USER-FLD3                           PIC X.                          !00544
                                                                       !00545
*             This field is used as a work buffer by the Device       !!00546
*             Handler when processing PINs.  This field is not        !!00547
*             displayed by the BASE24 system.                         !!00548
                                                                       !00549
02 DES-WORK-AREA                       TYPE BINARY 16 OCCURS 52 TIMES. !00550
                                                                       !00551
*             Check digits for PIN master key                         !!00552
*             (ENCR-PIN.ENCR-KEYS.M-KEY) validation.  The ASMCOM and  !!00553
*             RSMCOM security tools use the value of this field to    !!00554
*             validate the PIN master key.  Valid values are          !!00555
*             hexadecimal characters (0-9, A-F), stored as binary     !!00556
*             data.                                                   !!00557
                                                                       !00558
02 M-KEY-CHK-VALUE                     PIC X(3).                       !00559
                                                                       !00560
*             Check digits for MAC master key                         !!00561
*             (MAC-DATA.ENCR-KEYS.MAS-KEY) validation.  The ASMCOM and!!00562
*             RSMCOM security tools use the value of this field to    !!00563
*             validate the MAC master key.  Valid values are          !!00564
*             hexadecimal characters (0-9, A-F), stored as binary     !!00565
*             data.                                                   !!00566
                                                                       !00567
02 MAS-KEY-CHK-VALUE                   PIC X(3).                       !00568
                                                                       !00569
                                                                       !00570A00
                                                                       !00570A01
*             A code identifying the primary currency of the          !
*             terminal.  This is the currency in which all financial  !
*             amounts held within this record are currently           !
*             maintained.  (Also known as the Terminal Currency.)      !00570A08
                                                                       !00570A09
*                                                                     !!00573
*             Valid values are listed in the following booklet:       !!00574
*             Codes for Representation of Currencies and Funds,       !!00575
                                                                       !00576A00
*             ISO 4217-1995.                                          !
                                                                       !00576A03
*                                                                     !!00577
                                                                       !00578
02 CRNCY-CDE                           TYPE *.                         !00579
                                                                       !00580
*             A code indicating the current status of the terminal.   !!00581
*             Valid values are:                                       !!00582
*                                                                     !!00583
*             0 = Activated                                           !!00584
*             1 = Deactivated (default)                               !!00585
*             2 = Pending deactivation                                !!00586
                                                                       !00587
02 DEACTIVATE-FLG                      PIC X.                          !00588
                                                                       !00589
*             The time difference (plus or minus minutes) between     !!00590
*             this terminal and the Tandem processor location.        !!00591
*             This offset is also used by authorization to determine  !!00592
*             if a balancing transaction is within the cutover        !!00593
*             window.                                                 !!00594
                                                                       !00595
02 TIM-OFST                            TYPE BINARY 16.                 !00596
                                                                       !00597
*             The last transaction sequence number.  If the terminal  !!00598
*             supports the generation of such a number, that is where !!00599
*             this number comes from; otherwise it is generated by    !!00600
*             the terminal's Device Handler.                          !!00601
                                                                       !00602
02 TRAN-SEQ-NUM                        TYPE BINARY 64.                 !00603
                                                                       !00604
*             The number of services supported by the terminal.       !!00605
                                                                       !00606
02 NUM-SRV                             TYPE BINARY 16.                 !00607
                                                                       !00608
*             The card type, default transaction profile, and floor   !!00609
*             limits are specified for each of up to 30 services.     !!00610
*             Transaction counters and amount accumulators are also   !!00611
*             provided for each service.                              !!00612
                                                                       !00613
02 SRV                          OCCURS 30 TIMES.                       !00614
                                                                       !00615
*             One- or two-character codes are used to identify card   !!00616
*             types in files throughout BASE24.  The same codes must  !!00617
*             be used for a particular card type in all of the files. !!00618
*             These codes are also used to identify service types in  !!00619
*             BASE24-pos.  Codes used in this field are either        !!00620
*             reserved by BASE24 or user-defined. Reserved codes are  !!00621
*             to be used only as defined, and include:                !!00622
*                                                                     !!00623
*             AD = Administrative (BASE24-atm only)                   !!00624
*             AX = American Express credit                            !!00625
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00626
*                  only)                                              !!00627
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00628
*                  CC-CZ)                                             !!00629
*             CB = Carte Blanche credit                               !!00630
*             D  = Demonstration (BASE24-atm only)                    !!00631
*             DC = Diners Club credit                                 !!00632
*             DS = Discover (Sears) credit                            !!00633
*             M  = MasterCard credit                                  !!00634
*             MD = MasterCard debit (See BASE24-pos note below)       !!00635
*             MM = MasterCard dual (See BASE24-pos note below)        !!00636
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00637
*             SC = Special, Check (BASE24-pos only)                   !!00638
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00639
*                  Check Application only)                            !!00640
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00641
*                  Application only)                                  !!00642
*             V  = VISA credit                                        !!00643
*             VD = VISA debit (See BASE24-pos note below)             !!00644
*             VV = VISA dual (See BASE24-pos note below)              !!00645
*                                                                     !!00646
*             Codes with a first character of C, except code CB, are  !!00647
*             recommended to identify private label credit cards.     !!00648
*                                                                     !!00649
*             Codes with a first character of P are required to       !!00650
*             identify proprietary debit cards.  BASE24 treats cards  !!00651
*             with proprietary debit codes and codes MD and VD as     !!00652
*             debit cards and treats cards with all other codes as    !!00653
*             credit cards.                                           !!00654
*                                                                     !!00655
*             Administrative (AD), Business deposit (BD),             !!00656
*             Demonstration (D), Special purpose (SP), and Super      !!00657
*             teller (ST) are special-use card types used by          !!00658
*             BASE24-atm.                                             !!00659
*                                                                     !!00660
*             Business deposit (BD) is also a special-use card type   !!00661
*             used by BASE24-teller to identify cards that can only   !!00662
*             be used to initiate deposit transactions.               !!00663
*             BASE24-teller does not perform any other processing     !!00664
*             based on card type; however, BASE24 guidelines should   !!00665
*             still be used when establishing card types for          !!00666
*             BASE24-teller.                                          !!00667
*                                                                     !!00668
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00669
*             processed as debit or credit card types, based on the   !!00670
*             default combo card type specified in the CPF.           !!00671
*                                                                     !!00672
*             Special, Check (SC) is a special-use card type used to  !!00673
*             initiate BASE24-pos check guarantee and check           !!00674
*             verification transactions only.                         !!00675
*                                                                     !!00676
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00677
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00678
*             VISA dual (VV) card types in the PRDF and PTD.          !!00679
*             BASE24-pos automatically includes the MD and MM card    !!00680
*             types with the MasterCard credit (M) card type, and     !!00681
*             automatically includes the VD and VV card types with    !!00682
*             the VISA credit (V) card type.                          !!00683
*                                                                     !!00684
*             User-defined Codes:  The user can add any one- or two-  !!00685
*             character code not included in the reserved code list   !!00686
*             above, according to the following guidelines:           !!00687
*                                                                     !!00688
*             o  The first character must be alphabetic (A, B, D-O,   !!00689
*                and Q-Z).                                            !!00690
*             o  The second character can be A-Z, 0-9, or a blank.    !!00691
*             o  A valid COBNAMES table entry is recommended for each !!00692
*                user-defined code.                                   !!00693
                                                                       !00694
   04 TYP                              PIC X(2).                       !00695
                                                                       !00696
*             The floor limit, in whole currency units, (e.g.,        !!00697
*             dollars), for normal purchase transactions involving    !!00698
*             this card type performed at the terminal.  This floor   !!00699
*             limit is used only if it is less than the value in      !!00700
*             the PR-FLR-LMT field in the Authorization Selection     !!00701
*             Table File (AST), provided both fields specify a floor  !!00702
*             limit.  Zeros in this field indicate no PTD floor       !!00703
*             limit is specified for normal purchases.                !!00704
                                                                       !00705
   04 NP-FLR-LMT                       TYPE BINARY 32.                 !00706
                                                                       !00707
*             The floor limit, in whole currency units, (e.g.,        !!00708
*             dollars), for cash advance transactions involving this  !!00709
*             card type performed at the terminal.  This floor limit  !!00710
*             is used only if it is less than the value in the CA-    !!00711
*             FLR-LMT field in the AST, provided both fields specify  !!00712
*             a floor limit.  Zeros in this field indicate no PTD     !!00713
*             floor limit is specified for cash advance transactions. !!00714
                                                                       !00715
   04 CA-FLR-LMT                       TYPE BINARY 32.                 !00716
                                                                       !00717
*             The floor limit, in whole currency units, (e.g.,        !!00718
*             dollars), for mail/phone order transactions involving   !!00719
*             this card type performed at the terminal.  This floor   !!00720
*             limit is used only if it is less than the value in the  !!00721
*             MO-FLR-LMT field in the AST, provided both fields       !!00722
*             specify a floor limit.  Zeros in this field indicate no !!00723
*             PTD floor limit is specified for mail/phone order       !!00724
*             transactions.                                           !!00725
                                                                       !00726
   04 MO-FLR-LMT                       TYPE BINARY 32.                 !00727
                                                                       !00728
*             The transaction amount limit, in whole currency units,  !!00729
*             (e.g., dollars), for transactions involving this card   !!00730
*             type performed at the terminal.  Transactions for       !!00731
*             amounts exceeding this limit are denied.  This limit    !!00732
*             does not apply to cards with VIP status.  If a value    !!00733
*             greater than zero is specified in the TRAN-LMT field of !!00734
*             the PRDF as well as this field, the lower of the two    !!00735
*             values is used as the limit.  If this field contains    !!00736
*             zeros, the value in the TRAN-LMT field in the PRDF is   !!00737
*             used (and vice versa).  If the TRAN-LMT fields in both  !!00738
*             the PRDF and PTD contain zeros, no limit is checked.    !!00739
                                                                       !00740
   04 TRAN-LMT                         TYPE BINARY 32.                 !00741
                                                                       !00742
*             The number of debit transactions involving this card    !!00743
*             type that have occurred at the terminal during the      !!00744
*             current batch.                                          !!00745
                                                                       !00746
   04 DB-CNT                           TYPE BINARY 16.                 !00747
                                                                       !00748
*             The total amount, in whole and fractional currency      !!00749
*             units (e.g., dollars and cents), of debit transactions  !!00750
*             involving this card type that have occurred at the      !!00751
*             terminal during the current batch.                      !!00752
                                                                       !00753
   04 DB                               TYPE BINARY 64.                 !00754
                                                                       !00755
*             The number of credit transactions involving this card   !!00756
*             type that have occurred at the terminal during the      !!00757
*             current batch.                                          !!00758
                                                                       !00759
   04 CR-CNT                           TYPE BINARY 16.                 !00760
                                                                       !00761
*             The total amount, in whole and fractional currency      !!00762
*             units (e.g., dollars and cents), of credit transactions !!00763
*             involving this card type that have occurred at the      !!00764
*             terminal during the current batch.                      !!00765
                                                                       !00766
   04 CR                               TYPE BINARY 64.                 !00767
                                                                       !00768
*             The number of adjustment transactions involving this    !!00769
*             card type that have occurred at the terminal during the !!00770
*             current batch.                                          !!00771
                                                                       !00772
   04 ADJ-CNT                          TYPE BINARY 16.                 !00773
                                                                       !00774
*             The total amount, in whole and fractional currency      !!00775
*             units (e.g., dollars and cents), of adjustment          !!00776
*             transactions involving this card type that have         !!00777
*             occurred at the terminal during the current batch.      !!00778
                                                                       !00779
   04 ADJ                              TYPE BINARY 64.                 !00780
                                                                       !00781
*             A code used to define how the draft capture flag        !!00782
*             (TRAN.DFT-CAPTURE-FLG field in the PSTM) will be set    !!00783
*             for transactions involving this card type handled by    !!00784
*             the terminal.  Valid values are:                        !!00785
*                                                                     !!00786
*             0 = Authorize only  (default)                           !!00787
*             1 = Authorize and capture                               !!00788
*             2 = Authorize and expect electronic follow-up           !!00789
*             3 = Terminal determines data capture mode for each      !!00790
*                 transaction                                         !!00791
*                                                                     !!00792
*             The draft capture flag will be set equal to this code   !!00793
*             for values in this field of 0, 1, or 2.  A value of 3   !!00794
*             in this field indicates the draft capture flag will be  !!00795
*             specified in the message received from the terminal.    !!00796
                                                                       !00797
   04 TRAN-PROFILE                     PIC X.                          !00798
                                                                       !00799
*             The flag describing how BASE24 should handle electronic !!00800
*             follow-up transactions for this card type.  Valid codes !!00801
*             are:                                                    !!00802
*                                                                     !!00803
*             0   = Post the transaction.                             !!00804
*             1   = Terminal will send an electronic follow-up        !!00805
*                   transaction to BASE24, and the electronic         !!00806
*                   follow-up transaction will not be posted.         !!00807
*             2-9 = Reserved for future use                           !!00808
                                                                       !00809
   04 ELEC-FOLLOWUP                    PIC X.                          !00810
                                                                       !00811
*             The current settlement date (YYMMDD) for this terminal. !!00812
*             All transactions originating at the terminal are posted !!00813
*             on this date regardless of card issuer's current        !!00814
*             business date.                                          !!00815
*             Upon terminal cutover, the date in this field is        !!00816
*             changed to the date reflected in the NXT-POST-DAT field !!00817
*             in the PRDF.                                            !!00818
                                                                       !00819
02 POST-DAT                            TYPE DAT.                       !00820
                                                                       !00821
*             A code indicating the method invoked to perform the     !!00822
*             last balancing of this terminal.  Valid values are:     !!00823
*                                                                     !!00824
*             5 = Balanced--Terminal balanced by a close transaction  !!00825
*                 from the terminal.  Totals sent by terminal agreed  !!00826
*                 with BASE24 totals or terminal did not send any     !!00827
*                 totals.  Totals were written to the PTLF and        !!00828
*                 cleared.                                            !!00829
*             6 = Balanced (with problems)--Terminal balanced by a    !!00830
*                 close transaction from terminal.  Totals sent by    !!00831
*                 terminal did not agree with BASE24 totals and       !!00832
*                 require verification.  Totals were written to the   !!00833
*                 PTLF and cleared.                                   !!00834
*             8 = Force-balanced (incomplete batch)--Terminal was cut !!00835
*                 over by Settlement Initiator at the time specified  !!00836
*                 in the RETAILER-BAL-AND-CUTVR-END field in the      !!00837
*                 PRDF.  The terminal was cut over to a new reporting !!00838
*                 day, and its totals were written to the PTLF, but   !!00839
*                 only current network totals were reset to zero.     !!00840
*                 This method is used when the value in the TERM-     !!00841
*                 CUTOVER-TC field in the PTD equals 0, 1, or 2, and  !!00842
*                 the close transaction has not been received from    !!00843
*                 the terminal within the time window defined by the  !!00844
*                 values in the  RETAILER-BAL-AND-CUTVR-START and     !!00845
*                 RETAILER-BAL-AND-CUTVR-END fields in the PRDF.      !!00846
*             9 = Force-balanced--Terminal was cut over by Settlement !!00847
*                 Initiator at the time specified in the RETAILER-    !!00848
*                 BAL-AND-CUTVR-END field in the PRDF.  This method is!!00849
*                 used when the value of the TERM-CUTOVER-TC field in !!00850
*                 the PTD equals 3.                                   !!00851
*                 Also set to 9 when the terminal was cut over by the !!00852
*                 device handler on the first financial transaction   !!00853
*                 after the retailer cutover balance start time as    !!00854
*                 specified in the PRDF.  This method is used when    !!00855
*                 the value of the TERM-CUTOVER-TC field in the PTD   !!00856
*                 equals 4.                                           !!00857
*                 In both cases, the terminal was cut over to a new   !!00858
*                 reporting day, its totals were written to the       !!00859
*                 PTLF and all BASE24 totals for the terminal were    !!00860
*                 cleared.                                            !!00861
                                                                       !00862
02 BAL-FLG                             PIC X.                          !00863
                                                                       !00864
*             This field is not used.                                 !!00865
                                                                       !00866
02 USER-FLD4                           PIC X.                          !00867
                                                                       !00868
*             The date (YYMMDD) the terminal was last cut over.       !!00869
                                                                       !00870
02 LAST-SETL-DAT                       TYPE BINARY 32.                 !00871
                                                                       !00872
*             The time (HHMMSS) the terminal was last cut over.       !!00873
                                                                       !00874
02 LAST-SETL-TIM                       TYPE BINARY 16.                 !00875
                                                                       !00876
*             The identification number, clerk ID, of the employee    !!00877
*             logged on to the terminal.  The value in this field is  !!00878
*             used for terminal logon security verification.          !!00879
                                                                       !00880
02 CLERK-ID                            PIC X(6).                       !00881
                                                                       !00882
*             A free-form informational field used at the discretion  !!00883
*             of the institution.  Typically, this field contains     !!00884
*             Automated Clearinghouse (ACH) information which         !!00885
*             BASE24-pos passes on to the host for use by the ACH     !!00886
*             system.  Information in this field has no impact on     !!00887
*             BASE24-pos processing.                                  !!00888
                                                                       !00889
02 BILLING-INFO                        PIC X(10).                      !00890
                                                                       !00891
*             The following fields contain clerk totals information   !!00892
*             for the operator who is currently logged on to the      !!00893
*             terminal.  These totals are cleared by a batch close    !!00894
*             transaction or a new operator logon.                    !!00895
                                                                       !00896
02 CLERK-TOTS.                                                         !00897
                                                                       !00898
*             The number of all debit transactions occurring under    !!00899
*             the current operator's logon since the last batch close !!00900
*             transaction.                                            !!00901
                                                                       !00902
   04 DB-CNT                           TYPE BINARY 16.                 !00903
                                                                       !00904
*             The amount of all debit transactions, in whole and      !!00905
*             fractional currency units (e.g., dollars and cents),    !!00906
*             occurring under the current operator's logon since the  !!00907
*             last batch close transaction.                           !!00908
                                                                       !00909
   04 DB-AMT                           TYPE BINARY 64.                 !00910
                                                                       !00911
*             The number of all credit transactions occurring under   !!00912
*             the current operator's logon since the last batch close !!00913
*             transaction.                                            !!00914
                                                                       !00915
   04 CR-CNT                           TYPE BINARY 16.                 !00916
                                                                       !00917
*             The amount of all credit transactions, in whole and     !!00918
*             fractional currency units (e.g., dollars and cents),    !!00919
*             occurring under the current operator's logon since the  !!00920
*             last batch close transaction.                           !!00921
                                                                       !00922
   04 CR-AMT                           TYPE BINARY 64.                 !00923
                                                                       !00924
*             The number of all adjustment transactions occurring     !!00925
*             under the current operator's logon since the last batch !!00926
*             close transaction.                                      !!00927
                                                                       !00928
   04 ADJ-CNT                          TYPE BINARY 16.                 !00929
                                                                       !00930
*             The amount of all adjustment transactions, in whole and !!00931
*             fractional currency units (e.g., dollars and cents),    !!00932
*             occurring under the current operator's logon since the  !!00933
*             last batch close transaction.                           !!00934
                                                                       !00935
   04 ADJ-AMT                          TYPE BINARY 64.                 !00936
                                                                       !00937
*             The number of all cash back transactions occurring      !!00938
*             under the current operator's logon since the last batch !!00939
*             close transaction.                                      !!00940
                                                                       !00941
   04 CASH-CNT                         TYPE BINARY 16.                 !00942
                                                                       !00943
*             The amount of all cash back transactions, in whole and  !!00944
*             fractional currency units (e.g., dollars and cents),    !!00945
*             occurring under the current operator's logon since the  !!00946
*             last batch close transaction.                           !!00947
                                                                       !00948
   04 CASH-AMT                         TYPE BINARY 64.                 !00949
                                                                       !00950
*             The number of all check transactions occurring          !!00951
*             under the current operator's logon since the last       !!00952
*             batch close transaction.                                !!00953
                                                                       !00954
   04 CHK-CNT                          TYPE BINARY 16.                 !00955
                                                                       !00956
*             The amount of all check transactions, in whole and      !!00957
*             fractional currency units (e.g., dollars and            !!00958
*             cents), occurring under the current operator's logon    !!00959
*             since the last batch close transaction.                 !!00960
                                                                       !00961
   04 CHK-AMT                          TYPE BINARY 64.                 !00962
                                                                       !00963
*             The following fields contain the counts and amounts of  !!00964
*             all debit, credit, and adjustment transactions          !!00965
*             processed during the current batch.                     !!00966
*                                                                     !!00967
*             Settlement Initiator will clear batch totals at the end !!00968
*             of the retailer's balancing window if the value in the  !!00969
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!00970
*             forced).                                                !!00971
*                                                                     !!00972
*             The device handler will clear batch totals on the first !!00973
*             financial transaction processed during the retailer     !!00974
*             window lead time if the value in the TERM-CUTOVER-TC    !!00975
*             field in this record is 4 (device handler network force !!00976
*             cutover).                                               !!00977
*                                                                     !!00978
*             A batch close transaction from the terminal is needed   !!00979
*             to clear batch totals if the value in the TERM-CUTOVER- !!00980
*             TC field is 0, 1, or 2 (operator request).  If the      !!00981
*             terminal does not support a batch close transaction,    !!00982
*             the transaction specified by the value in the TERM-     !!00983
*             CUTOVER-TC field will clear batch totals during         !!00984
*             terminal cutover.                                       !!00985
                                                                       !00986
02 BATCH.                                                              !00987
                                                                       !00988
*             The number of all debit transactions processed during   !!00989
*             the current batch.                                      !!00990
                                                                       !00991
   04 DB-CNT                           TYPE BINARY 16.                 !00992
                                                                       !00993
*             The total amount, in whole and fractional currency      !!00994
*             units (e.g., dollars and cents), of all debit           !!00995
*             transactions processed during the current batch.        !!00996
                                                                       !00997
   04 DB                               TYPE BINARY 64.                 !00998
                                                                       !00999
*             The number of all credit transactions processed during  !!01000
*             the current batch.                                      !!01001
                                                                       !01002
   04 CR-CNT                           TYPE BINARY 16.                 !01003
                                                                       !01004
*             The total amount, in whole and fractional currency      !!01005
*             units (e.g., dollars and cents), of all credit          !!01006
*             transactions processed during the current batch.        !!01007
                                                                       !01008
   04 CR                               TYPE BINARY 64.                 !01009
                                                                       !01010
*             The number of all adjustment transactions processed     !!01011
*             during the current batch.                               !!01012
                                                                       !01013
   04 ADJ-CNT                          TYPE BINARY 16.                 !01014
                                                                       !01015
*             The total amount, in whole and fractional currency      !!01016
*             units (e.g., dollars and cents), of all adjustment      !!01017
*             transactions processed during the current batch.        !!01018
                                                                       !01019
   04 ADJ                              TYPE BINARY 64.                 !01020
                                                                       !01021
*             The following fields contain the counts and amounts of  !!01022
*             all batch draft capture debit, credit, and adjustment   !!01023
*             transactions processed during the current batch.        !!01024
*                                                                     !!01025
*             Settlement Initiator will clear batch draft capture     !!01026
*             totals at the end of the retailer's balancing window if !!01027
*             the value in the TERM-CUTOVER-TC field in this record   !!01028
*             is 3 (network-forced).                                  !!01029
*                                                                     !!01030
*             The device handler will clear batch draft capture totals!!01031
*             on the first financial transaction processed during the !!01032
*             retailer window lead time if the value in the           !!01033
*             TERM-CUTOVER-TC field in this record is 4 (device       !!01034
*             handler network force cutover).                         !!01035
*                                                                     !!01036
*             A batch close transaction from the terminal is needed   !!01037
*             to clear batch draft capture totals if the value in the !!01038
*             TERM-CUTOVER-TC field is 0, 1, or 2 (operator request). !!01039
*             If the terminal does not support a batch close          !!01040
*             transaction, the transaction specified by the value in  !!01041
*             the TERM-CUTOVER-TC field will clear batch totals       !!01042
*             during terminal cutover.                                !!01043
                                                                       !01044
02 BATCH-DC.                                                           !01045
                                                                       !01046
*             The number of all debit draft capture transactions      !!01047
*             processed during the current batch.                     !!01048
                                                                       !01049
   04 DB-CNT                           TYPE BINARY 16.                 !01050
                                                                       !01051
*             The total amount, in whole and fractional currency      !!01052
*             units (e.g., dollars and cents), of all debit draft     !!01053
*             capture transactions processed during the current       !!01054
*             batch.                                                  !!01055
                                                                       !01056
   04 DB                               TYPE BINARY 64.                 !01057
                                                                       !01058
*             The number of all credit draft capture transactions     !!01059
*             processed during the current batch.                     !!01060
                                                                       !01061
   04 CR-CNT                           TYPE BINARY 16.                 !01062
                                                                       !01063
*             The total amount, in whole and fractional currency      !!01064
*             units (e.g., dollars and cents), of all credit draft    !!01065
*             capture transactions processed during the current       !!01066
*             batch.                                                  !!01067
                                                                       !01068
   04 CR                               TYPE BINARY 64.                 !01069
                                                                       !01070
*             The number of all adjustment draft capture transactions !!01071
*             processed during the current batch.                     !!01072
                                                                       !01073
   04 ADJ-CNT                          TYPE BINARY 16.                 !01074
                                                                       !01075
*             The total amount, in whole and fractional currency      !!01076
*             units (e.g., dollars and cents), of all adjustment      !!01077
*             draft capture transactions processed during the current !!01078
*             batch.                                                  !!01079
                                                                       !01080
   04 ADJ                              TYPE BINARY 64.                 !01081
                                                                       !01082
*             The following fields contain the total counts and       !!01083
*             amounts of all debit, credit, and adjustment            !!01084
*             transactions processed during the current shift.        !!01085
*                                                                     !!01086
*             Settlement Initiator will clear shift totals at the end !!01087
*             of the retailer's balancing window if the value in the  !!01088
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01089
*             forced).                                                !!01090
*                                                                     !!01091
*             The device handler will clear shift totals on the first !!01092
*             financial transaction processed during the retailer     !!01093
*             window lead time if the value in the TERM-CUTOVER-TC    !!01094
*             field in this record is 4 (device handler network force !!01095
*             cutover).                                               !!01096
*                                                                     !!01097
*             A shift close transaction from the terminal is needed   !!01098
*             to clear shift totals if the value in the TERM-CUTOVER- !!01099
*             TC field is 0, 1, or 2 (operator request).  If the      !!01100
*             terminal does not support a shift close transaction,    !!01101
*             the transaction specified by the value in the TERM-     !!01102
*             CUTOVER-TC field will clear shift totals during         !!01103
*             terminal cutover.                                       !!01104
                                                                       !01105
02 SHIFT.                                                              !01106
                                                                       !01107
*             The number of all debit transactions processed during   !!01108
*             the current shift.                                      !!01109
                                                                       !01110
   04 DB-CNT                           TYPE BINARY 16.                 !01111
                                                                       !01112
*             The total amount, in whole and fractional currency      !!01113
*             units (e.g., dollars and cents), of all debit           !!01114
*             transactions processed during the current shift.        !!01115
                                                                       !01116
   04 DB                               TYPE BINARY 64.                 !01117
                                                                       !01118
*             The number of all credit transactions processed during  !!01119
*             the current shift.                                      !!01120
                                                                       !01121
   04 CR-CNT                           TYPE BINARY 16.                 !01122
                                                                       !01123
*             The total amount, in whole and fractional currency      !!01124
*             units (e.g., dollars and cents), of all credit          !!01125
*             transactions processed during the current shift.        !!01126
                                                                       !01127
   04 CR                               TYPE BINARY 64.                 !01128
                                                                       !01129
*             The number of all adjustment transactions processed     !!01130
*             during the current shift.                               !!01131
                                                                       !01132
   04 ADJ-CNT                          TYPE BINARY 16.                 !01133
                                                                       !01134
*             The total amount, in whole and fractional currency      !!01135
*             units (e.g., dollars and cents), of all credit          !!01136
*             transactions processed during the current shift.        !!01137
                                                                       !01138
   04 ADJ                              TYPE BINARY 64.                 !01139
                                                                       !01140
*             The following fields contain the total counts and       !!01141
*             amounts of all draft capture debit, credit, and         !!01142
*             adjustment transactions processed during the current    !!01143
*             shift.                                                  !!01144
*                                                                     !!01145
*             Settlement Initiator will clear shift draft capture     !!01146
*             totals at the end of the retailer's balancing window if !!01147
*             the value in the TERM-CUTOVER-TC field in this record   !!01148
*             is 3 (network-forced).                                  !!01149
*                                                                     !!01150
*             The device handler will clear shift draft capture totals!!01151
*             on the first financial transaction processed during the !!01152
*             retailer window lead time if the value in the           !!01153
*             TERM-CUTOVER-TC field in this record is 4 (device       !!01154
*             handler network force cutover).                         !!01155
*                                                                     !!01156
*             A shift close transaction from the terminal is needed   !!01157
*             to clear shift draft capture totals if the value in the !!01158
*             TERM-CUTOVER-TC field is 0, 1, or 2 (operator request). !!01159
*             If the terminal does not support a shift close          !!01160
*             transaction, the transaction specified by the value in  !!01161
*             the TERM-CUTOVER-TC field will clear shift totals       !!01162
*             during terminal cutover.                                !!01163
                                                                       !01164
02 SHIFT-DC.                                                           !01165
                                                                       !01166
*             The number of all debit draft capture transactions      !!01167
*             processed during the current shift.                     !!01168
                                                                       !01169
   04 DB-CNT                           TYPE BINARY 16.                 !01170
                                                                       !01171
*             The total amount, in whole and fractional currency      !!01172
*             units (e.g., dollars and cents), of all debit draft     !!01173
*             capture transactions processed during the current       !!01174
*             shift.                                                  !!01175
                                                                       !01176
   04 DB                               TYPE BINARY 64.                 !01177
                                                                       !01178
*             The number of all credit draft capture transactions     !!01179
*             processed during the current shift.                     !!01180
                                                                       !01181
   04 CR-CNT                           TYPE BINARY 16.                 !01182
                                                                       !01183
*             The total amount, in whole and fractional currency      !!01184
*             units (e.g., dollars and cents), of all credit draft    !!01185
*             capture transactions processed during the current       !!01186
*             shift.                                                  !!01187
                                                                       !01188
   04 CR                               TYPE BINARY 64.                 !01189
                                                                       !01190
*             The number of all adjustment draft capture transactions !!01191
*             processed during the current shift.                     !!01192
                                                                       !01193
   04 ADJ-CNT                          TYPE BINARY 16.                 !01194
                                                                       !01195
*             The total amount, in whole and fractional currency      !!01196
*             units (e.g., dollars and cents), of all adjustment      !!01197
*             draft capture transactions processed during the current !!01198
*             shift.                                                  !!01199
                                                                       !01200
   04 ADJ                              TYPE BINARY 64.                 !01201
                                                                       !01202
*             The following fields contain the total counts and       !!01203
*             amounts of all debit, credit, and adjustment            !!01204
*             transactions processed during the current day.          !!01205
*                                                                     !!01206
*             Settlement Initiator will clear daily totals at the end !!01207
*             of the retailer's balancing window if the value in the  !!01208
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01209
*             forced).                                                !!01210
*                                                                     !!01211
*             The device handler will clear daily totals on the first !!01212
*             financial transaction processed during the retailer     !!01213
*             window lead time if the value in the TERM-CUTOVER-TC    !!01214
*             field in this record is 4 (device handler network force !!01215
*             cutover).                                               !!01216
*                                                                     !!01217
*             A day close transaction from the terminal is needed to  !!01218
*             clear daily totals if the value in the TERM-CUTOVER-TC  !!01219
*             field is 0, 1, or 2 (operator request).  If the         !!01220
*             terminal does not support a day close transaction, the  !!01221
*             transaction specified by the value in the TERM-CUTOVER- !!01222
*             TC field will clear day totals during terminal cutover. !!01223
                                                                       !01224
02 DAILY.                                                              !01225
                                                                       !01226
*             The number of all debit transactions processed during   !!01227
*             the current day.                                        !!01228
                                                                       !01229
   04 DB-CNT                           TYPE BINARY 16.                 !01230
                                                                       !01231
*             The total amount, in whole and fractional currency      !!01232
*             units (e.g., dollars and cents), of all debit           !!01233
*             transactions processed during the current day.          !!01234
                                                                       !01235
   04 DB                               TYPE BINARY 64.                 !01236
                                                                       !01237
*             The number of all credit transactions processed during  !!01238
*             the current day.                                        !!01239
                                                                       !01240
   04 CR-CNT                           TYPE BINARY 16.                 !01241
                                                                       !01242
*             The total amount, in whole and fractional currency      !!01243
*             units (e.g., dollars and cents), of all credit          !!01244
*             transactions processed during the current day.          !!01245
                                                                       !01246
   04 CR                               TYPE BINARY 64.                 !01247
                                                                       !01248
*             The number of all adjustment transactions processed     !!01249
*             during the current day.                                 !!01250
                                                                       !01251
   04 ADJ-CNT                          TYPE BINARY 16.                 !01252
                                                                       !01253
*             The total amount, in whole and fractional currency      !!01254
*             units (e.g., dollars and cents), of all adjustment      !!01255
*             transactions processed during the current day.          !!01256
                                                                       !01257
   04 ADJ                              TYPE BINARY 64.                 !01258
                                                                       !01259
*             The following fields contain the total counts and       !!01260
*             amounts of all draft capture debit, credit, and         !!01261
*             adjustment transactions processed during the current    !!01262
*             day.                                                    !!01263
*                                                                     !!01264
*             Settlement Initiator will clear daily totals at the end !!01265
*             of the retailer's balancing window if the value in the  !!01266
*             TERM-CUTOVER-TC field in this record is 3 (network-     !!01267
*             forced).                                                !!01268
*                                                                     !!01269
*             The device handler will clear daily draft capture totals!!01270
*             on the first financial transaction processed during the !!01271
*             retailer window lead time if the value in the           !!01272
*             TERM-CUTOVER-TC field in this record is 4 (device       !!01273
*             handler network force cutover).                         !!01274
*                                                                     !!01275
*             A day close transaction from the terminal is needed to  !!01276
*             clear daily totals if the value in the TERM-CUTOVER-TC  !!01277
*             field is 0, 1, or 2 (operator request).  If the         !!01278
*             terminal does not support a day close transaction, the  !!01279
*             transaction specified by the value in the TERM-CUTOVER- !!01280
*             TC field will clear day totals during terminal cutover. !!01281
                                                                       !01282
02 DAILY-DC.                                                           !01283
                                                                       !01284
*             The number of all debit draft capture transactions      !!01285
*             processed during the current day.                       !!01286
                                                                       !01287
   04 DB-CNT                           TYPE BINARY 16.                 !01288
                                                                       !01289
*             The total amount, in whole and fractional currency      !!01290
*             units (e.g., dollars and cents), of all debit draft     !!01291
*             capture transactions processed during the current day.  !!01292
                                                                       !01293
   04 DB                               TYPE BINARY 64.                 !01294
                                                                       !01295
*             The number of all credit draft capture transactions     !!01296
*             processed during the current day.                       !!01297
                                                                       !01298
   04 CR-CNT                           TYPE BINARY 16.                 !01299
                                                                       !01300
*             The total amount, in whole and fractional currency      !!01301
*             units (e.g., dollars and cents), of all credit draft    !!01302
*             capture transactions processed during the current day.  !!01303
                                                                       !01304
   04 CR                               TYPE BINARY 64.                 !01305
                                                                       !01306
*             The number of all adjustment draft capture transactions !!01307
*             processed during the current day.                       !!01308
                                                                       !01309
   04 ADJ-CNT                          TYPE BINARY 16.                 !01310
                                                                       !01311
*             The total amount, in whole and fractional currency      !!01312
*             units (e.g., dollars and cents), of all adjustment      !!01313
*             draft capture transactions processed during the current !!01314
*             day.                                                    !!01315
                                                                       !01316
   04 ADJ                              TYPE BINARY 64.                 !01317
                                                                       !01318
*             The following fields contain the total counts and       !!01319
*             amounts of all debit, credit, and adjustment            !!01320
*             transactions since the last terminal cutover.           !!01321
                                                                       !01322
02 CUR-NET.                                                            !01323
                                                                       !01324
*             The number of all debit transactions that have occurred !!01325
*             since the last terminal cutover.                        !!01326
                                                                       !01327
   04 DB-CNT                           TYPE BINARY 16.                 !01328
                                                                       !01329
*             The total amount, in whole and fractional currency      !!01330
*             units (e.g., dollars and cents), of all debit           !!01331
*             transactions that have occurred at the terminal since   !!01332
*             the last terminal cutover.                              !!01333
                                                                       !01334
   04 DB                               TYPE BINARY 64.                 !01335
                                                                       !01336
*             The number of all credit transactions that have         !!01337
*             occurred since the last terminal cutover.               !!01338
                                                                       !01339
   04 CR-CNT                           TYPE BINARY 16.                 !01340
                                                                       !01341
*             The total amount, in whole and fractional currency      !!01342
*             units (e.g., dollars and cents), of all credit          !!01343
*             transactions that have occurred at the terminal since   !!01344
*             the last terminal cutover.                              !!01345
                                                                       !01346
   04 CR                               TYPE BINARY 64.                 !01347
                                                                       !01348
*             The number of all adjustment transactions that have     !!01349
*             occurred since the last terminal cutover.               !!01350
                                                                       !01351
   04 ADJ-CNT                          TYPE BINARY 16.                 !01352
                                                                       !01353
*             The total amount, in whole and fractional currency      !!01354
*             units (e.g., dollars and cents), of all adjustment      !!01355
*             transactions that have occurred at the terminal since   !!01356
*             the last terminal cutover.                              !!01357
                                                                       !01358
   04 ADJ                              TYPE BINARY 64.                 !01359
                                                                       !01360
*             The following fields contain the total counts and       !!01361
*             amounts of all draft capture debit, credit, and         !!01362
*             adjustment transactions since the last terminal         !!01363
*             cutover.                                                !!01364
                                                                       !01365
02 CUR-NET-DC.                                                         !01366
                                                                       !01367
*             The number of all debit draft capture transactions that !!01368
*             have occurred since the last terminal cutover.          !!01369
                                                                       !01370
   04 DB-CNT                           TYPE BINARY 16.                 !01371
                                                                       !01372
*             The total amount, in whole and fractional currency      !!01373
*             units (e.g., dollars and cents), of all debit draft     !!01374
*             capture transactions that have occurred at the terminal !!01375
*             since the last terminal cutover.                        !!01376
                                                                       !01377
   04 DB                               TYPE BINARY 64.                 !01378
*             The number of all credit draft capture transactions     !!01379
*             that have occurred since the last terminal cutover.     !!01380
                                                                       !01381
   04 CR-CNT                           TYPE BINARY 16.                 !01382
                                                                       !01383
*             The total amount, in whole and fractional currency      !!01384
*             units (e.g., dollars and cents), of all credit draft    !!01385
*             capture transactions that have occurred at the terminal !!01386
*             since the last terminal cutover.                        !!01387
                                                                       !01388
   04 CR                               TYPE BINARY 64.                 !01389
                                                                       !01390
*             The number of all adjustment draft capture transactions !!01391
*             that have occurred since the last terminal cutover.     !!01392
                                                                       !01393
   04 ADJ-CNT                          TYPE BINARY 16.                 !01394
                                                                       !01395
*             The total amount, in whole and fractional currency      !!01396
*             units (e.g., dollars and cents), of all adjustment      !!01397
*             draft capture transactions that have occurred at the    !!01398
*             terminal since the last terminal cutover.               !!01399
                                                                       !01400
   04 ADJ                              TYPE BINARY 64.                 !01401
                                                                       !01402
*             The following fields contain the total counts and       !!01403
*             amounts of transactions that occurred during the        !!01404
*             BASE24-pos business day prior to the most recent        !!01405
*             terminal cutover.  CUR-NET field values are moved to    !!01406
*             their corresponding PRE-NET fields during terminal      !!01407
*             cutover.  The values in the CUR-NET fields are then     !!01408
*             cleared.                                                !!01409
                                                                       !01410
02 PRE-NET.                                                            !01411
                                                                       !01412
*             The number of all debit transactions prior to the most  !!01413
*             recent terminal cutover.                                !!01414
                                                                       !01415
   04 DB-CNT                           TYPE BINARY 16.                 !01416
                                                                       !01417
*             The total amount, in whole and fractional currency      !!01418
*             units (e.g., dollars and cents), of all debit           !!01419
*             transactions prior to the most recent terminal cutover. !!01420
                                                                       !01421
   04 DB                               TYPE BINARY 64.                 !01422
                                                                       !01423
*             The number of all credit transactions prior to the most !!01424
*             recent terminal cutover.                                !!01425
                                                                       !01426
   04 CR-CNT                           TYPE BINARY 16.                 !01427
                                                                       !01428
*             The total amount, in whole and fractional currency      !!01429
*             units (e.g., dollars and cents), of all credit          !!01430
*             transactions prior to the most recent terminal cutover. !!01431
                                                                       !01432
   04 CR                               TYPE BINARY 64.                 !01433
                                                                       !01434
*             The number of all adjustment transactions prior to      !!01435
*             the most recent terminal cutover.                       !!01436
                                                                       !01437
   04 ADJ-CNT                          TYPE BINARY 16.                 !01438
                                                                       !01439
*             The total amount, in whole and fractional currency      !!01440
*             units (e.g., dollars and cents), of all adjustment      !!01441
*             transactions prior to the most recent terminal cutover. !!01442
                                                                       !01443
   04 ADJ                              TYPE BINARY 64.                 !01444
                                                                       !01445
02 PRE-NET-DC.                                                         !01446
                                                                       !01447
*             The number of all debit draft capture transactions      !!01448
*             prior to the most recent terminal cutover.              !!01449
                                                                       !01450
   04 DB-CNT                           TYPE BINARY 16.                 !01451
                                                                       !01452
*             The total amount, in whole and fractional currency      !!01453
*             units (e.g., dollars and cents), of all debit           !!01454
*             draft capture transactions prior to the most recent     !!01455
*             terminal cutover.                                       !!01456
                                                                       !01457
   04 DB                               TYPE BINARY 64.                 !01458
                                                                       !01459
*             The number of all credit draft capture transactions     !!01460
*             prior to the most recent terminal cutover.              !!01461
                                                                       !01462
   04 CR-CNT                           TYPE BINARY 16.                 !01463
                                                                       !01464
*             The total amount, in whole and fractional currency      !!01465
*             units (e.g., dollars and cents), of all credit          !!01466
*             draft capture transactions prior to the most recent     !!01467
*             terminal cutover.                                       !!01468
                                                                       !01469
   04 CR                               TYPE BINARY 64.                 !01470
                                                                       !01471
*             The number of all adjustment draft capture transactions !!01472
*             prior to the most recent terminal cutover.              !!01473
                                                                       !01474
   04 ADJ-CNT                          TYPE BINARY 16.                 !01475
                                                                       !01476
*             The total amount, in whole and fractional currency      !!01477
*             units (e.g., dollars and cents), of all adjustment      !!01478
*             draft capture transactions prior to the most recent     !!01479
*             terminal cutover.                                       !!01480
                                                                       !01481
   04 ADJ                              TYPE BINARY 64.                 !01482
                                                                       !01483
*             The value in this field indicates whether the terminal  !!01484
*             operator or BASE24 normally cuts the terminal over to a !!01485
*             new reporting day.  If operator action is required, the !!01486
*             value in this field identifies which close transaction, !!01487
*             when used within the retailer's balancing window, will  !!01488
*             cut the terminal over to the next reporting day.  This  !!01489
*             balancing window is defined by the values in the        !!01490
*             RETAILER-BAL-AND-CUTVR-START and RETAILER-BAL-AND-      !!01491
*             CUTVR-END fields in the PRDF.                           !!01492
*                                                                     !!01493
*             If the close transaction specified in this field is     !!01494
*             requested during the retailer's balancing window, the   !!01495
*             Device Handler will, on the first occurrence, cut the   !!01496
*             terminal over.  Subsequent cutover attempts during the  !!01497
*             same retailer window will not cut the terminal over     !!01498
*             again.  If the specified close transaction is not       !!01499
*             requested during the balancing window, or if BASE24     !!01500
*             performs the cutover automatically, the Settlement      !!01501
*             Initiator process will cut the terminal over at the end !!01502
*             of the balancing window.                                !!01503
*                                                                     !!01504
*             Valid entries include:                                  !!01505
*                                                                     !!01506
*             0 = Terminal day close                                  !!01507
*             1 = Terminal shift close                                !!01508
*             2 = Terminal batch close                                !!01509
*             3 = Force cutover  (default)                            !!01510
*             4 = Device Handler network force cutover                !!01511
*                                                                     !!01512
*             Nonintelligent terminals must always use the force      !!01513
*             cutover value; intelligent terminals may use any of the !!01514
*             values.                                                 !!01515
*                                                                     !!01516
*             Network totals (i.e., values in the CUR-NET and CUR-    !!01517
*             NET-DC fields) are always cleared during terminal       !!01518
*             cutover.                                                !!01519
*                                                                     !!01520
*             When the value in this field is set to 0, 1, or 2       !!01521
*             (close transaction), the close transaction specified    !!01522
*             (i.e., batch, shift, day), should be included in the    !!01523
*             BAL-SUPPORT field setting in this record.               !!01524
*                                                                     !!01525
*             When the value in this field is set to the default      !!01526
*             value of 3 (force cutover), the Settlement Initiator    !!01527
*             process automatically cuts the terminal over at the end !!01528
*             of the window and clears all totals, regardless of the  !!01529
*             BAL-SUPPORT field setting.                              !!01530
*                                                                     !!01531
*             When the value in this field is set to a value of 4     !!01532
*             (device handler network force cutover), the device      !!01533
*             handler cuts the terminal over on the first financial   !!01534
*             transaction during the retailer cutover window lead     !!01535
*             time period.                                            !!01536
                                                                       !01537
02 TERM-CUTOVER-TC                     PIC 9.                          !01538
                                                                       !01539
*             This field ensures word-alignment.                      !!01540
                                                                       !01541
02 USER-FLD5                           PIC X.                          !01542
                                                                       !01543
*             An indicator that identifies the last transaction to    !!01544
*             update this record.  The value in this field ensures    !!01545
*             against multiple or incomplete updates due to process   !!01546
*             failure and restart.  This field occurs in every record !!01547
*             that is updated by the online system.                   !!01548
                                                                       !01549
*             The number of shifts today for this terminal.           !!01550
                                                                       !01551
02 NUM-SHIFTS                          TYPE BINARY 16.                 !01552
                                                                       !01553
*             The following fields contain the terminal date and      !!01554
*             time.                                                   !!01555
                                                                       !01556
02 TERM.                                                               !01557
                                                                       !01558
*             The terminal date (YYMMDD).                             !!01559
                                                                       !01560
   04 DAT                              TYPE BINARY 32.                 !01561
                                                                       !01562
*             The terminal time (HHMMSS).                             !!01563
                                                                       !01564
   04 TIM                              TYPE BINARY 32.                 !01565
                                                                       !01566
*             The number of terminal batch totals transactions        !!01567
*             performed since the last terminal cutover.  The value   !!01568
*             in this field is incremented by 1 each time a batch     !!01569
*             transaction is performed either manually or             !!01570
*             automatically by the Device Handler.                    !!01571
*                                                                     !!01572
*             When the terminal cuts over, the count in this field is !!01573
*             included in records written to the PTLF and is reset to !!01574
*             zero.                                                   !!01575
                                                                       !01576
02 NUM-BATCHES                         TYPE BINARY 16.                 !01577
                                                                       !01578
*             The number of the shift in which transactions are       !!01579
*             currently accumulating.  The value in this field is     !!01580
*             incremented by 1 each time a terminal shift close is    !!01581
*             performed, and rolls to 1 after 999.  It is reset to 1  !!01582
*             by a terminal day close.  If the terminal does not      !!01583
*             support a day close transaction, the transaction        !!01584
*             specified by the value in the TERM-CUTOVER-TC field in  !!01585
*             this record will reset this counter during terminal     !!01586
*             cutover.                                                !!01587
                                                                       !01588
02 SHIFT-NUM                           TYPE BINARY 16.                 !01589
                                                                       !01590
*             The number of the batch in which transactions are       !!01591
*             currently accumulating.  The value in this field is     !!01592
*             incremented by 1 each time a terminal batch close is    !!01593
*             performed, and rolls to 1 after 999.  It is reset to 1  !!01594
*             by a terminal shift close.  If the terminal does not    !!01595
*             support a shift close transaction, the transaction      !!01596
*             specified by the value in the TERM-CUTOVER-TC field in  !!01597
*             this record will reset this counter during terminal     !!01598
*             cutover.                                                !!01599
                                                                       !01600
02 BATCH-NUM                           TYPE BINARY 16.                 !01601
                                                                       !01602
*             The sequence number of the last transaction performed   !!01603
*             at the terminal.  The value in this field is            !!01604
*             incremented by one for each transaction performed       !!01605
*             within this batch (represented by the current value in  !!01606
*             the BATCH-NUM field).  The value in this field is reset !!01607
*             to 0 whenever a terminal batch close transaction is     !!01608
*             performed. (The first transaction in a batch increments !!01609
*             this field to 1.)  If the terminal does not support a   !!01610
*             batch close transaction, the transaction specified by   !!01611
*             the value in the TERM-CUTOVER-TC field in this record   !!01612
*             will reset this counter during terminal cutover.        !!01613
                                                                       !01614
02 SEQ-NUM                             TYPE BINARY 16.                 !01615
                                                                       !01616
*             This field is used by the Settlement Slave and          !!01617
*             Device Handlers to determine which Settlement           !!01618
*             totals should be logged during cutover or on            !!01619
*             a balancing transaction.                                !!01620
*                                                                     !!01621
*             The bit layout of this field is as follows:             !!01622
*                                                                     !!01623
*             TOTAL TYPE          BIT POSITION                        !!01624
*             ----------          ------------                        !!01625
*             Batch               Bit 0                               !!01626
*             Shift               Bit 1                               !!01627
*             Daily               Bit 2                               !!01628
*             Network             Bit 3                               !!01629
*             Service             Bit 4                               !!01630
*                                                                     !!01631
*             For each bit position, the valid values are:            !!01632
*                                                                     !!01633
*             0 = No, do not log totals.                              !!01634
*             1 = Yes, log totals.                                    !!01635
                                                                       !01636
02 LOG-TOTALS                          PIC X.                          !01637
                                                                       !01638
*             This flag indicates a balancing transaction was         !!01639
*             processed and the device handler is "waiting for        !!01640
*             confirmation" that the device received the response.    !!01641
*             It is cleared when the device handler receives          !!01642
*             another transaction which is not a duplicate            !!01643
*             administrative transaction.                             !!01644
*                                                                     !!01645
*             Valid values:                                           !!01646
*                                                                     !!01647
*             0 - Not waiting for confirmation.                       !!01648
*             1 - Waiting confirmation, batch close performed.        !!01649
*             2 - Waiting confirmation, shift close performed.        !!01650
*             3 - Waiting confirmation, daily close performed.        !!01651
                                                                       !01652
02 WAIT-CONFIRM-FLG                    PIC X.                          !01653
                                                                       !01654
*             The following fields contain the mail data and mail     !!01655
*             process name for BASE24-pos devices that use the        !!01656
*             BASE24-mail product.                                    !!01657
                                                                       !01658
02 MAIL-DATA                           TYPE MAIL-CONF-DEF.             !01659
                                                                       !01660
                                                                       !01660A00
*                                                                      !01660A01
*             The Status Reason Code may be used to force the          !01660A02
*             automatic activation/deactivation of the terminal        !01660A03
*             status. Usage and valid values are regional specific.    !01660A04
                                                                       !01660A05
02 STAT-RSN-CDE                        PIC X(2).                       !01660A06
                                                                       !01660A07
                                                                       !01660C00
*                                                                      !01660C01
*             This field indicates whether a MAC key change is         !01660C02
*             required on the next response to the terminal.           !01660C03
*             Valid values are:                                        !01660C04
*                "0" - MAC Encryption Key Unchanged.                   !01660C05
*                "1" - MAC Encryption Key Changed.                     !01660C06
*                "2" - MAC Encryption Key Change Pending.              !01660C07
*                                                                      !01660C08
                                                                       !01660C09
02 MAC-PENDING-FLG                     PIC X.                          !01660C0A
                                                                       !01660C0B
*                                                                      !01660C0C
*             This field indicates whether a PIN key change is         !01660C0D
*             required on the next response to the terminal.           !01660C0E
*             Valid values are:                                        !01660C0F
*                "0" - PIN Encryption Key Unchanged.                   !01660C0G
*                "1" - PIN Encryption Key Changed.                     !01660C0H
*                "2" - PIN Encryption Key Change Pending.              !01660C0I
*                                                                      !01660C0J
                                                                       !01660C0K
02 PIN-PENDING-FLG                     PIC X.                          !01660C0L
                                                                       !01660C0M
*                                                                      !01660C0N
*             This field indicates whether a Data Encryption key       !01660C0O
*             change is required on the next response to the           !01660C0P
*             terminal.  Valid values are:                             !01660C0Q
*                "0" - Data Encryption Key Not Changed.                !01660C0R
*                "1" - Data Encryption Key Changed.                    !01660C0S
*                "2" - Data Encryption Key Change Pending.             !01660C0T
*                                                                      !01660C0U
                                                                       !01660C0V
02 DATA-PENDING-FLG                    PIC X.                          !01660C0W
                                                                       !01660C0X
*                                                                      !01660C0Y
*             A code indicating whether data encryption is used for    !01660C0Z
*             the terminal. Data encryption is only supported with     !01660C0a
*             Transaction Security Services (TSS). The TSS Channel     !01660C0b
*             Security File (CSECD) contains the actual encryption     !01660C0c
*             method used. Valid values are:                           !01660C0d
*             "00" = No encryption. (Default)                          !01660C0e
                                                                       !01660G00
*             "01" = Available balance encryption - ASCII.             !01660G01
*             "02" = Available balance encryption - binary.            !01660G02
*             "03" = Full message encryption.                          !01660G03
*             "04" = Configurable message encryption.                  !01660G04
                                                                       !01660H00
*             "05" = Full message encryption - DUKPT.                  !01660H01
*             "06" = Configurable message encryption - DUKPT.          !01660H02
                                                                       !01660H03
                                                                       !01660G05
                                                                       !01660G06
                                                                       !01660G07
                                                                       !01660G08
                                                                       !01660C0h
02 DATA-ENCRYPT-TYP                    PIC X(2).                       !01660C0i
                                                                       !01660C0j
                                                                       !01660D00
                                                                       !01660D01
*             Field to denote a terminal as running either local or    !01660D02
*             remote when in dual site mode. Valid values are:         !01660D03
*             Blank = Local                                            !01660D04
*             "L"   = Local                                            !01660D05
*             "R"   = Remote                                           !01660D06
                                                                       !01660D07
02 DUAL-SITE-IND                      PIC X.                           !01660D08
                                                                       !01660D09
                                                                       !01660D0A
                                                                       !01660D0B
                                                                       !01660H04
*             The Terminal Contactless Input Capability Indicator      !01660H05
*             indicates the contactless capabilities for transferring  !01660H06
*             the data on the card into the terminal.                  !01660H07
*             Valid values are:                                        !01660H08
*             0 = unknown or unspecified                               !01660H09
*             1 = none (no terminal used or contact only)              !01660H0A
*             2 = contactless magnetic stripe                          !01660H0B
*             3 = contactless EMV                                      !01660H0C
*             4 = contactless magnetic stripe and contactless EMV      !01660H0D
                                                                       !01660H0E
02 CTLS-INPUT-CAP-IND                 PIC X.                           !01660H0F
                                                                       !01660H0G
                                                                       !01660H0H
*             USER-FLD-ACI is reserved for future BASE24 product       !01660A08
*             use only.  The designation of "product use only"         !01660A09
*             provides ACI with the ability to deplete the number      !01660A0A
*             of bytes available within USER-FLD-ACI as product        !01660A0B
*             enhancements are introduced.  When product               !01660A0C
*             enhancements require the addition of new fields          !01660A0D
*             within this file, the procedure to be followed is        !01660A0E
*             to deplete bytes from USER-FLD-ACI and use that          !01660A0F
*             number of bytes to define new fields.  The new           !01660A0G
*             field definition(s) should precede the USER-FLD-ACI      !01660A0H
*             field.                                                   !01660A0I
                                                                       !01660A0J
                                                                       !01660C0k
                                                                       !01660D0C
                                                                       !01660H0I
02 USER-FLD-ACI                        PIC X(43).                      !01660H0J
                                                                       !01660H0K
                                                                       !01660H0L
                                                                       !01660H0M
                                                                       !01660D0E
                                                                       !01660C0m
                                                                       !01660A0L
*             USER-FLD-REGN is reserved for ACI regional use only.     !01660A0M
*             Only ACI regions are allowed to use USER-FLD-REGN        !01660A0N
*             space.                                                   !01660A0O
                                                                       !01660A0P
02 USER-FLD-REGN                       PIC X(50).                      !01660A0Q
                                                                       !01660A0R
*             USER-FLD-CUST is reserved for customer use only.         !01660A0S
*             Only customers are allowed to use USER-FLD-CUST          !01660A0T
*             space.                                                   !01660A0U
                                                                       !01660A0V
02 USER-FLD-CUST                       PIC X(50).                      !01660A0W
                                                                       !01660A0X
                                                                       !01660A0Y
END                                                                    !01661
                                                                       !01662
?page
?section ptds1-core
?setsection ptds1-core
                                                                       !01669
*             The following structure defines the common data area for!!01670
*             the records defined in the BASE24-pos Terminal Data     !!01671
*             Static file - general data (i.e., PTDS1).               !!01672
*                                                                     !!01673
*             This data will be located at beginning of the record    !!01674
*             data area of the PTDS1.                                 !!01675
                                                                       !01676
DEFINITION PTDS1-CORE.                                                 !01677
                                                                       !01678
*             The type of terminal defined in the record.  Valid      !!01679
*             values are listed under the ptdd1-core definition.      !!01680
                                                                       !01681
02 TERM-TYP                            PIC X(2).                       !01682
                                                                       !01683
*             The release number indicating the current version of    !!01684
*             the message format used between the device and the      !!01685
*             device handler.  The value in this field ensures that   !!01686
*             the appropriate formats are being used.                 !!01687
                                                                       !01688
02 REL-NUM                             PIC 9(2).                       !01689
                                                                       !01690
*             The name of the load image file for this terminal (if   !!01691
*             used).  This name must be a fully-qualified Tandem file !!01692
*             name.  This field is currently not used.                !!01693
                                                                       !01694
02 LOAD-FIL-NAM                        PIC X(35).                      !01695
                                                                       !01696
*             This field is not used.                                 !!01697
                                                                       !01698
02 USER-FLD1                           PIC X.                          !01699
                                                                       !CSM51
02 VUB-DISC REDEFINES USER-FLD1 PIC X.                                 !CSM51
                                                                       !01700
*             The log routing code used to identify all messages      !!01701
*             logged specifically on behalf of the terminal.          !!01702
                                                                       !01703
02 LOG-RT-CDE                          TYPE BINARY 16.                 !01704
                                                                       !01705
*             The terminal name/description for printing on receipts  !!01706
*             and to comply with Regulation E requirements.           !!01707
                                                                       !01708
02 TERM-NAM-LOC                        PIC X(25).                      !01709
                                                                       !01710
*             The following two fields contain the city and state in  !!01711
*             which the terminal is located for printing on receipts  !!01712
*             and to comply with Regulation E requirements.           !!01713
                                                                       !01714
02 TERM-CITY-ST.                                                       !01715
                                                                       !01716
*             The city in which the terminal is located for printing  !!01717
*             receipts.                                               !!01718
                                                                       !01719
   04 CITY                             PIC X(13).                      !01720
*             The state in which the terminal is located for printing !!01721
*             receipts.                                               !!01722
                                                                       !01723
   04 ST                               PIC X(3).                       !01724
                                                                       !01725
*             This field ensures word-alignment.                      !!01726
                                                                       !01727
02 USER-FLD2                           PIC X.                          !01728
                                                                       !01729
*             The country in which the terminal is located.           !!01730
                                                                       !01731
02 CNTRY-CDE                           PIC X(2).                       !01732
                                                                       !01733
                                                                       !01734E00
*             Profile used as part of the key to read the APCF to     !!01734E01
*             determine if a specific transaction is allowed at this   !01734E02
*             terminal.                                                !01734E03
                                                                       !01734E04
                                                                       !01735E00
                                                                       !01735E01
                                                                       !01735E02
                                                                       !01739
02 ACQ-TXN-PRFL                        TYPE PRFL.                      !01740
                                                                       !01741
*             The name of the retailer that owns the terminal.        !!01742
                                                                       !01743
02 TERM-OWNER-NAM                      PIC X(22).                      !01744
                                                                       !01745
*             The Standard Industrial Classification (SIC) code       !!01746
*             for all transactions other than mail/phone order        !!01747
*             transactions.                                           !!01748
                                                                       !01749
02 TERM-SIC-CDE                        PIC 9(4).                       !01750
                                                                       !01751
*             The following fields contain the name, address, and     !!01752
*             telephone number of the service representative to       !!01753
*             contact when problems occur with the terminal.          !!01754
                                                                       !01755
02 SRV-REP.                                                            !01756
                                                                       !01757
*             The name of the service representative to contact when  !!01758
*             problems occur with the terminal.                       !!01759
                                                                       !01760
   04 NAM                              PIC X(25).                      !01761
                                                                       !01762
*             The address of the service representative to contact    !!01763
*             when problems occur with the terminal.                  !!01764
                                                                       !01765
   04 ADDR                             PIC X(25).                      !01766
                                                                       !01767
*             The city and state of the service representative to     !!01768
*             contact when problems occur with the terminal.          !!01769
                                                                       !01770
   04 CITY-ST                          PIC X(16).                      !01771
                                                                       !01772
*             The country of the service representative to contact    !!01773
*             when problems occur with the terminal.                  !!01774
                                                                       !01775
   04 CNTRY                            PIC X(2).                       !01776
                                                                       !01777
*             The telephone number of the service representative to   !!01778
*             contact when problems occur with the terminal.          !!01779
                                                                       !01780
   04 PHONE                            TYPE PHONE-NUM.                 !01781
                                                                       !01782
*             The time limit to hold preauthorized funds.  This is a  !!01783
*             3-digit entry and is used only with preauthorization    !!01784
*             transactions.  The first digit describes the hold       !!01785
*             increment. Valid values are:                            !!01786
*                                                                     !!01787
*             0 = Minutes (default)                                   !!01788
*             1 = Hours                                               !!01789
*             2 = Days                                                !!01790
*                                                                     !!01791
*             Digits 2 and 3 contain the actual hold time.  Valid     !!01792
*             values are 00-99 with a default value of 00.            !!01793
                                                                       !01794
02 PRE-AUTH-HLD                        TYPE BINARY 16.                 !01795
                                                                       !01796
*             The default preauthorization hold amount, in whole      !!01797
*             currency units, (e.g., dollars), to be used when no     !!01798
*             amount is entered at the terminal in conjunction with a !!01799
*             preauthorization hold transaction.                      !!01800
                                                                       !01801
02 PRE-AUTH-DFT-AMT                    TYPE BINARY 32.                 !01802
                                                                       !01803
*             The default check identification to use when a check    !!01804
*             guarantee/verification message does not contain a       !!01805
*             check identification value.  Valid values are:          !!01806
*             01 = Credit card                                        !!01807
*             02 = Drivers license                                    !!01808
*             03 = Checking account number                            !!01809
*             04 = Debit card                                         !!01810
*             05 = Proprietary check cashing card                     !!01811
*             06 = State ID number                                    !!01812
*             07 = Social security number                             !!01813
*             08 = Student ID number                                  !!01814
*             09 = Employee ID                                        !!01815
*             10 = Passport number                                    !!01816
*             11 = MICR data                                          !!01817
                                                                       !01818
02 DFLT-CHK-ID                         PIC X(2).                       !01819
                                                                       !01820
*             The default transaction code that the Device Handler    !!01821
*             will use if, for any reason, this terminal is unable to !!01822
*             include such a code in a transaction request message to !!01823
*             BASE24-pos.  Valid codes are:                           !!01824
*                                                                     !!01825
*             10 = Normal purchase                                    !!01826
*             13 = Mail/phone order                                   !!01827
*             15 = Cash advance                                       !!01828
*             16 = Card verification                                  !!01829
*             17 = Balance inquiry                                    !!01830
                                                                       !01831
02 DFLT-TC                             PIC 9(2).                       !01832
                                                                       !01833
*             The length of the approval code that this device can    !!01834
*             handle.  The value from this field is placed in the POS !!01835
*             Standard Internal Message (PSTM) for messages coming    !!01836
*             into BASE24, if this information is not contained       !!01837
*             in the message from the device.  BASE24-pos             !!01838
*             Authorization will generate an approval code for the    !!01839
*             length specified by this field.  Approval codes must    !!01840
*             be at least 2 positions in length but not more than 6   !!01841
*             positions in length.  The default length is 6.          !!01842
                                                                       !01843
02 APPRV-CDE-LGTH                      TYPE BINARY 16.                 !01844
*             The maximum number of adjustment transactions allowed   !!01845
*             to be performed on the terminal for each terminal       !!01846
*             batch.  When this limit is exceeded, a log message is   !!01847
*             generated.                                              !!01848
                                                                       !01849
02 ADJ-LMT-CNT                         TYPE BINARY 16.                 !01850
                                                                       !01851
*             The maximum amount, in whole and fractional currency    !!01852
*             units (e.g., dollars and cents), that can be accepted   !!01853
*             at the terminal via adjustment transactions.  This      !!01854
*             limit is invoked for each terminal batch period.  When  !!01855
*             this limit is exceeded, a log message is generated.     !!01856
                                                                       !01857
02 ADJ-LMT-AMT                         TYPE BINARY 64.                 !01858
                                                                       !01859
*             The maximum number of merchandise return transactions   !!01860
*             allowed to be performed on the terminal for each        !!01861
*             terminal batch period.  When this limit is exceeded, a  !!01862
*             log message is generated.                               !!01863
                                                                       !01864
02 RETURN-LMT-CNT                      TYPE BINARY 16.                 !01865
                                                                       !01866
*             The maximum amount, in whole and fractional currency    !!01867
*             units (e.g., dollars and cents), that can be accepted   !!01868
*             at the terminal via merchandise return transactions.    !!01869
*             This limit is invoked for each terminal batch period.   !!01870
*             When this limit is exceeded, a log message is           !!01871
*             generated.                                              !!01872
                                                                       !01873
02 RETURN-LMT-AMT                      TYPE BINARY 64.                 !01874
                                                                       !01875
*             A value indicating whether a pre-authorization          !!01876
                                                                       !01876G00
*             purchase or purchase transaction can be authorized for   !01876G01
*             a lesser amount at the terminal. Transactions that this  !01876G02
*             flag applies to are: pre-auth purchase, purchase,        !01876G03
*             mail-phone order, purchase with cash back and cash       !01876G04
*             advance.                                                 !01876G05
                                                                       !01876G06
                                                                       !01877G00
                                                                       !01877G01
                                                                       !01877G02
                                                                       !01879
02 PRE-AUTH-LESS-AMT-FLG               PIC X.                          !01880
                                                                       !01881
*             A value indicating whether an adjustment transaction    !!01882
*             can be authorized when Amount 2 is greater than         !!01883
*             Amount 1 at this terminal.                              !!01884
                                                                       !01885
02 ADJ-FLG                             PIC X.                          !01886
                                                                       !01887
*             A value indicating whether a sales draft transation is  !!01888
*             allowed at the terminal.                                !!01889
                                                                       !01890
02 SALES-DFT-FLG                       PIC X.                          !01891
                                                                       !01892
*             A code indicating the line protocol that is being used  !!01893
*             for communications with this terminal.  Valid values    !!01894
*             are:                                                    !!01895
*                                                                     !!01896
*             A = Asynchronous                                        !!01897
*             B = Bisynchronous                                       !!01898
*             D = Dial-up                                             !!01899
*             S = SDLC                                                !!01900
*             T = Bisynchronous (transparent-EBCDIC)                  !!01901
*             X = X.25                                                !!01902
*             Y = X.21                                                !!01903
                                                                       !01904
02 TERM-PROTO                          PIC X.                          !01905
                                                                       !01906
*             The value in this field indicates the balancing         !!01907
*             transactions supported by the terminal, and is used     !!01908
*             when the value in the TERM-CUTOVER-TC field in this     !!01909
*             record is 0, 1, or 2.  When the close entry defined by  !!01910
*             the value in the TERM-CUTOVER-TC field is received      !!01911
*             within the balancing window, BASE24 will clear any      !!01912
*             totals not supported by the terminal.                   !!01913
*             Valid values are:                                       !!01914
*                                                                     !!01915
*             0 = Batch totals are supported                          !!01916
*             1 = Batch and shift totals are supported                !!01917
*             2 = Batch and end of day totals are supported           !!01918
*             3 = Batch, shift, and end of day totals are supported   !!01919
*             4 = Shift and end of day totals are supported           !!01920
*             5 = End of day totals are supported                     !!01921
*             9 = No totals are supported                             !!01922
                                                                       !01923
02 BAL-SUPPORT                         PIC 9.                          !01924
                                                                       !01925
*              The token data retrieval option.  When the device      !!01926
*              handler is processing a reversal, this field indicates !!01927
*              where the token data should be retrieved.  Valid values!!01928
*              are:                                                   !!01929
*                                                                     !!01930
*              0 = no tokens included in the reversal message.        !!01931
*              1 = PTD. Token data retrieved from the terminal data   !!01932
*                       file, and appended to the reversal message.   !!01933
*              2 = PTLF. Token data retrieved from the transaction log!!01934
*                       file, and appended to the reversal message.   !!01935
*              9 = IDF TKN Retrieval Option (default value) This      !!01936
*                  option is specified at the institution level.      !!01937
*                  Please refer to the corresponding field in the     !!01938
*                  BASE24-pos segment of the IDF.                     !!01939
                                                                       !01940
02 TKN-RETRV-OPT                       PIC X.                          !01941
                                                                       !01942
                                                                       !01943
*             A code indicating the language table used by the Device !!01944
*             Handler when sending responses to the terminal.  This   !!01945
*             code enables responses to be displayed on the terminal  !!01946
*             in one of three different languages.  Valid values are: !!01947
*                                                                     !!01948
*             0 = Language table 1                                    !!01949
*             1 = Language table 2                                    !!01950
*             2 = Language table 3                                    !!01951
*                                                                     !!01952
*             The particular language represented in each table is up !!01953
*             to the discretion of the institution.  For example,     !!01954
*             table 1 could be English, table 2 could be French, and  !!01955
*             table 3 could be Spanish.                               !!01956
                                                                       !01957
02 LANGUAGE-IND                        TYPE BINARY 16.                 !01958
                                                                       !01959
*             A code indicating if operator totals are maintained for !!01960
*             the terminal.  Valid values are:                        !!01961
*                                                                     !!01962
*             0 = No totals are maintained                            !!01963
*             1 = Net totals are returned (debits, credits, and       !!01964
*                 adjustments) (currently not supported)              !!01965
*             2 = Cash out totals are returned (currently not         !!01966
*                 supported)                                          !!01967
*             3 = All totals are returned (debits, credits,           !!01968
*                 adjustments, and cash out)                          !!01969
*                                                                     !!01970
*             If the value in this field is 0, then clerk totals are  !!01971
*             not maintained.                                         !!01972
*                                                                     !!01973
*             If the value in this field is 1, 2, or 3, all clerk     !!01974
*             totals (i.e., debits, credits, adjustments, and cash    !!01975
*             out) are written to the PTLF each time a new operator   !!01976
*             logs on to the terminal.  These totals can then be      !!01977
*             perused from the PTLF.                                  !!01978
                                                                       !01979
02 CLERK-FLAG                          TYPE BINARY 16.                 !01980
                                                                       !01981
*             The postal ZIP code corresponding to the location of    !!01982
*             the BASE24-pos terminal specified in the LOCATION       !!01983
*             field.                                                  !!01984
                                                                       !01985
02 POSTAL-CDE                          TYPE *.                         !01986
                                                                       !01987
*             The following fields contain the terminal phone number  !!01988
*             and baud rate.  These fields are used with the X.21     !!01989
*             protocol.                                               !!01990
                                                                       !01991
02 TERM-PHONE.                                                         !01992
                                                                       !01993
*             The terminal phone number.                              !!01994
                                                                       !01995
   04 NUM                              TYPE PHONE-NUM.                 !01996
                                                                       !01997
*             An indicator of the terminal baud rate.  Valid values   !!01998
*             and their corresponding baud rates are shown in the     !!01999
*             table below.                                            !!02000
*                                                                     !!02001
*             INDICATOR    BAUD RATE                                  !!02002
*             ---------    -------------------                        !!02003
*             00           50                                         !!02004
*             01           75                                         !!02005
*             02           110                                        !!02006
*             03           134.5                                      !!02007
*             04           150                                        !!02008
*             05           300                                        !!02009
*             06           600                                        !!02010
*             07           1200                                       !!02011
*             08           1800                                       !!02012
*             09           2000                                       !!02013
*             10           2400                                       !!02014
*             11           3600                                       !!02015
*             12           4800                                       !!02016
*             13           7200                                       !!02017
*             14           9600                                       !!02018
*             15           19200                                      !!02019
*             16           200                                        !!02020
*             99           Baud rate not used                         !!02021
                                                                       !02022
   04 BAUD-RATE                        PIC 9(2).                       !02023
                                                                       !02024
*             The routing group associated with the terminal.  It     !!02025
*             will be used to Sproute route transactions.             !!02026
                                                                       !02027
02 RTE-GRP                             PIC X(11).                      !02028
                                                                       !02029
*             An indication of the terminal's ability to capture      !!02030
*             and transmit complete Track 2 data on card swipe        !!02031
*             transactions.  Valid values are:                        !!02032
*                                                                     !!02033
*             N = No, this terminal does not capture and transmit     !!02034
*                 complete Track 2 data.                              !!02035
*             Y = Yes, this terminal captures and transmits complete  !!02036
*                 Track 2 data.                                       !!02037
                                                                       !02038
02 COMPLETE-TRACK2-DATA                PIC X.                          !02039
                                                                       !02040
*             The Standard Industrial Classification (SIC) code for   !!02041
*             mail/phone order transactions.                          !!02042
                                                                       !02043
02 MAIL-PO-SIC-CDE                     PIC 9(4).                       !02044
                                                                       !02045
*             An extension of the TERM-CITY-ST.CITY field which       !!02046
*             makes the terminal city field a total of 18 bytes.      !!02047
                                                                       !02048
02 CITY-EXT                            PIC X(5).                       !02049
                                                                       !02050
*             A value indicating whether a clerk total transation is  !!02051
*             allowed at the terminal.                                !!02052
                                                                       !02053
02 CLERK-TTL-FLG                       PIC X.                          !02054
                                                                       !02054A00
                                                                       !02054A01
*             The software release field is available to hold          !02054A02
*             information about the terminal software.                 !02054A03
                                                                       !02054A04
02 SFTWR-REL                           PIC X(8).                       !02054A05
                                                                       !02054A06
*             The pre-communications floor limit contains a value      !02054A07
*             that may be used by the POS terminal. The limit          !02054A08
*             represents the maximum value of a transaction that       !02054A09
*             can be authorised by the terminal without attempting to  !02054A0A
*             communicate with the Host. The limit must be specified   !02054A0B
*             in major (i.e whole) currency units in the currency      !02054A0C
*             specified by the CRNCY-CDE field (i.e. the primary       !02054A0D
*             terminal currency).                                      !02054A0E
*                                                                      !02054A0F
*             Valid values are any numeric digits.                     !02054A0G
*                                                                      !02054A0H
*             This field is used by the following device handlers      !02054A0I
*             where 999 is the maximum value:                          !02054A0J
*                 APACS 30/40                                          !02054A0K
                                                                       !02054A0L
02 PRE-COMM-FLR-LMT                    TYPE BINARY 16.                 !02054A0M
                                                                       !02054A0N
*             The post-communications floor limit contains a value     !02054A0O
*             that may be used by the POS terminal. The limit          !02054A0P
*             represents the maximum value of a transaction that       !02054A0Q
*             can be authorised by the terminal when an attempt to     !02054A0R
*             communicate with the Host has failed. The limit must be  !02054A0S
*             specified in major (i.e whole) currency units in the     !02054A0T
*             currency specified by the CRNCY-CDE field (i.e. the      !02054A0U
*             primary terminal currency).                              !02054A0V
*                                                                      !02054A0W
*             Valid values are any numeric digits.                     !02054A0X
*                                                                      !02054A0Y
*             This field is used by the following device handlers      !02054A0Z
*             where 999 is the maximum value:                          !02054A10
*                 APACS 30/40                                          !02054A11
                                                                       !02054A12
02 POST-COMM-FLR-LMT                   TYPE BINARY 16.                 !02054A13
                                                                       !02054A14
*             The pre-communications floor limit flag contains a       !02054A15
*             value used to indicate whether the PRE-COMM-FLR-LMT      !02054A16
*             should be sent to the terminal by the POS Device         !02054A17
*             Handler.  Valid values are:                              !02054A18
*                                                                      !02054A19
*             0 = Not used for this device type                        !02054A1A
*             1 = Send limit                                           !02054A1B
*             2 = Do not send limit                                    !02054A1C
*                                                                      !02054A1D
*             This field is used by the following device handlers      !02054A1E
*             and a value of 0 indicates that the corresponding flag   !02054A1F
*             in the LCONF should be used (i.e. current processing).   !02054A1G
*                 APACS 30/40                                          !02054A1H
                                                                       !02054A1I
02 PRE-COMM-LMT-FLG                    PIC 9.                          !02054A1J
                                                                       !02054A1K
*             The post-communications floor limit flag contains a      !02054A1L
*             value used to indicate whether the POST-COMM-FLR-LMT     !02054A1M
*             should be sent to the terminal by the POS Device         !02054A1N
*             Handler. Valid values are:                               !02054A1O
*                                                                      !02054A1P
*             0 = Not used for this device type                        !02054A1Q
*             1 = Send limit                                           !02054A1R
*             2 = Do not send limit                                    !02054A1S
*                                                                      !02054A1T
*             This field is used by the following device handlers      !02054A1U
*             and a value of 0 indicates that the corresponding flag   !02054A1V
*             in the LCONF should be used (i.e. current processing).   !02054A1W
*                 APACS 30/40                                          !02054A1X
                                                                       !02054A1Y
02 POST-COMM-LMT-FLG                   PIC 9.                          !02054A1Z
                                                                       !02054A20
*             The multi-currency totals indicator is used to specify   !02054A21
*             how the terminal totals are to be maintained by a        !02054A22
*             device handler supporting transactions in multiple       !02054A23
*             currencies.                                              !02054A24
*                                                                      !02054A25
*             Totals may either be accumulated regardless of           !02054A26
*             currency, i.e. hash totals only, or be accumulated in    !02054A27
*             the primary currency of the terminal, i.e. currency      !02054A28
*             conversion is required.  Valid values are:               !02054A29
*                                                                      !02054A2A
*             0 = Hash Totals                                          !02054A2B
*             1 = Primary Currency Totals                              !02054A2C
                                                                       !02054A2D
02 MULT-CRNCY-TTL                      PIC 9.                          !02054A2E
                                                                       !02054A2F
02 EMV-TERM-CAP                        TYPE *.                         !02054A2G
                                                                       !02054A2H
*             Contains the KEYD Group field which is used to retrieve  !02054A2I
*             the KEYD record.                                         !02054A2J
                                                                       !02054A2K
02 KEYD-GRP                            PIC X(4).                       !02054A2L
                                                                       !02054A2M
*             This field ensures word-alignment.                       !02054A2N
                                                                       !02054A2O
02 USER-FLD3                           PIC X.                          !02054A2P
                                                                       !02054A2Q
                                                                       !02054C00
*                                                                      !02054C01
*             The DPC number of the accepting entity to route          !02054C02
*             transactions to for POS pass-thru processing.  Valid     !02054C03
*             values are "0000" - "9999".  Default value is "0000".    !02054C04
                                                                       !02054C05
02 DPC-NUM                             PIC X(4).                       !02054C06
                                                                       !02054C07
*                                                                      !02054C08
*             The type of entity that will be used to reconcile        !02054C09
*             for POS pass-thru processing.  Valid values are:         !02054C0A
*             "0" = No Totals                                          !02054C0B
*             "1" = Totals by DPC                                      !02054C0C
*             "2" = Totals by Retailer ID                              !02054C0D
*             "3" = Totals by Retailer Group                           !02054C0E
*             "4" = Totals by Terminal ID                              !02054C0F
*             "5" = Totals by Clerk ID                                 !02054C0G
                                                                       !02054C0H
02 RCNCL-ENT                           PIC X.                          !02054C0I
                                                                       !02054C0J
*                                                                      !02054C0K
*             A flag indicating whether enhanced pre-authorization     !02054C0L
*             processing will be supported for this terminal.  Valid   !02054C0M
*             values are:                                              !02054C0N
*             "0" = Enhanced Pre-Auth not supported (Default)          !02054C0O
*             "1" = Enhanced Pre-auth, Debit only                      !02054C0P
*             "2" = Enhanced Pre-auth, Credit only                     !02054C0Q
*             "3" = Enhanced Pre-auth Both Debit & Credit              !02054C0R
                                                                       !02054C0S
02 ENHNC-PRE-AUTH-FLG                  PIC X.                          !02054C0T
                                                                       !02054C0U
*                                                                      !02054C0V
*             A flag indicating whether chargeback transactions        !02054C0W
*             can be generated for pre-authorization completion        !02054C0X
*             transactions initiated from this terminal where          !02054C0Y
*             the hold cannot be found, the hold has expired, or       !02054C0Z
*             the completion amount is greater that the hold amount.   !02054C0a
*             Valid values are:                                        !02054C0b
*             "N" = Chargebacks will not be generated (Default)        !02054C0c
*             "Y" = Chargebacks will be generated                      !02054C0d
                                                                       !02054C0e
02 PRE-AUTH-CHRGBCK-FLG                PIC X.                          !02054C0f
                                                                       !02054C0g
*                                                                      !02054C0h
*             A flag indicating whether this terminal supports         !02054C0i
*             returning the available balance to the terminals.        !02054C0j
*             Valid values are:                                        !02054C0k
*             "N" = Do not return balance (Default)                    !02054C0l
*             "Y" = Return balance                                     !02054C0m
                                                                       !02054C0n
02 BAL-RTRN-FLG                        PIC X.                          !02054C0o
                                                                       !02054C0p
*             The Terminal attendance indicator indicates if the       !02054C0q
*             terminal is attended by the card acceptor.               !02054C0r
*             Valid values are:                                        !02054C0s
*             0 = attended terminal                                    !02054C0t
*             1 = unattended terminal (cardholder-activated terminal   !02054C0u
*                 [CAT], home PC)                                      !02054C0v
*             2 = no terminal used (voice/ARU authorization)           !02054C0w
*                                                                      !02054C0x
                                                                       !02054C0y
02 TERM-ATTEND-IND                     PIC X.                          !02054C0z
                                                                       !02054C10
*                                                                      !02054C11
*             The Terminal Location Indicator indicates the location   !02054C12
*             of the terminal.                                         !02054C13
*             Valid values are:                                        !02054C14
*             0 = On premises of card acceptor facility                !02054C15
*             1 = Off premises of card acceptor facility               !02054C16
*                 (Merchant terminal--remote location)                 !02054C17
*             2 = On premises of cardholder (home PC)                  !02054C18
*             3 = No terminal used (voice/ARU authorization)           !02054C19
*                                                                      !02054C1A
                                                                       !02054C1B
02 TERM-LOC-IND                        PIC X.                          !02054C1C
                                                                       !02054C1D
*                                                                      !02054C1E
*             The Card Capture Indicator indicates whether the         !02054C1F
*             terminal has card capture capabilities.                  !02054C1G
*             Valid values are:                                        !02054C1H
*             0 = has no card capture capability                       !02054C1I
*             1 = has card capture capability                          !02054C1J
*                                                                      !02054C1K
                                                                       !02054C1L
02 CRD-CAPTR-IND                       PIC X.                          !02054C1M
                                                                       !02054C1N
*                                                                      !02054C1O
*             The Cardholder Activated Terminal Indicator indicates    !02054C1P
*             whether the cardholder activated the terminal with the   !02054C1Q
*             use of the card and the CAT security level.              !02054C1R
*             Valid values are:                                        !02054C1S
*             0 = not a CAT transaction                                !02054C1T
*             1 = automated dispensing machine with PIN/level 1        !02054C1U
                                                                       !02054H00
*             2 = self-service terminal/level 2,                       !02054H01
*                 contactless proximity terminal                       !02054H02
                                                                       !02054H03
                                                                       !02054H04
                                                                       !02054H05
*             3 = limited amount terminal/level 3                      !02054C1W
*             4 = in-flight commerce/level 4                           !02054C1X
*             5 = script device                                        !02054C1Y
*             6 = electronic commerce                                  !02054C1Z
*             7 = radio frequency device                               !02054C1a
*                                                                      !02054C1b
02 CRDHLDR-ACTVT-TERM-IND             PIC X.                           !02054C1c
                                                                       !02054C1d
*                                                                      !02054C1e
*             The Card Data Terminal Input Capability Indicator        !02054C1f
                                                                       !02054H06
*             indicates the contact capabilities for transferring the  !02054H07
                                                                       !02054H08
                                                                       !02054H09
                                                                       !02054H0A
*             data on the card into the terminal.                      !02054C1h
*             Valid values are:                                        !02054C1i
*             0 = unknown or unspecified                               !02054C1j
                                                                       !02054H0B
*             1 = none (no terminal used or contactless only)          !02054H0C
                                                                       !02054H0D
                                                                       !02054H0E
                                                                       !02054H0F
*             2 = magnetic stripe reader                               !02054C1l
                                                                       !02054F00
                                                                       !02054H0G
*             3 = reserved for future use                              !02054H0H
*             4 = reserved for future use                              !02054H0I
                                                                       !02054H0J
                                                                       !02054H0K
                                                                       !02054H0L
                                                                       !02054H0M
                                                                       !02054F03
                                                                       !02054F04
                                                                       !02054F05
                                                                       !02054F06
*             5 = magnetic stripe reader and EMV compatible ICC reader !02054C1o
*             6 = key entry only                                       !02054C1p
*             7 = magnetic stripe reader and key entry                 !02054C1q
*             8 = magnetic stripe reader, key entry, and               !02054C1r
*                 EMV compatible ICC reader                            !02054C1s
*             9 = EMV compatible ICC reader                            !02054C1t
*                                                                      !02054C1u
                                                                       !02054C1v
02 TERM-INPUT-CAP-IND                 PIC X.                           !02054C1w
                                                                       !02054C1x
                                                                       !02054F07
*                                                                      !02054F08
*             The Card Data Terminal Output Capability Indicator       !02054F09
*             indicates the terminal capabilities for printing and     !02054F0A
*             displaying messages.                                     !02054F0B
*             Valid values are:                                        !02054F0C
*             0 = unknown or unspecified                               !02054F0D
*             1 = none                                                 !02054F0E
*             2 = printing                                             !02054F0F
*             3 = display                                              !02054F0G
*             4 = printing and display                                 !02054F0H
*                                                                      !02054F0I
                                                                       !02054F0J
02 TERM-OUTPUT-CAP-IND                PIC X.                           !02054F0K
                                                                       !02054F0L
*                                                                      !02054F0M
*             The Cardholder Authentication Capability Indicator       !02054F0N
*             indicates the primary means of verifying the cardholder  !02054F0O
*             at the terminal.                                         !02054F0P
*             Valid values are:                                        !02054F0Q
*             0 = no electronic authentication                         !02054F0R
*             1 = PIN                                                  !02054F0S
*             2 = electronic signature analysis                        !02054F0T
*             3 = biometrics                                           !02054F0U
*             4 = biographics                                          !02054F0V
*             5 = electronic authentication inoperative                !02054F0W
*             6 = other                                                !02054F0X
*             7 = reserved for future use                              !02054F0Y
*             8 = reserved for future use                              !02054F0Z
*             9 = authentication value                                 !02054F0a
*                                                                      !02054F0b
                                                                       !02054F0c
02 CRDHLDR-AUTHN-CAP-IND              PIC X.                           !02054F0d
                                                                       !02054F0e
*                                                                      !02054F0f
                                                                       !02054F0g
*             USER-FLD-ACI is reserved for future BASE24 product       !02054A2R
*             use only.  The designation of "product use only"         !02054A2S
*             provides ACI with the ability to deplete the number      !02054A2T
*             of bytes available within USER-FLD-ACI as product        !02054A2U
*             enhancements are introduced.  When product               !02054A2V
*             enhancements require the addition of new fields          !02054A2W
*             within this file, the procedure to be followed is        !02054A2X
*             to deplete bytes from USER-FLD-ACI and use that          !02054A2Y
*             number of bytes to define new fields.  The new           !02054A2Z
*             field definition(s) should precede the USER-FLD-ACI      !02054A30
*             field.                                                   !02054A31
                                                                       !02054A32
                                                                       !02054C1y
                                                                       !02054F0h
02 USER-FLD-ACI                        PIC X(35).                      !02054F0i
                                                                       !02054F0j
                                                                       !02054C20
                                                                       !02054A34
*             USER-FLD-REGN is reserved for ACI regional use only.     !02054A35
*             Only ACI regions are allowed to use USER-FLD-REGN        !02054A36
*             space.                                                   !02054A37
                                                                       !02054A38
02 USER-FLD-REGN                       PIC X(50).                      !02054A39
                                                                       !02054A3A
*             USER-FLD-CUST is reserved for customer use only.         !02054A3B
*             Only customers are allowed to use USER-FLD-CUST          !02054A3C
*             space.                                                   !02054A3D
                                                                       !02054A3E
02 USER-FLD-CUST                       PIC X(50).                      !02054A3F
                                                                       !02054A3G
                                                                       !02054A3H
                                                                       !02055A00
                                                                       !02055A01
END                                                                    !02056
                                                                       !02057
?setsection
