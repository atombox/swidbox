**FIX2.28  11/23/06  DDLGTLFX6003 DDL    PS60DDL  PS0A305  C                 ***
**FIX2.23  02/13/03  DDLGTLFX6002 DDL    PS60DDL  PS06078  B                 ***
**SEQ0.04  11/01/00  DDLGTLFX6001 DDL    PS60DDL  PS04000  A                 ***
**SYNC.04  12/08/98  DDLGTLFX5301 DDL    PS53DDL  PS04000  A                 ***
**SYNC.03  08/28/98  DDLGTLFX5301 DDL    PS53DDL  PS03000  A                 ***
**SYNC.03  08/22/97  DDLGTLFX5101 DDL    PS51DDL  PS03000  A                 ***
**FIX2.04  02/27/97  DDLGTLFX5101 DDL    PS51DDL  PS02016  A                 ***
!*SYNC.02  06/25/96  DDLGTLFX5100 DDL    PS51DDL    02000                      !
!*SEQ2.00  01/26/93  DDLGTLFX5100 DDL    PS51DDL                               !
                                                                       !00000A00
                                                                       !00000B00
?page "BASE24-pos Transaction Log File Extract"
?section ptlfx-history
********************************************************************** !00000B05
*                                                                    * !00000B06
*                             BASE24-pos                             * !00000B07
*                             ----------                             * !00000B08
*                                                                    * !00000B09
*          DDL for the BASE24-pos Transaction Log File Extract       * !00000B0A
*                                                                    * !00000B0B
*                   Proprietary Software Product                     * !00000B0C
*                                                                    * !00000B0D
*                         ACI Worldwide Inc.                         * !00000B0E
*                       330 South 108th Avenue                       * !00000B0F
*                       Omaha, Nebraska  68154                       * !00000B0G
*                           (402) 390-7600                           * !00000B0H
*                                                                    * !00000B0I
*    Copyright by ACI Worldwide Inc. 2002                            * !00000B0J
*                                                                    * !00000B0K
*    All Rights Reserved.                                            * !00000B0L
*                                                                    * !00000B0M
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000B0N
*                                                                    * !00000B0O
********************************************************************** !00000B0P
*                                                                      !00000B0Q
* Record of Changes:                                                   !00000B0R
*                                                                      !00000B0S
* Date        Person/Emp #                                             !00000B0T
* ---------   ------------                                             !00000B0U
!                                                                     !
! History section                                                     !
!---------------------------------------------------------------------!
!                                                                     !
                                                                       !00000B0d
! 96/06/21  3.4     WRR/974 - JMS/583!                                 !00000A0B
!!                                                                     !00000A0C
! SYMPTOM:  When PTLFX settlement records were!                        !00000A0D
!           being extracted they were not converted to 4.0 format.!    !00000A0E
! PROBLEM:  An incorrect record, set-rec1d, was being used.!           !00000A0F
! FIX:      Added record set-rec1p and set-rec-1p in the 3.4 format.!  !00000A0G
! IMPLEMENTATION:  Apply fixes to this ddl, prvptlfs and ptlfs.!       !00000A0H
!                  Re-ddl and then recompile ptlfxs using MAKE.!       !00000A0I
! REFERENCE:  RPC #230309.!                                            !00000A0J
                                                                       !00000A0K
                                                                       !00000B0e
*********************************************************************  !00000B0f
*             Release 6.0                                           *  !00000B0g
*********************************************************************  !00000B0h
* 07FEB2003   JJD/615                                                  !00000B0i
* Symptom:    POS Enhancements.                                        !00000B0j
* Problem:    None.                                                    !00000B0k
* Fix:        Added the SET-REC6D, SET-REC7D, PTLFX-SET-REC-6,         !00000B0l
*             and PTLFX-SRVCS-7 definitions.                           !00000B0m
* Dependency: Apply fix to DDLGTLFX.  Apply associated fixes to        !00000B0n
*             DDLGDEFS and DDLFPTLF and run MAKE. Refer to             !00000B0o
*             BA60UD06.SCNFIL for a complete list of dependencies.     !00000B0p
* Reference:  WO #020606-01                                            !00000B0q
                                                                       !00000C00
                                                                       !00000C01
* 14OCT2006   BartonD                                                  !00000C02
* Symptom:    Incomplete comments for ADDR-VRFY-STAT field.            !00000C03
* Problem:    Incomplete comments for ADDR-VRFY-STAT field.            !00000C04
* Fix:        Modified comments only.                                  !00000C05
*             Added paragraph to specify that the field could contain  !00000C06
*             interchange-specific values.                             !00000C07
* Dependency: Apply fix to DDLGTLFX and run Make.                      !00000C08
* Reference:  Case #409327                                             !00000C09
                                                                       !00000C0A
*#################################################################### !!00000B0r
                                                                       !00000B0s
                                                                       !00000A0N
*#                                                                  # !!00003
*#    The following definitions are duplicates of their counterparts# !!00004
*# except the TYPE BINARY xx fields are now the appropriate PIC X( )# !!00005
*# fields.                                                          # !!00006
*#                                                                  # !!00007
*#################################################################### !!00008
                                                                       !00009
?comments
DEFINITION SET-REC1D.                                                  !00012
                                                                       !00013
*                                                                     !!00014
*             A code indicating the type of PTLF record.  The valid   !!00015
*             code is 0500, reconciliation record.                    !!00016
*                                                                     !!00017
     04 TYP                     PIC 9(4).                              !00018
                                                                       !00019
*                                                                     !!00020
*             The posting date (YYMMDD) for the settlement record.    !!00021
*                                                                     !!00022
     04 POST-DAT                TYPE DAT.                              !00023
                                                                       !00024
*                                                                     !!00025
*             A code identifying the BASE24 product.  The valid code  !!00026
*             is 02, BASE24-pos.                                      !!00027
*                                                                     !!00028
     04 PROD-ID                 PIC 99.                                !00029
                                                                       !00030
*                                                                     !!00031
*             A code identifying the current version of the product.  !!00032
*                                                                     !!00033
     04 REL-NUM                 PIC 99.                                !00034
                                                                       !00035
*                                                                     !!00036
*             The number of the institution's Data Processing Center  !!00037
*             (DPC).  This is the host computer that processes        !!00038
*             messages received from BASE24.                          !!00039
*                                                                     !!00040
     04 DPC-NUM                 PIC 9(4).                              !00041
                                                                       !00042
*                                                                     !!00043
*             The time difference between the terminal and the        !!00044
*             Tandem processor location.  It is the signed (+ or -)   !!00045
*             number of minutes to be added to the BASE24 Tandem      !!00046
*             system time in order to obtain the terminal local       !!00047
*             time.                                                   !!00048
*                                                                     !!00049
                                                                       !00050
     04 TERM-TIM-OFST           PIC X(5).                              !00051
*                                                                     !!00052
*             The terminal ID of the terminal on which the settlement !!00053
*             occurred.                                               !!00054
*                                                                     !!00055
     04 TERM-ID                 PIC X(16).                             !00056
                                                                       !00057
*                                                                     !!00058
*             The values in the following fields describe the         !!00059
*             retailer portion of the settlement record.              !!00060
*                                                                     !!00061
     04 RETL.                                                          !00062
*                                                                     !!00063
*             The institution's route and transit number,             !!00064
*             transit/routing number, or issuer identification number !!00065
*             of the terminal owner.  The identification data is      !!00066
*             right-justified with high-order zero fill.              !!00067
*                                                                     !!00068
        06 RTTN                 TYPE ID-NUM.                           !00069
*                                                                     !!00070
*             The account number at the retailer's financial          !!00071
*             institution for the retailer associated with the        !!00072
*             settlement record.                                      !!00073
*                                                                     !!00074
        06 ACCT                 PIC X(19).                             !00075
*                                                                     !!00076
*             The name of the retailer associated with the settlement !!00077
*             record.                                                 !!00078
*                                                                     !!00079
        06 NAM                  PIC X(40).                             !00080
*                                                                     !!00081
*             Reserved for future use.                                !!00082
*                                                                     !!00083
        06 USER-FLD1            PIC X.                                 !00084
                                                                       !00085
*                                                                     !!00086
*             A code identifying the type of settlement record being  !!00087
*             displayed.  Valid values are:                           !!00088
*                                                                     !!00089
*             0 = Batch                                               !!00090
*             1 = Shift                                               !!00091
*             2 = Daily                                               !!00092
*             3 = Network                                             !!00093
*             4 = Clerk                                               !!00094
*             8 = Services 2 (last 13 services)                       !!00095
*             9 = Services 1 (first 17 services)                      !!00096
*                                                                     !!00097
     04 SETL-TYP                PIC 9.                                 !00098
                                                                       !00099
*                                                                     !!00100
*             A code identifying the method used to perform the most  !!00101
*             recent balancing of this terminal.  Valid options are:  !!00102
*                                                                     !!00103
*             5 = Balanced--Terminal balanced by a close transaction  !!00104
*                 from terminal.  Totals sent by terminal agreed with !!00105
*                 BASE24 totals or terminal did not send any totals.  !!00106
*                 Totals were written to the PTLF and cleared.        !!00107
*             6 = Balanced (with problems)--Terminal balanced by a    !!00108
*                 close transaction from terminal. Totals sent by     !!00109
*                 terminal did not agree with BASE24 totals and       !!00110
*                 require verification.  Totals were written to the   !!00111
*                 PTLF and cleared.                                   !!00112
*             8 = Force-balanced (incomplete batch)--Terminal was cut !!00113
*                 over by Settlement Initiator at the time specified  !!00114
*                 in the RETAILER-BAL-AND-CUTVR-END field in the      !!00115
*                 PRDF.  The terminal was cut over to a new reporting !!00116
*                 day, and its totals were written to the PTLF, but   !!00117
*                 only current network totals were reset to zero.     !!00118
*                 This method is used when the value in the TERM-     !!00119
*                 CUTOVER-TC field in the PTDF is 0, 1, or 2, and the !!00120
*                 close transaction has not been received from the    !!00121
*                 terminal within the time window defined by the      !!00122
*                 values in the RETAILER-BAL-AND-CUTVR-START and      !!00123
*                 RETAILER-BAL-AND-CUTVR-END fields in the PRDF.      !!00124
*             9 = Force-balanced--Terminal was cut over by Settlement !!00125
*                 Initiator at the time specified in the RETAILER-    !!00126
*                 BAL-AND-CUTVR-END field in the PRDF.  This method is!!00127
*                 used when the value of the TERM-CUTOVER-TC field in !!00128
*                 the PTDF equals 3.                                  !!00129
*                 Also set to 9 when the terminal was cut over by the !!00130
*                 device handler on the first financial transaction   !!00131
*                 after the retailer cutover balance start time as    !!00132
*                 specified in the PRDF.  This method is used when    !!00133
*                 the value of the TERM-CUTOVER-TC field in the PTDF  !!00134
*                 equals 4.                                           !!00135
*                 In both cases, the terminal was cut over to a new   !!00136
*                 reporting day, its totals were written to the       !!00137
*                 PTLF and all BASE24 totals for the terminal were    !!00138
*                 cleared.                                            !!00139
*                                                                     !!00140
     04 BAL-FLG                 PIC 9.                                 !00141
*                                                                     !!00142
*             Reserved for future use.                                !!00143
*                                                                     !!00144
     04 USER-FLD2               PIC X.                                 !00145
                                                                       !00146
*                                                                     !!00147
*             The date (YYMMDD) of the transaction.  The value in     !!00148
*             this field is set by the Device Handler or              !!00149
*             Settlement.                                             !!00150
*                                                                     !!00151
     04 TRAN-DAT                TYPE DAT.                              !00152
*                                                                     !!00153
*             The time (HHMMSS) of the transaction.  The value in     !!00154
*             this field is set by the Device Handler or              !!00155
*             Settlement.                                             !!00156
*                                                                     !!00157
     04 TRAN-TIM                PIC X(6).                              !00158
                                                                       !00159
*                                                                     !!00160
*             A flag indicating whether this balancing record has an  !!00161
*             associated balancing record if a terminal is out-of-    !!00162
*             balance with BASE24-pos.  This flag is used if the      !!00163
*             value in the BAL-FLG field of this record is 5 or 6.    !!00164
*             Valid codes are:                                        !!00165
*                                                                     !!00166
*             0 = No associated record exists                         !!00167
*             1 = Associated record exists                            !!00168
*                                                                     !!00169
     04 OB-FLG                  PIC X.                                 !00170
                                                                       !00171
*                                                                     !!00172
*             This field is reserved for Automated Clearinghouse      !!00173
*             (ACH) information that may be required for processing   !!00174
*             transactions from this retailer. Information in this    !!00175
*             field has no impact on BASE24-pos processing.           !!00176
*                                                                     !!00177
     04 ACH-COMP-ID             PIC X(10).                             !00178
                                                                       !00179
*                                                                     !!00180
*             A free-form informational field used at the discretion  !!00181
*             of the institution.  Typically, this field contains ACH !!00182
*             information that BASE24-pos passes on to the host for   !!00183
*             use by the ACH system. Information in this field has no !!00184
*             impact on BASE24-pos processing.                        !!00185
*                                                                     !!00186
     04 BILLING-INFO            PIC X(10).                             !00187
                                                                       !00188
*                                                                     !!00189
*             A code indicating the type of currency used for the     !!00190
*             transactions pertaining to this terminal.               !!00191
*                                                                     !!00192
     04 AUTH-CRNCY-CDE          TYPE CRNCY-CDE.                        !00193
*                                                                     !!00194
*             The exchange rate of the authorizing entity.  The value !!00195
*             in this field is used to compute the final settlement   !!00196
*             amount.  The first digit contains the offset of the     !!00197
*             decimal point from the right-hand side.  Unless         !!00198
*             multiple currencies are involved, the default value is  !!00199
*             61000000.                                               !!00200
*                                                                     !!00201
     04 AUTH-CONV-RATE          PIC X(8).                              !00202
*                                                                     !!00203
*             A code indicating the type of currency used in the      !!00204
*             settlement of the transaction.                          !!00205
*                                                                     !!00206
     04 SETL-CRNCY-CDE          TYPE CRNCY-CDE.                        !00207
*                                                                     !!00208
*             The exchange rate of the settlement entity.  The value  !!00209
*             in this field is used to compute the final settlement   !!00210
*             amount.  The first digit contains the offset of the     !!00211
*             decimal point from the right-hand side.  Unless         !!00212
*             multiple currencies are used, the default value is      !!00213
*             61000000.                                               !!00214
*                                                                     !!00215
     04 SETL-CONV-RATE          PIC X(8).                              !00216
                                                                       !00217
END                                                                    !00218
                                                                       !00219
                                                                       !00219A00
*####################################################################!!!00219A01
*#                                                                  #!!!00219A02
*#    This set of definitions are pos 3.4 ddl set-rec1d and are     #!!!00219A03
*# basically the same as the def's above, set-rec1d.                #!!!00219A04
*# fields.                                                          #!!!00219A05
*#                                                                  #!!!00219A06
*####################################################################!!!00219A07
                                                                       !00219A08
