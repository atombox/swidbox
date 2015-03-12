**FIX2.28  03/25/12  DDLGCATH6008 DDL    BP60CRTA BP0G001  H                 ***
**FIX2.28  12/03/08  DDLGCATH6007 DDL    BP60CRTA BP0C302  G                 ***
**FIX2.14  05/03/01  DDLGCATH6006 DDL    BP60CRTA BP04023  F                 ***
**SEQ0.04  11/01/00  DDLGCATH6005 DDL    BP60CRTA BP04000  E                 ***
**SYNC.04  12/08/98  DDLGCATH5305 DDL    BP53CRTA BP04000  E                 ***
**FIX2.03  08/28/98  DDLGCATH5305 DDL    BP53CRTA BP03000  E                 ***
**FIX2.06  08/21/98  DDLGCATH5005 DDL    BP51CRTA BP03017  E                 ***
**SYNC.03  08/22/97  DDLGCATH5004 DDL    BP51CRTA BP03000  D                 ***
**SYNC.02  06/25/96  DDLGCATH5004 DDL    BP51CRTA BP02000  D                 ***
**FIX2.00  09/28/93  DDLGCATH5004 DDL    BP50CRTA BP50033  D                 ***
**FIX1.19  03/15/89  DDLGCATH5003 DDL    BP50CRTA BP34112  C                 ***
**FIX1.16  08/11/88  DDLGCATH3402 DDL    BP34CRTA BP34080  B                 ***
**FIX1.16  01/22/88  DDLGCATH3401 DDL    BP34CRTA BP34029  A                 ***
!*SEQ2.17  10/23/87  DDLGCATH3400 DDL    BP34CRTA                              !
?PAGE "CRTAUTH-MSG - CRT Auth Transaction Message"
?SECTION CRTAUTH-MSG
********************************************************************** !00000F00
*                                                                    * !00000F01
*                             BASE24-pos                             * !00000F02
*                             ----------                             * !00000F03
*                                                                    * !00000F04
*               DDL for the CRT Auth Transaction Message             * !00000F05
*                                                                    * !00000F06
*                   Proprietary Software Product                     * !00000F07
*                                                                    * !00000F08
*                         ACI Worldwide Inc.                         * !00000F09
*                       330 South 108th Avenue                       * !00000F0A
*                       Omaha, Nebraska  68154                       * !00000F0B
*                           (402) 390-7600                           * !00000F0C
*                                                                    * !00000F0D
*    Copyright by ACI Worldwide Inc. 1987 - 2001                     * !00000F0E
*                                                                    * !00000F0F
*    All Rights Reserved.  No part of this document may be           * !00000F0G
*    reproduced in any manner without the prior written consent of   * !00000F0H
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000F0I
*    confidentiality is strictly maintained.  Use of any copyright   * !00000F0J
*    notice does not imply unrestricted or public access to these    * !00000F0K
*    materials.                                                      * !00000F0L
*                                                                    * !00000F0M
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000F0N
*                                                                    * !00000F0O
********************************************************************** !00000F0P
*                                                                      !00000F0Q
* Record of Changes:                                                   !00000F0R
*                                                                      !00000F0S
* Date        Person/Emp #                                             !00000F0T
* ---------   ------------                                             !00000F0U
                                                                       !00000F0V
!                                                                     !!00005
! History section                                                     !!00006
!---------------------------------------------------------------------!!00007
!                                                                    ! !00008
! 08/20/87     3.4         JHK                                       ! !00009
!                                                                    ! !00010
! SYMPTOM:                                                           ! !00011
! PROBLEM:                                                           ! !00012
! FIX:                                                               ! !00013
! IMPLEMENTATION:                                                    ! !00014
! REFERENCE:  Initial release of DDLs.                               ! !00015
!                                                                    ! !00016
                                                                       !00016A00
                                                                       !00016A01
! 21JAN88       TYPE OF FIX:    Enhancement     Developer:  RHB      ! !00016A02
! SYMPTOM:  CRT AUTH transaction denied by VISANET Interface.        ! !00016A03
! PROBLEM:  The VISANET Interface needs to have the Country Code and ! !00016A04
!           Zip Code of the Terminal initating the request.          ! !00016A05
! FIX:      Added Country Code and Zip Code CRTAUTH-MSG DDL which is ! !00016A06
!           referenced by this DDL.                                  ! !00016A07
! IMPLEMENTATION:  Apply fix to the DDLFTQF, requestor/server and    ! !00016A08
!                  screens which reference these DDLS.               ! !00016A09
! REFERENCE: RPE E871216-1 and RPC 104735.                           ! !00016A0A
!                                                                    |!!00016A0B
                                                                       !00016B00
                                                                       !00016B01
