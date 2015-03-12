**FIX2.28  09/30/11  DDLFATD 6008 DDL    AT60DDL  AT0F040  H                 ***
**FIX2.28  12/04/07  DDLFATD 6007 DDL    AT60DDL  AT0B320  G                 ***
**FIX2.26  11/17/05  DDLFATD 6006 DDL    AT60DDL  AT09333  F                 ***
**FIX2.24  11/18/04  DDLFATD 6005 DDL    AT60DDL  AT08221  E                 ***
**FIX2.23  11/10/03  DDLFATD 6004 DDL    AT60DDL  AT07172  D                 ***
**FIX2.23  02/25/03  DDLFATD 6003 DDL    AT60DDL  AT06285  C                 ***
**FIX2.23  12/08/02  DDLFATD 6002 DDL    AT60DDL  AT06108  B                 ***
**FIX2.14  03/21/01  DDLFATD 6001 DDL    AT60DDL  AT04340  A                 ***
!*SEQ2.00  01/03/01  DDLFATD 6000 DDL    AT60DDL                               !
?page "ATD - BASE24-atm Terminal Data files"
?section atd-history
**********************************************************************!!00005
*                                                                    *!!00006
*                             BASE24-atm                             *!!00007
*                             ----------                             *!!00008
*                                                                    *!!00009
*             DDL for the BASE24-atm Terminal Data files             *!!00010
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
********************************************************************  !!00036
*             Release 6.0                                          *  !!00037
********************************************************************  !!00038
* 30NOV2000   JAS/479  jfu/543                                        !!00039
* Symptom:    Release 6.0 Enhancements                                !!00040
* Problem:    None.                                                   !!00041
* Fix:        Initial Release.                                        !!00042
*             Split terminal data records into separate files - two   !!00043
*             for dynamic data and one for static data.               !!00044
*             Removed the device specific information.  This          !!00045
*             information was moved to the appropriate device handler !!00046
*             subvolumes.                                             !!00047
*             Added the TKN-RETRV-OPT field.                          !!00048
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00049
*             CUSTMACS flags, and run MAKE.                           !!00050
* Reference:  WO #981118-3 (Transactions Allowed)                     !!00051
*             WO #990108-1 (TDF Expansion)                            !!00052
*             WO #000616-1 (Product Separation)                       !!00053
                                                                       !00053A00
* 30MAR2001   CLR/451                                                  !00053A01
* Symptom:    Added 5.3 EMV Support                                    !00053A02
* Problem:    None.                                                    !00053A03
* Fix:        Added EMV-TERM-CAP to Static Core Data.                  !00053A04
*             Added USER-FLD-ACI, USER-FLD-REGN and USER-FLD-CUST.     !00053A05
* Dependency: Restore Release 6.0 files, modify the appropriate        !00053A06
*             CUSTMACS flags, and run MAKE.                            !00053A07
* Reference:  WO #010102-01 (EMV 5.3/6.0 Uplift)                       !00053A08
*             WO #000101-01 (General Release)                          !00053A09
                                                                       !00053B00
* 20NOV2002   ml/298                                                   !00053B01
* Symptom:    None.                                                    !00053B02
* Problem:    Misleading comments for ACQ-TXN-PRFL.                    !00053B03
* Fix:        Changed the comments for ACQ-TXN-PRFL.                   !00053B04
* Dependency: Apply fix to DDLFATD and run MAKE.                       !00053B05
* Reference:  Case 349104                                              !00053B06
*                                                                      !00053B07
* 21NOV2002   ml/298                                                   !00053B08
* Symptom:    ATD Infrastructure Enhancement.                          !00053B09
* Problem:    None.                                                    !00053B0A
* Fix:        Additional DATA-AREA offset / length pairs were added    !00053B0B
*             to the ATDD1 and ATDS1 for future device specific        !00053B0C
*             enhancements.  Added the TERM-LOC-IND for future         !00053B0D
*             use.                                                     !00053B0E
* Dependency: Apply fix to DDLFATD, DDLGATD, SETLS, SVATDTS and run    !00053B0F
*             MAKE.                                                    !00053B0G
* Reference:  WO #000101-01 (General Release)                          !00053B0H
*                                                                      !00053B0I
* 21NOV2002   MEP/2128                                                 !00053B0J
* Symptom:    Multiple Currency Dispense Enhancement                   !00053B0K
* Problem:    None.                                                    !00053B0L
* Fix:        Added four occurrences of selection currency fields      !00053B0M
*             to ATDS1-CORE.  These are for the Diebold 10XX/478X      !00053B0N
*             and NCR 5XXX device handlers.                            !00053B0O
* Dependency: Apply fix to DDLFATD, DDLGATD, SETLS, SVATDTS and run    !00053B0P
*             MAKE.                                                    !00053B0Q
* Reference:  WO #020716-03 (Multi-Currency ATM Dispense)              !00053B0R
*                                                                      !00053B0S
* 21NOV2002   CLR/451                                                  !00053B0T
* Symptom:    Dynamic Key Management Support                           !00053B0U
* Problem:    None.                                                    !00053B0V
* Fix:        Added the DKM structure to ATDD1-CORE.                   !00053B0W
* Dependency: Apply fix to DDLFATD, DDLGATD, SETLS, SVATDTS and run    !00053B0X
*             MAKE.                                                    !00053B0Y
* Reference:  WO #020716-05 (General Security Enhancements)            !00053B0Z
                                                                       !00053B0a
                                                                       !00053C00
* 17FEB2003   SAG/302                                                  !00053C01
* Symptom:    Offline PIN Management - Enhancement 04.                 !00053C02
* Problem:    None.                                                    !00053C03
* Fix:        Added SCRIPT-FLAGS to ATDD1-CORE to indicate what type   !00053C04
*             of scripts are being sent to the ATM.                    !00053C05
* Dependency: Apply fix to DDLFATD, DDLGATD and run MAKE.              !00053C06
*             Refer to BA60UD06.SCNPPN50 for a complete listing of     !00053C07
*             dependencies.                                            !00053C08
* Reference:  WO #020707-15                                            !00053C09
                                                                       !00053C0A
* 17FEB2003   jfu/543  clr/451                                         !00053C0B
* Symptom:    The inline conversion of the ATDD1 record failed.        !00053C0C
* Problem:    The position of the USER-FLD-ACI field within the        !00053C0D
*             ATDD1-CORE area changed.                                 !00053C0E
* Fix:        For the inline conversion to work properly, the          !00053C0F
*             position of the USER-FLD-ACI field within the            !00053C0G
*             ATDD1-CORE area must not change.  The SCRIPT-FLAGS       !00053C0H
*             and USER-FLD-ACI fields are defined in the same          !00053C0I
*             location.  USER-FLD-ACI-UNUSED field was added and       !00053C0J
*             will be used for future product enhancements.            !00053C0K
*             Comments were added to ATDD1-CORE and ATDS1-CORE to      !00053C0L
*             aid in the implementation of future enhancements.        !00053C0M
* Dependency: Apply fix to DDLFATD and run MAKE.                       !00053C0N
* Reference:  Case #359299                                             !00053C0O
                                                                       !00053C0P
                                                                       !00053C0Q
                                                                       !00053D00
* 15OCT2003   sjt/272                                                  !00053D01
* Symptom:    Dual Site Processing.                                    !00053D02
* Problem:    None.                                                    !00053D03
* Fix:        Add the DUAL-SITE-IND field to ATDD1-CORE to indicate    !00053D04
*             the location of a terminal as local or remote.           !00053D05
* Dependency: Apply fix to DDLFATD and run Make. Refer to              !00053D06
*             BA60UD07.SCNDUALS for a complete listing of              !00053D07
*             dependencies.                                            !00053D08
* Reference:  WO #030930-01                                            !00053D09
                                                                       !00053D0A
                                                                       !00053E00