?comments
DEFINITION SET-REC1P.                                                  !00219A0B
                                                                       !00219A0C
*                                                                    !!!00219A0D
*             A code indicating the type of PTLF record.  The valid  !!!00219A0E
*             code is 0500, reconciliation record.                   !!!00219A0F
*                                                                    !!!00219A0G
     04 TYP                     PIC 9(4).                              !00219A0H
                                                                       !00219A0I
*                                                                    !!!00219A0J
*             The posting date (YYMMDD) for the settlement record.   !!!00219A0K
*                                                                    !!!00219A0L
     04 POST-DAT                TYPE DAT.                              !00219A0M
                                                                       !00219A0N
*                                                                    !!!00219A0O
*             A code identifying the BASE24 product.  The valid code !!!00219A0P
*             is 02, BASE24-pos.                                     !!!00219A0Q
*                                                                    !!!00219A0R
     04 PROD-ID                 PIC 99.                                !00219A0S
                                                                       !00219A0T
*                                                                    !!!00219A0U
*             A code identifying the current version of the product. !!!00219A0V
*                                                                    !!!00219A0W
     04 REL-NUM                 PIC 99.                                !00219A0X
                                                                       !00219A0Y
*                                                                    !!!00219A0Z
*             The number of the institution's Data Processing Center !!!00219A10
*             (DPC).  This is the host computer that processes       !!!00219A11
*             messages received from BASE24.                         !!!00219A12
*                                                                    !!!00219A13
     04 DPC-NUM                 PIC 9(4).                              !00219A14
                                                                       !00219A15
*                                                                    !!!00219A16
*             The time difference between the terminal and the       !!!00219A17
*             Tandem processor location.  It is the signed (+ or -)  !!!00219A18
*             number of minutes to be added to the BASE24 Tandem     !!!00219A19
*             system time in order to obtain the terminal local      !!!00219A1A
*             time.                                                  !!!00219A1B
*                                                                    !!!00219A1C
                                                                       !00219A1D
     04 TERM-ID                 PIC X(16).                             !00219A1E
                                                                       !00219A1F
*                                                                    !!!00219A1G
*             The values in the following fields describe the        !!!00219A1H
*             retailer portion of the settlement record.             !!!00219A1I
*                                                                    !!!00219A1J
     04 RETL.                                                          !00219A1K
*                                                                    !!!00219A1L
*             The institution's route and transit number,            !!!00219A1M
*             transit/routing number, or issuer identification number!!!00219A1N
*             of the terminal owner.  The identification data is     !!!00219A1O
*             right-justified with high-order zero fill.             !!!00219A1P
*                                                                    !!!00219A1Q
        06 RTTN                 TYPE ID-NUM.                           !00219A1R
*                                                                    !!!00219A1S
*             The account number at the retailer's financial         !!!00219A1T
*             institution for the retailer associated with the       !!!00219A1U
*             settlement record.                                     !!!00219A1V
*                                                                    !!!00219A1W
        06 ACCT                 PIC X(28).                             !00219A1X
*                                                                    !!!00219A1Y
*             The name of the retailer associated with the settlement!!!00219A1Z
*             record.                                                !!!00219A20
*                                                                    !!!00219A21
        06 NAM                  PIC X(40).                             !00219A22
*                                                                    !!!00219A23
*             Reserved for future use.                               !!!00219A24
*                                                                    !!!00219A25
        06 USER-FLD1            PIC X.                                 !00219A26
                                                                       !00219A27
*                                                                    !!!00219A28
*             A code identifying the type of settlement record being !!!00219A29
*             displayed.  Valid values are:                          !!!00219A2A
*                                                                    !!!00219A2B
*             0 = Batch                                              !!!00219A2C
*             1 = Shift                                              !!!00219A2D
*             2 = Daily                                              !!!00219A2E
*             3 = Network                                            !!!00219A2F
*             4 = Clerk                                              !!!00219A2G
*             8 = Services 2 (last 13 services)                      !!!00219A2H
*             9 = Services 1 (first 17 services)                     !!!00219A2I
*                                                                    !!!00219A2J
     04 SETL-TYP                PIC 9.                                 !00219A2K
                                                                       !00219A2L
*                                                                    !!!00219A2M
*             A code identifying the method used to perform the most !!!00219A2N
*             recent balancing of this terminal.  Valid options are: !!!00219A2O
*                                                                    !!!00219A2P
*             5 = Balanced--Terminal balanced by a close transaction !!!00219A2Q
*                 from terminal.  Totals sent by terminal agreed with!!!00219A2R
*                 BASE24 totals or terminal did not send any totals. !!!00219A2S
*                 Totals were written to the PTLF and cleared.       !!!00219A2T
*             6 = Balanced (with problems)--Terminal balanced by a   !!!00219A2U
*                 close transaction from terminal. Totals sent by    !!!00219A2V
*                 terminal did not agree with BASE24 totals and      !!!00219A2W
*                 require verification.  Totals were written to the  !!!00219A2X
*                 PTLF and cleared.                                  !!!00219A2Y
*             8 = Force-balanced (incomplete batch)--Terminal was cut!!!00219A2Z
*                 over by Settlement Initiator at the time specified !!!00219A30
*                 in the RETAILER-BAL-AND-CUTVR-END field in the     !!!00219A31
*                 PRDF.  The terminal was cut over to a new reporting!!!00219A32
*                 day, and its totals were written to the PTLF, but  !!!00219A33
*                 only current network totals were reset to zero.    !!!00219A34
*                 This method is used when the value in the TERM-    !!!00219A35
*                 CUTOVER-TC field in the PTDF is 0, 1, or 2, and the!!!00219A36
*                 close transaction has not been received from the   !!!00219A37
*                 terminal within the time window defined by the     !!!00219A38
*                 values in the RETAILER-BAL-AND-CUTVR-START and     !!!00219A39
*                 RETAILER-BAL-AND-CUTVR-END fields in the PRDF.     !!!00219A3A
*             9 = Force-balanced--Terminal was cut over by Settlement!!!00219A3B
*                 Initiator at the time specified in the RETAILER-   !!!00219A3C
*                 BAL-AND-CUTVR-END field in the PRDF.  This method is !00219A3D
*                 used when the value of the TERM-CUTOVER-TC field in!!!00219A3E
*                 the PTDF equals 3.                                 !!!00219A3F
*                 Also set to 9 when the terminal was cut over by the!!!00219A3G
*                 device handler on the first financial transaction  !!!00219A3H
*                 after the retailer cutover balance start time as   !!!00219A3I
*                 specified in the PRDF.  This method is used when   !!!00219A3J
*                 the value of the TERM-CUTOVER-TC field in the PTDF !!!00219A3K
*                 equals 4.                                          !!!00219A3L
*                 In both cases, the terminal was cut over to a new  !!!00219A3M
*                 reporting day, its totals were written to the      !!!00219A3N
*                 PTLF and all BASE24 totals for the terminal were   !!!00219A3O
*                 cleared.                                           !!!00219A3P
*                                                                    !!!00219A3Q
     04 BAL-FLG                 PIC 9.                                 !00219A3R
*                                                                    !!!00219A3S
*             Reserved for future use.                               !!!00219A3T
*                                                                    !!!00219A3U
     04 USER-FLD2               PIC X.                                 !00219A3V
                                                                       !00219A3W
*                                                                    !!!00219A3X
*             The date (YYMMDD) of the transaction.  The value in    !!!00219A3Y
*             this field is set by the Device Handler or             !!!00219A3Z
*             Settlement.                                            !!!00219A40
*                                                                    !!!00219A41
     04 TRAN-DAT                TYPE DAT.                              !00219A42
*                                                                    !!!00219A43
*             The time (HHMMSS) of the transaction.  The value in    !!!00219A44
*             this field is set by the Device Handler or             !!!00219A45
*             Settlement.                                            !!!00219A46
*                                                                    !!!00219A47
     04 TRAN-TIM                PIC X(6).                              !00219A48
                                                                       !00219A49
*                                                                    !!!00219A4A
*             A flag indicating whether this balancing record has an !!!00219A4B
*             associated balancing record if a terminal is out-of-   !!!00219A4C
*             balance with BASE24-pos.  This flag is used if the     !!!00219A4D
*             value in the BAL-FLG field of this record is 5 or 6.   !!!00219A4E
*             Valid codes are:                                       !!!00219A4F
*                                                                    !!!00219A4G
*             0 = No associated record exists                        !!!00219A4H
*             1 = Associated record exists                           !!!00219A4I
*                                                                    !!!00219A4J
     04 OB-FLG                  PIC X.                                 !00219A4K
                                                                       !00219A4L
*                                                                    !!!00219A4M
*             This field is reserved for Automated Clearinghouse     !!!00219A4N
*             (ACH) information that may be required for processing  !!!00219A4O
*             transactions from this retailer. Information in this   !!!00219A4P
*             field has no impact on BASE24-pos processing.          !!!00219A4Q
*                                                                    !!!00219A4R
     04 ACH-COMP-ID             PIC X(10).                             !00219A4S
                                                                       !00219A4T
*                                                                    !!!00219A4U
*             A free-form informational field used at the discretion !!!00219A4V
*             of the institution.  Typically, this field contains ACH!!!00219A4W
*             information that BASE24-pos passes on to the host for  !!!00219A4X
*             use by the ACH system. Information in this field has no!!!00219A4Y
*             impact on BASE24-pos processing.                       !!!00219A4Z
*                                                                    !!!00219A50
     04 BILLING-INFO            PIC X(10).                             !00219A51
                                                                       !00219A52
*                                                                    !!!00219A53
*             A code indicating the type of currency used for the    !!!00219A54
*             transactions pertaining to this terminal.              !!!00219A55
*                                                                    !!!00219A56
     04 AUTH-CRNCY-CDE          TYPE CRNCY-CDE.                        !00219A57
*                                                                    !!!00219A58
*             The exchange rate of the authorizing entity.  The value!!!00219A59
*             in this field is used to compute the final settlement  !!!00219A5A
*             amount.  The first digit contains the offset of the    !!!00219A5B
*             decimal point from the right-hand side.  Unless        !!!00219A5C
*             multiple currencies are involved, the default value is !!!00219A5D
*             61000000.                                              !!!00219A5E
*                                                                    !!!00219A5F
     04 AUTH-CONV-RATE          PIC X(8).                              !00219A5G
*                                                                    !!!00219A5H
*             A code indicating the type of currency used in the     !!!00219A5I
*             settlement of the transaction.                         !!!00219A5J
*                                                                    !!!00219A5K
     04 SETL-CRNCY-CDE          TYPE CRNCY-CDE.                        !00219A5L
*                                                                    !!!00219A5M
*             The exchange rate of the settlement entity.  The value !!!00219A5N
*             in this field is used to compute the final settlement  !!!00219A5O
*             amount.  The first digit contains the offset of the    !!!00219A5P
*             decimal point from the right-hand side.  Unless        !!!00219A5Q
*             multiple currencies are used, the default value is     !!!00219A5R
*             61000000.                                              !!!00219A5S
*                                                                    !!!00219A5T
     04 SETL-CONV-RATE          PIC X(8).                              !00219A5U
                                                                       !00219A5V
END                                                                    !00219A5W
                                                                       !00219A5X
?page
?section set-rec2d
                                                                       !00219A60
                                                                       !00224
DEFINITION SET-REC2D.                                                  !00225
                                                                       !00226
*                                                                     !!00227
*             The following fields contain the total counts and       !!00228
*             amounts of debits, credits, and adjustments for draft   !!00229
*             capture and non-draft capture transactions.             !!00230
*                                                                     !!00231
     04 STL.                                                           !00232
                                                                       !00233
*                                                                     !!00234
*             The following fields contain the total counts and       !!00235
*             amounts of debits, credits, and adjustments for draft   !!00236
*             capture transactions.                                   !!00237
*                                                                     !!00238
        06 DC-TOT.                                                     !00239
*                                                                     !!00240
*             The number of draft capture debit transactions.         !!00241
*                                                                     !!00242
           08 DB-CNT              PIC X(5).                            !00243
*                                                                     !!00244
*             The total amount, in whole and fractional currency      !!00245
*             units (e.g., dollars and cents), of all draft capture   !!00246
*             debit transactions.                                     !!00247
*                                                                     !!00248
           08 DB                  PIC X(19).                           !00249
*                                                                     !!00250
*             The number of draft capture credit transactions.        !!00251
*                                                                     !!00252
           08 CR-CNT              PIC X(5).                            !00253
*                                                                     !!00254
*             The total amount, in whole and fractional currency      !!00255
*             units (e.g., dollars and cents), of all draft capture   !!00256
*             credit transactions.                                    !!00257
*                                                                     !!00258
           08 CR                  PIC X(19).                           !00259
*                                                                     !!00260
*             The number of draft capture adjustment transactions.    !!00261
*                                                                     !!00262
           08 ADJ-CNT             PIC X(5).                            !00263
*                                                                     !!00264
*             The total amount, in whole and fractional currency      !!00265
*             units (e.g., dollars and cents), of all draft capture   !!00266
*             adjustment transactions.                                !!00267
*                                                                     !!00268
           08 ADJ                 PIC X(19).                           !00269
                                                                       !00270
        06 TOT.                                                        !00271
*                                                                     !!00272
*             The number of draft capture and non-draft capture debit !!00273
*             transactions.                                           !!00274
*                                                                     !!00275
           08 DB-CNT              PIC X(5).                            !00276
*                                                                     !!00277
*             The total amount, in whole and fractional currency      !!00278
*             units (e.g., dollars and cents), of all draft capture   !!00279
*             and non-draft capture debit transactions.               !!00280
*                                                                     !!00281
           08 DB                  PIC X(19).                           !00282
*                                                                     !!00283
*             The number of draft capture and non-draft capture       !!00284
*             credit transactions.                                    !!00285
*                                                                     !!00286
           08 CR-CNT              PIC X(5).                            !00287
*                                                                     !!00288
*             The total amount, in whole and fractional currency      !!00289
*             units (e.g., dollars and cents), of all draft capture   !!00290
*             and non-draft capture credit transactions.              !!00291
*                                                                     !!00292
           08 CR                  PIC X(19).                           !00293
*                                                                     !!00294
*             The number of draft capture and non-draft capture       !!00295
*             adjustment transactions.                                !!00296
*                                                                     !!00297
           08 ADJ-CNT             PIC X(5).                            !00298
*                                                                     !!00299
*             The total amount, in whole and fractional currency      !!00300
*             units (e.g., dollars and cents), of all draft capture   !!00301
*             and non-draft capture adjustment transactions.          !!00302
*                                                                     !!00303
           08 ADJ                 PIC X(19).                           !00304
                                                                       !00305
        06 CN-DC-TOT.                                                  !00306
