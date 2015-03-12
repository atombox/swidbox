**SEQ0.04  11/01/00  DDLFSPF 6002 DDL    BA60DDL  BA04000  B                 ***
**SYNC.04  12/09/98  DDLFSPF 5302 DDL    BA53DDL  BA04000  B                 ***
**SYNC.03  08/28/98  DDLFSPF 5302 DDL    BA53DDL  BA03000  B                 ***
**SYNC.03  08/22/97  DDLFSPF 5102 DDL    BA51DDL  BA03000  B                 ***
**SYNC.02  06/25/96  DDLFSPF 5102 DDL    BA51DDL  BA02000  B                 ***
**FIX2.00  06/06/95  DDLFSPF 5102 DDL    BA51DDL  BA51020  B                 ***
**FIX2.00  12/17/92  DDLFSPF 5101 DDL    BA51DDL  BA50017  A                 ***
!*SEQ2.00  10/20/92  DDLFSPF 5000 DDL    BA50DDL                               !
?nocomments
?PAGE "SPF - Stop Payment File"
?SECTION SPF
********************************************************************* !!00007
*                          History Section                          * !!00008
********************************************************************* !!00009
                                                                       !00010B00
                                                                       !00010B01
                                                                       !00010B02
                                                                       !00055A00
*   92/12/04       SLA                                              *  !00055A01
*   SYMPTOM:       None                                             *  !00055A02
*   PROBLEM:       None                                             *  !00055A03
*   FIX:           Updated comments.                                *  !00055A04
*   DEPENDENCIES:  None                                             *  !00055A05
*   REFERENCE:     None                                             *  !00055A06
                                                                       !00055A07
                                                                       !00055B03
*********************************************************************  !00055B04
*                  RELEASE 5.1                                      *  !00055B05
*********************************************************************  !00055B06
* 01JUN95     JMS/583                                                  !00055B07
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00055B08
* PROBLEM:    <E> None.                                                !00055B09
* FIX:        Removed old history sections not associated with a       !00055B0A
*             specific Fix level.                                      !00055B0B
* IMPLEMENT:  None.                                                    !00055B0C
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00055B0D
                                                                       !00055B0E
                                                                       !00055B0F
********************************************************************* !!00056
*#################################################################### !!00057
*#                  STOP PAYMENT FILE (SPF)                         # !!00058
*#################################################################### !!00059
?comments
*                                                                     !!00062
*       The Stop Payment File (SPF) contains one record for           !!00063
*       each institution- or customer-initiated stop pay item         !!00064
*       that should not be honored at teller terminals or             !!00065
*       self-service banking ATMs connected to the network.           !!00066
*       BASE24-teller uses the SPF when processing check              !!00067
*       cashing transactions if the value in the STOP                 !!00068
*       PAY/WARNING STATUS field in the PBF indicates the SPF         !!00069
*       contains stop payment information for the account.            !!00070
*       The BASE24-atm add-on Self-Service Banking Check              !!00071
*       Application uses the SPF each time a check is cashed          !!00072
*       at an ATM to ensure no stop payments exist.                   !!00073
*                                                                     !!00074
*       File maintenance operators and tellers with access to         !!00075
*       the teller system can add or delete SPF stop payment          !!00076
*       records.  The SPF can be refreshed daily to purge it          !!00077
*       of records containing checks that have been                   !!00078
*       intercepted or no longer need to be maintained in a           !!00079
*       stop payment status.                                          !!00080
*                                                                     !!00081
*       For BASE24-teller, the addition and deletion of SPF           !!00082
*       records also affects corresponding account records in         !!00083
*       the PBF.  When an SPF record is added or deleted,             !!00084
*       BASE24 updates the STOP PAY/WARNING STATUS field in           !!00085
*       the PBF to reflect the presence or absence of SPF             !!00086
*       records.  BASE24-atm does not use the PBF STOP                !!00087
*       PAY/WARNING STATUS field.                                     !!00088
*                                                                     !!00089
RECORD SPF.                             FILE IS "SPF"                  !00090
                                        KEY-SEQUENCED.                 !00091
                                                                       !00092
*             The values in the following fields form the primary key !!00093
*             to records in the SPF.                                  !!00094
                                                                       !00095
    02  PRIKEY                          KEYTAG 0.                      !00096
                                                                       !00097