! 08AUG88       TYPE OF FIX:    Enhancement     Developer:  RHB      |!!00016B02
! SYMPTOM:  None.                                                    |!!00016B03
! PROBLEM:  None.                                                    |!!00016B04
! FIX:      Enhanced CRT Auth to display approval code back to the   |!!00016B05
!           CRT Operator when an Override is processed.              |!!00016B06
! IMPLEMENTATION:  Apply fix to the requestor/server, screens and    |!!00016B07
!                  CRT DH which reference these DDLS.                |!!00016B08
! REFERENCE: RPC 108431, 108771, 105519.                             |!!00016B09
!                                                                    |!!00016B0A
                                                                       !00016B0B
                                                                       !00016B0C
                                                                       !00016B0D
                                                                       !00016B0E
                                                                       !00016C00
! 7FEBR89       TYPE OF FIX:    Enhancement     Developer:  LJC      |!!00016C01
! SYMPTOM:  (E) Enhancement for CRT Authorization.                   |!!00016C02
! PROBLEM:  None.                                                    |!!00016C03
! FIX:      The following fields were modified:                      |!!00016C04
!             Added DFT-CAPTURE-FLG          PIC X                   |!!00016C05
!             Added ADVICE-PROCESSING-FLG    PIC X                   |!!00016C06
!             Added CRNCY-CDE                PIC X(3)                |!!00016C07
!             Added USER-FLDS                PIC X(7)                |!!00016C08
!             Deleted POSTAL-CDE             PIC X(10)               |!!00016C09
!             Deleted CNTRY-CDE              PIC X(2)                |!!00016C0A
!            Note that the length of the message did not change.     |!!00016C0B
! IMPLEMENTATION:  Recompile DDLs and modules using these DDLs.      |!!00016C0C
!                  A TQF conversion program will need to be          |!!00016C0D
!                  run against existing TQF files.                   |!!00016C0E
! REFERENCE: RPE #880711-01.                                         |!!00016C0F
!                                                                    |!!00016C0G
                                                                       !00016C0H
                                                                       !00016D00
*********************************************************************  !00016D01
*                      RELEASE 5.0                                  *  !00016D02
*********************************************************************  !00016D03
! 93/01/04    J. Samson                                              ! !00016D04
! SYMPTOM:    Interchange interface was unable to locate an ILF      ! !00016D05
!             record for a reversal.                                 ! !00016D06
! PROBLEM:    CRT AUTH messages did not contain the transaction time.! !00016D07
!             If time is part of the prikey an interface uses to     ! !00016D08
!             locate a record on the ILF when processing a reversal, ! !00016D09
!             the original record could not be found if it originated! !00016D0A
!             with CRT AUTH.                                         ! !00016D0B
! FIX:        Redefine 6 bytes of USER-FLDS as DATE-TIM and FILLER.  ! !00016D0C
! IMPLEMENT:  Recompile DDLs and modules using these DDLs.           ! !00016D0D
! REFERENCE:  RPC # 132740.                                          ! !00016D0E
                                                                       !00016D0F
                                                                       !00016E00
*********************************************************************  !00016E01
*                      RELEASE 5.3                                  *  !00016E02
*********************************************************************  !00016E03
! 20AUG1998  NLG/141                                                 ! !00016E04
! Symptom:   Manual Card Verification Digits Enhancement.            ! !00016E05
! Problem:   None.                                                   ! !00016E06
! Fix:       Increased the size of the CRTAUTH-MSG to reflect the new! !00016E07
!            values necessary for Manual CVD support.                ! !00016E08
! Dependency:Apply fixes to DDLGCATH, DDLFTQF, DDLPSTKN, CRTAUDHS,   ! !00016E09
!            RQOLTS, SCRNOLT, RQPRFS, SCRNPRF, SVPRFS, and re-make.  ! !00016E0A
! Reference: WO #980331-1                                            ! !00016E0B
                                                                       !00016E0C
                                                                       !00016F00
