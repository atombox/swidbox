**FIX2.28  12/22/09  DDLFTDF 6021 DDL    AT60DDL  AT0D391  U                 ***
**FIX2.28  12/02/08  DDLFTDF 6020 DDL    AT60DDL  AT0C304  T                 ***
**FIX2.28  11/23/06  DDLFTDF 6019 DDL    AT60DDL  AT0A301  S                 ***
**FIX2.24  11/18/04  DDLFTDF 6018 DDL    AT60DDL  AT08222  R                 ***
**FIX2.23  11/10/03  DDLFTDF 6017 DDL    AT60DDL  AT07173  Q                 ***
**FIX2.23  02/26/03  DDLFTDF 6016 DDL    AT60DDL  AT06302  P                 ***
**FIX2.11  01/02/01  DDLFTDF 6015 DDL    AT60DDL  AT04190  O                 ***
**SEQ0.04  11/01/00  DDLFTDF 6014 DDL    AT60DDL  AT04000  N                 ***
**FIX2.11  04/07/00  DDLFTDF 5314 DDL    AT53DDL  AT04169  N                 ***
**FIX2.07  04/19/99  DDLFTDF 5313 DDL    AT53DDL  AT04105  M                 ***
**FIX2.07  12/17/98  DDLFTDF 5312 DDL    AT53DDL  AT03465  L                 ***
**SYNC.04  12/09/98  DDLFTDF 5311 DDL    AT53DDL  AT04000  K                 ***
**FIX2.06  11/20/98  DDLFTDF 5311 DDL    AT53DDL  AT03427  K                 ***
**FIX2.06  10/14/98  DDLFTDF 5310 DDL    AT53DDL  AT03365  J                 ***
**FIX2.03  08/28/98  DDLFTDF 5309 DDL    AT53DDL  AT03000  I                 ***
**FIX2.06  06/24/98  DDLFTDF 5109 DDL    AT51DDL  AT03225  I                 ***
**FIX2.06  06/16/98  DDLFTDF 5108 DDL    AT51DDL  AT03217  H                 ***
**FIX2.06  05/04/98  DDLFTDF 5107 DDL    AT51DDL  AT03178  G                 ***
**FIX2.04  12/08/97  DDLFTDF 5106 DDL    AT51DDL  AT03040  F                 ***
**SYNC.03  08/21/97  DDLFTDF 5105 DDL    AT51DDL  AT03000  E                 ***
**FIX2.04  06/06/97  DDLFTDF 5105 DDL    AT51DDL  AT02100  E                 ***
**SYNC.02  06/28/96  DDLFTDF 5104 DDL    AT51DDL  AT02000  D                 ***
**FIX2.00  10/10/95  DDLFTDF 5104 DDL    AT51DDL  AT51140  D                 ***
**FIX2.00  06/21/95  DDLFTDF 5103 DDL    AT51DDL  AT51007  C                 ***
**FIX2.00  08/25/93  DDLFTDF 5102 DDL    AT51DDL  AT50231  B                 ***
**FIX2.00  06/15/93  DDLFTDF 5001 DDL    AT50DDL  AT50173  A                 ***
!*SEQ2.00  01/25/93  DDLFTDF 5000 DDL    AT50DDL                               !
                                                                       !00000O00
?page  "TDF - BASE24-atm Terminal Data File"
?section tdf-history
                                                                       !00000U00
********************************************************************** !00000U01
*                                                                    * !00000U02
*                             BASE24-atm                             * !00000U03
*                             ----------                             * !00000U04
*                                                                    * !00000U05
*             DDL for the BASE24-atm Terminal Data File              * !00000U06
*                                                                    * !00000U07
*                   Proprietary Software Product                     * !00000U08
*                                                                    * !00000U09
*                        ACI Worldwide, Inc.                         * !00000U0A
*                        6060 Coventry Drive                         * !00000U0B
*                   Elkhorn, Nebraska  68022-6482                    * !00000U0C
*                          (402) 390-7600                            * !00000U0D
*                                                                    * !00000U0E
*    Copyright by ACI Worldwide, Inc. 2009                           * !00000U0F
*                                                                    * !00000U0G
*    All Rights Reserved.                                            * !00000U0H
*                                                                    * !00000U0I
********************************************************************** !00000U0J
                                                                       !00000U0K
                                                                       !00000U0L
                                                                       !00000U0M
                                                                       !00000U0N
*                                                                      !00000O0V
* Record of Changes:                                                   !00000O0W
*                                                                      !00000O0X
* Date        Person/Emp #                                             !00000O0Y
* ---------   ------------                                             !00000O0Z
                                                                       !00000O10
                                                                       !00000O11
                                                                       !00000O12
                                                                       !00000O13
* 26Mar87        Brenda Boyer                                        #!!00009
* ENHANCEMENTS:  Modified TDF record definition to:                  #!!00010
*                1) Support Postal Code enhancement by adding the    #!!00011
*                   field postal-cde to the main portion of the TDF. #!!00012
*                2) Increase the size of the TDF from 3272 to 4072   #!!00013
*                   bytes (max for relative files) inorder to allow  #!!00014
*                   plenty of space for future enhancements.  This   #!!00015
*                   included increasing the size of the user-fld in  #!!00016
*                   the main portion of the TDF and increasing the   #!!00017
*                   size of device dependent data.                   #!!00018
*                3) Support a load file name for the Omron device by #!!00019
*                   replacing 35 bytes of the Omron device specific  #!!00020
*                   user fld with the field load-fname.              #!!00021
* DEPENDENCIES:  The previous changes will require Device Handler    #!!00022
*                and AFT changes.                                    #!!00023
* ENHANCEMENTS:  Added the record definition TDX for the TDF AFT     #!!00024
*                requestors to use inorder to pass only the necessary#!!00025
*                information between the pathway modules.            #!!00026
*                NOTE:  The 02 levels of TDF are 03 levels in TDX    #!!00027
*                which minimizes the changes to the TDF requestors.  #!!00028
* DEPENDENCIES:  The previous changes will require AFT changes.      #!!00029
*                                                                    #!!00030
                                                                       !00031
* 08Jun87        Cheryl Knapp           REFERENCE: None              #!!00032
* SYMPTOM:       None.                                               #!!00033
* PROBLEM:       None (ENHANCEMENT).                                 #!!00034
*     FIX:       Added a field to allow the Docutel 5100 to utilize  #!!00035
*                a variable length message header by replacing two   #!!00036
*                bytes of the device specific user-fld with the      #!!00037
*                field msg-hdr-len.                                  #!!00038
* DEPENDENCIES:  The previous change will require Device Handler     #!!00039
*                and AFT changes.                                    #!!00040
                                                                       !00041
                                                                       !00042
* 10Jun87        Cheryl Knapp           REFERENCE: None              #!!00043
* SYMPTOM:       None.                                               #!!00044
* PROBLEM:       The above changes were made only to the TDF, and    #!!00045
*                AFT requesters need the information in the TDX.     #!!00046
*     FIX:       Added msg-hdr-len to the TDX definition.            #!!00047
* DEPENDENCIES:  RE-DDL this file.                                   #!!00048
                                                                       !00049
                                                                       !00050
* 27Aug87        Cheryl Knapp           REFERENCE: 103449            #!!00051
* SYMPTOM:       Cobol programs wouldn't compile ( ambiguous         #!!00052
*                reference error on user-fld2 )                      #!!00053
* PROBLEM:       Conversion programs referenced "user-fld2" of the   #!!00054
*                TDF, and since there were two, and the reference    #!!00055
*                can't be fully qualified, there were ambiguous      #!!00056
*                reference errors.                                   #!!00057
*     FIX:       Renamed variable to "user-fld2a".                   #!!00058
* DEPENDENCIES:  RE-DDL this file.                                   #!!00059
                                                                       !00060
                                                                       !00061
* 02Mar88        Mike Ahrens            REFERENCE: None              #!!00062
* SYMPTOM:       None.                                               #!!00063
* PROBLEM:       None.                                               #!!00064
* FIX            Enhancement.                                        #!!00065
*                Added TDF.I4730.ISSUE-DEP-RCPT to toggle the use    #!!00066
*                of the receipt.  "0" indicates don't use and "1"    #!!00067
*                says to issue the depository receipt.  Note:        #!!00068
*                This doesn't effect the delivery of the transaction #!!00069
*                receipt to the customer at the end of the           #!!00070
*                transaction.                                        #!!00071
*                                                                    #!!00072
*                Comments changed for two tdf fields:                #!!00073
*                TDF.NOT-ON-US-CRD.TRAN[11] now represents Deposits  #!!00074
*                with Cash back.                                     #!!00075
*                TDF.I4730.TRAN-CLASS.RCPT-OPTION[11] now controls   #!!00076
*                the receipt option for deposits with cash back.     #!!00077
*                                                                    #!!00078
* DEPENDENCIES:  RE-DDL this file.                                   #!!00079
                                                                       !00080
                                                                       !00081
* 11Jul88        Nelson                 REFERENCE: None              #!!00082
* SYMPTOM:       None.                                               #!!00083
* PROBLEM:       (E) None.                                           #!!00084
* FIX            Added device specific data for the Mirror device.   #!!00085
* DEPENDENCIES:  RE-DDL this file prior to compiling the Mirror      #!!00086
*                Device Handler, the tdf requestor, and the mirror   #!!00087
*                specific requestors and servers.                    #!!00088
                                                                       !00089
                                                                       !00090
* 25Oct89        Bosak                                               #!!00091
* SYMPTOM:       None.                                               #!!00092
* PROBLEM:       (E)None.                                            #!!00093
* FIX:           Modified device specific data for the N50 device to #!!00094
*                support the statement printer.                      #!!00095
* DEPENDENCIES:  Recompile DDL and Device Handler.                   #!!00096
*                Refer to STMTDOC for more details.                  #!!00097
* REFERENCE:     None.                                               #!!00098
                                                                       !00099
                                                                       !00100
* 09Jul90        J. Samson                                           #!!00101
* SYMPTOM:       None.                                               #!!00102
* PROBLEM:       (E) None.                                           #!!00103
* FIX:           Modified device specific data for the N50 device to #!!00104
*                indicate the format of statement printer information#!!00105
*                sent from the host (column or compressed) and also  #!!00106
*                added a field to specify if the ignore-text option  #!!00107
*                is being utilized.                                  #!!00108
* DEPENDENCIES:  Recompile DDL and Device Handler.                   #!!00109
* REFERENCE: RPE #R900309-8                                          #!!00110
                                                                       !00111
                                                                       !00112
* 11/29/90       R. Frederick.                                       #!!00113
* SYMPTOM:       None.                                               #!!00114
* PROBLEM:       None.                                               #!!00115
* FIX:     (E)   Added comments that reference new PIN ENCRYPT TYPES #!!00116
*                04 and 05.  These new types are used for ANSI PIN   #!!00117
*                Block formats.                                      #!!00118
* DEPENDENCIES:  None.                                               #!!00119
* REFERENCE:     RPE #R900604-O8                                     #!!00120
                                                                       !00121