* 15OCT2004   watsonl                                                  !00053E01
* Symptom:    Wincor NDC+ EMV Enhancement.                             !00053E02
* Problem:    None.                                                    !00053E03
* Fix:        Added the NATV-MSG-FRMT field to the ATDS1-CORE. This    !00053E04
*             field will be used by the device handlers to             !00053E05
*             distinguish between standard (NCR) and non-standard      !00053E06
*             (e.g. Wincor) EMV ATMs. Also, added the                  !00053E07
*             emv-natv-msg-frmt-constants section to include           !00053E08
*             defines for standard and non-standard native message     !00053E09
*             formats. In addition, to accomodate the previous inline  !00053E0A
*             conversion, the position of USER-FLD-ACI field within    !00053E0B
*             the ATDSD1-CORE area must not change. This required      !00053E0C
*             recasting USER-FLD-ACI as a redefine of NATV-MSG-FRMT,   !00053E0D
*             and defining a new field, USER-FLD-ACI-UNUSED, for       !00053E0E
*             future enhancement work.                                 !00053E0F
* Dependency: Apply fix to DDLFATD and run MAKE. Refer to              !00053E0G
*             BA60UD08.SCNIWN5 for a complete listing of dependencies. !00053E0H
* Reference:  WO #020719-01.                                           !00053E0I
                                                                       !00053E0J
                                                                       !00053F00
* 14OCT2005   WisharJ                                                  !00053F01
* Symptom:    Shared 912 AKDS enhancement                              !00053F02
*             Shared NDC+ AKDS enhancement.                            !00053F03
* Problem:    None.                                                    !00053F04
* Fix:        Added the EPP-FRMT and HDWR fields to the ATDD1-CORE.    !00053F05
*             Added the KEY-SIGNER field to the ATDS1-CORE.            !00053F06
*             EPP-FRMT will indicate whether the EPP in the ATM        !00053F07
*             supports Signature- or Certificate-based AKDS.           !00053F08
*             HDWR will indicate the manufacturer of the ATM.          !00053F09
*             KEY-SIGNER will indicate which organization is acting    !00053F0A
*             as certificate authority.                                !00053F0B
* Dependency: Apply fix to DDLFATD and run Make. Refer to              !00053F0C
*             BA60UD09.SCNWDAK and BA60UD09.SCNWNAK for complete lists !00053F0D
*             of dependencies.                                         !00053F0E
* Reference:  WO #041129-01 (Shared 912 AKDS)                          !00053F0F
*             WO #030917-03 (Shared NDC+ AKDS).                        !00053F0G
                                                                       !00053F0H
                                                                       !00053G00
* 12OCT2007   WisharJ                                                  !00053G01
* Symptom:    Shared NDC+ BNA Support                                  !00053G02
* Problem:    None.                                                    !00053G03
* Fix:        Added the NIDF-PRFL field to the ATDS1-CORE, redefining  !00053G04
*             an area of the USER-FLD-REGN space.                      !00053G05
*             The NIDF-PRFL field will indicate the Profile to be used !00053G06
*             to read up the appropriate NIDF record.                  !00053G07
* Dependency: Apply fix to DDLFATD and run Make. Refer to              !00053G08
*             BA60UD0B.SCNWNBN for a complete listing of dependencies. !00053G09
* Reference:  WO #051129-01                                            !00053G0A
*                                                                      !00053G0B
* 12OCT2007   WisharJ                                                  !00053G0C
* Symptom:    None.                                                    !00053G0D
* Problem:    Incorrect field description for NATV-MSG-FRMT.           !00053G0E
* Fix:        Modified comments only. Updated description              !00053G0F
*             of NATV-MSG-FRMT field.                                  !00053G0G
* Dependency: Apply fix to DDLFATD and run Make.                       !00053G0H
* Reference:  Case #429513                                             !00053G0I
                                                                       !00053G0J
                                                                       !00053H00
* 27SEP2011   WisharJ                                                  !00053H01
* Symptom:    NCR Enhanced AKDS                                        !00053H02
* Problem:    None.                                                    !00053H03
* Fix:        Added the Enhanced-scheme and var-lgth-epp-sn fields     !00053H04
*             to the ATDD1-CORE.  Reduced the user-fld-aci-unused      !00053H05
*             appropriately.                                           !00053H06
* Dependency: Apply fix to DDLFATD.  Run Make.                         !00053H07
*             Refer to BA60UD0F.SCNRKL for a complete listing of       !00053H08
*             dependencies.                                            !00053H09
* Reference:  WO #001257                                               !00053H0A
                                                                       !00053H0B
                                                                       !00053C0R
                                                                       !00053C0S
********************************************************************* !!00054
                                                                       !00055
?section atd-deflist
?deflist
********************************************************************* !!00060
*              BASE24-atm Terminal Data files (ATD)                 * !!00061
********************************************************************* !!00062
*                                                                   * !!00063
*   Identification                                                  * !!00064
*                                                                   * !!00065
*     The ATD contains the files for every ATM type terminal in the * !!00066
*     logical network controlled by the BASE24 network.  A file     * !!00067
*     contains either dynamic or static data associated with the    * !!00068
*     device.  Dynamic data is data that is updated during the      * !!00069
*     online transaction path).  Static data is data that is not    * !!00070
*     updated during the online transaction path.                   * !!00071
*                                                                   * !!00072
*   Security                                                        * !!00073
*                                                                   * !!00074
*     The ATD is secured under Tandem's group level security so     * !!00075
*     only authorized network operators may access (or start        * !!00076
*     programs which access) the file.                              * !!00077
*                                                                   * !!00078
*       USER ID         = <BASE24 node name>.*                      * !!00079
*       FILE CODE       = 0                                         * !!00080
*       ACCESS SECURITY = GGGG                                      * !!00081
*                                                                   * !!00082
*   Usage                                                           * !!00083
*                                                                   * !!00084
*       Device Handler    I/O  Random(Primary)         Shared       * !!00085
*       Settlement        I/O  Random(Alternate-"OW")  Shared       * !!00086
*       File Maintenance  I/O  Random(Primary)         Shared       * !!00087
*                                                                   * !!00088
********************************************************************* !!00089
                                                                       !00090
?section atdd1
?setsection atdd1
********************************************************************* !!00095
*              BASE24-atm Terminal Data Dynamic file - general data * !!00096
********************************************************************* !!00097
                                                                       !00098
?comments
                                                                       !00101
*             The ATDD1 contains dynamic records for each ATM type    !!00102
*             terminal in the logical network controlled by the       !!00103
*             BASE24 network.  The ATDD1 is used to define the        !!00104
*             characteristics of the terminal that will change from   !!00105
*             transaction to transaction (e.g., transaction totals).  !!00106
*                                                                     !!00107
*             This section describes the fields included in a ATDD1   !!00108
*             record.                                                 !!00109
*                                                                     !!00110
*             LCONF ASSIGN:     ATM-ATD-DYN-GNRL                      !!00111
                                                                       !00112
RECORD ATDD1.                   FILE IS "ATDD1" KEY-SEQUENCED.         !00113
                                                                       !00114
*             Unique identifier for this terminal.                    !!00115
                                                                       !00116
  02 TERM                              TYPE TDF-PRIKEY   KEYTAG 0.     !00117
                                                                       !00118
*             The following fields contain information about the      !!00119
*             terminal owner.  The main purpose of the TERM-OWNER     !!00120
*             field is to provide the key information for locating    !!00121
*             the IDF record for the institution.                     !!00122
                                                                       !00123
  02 TERM-OWNER                        KEYTAG "OW".                    !00124
                                                                       !00125
*             The logical network of the financial institution owning !!00126
*             the terminal.                                           !!00127
                                                                       !00128
     04 LN                             TYPE *.                         !00129
                                                                       !00130
*             The FIID of the financial institution owning the        !!00131
*             terminal.                                               !!00132
                                                                       !00133
     04 FIID                           TYPE *.                         !00134
                                                                       !00135
*             Identifies the last file maintenance action on this     !!00136
*             record.  This includes the user who did the update, the !!00137
*             time at which it was done, and the type of update.      !!00138
                                                                       !00139
  02 LAST-AFM                          TYPE *.                         !00140
                                                                       !00141
*             Identifies the last transaction to update this record.  !!00142
*             The value in this field ensures against multiple or     !!00143
*             incomplete updates due to process failure and restart   !!00144
*             and occurs in every record that is updated by the       !!00145
*             online system.                                          !!00146
                                                                       !00147
  02 LAST-TRAN                         TYPE *.                         !00148
                                                                       !00149
*             The offset to the common data in the record data area   !!00150
*             (DATA-AREA) of this record is not defined, since a      !!00151
*             core-ofst field would always be zero (i.e., the common  !!00152
*             data is always at the beginning of the record data      !!00153
*             area).                                                  !!00154
*                                                                     !!00155
*             The length of the common data in this record.  This     !!00156
*             length is not device specific.                          !!00157
                                                                       !00158
  02 CORE-LGTH                         TYPE BINARY 16.                 !00159
                                                                       !00160