*********************************************************************  !00016F01
*                      RELEASE 6.0                                  *  !00016F02
*********************************************************************  !00016F03
* 04MAY2001   RKK/299                                                  !00016F04
* Symptom:    Release 6.0 Enhancements.                                !00016F05
* Problem:    None.                                                    !00016F06
* Fix:        Added fields AVS-ADDR, AVS-POST-CODE and AVS-RESULT      !00016F07
*             for AVS support.                                         !00016F08
* Dependency: Restore Release 6.0 files, modify the appropriate        !00016F09
*             CUSTMACS flags, and run MAKE.                            !00016F0A
* Reference:  WO ##000101-1 (General Release 6.0)                      !00016F0B
                                                                       !00016F0C
                                                                       !00016G00
* 17OCT2008   SaravaK                                                  !00016G01
* Symptom:    Reversal messages for BASE24-authorized transactions     !00016G02
*             generated from the OLT are not updating the offline      !00016G03
*             accumulators in the CAF/UAF.                             !00016G04
* Problem:    If BASE24 authorizes the transaction via stand-in,       !00016G05
*             HISO will set the COMPL-REQ field to a value of '2'.     !00016G06
*             This results in the offline accumulators on the          !00016G07
*             CAF or UAF being updated when the reversal message       !00016G08
*             is processed. However, the CRT Auth subsystem does not   !00016G09
*             store the COMPL-REQ field from the PSTM when the         !00016G0A
*             transaction is entered on the OLT Screen, so the PSTM    !00016G0B
*             does not contain the correct value when the reversal     !00016G0C
*             message is generated.                                    !00016G0D
* Fix:        Added field COMPL-REQ to hold the corresponding PSTM     !00016G0E
*             field in the TQF record, to allow the value to be        !00016G0F
*             included in a subsequent reversal message.               !00016G0G
* Dependency: Apply fixes to CRTAUDHS and DDLGCATH, and run Make.      !00016G0H
* Reference:  Case #463275.                                            !00016G0I
                                                                       !00016G0J
                                                                       !00016H00
* 20MAR2012   saderc                                                   !00016H01
* Symptom:    The CRT AUTH device handler does not support Enhanced    !00016H02
*             Reversal Routing.                                        !00016H03
* Problem:    There is currently insufficient data stored in the TQF   !00016H04
*             for CRT AUTH to allow enhanced reversal routing to       !00016H05
*             function correctly.                                      !00016H06
* Fix:        The following changes were made in the RVSL-DATA         !00016H07
*             structure of CRTAUTH-MSG:                                !00016H08
*             1. Replaced the user-fld1 field with the auth-ind2       !00016H09
*                field.                                                !00016H0A
*             2. Replaced the router1-name field, which is 16 bytes,   !00016H0B
*                with the 6 byte iss-ichg-setl-dat field and the       !00016H0C
*                remaining 10 bytes with filler.                       !00016H0D
* Dependency: Apply fixes to CRTAUDHS and DDLGCATH. Run Make.          !00016H0E
* Reference:  Case #1191757                                            !00016H0F
                                                                       !00016H0G
!---------------------------------------------------------------------!!00017
                                                                       !00018
DEFINITION CRTAUTH-MSG.                                                !00019
*                                                                     !!00020
*       The transaction category is always 0 for CRT Auth             !!00021
*       transactions.                                                 !!00022
*                                                                     !!00023
    02  TRAN-CAT                PIC 9(1).                              !00024
    02  FILLER                  PIC X(1).                              !00025
*                                                                     !!00026
*       This field contains the retailers merchant id.                !!00027
*                                                                     !!00028
    02  RETL-ID                 PIC X(19).                             !00029
    02  FILLER                  PIC X.                                 !00030
*                                                                     !!00031
*       This field contains a 'Y' if the operator has supervisor      !!00032
*       security and an 'N' if not.  If it contains a 'Y' and the     !!00033
*       transaction request is for any admin type transaction, the    !!00034
*       device handler sets the admin card checked flag in the PSTM   !!00035
*       before sending the transaction to router.                     !!00036
*                                                                     !!00037
    02  SUPER-FLG               PIC X.                                 !00038
    02  FILLER                  PIC X.                                 !00039
*                                                                     !!00040
*       This field contains the clerk/employee id for this            !!00041
*       transaction.  It is two integer values containing the group   !!00042
*       number and user number of the operator initiating the         !!00043
*       transaction.                                                  !!00044
*                                                                     !!00045
    02  CLERK.                                                         !00046
        04  GRP                 TYPE BINARY 16.                        !00047
        04  USER-ID             TYPE BINARY 32.                        !00048