**********************************************************************!!00122
*                        RELEASE 5.0                                 *!!00123
**********************************************************************!!00124
* 92/04/01       Release 5.0 Design Team                             #!!00125
* SYMPTOM:       BASE24-atm Release 5.0 Enhancements                 #!!00126
* PROBLEM:       (E) None.                                           #!!00127
* FIX:      1.   Reduce the device dependent data area by 500 bytes  #!!00128
*                and relocate these bytes into the LAST-MSG and      #!!00129
*                DEV-INFO areas of the TDF.  The length attributes   #!!00130
*                of the following fields have been modified:         #!!00131
*                DEV-INFO, DIEBOLD.USER-FLD, I36XX.USER-FLD,         #!!00132
*                D2300.USER-FLD, D5100.USER-FLD, B650.USER-FLD,      #!!00133
*                I4730.USER-FLD, N5080.USER-FLD, N1770.USER-FLD,     #!!00134
*                OMRON.USER-FLD, MIRR.USER-FLD, LAST-MSG,            #!!00135
*                LAST-MSG-DATA, LAST-MSG-DUAL, DEV-DAT, DEV-DEP-DATA.#!!00136
*                                                                    #!!00137
*           2.   Redefine 16 bytes of the device info structure to   #!!00138
*                be used for intertransaction timer processing.      #!!00139
*                2 bytes of the device dependent data structure are  #!!00140
*                needed as a counter to keep track of the number of  #!!00141
*                consecutive timeouts.  This is for the DIEBOLD,     #!!00142
*                I36XX, I4730 and N5080 device types.                #!!00143
*                                                                    #!!00144
*           3.   Redefined 4 bytes of the device info structure to   #!!00145
*                be used for configurable receipts processing.       #!!00146
*                The Device Handler will use the RCPT-GRP field      #!!00147
*                to determine which template in the DHNAMES file     #!!00148
*                to use when formatting device receipts. Multiple    #!!00149
*                terminals may have the same RCPT-GRP number.        #!!00150
*                This field was added to the Diebold, I36xx, I4730   #!!00151
*                and N5080 dev-info sections.                        #!!00152
*                                                                    #!!00153
*           4.   Redefined 20 bytes of the device info structure to  #!!00154
*                be used for denied transaction receipt processing.  #!!00155
*                The customer will now have the option of printing   #!!00156
*                receipts to the receipt and/or audit printer for    #!!00157
*                both approved and denied transactions.              #!!00158
*                Changes were made to the Diebold, I36xx, I4730 and  #!!00159
*                N5080 dev-info sections.                            #!!00160
*                                                                    #!!00161
*           5.   Removed the audit printer flag field from the       #!!00162
*                Diebold, I36xx and N5080 dev-info sections.         #!!00163
*                                                                    #!!00164
*           6.   Added PAMS-SUPPORTED flag to the Diebold dev-info   #!!00165
*                section                                             #!!00166
*                                                                    #!!00167
*           7.   Redefined 35 bytes of the Diebold dev-info section  #!!00168
*                for the Self Service Banking BASE Application. The  #!!00169
*                following fields were added: PEAK-WINDOW-LOAD-GRP,  #!!00170
*                STD-WINDOW-LOAD-GRP,DISP-ALGO,HOPR-THRESHOLDS,      #!!00171
*                MAX-BILLS, FRMT and IGNORE-TXT.                     #!!00172
*                                                                    #!!00173
*           8.   Redefined position 13 of NOT-ON-US.TRAN to contain  #!!00174
*                the PIN Change transaction.                         #!!00175
*                                                                    #!!00176
*           9.   Redefined 2 bytes of user-fld in Diebold, I36XX,    #!!00177
*                I4730, and N5080 dev-info section to contain        #!!00178
*                the PIN Change Encrypt type.                        #!!00179
*                                                                    #!!00180
*          10.   Added M-KEY-CHK-VALUE to I36XX, I4730, DIEBOLD,     #!!00181
*                D2300, B650, N1770, D5100, N5080, and OMRON         #!!00182
*                DEV-INFO sections.  Added P-KEY-CHK-VALUE to OMRON  #!!00183
*                DEV-INFO section.  Added USER-FLD3 to I4730 and     #!!00184
*                D5100 DEV-INFO sections to provide word-alignment.  #!!00185
*                Adjusted USER-FLDs in each redefinition.            #!!00186
*                                                                    #!!00187
*          11.   Redefined 1 byte of user-fld in Diebold, I36XX,     #!!00188
*                I4730, and N5080 dev-info section to contain        #!!00189
*                the Local PIN Verify Flag.                          #!!00190
*                                                                    #!!00191
*          12.   Redefined 18 bytes of the DIEBOLD DEV-INFO          #!!00192
*                sections to support hardware message                #!!00193
*                authentication (MAC structure).  The fields added   #!!00194
*                were:  MAC-TYP, MAC-DATA-TYP, and KEY-VAL. Also     #!!00195
*                reduced USER-FLD by 18 bytes.                       #!!00196
*                                                                    #!!00197
*          13.   Redefined 21 bytes of the N5080 DEV-INFO section    #!!00198
*                to support hardware message authentication (MAC     #!!00199
*                structure).  The fields added were:  MAC-TYP,       #!!00200
*                MAC-DATA-TYP, SOL-STATUS-MSG, MSG-MAC-FLG,          #!!00201
*                and KEY-VAL. Also reduced the USER-FLD by 20        #!!00202
*                bytes.                                              #!!00203
*                                                                    #!!00204
*          14.   Added KEY-LGTH field in Diebold, I4730, and N5080   #!!00205
*                dev-info sections for Double Length Security Keys.  #!!00206
*                This field will be used in a future release.        #!!00207
*                                                                    #!!00208
*          15.   Reduced the size of USER-FLD2 from 107 bytes to     #!!00209
*                40 bytes.  Sixty seven bytes of the USER-FLD2 field #!!00210
*                have been allocated to store the terminal           #!!00211
*                specific Self Service Banking CHECK fields.         #!!00212
*                                                                    #!!00213
*          16.   Removed the FAST-CASH and FUNCT-KEY fields from the #!!00214
*                D2300 DEV-INFO definition.                          #!!00215
*                                                                    #!!00216
*          17.   Removed the M-KEY and P-KEY fields from the MIRR    #!!00217
*                DEV-INFO definition.                                #!!00218
*                                                                    #!!00219
* DEPENDENCIES:  All modules that source in the TDF must be          #!!00220
*                recompiled.  This includes all modules, i.e. Device #!!00221
*                Handlers and requester/server source modules.       #!!00222
*                Note, the IBM 473x Device Handler requires          #!!00223
*                additional code modifications.  Refer to the        #!!00224
*                Release 5.0 Installation Documentation for a        #!!00225
*                complete list of the applicable modules.            #!!00226
*    REFERENCE: BASE24-atm Release 5.0 External Specifications       #!!00227
*               - TDF User Reorganization                            #!!00228
*               - Inactivity Timers                                  #!!00229
*               - Receipts and Screens for Denied Transactions       #!!00230
*               - Configurable Receipts                              #!!00231
*               - Diebold PAMS Support                               #!!00232
*               - Self Service Banking BASE Application              #!!00233
*               - PIN Change Transaction                             #!!00234
*               - Security Tools Enhancements                        #!!00235
*               - Local PIN Verification                             #!!00236
*               - Hardware MAC Support                               #!!00237
*               - Double Length Security Keys                        #!!00238
*               - Self Service Banking CHECK Application             #!!00239
*                                                                    #!!00240
                                                                       !00240A00
*##################################################################### !00240A01
* 5/14/93        Bob Cronin                                          # !00240A02
* SYMPTOM:       None.                                               # !00240A03
* PROBLEM: 1.    Diebold 1000 is using the same time window for both # !00240A04
*                the Inactivity Timer enhancement and the PEAK LOAD  # !00240A05
*                GROUP enhancement.                                  # !00240A06
*          2.    The comments for TERM-TYP values of 45 and 46 were  # !00240A07
*                incorrect.                                          # !00240A08
* FIX:     1.(C) Added new fields to support a separate set of time  # !00240A09
*                windows for the PEAK LOAD GROUP enhancement.        # !00240A0A
*          2.(C) Corrected the TERM-TYP comments.                    # !00240A0B
* DEPENDENCIES:  None.                                               # !00240A0C
* REFERENCE:  1. RPC #003727                                         # !00240A0D
*##################################################################### !00240A0E
                                                                       !00240B00
*                                                                    # !00240B01
*   Aug. 11, 1993       MLB/598                                      # !00240B02
*                                                                    # !00240B03
*   SYMPTOM:    BASE24-atm Release 5.0 NCR 50xx Self-Service         # !00240B04
*               Banking Enhancement                                  # !00240B05
*   PROBLEM:    (E) None.                                            # !00240B06
*   FIX:        Redefined 41 bytes of N5080 DEV-INFO to support the  # !00240B07
*               SSB enhancement.  The following fields were added:   # !00240B08
*                   BILL-MIX[0-3].HOPR-TRHSHLDS,                     # !00240B09
*                   BILL-MIX[0-3].MAX-BILLS                          # !00240B0A
*                   PEAK-WINDOW-LOAD-GRP,                            # !00240B0B
*                   STD-WINDOW-LOAD-GRP,                             # !00240B0C
*                   DISP-ALGO                                        # !00240B0D
*                   WRKDAY-STRT-PEAK-LOAD-WINDOW                     # !00240B0E
*                   WRKDAY-END-PEAK-LOAD-WINDOW                      # !00240B0F
*                   WKND-STRT-PEAK-LOAD-WINDOW                       # !00240B0G
*                   WKND-END-PEAK-LOAD-WINDOW                        # !00240B0H
*                                                                    # !00240B0I
*               Redefined the LAST 68 bytes of Device Dependent      # !00240B0J
*               Data to contain 2 additional hoppers to support      # !00240B0K
*               the NDC+ Coin Dispenser Module.  This module         # !00240B0L
*               requires the NCR 50xx Device Handler to compute      # !00240B0M
*               the Coin Dispense Mix and contains 4 Coin Hoppers.   # !00240B0N
*               (NCR ATMs can have 4 Cash Hoppers also).  This       # !00240B0O
*               area is the only available location left in the      # !00240B0P
*               TDF.                                                 # !00240B0Q
*                                                                    # !00240B0R
*               NOTE:  The NCR 50xx Device Dependent Data DDL        # !00240B0S
*                   (N50DEF of AT50DDL.DDLDDDL) should be checked    # !00240B0T
*                   for possible impacts to RPQs.                    # !00240B0U
*                                                                    # !00240B0V
*   DEPENDENCIES: The NCR 50xx Device Handler, TDF Requester/Server, # !00240B0W
*               and NCR 50xx Specific TDF Requester must be          # !00240B0X
*               re-compiled after this DDL has been re-compiled.     # !00240B0Y
*                                                                    # !00240B0Z
*    REFERENCE: BASE24-atm Release 5.0 External Specifications       # !00240B10
*               - Self Service Banking BASE Application              # !00240B11
*               - Self Service Banking CHECK Application             # !00240B12
*                                                                    # !00240B13
*##################################################################### !00240B14
                                                                       !00240C00
*                                                                    # !00240C01
*                  RELEASE 5.1                                       # !00240C02
*                                                                    # !00240C03
*##################################################################### !00240C04
*                                                                    # !00240C05
* 01JUN95        GEF/176 - DLM/1374.                                 # !00240C06
*                                                                    # !00240C07
* SYMPTOM:       None.                                               # !00240C08
* PROBLEM:       Product Enhancement - Optional Receipts             # !00240C09
*                                                                    # !00240C0A
* FIX:           Added the LOAD-GRP sub-structure with the           # !00240C0B
*                PRNTR-OPRBLE-GRP and PRNTR-INOPRBLE-GRP sub-fields  # !00240C0C
*                for the following device sub-structures:            # !00240C0D
*                DIEBOLD (with 44 bytes left in USER-FLD) and        # !00240C0E
*                N5080   (with 37 bytes left in USER-FLD).           # !00240C0F
*                Also added the OPT-RCPT-FLG field for the following # !00240C0G
*                device sub-structures: DIEBOLD, N5080, and I36XX.   # !00240C0H
* DEPENDENCIES:  Re-DDL.  This modification will affect the following# !00240C0I
*                modules that were modified for this enhancement:    # !00240C0J
*                TDF Requester and the following device handlers:    # !00240C0K
*                Diebold 910/911, Diebold 1000, NCR 50xx, and        # !00240C0L
*                IBM 36xx.                                           # !00240C0M
* REFERENCE:     RPE #940831-2.                                      # !00240C0N
*                                                                    # !00240C0O
*                                                                    # !00240C0P
* 01JUN95        Lovejoy/800 - DLM/1374                              # !00240C0Q
* SYMPTOM:       None.                                               # !00240C0R
* PROBLEM:       Product Enhancement - Surcharging.                  # !00240C0S
* FIX:           Redefined 4 bytes of USER-FLD2 to support the       # !00240C0T
*                Surcharge enhancement.                              # !00240C0U
*                NOTE:  The USER-FLD2 should be checked for possible # !00240C0V
*                      impacts to RPQs.                              # !00240C0W
* DEPENDENCIES:  The Device Handlers and TDF Requester/Server must   # !00240C0X
*                be re-compiled after this DDL has been re-compiled. # !00240C0Y
* REFERENCE:     RPE #941018-1.                                      # !00240C0Z
*                                                                    # !00240C10
* 01JUN95        DLM/1374.                                           # !00240C11
* SYMPTOM:       None.                                               # !00240C12
* PROBLEM:       DDL comments for the MAC-TYPE field did not         # !00240C13
*                identify the default value.                         # !00240C14
* FIX:           Modified the comments for the MAC-TYPE used by the  # !00240C15
*                N50 and Diebold 1000 devices to identify 0 (zero)   # !00240C16
*                as the default value.                               # !00240C17
* DEPENDENCIES:  None.                                               # !00240C18
* REFERENCE:     INTERNAL RPC #951054.                               # !00240C19
*                                                                    # !00240C1A
* 01JUN95       MLB/598 - DLM/1374                                   # !00240C1B
* SYMPTOM:      NCR 56xx DPM Support Enhancement                     # !00240C1C
* PROBLEM:      (E) None.                                            # !00240C1D
* FIX:          Moved the NCR 50xx and it's DLCF defintions to       # !00240C1E
*               AT50N50.N50DDLS.  This was done so the MAKE utility  # !00240C1F
*               can be used efficiently.                             # !00240C1G
*                                                                    # !00240C1H
* DEPENDENCIES: Apply all fixes for this enhancement, re-DDL this    # !00240C1I
*               file.                                                # !00240C1J
*                                                                    # !00240C1K
* REFERENCE:    WO #AT930605                                         # !00240C1L
                                                                       !00240D00