*                                                                     !!00307
*             The number of debit draft capture transactions that     !!00308
*             have occurred since terminal cutover.                   !!00309
*                                                                     !!00310
           08 DB-CNT              PIC X(5).                            !00311
*                                                                     !!00312
*             The total amount, in whole and fractional currency      !!00313
*             units (e.g., dollars and cents), of all debit draft     !!00314
*             capture transactions that have occurred at the terminal !!00315
*             since terminal cutover.                                 !!00316
*                                                                     !!00317
           08 DB                  PIC X(19).                           !00318
*                                                                     !!00319
*             The number of credit draft capture transactions that    !!00320
*             have occurred since terminal cutover.                   !!00321
*                                                                     !!00322
           08 CR-CNT              PIC X(5).                            !00323
*                                                                     !!00324
*             The total amount, in whole and fractional currency      !!00325
*             units (e.g., dollars and cents), of all credit draft    !!00326
*             capture transactions that have occurred at the terminal !!00327
*             since terminal cutover.                                 !!00328
*                                                                     !!00329
           08 CR                  PIC X(19).                           !00330
*                                                                     !!00331
*             The number of adjustment draft capture transactions     !!00332
*             that have occurred since terminal cutover.              !!00333
*                                                                     !!00334
           08 ADJ-CNT             PIC X(5).                            !00335
*                                                                     !!00336
*             The total amount, in whole and fractional currency      !!00337
*             units (e.g., dollars and cents), of all adjustment      !!00338
*             draft capture transactions that have occurred at the    !!00339
*             terminal since terminal cutover.                        !!00340
*                                                                     !!00341
           08 ADJ                 PIC X(19).                           !00342
                                                                       !00343
        06 CN-TOT.                                                     !00344
*                                                                     !!00345
*             The number of debit draft capture and non-draft capture !!00346
*             transactions that have occurred since terminal cutover. !!00347
*                                                                     !!00348
           08 DB-CNT              PIC X(5).                            !00349
*                                                                     !!00350
*             The total amount, in whole and fractional currency      !!00351
*             units (e.g., dollars and cents), of all debit draft     !!00352
*             capture and non-draft capture transactions that have    !!00353
*             occurred at the terminal since terminal cutover.        !!00354
*                                                                     !!00355
           08 DB                  PIC X(19).                           !00356
*                                                                     !!00357
*             The number of credit draft capture and non-draft        !!00358
*             capture transactions that have occurred since terminal  !!00359
*             cutover.                                                !!00360
*                                                                     !!00361
           08 CR-CNT              PIC X(5).                            !00362
*                                                                     !!00363
*             The total amount, in whole and fractional currency      !!00364
*             units (e.g., dollars and cents), of all credit draft    !!00365
*             capture and non-draft capture transactions that have    !!00366
*             occurred at the terminal since terminal cutover.        !!00367
*                                                                     !!00368
           08 CR                  PIC X(19).                           !00369
*                                                                     !!00370
*             The number of adjustment draft capture and non-draft    !!00371
*             capture transactions that have occurred since terminal  !!00372
*             cutover.                                                !!00373
*                                                                     !!00374
           08 ADJ-CNT             PIC X(5).                            !00375
*                                                                     !!00376
*             The total amount, in whole and fractional currency      !!00377
*             units (e.g., dollars and cents), of all adjustment      !!00378
*             draft capture and non-draft capture transactions that   !!00379
*             have occurred at the terminal since terminal cutover.   !!00380
*                                                                     !!00381
           08 ADJ                 PIC X(19).                           !00382
END                                                                    !00383
                                                                       !00384
?page
?section set-rec3d
                                                                       !00389
DEFINITION SET-REC3D.                                                  !00390
                                                                       !00391
*                                                                     !!00392
*             The total number of services supported by this          !!00393
*             terminal, as defined in the NUM-SRV field of the PTDF.  !!00394
*             If more than 17 services are being used, the First      !!00395
*             Services record contains only the first 17 services.    !!00396
*             All subsequent services (the last 13) are contained in  !!00397
*             the Second Services record.  For example, if 27         !!00398
*             services are being used, the value in this field is 27. !!00399
*             The first 17 services are contained in the SET-REC3D    !!00400
*             field of the First Services record and the last 10      !!00401
*             services are contained in the SET-REC4D field of the    !!00402
*             Second Services record.                                 !!00403
*                                                                     !!00404
     04 NUM-SRV                   PIC X(5).                            !00405
*                                                                     !!00406
*             The following fields identify the first 17 services     !!00407
*             being used.                                             !!00408
*                                                                     !!00409
     04 SRV                       OCCURS 17 TIMES.                     !00410
*                                                                     !!00411
*             A code identifying each of the service types associated !!00412
*             with the First Services record.                         !!00413
*                                                                     !!00414
*             One- or two-character codes are used to identify card   !!00415
*             types in files throughout BASE24.  The same codes must  !!00416
*             be used for a particular card type in all of the files. !!00417
*             These codes are also used to identify service types in  !!00418
*             BASE24-pos.  Codes used in this field are either        !!00419
*             reserved by BASE24 or user-defined. Reserved codes are  !!00420
*             to be used only as defined, and include:                !!00421
*                                                                     !!00422
*             AD = Administrative (BASE24-atm only)                   !!00423
*             AX = American Express credit                            !!00424
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00425
*                  only)                                              !!00426
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00427
*                  CC-CZ)                                             !!00428
*             CB = Carte Blanche credit                               !!00429
*             D  = Demonstration (BASE24-atm only)                    !!00430
*             DC = Diners Club credit                                 !!00431
*             DS = Discover (Sears) credit                            !!00432
*             M  = MasterCard credit                                  !!00433
*             MD = MasterCard debit (See BASE24-pos note below)       !!00434
*             MM = MasterCard dual (See BASE24-pos note below)        !!00435
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00436
*             SC = Special, Check (BASE24-pos only)                   !!00437
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00438
*                  Check Application only)                            !!00439
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00440
*                  Application only)                                  !!00441
*             V  = VISA credit                                        !!00442
*             VD = VISA debit (See BASE24-pos note below)             !!00443
*             VV = VISA dual (See BASE24-pos note below)              !!00444
*                                                                     !!00445
*             Codes with a first character of C, except code CB, are  !!00446
*             recommended to identify private label credit cards.     !!00447
*                                                                     !!00448
*             Codes with a first character of P are required to       !!00449
*             identify proprietary debit cards.  BASE24 treats cards  !!00450
*             with proprietary debit codes and codes MD and VD as     !!00451
*             debit cards and treats cards with all other codes as    !!00452
*             credit cards.                                           !!00453
*                                                                     !!00454
*             Administrative (AD), Business deposit (BD),             !!00455
*             Demonstration (D), Special purpose (SP), and Super      !!00456
*             teller (ST) are special-use card types used by          !!00457
*             BASE24-atm.                                             !!00458
*                                                                     !!00459
*             Business deposit (BD) is also a special-use card type   !!00460
*             used by BASE24-teller to identify cards that can only   !!00461
*             be used to initiate deposit transactions.               !!00462
*             BASE24-teller does not perform any other processing     !!00463
*             based on card type; however, BASE24 guidelines should   !!00464
*             still be used when establishing card types for          !!00465
*             BASE24-teller.                                          !!00466
*                                                                     !!00467
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00468
*             processed as debit or credit card types, based on the   !!00469
*             default combo card type specified in the CPF.           !!00470
*                                                                     !!00471
*             Special, Check (SC) is a special-use card type used to  !!00472
*             initiate BASE24-pos check guarantee and check           !!00473
*             verification transactions only.                         !!00474
*                                                                     !!00475
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00476
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00477
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00478
*             BASE24-pos automatically includes the MD and MM card    !!00479
*             types with the MasterCard credit (M) card type, and     !!00480
*             automatically includes the VD and VV card types with    !!00481
*             the VISA credit (V) card type.                          !!00482
*                                                                     !!00483
*             User-defined Codes:  The user can add any one- or two-  !!00484
*             character code not included in the reserved code list   !!00485
*             above, according to the following guidelines:           !!00486
*                                                                     !!00487
*             o  The first character must be alphabetic (A, B, D-O,   !!00488
*                and Q-Z).                                            !!00489
*                                                                     !!00490
*             o  The second character can be A-Z, 0-9, or a blank.    !!00491
*                                                                     !!00492
*             o  A valid COBNAMES table entry is recommended for each !!00493
*                user-defined code.                                   !!00494
*                                                                     !!00495
        06 TYP                    PIC XX.                              !00496
*                                                                     !!00497
*             The total number of debit transactions for the service  !!00498
*             during the current batch.                               !!00499
*                                                                     !!00500
        06 DB-CNT                 PIC X(5).                            !00501
*                                                                     !!00502
*             The total amount, in whole and fractional currency      !!00503
*             units (e.g., dollars and cents), for debit transactions !!00504
*             for the service during the current batch.               !!00505
*                                                                     !!00506
        06 DB                     PIC X(19).                           !00507
*                                                                     !!00508
*             The total number of credit transactions for the service !!00509
*             during the current batch.                               !!00510
*                                                                     !!00511
        06 CR-CNT                 PIC X(5).                            !00512
*                                                                     !!00513
*             The total amount, in whole and fractional currency      !!00514
*             units (e.g., dollars and cents), for credit             !!00515
*             transactions for the service during the current batch.  !!00516
*                                                                     !!00517
        06 CR                     PIC X(19).                           !00518
*                                                                     !!00519
*             The total number of adjustment transactions for the     !!00520
*             service during the current batch.                       !!00521
*                                                                     !!00522
        06 ADJ-CNT                PIC X(5).                            !00523
*                                                                     !!00524
*             The total amount, in whole and fractional currency      !!00525
*             units (e.g., dollars and cents), for adjustment         !!00526
*             transactions for the service during the current batch.  !!00527
*                                                                     !!00528
        06 ADJ                    PIC X(19).                           !00529
                                                                       !00530
END                                                                    !00531
                                                                       !00532
                                                                       !00533
?page
?section set-rec4d
                                                                       !00538
DEFINITION SET-REC4D.                                                  !00539
                                                                       !00540
*                                                                     !!00541
*             The following fields identify the last 13 services      !!00542
*             being used.                                             !!00543
*                                                                     !!00544
     04 SRV                       OCCURS 13 TIMES.                     !00545
*                                                                     !!00546
*             A code identifying each of the service types associated !!00547
*             with the Second Services record.                        !!00548
*                                                                     !!00549
*             One- or two-character codes are used to identify card   !!00550
*             types in files throughout BASE24.  The same codes must  !!00551
*             be used for a particular card type in all of the files. !!00552
*             These codes are also used to identify service types in  !!00553
*             BASE24-pos.  Codes used in this field are either        !!00554
*             reserved by BASE24 or user-defined. Reserved codes are  !!00555
*             to be used only as defined, and include:                !!00556
*                                                                     !!00557
*             AD = Administrative (BASE24-atm only)                   !!00558
*             AX = American Express credit                            !!00559
*             BD = Business deposit (BASE24-atm and BASE24-teller     !!00560
*                  only)                                              !!00561
*             C* = Private label credit (includes C, C0-C9, CA, and   !!00562
*                  CC-CZ)                                             !!00563
*             CB = Carte Blanche credit                               !!00564
*             D  = Demonstration (BASE24-atm only)                    !!00565
*             DC = Diners Club credit                                 !!00566
*             DS = Discover (Sears) credit                            !!00567
*             M  = MasterCard credit                                  !!00568
*             MD = MasterCard debit (See BASE24-pos note below)       !!00569
*             MM = MasterCard dual (See BASE24-pos note below)        !!00570
*             P* = Proprietary debit (includes P, P0-P9, and PA-PZ)   !!00571
*             SC = Special, Check (BASE24-pos only)                   !!00572
*             SP = Special purpose (BASE24-atm Self-Service Banking   !!00573
*                  Check Application only)                            !!00574
*             ST = Super teller (BASE24-atm Self-Service Banking Base !!00575
*                  Application only)                                  !!00576
*             V  = VISA credit                                        !!00577
*             VD = VISA debit (See BASE24-pos note below)             !!00578
*             VV = VISA dual (See BASE24-pos note below)              !!00579
*                                                                     !!00580
*             Codes with a first character of C, except code CB, are  !!00581
*             recommended to identify private label credit cards.     !!00582
*                                                                     !!00583
*             Codes with a first character of P are required to       !!00584
*             identify proprietary debit cards.  BASE24 treats cards  !!00585
*             with proprietary debit codes and codes MD and VD as     !!00586
*             debit cards and treats cards with all other codes as    !!00587
*             credit cards.                                           !!00588
*                                                                     !!00589
*             Administrative (AD), Business deposit (BD),             !!00590
*             Demonstration (D), Special purpose (SP), and Super      !!00591
*             teller (ST) are special-use card types used by          !!00592
*             BASE24-atm.                                             !!00593
*                                                                     !!00594
*             Business deposit (BD) is also a special-use card type   !!00595
*             used by BASE24-teller to identify cards that can only   !!00596
*             be used to initiate deposit transactions.               !!00597
*             BASE24-teller does not perform any other processing     !!00598
*             based on card type; however, BASE24 guidelines should   !!00599
*             still be used when establishing card types for          !!00600
*             BASE24-teller.                                          !!00601
*                                                                     !!00602
*             MasterCard dual (MM) and VISA dual (VV) can be          !!00603
*             processed as debit or credit card types, based on the   !!00604
*             default combo card type specified in the CPF.           !!00605
*                                                                     !!00606
*             Special, Check (SC) is a special-use card type used to  !!00607
*             initiate BASE24-pos check guarantee and check           !!00608
*             verification transactions only.                         !!00609
*                                                                     !!00610
*             BASE24-pos NOTE:  BASE24-pos does not allow MasterCard  !!00611
*             debit (MD), MasterCard dual (MM), VISA debit (VD), or   !!00612
*             VISA dual (VV) card types in the PRDF and PTDF.         !!00613
*             BASE24-pos automatically includes the MD and MM card    !!00614
*             types with the MasterCard credit (M) card type, and     !!00615
*             automatically includes the VD and VV card types with    !!00616
*             the VISA credit (V) card type.                          !!00617
*                                                                     !!00618
*             User-defined Codes:  The user can add any one- or two-  !!00619
*             character code not included in the reserved code list   !!00620
*             above, according to the following guidelines:           !!00621
*                                                                     !!00622
*             o  The first character must be alphabetic (A, B, D-O,   !!00623
*                and Q-Z).                                            !!00624
*                                                                     !!00625
*             o  The second character can be A-Z, 0-9, or a blank.    !!00626
*                                                                     !!00627
*             o  A valid COBNAMES table entry is recommended for each !!00628
*                user-defined code.                                   !!00629
*                                                                     !!00630
        06 TYP                    PIC XX.                              !00631
*                                                                     !!00632
*             The total number of debit transactions for the service  !!00633
*             during the current batch.                               !!00634
*                                                                     !!00635
        06 DB-CNT                 PIC X(5).                            !00636