*             The offset to the device information data in the record !!00161
*             data area (DATA-AREA) of this record.                   !!00162
                                                                       !00163
  02 DEV-INFO-OFST                     TYPE BINARY 16.                 !00164
                                                                       !00165
*             The length of the device information data in this       !!00166
*             record.  This length is device specific.                !!00167
                                                                       !00168
  02 DEV-INFO-LGTH                     TYPE BINARY 16.                 !00169
                                                                       !00170
*             The offset to the device dependent data in the record   !!00171
*             data area (DATA-AREA) of this record.                   !!00172
                                                                       !00173
  02 DEV-DATA-OFST                     TYPE BINARY 16.                 !00174
                                                                       !00175
*             The length of the device dependent data in this record. !!00176
*             This length is device specific.                         !!00177
                                                                       !00178
  02 DEV-DATA-LGTH                     TYPE BINARY 16.                 !00179
                                                                       !00180
                                                                       !00180B00
*             The following ten additional data offset/length pairs    !00180B01
*             support data areas that are defined for enhancements.    !00180B02
*                                                                      !00180B03
*             If one to four bytes of data are required by an          !00180B04
*             enhancement, redefine the appropriate user field area    !00180B05
*             - USER-FLD-ACI, USER-FLD-REGN, or USER-FLD-CUST.         !00180B06
*                                                                      !00180B07
*             Otherwise, one of these additional data areas must be    !00180B08
*             utilized.                                                !00180B09
*                                                                      !00180B0A
*             If a customer does not utilize the additional data       !00180B0B
*             areas (i.e., the enhancement is not used), the values    !00180B0C
*             of the offset and length of each additional data area    !00180B0D
*             will be set to zero.                                     !00180B0E
*                                                                      !00180B0F
*             Once an additional data area is utilized, the length     !00180B0G
*             of the appropriate data area will reflect the            !00180B0H
*             size of the enhancement definition and the offset        !00180B0I
*             of the appropriate data area will be set based           !00180B0J
*             on the value of the DEV-DATA-OFST plus each offset       !00180B0K
*             length pair of the other data areas.                     !00180B0L
*                                                                      !00180B0M
*             In some instances, the device handler will be            !00180B0N
*             responsible for setting the offset/length pair for an    !00180B0O
*             enhancement.                                             !00180B0P
*                                                                      !00180B0Q
*             In other instances, the device specific server within    !00180B0R
*             the BASE24 AFT subsystem will be responsible for         !00180B0S
*             setting the offset/length pair for an enhancement.       !00180B0T
*                                                                      !00180B0U
*             When an enhancement requires one of the additional       !00180B0V
*             data areas:                                              !00180B0W
*                                                                      !00180B0X
*             1. The next available additional data offset/length be   !00180B0Y
*                utilized for the given device type.                   !00180B0Z
*             2. The offset/length pair be redefined with an           !00180B0a
*                appropriate enhancement name.                         !00180B0b
                                                                       !00180C00
*             These changes should be in the appropriate device        !00180C01
*             handlers' DDLs.                                          !00180C02
                                                                       !00180C03
                                                                       !00180C04
                                                                       !00180C05
                                                                       !00180B0f
  02 ADNL-OFST                         TYPE BINARY 16 occurs 10 times. !00180B0g
  02 ADNL-LGTH                         TYPE BINARY 16 occurs 10 times. !00180B0h
                                                                       !00180B0i
                                                                       !00180B0j
                                                                       !00180B0k
*             Contains the common data, the device information data,   !00180B0l
*             the device dependent data, and up to ten additional      !00180B0m
*             data areas for this record. Please refer to the          !00180B0n
*             appropriate device handler subvolume for the device      !00180B0o
*             information data and the device dependent data layouts.  !00180B0p
                                                                       !00180B0q
                                                                       !00181B00
                                                                       !00181B01
                                                                       !00181B02
                                                                       !00186
                                                                       !00187B00
  02 DATA-AREA                         PIC X(3938).                    !00187B01
                                                                       !00187B02
                                                                       !00188
END                                                                    !00189
                                                                       !00190
                                                                       !00190A00
?nocomments
?page
?section atdd2
?setsection atdd2
                                                                       !00190A09
********************************************************************* !!00197
*              BASE24-atm Terminal Data Dynamic file - scratch pad  * !!00198
********************************************************************* !!00199
                                                                       !00200
?comments
                                                                       !00203
*             The ATDD2 contains dynamic records for each ATM type    !!00204
*             terminal in the logical network controlled by the       !!00205
*             BASE24 network.  The ATDD2 is used to store the         !!00206
*             token data that existed in the BASE24-atm Standard      !!00207
*             Internal Message (i.e., STM) for the last transaction   !!00208
*             processed by BASE24 and acquired at this terminal.      !!00209
*             For Visa Cash transactions, the ATDD2 will store the    !!00210
*             entire STM for the last transaction processed by        !!00211
*             BASE24 and acquired at this terminal.                   !!00212
*                                                                     !!00213
*             This section describes the fields included in a ATDD2   !!00214
*             record.                                                 !!00215
*                                                                     !!00216
*             LCONF ASSIGN:     ATM-ATD-DYN-SCRATCH-PAD               !!00217
                                                                       !00218
                                                                       !00219
RECORD ATDD2.                   FILE IS "ATDD2" KEY-SEQUENCED.         !00220
                                                                       !00221
*             Unique identifier for this terminal.                    !!00222
                                                                       !00223
  02 TERM                              TYPE TDF-PRIKEY   KEYTAG 0.     !00224
                                                                       !00225
*             The sequence number associated with this transaction.   !!00226
                                                                       !00227
  02 SEQ-NUM                           PIC X(12).                      !00228
                                                                       !00229
*             Contains the token data that existed in the BASE24-atm  !!00230
*             Standard Internal Message (i.e., STM) for the last      !!00231
*             transaction processed by BASE24 and acquired at this    !!00232
*             terminal.  For Visa Cash transactions, this area        !!00233
*             contains the entire STM for the last transaction        !!00234
*             processed by BASE24 and acquired at this terminal.      !!00235
                                                                       !00236
  02 DATA-AREA                         PIC X(4034).                    !00237
                                                                       !00238
END                                                                    !00239
                                                                       !00240
                                                                       !00240A00
?nocomments
?page
?section atds1
?setsection atds1
                                                                       !00240A09
********************************************************************* !!00247
*              BASE24-atm Terminal Data Static file - general data  * !!00248
********************************************************************* !!00249
                                                                       !00250
?comments
                                                                       !00253
*             The ATDS1 contains static records for each ATM type     !!00254
*             terminal in the logical network controlled by the       !!00255
*             BASE24 network.  The ATDS1 is used to define the        !!00256
*             characteristics of the terminal that will not change    !!00257
*             from transaction to transaction (e.g., terminal         !!00258
*             owner or terminal type).                                !!00259
*                                                                     !!00260
*             This section describes the fields included in a ATDS1   !!00261
*             record.                                                 !!00262
*                                                                     !!00263
*             LCONF ASSIGN:     ATM-ATD-STATIC-GNRL                   !!00264
                                                                       !00265
RECORD ATDS1.                   FILE IS "ATDS1" KEY-SEQUENCED.         !00266
                                                                       !00267
*             Unique identifier for this terminal.                    !!00268
                                                                       !00269
  02 TERM                              TYPE TDF-PRIKEY   KEYTAG 0.     !00270
                                                                       !00271
*             The symbolic name of the Device Handler process for     !!00272
*             this terminal.  This name must match the name given the !!00273
*             Device Handler process in the Network Environment       !!00274
*             File (NEF).                                             !!00275
                                                                       !00276
  02 DH-PRO-NAME                       TYPE SYM-NAME     KEYTAG "DH".  !00277
                                                                       !00278
*             Identifies the last file maintenance action on this     !!00279
*             record.  This includes the user who did the update, the !!00280
*             time at which it was done, and the type of update.      !!00281
                                                                       !00282
  02 LAST-AFM                          TYPE *.                         !00283
                                                                       !00284
*             The offset to the common data in the record data area   !!00285
*             (DATA-AREA) of this record is not defined, since a      !!00286
*             core-ofst field would always be zero (i.e., the common  !!00287
*             data is always at the beginning of the record data      !!00288
*             area).                                                  !!00289
*                                                                     !!00290
*             The length of the common data in this record.  This     !!00291
*             length is not device specific.                          !!00292
                                                                       !00293
  02 CORE-LGTH                         TYPE BINARY 16.                 !00294
                                                                       !00295