* 21JUL95       SGN                                                  # !00240D01
* SYMPTOM:      InterBold 1000 ix support Enhancement                # !00240D02
* PROBLEM:      (E) None.                                            # !00240D03
* FIX:          1.  Added a language bank indicator field to the     # !00240D04
*                   Diebold specific portion of the TDF.             # !00240D05
*               2.  Added a maximum number of lines per receipt      # !00240D06
*                   field specific to the statement printer within   # !00240D07
*                   the Diebold specific portion of the TDF.         # !00240D08
* DEPENDENCIES: Apply all fixes for this enhancement, re-DDL this    # !00240D09
*               file.                                                # !00240D0A
* REFERENCE:    RPE #950201-001                                      # !00240D0B
                                                                       !00240E00
*                                                                    # !00240E01
* 03FEB97    D.Annis/1382  - BRR/1915                                # !00240E02
*                yjm/1924                                            # !00240E03
* SYMPTOM:   SURCHARGING ENHANCEMENT                                 # !00240E04
*            The Triton miniATM Surcharging Enhancement gives        # !00240E05
*            customers the ability to assess acquirer fees for       # !00240E06
*            transactions that originate at their Triton miniATM     # !00240E07
*            terminals.  The Triton TDF DDLs, TDF requester and      # !00240E08
*            server, and device handler have been enhanced to be     # !00240E09
*            compatible with the standard BASE24 Surcharging         # !00240E0A
*            Enhancement.                                            # !00240E0B
* PROBLEM:   (E) Enhancement                                         # !00240E0C
* FIX:       Added an eight-byte field, SURCHARGE-AMT, to the Triton # !00240E0D
*            redefinition of DEV-INFO.                               # !00240E0E
* IMPLEMENT: Apply fixes and run make.                               # !00240E0F
* REFERENCE: Work Order #960731-32                                   # !00240E0G
*                                                                    # !00240E0H
* 13Feb97    YJM/1924      - BRR/1915                                # !00240E0I
* SYMPTOM:   None.                                                   # !00240E0J
* PROBLEM:   (E) None.                                               # !00240E0K
* FIX:       Added redefines to dev-info for the Triton device       # !00240E0L
*            handler.  And added the TERM-TYP for the Triton.        # !00240E0M
* IMPLEMENT: Apply fix and run make.                                 # !00240E0N
* REFERENCE: Triton 5.1 External Specification                       # !00240E0O
*                                                                    # !00240E0P
                                                                       !00240F00
* 01OCT1997   Lovejoy/298                                              !00240F01
* Symptom:    Fujitsu 7000 Enhancement.                                !00240F02
* Problem:    None.                                                    !00240F03
* Fix:        Added redefines to DEV-INFO for the Fujitsu 7000         !00240F04
*             Device Handler.                                          !00240F05
* Dependency: The Fujitsu Device Handler, TDF Requester/Server,        !00240F06
*             and Fujitsu Specific TDF Requester must be               !00240F07
*             remade after this DDL has been remade.                   !00240F08
* Reference:  RPE #960825-31, Fujitsu 7000 Enhancement                 !00240F09
                                                                       !00240F0A
                                                                       !00240F0B
* 01OCT1997   CKC/163                                                  !00240F0C
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00240F0D
*             BASE24 Configurable Dispense Algorithm Enhancement.      !00240F0E
* Problem:    None.                                                    !00240F0F
* Fix:        1. Added a new structure (NOT-ON-US-CRD-ADNL)            !00240F0G
*                to support non-currency dispense transactions         !00240F0H
*                (the existing NOT-ON-US-CRD structure did             !00240F0I
*                not have available space for the non-currency         !00240F0J
*                transactions).  Add a new routing group               !00240F0K
*                (NCD-RTE-GRP) for non-currency dispense               !00240F0L
*                transactions.  To accommodate these additional        !00240F0M
*                entries, USER-FLD2 was reduced by 16 bytes.           !00240F0N
*             2. Added comments to the fields in the HOPR              !00240F0O
*                structure, TERM-CR field and ON-US-DB field to        !00240F0P
*                reflect support for non-currency items.               !00240F0Q
*             3. Added new value for DISP-ALGO field in the            !00240F0R
*                Diebold and N50 device dependent areas for            !00240F0S
*                the Configurable Dispense Algorithm.                  !00240F0T
*             4. Redefined device dependent data to add Configurable   !00240F0U
*                Dispense Algorithm  hopper bill mix fields.           !00240F0V
*             5. Added new field (ncd-non-val-acct[0:2]) to the N5080  !00240F0W
*                and Diebold dev-info areas for Non-Currency Dispense. !00240F0X
* Dependency: Apply fix and remake.                                    !00240F0Y
* Reference:  WO #960311-5 and #960617-1.                              !00240F0Z
*                                                                      !00240F10
* 01OCT1997   KJH/176   BH/177                                         !00240F11
* Symptom:    BASE24 VISA Cash Enhancement.                            !00240F12
* Problem:    None.                                                    !00240F13
* Fix:        1. Add NUM-LOAD-VALUE and AMT-LOAD-VALUE activity        !00240F14
*                accumulators; reduce USER-FLD immediately following.  !00240F15
*             2. Add Load Value transaction class to comments for      !00240F16
*                NOT-ON-US-CRD, DIEBOLD.TRAN-CLASS, N5080.TRAN-CLASS.  !00240F17
* Dependency: Apply fix and remake.                                    !00240F18
* Reference:  WO #970709-2.                                            !00240F19
                                                                       !00240F1A
                                                                       !00240G00
* 01MAY1998   KSS/718                                                  !00240G01
* Symptom:    Remove Diebold PAMS Support                              !00240G02
* Problem:    NONE                                                     !00240G03
* Fix:        1.Remove the description for the field PAMS-SUPPORTED.   !00240G04
*             2.Rename the PAMS-SUPPORTED field to USER-FLD-DIEBOLD.   !00240G05
* Dependency: Apply fix and re-make.                                   !00240G06
* Reference:  WO #980316-4                                             !00240G07
                                                                       !00240G08
                                                                       !00240H00
* 01APR1998   CAL/283                                                  !00240H01
* Symptom:    BASE24 EMEA CSE Support                                  !00240H02
* Problem:    None.                                                    !00240H03
* Fix:        Modified MIRROR redefine section to support the Olivetti !00240H04
*             6000 ATM.                                                !00240H05
* Dependency: Apply fix and remake                                     !00240H06
* Reference:  WO #980206-1                                             !00240H07
                                                                       !00240I00
* 24JUN1998   MSA/706  - JMS/530                                       !00240I01
* Symptom:    Tidel Anycard enhancement                                !00240I02
* Problem:    None                                                     !00240I03
* Fix:        Added Tidel Anycard device support (B4).                 !00240I04
* Dependency: Modified DDLFTDF, SCRNTDF1, RQTDFS, SVTDFS.  Also see    !00240I05
*             DCT.  Apply fixes and reMAKE                             !00240I06
* Reference:  WO #980127-03 (retro of AT5B191)                         !00240I07
*                                                                      !00240I08
* 24JUN1998   CDT/598 - ML/298 - JMS/530                               !00240I09
* Symptom:    Diebold CashSource Plus enhancement                      !00240I0A
* Problem:    None                                                     !00240I0B
* Fix:        Added Diebold CashSource Plus device support (B6).       !00240I0C
* Dependency: Modified DDLFTDF, SCRNTDF1, RQTDFS, SVTDFS.  Also see    !00240I0D
*             DCT.  Apply fixes and reMAKE                             !00240I0E
* Reference:  WO #970707-6 (retro of AT5A233)                          !00240I0F
                                                                       !00240I0G
                                                                       !00240J00