*                                                                     !!00637
*             The total amount, in whole and fractional currency      !!00638
*             units (e.g., dollars and cents), for debit transactions !!00639
*             for the service during the current batch.               !!00640
*                                                                     !!00641
        06 DB                     PIC X(19).                           !00642
*                                                                     !!00643
*             The total number of credit transactions for the service !!00644
*             during the current batch.                               !!00645
*                                                                     !!00646
        06 CR-CNT                 PIC X(5).                            !00647
*                                                                     !!00648
*             The total amount, in whole and fractional currency      !!00649
*             units (e.g., dollars and cents), for credit             !!00650
*             transactions for the service during the current batch.  !!00651
*                                                                     !!00652
        06 CR                     PIC X(19).                           !00653
*                                                                     !!00654
*             The total number of adjustment transactions for the     !!00655
*             service during the current batch.                       !!00656
*                                                                     !!00657
        06 ADJ-CNT                PIC X(5).                            !00658
*                                                                     !!00659
*             The total amount, in whole and fractional currency      !!00660
*             units (e.g., dollars and cents), for adjustment         !!00661
*             transactions for the service during the current batch.  !!00662
*                                                                     !!00663
        06 ADJ                    PIC X(19).                           !00664
                                                                       !00665
END                                                                    !00666
                                                                       !00667
?page
?section set-rec5d
                                                                       !00672
DEFINITION SET-REC5D.                                                  !00673
*                                                                     !!00674
*             The total number of debit transactions occurring        !!00675
*             under the operator's logon since the last batch         !!00676
*             close transaction.                                      !!00677
*                                                                     !!00678
     04 DB-CNT                 PIC X(5).                               !00679
*                                                                     !!00680
*             The total amount, in whole and fractional currency      !!00681
*             units (e.g., dollars and cents), for debit              !!00682
*             transactions occurring under the operator's logon       !!00683
*             since the last batch close transaction.                 !!00684
*                                                                     !!00685
     04 DB-AMT                 PIC X(19).                              !00686
*                                                                     !!00687
*             The total number of credit transactions occurring       !!00688
*             under the operator's logon since the last batch         !!00689
*             close transaction.                                      !!00690
*                                                                     !!00691
     04 CR-CNT                 PIC X(5).                               !00692
*                                                                     !!00693
*             The total amount, in whole and fractional currency      !!00694
*             units (e.g., dollars and cents), for credit             !!00695
*             transactions occurring under the operator's logon       !!00696
*             since the last batch close transaction.                 !!00697
*                                                                     !!00698
     04 CR-AMT                 PIC X(19).                              !00699
*                                                                     !!00700
*             The total number of adjustment transactions             !!00701
*             occurring under the operator's logon since the last     !!00702
*             batch close transaction.                                !!00703
*                                                                     !!00704
     04 ADJ-CNT                PIC X(5).                               !00705
*                                                                     !!00706
*             The total amount, in whole and fractional currency      !!00707
*             units (e.g., dollars and cents), for adjustment         !!00708
*             transactions occurring under the operator's logon       !!00709
*             since the last batch close transaction.                 !!00710
*                                                                     !!00711
     04 ADJ-AMT                PIC X(19).                              !00712
*                                                                     !!00713
*             The total number of cash back transactions              !!00714
*             occurring under the operator's logon since the last     !!00715
*             batch close transaction.                                !!00716
*                                                                     !!00717
     04 CASH-CNT               PIC X(5).                               !00718
*                                                                     !!00719
*             The total amount, in whole and fractional currency      !!00720
*             units (e.g., dollars and cents), for cash back          !!00721
*             transactions occurring under the operator's logon       !!00722
*             since the last batch close transaction.                 !!00723
*                                                                     !!00724
     04 CASH-AMT               PIC X(19).                              !00725
*                                                                     !!00726
*             The total number of check transactions occurring        !!00727
*             under the operator's logon since the last               !!00728
*             batch close transaction.                                !!00729
*                                                                     !!00730
     04 CHK-CNT                PIC X(5).                               !00731
*                                                                     !!00732
*             The total amount, in whole and fractional currency      !!00733
*             units (e.g., dollars and cents), for check              !!00734
*             transactions occurring under the operator's logon       !!00735
*             since the last batch close transaction.                 !!00736
*                                                                     !!00737
     04 CHK-AMT                PIC X(19).                              !00738
END                                                                    !00739
                                                                       !00740
?page
?section set-rec6d
                                                                       !00740B02
DEFINITION SET-REC6D.                                                  !00740B03
*                                                                      !00740B04
*             The type of reconciliation/settlement totals generated   !00740B05
*             for this Passthru entity is indicated by the following   !00740B06
*             indicator, with possible values as follows:              !00740B07
*               "1" - DPC settlement record                            !00740B08
*               "2" - Retailer settlement                              !00740B09
*               "3" - Terminal settlement                              !00740B0A
*               "4" - Retailer Group settlement                        !00740B0B
*               "5" - Clerk ID settlement                              !00740B0C
*                                                                      !00740B0D
     04 TOTALS-TYP                  PIC X(1).                          !00740B0E
*                                                                      !00740B0F
*             The following info indicates the reconciliation          !00740B0G
*             identifier for this transaction                          !00740B0H
*                                                                      !00740B0I
     04 SETL-ID                     PIC X(25).                         !00740B0J
*                                                                      !00740B0K
*             The card type for which this settlement record is        !00740B0L
*             generated.                                               !00740B0M
*                                                                      !00740B0N
     04 CARD-TYP                    PIC X(2).                          !00740B0O
*                                                                      !00740B0P
     04 DC-TOT.                                                        !00740B0Q
        06 DB-CNT                   PIC X(7).                          !00740B0R
        06 DB                       PIC X(19).                         !00740B0S
        06 CR-CNT                   PIC X(7).                          !00740B0T
        06 CR                       PIC X(19).                         !00740B0U
        06 ADJ-CNT                  PIC X(7).                          !00740B0V
        06 ADJ                      PIC X(19).                         !00740B0W
*                                                                      !00740B0X
     04 TOT.                                                           !00740B0Y
        06 DB-CNT                   PIC X(7).                          !00740B0Z
        06 DB                       PIC X(19).                         !00740B0a
        06 CR-CNT                   PIC X(7).                          !00740B0b
        06 CR                       PIC X(19).                         !00740B0c
        06 ADJ-CNT                  PIC X(7).                          !00740B0d
        06 ADJ                      PIC X(19).                         !00740B0e
     04 FILLER                      PIC X(104).                        !00740B0f
*                                                                      !00740B0g
END                                                                    !00740B0h
                                                                       !00740B0i
?page
?section set-rec7d
                                                                       !00740B0n
DEFINITION SET-REC7D.                                                  !00740B0o
*                                                                      !00740B0p
*             The type of reconciliation/settlement totals generated   !00740B0q
*             for Passthru entity is indicated by the following        !00740B0r
*             indicator, with possible values as follows:              !00740B0s
*               "1" - DPC settlement record                            !00740B0t
*               "2" - Retailer settlement                              !00740B0u
*               "3" - Terminal settlement                              !00740B0v
*               "4" - Retailer Group settlement                        !00740B0w
*               "5" - Clerk ID settlement                              !00740B0x
*                                                                      !00740B0y
     04 TOTALS-TYP                  PIC X(1).                          !00740B0z
*                                                                      !00740B10
*             The following info indicates the reconciliation          !00740B11
*             identifier for this transaction                          !00740B12
*                                                                      !00740B13
     04 SETL-ID                     PIC X(25).                         !00740B14
*                                                                      !00740B15
*             The number of services contained for this settlement     !00740B16
*             enitity - up to 13 per record allows for up to three     !00740B17
*             of Passthru services settlement records.  The other one  !00740B18
*             or two records will contain zeroes in this field to      !00740B19
*             indicate continuation of a previous list.                !00740B1A
*                                                                      !00740B1B
     04 NUM-SRV                     PIC 9(2).                          !00740B1C
*                                                                      !00740B1D
     04 SRV                         OCCURS 13 TIMES.                   !00740B1E
*                                                                      !00740B1F
*             The type of card (two character mnemonic)                !00740B1G
*                                                                      !00740B1H
        06 TYP                      PIC X(2).                          !00740B1I
*                                                                      !00740B1J
*             The following totals contain count and amount of debits, !00740B1K
*             credits and adjustments for the draft capture totals.    !00740B1L
*                                                                      !00740B1M
        06 DB-CNT                   PIC X(7).                          !00740B1N
        06 DB                       PIC X(19).                         !00740B1O
        06 CR-CNT                   PIC X(7).                          !00740B1P
        06 CR                       PIC X(19).                         !00740B1Q
        06 ADJ-CNT                  PIC X(7).                          !00740B1R
        06 ADJ                      PIC X(19).                         !00740B1S
*                                                                      !00740B1T
     04 FILLER                      PIC X(195).                        !00740B1U
*                                                                      !00740B1V
END                                                                    !00740B1W
?page
?section user-data-d
                                                                       !00740B1b
                                                                       !00745
DEFINITION USER-DATA-D.                                                !00746
                                                                       !00747
*                                                                     !!00748
*             User data information loaded from the PSTM for the      !!00749
*             transaction.  The user data area is used by the         !!00750
*             originator of the PSTM.                                 !!00751
*                                                                     !!00752
  02 LEN                          PIC X(4).                            !00753
  02 INFO                         PIC X(200).                          !00754
                                                                       !00755
END                                                                    !00756
                                                                       !00757
                                                                       !00758
?PAGE "SET-REC1"
?SECTION SET-REC1
                                                                       !00763
  DEFINITION                    SET-REC-1.                             !00764
                                                                       !00765
  02 SET-REC-1                  TYPE SET-REC1.                         !00766
                                                                       !00767
END                                                                    !00768
                                                                       !00769
?PAGE "SET-REC-1D"
?SECTION SET-REC-1D
                                                                       !00774
  DEFINITION                    SET-REC-1D.                            !00775
                                                                       !00776
  02 SET-REC-1D                 TYPE SET-REC1D.                        !00777
                                                                       !00778
END                                                                    !00779
                                                                       !00780
                                                                       !00781
                                                                       !00781A00
?PAGE "SET-REC-1P"
?SECTION SET-REC-1P
                                                                       !00781A05
  DEFINITION                    SET-REC-1P.                            !00781A06
  02 SET-REC-1P                 TYPE SET-REC1P.                        !00781A07
END                                                                    !00781A08
?nocomments
?PAGE "PTLFX - POS Transaction Log File Extract"
?SECTION PTLFX
                                                                       !00781A0F
*#################################################################### !!00788
*#                POS 3.4 DDLs - History Section                    # !!00789
*#################################################################### !!00790
*#                                                                  # !!00791
                                                                       !00792
*# 27JUN89  Julie Samson                                            # !!00793
*# SYMPTOM: (E) Enhancement for CRT Authorization                   # !!00794
*# PROBLEM: None                                                    # !!00795
*# FIX:     Added OVRRDE-FLG   PIC X                                # !!00796
*#          Changed USER-FLD5 from PIC X(828) to PIC X(827)         # !!00797
*# IMPLEMENTATION: Recompile DDLs; Impacts PTLF Extract             # !!00798
*# REFERENCE: RPE #880711-01                                        # !!00799
                                                                       !00800
*#                                                                  # !!00801
************************************************************************
* 26FEB90  JMC                                                         *
* SYMPTOM: VISANET POS Address Verification Enhancements               *
*          VISANET has mandated issuer compliance of Address           *
*          Verification by April 30, 1990.  Address Verification is    *
*          designed to reduce chargeback losses, chargeback processing *
*          expenses and fraud for mail/phone order transactions in the *
*          direct marketing retailer segment.                          *
* PROBLEM (E) : None.                                                  *
* FIX:     Defined 30 bytes of USER-FLD5 to be used for address        *
*          verification:  ADDR, ZIP-CDE, ADDR-VRFY-STAT.               *
* IMPLEMENTATION DEPENDENCIES:  Apply fix to DDL'S and compile.        *
*          Apply fix to Extract and compile.                           *
*  REFERENCE: RPE E890525-1                                            *
*                                                                      *
**********************************************************************!!00832
*                        RELEASE 5.0                                 *!!00833
**********************************************************************!!00834
*    1/4/93     Release 5.0 design team                               !!00835
*    SYMPTOM:   Release 5.0 enhancements.                             !!00836
*    PROBLEM:   (E) None.                                             !!00837
*    FIX:    1. Added new definition for clerk totals:  SET-REC5D.    !!00838
*               Also, added redefine of AUTH:  CLERK-TOT.             !!00839
*            2. Added TERM-TIM-OFST (PIC X(5)) to SET-REC1D.          !!00840
*               Increased USER-FLD5 from PIC X(797) to PIC X(802).    !!00841
*            3. Increased TERM-ST from PIC X(2) to PIC X(3).          !!00842
*               Increased USER-FLD2 from PIC X(2) to PIC X(3).        !!00843
*               Decreased USER-FLD5 from PIC X(802) to PIC X(800).    !!00844
*            4. Added PIN-IND (PIC X) and PIN-TRIES (PIC X).          !!00845
*               Decreased USER-FLD5 from PIC X(800) to PIC X(798).    !!00846
*            5. Created record definitions for the EXTR-POSITIONS,    !!00847
*               SET-REC, SRVCS-1, SRVCS-2 and CLERK-TOT redefines.    !!00848
*               By making each of the given structures into its own   !!00849
*               record definition, the wasted USER-FLD space that     !!00850
*               exists in the redefines could be reduced.  The        !!00851
*               USER-FLD5 was reduced from 798 bytes to 33 bytes.     !!00852
*            6. Added PRE-AUTH-TS ( 16 bytes ).                       !!00853
*               Added PRE-AUTH-HLDS-LVL ( 1 byte ).                   !!00854
*            7. Redefined HEADX USER-FLD1 to DATA-FLAG.               !!00855
*            8. Changed the ACCT and CRD-NUM fields from 28 to 19     !!00856
*               bytes.                                                !!00857
*            8. Changed the LEN field in the USER-DATA-D structure    !!00858
*               from 5 bytes to 4 bytes in length.                    !!00859
*    DEPENDENCIES:  Recompile the DDLS and the processes that use the !!00860
*                   PTLFX.  Refer to the Release 5.0 Installation     !!00861
*                   Documentation for a complete list of the          !!00862
*                   applicable modules.                               !!00863
*    REFERENCE: BASE24 Release 5.0 External Specifications            !!00864
*               BASE24-base                                           !!00865
*               - Base Perusal                                        !!00866
*               - Message Tokenization                                !!00867
*               - Super Extract Enhancements                          !!00868
*               BASE24-pos                                            !!00869
*               - Check Authorization                                 !!00870
*               - POS General Enhancements                            !!00871
*               - Pre-Authorization Enhancement                       !!00872
*                                                                     !!00873
**********************************************************************!!00874
                                                                       !00875
                                                                       !00876