*                                                                     !!00049
*       Type of transaction.                                          !!00050
*                                                                     !!00051
*       "TC"  Where "TC" is tran code,                                !!00052
*                                                                     !!00053
*            Supported    Description                                 !!00054
*            ---------    -----------                                 !!00055
*               YES       10 - Normal Purchase                        !!00056
*               NO        11 - Pre-Auth Purchase                      !!00057
*               NO        12 - Pre-Auth Purchase Completion           !!00058
*               YES       13 - Mail/phone Order                       !!00059
*               YES       15 - Cash Advance                           !!00060
*               YES       16 - Card Verification                      !!00061
*               NO        17 - Balance Inquiry                        !!00062
*               NO        18 - Purchase with Cash Back                !!00063
*               NO        19 - Check Verification                     !!00064
*               NO        20 - Check Guarantee                        !!00065
*               YES       21 - Adjustment - Purchase                  !!00066
*               YES       22 - Adjustment - Merchandise Return        !!00067
*               YES       23 - Adjustment - Cash Advance              !!00068
*               YES       24 - Adjustment - Cash Back Amount on       !!00069
*                              Purchase with Cash back                !!00070
*               NO        51 - Terminal Batch Totals                  !!00071
*               NO        52 - Terminal Shift Totals                  !!00072
*               NO        53 - Daily Terminal Totals                  !!00073
*               NO        54 - Current Terminal Network Totals        !!00074
*               NO        55 - Previous Terminal Network Totals       !!00075
*               NO        56 - Retailer Totals                        !!00076
*               NO        57 - Request Terminal Mail                  !!00077
*               NO        58 - Send Terminal Mail (passthru)          !!00078
*               NO        59 - Send Terminal Mail (stored)            !!00079
*                                                                     !!00080
    02  TRAN-CDE                PIC 9(2).                              !00081
                                                                       !00082
*                                                                     !!00083
*       Card number as entered on the screen.                         !!00084
*                                                                     !!00085
    02  CRD-NUM                 TYPE PAN.                              !00086
*                                                                     !!00087
*       Card member number as entered on the screen.                  !!00088
*                                                                     !!00089
    02  MBR-NUM                 TYPE *.                                !00090
*                                                                     !!00091
*       Reference the PSTM format for values.                         !!00092
*                                                                     !!00093
    02  RESP-CDE                PIC 999.                               !00094
*                                                                     !!00095
*       Referral phone number from a PRF record.                      !!00096
*                                                                     !!00097
    02  RFRL-PHONE              TYPE PHONE-NUM.                        !00098
*                                                                     !!00099
*       This field contains the expiration date of the card.  (YYMM)  !!00100
*                                                                     !!00101
    02  EXP-DAT                 PIC X(4).                              !00102
                                                                       !00102G00
*                                                                      !00102G01
*       This field contains the "completions required" field from the  !00102G02
*       PSTM response. This field is used for updating CAF/UAF         !00102G03
*       accumulators when a reversal is generated from CRT Auth.       !00102G04
*                                                                      !00102G05
    02  COMPL-REQ               PIC X(1).                              !00102G06
                                                                       !00102G07
                                                                       !00103G00
                                                                       !00103G01
*                                                                     !!00104
*       This field contains the transaction amount requested.         !!00105
*                                                                     !!00106
    02  AMT1                    TYPE BINARY 64.                        !00107
*                                                                     !!00108
*       This field contains the new transaction amount requested. This!!00109
*       field is only used for "5400" messages.                       !!00110
*                                                                     !!00111
    02  AMT2                    TYPE BINARY 64.                        !00112
*                                                                     !!00113
*       This field contains the batch sequence number associated with !!00114
*       this transaction by the terminal; it must be unique by        !!00115
*       terminal session by terminal.                                 !!00116
*                                                                     !!00117
    02  SEQ-NUM                 PIC 9(3).                              !00118
    02  FILLER                  PIC X(1).                              !00119
*                                                                     !!00120
*       This field contains the posting date. YYMMDD                  !!00121
*                                                                     !!00122
    02  POST-DAT                TYPE DAT.                              !00123