* 12OCT1998   DLM/401.  RMM/379    KSS/718                             !00240J01
* Symptom:    The comm key (also called the PIN key) used by the ATM   !00240J02
*             can become out of sync with the key stored in the TDF    !00240J03
*             resulting in PIN verification errors for all attempted   !00240J04
*             transactions.                                            !00240J05
* Problem:    The ATM can request a new comm key to be downline        !00240J06
*             loaded by the device handler.  If there is any type of   !00240J07
*             data communications failure, the new key does not get    !00240J08
*             downline loaded to the ATM.  However, the new comm key   !00240J09
*             has already been stored in the TDF record.               !00240J0A
* Fix:        Added a field to the Triton device dependent data        !00240J0B
*             portion of the TDF to save the value of the original     !00240J0C
*             comm key.                                                !00240J0D
* Dependency: Apply fix.  Apply corresponding fix to the Triton        !00240J0E
*             device handler.  Remake the DDLs, then remake the        !00240J0F
*             Triton device handler.                                   !00240J0G
* Reference:  None. (retro of AT5B358 from Case #310183)               !00240J0H
*                                                                      !00240J0I
* 12OCT1998   DLM/401.  RMM/379  KSS/718.                              !00240J0J
* Symptom:    None.                                                    !00240J0K
* Problem:    The fix above did not add the new field, ORIG-P-KEY,     !00240J0L
*             to the TDX definition used by pathway requesters.        !00240J0M
* Fix:        Added the field to the TDX definition.                   !00240J0N
* Dependency: Apply fix. Remake DDLs and TDF requester.                !00240J0O
* Reference:  None. (retro of AT5B358 from Case #310183)               !00240J0P
                                                                       !00240J0Q
                                                                       !00240K00
* 19NOV1998   YJM/339  KSS/718.                                        !00240K01
* Symptom:    Initial Release of NCR-CASH Device Handler.              !00240K02
* Problem:    None.                                                    !00240K03
* Fix:        Added redefines to DEV_INFO for NCR-CASH Device          !00240K04
*             Handler.                                                 !00240K05
* Dependency: New subvol AT51NCSH.  Apply fixes to CUSTMACS,           !00240K06
*             FLGSDOC, ATAFTM, ATAFTMM, RQTDFS, SVTDFS,                !00240K07
*             RQTNCSHM, RQTNCSHS, SCRNTDF1, SCRNNCSH,                  !00240K08
*             DDLFTDF, ATDCTM, SVDCTS, ATMFM, ATMM, and                !00240K09
*             ATMMM and re-make.                                       !00240K0A
* Reference:  Retro of SCN #AT5B423 for WO #980226-01                  !00240K0B
                                                                       !00240K0C
* 19OCT1998   YJM/339    KSS/718                                       !00240K0D
* Symptom:    The comm key (also called the PIN key) used by the Tidel !00240K0E
*             and Diebold-CSP ATM can become out of sync with the key  !00240K0F
*             stored in the TDF resulting in PIN verification errors   !00240K0G
*             for all attempted transactions.                          !00240K0H
* Problem:    The ATM can request a new comm key to be downline        !00240K0I
*             loaded by the device handler.  If there is any type of   !00240K0J
*             data communications failure, the new key does not get    !00240K0K
*             downline loaded to the ATM.  However, the new comm key   !00240K0L
*             has already been stored in the TDF record.               !00240K0M
* Fix:        Added a field ORIG-P-KEY to the Tidel and Diebold-CSP    !00240K0N
*             device dependent data portion of the TDF to save the     !00240K0O
*             value of the original comm key. Also added this field    !00240K0P
*             to the corresponding TDX definition.                     !00240K0Q
* Dependency: Apply fix.  Apply corresponding fix to the Tidel and     !00240K0R
*             Diebold-CSP device handlers.  Remake the DDLs, then      !00240K0S
*             remake the device handlers.                              !00240K0T
* Reference:  Retro of SCN #AT5B409 for RPC #246041.                   !00240K0U
                                                                       !00240L00
* 16DEC1998   DMA/20   JDS/1802                                        !00240L01
* Symptom:    Initial release of SSB for Fujitsu 7000 DH               !00240L02
* Problem:    None                                                     !00240L03
* Fix:        Added fields for the coin hopper max dispense count      !00240L04
*             and for the Indirect Next State Index (from the PSTDX    !00240L05
*             field of the FIT entry.)                                 !00240L06
* Dependency: New subvols AT51BFJ7, AT51CFJ7, and AT51DFJ7.            !00240L07
*             Apply fixes to COBNAMES, RCPT, RQRCPTS, RQTDFS,          !00240L08
*             RQTFUJ7S, SCRNFUJ7, SVRCPTS, ATDCTM, RQDFUJIS, DDLFTDF,  !00240L09
*             CNFGFUJ7, CNFJ7DOC, FUJ7DDLS, FUJ7G, FUJ7MAN, FUJ7NAMS,  !00240L0A
*             FUJ7S, SVDFUJ7S, and re-make.                            !00240L0B
* Reference:  None (retro of AT5B439 from WO #971006-3).               !00240L0C
                                                                       !00240L0D
*                                                                      !00240K0V
                                                                       !00240M00
* 16APR1999   JJD/615  JEM/1695                                        !00240M01
* Symptom:    BASE24 Non-Currency Dispense Enhancement.                !00240M02
*             BASE24 Configurable Dispense Algorithm Enhancement.      !00240M03
* Problem:    None.                                                    !00240M04
* Fix:        1) Added new value for DISP-ALGO field in the Fujitsu    !00240M05
*             device dependent area for the Configurable Dispense      !00240M06
*             Algorithm.                                               !00240M07
*             2) Redefined device dependent data to add Configurable   !00240M08
*             Dispense Algorithm hopper bill mix fields.               !00240M09
*             3) Added new field (ncd-non-val-acct[0:2]) to the        !00240M0A
*             Fujitsu dev-into area for Non-Currency Dispense.         !00240M0B
* Dependency: Apply fix and re-make.                                   !00240M0C
* Reference:  None.  (retro of AT5P002 from WO #980813-01)             !00240M0D
*                                                                      !00240M0E
* 16APR1999   ML/298  JEM/1695                                         !00240M0F
* Symptom:    BASE24 Triton Non-Currency Dispense Enhancement.         !00240M0G
* Problem:    None.                                                    !00240M0H
* Fix:        Added support of Non-Currency Dispense in a              !00240M0I
*             bindable module.                                         !00240M0J
* Dependency: Apply fixes to ATMFM, ATMMM, DDLFTDF, RQTDFS,            !00240M0K
*             RQTTRITS, SCRNTRIT, TRITNAMS, TRITONG, TRITONM,          !00240M0L
*             TRITONS and re-make.                                     !00240M0M
* Reference:  None.  (retro of AT5P015 from WO #980813-01)             !00240M0N
                                                                       !00240O00
                                                                       !00240O01
********************************************************************   !00240O02
*             Release 6.0                                          *   !00240O03
********************************************************************   !00240O04
* 30NOV2000   jfu/543                                              *   !00240O05
* Symptom:    Release 6.0 Enhancements                             *   !00240O06
* Problem:    None.                                                *   !00240O07
* Fix:        1) Removed the TDX definition.                       *   !00240O08
*             2) The following terminal types will not be supported*   !00240O09
*                in the TDF:                                       *   !00240O0A
*                  03 = Docutel 2300                               *   !00240O0B
*                  06 = NCR 1770/1780                              *   !00240O0C
*                  16 = IBM 3614 Version 6 - single cartridge      *   !00240O0D
*                  17 = IBM 3614 Version 6 - dual cartridge        *   !00240O0E
*                  28 = Omron ATM                                  *   !00240O0F
*                  29 = Omron RCD                                  *   !00240O0G
*                  22 = NCR 5XXX           (ATD support)           *   !00240O0H
*                  30 = Diebold 10XX/478X  (ATD support)           *   !00240O0I
*                  40 = Diebold 906                                *   !00240O0J
*                  45 = IBM 3614 Version 5 - dual cartridge        *   !00240O0K
*                  46 = IBM 3614 Version 5 - single cartridge      *   !00240O0L
*             3) The device specific redefines of the device       *   !00240O0M
*                information area have been moved to the           *   !00240O0N
*                appropriate device handler subvolume.             *   !00240O0O
* Dependency: Restore Release 6.0 files, modify the appropriate    *   !00240O0P
*             CUSTMACS flags, and run MAKE.                        *   !00240O0Q
* Reference:  WO #990108-1 (TDF Expansion)                         *   !00240O0R
*             WO #000616-1 (Product Separation)                    *   !00240O0S
                                                                       !00240P00
* 21FEB2003   CLR/451                                                  !00240P01
* Symptom:    Dynamic Key Management Support in TDF.                   !00240P02
* Problem:    None.                                                    !00240P03
* Fix:        Added the DKM structure.                                 !00240P04
* Dependency: Apply fix to DDLFTDF, DDLGATD, SVATDTS and run MAKE.     !00240P05
* Reference:  WO #020716-05 (General Security Enhancements)            !00240P06
                                                                       !00240P07
                                                                       !00240Q00
* 15OCT2003   sjt/272                                                  !00240Q01
* Symptom:    Dual Site Processing.                                    !00240Q02
* Problem:    None.                                                    !00240Q03
* Fix:        Added DUAL-SITE-IND field and reduced USER-FLD2.         !00240Q04
* Dependency: Apply fix to DDLFTDF and run MAKE. Refer to              !00240Q05
*             BA60UD07.SCNDUALS for a complete listing of              !00240Q06
*             dependencies.                                            !00240Q07
* Reference:  WO #030930-01                                            !00240Q08
                                                                       !00240Q09
                                                                       !00240R00
* 15OCT2004   RINKC                                                    !00240R01
* Symptom:    EMV Support in Triton Device Handler.                    !00240R02
* Problem:    None.                                                    !00240R03
* Fix:        Added redefine for the SNA structure.                    !00240R04
*             Added EMV-TERM-CAP and USER-FLD-ACI.                     !00240R05
* Dependency: Apply fix to DDLFTDF and run MAKE.  Refer to             !00240R06
*             BA60UD08.SCNTEMV for a complete listing of               !00240R07
*             dependencies.                                            !00240R08
* Reference:  WO #030917-02 (Triton TSCD 5.3 Uplift)                   !00240R09
                                                                       !00240R0A
                                                                       !00240S00
* 14OCT2006   kurzenb                                                  !00240S01
* Symptom:    Tidel General Enhancements                               !00240S02
*             Triton Token Retrieval Option Enhancement                !00240S03
*             The device handler is abending with a Guardian writeread !00240S04
*             error 201.                                               !00240S05
* Problem:    When an EMV transaction containing an EMV Script Token   !00240S06
*             ('B6') over a certain size is returned by the Issuer,    !00240S07
*             the length of token data in the message exceeds the 528  !00240S08
*             bytes set aside in the TDF.LAST^MSG area used to store   !00240S09
*             token data. If this is a late response from AUTH, there  !00240S0A
*             is no logic to check the size of the token data before   !00240S0B
*             moving it to the TDF.LAST^MSG area, resulting in some    !00240S0C
*             data following the TDF.LAST^MSG area being overwritten.  !00240S0D
*             When this overwritten data is attempted to be accessed,  !00240S0E
*             it causes the error 201. Additionally, if the response   !00240S0F
*             from AUTH were to be received in a timely manner, event  !00240S0G
*             message 421 would be raised.                             !00240S0H
* Fix:        - Added new field, TKN-RETRV-OPT.                        !00240S0I
*             - Reduced USER-FLD-ACI from 136 bytes to 135 bytes.      !00240S0J
* Dependency: Apply fix to DDLFTDF and run Make.                       !00240S0K
*             Refer to BA60UD0A.SCNTIDL and BA60UD0A.SCNTTRO for a     !00240S0L
*             complete listing of dependencies.                        !00240S0M
* Reference:  WO #051212-04 (Tidel General Enhancements)               !00240S0N
*             Case #403671 (Triton Token Retrieval Option Enhancement) !00240S0O
                                                                       !00240S0P
                                                                       !00240T00
* 17OCT2008   WisharJ                                                  !00240T01
* Symptom:    Triton AKDS Support                                      !00240T02
* Problem:    None.                                                    !00240T03
* Fix:        Added fields Key-Signer, EPP-Format and Hdwr to the      !00240T04
*             addl-data section of the TDF. Reduced USER-FLD-ACI       !00240T05
*             from 135 bytes to 117 bytes.                             !00240T06
* Dependency: Apply fix to DDLFTDF and run Make.                       !00240T07
*             Refer to BA60UD0C.SCNTRAK for a complete listing of      !00240T08
*             dependencies.                                            !00240T09
* Reference:  WO #070917-02                                            !00240T0A
*                                                                      !00240T0B
* 17OCT2008   WisharJ                                                  !00240T0C
* Symptom:    Tidel AKDS Support                                       !00240T0D
* Problem:    None.                                                    !00240T0E
* Fix:        Updated the comments for the EPP-Format field in the     !00240T0F
*             addl-data section of the TDF, to include a value of      !00240T0G
*             '8' for the Tidel.                                       !00240T0H
* Dependency: Apply fix to DDLFTDF and run Make.                       !00240T0I
*             Refer to BA60UD0C.SCNTIAK for a complete listing of      !00240T0J
*             dependencies.                                            !00240T0K
* Reference:  WO #070917-01                                            !00240T0L
*                                                                      !00240T0M
* 17OCT2008   WisharJ                                                  !00240T0N
* Symptom:    TERM-TYP values of 04 and 11 are no longer valid for     !00240T0O
*             Base24.                                                  !00240T0P
* Problem:    Version 9 comment changes.                               !00240T0Q
* Fix:        Removed 04 and 11 from the list of valid values for      !00240T0R
*             TERM-TYP.                                                !00240T0S
* Dependency: Apply fix to DDLFTDF and run Make.                       !00240T0T
* Reference:  Case #450136.                                            !00240T0U
                                                                       !00240T0V
                                                                       !00240U00
* 06NOV2009   BartonD                                                  !00240U01
* Symptom:    Customers running the Triton and/or Tidel DHs can lose   !00240U02
*             EMV Terminal Capabilities data from the TDF when         !00240U03
*             USER-FLD-ACI is reduced to accommodate new fields.       !00240U04
* Problem:    Version 10 comment changes.                              !00240U05
* Fix:        Reduced USER-FLD-ACI to 3 bytes, and redefined the field !00240U06
*             with EMV-TERM-CAP-IND. Replaced the rest of USER-FLD-ACI !00240U07
*             with new field USER-FLD-ACI0.                            !00240U08
* Dependency: Apply fix to DDLFTDF and run Make.                       !00240U09
* Reference:  Case #483720.                                            !00240U0A
                                                                       !00240U0B
********************************************************************   !00240O0T
                                                                       !00240O0U
?section tdf-deflist
*********************************************************************  !00240O0X
*              BASE24-atm Terminal Data File (TDF)                  *  !00240O0Y
*********************************************************************  !00240O0Z
*                                                                   *  !00240O10
*   Identification                                                  *  !00240O11
*                                                                   *  !00240O12
*     The TDF contains a record for every ATM type terminal in the  *  !00240O13
*     logical network controlled by the BASE24 network.  A record is*  !00240O14
*     used to define the characteristics of the terminal, including *  !00240O15
*     PIN encryption method, sharing parameters, transaction totals,*  !00240O16
*     terminal owner, and device-dependent data.  It also is used to*  !00240O17
*     preserve transaction context and is read and updated every    *  !00240O18
*     time a transaction request, transaction response, or          *  !00240O19
*     completion message is received by the device handler.         *  !00240O1A
*                                                                   *  !00240O1B
*   Security                                                        *  !00240O1C
*                                                                   *  !00240O1D
*     The TDF is secured under Tandem's group level security so     *  !00240O1E
*     only authorized network operators may access (or start        *  !00240O1F
*     programs which access) the file.                              *  !00240O1G
*                                                                   *  !00240O1H
*       USER ID         = <BASE24 node name>.*                      *  !00240O1I
*       FILE CODE       = 0                                         *  !00240O1J
*       ACCESS SECURITY = GGGG                                      *  !00240O1K
*                                                                   *  !00240O1L
*   Usage                                                           *  !00240O1M
*                                                                   *  !00240O1N
*       Device Handler    I/O  Random(Alternate-"TM")  Shared       *  !00240O1O
*       Settlement        I/O  Random(Alternate-"OW")  Shared       *  !00240O1P
*       File Maintenance  I/O  Random(Alternate-"TM")  Shared       *  !00240O1Q
*                                                                   *  !00240O1R
*********************************************************************  !00240O1S
                                                                       !00240O1T