!---------------------------------------------------------------------!!00877
*#                                                                  # !!00878
*#                                                                  # !!00879
*#                                                                  # !!00880
*#                                                                  # !!00881
*#                                                                  # !!00882
*#################################################################### !!00883
                                                                       !00884
*#################################################################### !!00885
*#                POS TRANSACTION LOG FILE EXTRACT                  # !!00886
*#################################################################### !!00887
                                                                       !00888
                                                                       !00889
?comments
*                                                                     !!00892
*             The POS Transaction Log File (PTLF) contains a record   !!00893
*             of each financial transaction (approved or denied)      !!00894
*             processed by BASE24-pos for a single processing day.    !!00895
*             Transactions declined by a Device Handler (for example, !!00896
*             bad format), are typically not posted to the PTLF.  It  !!00897
*             also contains settlement records for each POS terminal  !!00898
*             in the system.  This file is an audit record at the     !!00899
*             transaction level of the system's processing and is     !!00900
*             extracted daily to provide detailed transaction data    !!00901
*             for processing by a host.                               !!00902
*                                                                     !!00903
*             Records are written to the PTLF sequentially, and two   !!00904
*             PTLFs are always accessible to the system for logging:  !!00905
*             the current day's PTLF and the next day's PTLF.  Which  !!00906
*             PTLF a transaction posts to is based on the             !!00907
*             transaction's PTDF posting date.  This is derived from  !!00908
*             the current business date of the terminal at which the  !!00909
*             transaction originated.  Use of two PTLFs allows        !!00910
*             BASE24-pos terminals to be cut over at different times. !!00911
*             As terminals are cut over, transactions from those      !!00912
*             terminals begin posting to the next day's PTLF;         !!00913
*             transactions from terminals that have not been cut over !!00914
*             for the day continue to post to the current day's PTLF. !!00915
*                                                                     !!00916
*             When network settlement occurs, a new PTLF is created   !!00917
*             and the current day's PTLF is closed to the online      !!00918
*             system.  At that time, the current day's PTLF is        !!00919
*             available for reporting and extract processing.         !!00920
*                                                                     !!00921
*             LCONF ASSIGN:       POS-PTLF                            !!00922
*                                                                     !!00923
*             PTLF RECORD STRUCTURE                                   !!00924
*             There are five formats used in writing PTLF records     !!00925
*             in the ASCII-only format.                               !!00926
*             o  Financial Transaction (PTLFX)                        !!00927
*             o  Settlement Totals (PTLFX-SET-REC)                    !!00928
*             o  Clerk Totals (PTLFX-CLERK-TOT)                       !!00929
*             o  First Services (PTLFX-SRVCS-1)                       !!00930
*             o  Second Services (PTLFX-SRVCS-2)                      !!00931
*                                                                     !!00932
*             The values contained in the HEADX.REC-TYP and           !!00933
*             HEADX.TKEY.RKEY.REC-FRMT fields identify the type of    !!00934
*             information contained in the PTLFX record.  The various !!00935
*             value combinations and the resulting record format and  !!00936
*             contents include:                                       !!00937
*                                                                     !!00938
*             REC-TYP  REC-FRMT  RECORD FORMAT AND CONTENTS           !!00939
*               00         -     Initial                              !!00940
*               01         5     Financial Transaction--Customer      !!00941
*               04         0     Settlement Totals--Batch             !!00942
*               04         1     Settlement Totals--Shift             !!00943
*               04         2     Settlement Totals--Daily             !!00944
*               04         3     Settlement Totals--Network           !!00945
*               04         4     Clerk Totals                         !!00946
*               04         8     Second Services                      !!00947
*               04         9     First Services                       !!00948
*               20         5     Financial Transaction--Exception     !!00949
*                                  (posted)                           !!00950
*               21         5     Financial Transaction--Exception     !!00951
*                                  (not posted)                       !!00952
*               22         5     Financial Transaction--Exception     !!00953
*                                  (partially posted)                 !!00954
*               23         5     Financial Transaction--Exception     !!00955
*                                  (invalid data)                     !!00956
*                                                                     !!00957
                                                                       !00958
?PAGE "HEADX"
?SECTION HEADX
                                                                       !00963
DEFINITION HEADX.                                                      !00964
                                                                       !00965
*                                                                     !!00966
*             The date and time the record was logged.  The value     !!00967
*             in this field is generated via a call to Tandem's       !!00968
*             JULIANTIMESTAMP utility.                                !!00969
*                                                                     !!00970
     04 DAT-TIM                 PIC X(19).                             !00971
*                                                                     !!00972
*             A code indicating the type of record.  Authorization    !!00973
*             sets the value in this field when the record is logged. !!00974
*             Valid values are:                                       !!00975
*                                                                     !!00976
*             00 = Initial record                                     !!00977
*             01 = Customer transaction                               !!00978
*             04 = Administrative transaction                         !!00979
*             20 = Exception--posted                                  !!00980
*             21 = Exception--not posted                              !!00981
*             22 = Exception--partially posted                        !!00982
*             23 = Exception--invalid data encountered in the         !!00983
*                  POS Standard Internal Message (PSTM)               !!00984
*                                                                     !!00985
*             In situations where a transaction cannot be completely  !!00986
*             processed because of a processing error (e.g., invalid  !!00987
*             data, unable to locate an authorization record, etc),   !!00988
*             the Authorization process logs the transaction to the   !!00989
*             PTLF as an execption.  Exception transactions are       !!00990
*             included as detail items in the BASE24-pos reports but  !!00991
*             are not included in the BASE24-pos settlement totals.   !!00992
*                                                                     !!00993
     04 REC-TYP                 PIC XX.                                !00994
                                                                       !00995
*                                                                     !!00996
*             The values in the following fields describe the         !!00997
*             cardholder and card issuer for the transaction.         !!00998
*             This is an alternate key used for reporting and         !!00999
*             perusal purposes.                                       !!01000
*                                                                     !!01001
     04 CRD.                                                           !01002
*                                                                     !!01003
*             The logical network with which the institution that     !!01004
*             issued the card is associated.                          !!01005
*                                                                     !!01006
        06 LN                   TYPE *.                                !01007
*                                                                     !!01008
*             The FIID of the institution that issued the card.       !!01009
*                                                                     !!01010
        06 FIID                 TYPE *.                                !01011
*                                                                     !!01012
*             The values in the following fields identify the card    !!01013
*             used in the transaction.                                !!01014
*                                                                     !!01015
        06 CARD.                                                       !01016
*                                                                     !!01017
*             The card number identifying the card used in the        !!01018
*             transaction.                                            !!01019
*                                                                     !!01020
           08 CRD-NUM           PIC X(19).                             !01021
*                                                                     !!01022
*             The member number associated with the card used in the  !!01023
*             transaction.                                            !!01024
*                                                                     !!01025
           08 MBR-NUM           TYPE *.                                !01026
                                                                       !01027
*                                                                     !!01028
*             The values in the following fields describe the         !!01029
*             retailer involved in the transaction.  The values in    !!01030
*             these fields are used for reporting purposes.           !!01031
*                                                                     !!01032
     04 RETL.                                                          !01033
        06 KY.                                                         !01034
*                                                                     !!01035
*             The logical network with which the retailer is          !!01036
*             associated.                                             !!01037
*                                                                     !!01038
           08 LN                TYPE *.                                !01039
*                                                                     !!01040
*             The values in the following fields compose the key to   !!01041
*             the retailer's POS Retailer Definition File (PRDF)      !!01042
*             record.                                                 !!01043
*                                                                     !!01044
           08 RDFKEY.                                                  !01045
*                                                                     !!01046
*             The FIID of the institution with which the retailer is  !!01047
*             associated.                                             !!01048
*                                                                     !!01049
              10 FIID           TYPE *.                                !01050
*                                                                     !!01051
*             The group to which the retailer belongs.                !!01052
*                                                                     !!01053
              10 GRP            PIC X(4).                              !01054
*                                                                     !!01055
*             The retailer region group to which the retailer         !!01056
*             belongs.                                                !!01057
*                                                                     !!01058
              10 REGN           TYPE *.                                !01059
*                                                                     !!01060
*             The retailer ID identifying the retailer.               !!01061
*                                                                     !!01062
              10 ID             PIC X(19).                             !01063
*                                                                     !!01064
*             The terminal ID of the terminal at which the            !!01065
*             transaction occurred.                                   !!01066
*                                                                     !!01067
        06 TERM-ID              PIC X(16).                             !01068
                                                                       !01069
*                                                                     !!01070
*             The shift number with which the transaction is          !!01071
*             associated.                                             !!01072
*                                                                     !!01073
        06 SHIFT-NUM            PIC X(3).                              !01074
                                                                       !01075
*                                                                     !!01076
*             The batch number with which the transaction is          !!01077
*             associated.                                             !!01078
*                                                                     !!01079
        06 BATCH-NUM            PIC X(3).                              !01080
                                                                       !01081
*                                                                     !!01082
*             The following fields define the terminal and time at    !!01083
*             which the transaction occurred.  These fields are used  !!01084
*             as an alternate key to peruse transactions by terminal  !!01085
*             and time.                                               !!01086
*                                                                     !!01087
     04 TERM.                                                          !01088
*                                                                     !!01089
*             The logical network with which the terminal is          !!01090
*             associated.                                             !!01091
*                                                                     !!01092
        06 LN                   TYPE *.                                !01093
*                                                                     !!01094
*             The FIID of the institution with which the terminal is  !!01095
*             associated.                                             !!01096
*                                                                     !!01097
        06 FIID                 TYPE *.                                !01098
*                                                                     !!01099
*             The terminal ID of the terminal at which the            !!01100
*             transaction occurred.                                   !!01101
*                                                                     !!01102
        06 TERM-ID              PIC X(16).                             !01103
*                                                                     !!01104
*             The time the transaction occurred.                      !!01105
                                                                       !01106
        06 TIM                  TYPE *.                                !01107
*                                                                     !!01108
*             The following fields identify the terminal, retailer,   !!01109
*             and clerk associated with the transaction.  These fields!!01110
*             are used as an alternate key to peruse transactions by  !!01111
*             terminal, retailer, and clerk.                          !!01112
                                                                       !01113
     04 TKEY.                                                          !01114
*                                                                     !!01115
*             The terminal ID of the terminal at which the            !!01116
*             transaction occurred.                                   !!01117
*                                                                     !!01118
        06 TERM-ID              PIC X(16).                             !01119
                                                                       !01120
        06 RKEY.                                                       !01121
*                                                                     !!01122
*             A code indicating the type of information in this       !!01123
*             record.  Valid values are:                              !!01124
*                                                                     !!01125
*             0 = Batch Totals                                        !!01126
*             1 = Shift Totals                                        !!01127
*             2 = Day Totals                                          !!01128
*             3 = Network Totals                                      !!01129
*             4 = Clerk Totals                                        !!01130
*             5 = Data Record                                         !!01131
*             8 = Services Totals                                     !!01132
*             9 = Services Totals                                     !!01133
*                                                                     !!01134
           08 REC-FRMT          PIC X.                                 !01135
*                                                                     !!01136
*             The retailer ID identifying the retailer.               !!01137
*                                                                     !!01138
           08 RETAILER-ID       PIC X(19).                             !01139
*                                                                     !!01140
*             The clerk identification number.                        !!01141
*                                                                     !!01142
           08 CLERK-ID          PIC X(6).                              !01143
                                                                       !01144
*                                                                     !!01145
*             Indicates whether the user-data field is appended to    !!01146
*             the PTLF record.  Valid values are:                     !!01147
*             0 = No user-data appended                               !!01148
*             1 = User-data appended                                  !!01149
*                                                                     !!01150
     04 DATA-FLAG               PIC X.                                 !01151
                                                                       !01152
END                                                                    !01153
                                                                       !01154
?PAGE "AUTHX"
?SECTION AUTHX
                                                                       !01159
DEFINITION AUTHX.                                                      !01160
                                                                       !01161
*                                                                     !!01162
*             A code identifying the specific message type of this    !!01163
*             record.  Valid values are:                              !!01164
*                                                                     !!01165
*             0210 = Authorization response                           !!01166
*             0220 = Authorization advice                             !!01167
*             0412 = Chargeback response                              !!01168
*             0420 = Reversal                                         !!01169
*             0500 = Reconciliation request                           !!01170
*                                                                     !!01171
     04 TYP                     PIC 9(4).                              !01172
                                                                       !01173
*                                                                     !!01174
*             A code indicating the status of a message at the system !!01175
*             level.  Valid values are:                               !!01176
*                                                                     !!01177
*             00 = No error                                           !!01178
*             11 = Destination not available                          !!01179
*             12 = Line down                                          !!01180
*             20 = Originator not available                           !!01181
*             21 = Unknown message type                               !!01182
*             22 = Unknown card number                                !!01183
*                                                                     !!01184
     04 RTE-STAT                PIC 99.                                !01185
                                                                       !01186
*                                                                     !!01187
*             Indicates where the transaction originated.             !!01188
*             Valid values are:                                       !!01189
*             1 = Device controlled by BASE24                         !!01190
*             2 = Device handler                                      !!01191
*             3 = Authorization process                               !!01192
*             4 = Host Interface process                              !!01193
*             5 = Host                                                !!01194
*             6 = Interchange Interface process                       !!01195
*             7 = Interchange                                         !!01196
*                                                                     !!01197
     04 ORIGINATOR              PIC X.                                 !01198
                                                                       !01199
*                                                                     !!01200
*             Indicates where the response message to this            !!01201
*             transaction originated.  Valid values are:              !!01202
*             1 = Device controlled by BASE24                         !!01203
*             2 = Device handler                                      !!01204
*             3 = Authorization process                               !!01205
*             4 = Host Interface process                              !!01206
*             5 = Host                                                !!01207
*             6 = Interchange Interface process                       !!01208
*             7 = Interchange                                         !!01209
*                                                                     !!01210
     04 RESPONDER               PIC X.                                 !01211
                                                                       !01212
*                                                                     !!01213
*             An indicator used to determine the issuer of the        !!01214
*             transaction. Valid values are:                          !!01215
*                                                                     !!01216
*             00-29 = On-us                                           !!01217
*             30-99 = Not-on-us                                       !!01218
*             *_    = All                                             !!01219
*                                                                     !!01220
     04 ISS-CDE                 PIC XX.                                !01221
                                                                       !01222
*                                                                     !!01223
*             The time at which the transaction entered into the      !!01224
*             BASE24 system.                                          !!01225
*                                                                     !!01226
     04 ENTRY-TIM               PIC X(19).                             !01227
                                                                       !01228
*                                                                     !!01229
*             The time at which the Host Interface or Interchange     !!01230
*             Interface transmitted the authorization request to the  !!01231
*             authorizing entity.                                     !!01232
*                                                                     !!01233
     04 EXIT-TIM                PIC X(19).                             !01234
                                                                       !01235