*             The offset to the device information data in the record !!00296
*             data area (DATA-AREA) of this record.                   !!00297
                                                                       !00298
  02 DEV-INFO-OFST                     TYPE BINARY 16.                 !00299
                                                                       !00300
*             The length of the device information data in this       !!00301
*             record.  This length is device specific.                !!00302
                                                                       !00303
  02 DEV-INFO-LGTH                     TYPE BINARY 16.                 !00304
                                                                       !00305
*             The offset to the device dependent data in the record   !!00306
*             data area (DATA-AREA) of this record.                   !!00307
                                                                       !00308
  02 DEV-DATA-OFST                     TYPE BINARY 16.                 !00309
                                                                       !00310
*             The length of the device dependent data in this record. !!00311
*             This length is device specific.                         !!00312
                                                                       !00313
  02 DEV-DATA-LGTH                     TYPE BINARY 16.                 !00314
                                                                       !00314B00
*             The following ten additional data offset/length pairs    !00314B01
*             support data areas that are defined for enhancements.    !00314B02
*                                                                      !00314B03
*             If one to four bytes of data are required by an          !00314B04
*             enhancement, redefine the appropriate user field area    !00314B05
*             - USER-FLD-ACI, USER-FLD-REGN, or USER-FLD-CUST.         !00314B06
*                                                                      !00314B07
*             Otherwise, one of these additional data areas must be    !00314B08
*             utilized.                                                !00314B09
*                                                                      !00314B0A
*             If a customer does not utilize the additional data       !00314B0B
*             areas (i.e., the enhancement is not used), the values    !00314B0C
*             of the offset and length of each additional data area    !00314B0D
*             will be set to zero.                                     !00314B0E
*                                                                      !00314B0F
*             Once an additional data area is utilized, the length     !00314B0G
*             of the appropriate data area will reflect the            !00314B0H
*             size of the enhancement definition and the offset        !00314B0I
*             of the appropriate data area will be set based           !00314B0J
*             on the value of the DEV-DATA-OFST plus each offset       !00314B0K
*             length pair of the other data areas.                     !00314B0L
*                                                                      !00314B0M
*             In some instances, the device handler will be            !00314B0N
*             responsible for setting the offset/length pair for an    !00314B0O
*             enhancement.                                             !00314B0P
*                                                                      !00314B0Q
*             In other instances, the device specific server within    !00314B0R
*             the BASE24 AFT subsystem will be responsible for         !00314B0S
*             setting the offset/length pair for an enhancement.       !00314B0T
*                                                                      !00314B0U
*             When an enhancement requires one of the additional       !00314B0V
*             data areas:                                              !00314B0W
*                                                                      !00314B0X
*             1. The next available additional data offset/length be   !00314B0Y
*                utilized for the given device type.                   !00314B0Z
*             2. The offset/length pair be redefined with an           !00314B0a
*                appropriate enhancement name.                         !00314B0b
                                                                       !00314C00
*             These changes should be in the appropriate device        !00314C01
*             handlers' DDLs.                                          !00314C02
                                                                       !00314C03
                                                                       !00314C04
                                                                       !00314C05
                                                                       !00314B0f
  02 ADNL-OFST                         TYPE BINARY 16 occurs 5 times.  !00314B0g
  02 ADNL-LGTH                         TYPE BINARY 16 occurs 5 times.  !00314B0h
                                                                       !00314B0i
                                                                       !00315
*             Contains the common data, the device information data,  !!00316
*             and the device dependent data for this record.  Please  !!00317
*             refer to the appropriate device handler subvolume for   !!00318
*             the device information data and the device dependent    !!00319
*             data layouts.                                           !!00320
                                                                       !00321
                                                                       !00322B00
  02 DATA-AREA                         PIC X(3960).                    !00322B01
                                                                       !00322B02
                                                                       !00323
END                                                                    !00324
                                                                       !00325
?page
?section atdd1-core
?setsection atdd1-core
                                                                       !00332
*             The following structure defines the common data area for!!00333
*             the records defined in the BASE24-atm Terminal Data     !!00334
*             Dynamic file - general data (i.e., ATDD1).              !!00335
*                                                                     !!00336
*             This data will be located at beginning of the record    !!00337
*             data area of the ATDD1.                                 !!00338
                                                                       !00339
DEFINITION ATDD1-CORE.                                                 !00340
                                                                       !00341
*             A code indicating the type of terminal.  Valid values   !!00342
*             are:                                                    !!00343
*                                                                     !!00344
*             22 = NCR 5XXX                                           !!00345
*             30 = Diebold 10XX/478X                                  !!00346
                                                                       !00347
  02 TERM-TYP                          PIC X(2).                       !00348
                                                                       !00349
*             The region number assigned to the terminal by the       !!00350
*             financial institution owning the terminal.              !!00351
                                                                       !00352
  02 REGN-ID                           TYPE REGN.                      !00353
                                                                       !00354
*             The branch number assigned to the terminal by the       !!00355
*             financial institution owning the terminal.              !!00356
                                                                       !00357
  02 BRCH-ID                           TYPE BRCH.                      !00358
                                                                       !00359
*             The current settlement date (YYMMDD) for this terminal. !!00360
*             All transactions originating at this terminal will be   !!00361
*             logged to the TLF on this date, regardless of the card  !!00362
*             issuer's current business date.                         !!00363
                                                                       !00364
  02 POST-DAT                          TYPE DAT.                       !00365
                                                                       !00366
*             The last transaction sequence number.  If the terminal  !!00367
*             supports the generation of such a number, this number   !!00368
*             comes from the terminal.  Otherwise, it is generated by !!00369
*             the Device Handler for the terminal.                    !!00370
                                                                       !00371
  02 TRAN-SEQ-NUM                      TYPE BINARY 32.                 !00372
                                                                       !00373
*             Refer to the individual field descriptions in the       !!00374
*             HOPPER definition.                                      !!00375
                                                                       !00376
  02 HOPR                              TYPE HOPPER OCCURS 6 TIMES.     !00377
                                                                       !00378
*             The number of deposits received since the terminal was  !!00379
*             last balanced.                                          !!00380
                                                                       !00381
  02 NUM-DEP                           TYPE BINARY 16.                 !00382
                                                                       !00383
*             The unverified amount of deposits received since the    !!00384
*             terminal was last balanced.                             !!00385
                                                                       !00386
  02 AMT-DEP                           TYPE BINARY 64.                 !00387
                                                                       !00388
*             The number of commercial deposits (e.g., from           !!00389
*             Securomatic devices) received since the terminal was    !!00390
*             last balanced.                                          !!00391
                                                                       !00392
  02 NUM-CMRCL-DEP                     TYPE BINARY 16.                 !00393
                                                                       !00394
*             The total amount of commercial deposits (e.g., from     !!00395
*             Securomatic devices) received since the terminal was    !!00396
*             last balanced.                                          !!00397
                                                                       !00398
  02 AMT-CMRCL-DEP                     TYPE BINARY 64.                 !00399
                                                                       !00400
*             The total number of payment envelopes received since    !!00401
*             the terminal was last balanced.                         !!00402
                                                                       !00403
  02 NUM-PAY                           TYPE BINARY 16.                 !00404
                                                                       !00405
*             The unverified amount of payments-enclosed transactions !!00406
*             received since the terminal was last balanced.          !!00407
                                                                       !00408
  02 AMT-PAY                           TYPE BINARY 64.                 !00409
                                                                       !00410
*             The total number of "message to financial institution"  !!00411
*             envelopes received since the terminal was last          !!00412
*             balanced.                                               !!00413
                                                                       !00414
  02 NUM-MSG                           TYPE BINARY 16.                 !00415
                                                                       !00416
*             The total number of checks received (i.e. cashed        !!00417
*             or deposited) since the terminal was last balanced.     !!00418
                                                                       !00419
  02 NUM-CHK                           TYPE BINARY 16.                 !00420
                                                                       !00421
*             The unverified total amount of checks received          !!00422
*             (i.e. cashed or deposited) since the terminal was       !!00423
*             last balanced.                                          !!00424
                                                                       !00425
  02 AMT-CHK                           TYPE BINARY 64.                 !00426
                                                                       !00427