?section tdf
?comments
                                                                       !00240O1Y
                                                                       !00240O1Z
                                                                       !00240O20
                                                                       !00240O21
                                                                       !00240O22
*              The Terminal Data File (TDF) contains one record for   !!00285
*              each ATM in the logical network controlled by BASE24-  !!00286
*              atm.                                                   !!00287
*                                                                     !!00288
*              The TDF is used to define the characteristics of the   !!00289
*              terminal, including PIN encryption parameters, sharing !!00290
*              parameters, transaction totals, terminal owner, and    !!00291
*              device-dependent data.                                 !!00292
*                                                                     !!00293
*              This section describes the fields included in a TDF    !!00294
*              record. The first subsection describes the basic record!!00295
*              structure of a TDF record, while subsequent sections   !!00296
*              describe the fields in the TDF record that are specific!!00297
*              to different types of devices. The information below   !!00298
*              summarizes other information specific to the TDF.      !!00299
*                                                                     !!00300
*              LCONF ASSIGN:       TDF                                !!00301
*                                                                     !!00302
                                                                       !00303
RECORD TDF.                    FILE IS "TDF" RELATIVE.                 !00304
                                                                       !00305
*                                                                     !!00306
*             A unique identifier, terminal ID, for this terminal.    !!00307
*                                                                     !!00308
                                                                       !00309
  02 TERM-ID                   TYPE SYM-NAME     KEYTAG "TM"           !00310
                                                 DUPLICATES NOT ALLOWED.
                                                                       !00313
*                                                                     !!00314
*             The following fields contain information about the      !!00315
*             terminal owner.  The main purpose of the TERM-OWNER     !!00316
*             field is to provide the key information for locating    !!00317
*             the IDF record for the institution.                     !!00318
*                                                                     !!00319
                                                                       !00320
  02 TERM-OWNER                                  KEYTAG "OW".          !00321
                                                                       !00322
*                                                                     !!00323
*             The logical network of the financial institution owning !!00324
*             the terminal.                                           !!00325
*                                                                     !!00326
                                                                       !00327
     04 LN                     TYPE *.                                 !00328
                                                                       !00329
*                                                                     !!00330
*             The FIID of the financial institution owning the        !!00331
*             terminal.                                               !!00332
*                                                                     !!00333
                                                                       !00334
     04 FIID                   TYPE *.                                 !00335
                                                                       !00336
*                                                                     !!00337
*             The region number assigned to the terminal by the       !!00338
*             financial institution owning the terminal.              !!00339
*                                                                     !!00340
                                                                       !00341
     04 REGN-ID                TYPE REGN.                              !00342
                                                                       !00343
*                                                                     !!00344
*             The branch number assigned to the terminal by the       !!00345
*             financial institution owning the terminal.              !!00346
*                                                                     !!00347
                                                                       !00348
     04 BRCH-ID                TYPE BRCH.                              !00349
                                                                       !00350
*                                                                     !!00351
*             The Network Environment Source File (NEFS) station      !!00352
*             number for the terminal.                                !!00353
*                                                                     !!00354
*             Each time a transaction is received from the terminal,  !!00355
*             the Device Handler will verify this number against the  !!00356
*             number given to the station in the NEFS.  This number   !!00357
*             is provided in the message to the Device Handler by the !!00358
*             Nucleus.  If the station number is not appropriate for  !!00359
*             the station name, the Device Handler will update the    !!00360
*             entry in this field using the correct station number    !!00361
*             provided by the Nucleus.                                !!00362
*                                                                     !!00363
                                                                       !00364
  02 TERM-STA-NUM              TYPE BINARY 16.                         !00365
                                                                       !00366
*                                                                     !!00367
*             A code indicating the type of terminal. Values are:     !!00368
*                                                                     !!00369
*             01 = Diebold 910                                        !!00370
*             02 = IBM 3624 Version 8 - dual cartridge                !!00371
                                                                       !00372T00
                                                                       !00372T01
                                                                       !00372T02
*             07 = Fujitsu - 910 mode                                 !!00375
*             08 = Fujitsu - 911 mode                                 !!00376
*             09 = Diebold 911 outside device                         !!00377
*             10 = Diebold 911 lobby device                           !!00378
                                                                       !00379T00
                                                                       !00379T01
*             14 = IBM 3624 Version 7 - single cartridge              !!00380
*             15 = IBM 3624 Version 7 - dual cartridge                !!00381
                                                                       !00382O00
                                                                       !00382O01
                                                                       !00382O02
*             18 = IBM 3624 Version 8 - single cartridge              !!00384
*             20 = Diebold 912                                        !!00385
                                                                       !00386O00
                                                                       !00386O01
*             26 = IBM 4730 single console                            !!00387
*             27 = IBM 4730 dual console                              !!00388
                                                                       !00389O00
                                                                       !00389O01
                                                                       !00389O02
*             48 = IBM 3624 Version 8 - single cartridge D01          !!00396
*             49 = IBM 3624 Version 8 - dual cartridge D02            !!00397
                                                                       !00397E00
*             B3 = Triton                                              !00397E01
                                                                       !00397I00
                                                                       !00397I01
*             B4 = Tidel                                               !00397I02
*             B5 = Fujitsu 7000                                       !
*             B6 = Diebold CashSource Plus                             !00397I05
                                                                       !00397K00
*             B7 = NCR-CASH                                            !00397K01
                                                                       !00397K02
                                                                       !00397I06
  02 TERM-TYP                  PIC X(2).                               !00400
                                                                       !00401
*                                                                     !!00402
*             The log routing code for all messages logged            !!00403
*             specifically on behalf of this terminal.  This log      !!00404
*             routing code is used by the Device Handler when sending !!00405
*             messages to the network logging facility.               !!00406
*                                                                     !!00407
                                                                       !00408
  02 LOG-RTE-CDE               TYPE BINARY 16.                         !00409
                                                                       !00410
*                                                                     !!00411
*             An emergency phone number to call when problems occur   !!00412
*             with the terminal.  This number is for informational    !!00413
*             purposes only.                                          !!00414
*                                                                     !!00415
                                                                       !00416
  02 ADM-PHONE                 TYPE PHONE-NUM.                         !00417
                                                                       !00418
*                                                                     !!00419
*             The symbolic name of the Device Handler process for     !!00420
*             this terminal.  This name must match the name given the !!00421
*             Device Handler process in the Network Environment       !!00422
*             Source File (NEFS).                                     !!00423
*                                                                     !!00424
                                                                       !00425
  02 DH-PRO-NAME               TYPE SYM-NAME     KEYTAG "DH".          !00426
                                                                       !00427
*                                                                     !!00428
*             The name of the Authorization process to which          !!00429
*             transactions from this terminal are to be sent.  This   !!00430
*             name must match the name given to an Authorization      !!00431
*             process in the Network Environment Source File (NEFS).  !!00432
*             When multiple Authorization processes are used, the     !!00433
*             value in this field determines the process that will    !!00434
*             receive transactions from this terminal.                !!00435
*                                                                     !!00436
*             ALTERNATE QUEUE ROUTING - When multiple Authorization   !!00437
*             processes are used, BASE24 allows Device Handler        !!00438
*             processes to send transactions to a generic queue       !!00439
*             process instead of an Authorization process.  This      !!00440
*             generic queue process queues the transactions and then  !!00441
*             sends them to the first available Authorization         !!00442
*             process.  Alternate queue routing is designed for load- !!00443
*             balancing.  When one Authorization process gets busy,   !!00444
*             the Generic Queue process simply routes transactions to !!00445
*             one that is free.  In order to use alternate queue      !!00446
*             routing, the AUTH-PRO-NAME field must contain the name  !!00447
*             of the Generic Queue process as defined in the Network  !!00448
*             Environment Source File (NEFS).                         !!00449
*                                                                     !!00450
                                                                       !00451
  02 AUTH-PRO-NAME             TYPE SYM-NAME.                          !00452
                                                                       !00453
*                                                                     !!00454
*             The transit/routing or issuer identification number for !!00455
*             the institution that owns the terminal.  The number is  !!00456
*             unique to the institution.                              !!00457
*                                                                     !!00458
                                                                       !00459
  02 INST-ID-NUM               TYPE ID-NUM.                            !00460
                                                                       !00461
*                                                                     !!00462
*             The alternate routing group number; used to route       !!00463
*             transactions initiated by cardholders that are outside  !!00464
*             the logical network.                                    !!00465
*                                                                     !!00466
                                                                       !00467
  02 ALT-RTE-GRP               TYPE ID-NUM.                            !00468
                                                                       !00469
*                                                                     !!00470
*             The name of the financial institution owning the        !!00471
*             terminal.                                               !!00472
*                                                                     !!00473
                                                                       !00474
  02 TERM-OWNER-NAME           PIC X(22).                              !00475
                                                                       !00476
*                                                                     !!00477
*             A unique address which identifies the location of the   !!00478
*             terminal.  This field is used as print information on   !!00479
*             the ATM customer receipt.                               !!00480
*                                                                     !!00481
                                                                       !00482
  02 TERM-NAME-LOC             PIC X(25).                              !00483
                                                                       !00484
*                                                                     !!00485
*             The name of the city where the terminal is located.     !!00486
*                                                                     !!00487
                                                                       !00488
  02 TERM-CITY                 PIC X(13).                              !00489
                                                                       !00490
*                                                                     !!00491
*             The state, province, or political subdivision where the !!00492
*             terminal is located.                                    !!00493
*                                                                     !!00494
*             In the U.S., only the first two characters are used to  !!00495
*             identify the state where the terminal is located.       !!00496
*             Codes for other countries must be agreed upon by all    !!00497
*             sharing institutions.                                   !!00498
*                                                                     !!00499
                                                                       !00500
  02 TERM-ST-X                 PIC X(3).                               !00501
                                                                       !00502
*                                                                     !!00503
*             The country where the terminal is located.  Valid       !!00504
*             values are listed in the ISO "Codes for the             !!00505
*             Representation of Names of Countries", 3166-1981.       !!00506
*                                                                     !!00507
                                                                       !00508
  02 TERM-CNTRY-X              PIC X(2).                               !00509
                                                                       !00510
*                                                                     !!00511
*             The state, province, or political subdivision where the !!00512
*             terminal is located.  The entry in this field is used   !!00513
*             to validate sharing transactions.                       !!00514
*                                                                     !!00515
*             In the United States, this field contains the ANSI      !!00516
*             standard state code as specified in "States and Outlying!!00517
*             Areas of the United States", FIPS PUB 5-1.  Codes for   !!00518
*             other countries must be agreed upon by all sharing      !!00519
*             institutions.                                           !!00520
*                                                                     !!00521
                                                                       !00522
  02 TERM-ST                   PIC 9(2).                               !00523
                                                                       !00524
*                                                                     !!00525
*             The county where the terminal is located.  The entry in !!00526
*             this field is used to validate sharing transactions.    !!00527
*                                                                     !!00528
*             For the United States, this field contains the ANSI     !!00529
*             standard county code specified in "Counties and County  !!00530
*             Equivalents of the States of the United States", FIPS   !!00531
*             PUB 6-1.                                                !!00532
*                                                                     !!00533
*             Codes for other countries must be agreed upon by all    !!00534
*             sharing institutions.                                   !!00535
*                                                                     !!00536
                                                                       !00537
  02 TERM-CNTY                 PIC 9(3).                               !00538
                                                                       !00539
*                                                                     !!00540
*             The country where the terminal is located.  The entry   !!00541
*             in this field is used to validate sharing transactions. !!00542
*             Valid values are listed in the ISO "Codes For the       !!00543
*             Representation of Names of Countries", 3166-1981.       !!00544
*                                                                     !!00545
                                                                       !00546
  02 TERM-CNTRY                PIC 9(3).                               !00547
                                                                       !00548
*                                                                     !!00549
*             Indicates whether or not the terminal is capable of     !!00550
*             supporting multiple accounts.  The Device Handler       !!00551
*             process will place this value in the Standard Internal  !!00552
*             Message (STM).  Values are:                             !!00553
*                                                                     !!00554
*             0 = Terminal does not support multiple accounts         !!00555
*             1 = Terminal does support multiple accounts             !!00556
*                                                                     !!00557
                                                                       !00558
  02 MULT-ACCT                 PIC X.                                  !00559
                                                                       !00560