*                                                                     !!00124
*       This field will contain the approval code associated with this!!00125
*       transaction.                                                  !!00126
*                                                                     !!00127
    02  APPRV-CDE               PIC X(8).                              !00128
*                                                                     !!00129
*       Indicates service.  May be required for not-on-us referral    !!00130
*       processing.                                                   !!00131
*                                                                     !!00132
    02  SRV                     PIC XX.                                !00133
*                                                                     !!00134
*       Indicates on-us or not-on-us card.  If non-blank, contains the!!00135
*       fi-id of card issuer.  Used for referral processing.  Do not  !!00136
*       invoke referral screens or refer to supervisor if not-on-us   !!00137
*       card.                                                         !!00138
*                                                                     !!00139
    02  ISS                     PIC X(4).                              !00140
*                                                                     !!00141
*       Indicates reason for reversal.                                !!00142
*                                                                     !!00143
    02  RVSL-CDE                PIC 99.                                !00144
*                                                                     !!00145
*       Indicates the transaction status.                             !!00146
*                                                                     !!00147
*         01     = Customer not present (default)                     !!00148
*         21     = Manual reversal (OLT screen REVERSAL)              !!00149
*                                                                     !!00150
    02  PT-SRV-COND-CDE         PIC 99.                                !00151
*                                                                     !!00152
*       This field describes the entry mode of the POS                !!00153
*       transaction.                                                  !!00154
*                                                                     !!00155
*       Positions 1 & 2 (PAN-ENTRY-MDE)                               !!00156
*       -------------------------------                               !!00157
*                                                                     !!00158
*          00      = Unspecified                                      !!00159
*          01      = Manual                                           !!00160
*          02      = Magnetic Stripe                                  !!00161
*          03      = Bar Code                                         !!00162
*          04      = OCR                                              !!00163
*          05      = Integrated Circuit Card                          !!00164
*          06-60   = Reserved for ISO use                             !!00165
*          61-80   = Reserved for National use                        !!00166
*          81-99   = Reserved for Private use                         !!00167
*                                                                     !!00168
*       The CRT Auth screens always use 01 for transactions           !!00169
*       originating from the On-line Transaction screen.  The PRF     !!00170
*       value is used when displaying a referral which originated     !!00171
*       elsewhere.                                                    !!00172
*                                                                     !!00173
*       Position 3 (PIN-ENTRY-MDE)                                    !!00174
*       ----------                                                    !!00175
*                                                                     !!00176
*          0       = Unspecified                                      !!00177
*          1       = PIN entry capability                             !!00178
*          2       = No PIN entry capability                          !!00179
*          3-5     = Reserved ISO use                                 !!00180
*          6-7     = Reserved National use                            !!00181
*          8-9     = Reserved Private use                             !!00182
*                                                                     !!00183
*       The CRT Auth screens always use 2 for transactions            !!00184
*       originating from the On-line Transaction screen.  The PRF     !!00185
*       value is used when displaying a referral which originated     !!00186
*       elsewhere.                                                    !!00187
*                                                                     !!00188
    02  PT-SRV-ENTRY-MDE        PIC 9(3).                              !00189
    02  PT-SRV-ENTRY-MDE-R      REDEFINES PT-SRV-ENTRY-MDE.            !00190
        04  PAN-ENTRY-MDE       PIC 9(2).                              !00191
        04  PIN-ENTRY-MDE       PIC 9(1).                              !00192
*                                                                     !!00193
*       Indicates which logical network contains the database for a   !!00194
*       particular card account.  Used in referral processing.        !!00195
*                                                                     !!00196
    02  CRD-LN                  TYPE LN.                               !00197
*                                                                     !!00198
*       The following information is saved only to process reversals  !!00199
*       and adjustments properly.                                     !!00200
*                                                                     !!00201
    02  RVSL-DATA.                                                     !00202