*             The total number of log-only transactions completed     !!00428
*             since the terminal was last balanced.                   !!00429
                                                                       !00430
  02 NUM-LOGONLY                       TYPE BINARY 16.                 !00431
                                                                       !00432
*             The total number of cards retained since the terminal   !!00433
*             was last balanced.                                      !!00434
                                                                       !00435
  02 CRDS-RET                          TYPE BINARY 16.                 !00436
                                                                       !00437
*             The unverified amount of terminal debits since the      !!00438
*             terminal was last balanced.  The amount in this field   !!00439
*             consists of debits from the institution's point of      !!00440
*             view.  Transaction amounts are added to the balance in  !!00441
*             this field for:                                         !!00442
*                                                                     !!00443
*             o  On-us and not-on-us deposits.  This includes         !!00444
*                all types of deposit transactions (i.e. deposit      !!00445
*                transactions, split deposit transactions and deposit !!00446
*                with cash back transactions).  Note that these       !!00447
*                transactions are supported for envelope, commercial  !!00448
*                and check deposit types.                             !!00449
*             o  On-us and not-on-us payment-enclosed transactions    !!00450
*             o  On-us and not-on-us transfers                        !!00451
*             o  On-us and not-on-us payments between accounts        !!00452
                                                                       !00453
  02 TERM-DB                           TYPE BINARY 64.                 !00454
                                                                       !00455
*             The total amount of terminal credits since the terminal !!00456
*             was last balanced.  The amount in this field consists   !!00457
*             of credits from the institution's point of view.        !!00458
*             Transaction amounts are added to the balance in this    !!00459
*             field for:                                              !!00460
*                                                                     !!00461
*             o  On-us and not-on-us withdrawals                      !!00462
*             o  On-us and not-on-us cash checks                      !!00463
*             o  On-us and not-on-us deposits with cash back.  Note   !!00464
*                that only the cash back amount is included in the    !!00465
*                TERM-CR amount.                                      !!00466
*             o  On-us and not-on-us transfers                        !!00467
*             o  On-us and not-on-us payments between accounts        !!00468
*             o  On-us and not-on-us non-currency dispense            !!00469
*                transactions                                         !!00470
                                                                       !00471
  02 TERM-CR                           TYPE BINARY 64.                 !00472
                                                                       !00473
*             The total amount of on-us debits since the terminal was !!00474
*             last balanced.  The amount in this field consists of    !!00475
*             debits from the customer's point of view.  Transaction  !!00476
*             amounts are added to the balance in this field for:     !!00477
*                                                                     !!00478
*             o  On-us withdrawals                                    !!00479
*             o  On-us cash checks                                    !!00480
*             o  On-us and not-on-us deposits with cash back.  Note   !!00481
*                that only the cash back amount is included in the    !!00482
*                ON-US-DB amount.                                     !!00483
*             o  On-us transfers                                      !!00484
*             o  On-us payments between accounts                      !!00485
*             o  On-us non-currency dispense transactions             !!00486
                                                                       !00487
                                                                       !00488
  02 ON-US-DB                          TYPE BINARY 64.                 !00489
                                                                       !00490
*             The total amount of on-us credits since the terminal    !!00491
*             was last balanced.  The amount in this field consists of!!00492
*             credits from the customer's point of view.  Transaction !!00493
*             amounts are added to the balance in this field for:     !!00494
*                                                                     !!00495
*             o  On-us deposits.  This includes all types of deposit  !!00496
*                transactions (i.e. deposit transactions, split       !!00497
*                deposit transactions and deposit with cash back      !!00498
*                transactions).  Note that these transactions are     !!00499
*                supported for envelope, commercial and check deposit !!00500
*                types.                                               !!00501
*             o  On-us payment enclosed transactions                  !!00502
*             o  On-us transfers                                      !!00503
*             o  On-us payments between accounts                      !!00504
                                                                       !00505
  02 ON-US-CR                          TYPE BINARY 64.                 !00506
                                                                       !00507
*             The time difference (plus or minus in minutes) between  !!00508
*             this terminal and the Tandem processor location.  The   !!00509
*             value in this field is added to the Tandem's time to    !!00510
*             obtain the terminal's local time for printing receipts. !!00511
                                                                       !00512
  02 TIM-OFST                          TYPE BINARY 16.                 !00513
                                                                       !00514
*             A code indicating the type of currency used to          !!00515
*             represent the terminal's amount fields (i.e., the       !!00516
*             nation that printed the currency).  Valid values are    !!00517
*             listed in the ISO Codes for the Representation of       !!00518
*             Currencies and Funds, 4217-1990.                        !!00519
                                                                       !00520
  02 AMT-CRNCY-CDE                     TYPE CRNCY-CDE.                 !00521
                                                                       !00522
*             This field is not used.                                 !!00523
                                                                       !00524
  02 USER-FLD1                         PIC X.                          !00525
                                                                       !00526
*             The following structure is required for the             !!00527
*             Self Service Banking (SSB) Check Application.           !!00528
                                                                       !00529
  02 SSBC.                                                             !00530
                                                                       !00531
*             A code indicating whether this terminal supports the    !!00532
*             SSB Check Application features.  Valid values are:      !!00533
*                                                                     !!00534
*             Y = Yes, this terminal supports the SSB Check           !!00535
*                 Application                                         !!00536
*             N = No, this terminal does not support the SSB Check    !!00537
*                 Application                                         !!00538
                                                                       !00539
     04 CHK-SUPPORT                    PIC X.                          !00540
                                                                       !00541
*             This field is not used.                                 !!00542
                                                                       !00543
     04 USER-FLD2                      PIC X.                          !00544
                                                                       !00545
*             The following fields contain information about the      !!00546
*             contents of each depository bin.                        !!00547
                                                                       !00548
     04 DEP-BIN                        OCCURS 4 TIMES.                 !00549
                                                                       !00550
*             The number of checks retained in the depository bin.    !!00551
                                                                       !00552
        06 SSBC-NUM-CHK                TYPE BINARY 16.                 !00553
                                                                       !00554
*             The unverified amount of checks retained in the         !!00555
*             depository bin.                                         !!00556
                                                                       !00557
        06 SSBC-AMT-CHK                TYPE BINARY 64.                 !00558
                                                                       !00559
*             The terminal depository bin sequence number.            !!00560
*             This field contains a sequence number ranging from      !!00561
*             0001 to 9999.  It is incremented by the Device Handler  !!00562
*             on each check transaction.                              !!00563
                                                                       !00564
        06 SEQ-NUM                     TYPE BINARY 16.                 !00565
                                                                       !00566
*             Number of Smart Card load value transactions since      !!00567
*             the terminal was last balanced.                         !!00568
                                                                       !00569
  02 NUM-LOAD-VALUE                    TYPE BINARY 16.                 !00570
                                                                       !00571
*             Amount of Smart Card load value transactions since      !!00572
*             the terminal was last balanced.                         !!00573
                                                                       !00574
  02 AMT-LOAD-VALUE                    TYPE BINARY 64.                 !00575
                                                                       !00576
*             A code that indicates how the terminal was last         !!00577
*             balanced.                                               !!00578
*                                                                     !!00579
*             If a terminal is force balanced, the value in the POST- !!00580
*             DAT field is the only value updated; the terminal       !!00581
*             itself is not balanced.  If the terminal is card or CRT !!00582
*             balanced, the balancing totals and the value in the     !!00583
*             POST-DAT field are updated.  Valid values are:          !!00584
*                                                                     !!00585
*             0 = Card balanced                                       !!00586
*             1 = CRT balanced                                        !!00587
*             9 = Force balanced                                      !!00588
                                                                       !00589
  02 BAL-FLG                           PIC X.                          !00590
                                                                       !00591
*             Indicates whether or not the terminal needs to be cut   !!00592
*             over.  The value in this field is controlled by the     !!00593
*             system.  Valid values are:                              !!00594
*                                                                     !!00595
*             0 = The terminal does not need to be cutover.           !!00596
*             1 = The terminal does need to be cutover.               !!00597
*                                                                     !!00598
*             This field is set by the Settlement Initiator process   !!00599
*             and is reset by the Device Handler.                     !!00600
                                                                       !00601
  02 CUTOVER-PEND                      PIC 9.                          !00602
                                                                       !00603