*                                                                     !!00561
*             A table of one-character codes used to classify         !!00562
*             terminals as members of sharing groups.  Zero is not a  !!00563
*             valid entry.                                            !!00564
*                                                                     !!00565
                                                                       !00566
  02 SHRG-GRP                  PIC X        OCCURS 24 TIMES.           !00567
                                                                       !00568
*                                                                     !!00569
*             The values in the following fields indicate what type   !!00570
*             of transactions are allowed at this terminal for not-   !!00571
*             on-us cardholders.  Values for each type of transaction !!00572
*             are:                                                    !!00573
*                                                                     !!00574
*             0 = Not allowed                                         !!00575
*             1 = Allowed within the county                           !!00576
*             2 = Allowed within the state                            !!00577
*             3 = Allowed nationally                                  !!00578
*             4 = Allowed internationally                             !!00579
*                                                                     !!00580
                                                                       !00581
  02 NOT-ON-US-CRD.                                                    !00582
                                                                       !00583
*                                                                     !!00584
*             A series of fields representing the types of            !!00585
*             transactions supported by BASE24.  Possible values for  !!00586
*             each of the transactions are shown in the description   !!00587
*             for the NOT-ON-US-CRD field.  Byte positions for the    !!00588
*             transaction types are:                                  !!00589
*                                                                     !!00590
*             0     = Withdrawal from checking/savings                !!00591
*             1     = Withdrawal from credit card accounts            !!00592
*             2     = Deposit                                         !!00593
*             3     = Balance inquiry                                 !!00594
*             4     = Transfer                                        !!00595
*             5     = Electric payment                                !!00596
*             6     = Payment enclosed                                !!00597
*             7     = Check cashing                                   !!00598
*             8     = Message to financial institution                !!00599
*             9     = Statement print                                 !!00600
*             10    = Log only                                        !!00601
*             11    = Administrative                                  !!00602
*             12    = PIN Change                                      !!00603
*             13    = Deposit with cash back                          !!00604
*             14    = Card review                                     !!00605
                                                                       !00605F00
*             15    = Load value                                       !00605F01
                                                                       !00605F02
                                                                       !00606F00
                                                                       !00606F01
*                                                                     !!00607
                                                                       !00608
     04 TRAN                   PIC X OCCURS 16 TIMES.                  !00609
                                                                       !00610
*                                                                     !!00611
*             The current settlement date (YYMMDD) for this terminal. !!00612
*             All transactions originating at this terminal will be   !!00613
*             logged to the TLF on this date, regardless of the card  !!00614
*             issuer's current business date.                         !!00615
*                                                                     !!00616
                                                                       !00617
  02 POST-DAT                  TYPE DAT.                               !00618
                                                                       !00619
*                                                                     !!00620
*             The time difference (plus or minus in minutes) between  !!00621
*             this terminal and the Tandem processor location.  The   !!00622
*             value in this field is added to the Tandem's time to    !!00623
*             obtain the terminal's local time for printing receipts. !!00624
*                                                                     !!00625
                                                                       !00626
  02 TIM-OFST                  TYPE BINARY 16.                         !00627
                                                                       !00628
*                                                                     !!00629
*             The last transaction sequence number.  If the terminal  !!00630
*             supports the generation of such a number, this number   !!00631
*             comes from the terminal.  Otherwise, it is generated by !!00632
*             the Device Handler for the terminal.                    !!00633
*                                                                     !!00634
                                                                       !00635
  02 TRAN-SEQ-NUM              TYPE BINARY 32.                         !00636
                                                                       !00637
*                                                                     !!00638
*             This field is not used.                                 !!00639
*                                                                     !!00640
                                                                       !00641
  02 USER-DEFINED-AREA         PIC X(70).                              !00642
                                                                       !00643
*                                                                     !!00644
*             The following fields contain the content, cash value,   !!00645
*             and number of bills for each hopper used by the         !!00646
*             terminal.                                               !!00647
*                                                                     !!00648
*             The first set of HOPR fields always contains            !!00649
*             information on the lowest bill denomination; the next   !!00650
*             set of HOPR fields always contains information on the   !!00651
*             next higher bill denomination, and so on.               !!00652
*                                                                     !!00653
*             Terminal type determines the number of hoppers          !!00654
*             available in the terminal, and thus, the number of      !!00655
*             occurrences required.                                   !!00656
*                                                                     !!00657
*             NOTE:  For various system displays and when logging     !!00658
*             terminal totals to the TLF, the hopper bill counts are  !!00659
*             converted to monetary amount figures by multiplying the !!00660
*             bill counts by the corresponding hopper bill values.    !!00661
*                                                                     !!00662
                                                                       !00663
  02 HOPR                      OCCURS 6 TIMES.                         !00664
                                                                       !00665
*                                                                     !!00666
*             Indicates the contents of the hopper.  Values are:      !!00667
*                                                                     !!00668
*             00 = Bills in the hopper (the default value)            !!00669
*             01 = Coins in the hopper.  Note that coins in the       !!00670
*                  hopper are only supported by the IBM 4730 device   !!00671
*                  handler and the Diebold 1000 Device Handler with   !!00672
*                  the Self-Service Banking (SSB) add-on product      !!00673
*                  installed.                                         !!00674
                                                                       !00674F00
*             02 = Traveler's cheques in the hopper.                   !00674F01
*             03-10 = Cash value/non-value items in the hopper.  Cash  !00674F02
*                  value items will have a value from 03-10 in this    !00674F03
*                  field and a non-zero value in the bill value field. !00674F04
*                  Non-value items will have a value from 03-10 in     !00674F05
*                  this field and a zero value in the bill value       !00674F06
*                  field.                                              !00674F07
                                                                       !00674F08
*                                                                     !!00675
                                                                       !00676
     04 CONTENTS               PIC X(2).                               !00677
                                                                       !00678
*                                                                     !!00679
                                                                       !00679F00
*             The denomination of the bills, the cash value of the     !00679F01
*             non-currency items in the hopper or the denomination of  !00679F02
*             the traveler's cheques.  This may contain a value of     !00679F03
*             zero if the hopper contains non-value items.             !00679F04
                                                                       !00679F05
                                                                       !00680F00
                                                                       !00680F01
*                                                                     !!00681
                                                                       !00682
     04 BILL-VAL               TYPE BINARY 32.                         !00683
                                                                       !00684
*                                                                     !!00685
                                                                       !00685F00
*             The standard number of bills, cash value items,          !00685F01
*             non-value items or traveler's cheques used to replenish  !00685F02
*             the hopper.  The use of a standard replenishment amount  !00685F03
*             is valid only for cartridge dispensers where the         !00685F04
*             hopper is replenished by replacing the cartridge.        !00685F05
                                                                       !00685F06
                                                                       !00686F00
                                                                       !00686F01
                                                                       !00686F02
*                                                                     !!00690
                                                                       !00691
     04 STD-BEG-CASH           TYPE BINARY 32.                         !00692
                                                                       !00693
*                                                                     !!00694
                                                                       !00694F00
*             The number of bills, cash value items, non-value items   !00694F01
*             or traveler's cheques in the hopper at the beginning     !00694F02
*             of the terminal's current balancing period.              !00694F03
                                                                       !00694F04
                                                                       !00695F00
                                                                       !00695F01
                                                                       !00695F02
*                                                                     !!00697
                                                                       !00698
     04 BEG-CASH               TYPE BINARY 32.                         !00699
                                                                       !00700
*                                                                     !!00701
                                                                       !00701F00
*             The number of bills, cash value items, non-value items   !00701F01
*             or traveler's cheques added to the hopper via mid-point  !00701F02
*             adjustments during the current balancing period.         !00701F03
                                                                       !00701F04
                                                                       !00702F00
                                                                       !00702F01
                                                                       !00702F02
*                                                                     !!00704
                                                                       !00705
     04 CASH-INCR              TYPE BINARY 32.                         !00706
                                                                       !00707
*                                                                     !!00708
                                                                       !00708F00
*             The number of bills, cash value items, non-value items   !00708F01
*             or traveler's cheques removed from the hopper via        !00708F02
*             mid-point adjustments during the current balancing       !00708F03
*             period.                                                  !00708F04
                                                                       !00708F05
                                                                       !00709F00
                                                                       !00709F01
                                                                       !00709F02
*                                                                     !!00711
                                                                       !00712
     04 CASH-DECR              TYPE BINARY 32.                         !00713
                                                                       !00714
*                                                                     !!00715
                                                                       !00715F00
*             The number of bills, cash value items, non-value items   !00715F01
*             or traveler's cheques dispensed from the hopper or       !00715F02
*             removed from the hopper for customer withdrawals or      !00715F03
*             non-currency dispense transactions during the current    !00715F04
*             balancing period.                                        !00715F05
                                                                       !00715F06
                                                                       !00716F00
                                                                       !00716F01
                                                                       !00716F02
*                                                                     !!00719
                                                                       !00720
     04 CASH-OUT               TYPE BINARY 32.                         !00721
                                                                       !00722
*                                                                     !!00723
                                                                       !00723F00
*             The current number of bills, cash value items, non-value !00723F01
*             items or traveler's cheques in the hopper.               !00723F02
                                                                       !00723F03
                                                                       !00724F00
                                                                       !00724F01
*                                                                     !!00725
                                                                       !00726
     04 END-CASH               TYPE BINARY 32.                         !00727
                                                                       !00728
*                                                                     !!00729
*             The type of currency in the hopper.                     !!00730
*                                                                     !!00731
*             Refer to the "Codes for the Representation of Currencies!!00732
*             and Funds ISO", 4217-1981 to determine the proper code. !!00733
*             Example:  840 (The U.S. currency code).                 !!00734
*                                                                     !!00735
                                                                       !00736
     04 CRNCY-CDE              TYPE *.                                 !00737
                                                                       !00738
*                                                                     !!00739
*             This field is not used.                                 !!00740
*                                                                     !!00741
                                                                       !00742
     04 USER-FLD1              PIC X.                                  !00743
                                                                       !00744
*                                                                     !!00745
*             The number of deposits received since the terminal was  !!00746
*             last balanced.                                          !!00747
*                                                                     !!00748
                                                                       !00749
  02 NUM-DEP                   TYPE BINARY 16.                         !00750
                                                                       !00751
*                                                                     !!00752
*             The unverified amount of deposits received since the    !!00753
*             terminal was last balanced.                             !!00754
*                                                                     !!00755
                                                                       !00756
  02 AMT-DEP                   TYPE BINARY 64.                         !00757
                                                                       !00758
*                                                                     !!00759
*             The number of commercial deposits (e.g., from           !!00760
*             Securomatic devices) received since the terminal was    !!00761
*             last balanced.                                          !!00762
*                                                                     !!00763
                                                                       !00764
  02 NUM-CMRCL-DEP             TYPE BINARY 16.                         !00765
                                                                       !00766
*                                                                     !!00767
*             The total amount of commercial deposits (e.g., from     !!00768
*             Securomatic devices) received since the terminal was    !!00769
*             last balanced.                                          !!00770
*                                                                     !!00771
                                                                       !00772
  02 AMT-CMRCL-DEP             TYPE BINARY 64.                         !00773
                                                                       !00774
*                                                                     !!00775
*             The total number of payment envelopes received since    !!00776
*             the terminal was last balanced.                         !!00777
*                                                                     !!00778
                                                                       !00779
  02 NUM-PAY                   TYPE BINARY 16.                         !00780
                                                                       !00781
*                                                                     !!00782
*             The unverified amount of payments-enclosed transactions !!00783
*             received since the terminal was last balanced.          !!00784
*                                                                     !!00785
                                                                       !00786
  02 AMT-PAY                   TYPE BINARY 64.                         !00787
                                                                       !00788
*                                                                     !!00789
*             The total number of "message to financial institution"  !!00790
*             envelopes received since the terminal was last          !!00791
*             balanced.                                               !!00792
*                                                                     !!00793
                                                                       !00794
  02 NUM-MSG                   TYPE BINARY 16.                         !00795
                                                                       !00796
*                                                                     !!00797
*             The total number of checks received (i.e. cashed        !!00798
*             or deposited) since the terminal was last balanced.     !!00799
*                                                                     !!00800
                                                                       !00801
  02 NUM-CHK                   TYPE BINARY 16.                         !00802
                                                                       !00803