*                                                                     !!01236
*             The time at which the Host Interface or Interchange     !!01237
*             Interface received a response to its original request   !!01238
*             from the authorizing entity.                            !!01239
*                                                                     !!01240
     04 RE-ENTRY-TIM            PIC X(19).                             !01241
                                                                       !01242
*                                                                     !!01243
*             The date (YYMMDD) the transaction began.                !!01244
*                                                                     !!01245
     04 TRAN-DAT                TYPE DAT.                              !01246
                                                                       !01247
*                                                                     !!01248
*             The time (HHMMSSTT) the transaction began.              !!01249
*                                                                     !!01250
     04 TRAN-TIM                TYPE TIM.                              !01251
                                                                       !01252
*                                                                     !!01253
*             The date (YYMMDD) the transaction is to be posted by    !!01254
*             BASE24.                                                 !!01255
*                                                                     !!01256
     04 POST-DAT                TYPE DAT.                              !01257
                                                                       !01258
*                                                                     !!01259
*             The date (YYMMDD) the transaction is to be settled by   !!01260
*             the acquirer interchange, if an interchange is          !!01261
*             involved in processing this transaction. Otherwise,     !!01262
*             this field is zero-filled.                              !!01263
*                                                                     !!01264
     04 ACQ-ICHG-SETL-DAT       TYPE DAT.                              !01265
                                                                       !01266
*                                                                     !!01267
*             The date (YYMMDD) the transaction is to be settled by   !!01268
*             the issuer interchange, if an interchange is            !!01269
*             involved in processing this transaction. Otherwise,     !!01270
*             this field is zero-filled.                              !!01271
*                                                                     !!01272
     04 ISS-ICHG-SETL-DAT       TYPE DAT.                              !01273
                                                                       !01274
*                                                                     !!01275
*             The transaction sequence number generated by the        !!01276
*             terminal or the Device Handler.                         !!01277
*                                                                     !!01278
     04 SEQ-NUM                 PIC X(12).                             !01279
                                                                       !01280
*                                                                     !!01281
*             The terminal name and location as defined in the PTDF.  !!01282
*                                                                     !!01283
     04 TERM-NAME-LOC           PIC X(25).                             !01284
                                                                       !01285
*                                                                     !!01286
*             The name of the financial institution that owns the     !!01287
*             terminal, as defined in the PTDF.                       !!01288
*                                                                     !!01289
     04 TERM-OWNER-NAME         PIC X(22).                             !01290
                                                                       !01291
*                                                                     !!01292
*             The city in which the terminal is located.              !!01293
*                                                                     !!01294
     04 TERM-CITY               PIC X(13).                             !01295
*                                                                     !!01296
*             The state in which the terminal is located.             !!01297
*                                                                     !!01298
     04 TERM-ST                 PIC X(3).                              !01299
                                                                       !01300
*                                                                     !!01301
*             A code indicating the country in which the terminal is  !!01302
*             located.                                                !!01303
*                                                                     !!01304
     04 TERM-CNTRY-CDE          PIC X(2).                              !01305
                                                                       !01306
*                                                                     !!01307
*             This field is not currently used.                       !!01308
*                                                                     !!01309
     04 BRCH-ID                 PIC X(4).                              !01310
*                                                                     !!01311
*             Reserved for future use.                                !!01312
*                                                                     !!01313
     04 USER-FLD2               PIC X(3).                              !01314
                                                                       !01315
*                                                                     !!01316
*             The time difference between the terminal and the Tandem !!01317
*             processor location.  This is the signed (+ or -) number !!01318
*             of minutes to be added to the BASE24 Tandem system time !!01319
*             in order to obtain the terminal local time.             !!01320
*                                                                     !!01321
     04 TERM-TIM-OFST           PIC X(5).                              !01322
                                                                       !01323
*                                                                     !!01324
*             The route/transit number of the terminal owner as       !!01325
*             defined in the PTDF.                                    !!01326
*                                                                     !!01327
     04 ACQ-INST-ID-NUM         TYPE ID-NUM.                           !01328
                                                                       !01329
*                                                                     !!01330
*             The route/transit number of the card issuer as defined  !!01331
*             in the Institution Definition File (IDF).               !!01332
*                                                                     !!01333
     04 RCV-INST-ID-NUM         TYPE ID-NUM.                           !01334
                                                                       !01335
*                                                                     !!01336
*             The terminal type as defined in the PTDF.               !!01337
*                                                                     !!01338
     04 TERM-TYP                PIC XX.                                !01339
                                                                       !01340
*                                                                     !!01341
*             The clerk ID, as defined in the PTDF, of the POS device !!01342
*             operator who performed the transaction.                 !!01343
*                                                                     !!01344
     04 CLERK-ID                PIC X(6).                              !01345
                                                                       !01346
*                                                                     !!01347
*             The following fields contain the PATHWAY operator group !!01348
*             and user identifications used for CRT Authorization.    !!01349
*                                                                     !!01350
    04 CRT-AUTH.                                                      !00275
*                                                                     !!01353
*             The PATHWAY operator group identification used for CRT  !!01354
*             Authorization.                                          !!01355
*                                                                     !!01356
        06 GRP                  PIC X(4).                              !01357
*                                                                     !!01358
*             The PATHWAY operator user identification used for CRT   !!01359
*             Authorization.                                          !!01360
*                                                                     !!01361
        06 USER-ID              PIC X(8).                              !01362
                                                                       !01363
*                                                                     !!01364
*             The Standard Industrial Classification (SIC) code       !!01365
*             identifying the retailer's line of business.            !!01366
*                                                                     !!01367
     04 RETL-SIC-CDE            PIC X(4).                              !01368
                                                                       !01369
*                                                                     !!01370
*             The originator of this transaction.                     !!01371
*                                                                     !!01372
     04 ORIG                    PIC X(4).                              !01373
*                                                                     !!01374
*             The destination of this transaction.                    !!01375
*                                                                     !!01376
     04 DEST                    PIC X(4).                              !01377
                                                                       !01378
*                                                                     !!01379
*             The values in the following fields identify the type of !!01380
*             transaction in TCTAAC format.                           !!01381
*                                                                     !!01382
     04 TRAN-CDE.                                                      !01383
*                                                                     !!01384
*             A code identifying the type of transaction.  Valid      !!01385
*             values are:                                             !!01386
*                                                                     !!01387
*             10 = Normal purchase                                    !!01388
*             11 = Preauthorization purchase                          !!01389
*             12 = Preauthorization purchase completion               !!01390
*             13 = Mail/phone order                                   !!01391
*             14 = Merchandise return                                 !!01392
*             15 = Cash advance                                       !!01393
*             16 = Card verification                                  !!01394
*             17 = Balance inquiry                                    !!01395
*             18 = Purchase with cash back                            !!01396
*             19 = Check verification                                 !!01397
*             20 = Check guarantee                                    !!01398
*             21 = Purchase adjustment                                !!01399
*             22 = Adjustment--merchandise return                     !!01400
*             23 = Adjustment--cash advance                           !!01401
*             24 = Adjustment--purchase with cash back                !!01402
*                                                                     !!01403
        06 TC                   PIC XX.                                !01404
*                                                                     !!01405
*             A code identifying the card type associated with the    !!01406
*             transaction.  Valid values are:                         !!01407
*                                                                     !!01408
*             0 = None                                                !!01409
*             1 = Credit card                                         !!01410
*             2 = Debit card                                          !!01411
*                                                                     !!01412
        06 T                    PIC X.                                 !01413
*                                                                     !!01414
*             A code identifying the type of account associated with  !!01415
*             the transaction.  Valid values are:                     !!01416
*                                                                     !!01417
*             00 = None                                               !!01418
*             01 = DDA                                                !!01419
*             11 = Savings                                            !!01420
*             31 = Credit                                             !!01421
*                                                                     !!01422
        06 AA                   PIC XX.                                !01423
*                                                                     !!01424
*             A code identifying the transaction category associated  !!01425
*             with the transaction.  Valid values are:                !!01426
*                                                                     !!01427
*             0   = Normal                                            !!01428
*             1   = Sales draft                                       !!01429
*             2   = Representation                                    !!01430
*             3   = Chargeback                                        !!01431
*             4   = Personal check/cash                               !!01432
*             5   = Personal check/amount of purchase                 !!01433
*             6   = Personal check/amount of purchase with cash back  !!01434
*             7   = Government check                                  !!01435
*             8   = Payroll check                                     !!01436
*             9   = Electronic check                                  !!01437
*             A-Z = Reserved for future use                           !!01438
*                                                                     !!01439
        06 C                    PIC X.                                 !01440
                                                                       !01441
*                                                                     !!01442
*             A code identifying the type of card used to initiate    !!01443
*             the transaction.                                        !!01444
*                                                                     !!01445
     04 CRD-TYP                 PIC XX.                                !01446
                                                                       !01447
*                                                                     !!01448
*             The account number of the affected account.             !!01449
*                                                                     !!01450
     04 ACCT                    PIC X(19).                             !01451
                                                                       !01452
*                                                                     !!01453
*             The response code for the transaction.  For a listing   !!01454
*             of the valid codes, refer to the "BASE24-pos            !!01455
*             Transaction Processing Manual".                         !!01456
*                                                                     !!01457
     04 RESP-CDE                PIC 999.                               !01458
                                                                       !01459
*                                                                     !!01460
*             The transaction amount requested.  For adjustment       !!01461
*             transactions, this field contains the original amount.  !!01462
*             For purchase with cash back transactions, this field    !!01463
*             contains the total amount (purchase plus cash back).    !!01464
*             The cash back amount is contained in the AUTH.AMT-2     !!01465
*             field.  For preauthorization completions, this field    !!01466
*             contains the completed amount.                          !!01467
*                                                                     !!01468
     04 AMT-1                   PIC X(19).                             !01469
                                                                       !01470
*                                                                     !!01471
*             For adjustment transactions, this field contains the    !!01472
*             new amount.  For purchase with cash back transactions,  !!01473
*             this field contains the cash back amount (the AUTH.AMT- !!01474
*             1 field contains the total amount).  For chargebacks,   !!01475
*             this field contains the replacement amount.             !!01476
*                                                                     !!01477
     04 AMT-2                   PIC X(19).                             !01478
                                                                       !01479
*                                                                     !!01480
*             The expiration date (YYMM) of the card.                 !!01481
*                                                                     !!01482
     04 EXP-DAT                 PIC X(4).                              !01483
                                                                       !01484
*                                                                     !!01485
*             The Track 2 information taken from the magnetic strip   !!01486
*             on the card or entered manually.                        !!01487
*                                                                     !!01488
     04 TRACK2                  PIC X(40).                             !01489
                                                                       !01490
*                                                                     !!01491
*             This field is currently not used.                       !!01492
*                                                                     !!01493
     04 PIN-OFST                PIC X(16).                             !01494
                                                                       !01495
*                                                                     !!01496
*             The sequence number assigned to the preauthorization    !!01497
*             transaction.                                            !!01498
*                                                                     !!01499
     04 PRE-AUTH-SEQ-NUM        PIC X(12).                             !01500
                                                                       !01501
*                                                                     !!01502
*             The transaction invoice number sent from the terminal,  !!01503
*             if used.                                                !!01504
*                                                                     !!01505
     04 INVOICE-NUM             PIC X(10).                             !01506
                                                                       !01507
*                                                                     !!01508
*             The invoice number of the original transaction sent     !!01509
*             from the terminal, if used.                             !!01510
*                                                                     !!01511
     04 ORIG-INVOICE-NUM        PIC X(10).                             !01512
                                                                       !01513
*                                                                     !!01514
*             The symbolic name of the authorizer of the transaction. !!01515
*                                                                     !!01516
     04 AUTHORIZER              PIC X(16).                             !01517
                                                                       !01518
*                                                                     !!01519
*             A code indicating if the authorizer in the previous     !!01520
*             field (if Router 1) was the primary, alternate 1,       !!01521
*             alternate 2, or if a default action was taken.  Valid   !!01522
*             values are:                                             !!01523
*                                                                     !!01524
*             0 = None                                                !!01525
*             1 = Alternate 1                                         !!01526
*             2 = Alternate 2                                         !!01527
*             4 = DFLT authorization                                  !!01528
*             9 = Default action                                      !!01529
*             F = SPROUTE primary                                     !!01530
*             f = SPROUTE alternate                                   !!01531
*             P = Primary                                             !!01532
*                                                                     !!01533
     04 AUTH-IND                PIC X.                                 !01534
                                                                       !01535
*                                                                     !!01536
*             The number of the shift to which the transaction        !!01537
*             belongs.                                                !!01538
*                                                                     !!01539
     04 SHIFT-NUM               PIC X(3).                              !01540
                                                                       !01541
*                                                                     !!01542
*             The batch sequence number for the transaction.          !!01543
*                                                                     !!01544
     04 BATCH-SEQ-NUM           PIC X(3).                              !01545
                                                                       !01546
*                                                                     !!01547
*             The approval code generated by the transaction          !!01548
*             authorizer.  This code can be generated by an           !!01549
*             interchange or host, as well as by BASE24-pos           !!01550
*             Authorization.  If BASE24 generates the code, a _B      !!01551
*             (B preceded by a space) is inserted into the last       !!01552
*             byte of this field.                                     !!01553
*                                                                     !!01554
     04 APPRV-CDE               PIC X(8).                              !01555
                                                                       !01556
*                                                                     !!01557
*             The length of the approval code that the device can     !!01558
*             handle.  The value in this field is used only if an     !!01559
*             approval code is generated by Authorization.  Valid     !!01560
*             values are 2 through 6.                                 !!01561
*                                                                     !!01562
     04 APPRV-CDE-LGTH          PIC 9.                                 !01563
                                                                       !01564
*                                                                     !!01565
*             The interchange response, if there was an interchange   !!01566
*             involved in processing this transaction. Otherwise,     !!01567
*             this field is left blank.  The value in this field is   !!01568
*             set by the Interchange Interface.                       !!01569
*                                                                     !!01570
     04 ICHG-RESP               PIC X(8).                              !01571
                                                                       !01572
*                                                                     !!01573
*             The pseudo identification associated with the terminal. !!01574
*                                                                     !!01575
     04 PSEUDO-TERM-ID          PIC X(4).                              !01576
                                                                       !01577
*                                                                     !!01578
*             The telephone number used for referral transactions.    !!01579
*                                                                     !!01580
     04 RFRL-PHONE              TYPE PHONE-NUM.                        !01581
                                                                       !01582
*                                                                     !!01583
*             A code indicating the action taken regarding the        !!01584
*             authorization and draft capture of this transaction.    !!01585
*             Valid codes are:                                        !!01586
*                                                                     !!01587
*             0 = Authorize only                                      !!01588
*             1 = Authorize and capture                               !!01589
*             2 = Authorize only and expect electronic follow-up      !!01590
*             3 = Electronic follow-up of previously authorized       !!01591
*                 transaction.  This option does not update           !!01592
*                 settlement balances.                                !!01593
*             9 = Value not found (Router was unable to match the     !!01594
*                 card type to a value in the PTDF or the PRDF.)      !!01595
*                                                                     !!01596
     04 DFT-CAPTURE-FLG         PIC 9.                                 !01597
                                                                       !01598