*             The terminal owner's posting date (YYMMDD) used while   !!00604
*             the terminal is waiting to cut over.  The value in this !!00605
*             field is controlled by the system.  It is set by the    !!00606
*             Settlement Initiator process and reset by the Device    !!00607
*             Handler.                                                !!00608
                                                                       !00609
  02 NEW-POST-DAT                      TYPE DAT.                       !00610
                                                                       !00611
*             Indicates the date that the terminal was last balanced. !!00612
*             (Force balances do not affect the value in this field.) !!00613
                                                                       !00614
  02 LAST-SETL-DAT                     TYPE BINARY 32.                 !00615
                                                                       !00616
*             Indicates the time that the terminal was last balanced. !!00617
*             (Force balances do not affect the value in this field.) !!00618
                                                                       !00619
  02 LAST-SETL-TIM                     TYPE BINARY 16.                 !00620
                                                                       !00621
*                                                                     !!00622
*             This field is for informational only data.              !!00623
*                                                                     !!00624
                                                                       !00625
                                                                       !00625A00
  02 USER-DEFINED-AREA                 PIC X(70).                      !00625A01
                                                                       !00625A02
                                                                       !00625B00
*             The following structure is required for the              !00625B01
*             Dynamic Key Management enhancement.                      !00625B02
                                                                       !00625B03
  02 DKM.                                                              !00625B04
                                                                       !00625B05
*             The number of transactions requiring a PIN verification  !00625B06
*             since the last PIN key change.                           !00625B07
                                                                       !00625B08
     04 PIN-TXN-CNTR                   TYPE BINARY 16.                 !00625B09
                                                                       !00625B0A
*             The number of transactions with a PIN verification error !00625B0B
*             since the last PIN key change.                           !00625B0C
                                                                       !00625B0D
     04 PIN-ERR-CNTR                   TYPE BINARY 16.                 !00625B0E
                                                                       !00625B0F
*             The number of transactions requiring a MAC verification  !00625B0G
*             since the last MAC key change.                           !00625B0H
                                                                       !00625B0I
     04 MAC-TXN-CNTR                   TYPE BINARY 16.                 !00625B0J
                                                                       !00625B0K
*             The number of transactions with a MAC verification error !00625B0L
*             since the last MAC key change.                           !00625B0M
                                                                       !00625B0N
     04 MAC-ERR-CNTR                   TYPE BINARY 16.                 !00625B0O
                                                                       !00625B0P
*             The Julian timestamp of the last key change.             !00625B0Q
                                                                       !00625B0R
     04 KEY-CHNG-TS                    TYPE BINARY 64.                 !00625B0S
                                                                       !00625C00
                                                                       !00625C01
*             This field contains a copy of the script                 !00625C02
*             processing flags from the EMV Response Token.            !00625C03
*             Refer to the base token DDLs for further information.    !00625C04
                                                                       !00625C05
  02 SCRIPT-FLAG.                                                      !00625C06
     04 SEND-CRD-BLK                   PIC X.                          !00625C07
     04 SEND-PUT-DATA                  PIC X.                          !00625C08
                                                                       !00625C09
  02 SCRIPT-FLAGS REDEFINES SCRIPT-FLAG                                !00625C0A
                                       PIC X OCCURS 2 TIMES.           !00625C0B
                                                                       !00625C0C
*             The original purpose of the USER-FLD-ACI field was for   !00625C0D
*             future BASE24 product enhancements.  This field must     !00625C0E
*             remain in its original position because of an inline     !00625C0F
*             conversion of the ATDD1 record.  Refer to the            !00625C0G
*             USER-FLD-ACI-UNUSED field for further information.       !00625C0H
                                                                       !00625C0I
  02 USER-FLD-ACI REDEFINES SCRIPT-FLAG                                !00625C0J
                                       PIC X(2).                       !00625C0K
                                                                       !00625C0L
                                                                       !00625D00
*             Field to denote a terminal as running either local or    !00625D01
*             remote when operating dual site. Valid values are:       !00625D02
*                                                                      !00625D03
*             L     = Local                                            !00625D04
*             R     = Remote                                           !00625D05
*             Blank = Local                                            !00625D06
                                                                       !00625D07
  02 DUAL-SITE-IND                     PIC X.                          !00625D08
                                                                       !00625D09
                                                                       !00625F00
*             The format of AKDS that the EPP in the ATM will          !00625F01
*             support. Valid Values are:                               !00625F02
*             '0' = None                                               !00625F03
*             '1' = Signature                                          !00625F04
*             '2' = Certificate                                        !00625F05
*             '3' = Both                                               !00625F06
                                                                       !00625F07
  02 EPP-FRMT                          PIC X.                          !00625F08
                                                                       !00625F09
*             The manufacturer of the ATM device.  Valid Values are:   !00625F0A
*             '0' = None                                               !00625F0B
*             '1' = Wincor                                             !00625F0C
*             '2' = NCR                                                !00625F0D
*             '3' = Diebold                                            !00625F0E
*             '4' = Fujitsu                                            !00625F0F
*             '5' = De La Rue                                          !00625F0G
*             '6' = Triton                                             !00625F0H
*             '7' = Olivetti                                           !00625F0I
                                                                       !00625F0J
  02 HDWR                              PIC X.                          !00625F0K
                                                                       !00625F0L
                                                                       !00625H00
                                                                       !00625H01
*             Indicates whether the ATM supports the NCR enhanced      !00625H02
*             AKDS scheme. Valid Values are:                           !00625H03
                                                                       !00625H04
*             'Y' = NCR enhanced AKDS Scheme is supported              !00625H05
*             'N' = NCR enhanced AKDS Scheme is not supported          !00625H06
*             ' ' = NCR enhanced AKDS Scheme status unknown, AKDS      !00625H07
*                   not yet attempted.                                 !00625H08
                                                                       !00625H09
  02 ENHANCED-SCHEME                   PIC X.                          !00625H0A
                                                                       !00625H0B
*             Indicates whether the ATM supports variable length       !00625H0C
*             EPP Serial Numbers. Valid Values are:                    !00625H0D
                                                                       !00625H0E
*             'Y' = Variable length EPP Serial numbers are supported   !00625H0F
*             'N' = Variable length EPP Serial numbers are not         !00625H0G
*                   supported                                          !00625H0H
*             ' ' = Variable length EPP Serial numbers status unknown, !00625H0I
*                   AKDS not yet attempted.                            !00625H0J
                                                                       !00625H0K
  02 VAR-LGTH-EPP-SN                   PIC X.                          !00625H0L
                                                                       !00625H0M
                                                                       !00625F0M
*             USER-FLD-ACI-UNUSED is reserved for future BASE24        !00625C0M
*             product use only.  The designation of                    !00625C0N
*             "product use only" provides ACI with the ability to      !00625C0O
*             deplete the number of bytes available within             !00625C0P
*             USER-FLD-ACI-UNUSED as product enhancements are          !00625C0Q
*             introduced.  When product enhancements require the       !00625C0R
*             addition of new fields within this file, the procedure   !00625C0S
*             to be followed is to deplete bytes from the              !00625C0T
*             USER-FLD-ACI-UNUSED field and use that number of bytes   !00625C0U
*             to define new fields.  The new field definition(s)       !00625C0V
*             should precede the USER-FLD-ACI-UNUSED field.            !00625C0W
                                                                       !00625C0X
                                                                       !00625D0A
                                                                       !00625F0N
                                                                       !00625H0N
  02 USER-FLD-ACI-UNUSED               PIC X(17).                      !00625H0O
                                                                       !00625H0P
                                                                       !00625F0P
                                                                       !00625D0C
                                                                       !00625C0Z
                                                                       !00625C0a
                                                                       !00625C0b
                                                                       !00625C0c
                                                                       !00625A0F
*             USER-FLD-REGN is reserved for ACI regional use only.     !00625A0G
*             Only ACI regions are allowed to use USER-FLD-REGN space. !00625A0H
                                                                       !00625A0I
                                                                       !00625C0d
  02 USER-FLD-REGN                     PIC X(24).                      !00625C0e
                                                                       !00625C0f
                                                                       !00625A0K
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !00625A0L
*             Only customers are allowed to use USER-FLD-CUST space.   !00625A0M
                                                                       !00625A0N
                                                                       !00625C0g
  02 USER-FLD-CUST                     PIC X(24).                      !00625C0h
                                                                       !00625C0i
                                                                       !00625A0P
                                                                       !00625A0Q
                                                                       !00626A00
                                                                       !00626A01
                                                                       !00627
END                                                                    !00628
                                                                       !00629