*                                                                     !!00804
*             The unverified total amount of checks received          !!00805
*             (i.e. cashed or deposited) since the terminal was       !!00806
*             last balanced.                                          !!00807
*                                                                     !!00808
                                                                       !00809
  02 AMT-CHK                   TYPE BINARY 64.                         !00810
                                                                       !00811
*                                                                     !!00812
*             The total number of log-only transactions completed     !!00813
*             since the terminal was last balanced.                   !!00814
*                                                                     !!00815
                                                                       !00816
  02 NUM-LOGONLY               TYPE BINARY 16.                         !00817
                                                                       !00818
*                                                                     !!00819
*             The total number of cards retained since the terminal   !!00820
*             was last balanced.                                      !!00821
*                                                                     !!00822
                                                                       !00823
  02 CRDS-RET                  TYPE BINARY 16.                         !00824
                                                                       !00825
*                                                                     !!00826
*             The unverified amount of terminal debits since the      !!00827
*             terminal was last balanced.  The amount in this field   !!00828
*             consists of debits from the institution's point of      !!00829
*             view.  Transaction amounts are added to the balance in  !!00830
*             this field for:                                         !!00831
*                                                                     !!00832
*             o  On-us and not-on-us deposits.  This includes         !!00833
*                all types of deposit transactions (i.e. deposit      !!00834
*                transactions, split deposit transactions and deposit !!00835
*                with cash back transactions).  Note that these       !!00836
*                transactions are supported for envelop, commercial   !!00837
*                and check deposit types.                             !!00838
*                                                                     !!00839
*             o  On-us and not-on-us payment-enclosed transactions    !!00840
*                                                                     !!00841
*             o  On-us and not-on-us transfers                        !!00842
*                                                                     !!00843
*             o  On-us and not-on-us payments between accounts        !!00844
*                                                                     !!00845
                                                                       !00846
  02 TERM-DB                   TYPE BINARY 64.                         !00847
                                                                       !00848
*                                                                     !!00849
*             The total amount of terminal credits since the terminal !!00850
*             was last balanced.  The amount in this field consists   !!00851
*             of credits from the institution's point of view.        !!00852
*             Transaction amounts are added to the balance in this    !!00853
*             field for:                                              !!00854
*                                                                     !!00855
*             o  On-us and not-on-us withdrawals                      !!00856
*                                                                     !!00857
*             o  On-us and not-on-us cash checks                      !!00858
*                                                                     !!00859
*             o  On-us and not-on-us deposits with cash back.  Note   !!00860
*                that only the cash back amount is included in the    !!00861
*                TERM-CR amount.                                      !!00862
*                                                                     !!00863
*             o  On-us and not-on-us transfers                        !!00864
*                                                                     !!00865
*             o  On-us and not-on-us payments between accounts        !!00866
*                                                                     !!00867
                                                                       !00867F00
*             o  On-us and not-on-us non-currency dispense             !00867F01
*                transactions                                          !00867F02
*                                                                      !00867F03
                                                                       !00867F04
                                                                       !00868
  02 TERM-CR                   TYPE BINARY 64.                         !00869
                                                                       !00870
*                                                                     !!00871
*             The total amount of on-us debits since the terminal was !!00872
*             last balanced. The amount in this field consists of     !!00873
*             debits from the customer's point of view.  Transaction  !!00874
*             amounts are added to the balance in this field for:     !!00875
*                                                                     !!00876
*             o  On-us withdrawals                                    !!00877
*                                                                     !!00878
*             o  On-us cash checks                                    !!00879
*                                                                     !!00880
*             o  On-us and not-on-us deposits with cash back.  Note   !!00881
*                that only the cash back amount is included in the    !!00882
*                ON-US-DB amount.                                     !!00883
*                                                                     !!00884
*             o  On-us transfers                                      !!00885
*                                                                     !!00886
*             o  On-us payments between accounts                      !!00887
*                                                                     !!00888
                                                                       !00888F00
*             o  On-us non-currency dispense transactions              !00888F01
*                                                                      !00888F02
                                                                       !00888F03
                                                                       !00889
  02 ON-US-DB                  TYPE BINARY 64.                         !00890
                                                                       !00891
*                                                                     !!00892
*             The total amount of on-us credits since the terminal    !!00893
*             was last balanced. The amount in this field consists of !!00894
*             credits from the customer's point of view.  Transaction !!00895
*             amounts are added to the balance in this field for:     !!00896
*                                                                     !!00897
*             o  On-us deposits.  This includes                       !!00898
*                all types of deposit transactions (i.e. deposit      !!00899
*                transactions, split deposit transactions and deposit !!00900
*                with cash back transactions).  Note that these       !!00901
*                transactions are supported for envelop, commercial   !!00902
*                and check deposit types.                             !!00903
*                                                                     !!00904
*             o  On-us payment enclosed transactions                  !!00905
*                                                                     !!00906
*             o  On-us transfers                                      !!00907
*                                                                     !!00908
*             o  On-us payments between accounts                      !!00909
*                                                                     !!00910
                                                                       !00911
  02 ON-US-CR                  TYPE BINARY 64.                         !00912
                                                                       !00913
*                                                                     !!00914
*             A code indicating the type of currency used to          !!00915
*             represent the terminal's amount fields (i.e., the       !!00916
*             nation that printed the currency).  Valid               !!00917
*             values are listed in the ISO Codes for the              !!00918
*             Representation of Currencies and Funds, 4217-1990.      !!00919
*                                                                     !!00920
                                                                       !00921
  02 AMT-CRNCY-CDE             TYPE CRNCY-CDE.                         !00922
                                                                       !00923
*                                                                     !!00924
*             The postal ZIP code of the location of the terminal.    !!00925
*                                                                     !!00926
                                                                       !00927
  02 POSTAL-CDE                TYPE *.                                 !00928
                                                                       !00929
*                                                                     !!00930
*             The following structure is required for the             !!00931
*             Self Service Banking (SSB) Check Application.           !!00932
*                                                                     !!00933
                                                                       !00934
  02 SSBC.                                                             !00935
                                                                       !00936
*                                                                     !!00937
*             A code indicating whether this terminal supports        !!00938
*             the SSB Check Application features.  Valid Values are:  !!00939
*                                                                     !!00940
*             Y = Yes, this terminal supports the SSB Check           !!00941
*                 Application                                         !!00942
*             N = No, this terminal does not support the SSB Check    !!00943
*                 Application                                         !!00944
*                                                                     !!00945
                                                                       !00946
     04 CHK-SUPPORT            PIC X(1).                               !00947
                                                                       !00948
*                                                                     !!00949
*             This field is not used.                                 !!00950
*                                                                     !!00951
                                                                       !00952
     04 USER-FLDSSBC           PIC X(1).                               !00953
                                                                       !00954
*                                                                     !!00955
*             A name identifying a group of terminals with like       !!00956
*             depository bin sort mechanisms to which this terminal   !!00957
*             belongs.  This field links the TDF record with the      !!00958
*             Bin Sort File (BSF).  The BSF defines the bin sort      !!00959
*             mechanism.                                              !!00960
*                                                                     !!00961
                                                                       !00962
     04 BIN-GRP                PIC 9(4).                               !00963
                                                                       !00964
*                                                                     !!00965
*             The depository bin to use to retain the check if a      !!00966
*             BSF record can not be located.                          !!00967
*                                                                     !!00968
                                                                       !00969
     04 DFLT-BIN               PIC X.                                  !00970
                                                                       !00971
*                                                                     !!00972
*             The following fields contain information about the      !!00973
*             contents of each depository bin.                        !!00974
*                                                                     !!00975
                                                                       !00976
     04 DEP-BIN                OCCURS 4 TIMES.                         !00977
                                                                       !00978
*                                                                     !!00979
*             The number of checks retained in the depository bin.    !!00980
*                                                                     !!00981
                                                                       !00982
        06 SSBC-NUM-CHK        TYPE BINARY 16.                         !00983
                                                                       !00984
*                                                                     !!00985
*             The unverified amount of checks retained in the         !!00986
*             depository bin.                                         !!00987
*                                                                     !!00988
                                                                       !00989
        06 SSBC-AMT-CHK        TYPE BINARY 64.                         !00990
                                                                       !00991
*                                                                     !!00992
*             The terminal depository bin sequence number.            !!00993
*             This field contains a sequence number ranging from      !!00994
*             0001 to 9999.  It is incremented by the Device Handler  !!00995
*             on each check transaction.                              !!00996
*                                                                     !!00997
                                                                       !00998
        06 SEQ-NUM             TYPE BINARY 16.                         !00999
                                                                       !01000
                                                                       !01000C00
                                                                       !01000C01
*             This field is used for surcharging.  This field          !01000C02
*             identifies the terminal surcharge group of which         !01000C03
*             this terminal is a member.  A TERM-PROFILE can           !01000C04
*             be used for multiple TERM-OWNER.FIIDs.                   !01000C05
                                                                       !01000C06
  02 TERM-SUR-PROFILE          PIC X(4).                               !01000C07
                                                                       !01000C08
                                                                       !01000C09
                                                                       !01000F00
*             Number of Smart Card load value transactions since       !01000F01
*             the terminal was last balanced.                          !01000F02
                                                                       !01000F03
  02 NUM-LOAD-VALUE            TYPE BINARY 16.                         !01000F04
                                                                       !01000F05
*             Amount of Smart Card load value transactions since       !01000F06
*             the terminal was last balanced.                          !01000F07
                                                                       !01000F08
  02 AMT-LOAD-VALUE            TYPE BINARY 64.                         !01000F09
                                                                       !01000F0A
  02 NOT-ON-US-CRD-ADNL.                                               !01000F0B
                                                                       !01000F0C
*                                                                      !01000F0D
*             A series of fields representing the types of             !01000F0E
*             transactions supported by BASE24.  This is an            !01000F0F
*             extension of the NOT-ON-US-CRD structure.  Byte          !01000F0G
*             positions for the transaction types are:                 !01000F0H
*                                                                      !01000F0I
*             0     = Non-currency dispense from checking/savings      !01000F0J
*             1     = Non-currency dispense from credit card accounts  !01000F0K
*             2-4   = Not used                                         !01000F0L
                                                                       !01000F0M
     04 TRAN-ADNL              PIC X OCCURS 5 TIMES.                   !01000F0N
                                                                       !01000F0O
*             The routing group number used to route non-currency      !01000F0P
*             dispense transactions initiated by cardholders that      !01000F0Q
*             are outside the logical network.                         !01000F0R
*                                                                      !01000F0S
                                                                       !01000F0T
  02 NCD-RTE-GRP               TYPE ID-NUM.                            !01000F0U
                                                                       !01000F0V
                                                                       !01000F0W
                                                                       !01000P00
*             The following structure is required for the              !01000P01
*             Dynamic Key Management enhancement.                      !01000P02
                                                                       !01000P03
  02 DKM.                                                              !01000P04
                                                                       !01000P05
*             The number of transactions requiring a PIN verification  !01000P06
*             since the last PIN key change.                           !01000P07
                                                                       !01000P08
     04 PIN-TXN-CNTR           TYPE BINARY 16.                         !01000P09
                                                                       !01000P0A
*             The number of transactions with a PIN verification error !01000P0B
*             since the last PIN key change.                           !01000P0C
                                                                       !01000P0D
     04 PIN-ERR-CNTR           TYPE BINARY 16.                         !01000P0E
                                                                       !01000P0F
*             The number of transactions requiring a MAC verification  !01000P0G
*             since the last MAC key change.                           !01000P0H
                                                                       !01000P0I
     04 MAC-TXN-CNTR           TYPE BINARY 16.                         !01000P0J
                                                                       !01000P0K
*             The number of transactions with a MAC verification error !01000P0L
*             since the last MAC key change.                           !01000P0M
                                                                       !01000P0N
     04 MAC-ERR-CNTR           TYPE BINARY 16.                         !01000P0O
                                                                       !01000P0P
*             The number of consecutive transactions with a MAC        !01000P0Q
*             verification error since the last MAC key change.        !01000P0R
                                                                       !01000P0S
     04 MAC-CONS-ERR-CNTR      TYPE BINARY 16.                         !01000P0T
                                                                       !01000P0U
*             The Julian timestamp of the last key change.             !01000P0V
                                                                       !01000P0W
     04 KEY-CHNG-TS            TYPE BINARY 64.                         !01000P0X
                                                                       !01000P0Y
                                                                       !01000Q00
*             Terminal attribute for dual site processing.             !01000Q01
*             Valid values are:                                        !01000Q02
*                                                                      !01000Q03
*             "L"   = Local                                            !01000Q04
*             "R"   = Remote                                           !01000Q05
*             Blank = Local                                            !01000Q06
                                                                       !01000Q07
  02 DUAL-SITE-IND                     PIC X.                          !01000Q08
                                                                       !01000Q09