*             The FIID of the financial institution owning the        !!00098
*             account specified in the ACCT-NUM field.                !!00099
                                                                       !00100
        04  FIID                        TYPE *.                        !00101
                                                                       !00102
*             The account number of the customer's account at the     !!00103
*             institution that has a stop payment on the check.       !!00104
*             In a BASE24-teller system, the account number should    !!00105
*             match a Positive Balance File (PBF) account number, as  !!00106
*             the PBF contains records for all accounts and a stop    !!00107
*             payment should not be placed on an item without         !!00108
*             verifying the account number in the PBF.                !!00109
                                                                       !00110
        04  ACCT-NUM                    PIC X(19).                     !00111
                                                                       !00112
*             The type of customer account specified in the ACCT-NUM  !!00113
                                                                       !00113A00
*             field.  Valid values are:                                !00113A01
                                                                       !00113A02
                                                                       !00114A00
                                                                       !00114A01
*                                                                     !!00115
                                                                       !00115A00
*             01 - 09 = DDA (Checking Account)                         !00115A01
*             21      = NOW                                            !00115A02
                                                                       !00115A03
                                                                       !00116A00
                                                                       !00116A01
                                                                       !00116A02
                                                                       !00118
        04  ACCT-TYP                    PIC X(2).                      !00119
                                                                       !00120
*             The check number of the stop payment.  For a range of   !!00121
*             check numbers, this field contains the highest check    !!00122
*             number in the range.  The check number is               !!00123
                                                                       !00123A00
*             right-justified and zero-filled on the left.             !00123A01
                                                                       !00123A02
                                                                       !00124A00
                                                                       !00124A01
                                                                       !00125
        04  HI-CHK-NUM                  PIC X(11).                     !00126
                                                                       !00127
*             For a range of check numbers, this field will contain   !!00128
*             the lowest check number in the range.  The check number !!00129
                                                                       !00129A00
*             is right-justified and zero-filled on the left.  If the  !00129A01
                                                                       !00129A02
                                                                       !00130A00
                                                                       !00130A01
*             stop payment record is for a single check (i.e. not a   !!00131
*             range of checks), this field will contain blanks.       !!00132
                                                                       !00133
        04  LO-CHK-NUM                  PIC X(11).                     !00134
                                                                       !00135
*             Reserved for future use.                                !!00136
                                                                       !00137
        04  USER-FLD1                   PIC X(1).                      !00138
                                                                       !00139
                                                                       !00139A00
*             The amount of the check, in whole and fractional         !00139A01
*             currency units, for which the stop payment has           !00139A02
*             been issued.  The LO-CHK-NUM field must contain          !00139A03
*             blanks whenever this field is used.                      !00139A04
                                                                       !00139A05
                                                                       !00140A00
                                                                       !00140A01
                                                                       !00140A02
                                                                       !00143
    02  AMT                             TYPE BINARY 64.                !00144
                                                                       !00145
*             The date (YYMMDD) of the stop payment.                  !!00146
                                                                       !00147
    02  DAT                             TYPE *.                        !00148
                                                                       !00149
*             The time (HHMMSSHH) of the stop payment.                !!00150
                                                                       !00151
    02  TIM                             TYPE *.                        !00152
                                                                       !00153
*              The expiration date (YYMMDD) for the stop payment.     !!00154
                                                                       !00155
    02  EXP-DAT                         TYPE DAT.                      !00156
                                                                       !00157
*             A message regarding the stop payment order.  It         !!00158
*             documents and displays any data about the stop payment  !!00159
*             order that the institution placed on the file.          !!00160
                                                                       !00161
    02  DESCR                           PIC X(35).                     !00162
                                                                       !00163
*             Reserved for future use.                                !!00164
                                                                       !00165
    02  USER-FLD2                       PIC X(1).                      !00166
                                                                       !00167
*             An indicator that identifies the last file maintenance  !!00168
*             action on this record.  This includes the user who      !!00169
*             performed the update, the time at which it was done,    !!00170
*             the type of update, and the terminal originating the    !!00171
*             update transaction.                                     !!00172
                                                                       !00173
    02  LAST-FM                         TYPE *.                        !00174
                                                                       !00175
*             Reserved for future use.                                !!00176
                                                                       !00177
    02  USER-FLD3                       PIC X(12).                     !00178
                                                                       !00179
END                                                                    !00180
?nocomments