?page
?section atds1-core
?setsection atds1-core
                                                                       !00636
*             The following structure defines the common data area for!!00637
*             the records defined in the BASE24-atm Terminal Data     !!00638
*             Static file - general data (i.e., ATDS1).               !!00639
*                                                                     !!00640
*             This data will be located at beginning of the record    !!00641
*             data area of the ATDS1.                                 !!00642
                                                                       !00643
DEFINITION ATDS1-CORE.                                                 !00644
                                                                       !00645
*             A code indicating the type of terminal.  Valid values   !!00646
*             are listed under the atdd1-core definition.             !!00647
                                                                       !00648
  02 TERM-TYP                          PIC X(2).                       !00649
                                                                       !00650
*             The log routing code for all messages logged            !!00651
*             specifically on behalf of this terminal.  This log      !!00652
*             routing code is used by the Device Handler when sending !!00653
*             messages to the network logging facility.               !!00654
                                                                       !00655
  02 LOG-RTE-CDE                       TYPE BINARY 16.                 !00656
                                                                       !00657
*             An emergency phone number to call when problems occur   !!00658
*             with the terminal.  This number is for informational    !!00659
*             purposes only.                                          !!00660
                                                                       !00661
  02 ADM-PHONE                         TYPE PHONE-NUM.                 !00662
                                                                       !00663
*             The name of the Authorization process to which          !!00664
*             transactions from this terminal are to be sent.  This   !!00665
*             name must match the name given to an Authorization      !!00666
*             process in the Network Environment File (NEF).          !!00667
*                                                                     !!00668
*             When multiple Authorization processes are used, the     !!00669
*             value in this field determines the process that will    !!00670
*             receive transactions from this terminal.                !!00671
*                                                                     !!00672
*             ALTERNATE QUEUE ROUTING - When multiple Authorization   !!00673
*             processes are used, BASE24 allows Device Handler        !!00674
*             processes to send transactions to a generic queue       !!00675
*             process instead of an Authorization process.  This      !!00676
*             generic queue process queues the transactions and then  !!00677
*             sends them to the first available Authorization         !!00678
*             process.  Alternate queue routing is designed for load- !!00679
*             balancing.  When one Authorization process gets busy,   !!00680
*             the Generic Queue process simply routes transactions to !!00681
*             one that is free.  In order to use alternate queue      !!00682
*             routing, the AUTH-PRO-NAME field must contain the name  !!00683
*             of the Generic Queue process as defined in the Network  !!00684
*             Environment File (NEF).                                 !!00685
                                                                       !00686
  02 AUTH-PRO-NAME                     TYPE SYM-NAME.                  !00687
                                                                       !00688
*             The transit/routing or issuer identification number for !!00689
*             the institution that owns the terminal.  The number is  !!00690
*             unique to the institution.                              !!00691
                                                                       !00692
  02 INST-ID-NUM                       TYPE ID-NUM.                    !00693
                                                                       !00694
*             The alternate routing group number; used to route       !!00695
*             transactions initiated by cardholders that are outside  !!00696
*             the logical network.                                    !!00697
                                                                       !00698
  02 ALT-RTE-GRP                       TYPE ID-NUM.                    !00699
                                                                       !00700
                                                                       !00700B00
*             Profile used as part of the key to read the APCF to      !00700B01
*             determine if a specific transaction is allowed for       !00700B02
*             not-on-us cardholders at terminals owned by this         !00700B03
*             institution.                                             !00700B04
                                                                       !00700B05
                                                                       !00701B00
                                                                       !00701B01
                                                                       !00701B02
                                                                       !00706
                                                                       !00707
  02 ACQ-TXN-PRFL                      TYPE PRFL.                      !00708
                                                                       !00709
*             The name of the financial institution owning the        !!00710
*             terminal.                                               !!00711
                                                                       !00712
  02 TERM-OWNER-NAME                   PIC X(22).                      !00713
                                                                       !00714
*             A unique address which identifies the location of the   !!00715
*             terminal.  This field is used as print information on   !!00716
*             the ATM customer receipt.                               !!00717
                                                                       !00718
  02 TERM-NAME-LOC                     PIC X(25).                      !00719
                                                                       !00720
*             The name of the city where the terminal is located.     !!00721
                                                                       !00722
  02 TERM-CITY                         PIC X(13).                      !00723
                                                                       !00724
*             The state, province, or political subdivision where the !!00725
*             terminal is located.                                    !!00726
*                                                                     !!00727
*             In the U.S., only the first two characters are used to  !!00728
*             identify the state where the terminal is located.       !!00729
*             Codes for other countries must be agreed upon by all    !!00730
*             sharing institutions.                                   !!00731
                                                                       !00732
  02 TERM-ST-X                         PIC X(3).                       !00733
                                                                       !00734
*             The country where the terminal is located.  Valid       !!00735
*             values are listed in the ISO "Codes for the             !!00736
*             Representation of Names of Countries", 3166-1981.       !!00737
                                                                       !00738
  02 TERM-CNTRY-X                      PIC X(2).                       !00739
                                                                       !00740
*             The state, province, or political subdivision where the !!00741
*             terminal is located.  The entry in this field is used   !!00742
*             to validate sharing transactions.                       !!00743
*                                                                     !!00744
*             In the United States, this field contains the ANSI      !!00745
*             standard state code as specified in "States and Outlying!!00746
*             Areas of the United States", FIPS PUB 5-1.  Codes for   !!00747
*             other countries must be agreed upon by all sharing      !!00748
*             institutions.                                           !!00749
                                                                       !00750
  02 TERM-ST                           PIC 9(2).                       !00751
                                                                       !00752
*             The county where the terminal is located.  The entry in !!00753
*             this field is used to validate sharing transactions.    !!00754
*                                                                     !!00755
*             For the United States, this field contains the ANSI     !!00756
*             standard county code specified in "Counties and County  !!00757
*             Equivalents of the States of the United States", FIPS   !!00758
*             PUB 6-1.                                                !!00759
*                                                                     !!00760
*             Codes for other countries must be agreed upon by all    !!00761
*             sharing institutions.                                   !!00762
                                                                       !00763
  02 TERM-CNTY                         PIC 9(3).                       !00764
                                                                       !00765
*             The country where the terminal is located.  The entry   !!00766
*             in this field is used to validate sharing transactions. !!00767
*             Valid values are listed in the ISO "Codes For the       !!00768
*             Representation of Names of Countries", 3166-1981.       !!00769
                                                                       !00770
  02 TERM-CNTRY                        PIC 9(3).                       !00771
                                                                       !00772
*             Indicates whether or not the terminal is capable of     !!00773
*             supporting multiple accounts.  The Device Handler       !!00774
*             process will place this value in the Standard Internal  !!00775
*             Message (STM).  Valid values are:                       !!00776
*                                                                     !!00777
*             0 = Terminal does not support multiple accounts         !!00778
*             1 = Terminal does support multiple accounts             !!00779
                                                                       !00780
  02 MULT-ACCT                         PIC X.                          !00781
                                                                       !00782
*             A table of one-character codes used to classify         !!00783
*             terminals as members of sharing groups.  Zero is not a  !!00784
*             valid entry.                                            !!00785
                                                                       !00786
  02 SHRG-GRP                          PIC X OCCURS 24 TIMES.          !00787
                                                                       !00788
*             The postal ZIP code of the location of the terminal.    !!00789
                                                                       !00790
  02 POSTAL-CDE                        TYPE *.                         !00791
                                                                       !00792
*             The following structure is required for the             !!00793
*             Self Service Banking (SSB) Check Application.           !!00794
                                                                       !00795
  02 SSBC.                                                             !00796
                                                                       !00797
*             A name identifying a group of terminals with like       !!00798
*             depository bin sort mechanisms to which this terminal   !!00799
*             Bin Sort File (BSF).  The BSF defines the bin sort      !!00800
*             mechanism.                                              !!00801
                                                                       !00802
     04 BIN-GRP                        PIC 9(4).                       !00803
                                                                       !00804
*             The depository bin to use to retain the check if a      !!00805
*             BSF record can not be located.                          !!00806
                                                                       !00807
     04 DFLT-BIN                       PIC X.                          !00808
                                                                       !00809
                                                                       !00810
*             This field is used for surcharging.  This field         !!00811
*             identifies the terminal surcharge group of which        !!00812
*             this terminal is a member.  A TERM-PROFILE can          !!00813
*             be used for multiple TERM-OWNER.FIIDs.                  !!00814
                                                                       !00815
  02 TERM-SUR-PROFILE                  PIC X(4).                       !00816
                                                                       !00817