*                                                                     !!01001
*             This field is not used.                                 !!01002
*                                                                     !!01003
                                                                       !01004
                                                                       !01005C00
                                                                       !01005F00
                                                                       !01005P00
                                                                       !01005Q00
  02 USER-FLD2                 PIC X(3).                               !01005Q01
                                                                       !01005Q02
                                                                       !01005P02
                                                                       !01005P03
                                                                       !01005P04
                                                                       !01005P05
                                                                       !01006
*                                                                     !!01007
*             A code that indicates how the terminal was last         !!01008
*             balanced.                                               !!01009
*                                                                     !!01010
*             If a terminal is force balanced, the value in the POST- !!01011
*             DAT field is the only value updated; the terminal       !!01012
*             itself is not balanced.  If the terminal is card or CRT !!01013
*             balanced, the balancing totals and the value in the     !!01014
*             POST-DAT field are updated.                             !!01015
*                                                                     !!01016
*             0 = Card balanced                                       !!01017
*             1 = CRT balanced                                        !!01018
*             9 = Force balanced                                      !!01019
*                                                                     !!01020
                                                                       !01021
  02 BAL-FLG                   PIC X.                                  !01022
                                                                       !01023
*                                                                     !!01024
*             Indicates whether or not the terminal needs to be cut   !!01025
*             over.  The value in this field is controlled by the     !!01026
*             system.  Values are:                                    !!01027
*                                                                     !!01028
*             0 = The terminal does not need to be cutover.           !!01029
*             1 = The terminal does need to be cutover.               !!01030
*                                                                     !!01031
*             This field is set by the Settlement Initiator process   !!01032
*             and is reset by the Device Handler.                     !!01033
*                                                                     !!01034
                                                                       !01035
  02 CUTOVER-PEND              PIC 9.                                  !01036
                                                                       !01037
*                                                                     !!01038
*             The terminal owner's posting date (YYMMDD) used while   !!01039
*             the terminal is waiting to cut over.  The value in this !!01040
*             field is controlled by the system.  It is set by the    !!01041
*             Settlement Initiator process and reset by the Device    !!01042
*             Handler.                                                !!01043
*                                                                     !!01044
                                                                       !01045
  02 NEW-POST-DAT              TYPE DAT.                               !01046
                                                                       !01047
*                                                                     !!01048
*             Indicates the date that the terminal was last balanced. !!01049
*             (Force balances do not affect the value in this field.) !!01050
*                                                                     !!01051
                                                                       !01052
  02 LAST-SETL-DAT             TYPE BINARY 32.                         !01053
                                                                       !01054
*                                                                     !!01055
*             Indicates the time that the terminal was last balanced. !!01056
*             (Force balances do not affect the value in this field.) !!01057
*                                                                     !!01058
                                                                       !01059
  02 LAST-SETL-TIM             TYPE BINARY 16.                         !01060
                                                                       !01061
*                                                                     !!01062
*             The information concerning a specific type of device.   !!01063
*             This area is redefined for each device type.            !!01064
*                                                                     !!01065
                                                                       !01066
  02 DEV-INFO                  PIC X(280).                             !01067
                                                                       !01068
                                                                       !01068O00
                                                                       !01068O01
*                                                                     !!04167
*             Identifies the last file maintenance action on this     !!04168
*             record.  This includes the user who did the update, the !!04169
*             time at which it was done, and the type of update.      !!04170
*                                                                     !!04171
                                                                       !04172
  02 LAST-FM                   TYPE *.                                 !04173
                                                                       !04174
*                                                                     !!04175
*             Identifies the last transaction to update this record.  !!04176
*             The value in this field ensures against multiple or     !!04177
*             incomplete updates due to process failure and restart   !!04178
*             and occurs in every record that is updated by the       !!04179
*             online system.                                          !!04180
*                                                                     !!04181
                                                                       !04182
  02 LAST-TRAN                 TYPE *.                                 !04183
                                                                       !04184
*                                                                     !!04185
*             The last transaction message processed for this         !!04186
*             terminal by the Device Handler.  Transaction context is !!04187
*             preserved in this field.  For most Device Handlers this !!04188
*             area contains the last STM (Standard Internal Message). !!04189
*                                                                     !!04190
                                                                       !04191
  02 LAST-MSG                  PIC X(1400).                            !04192
  02 LAST-MSG-DATA             TYPE BINARY 16 OCCURS 700 TIMES         !04193
                               REDEFINES LAST-MSG.                     !04194
                                                                       !04195
*                                                                     !!04196
*             For dual console ATMs, the area is divided into two     !!04197
*             areas of 700 bytes each.  Only specific information     !!04198
*             required to reconstruct a transaction in the event of a !!04199
*             reversal is retained.                                   !!04200
*                                                                     !!04201
                                                                       !04202
  02 LAST-MSG-DUAL             PIC X(700) OCCURS 2 TIMES               !04203
                               REDEFINES LAST-MSG.                     !04204
                                                                       !04205
*                                                                     !!04206
*             Device-dependent data.  This field contains status and  !!04207
*             internal processing data for this terminal.  Each type  !!04208
*             of terminal has its own device-dependent data           !!04209
*             structure.                                              !!04210
*                                                                     !!04211
                                                                       !04212
  02 DEV-DAT                   PIC X(1500).                            !04213
  02 DEV-DEP-DATA              TYPE BINARY 16 OCCURS 750 TIMES         !04214
                               REDEFINES DEV-DAT.                      !04215
                                                                       !04216O00
                                                                       !04216O01
                                                                       !04216O02
*                                                                     !!04217
*             The following fields contain information used by the    !!04218
*             Device Handler when using an SNA or SDLC line protocol  !!04219
*             to communicate with an ATM device.                      !!04220
*                                                                     !!04221
                                                                       !04222
  02 SNA.                                                              !04223
                                                                       !04224
*                                                                     !!04225
*             A flag indicating the state of the current SNA session. !!04226
*             This field is not used by most Device Handlers.         !!04227
*                                                                     !!04228
                                                                       !04229
     04 WAKEUP-APPL-FLG        PIC X.                                  !04230
                                                                       !04231
*                                                                     !!04232
*             The name of the application controlling the current     !!04233
*             SNA session.  This is used by the IBM 3624 device       !!04234
*             handler to control the SNA message flow during a        !!04235
*             load sequence.  This field is set to blanks and is      !!04236
*             not used by other Device Handlers.                      !!04237
*                                                                     !!04238
                                                                       !04239
     04 CUR-SESSION-APPL-NAME  PIC X(8).                               !04240
                                                                       !04241
*                                                                     !!04242
*             Flag indicating whether a command is pending for the    !!04243
*             given terminal.                                         !!04244
*                                                                     !!04245
                                                                       !04246
     04 CMD-PENDING            PIC X.                                  !04247
                                                                       !04248
*                                                                     !!04249
*             Protocol specific information for the current SNA       !!04250
*             session.                                                !!04251
*                                                                     !!04252
                                                                       !04253
     04 INFO                   PIC X(121).                             !04254
                                                                       !04255
*                                                                     !!04256
*             Miscellaneous data about the current SNA session.       !!04257
*                                                                     !!04258
                                                                       !04259
     04 SNA-USER-FLD           PIC X(9).                               !04260
                                                                       !04260R00
                                                                       !04260R01
*             The following data fields reuse the SNA data space that  !04260R02
*             is not used by device handlers that do not support SNA/  !04260R03
*             SDLC protocol.                                           !04260R04
                                                                       !04260R05
  02 ADDL-DATA                 REDEFINES SNA.                          !04260R06
                                                                       !04260R07
     04 EMV-TERM-CAP           TYPE *.                                 !04260R08
                                                                       !04260R09
                                                                       !04260S00
*             The token data retrieval option.  When the device        !04260S01
*             handler is processing a reversal, this field indicates   !04260S02
*             where to retrieve the token data. Valid values are:      !04260S03
*                                                                      !04260S04
*             1 = TDF. Token data retrieved from the LAST-MSG area of  !04260S05
*                 the TDF, and appended to the reversal message. A     !04260S06
*                 maximum of 528 bytes can be stored.                  !04260S07
*             2 = TLF. Token data retrieved from the Transaction Log   !04260S08
*                 File, and appended to the reversal message.          !04260S09
                                                                       !04260S0A
     04 TKN-RETRV-OPT          PIC X.                                  !04260S0B
                                                                       !04260S0C
                                                                       !04260T00
*             The format of AKDS that the EPP in the ATM will          !04260T01
*             support. Valid Values are:                               !04260T02
*             '0' = None                                               !04260T03
*             '1' = Signature                                          !04260T04
*             '2' = Certificate                                        !04260T05
*             '3' = Both                                               !04260T06
                                                                       !04260T07
     04 EPP-FRMT               PIC X.                                  !04260T08
                                                                       !04260T09
*             The manufacturer of the ATM device.  Valid Values are:   !04260T0A
*             '0' = Unknown                                            !04260T0B
*             '1' = Wincor                                             !04260T0C
*             '2' = NCR                                                !04260T0D
*             '3' = Diebold                                            !04260T0E
*             '4' = Fujitsu                                            !04260T0F
*             '5' = De La Rue                                          !04260T0G
*             '6' = Triton                                             !04260T0H
*             '7' = Olivetti                                           !04260T0I
*             '8' = Tidel                                              !04260T0J
                                                                       !04260T0K
     04 HDWR                   PIC X.                                  !04260T0L
                                                                       !04260T0M
*             An identifier used to indicate which organization is     !04260T0N
*             acting as the Certificate Authority. The value in this   !04260T0O
*             field will be used as a key to read the correct entry    !04260T0P
*             in the Host Public Key Datasource in the TSS database.   !04260T0Q
*             This is a free format text field. A default value of     !04260T0R
*             "HOST" will be used by TSS if this field is spaces.      !04260T0S
                                                                       !04260T0T
     04 KEY-SIGNER             PIC X(16).                              !04260T0U
                                                                       !04260T0V
                                                                       !04260U00
     04 USER-FLD-ACI           PIC X(3).                               !04260U01
                                                                       !04260U02
*             An identifier used by the Triton and Tidel DHs to        !04260U03
*             indicate whether the ADDL-DATA.EMV-TERM-CAP field        !04260U04
*             has been initialized. A value of '1' in the first        !04260U05
*             byte indicates that the field has been initialized.      !04260U06
*             The last two bytes will always contain spaces, but       !04260U07
*             these bytes are referenced by the Triton and Tidel       !04260U08
*             DHs and must not be used for any other purpose.          !04260U09
                                                                       !04260U0A
     04 EMV-TERM-CAP-IND       REDEFINES USER-FLD-ACI                  !04260U0B
                               PIC X(3).                               !04260U0C
                                                                       !04260U0D
*             USER-FLD-ACI0 is reserved for future BASE24 product use  !04260U0E
                                                                       !04260U0F
                                                                       !04260U0G
                                                                       !04260U0H
*             only.  The designation of "product use only" provides    !04260R0B
*             ACI with the ability to deplete the number of bytes      !04260R0C
                                                                       !04260U0I
*             available within USER-FLD-ACI0 as product enhancements   !04260U0J
                                                                       !04260U0K
                                                                       !04260U0L
                                                                       !04260U0M
*             are introduced.  When product enhancements require the   !04260R0E
*             addition of new fields within this file, the procedure   !04260R0F
                                                                       !04260U0N
*             to be followed is to deplete bytes from USER-FLD-ACI0    !04260U0O
                                                                       !04260U0P
                                                                       !04260U0Q
                                                                       !04260U0R
*             and use that number of bytes to define new fields.       !04260R0H
*             The new field definition(s) should precede the           !04260R0I
                                                                       !04260U0S
*             USER-FLD-ACI0 field.                                     !04260U0T
                                                                       !04260U0U
                                                                       !04260U0V
                                                                       !04260U0W
                                                                       !04260R0K
                                                                       !04260S0D
                                                                       !04260T0W
                                                                       !04260U0X
     04 USER-FLD-ACI0          PIC X(114).                             !04260U0Y
                                                                       !04260U0Z
                                                                       !04260U0a
                                                                       !04260U0b
                                                                       !04260T0Y
                                                                       !04260S0F
                                                                       !04260R0M
END                                                                    !04261
                                                                       !04262O00
                                                                       !04262O01
                                                                       !04262O02