*                                                                     !!00203
*           AUTH-IND indicates the authorizor for the transaction.    !!00204
*           Used to display the Authorizor on the On-line Transaction !!00205
*           screen.                                                   !!00206
*                                                                     !!00207
*           'P' - Primary                                             !!00208
*           '1' - Alternate 1                                         !!00209
*           '2' - Alternate 2                                         !!00210
*           '9' - No authorizers                                      !!00211
*           'F' - Sproute Primary                                     !!00212
*           'f' - Sproute Alt1                                        !!00213
*                                                                     !!00214
        04  AUTH-IND            PIC X.                                 !00215
        04  PRI                 TYPE SYM-NAME.                         !00216
        04  ALT1                TYPE SYM-NAME.                         !00217
        04  ALT2                TYPE SYM-NAME.                         !00218
                                                                       !00219H00
        04  ISS-ICHG-SETL-DAT   TYPE DAT.                              !00219H01
        04  USER-FLD1           PIC X(10).                             !00219H02
                                                                       !00219H03
        04  ROUTER2-NAM         TYPE SYM-NAME.                         !00220
                                                                       !00221H00
        04  AUTH-IND2           PIC X.                                 !00221H01
                                                                       !00221H02
        04  ACCT                TYPE *.                                !00222
                                                                       !00223
*                       "T" is the type of card                       !!00224
*                                                                     !!00225
*                          0 - None                                   !!00226
*                          1 - Credit Card                            !!00227
*                          2 - Debit Card (OLT default)               !!00228
*                                                                     !!00229
    02  T                       PIC X.                                 !00230
                                                                       !00231
*                       "AA" is the account.                          !!00232
*                                                                     !!00233
*                         00 - None                                   !!00234
*                         01 - DDA                                    !!00235
*                         11 - SAV                                    !!00236
*                         31 - CREDIT  (OLT/CHF default)              !!00237
                                                                       !00238
    02  AA                      PIC XX.                                !00239
                                                                       !00239A00
                                                                       !00239A01
                                                                       !00239C00
*   This field is used for the draft capture value, taken from         !00239C01
*   the value on the On-Line Transaction screen.                       !00239C02
*                                                                      !00239C03
*      Valid values are:                                               !00239C04
*                                                                      !00239C05
*          0 - Authorize Only.                                         !00239C06
*          1 - Authorize and Capture.                                  !00239C07
*      blank - Default to the value on the PRDF.                       !00239C08
*                                                                      !00239C09
    02  DFT-CAPTURE-FLG         PIC X.                                 !00239C0A
                                                                       !00239C0B
*   This flag will be set by the OLT and PRF requesters so the         !00239C0C
*   CRT Device Handler will know where the 0220 came from.             !00239C0D
*   This is needed since the two transactions are processed            !00239C0E
*   differently.                                                       !00239C0F
*                                                                      !00239C0G
*      Valid values are:                                               !00239C0H
*                                                                      !00239C0I
*          0 - 0220 from the PRF.                                      !00239C0J
*          1 - 0220 from the OLT.                                      !00239C0K
*                                                                      !00239C0L
   02  ADVICE-PROCESSING-FLG   PIC X.                                  !00239C0M
                                                                       !00239C0N
*       This contains the currency code.                               !00239C0O
                                                                       !00239C0P
    02  CRNCY-CDE               TYPE *.                                !00239C0Q
                                                                       !00239C0R
                                                                       !00239D00
*       This field contains the original date and time of the          !00239D01
*       transaction for use when processing reversals.                 !00239D02
                                                                       !00239D03
    02  TIMSTP.                                                        !00239D04
      04  DATE-TIM              TYPE BINARY 16 OCCURS 3 TIMES.         !00239D05
                                                                       !00239D06
    02  USER-FLDS               PIC X.                                 !00239D07
                                                                       !00239D08
                                                                       !00239D09
                                                                       !00239D0A
                                                                       !00239C0T
                                                                       !00239C0U
                                                                       !00239C0V
                                                                       !00239C0W
                                                                       !00239B00
*                                                                      !00239B01
*       This field will contain the approval code associated with the  !00239B02
*       Override transaction.                                          !00239B03
*                                                                      !00239B04
    02  OVRRDE-APPRV-CDE          PIC X(8).                            !00239B05
                                                                       !00239B06
                                                                       !00239A0A
                                                                       !00239E00
*                                                                      !00239E01
*             Field used to indicate that the Card Verification        !00239E02
*             Value is on the card.  Valid values are:                 !00239E03
*              0 - CVD Value is deliberately bypassed or not           !00239E04
*                  provided by the merchant.                           !00239E05
*              1 - CVD Value is present.                               !00239E06
*              2 - CVD Value is on the card, but is illegible.         !00239E07
*              9 - Cardholder states that the card has no CVD          !00239E08
*                  imprint.                                            !00239E09
*                                                                      !00239E0A
                                                                       !00239E0B
    02  CVD-FLD-PRESENT           PIC X.                               !00239E0C
                                                                       !00239E0D