*             The routing group number used to route non-currency     !!00818
*             dispense transactions initiated by cardholders that     !!00819
*             are outside the logical network.                        !!00820
*                                                                     !!00821
                                                                       !00822
  02 NCD-RTE-GRP                       TYPE ID-NUM.                    !00823
                                                                       !00824
*             The token data retrieval option.  When the device       !!00825
*             handler is processing a reversal, this field indicates  !!00826
*             where the token data should be retrieved.  Valid values !!00827
*             are:                                                    !!00828
*                                                                     !!00829
*             0 = no tokens included in the reversal message.         !!00830
*             1 = ATD. Token data retrieved from the terminal data    !!00831
*                      file, and appended to the reversal message.    !!00832
*             2 = TLF. Token data retrieved from the Transaction Log  !!00833
*                      File, and appended to the reversal message.    !!00834
*             9 = IDF TKN Retrieval Option (default value) This       !!00835
*                 option is specified at the institution level.       !!00836
*                 Please refer to the corresponding field in the      !!00837
*                 BASE24-atm segment of the IDF.                      !!00838
                                                                       !00839
  02 TKN-RETRV-OPT                     PIC X.                          !00840
                                                                       !00841
                                                                       !00842B00
                                                                       !00842B01
                                                                       !00843
                                                                       !00844B00
                                                                       !00844B01
                                                                       !00844A00
                                                                       !00844A01
  02 EMV-TERM-CAP                      TYPE *.                         !00844A02
                                                                       !00844A03
                                                                       !00844B02
*             The Terminal Location Indicator indicates the location   !00844B03
*             of the terminal.                                         !00844B04
*             Valid values are:                                        !00844B05
*             0 = On premises of card acceptor facility                !00844B06
*             1 = Off premises of card acceptor facility               !00844B07
*                 (remote location)                                    !00844B08
                                                                       !00844B09
                                                                       !00844C00
  02 TERM-LOC-IND                      PIC X.                          !00844C01
                                                                       !00844C02
                                                                       !00844B0B
*             The selection currency codes are the currencies          !00844B0C
*             displayed to the cardholder at the ATM.  The four        !00844B0D
*             currency selection fields relate to the value selected   !00844B0E
*             by the cardholder at the device.                         !00844B0F
                                                                       !00844B0G
                                                                       !00844C03
  02 SELCT-CRNCY-CDE                   TYPE CRNCY-CDE OCCURS 4 TIMES.  !00844C04
                                                                       !00844C05
                                                                       !00844B0I
                                                                       !00844E00
                                                                       !00844G00
*             The NATV-MSG-FRMT field is used by the device handler    !00844G01
*             to distinguish between terminals sending 'standard       !00844G02
*             format' native messages and those sending 'non-standard  !00844G03
*             format' messages. For example, if the NCR 5XXX Device    !00844G04
*             Handler receives a message in native NDC format, that    !00844G05
*             is 'standard format'. If the Diebold 10XX Device Handler !00844G06
*             recieves a message in Wincor 912 emulation format, that  !00844G07
*             is 'non-standard format'.                                !00844G08
*             This field is used when processing enhancements such as  !00844G09
*             EMV, AKDS, BNA, CPM etc.                                 !00844G0A
*                                                                      !00844G0B
*                 '0' (standard format) (default)                      !00844G0C
*                 '1' (non-standard format)                            !00844G0D
                                                                       !00844G0E
                                                                       !00844G0F
                                                                       !00844G0G
                                                                       !00844G0H
                                                                       !00844E08
  02  NATV-MSG-FRMT                    PIC X.                          !00844E09
                                                                       !00844E0A
*             The original purpose of the USER-FLD-ACI field was for   !00844E0B
*             future BASE24 product enhancements.  This field must     !00844E0C
*             remain in its original position because of an inline     !00844E0D
*             conversion of the ATDD1 record.  Refer to the            !00844E0E
*             USER-FLD-ACI-UNUSED field for further information.       !00844E0F
                                                                       !00844E0G
  02  USER-FLD-ACI  REDEFINES  NATV-MSG-FRMT                           !00844E0H
                                       PIC X.                          !00844E0I
                                                                       !00844E0J
                                                                       !00844F00
*             An identifier used to indicate which organization is     !00844F01
*             acting as the Certificate Authority. The value in this   !00844F02
*             field will be used as a key to read the correct entry    !00844F03
*             in the Host Public Key Primary or Secondary Datasources  !00844F04
*             in the TSS database. This is a free format text field.   !00844F05
*             A default value of "HOST" will be used by TSS if this    !00844F06
*             field is spaces.                                         !00844F07
                                                                       !00844F08
  02 KEY-SIGNER                        PIC X(16).                      !00844F09
                                                                       !00844F0A
                                                                       !00844F0B
*             USER-FLD-ACI-UNUSED is reserved for future BASE24        !00844E0K
*             product use only.  The designation of                    !00844E0L
*             "product use only" provides ACI with the ability to      !00844E0M
*             deplete the number of bytes available within             !00844E0N
*             USER-FLD-ACI-UNUSED as product enhancements are          !00844E0O
*             introduced.  When product enhancements require the       !00844E0P
*             addition of new fields within this file, the procedure   !00844E0Q
*             to be followed is to deplete bytes from the              !00844E0R
*             USER-FLD-ACI-UNUSED field and use that number of bytes   !00844E0S
*             to define new fields.  The new field definition(s)       !00844E0T
*             should precede the USER-FLD-ACI-UNUSED field.            !00844E0U
                                                                       !00844E0V
                                                                       !00844F0C
  02  USER-FLD-ACI-UNUSED              PIC X(7).                       !00844F0D
                                                                       !00844F0E
                                                                       !00844E0X
                                                                       !00844E0Y
                                                                       !00844E0Z
                                                                       !00844E0a
                                                                       !00844C0F
                                                                       !00844G0I
*             Profile used as the key to read the NIDF to determine    !00844G0J
*             the notes (bills) that are accepted and potentially      !00844G0K
*             recycled at an ATM supporting the Shared BNA             !00844G0L
*             enhancement.                                             !00844G0M
                                                                       !00844G0N
  02 NIDF-PRFL                         TYPE PRFL.                      !00844G0O
                                                                       !00844G0P
                                                                       !00844A0G
*             USER-FLD-REGN is reserved for ACI regional use only.     !00844A0H
*             Only ACI regions are allowed to use USER-FLD-REGN space. !00844A0I
                                                                       !00844A0J
                                                                       !00844C0G
                                                                       !00844G0Q
  02 USER-FLD-REGN                     PIC X(8).                       !00844G0R
                                                                       !00844G0S
                                                                       !00844C0I
                                                                       !00844A0L
*             USER-FLD-CUST is reserved for BASE24 customer use only.  !00844A0M
*             Only customers are allowed to use USER-FLD-CUST space.   !00844A0N
                                                                       !00844A0O
                                                                       !00844C0J
  02 USER-FLD-CUST                     PIC X(24).                      !00844C0K
                                                                       !00844C0L
                                                                       !00844A0Q
                                                                       !00845
END                                                                    !00846
                                                                       !00847
?section emv-natv-msg-frmt-constants
?setsection emv-natv-msg-frmt-constants
?page "EMV Native Message Format Constants"
*##################################################################### !00847E06
*#                                                                   # !00847E07
*#                  EMV Native Message Format Constants              # !00847E08
*#                                                                   # !00847E09
*#  The following constants are the values used for the EMV          # !00847E0A
*#  native message format field in BASE24-atm Terminal Data Files.   # !00847E0B
*#                                                                   # !00847E0C
*##################################################################### !00847E0D
                                                                       !00847E0E
?nocobol
                                                                       !00847E0H
*             Native EMV Message Format constants                      !00847E0I
                                                                       !00847E0J
constant emv-dflt-natv-msg-frmt-d    value  " ".                       !00847E0K
constant emv-std-natv-msg-frmt-d     value  "0".                       !00847E0L
constant emv-nonstd-natv-msg-frmt-d  value  "1".                       !00847E0M
                                                                       !00847E0N
?cobol =atddl_atddlcob
                                                                       !00847E0Q
                                                                       !00850
                                                                       !00851
                                                                       !00851E00
?setsection
?deflist
                                                                       !00851E05