*                                                                     !!01599
*             Indicates how the terminal is cut over if the terminal  !!01600
*             is directly-connected to BASE24.                        !!01601
*                                                                     !!01602
     04 SETL-FLAG               PIC 9.                                 !01603
                                                                       !01604
*                                                                     !!01605
*             A code specifying the reason for reversal or adjustment !!01606
*             transactions.  Valid values are:                        !!01607
*                                                                     !!01608
*             01 = Time-out                                           !!01609
*             02 = Command reject                                     !!01610
*             03 = Destination not available                          !!01611
*             08 = Customer canceled                                  !!01612
*             10 = Hardware error                                     !!01613
*             12 = Original amount incorrect                          !!01614
*             14 = Suspicious reversal override                       !!01615
*             15 = Misdispense reversal override                      !!01616
*             16 = Duplicate transaction                              !!01617
*             17 = Reconciliation error                               !!01618
*             18 = Reserved                                           !!01619
*             19 = System error                                       !!01620
*             20 = Suspect reversal                                   !!01621
*             21 = MAC failure                                        !!01622
*             22 = KMAC sync error                                    !!01623
*             23 = Message replay error                               !!01624
*             24 = Invalid MAC                                        !!01625
*                                                                     !!01626
     04 RVRL-CDE                PIC 99.                                !01627
                                                                       !01628
*                                                                     !!01629
*             A code identifying the reason for the chargeback. Valid !!01630
*             values are:                                             !!01631
*                                                                     !!01632
*             03 = Invalid merchant                                   !!01633
*             12 = Invalid transaction                                !!01634
*             18 = Customer dispute                                   !!01635
*             59 = Suspected fraud                                    !!01636
*             63 = Security violation                                 !!01637
*             64 = Original transaction amount incorrect              !!01638
*             68 = Supporting documentation received too late         !!01639
*             93 = Transaction in violation of the law                !!01640
*             94 = Duplicate transaction                              !!01641
*             96 = System malfunction                                 !!01642
*                                                                     !!01643
     04 REA-FOR-CHRGBCK         PIC X(2).                              !01644
                                                                       !01645
*                                                                     !!01646
*             The occurrence of the chargeback.  Valid values are 1   !!01647
*             through 9.                                              !!01648
*                                                                     !!01649
     04 NUM-OF-CHRGBCK          PIC 9.                                 !01650
                                                                       !01651
*                                                                     !!01652
*             A code identifying the transaction origin.  The code    !!01653
*             indicates a special condition that exists at the time   !!01654
*             the transaction is initiated.  Valid values are:        !!01655
*                                                                     !!01656
*             00    = Normal presentment                              !!01657
*             01    = Customer not present                            !!01658
*             02    = Unattended terminal, able to retain card        !!01659
*             03    = Merchant suspicious                             !!01660
*             04    = Electronic cash register interface              !!01661
*             05    = Customer present, but card not present          !!01662
*             06    = Preauthorization request                        !!01663
*             07    = Telephone device request                        !!01664
*             08    = Mail order/telephone order                      !!01665
*             09    = Security alert                                  !!01666
*             10    = Customer identity verified                      !!01667
*             11    = Suspected fraud                                 !!01668
*             12    = Security reasons                                !!01669
*             13    = Representment of an item                        !!01670
*             14    = Public utility terminal                         !!01671
*             15    = Customer terminal (home terminal)               !!01672
*             16    = Administration terminal                         !!01673
*             17    = Returned item (chargeback)                      !!01674
*             18    = No check in envelope/all returned               !!01675
*             19    = Deposit out-of-balance/all returned             !!01676
*             20    = Payment out-of-balance/all returned             !!01677
*             21    = Manual reversal                                 !!01678
*             22    = Terminal error/counted                          !!01679
*             23    = Terminal error/not counted                      !!01680
*             24    = Deposit out-of-balance/applied contents         !!01681
*             25    = Payment out-of-balance/applied contents         !!01682
*             26    = Withdrawal had error/reversed                   !!01683
*             27    = Unattended terminal, unable to retain card      !!01684
*             28-40 = Reserved for ISO use                            !!01685
*             41-50 = Reserved for national use                       !!01686
*             51-99 = Reserved for private use                        !!01687
*                                                                     !!01688
     04 PT-SRV-COND-CDE         PIC 99.                                !01689
                                                                       !01690
*                                                                     !!01691
*             A code indicating how the Primary Account Number (PAN)  !!01692
*             is entered into the system and the PIN entry            !!01693
*             capabilities when performing POS transactions.  The     !!01694
*             valid values for PAN entry (positions 1 and 2) are:     !!01695
*                                                                     !!01696
*             00    = Unspecified                                     !!01697
*             01    = Manual                                          !!01698
*             02    = Magnetic stripe                                 !!01699
*             03    = Bar code                                        !!01700
*             04    = OCR                                             !!01701
*             05    = Integrated circuit card                         !!01702
*             06-60 = Reserved for ISO use                            !!01703
*             61-80 = Reserved for national use                       !!01704
*             81-99 = Reserved for private use                        !!01705
*                                                                     !!01706
*             The valid values for PIN entry capabilities (position 3)!!01707
*             are:                                                    !!01708
*                                                                     !!01709
*             0   = Unspecified                                       !!01710
*             1   = PIN entry capability                              !!01711
*             2   = No PIN entry capability                           !!01712
*             3-5 = Reserved for ISO use                              !!01713
*             6-7 = Reserved for national use                         !!01714
*             8-9 = Reserved for private use                          !!01715
*                                                                     !!01716
     04 PT-SRV-ENTRY-MDE        PIC 999.                               !01717
                                                                       !01718
*                                                                     !!01719
*             A code indicating if the authorizer in the AUTHORIZER   !!01720
*             field (if Router 2) was the primary, alternate 1,       !!01721
*             alternate 2, or if a default action was taken.  Valid   !!01722
*             values are:                                             !!01723
*                                                                     !!01724
*             0 = None                                                !!01725
*             1 = Alternate 1                                         !!01726
*             2 = Alternate 2                                         !!01727
*             4 = DFLT authorization                                  !!01728
*             9 = Default action                                      !!01729
*             F = SPROUTE primary                                     !!01730
*             f = SPROUTE alternate                                   !!01731
*             P = Primary                                             !!01732
*                                                                     !!01733
     04 AUTH-IND2               PIC X.                                 !01734
                                                                       !01735
*                                                                     !!01736
*             A code indicating the currency of the transaction.      !!01737
*                                                                     !!01738
     04 ORIG-CRNCY-CDE          TYPE CRNCY-CDE.                        !01739
                                                                       !01740
     04 USER-FLD4               PIC X(41).                             !01741
                                                                       !01742
*                                                                     !!01743
*             The following five fields apply only in multiple-       !!01744
*             currency systems; they are redefined as a user field in !!01745
*             single-currency systems.  Multiple-currency systems     !!01746
*             are not currently supported by BASE24.                  !!01747
*                                                                     !!01748
     04 MULT-CRNCY              REDEFINES USER-FLD4.                   !01749
                                                                       !01750
*                                                                     !!01751
*             A code indicating the type of currency used in the      !!01752
*             response from the authorizing entity.                   !!01753
*                                                                     !!01754
        06 AUTH-CRNCY-CDE       TYPE CRNCY-CDE.                        !01755
                                                                       !01756
*                                                                     !!01757
*             The exchange rate of the authorizing entity.  Used to   !!01758
*             compute the the final settlement amount.  The first     !!01759
*             digit contains the offset of the decimal point from the !!01760
*             right-hand side.  Unless multiple currencies are        !!01761
*             involved, the default value is 61000000.                !!01762
*                                                                     !!01763
        06 AUTH-CONV-RATE       PIC 9(8).                              !01764
                                                                       !01765
*                                                                     !!01766
*             A code indicating the type of currency used in the      !!01767
*             settlement of the transaction.                          !!01768
*                                                                     !!01769
        06 SETL-CRNCY-CDE       TYPE CRNCY-CDE.                        !01770
                                                                       !01771
*                                                                     !!01772
*             The exchange rate of the settlement entity.  Used to    !!01773
*             compute the final settlement amount.  The first digit   !!01774
*             contains the offset of the decimal point from the       !!01775
*             right-hand side.  Unless multiple currencies are used,  !!01776
*             the default value is 61000000.                          !!01777
*                                                                     !!01778
        06 SETL-CONV-RATE       PIC 9(8).                              !01779
                                                                       !01780
*                                                                     !!01781
*             The time and day when the exchange rate was applied     !!01782
*             between the transaction amount and the currency of      !!01783
*             the database.  The value in this field indicates when   !!01784
*             the actual conversion between the currency of the       !!01785
*             transaction and the currency of the database occurred.  !!01786
*             The value in this field is displayed in Greenwich Mean  !!01787
*             Time (GMT).                                             !!01788
*                                                                     !!01789
        06 CONV-DAT-TIM         PIC X(19).                             !01790
                                                                       !01791
*                                                                     !!01792
*             The values in the following nine fields indicate to     !!01793
*             the Refresh process when to impact the Positive Balance !!01794
*             File (PBF) and how to impact the various amount fields  !!01795
*             in the PBF, when impacting is required.                 !!01796
*                                                                     !!01797
*             A reversal transaction does not affect the codes in the !!01798
*             following nine fields.  When the value in the AUTH.TYP  !!01799
*             field identifies the transaction as a reversal, the     !!01800
*             Refresh process multiplies the values in the AUTH.AMT-1 !!01801
*             and AUTH.AMT-2 fields by negative 1 to determine how to !!01802
*             impact the various PBF amount fields.  Adding an amount !!01803
*             that has been multiplied by negative 1 has the same     !!01804
*             effect as subtracting the amount.                       !!01805
*                                                                     !!01806
     04 REFR.                                                          !01807
                                                                       !01808
*                                                                     !!01809
*             A code indicating whether this record should be         !!01810
*             considered when impacting a set of account records that !!01811
*             has been refreshed.  Valid values are:                  !!01812
*                                                                     !!01813
*             0 = Do not use the record for impacting.                !!01814
*             1 = Use the record for impacting.                       !!01815
*                                                                     !!01816
        06  IMP-IND             PIC X.                                 !01817
                                                                       !01818
*                                                                     !!01819
*             A code indicating the manner in which this record       !!01820
*             impacts the amount in the AVAIL-BAL field in the PBF    !!01821
*             account records.  Valid values are:                     !!01822
*                                                                     !!01823
*             0 = No effect on balance                                !!01824
*             1 = Add to balance                                      !!01825
*             2 = Subtract from balance                               !!01826
*                                                                     !!01827
        06  AVAIL-BAL           PIC X.                                 !01828
*                                                                     !!01829
*             A code indicating the manner in which this record       !!01830
*             impacts the amount in the AVAIL-CR field in the PBF     !!01831
*             account records.  Valid values are:                     !!01832
*                                                                     !!01833
*             0 = No effect on balance                                !!01834
*             1 = Add to balance                                      !!01835
*             2 = Subtract from balance                               !!01836
*                                                                     !!01837
        06  AVAIL-CR REDEFINES AVAIL-BAL  PIC X.                       !01838
                                                                       !01839
*                                                                     !!01840
*             A code indicating the manner in which this record       !!01841
*             impacts the amount in the LEDG-BAL field in the PBF     !!01842
*             account records.  Valid values are:                     !!01843
*                                                                     !!01844
*             0 = No effect on balance                                !!01845
*             1 = Add to balance                                      !!01846
*             2 = Subtract from balance                               !!01847
*                                                                     !!01848
        06  LEDG-BAL            PIC X.                                 !01849
*                                                                     !!01850
*             A code indicating the manner in which this record       !!01851
*             impacts the amount in the CR-LMT field in the PBF       !!01852
*             account records.  Valid values are:                     !!01853
*                                                                     !!01854
*             0 = No effect on balance                                !!01855
*             1 = Add to balance                                      !!01856
*             2 = Subtract from balance                               !!01857
*                                                                     !!01858
        06  CR-LMT REDEFINES LEDG-BAL PIC X.                           !01859
                                                                       !01860
*                                                                     !!01861
*             A code indicating the manner in which this record       !!01862
*             impacts the amount in the AMT-ON-HOLD field in the PBF  !!01863
*             account records.  Valid values are:                     !!01864
*                                                                     !!01865
*             0 = No effect on balance                                !!01866
*             1 = Add to balance                                      !!01867
*             2 = Subtract from balance                               !!01868
*                                                                     !!01869
        06  AMT-ON-HOLD         PIC X.                                 !01870
*                                                                     !!01871
*             A code indicating the manner in which this record       !!01872
*             impacts the amount in the CR-BAL field in the PBF       !!01873
*             account records.  Valid values are:                     !!01874
*                                                                     !!01875
*             0 = No effect on balance                                !!01876
*             1 = Add to balance                                      !!01877
*             2 = Subtract from balance                               !!01878
*                                                                     !!01879
        06  CR-BAL REDEFINES AMT-ON-HOLD   PIC X.                      !01880
                                                                       !01881
*                                                                     !!01882
*             A code indicating the manner in which this record       !!01883
*             impacts the amount in the TOTAL FLOAT field in the PBF  !!01884
*             account records.  Valid values are:                     !!01885
*                                                                     !!01886
*             0 = No effect on balance                                !!01887
*             1 = Add to balance                                      !!01888
*             2 = Subtract from balance                               !!01889
*                                                                     !!01890
        06  TTL-FLOAT           PIC X.                                 !01891
*                                                                     !!01892
*             A code indicating the manner in which this record       !!01893
*             impacts the amount in the CURRENT FLOAT field in the    !!01894
*             PBF account records.  Valid values are:                 !!01895
*                                                                     !!01896
*             0 = No effect on balance                                !!01897
*             1 = Add to balance                                      !!01898
*             2 = Subtract from balance                               !!01899
*                                                                     !!01900
        06  CUR-FLOAT           PIC X.                                 !01901
                                                                       !01902
*                                                                     !!01903
*             A code indicating whether adjustments impact            !!01904
*             settlement.  Valid values are:                          !!01905
*                                                                     !!01906
*             0 = Adjustments do not impact settlement.               !!01907
*             1 = Adjustments do have impact settlement.              !!01908
*                                                                     !!01909
     04 ADJ-SETL-IMPACT-FLG     PIC X.                                 !01910
                                                                       !01911