*                                                                      !00239E0E
*             Field for manually entered values such as the American   !00239E0F
*             Express Card Identification Code (CID), Mastercard's     !00239E0G
*             Card Validation Codes (CVC2), and Visa's Card            !00239E0H
*             Verification Value 2 (CVV2).  Only the leftmost three    !00239E0I
*             bytes are used in CVC2 and CVV2 card verification        !00239E0J
*             processing.                                              !00239E0K
*                                                                      !00239E0L
                                                                       !00239E0M
    02  CVD-FLD                   PIC X(4).                            !00239E0N
                                                                       !00239E0O
*                                                                      !00239E0P
*             Indicates whether the card involved in the transaction   !00239E0Q
*             has already been verified.  Valid values are:            !00239E0R
*                                                                      !00239E0S
*             C = Card verification was performed and the card         !00239E0T
*                 verification digits (CVD) were invalid.  The         !00239E0U
*                 situation was noted and transaction processing       !00239E0V
*                 continued.                                           !00239E0W
*                                                                      !00239E0X
*             D = Card verification was performed and the CVD was      !00239E0Y
*                 invalid.  The transaction was denied and the ERR-FLG !00239E0Z
*                 field was set to C.                                  !00239E10
*                                                                      !00239E11
                                                                       !00239E12
*             R = Card verification was performed and the CVD was      !00239E13
*                 invalid.  The situation was noted and the            !00239E14
*                 transaction should be referred.                      !00239E15
*                                                                      !00239E16
                                                                       !00239E17
*             Y = Card verification was performed and the CVD was      !00239E18
*                 valid.                                               !00239E19
*                                                                      !00239E1A
*             N or " " = Card verification was not attempted or a      !00239E1B
*                         security device error occurred.              !00239E1C
*                                                                      !00239E1D
                                                                       !00239E1E
*             0 = Card verification was not performed because the      !00239E1F
*                 transaction was denied before card verification      !00239E1G
*                 processing started.                                  !00239E1H
*                                                                      !00239E1I
*             L = Card verification was not performed.  The track      !00239E1J
*                 length was in error.  The situation was noted and    !00239E1K
*                 transaction processing continued.                    !00239E1L
*                                                                      !00239E1M
*             J = Card verification was not performed.  The track      !00239E1N
*                 length was in error.  The situation was noted and    !00239E1O
*                 the transaction was denied.                          !00239E1P
*                                                                      !00239E1Q
*             K = Card verification was not performed.  The track      !00239E1R
*                 length was in error.  The situation was noted and    !00239E1S
*                 the transaction was referred (POS only).             !00239E1T
*                                                                      !00239E1U
*             O = Card verification was not performed, CVD was not on  !00239E1V
*                 the card.  Not all cards will have a CVD value       !00239E1W
*                 encoded.  The card expiration date must be equal to  !00239E1X
*                 or greater than an expiration date defined on the    !00239E1Y
*                 CPF to insure that the CVD field has been encoded.   !00239E1Z
*                 If the card expiration date is equal to or greater   !00239E20
*                 than the CPF date, the CVD checks will be performed. !00239E21
*                                                                      !00239E22
                                                                       !00239E23
*             Processes which will be generating this token but        !00239E24
*             not using this field should initialize CRD-VRFY-FLG      !00239E25
*             to " ".                                                  !00239E26
*                                                                      !00239E27
                                                                       !00239E28
    02  CVD-RESULT                PIC X.                               !00239E29
                                                                       !00239E2A
                                                                       !00239F00
*             Address field up to the first 5 numeric digits, left     !00239F01
*             justified and blank filled.                              !00239F02
                                                                       !00239F03
    02  AVS-ADDR                  PIC X(5).                            !00239F04
                                                                       !00239F05
*             POST CODE field up to the first 5 numeric digits, left   !00239F06
*             justified and blank filled.                              !00239F07
                                                                       !00239F08
    02  AVS-POST-CODE             PIC X(5).                            !00239F09
                                                                       !00239F0A
*             Field used to hold the address verification result.      !00239F0B
*             Valid values are:                                        !00239F0C
*                 X, Y, A, W, Z, N, U, R and S.                        !00239F0D
                                                                       !00239F0E
    02  AVS-RESULT                PIC X.                               !00239F0F
                                                                       !00239F0G
                                                                       !00240
END                                                                    !00241