*                                                                     !!01912
*             An alphabetic indicator set by Authorization from the   !!01913
*             value a corresponding field in the IDF.  It is used by  !!01914
*             Refresh to determine when transaction impacting can be  !!01915
*             terminated.                                             !!01916
*                                                                     !!01917
*             Four different settings exist.  However, three settings !!01918
*             are used because an institution can have three separate !!01919
*             PBFs used for BASE24-pos and, therefore, three refresh  !!01920
*             schedules: one for checking accounts (PBF1), one for    !!01921
*             savings accounts (PBF2) and one for credit accounts     !!01922
*             (PBF3).                                                 !!01923
*                                                                     !!01924
     04 REFR-IND.                                                      !01925
        06  PBF1                PIC X.                                 !01926
        06  PBF2                PIC X.                                 !01927
        06  PBF3                PIC X.                                 !01928
        06  PBF4                PIC X.                                 !01929
                                                                       !01930
*                                                                     !!01931
*             The identification of the forwarding institution for    !!01932
*             full fee accounting.                                    !!01933
*                                                                     !!01934
     04 FRWD-INST-ID-NUM        TYPE ID-NUM.                           !01935
                                                                       !01936
*                                                                     !!01937
*             A code identifying the card acceptor on a 0200          !!01938
*             transaction originating from an acquirer host.  The     !!01939
*             value in this field is only used in cases where the     !!01940
*             acquirer is not the actual card acceptor.  Otherwise,   !!01941
*             this field is left blank.                               !!01942
*                                                                     !!01943
     04 CRD-ACCPT-ID-NUM        TYPE ID-NUM.                           !01944
                                                                       !01945
*                                                                     !!01946
*             A code identifying the actual card issuer on a 0210     !!01947
*             response from an authorizing host, if desired.  The     !!01948
*             value in this field is only used in cases where the     !!01949
*             receiving institution is not the actual card acceptor.  !!01950
*             Otherwise, this field is left blank.                    !!01951
*                                                                     !!01952
     04 CRD-ISS-ID-NUM          TYPE ID-NUM.                           !01953
                                                                       !01954
*                                                                     !!01955
*             The original message type associated with the           !!01956
*             transaction.  The value in this field is used for       !!01957
*             adjustments, representments or reversal transactions.   !!01958
*                                                                     !!01959
     04 ORIG-MSG-TYP            PIC X(4).                              !01960
*                                                                     !!01961
*             The original time (HHMMSSTT) at which the transaction   !!01962
*             occurred.  The value in this field is used for          !!01963
*             adjustments, representments or reversal transactions.   !!01964
*                                                                     !!01965
     04 ORIG-TRAN-TIM           TYPE TIM.                              !01966
*                                                                     !!01967
*             The original date (MMDD) on which the transaction       !!01968
*             occurred.  The value in this field is used for          !!01969
*             adjustments, representments or reversal transactions.   !!01970
*                                                                     !!01971
     04 ORIG-TRAN-DAT           PIC X(4).                              !01972
*                                                                     !!01973
*             The original sequence number assigned to the            !!01974
*             transaction.  The value in this field is used for       !!01975
*             adjustments, representments or reversal transactions.   !!01976
*                                                                     !!01977
     04 ORIG-SEQ-NUM            PIC X(12).                             !01978
*                                                                     !!01979
*             The original date (MMDD) on which the transaction       !!01980
*             posted to BASE24.  The value in this field is used for  !!01981
*             adjustments, representments or reversal transactions.   !!01982
*                                                                     !!01983
     04 ORIG-B24-POST-DAT       PIC X(4).                              !01984
                                                                       !01985
*                                                                     !!01986
*             A reason code indicating why the exception flag is set. !!01987
*             The value in this field is used only for exception      !!01988
*             records.  For any other records, this field is set to   !!01989
*             blanks.                                                 !!01990
*                                                                     !!01991
     04 EXCP-RSN-CDE            PIC X(3).                              !01992
                                                                       !01993
                                                                       !01994
*                                                                     !!01995
*             A code distinguishing between normal transactions and   !!01996
*             transactions handled through CRT Authorization.  Valid  !!01997
*             values are:                                             !!01998
*                                                                     !!01999
*             0 = Normal transaction--Transaction received            !!02000
*                 from POS device without CRT Authorization           !!02001
*                 involvement.                                        !!02002
*             1 = Referral override with response sent to the CRT     !!02003
*                 Device Handler--Transaction was not authorized due  !!02004
*                 to insufficient information and has been referred   !!02005
*                 for manual authorization.                           !!02006
*             2 = Referral override with transaction sent out of CRT  !!02007
*                 Device Handler/Router/Authorization--Force-post     !!02008
*                 transaction indicating whether a transaction that   !!02009
*                 was previously referred for manual authorization    !!02010
*                 has been approved or declined.                      !!02011
*             3 = Normal CRT Authorization transaction--Transaction   !!02012
*                 received from CRT Authorization terminal instead of !!02013
*                 POS device, but no referrals were necessary.        !!02014
*                                                                     !!02015
     04 OVRRDE-FLG              PIC X.                                 !02016
                                                                       !02017
                                                                       !02018
*                                                                     !!02019
*             The cardholder billing address received with the        !!02020
*             transaction when performing address verification.  This !!02021
*             field contains zeros when the transaction contains a    !!02022
*             status code without an address or ZIP code.             !!02023
*                                                                     !!02024
     04  ADDR                   PIC X(20).                             !02025
*                                                                     !!02026
*             The cardholder billing ZIP code received with the       !!02027
*             transaction when performing address verification.  This !!02028
*             field contains zeros when the transaction contains a    !!02029
*             status code without an address or ZIP code.             !!02030
*                                                                     !!02031
     04  ZIP-CDE                PIC X(9).                              !02032
*                                                                     !!02033
*             A code identifying the result of comparing address      !!02034
*             verification information received in the transaction    !!02035
*             and address verification information contained in the   !!02036
*             processor's database.  Valid values are:                !!02037
*                                                                     !!02038
*             A   = ADDRESS--Addresses matched, but ZIP codes did not !!02039
*                   match.                                            !!02040
*             E * = ERROR--The transaction was not eligible for       !!02041
*                   address verification or an editing error occurred !!02042
*                   while attempting to process the message.          !!02043
*             N   = NO--Addresses did not match and ZIP codes did not !!02044
*                   match.                                            !!02045
*             R * = RETRY--Primary and secondary authorizers were     !!02046
*                   unavailable or declined the transaction and       !!02047
*                   address verification was not performed on         !!02048
*                   BASE24-pos.                                       !!02049
*             S * = SERVICE NOT SUPPORTED--BASE24-pos authorized the  !!02050
*                   transaction, but did not have the add-on Address  !!02051
*                   Verification module.                              !!02052
*             U * = UNAVAILABLE--Address information was not          !!02053
*                   available to the processor performing address     !!02054
*                   verification.                                     !!02055
*             W   = WHOLE ZIP--Nine-digit ZIP codes matched, but      !!02056
*                   addresses did not match.                          !!02057
*             X   = EXACT--Addresses and nine-digit ZIP codes         !!02058
*                   matched.                                          !!02059
*             Y   = YES--Addresses and five-digit ZIP codes matched.  !!02060
*             Z   = ZIP--Five-digit ZIP codes matched, but addresses  !!02061
*                   did not match.                                    !!02062
*             _ * = Address verification information was not included !!02063
*                   in this transaction (_ denotes a blank            !!02064
*                   character).                                       !!02065
*             0 * = Address verification information was included in  !!02066
*                   this transaction, but was not verified.  A        !!02067
*                   transaction to be verified by a host or           !!02068
*                   interchange carries this code.  A transaction to  !!02069
*                   be verified on BASE24-pos, but declined before    !!02070
*                   address verification could be performed also      !!02071
*                   carries this code.                                !!02072
*                                                                     !!02073
*               *  This value identifies a reason that a comparison   !!02074
*                  was not made.  Each interchange specifies the      !!02075
*                  value it uses to identify this reason.             !!02076
*                  Interchange interfaces substitute the interchange- !!02077
*                  specific value before sending the message from     !!02078
*                  BASE24-pos to the interchange.  Refer to section 1 !!02079
*                  of the "BASE24-pos Address Verification Manual"    !!02080
*                  for a listing of interchange-specific values.      !!02081
                                                                       !02081C00
*                                                                      !02081C01
*             Interchange response messages received by BASE24-pos     !02081C02
*             may contain interchange-specific values.                 !02081C03
*             BASE24 Interchange Interfaces do not change              !02081C04
*             a value received from the interchange.                   !02081C05
*             Refer to the individual interchange documentation        !02081C06
*             for details of interchange-specific values.              !02081C07
                                                                       !02081C08
                                                                       !02082C00
                                                                       !02082C01
                                                                       !02082C02
*                                                                     !!02084
     04  ADDR-VRFY-STAT         PIC X.                                 !02085
                                                                       !02086
*                                                                     !!02087
*             An indicator as to whether the PIN was present          !!02088
*             in the transaction.  Valid values are:                  !!02089
*             0 = PIN not present                                     !!02090
*             1 = PIN present                                         !!02091
*                                                                     !!02092
     04  PIN-IND                PIC 9.                                 !02093
                                                                       !02094
*                                                                     !!02095
*             The number of PIN tries.                                !!02096
*                                                                     !!02097
     04  PIN-TRIES              PIC X.                                 !02098
                                                                       !02099
*             The expiration date and time assigned to a pre-auth     !!02100
*             hold entry when it is added to the CAF, UAF or PBF.     !!02101
                                                                       !02102
     04 PRE-AUTH-TS.                                                   !02103
        06 DAT                 TYPE *.                                 !02104
        06 TIM                 TYPE *.                                 !02105
                                                                       !02106
*             A code identifying the file or files in which a         !!02107
*             pre-auth hold entry is stored.  Valid values are:       !!02108
*                                                                     !!02109
*             0 = No holds level, or not applicable                   !!02110
*             1 = Holds stored at CAF level                           !!02111
*             2 = Holds stored at PBF level                           !!02112
*             3 = Holds stored at CAF and PBF levels                  !!02113
*             4 = Holds stored at UAF level                           !!02114
                                                                       !02115
     04 PRE-AUTH-HLDS-LVL      PIC X.                                  !02116
*                                                                     !!02117
*             Reserved for future use.                                !!02118
*                                                                     !!02119
     04 USER-FLD5               PIC X(33).                             !02120
END                                                                    !02121
                                                                       !02122
                                                                       !02123
                                                                       !02124
                                                                       !02125
                                                                       !02126
?PAGE "PTLFX"
?SECTION PTLFX
                                                                       !02131
DEFINITION PTLFX.                                                      !02132
02 HEADX                 TYPE *.                                       !02133
02 AUTHX                 TYPE *.                                       !02134
02 USER-DATA-D           TYPE *.                                       !02135
END                                                                    !02136
                                                                       !02137
?PAGE "PTLFX-SET-REC"
?SECTION PTLFX-SET-REC
                                                                       !02142
DEFINITION PTLFX-SET-REC.                                              !02143
02 HEADX                 TYPE *.                                       !02144
  02 SET-REC.                                                          !02145
     04 SET-REC1D               TYPE *.                                !02146
     04 USER-FLD7               PIC X.                                 !02147
     04 SET-REC2D               TYPE *.                                !02148
     04 USER-FLD8               PIC X(2).                              !02149
  02 USER-DATA-D                TYPE *.                                !02150
END                                                                    !02151
                                                                       !02152
                                                                       !02152B00
?PAGE "PTLFX^SET^REC^6"
?SECTION PTLFX^SET^REC^6
                                                                       !02152B05
* If the settlement type field, SETL-TYP, is equal to "6"              !02152B06
* (interface totals), the structure, SET-REC6D, will be used           !02152B07
* in order to extract the interface total in ASCII format              !02152B08
                                                                       !02152B09
DEFINITION PTLFX-SET-REC-6.                                            !02152B0A
  02 HEADX                      TYPE *.                                !02152B0B
  02 SET-REC-6.                                                        !02152B0C
     04 SET-REC1D               TYPE *.                                !02152B0D
     04 USER-FLD7               PIC X.                                 !02152B0E
     04 SET-REC6D               TYPE *.                                !02152B0F
     04 USER-FLD8               PIC X(2).                              !02152B0G
  02 USER-DATA-D                TYPE *.                                !02152B0H
END                                                                    !02152B0I
?PAGE "PTLFX-SRVCS-1"
?SECTION PTLFX-SRVCS-1
                                                                       !02152B0N
                                                                       !02157
DEFINITION PTLFX-SRVCS-1.                                              !02158
02 HEADX                 TYPE *.                                       !02159
  02 SRVCS-1.                                                          !02160
     04 SET-REC1D               TYPE *.                                !02161
     04 USER-FLD9               PIC X.                                 !02162
     04 SET-REC3D               TYPE *.                                !02163
     04 USER-FLD8               PIC X.                                 !02164
  02 USER-DATA-D                TYPE *.                                !02165
END                                                                    !02166
                                                                       !02167
?PAGE "PTLFX-SRVCS-2"
?SECTION PTLFX-SRVCS-2
                                                                       !02172
DEFINITION PTLFX-SRVCS-2.                                              !02173
02 HEADX                 TYPE *.                                       !02174
  02 SRVCS-2.                                                          !02175
     04 SET-REC1D               TYPE *.                                !02176
     04 USER-FLD11              PIC X.                                 !02177
     04 SET-REC4D               TYPE *.                                !02178
     04 USER-FLD12              PIC X(2).                              !02179
  02 USER-DATA-D                TYPE *.                                !02180
END                                                                    !02181
                                                                       !02182
                                                                       !02182B00
?PAGE "PTLFX-SRVCS-7"
?SECTION PTLFX-SRVCS-7
                                                                       !02182B05
* If the settlement type field, SETL-TYP, is equal to "7" (service     !02182B06
* totals ), the service totals records SET-REC7D will be used          !02182B07
* in order to record the service totals.                               !02182B08
                                                                       !02182B09
DEFINITION PTLFX-SRVCS-7.                                              !02182B0A
  02 HEADX                      TYPE *.                                !02182B0B
  02 SRVCS-7.                                                          !02182B0C
     04 SET-REC1D               TYPE *.                                !02182B0D
     04 USER-FLD9               PIC X.                                 !02182B0E
     04 SET-REC7D               TYPE *.                                !02182B0F
     04 USER-FLD8               PIC X.                                 !02182B0G
  02 USER-DATA-D                TYPE *.                                !02182B0H
END                                                                    !02182B0I
?PAGE "PTLFX-CLERK-TOT"
?SECTION PTLFX-CLERK-TOT
                                                                       !02182B0N
                                                                       !02187
DEFINITION PTLFX-CLERK-TOT.                                            !02188
02 HEADX                 TYPE *.                                       !02189
  02 CLERK-TOT.                                                        !02190
     04 SET-REC1D               TYPE *.                                !02191
     04 USER-FLD13              PIC X.                                 !02192
     04 SET-REC5D               TYPE *.                                !02193
     04 USER-FLD14              PIC X(2).                              !02194
                                                                       !02195
  02 USER-DATA-D                TYPE *.                                !02196
                                                                       !02197
END                                                                    !02198
?nocomments
