**FIX2.11  01/19/01  DDLGREFR6005 DDL    BA60DDL  BA04234  E                 ***
**SEQ0.04  11/01/00  DDLGREFR6004 DDL    BA60DDL  BA04000  D                 ***
**SYNC.04  12/09/98  DDLGREFR5304 DDL    BA53DDL  BA04000  D                 ***
**SYNC.03  08/28/98  DDLGREFR5304 DDL    BA53DDL  BA03000  D                 ***
**SYNC.03  08/22/97  DDLGREFR5104 DDL    BA51DDL  BA03000  D                 ***
**SYNC.02  06/25/96  DDLGREFR5104 DDL    BA51DDL  BA02000  D                 ***
**FIX2.00  12/08/95  DDLGREFR5104 DDL    BA51DDL  BA51247  D                 ***
**FIX2.00  11/13/95  DDLGREFR5103 DDL    BA51DDL  BA51206  C                 ***
**FIX2.00  06/06/95  DDLGREFR5102 DDL    BA51DDL  BA51036  B                 ***
**FIX2.00  09/24/93  DDLGREFR5101 DDL    BA51DDL  BA50252  A                 ***
!*SEQ2.00  10/20/92  DDLGREFR5000 DDL    BA50DDL                               !
?nocomments
                                                                       !00003
**********************************************************************!!00004
*                         History Section                            *!!00005
**********************************************************************!!00006
                                                                       !00007B00
                                                                       !00007B01
                                                                       !00007B02
* 93/09/22       DCS                                                   !00077A01
* SYMPTOM:       None.                                                 !00077A02
* PROBLEM:       None.                                                 !00077A03
* FIX:           1.  Updated the comments to add "MB = Mail Box File"  !00077A04
*                    as an allowed value for the RFH.APPL field.       !00077A05
*                2.  Updated the comments to add "ACH" to the list of  !00077A06
*                    previous release refreshes that are not supported !00077A07
*                    by release 5.0 refresh (RFH.REL-NUM field).       !00077A08
*                3.  Updated the comments pertaining to the            !00077A09
*                    RFH.ATM/POS/TLR.STRT-IMP-DAT and TIM fields to    !00077A0A
*                    reflect a more detailed explanation of the usage  !00077A0B
*                    of these fields.                                  !00077A0C
*                4.  Updated the comments pertaining to the RBT.AMT    !00077A0D
*                    field to specify that it is verified on NBF, SPF, !00077A0E
*                    and WHFF refreshes in addition to the already     !00077A0F
*                    stated PBF refreshes.                             !00077A0G
*                5.  Updated the comments pertaining to the            !00077A0H
*                    RFH.CAF-EXPNT field to reflect its usage in       !00077A0I
*                    regards to BASE24-atm SSB Check (SSBC) limits.    !00077A0J
* DEPENDENCIES:  None.                                                 !00077A0K
* REFERENCE:     None.                                                 !00077A0L
********************************************************************** !00077A0M
                                                                       !00077B03
*                  RELEASE 5.1                                      *  !00077B04
*********************************************************************  !00077B05
*                                                                      !00077B06
* 94/08/22    Release 1.0 Telebanking Design Team  - JMS/583           !00077B07
* SYMPTOM:    None.                                                    !00077B08
* PROBLEM:    None.                                                    !00077B09
* FIX:        1) Added new allowed values for the RFH.APPL field for   !00077B0A
*                the Customer Account Relation File (CR), Customer     !00077B0B
*                File (CU), and Transaction History File (TH)          !00077B0C
*                refreshes.                                            !00077B0D
*             2) Added the value "10" as an allowed value for the      !00077B0E
*                RFH.REL-NUM field.  "10" specifies the current        !00077B0F
*                release of BASE24-telebanking.                        !00077B0G
*             3) Added the RFH.TB structure to be used in specifying   !00077B0H
*                the last extract date and the start impact timestamp  !00077B0I
*                for full file Customer File (CUST) refreshes with     !00077B0J
*                impacting and full or partial PBF refreshes with      !00077B0K
*                impacting.                                            !00077B0L
*             4) Added the RBH.END-RANGE field to allow files, such as !00077B0M
*                the Transaction History File (THF), to be defined at  !00077B0N
*                a lower level than Refresh Group.  Defining files at  !00077B0O
*                a lower level than Refresh Group can be accomplished  !00077B0P
*                by using the RFH.GRP, RBH.CRD-ISS, and RBH.END-RANGE  !00077B0Q
*                fields.                                               !00077B0R
* IMPLEMENT:  Re-DDL.  All modules that source in the RFH and RBH defs !00077B0S
*             must be recompiled.                                      !00077B0T
* REFERENCE:  TB930301-01, BASE24 Telebanking System Specification     !00077B0U
*                                                                      !00077B0V
* 01JUN95     JMS/583                                                  !00077B0W
* SYMPTOM:    Base24 Release 5.1 Enhancement.                          !00077B0X
* PROBLEM:    <E> None.                                                !00077B0Y
* FIX:        Removed old history sections not associated with a       !00077B0Z
*             specific Fix level.                                      !00077B10
* IMPLEMENT:  None.                                                    !00077B11
* REFERENCE:  Base24 Release 5.1 Enhancements.                         !00077B12
                                                                       !00077B13
                                                                       !00077C00
* 20OCT95     SLA/435                                                  !00077C01
* SYMPTOM:    None.                                                    !00077C02
* PROBLEM:    <E> None.                                                !00077C03
* FIX:        Modified comments to reflect support for Release 1.1     !00077C04
*             of BASE24-telebanking.  This includes new values for     !00077C05
*             the APPL and REL-NUM fields.  Removed references to      !00077C06
*             full-file refreshes of the CSTT with impacting.          !00077C07
* IMPLEMENT:  None.                                                    !00077C08
* REFERENCE:  Work Order 950425-1.                                     !00077C09
                                                                       !00077C0A
*********************************************************************  !00077B14
                                                                       !00077D00
*                                                                    * !00077D01
* 95/11/14        DPS/1064 - bdc/1448                                * !00077D02
* SYMPTOM:        Release 1.0 Customer Service/Fraud Control         * !00077D03
* PROBLEM:        (E) None.                                          * !00077D04
* FIX:            Updated list for APPL values.  Added the           * !00077D05
*                 following codes: CI, CM.                           * !00077D06
* DEPENDENCIES:   None.                                              * !00077D07
* REFERENCE:      Work order #950212-3.                              * !00077D08
*                                                                    * !00077D09
********************************************************************** !00077D0A
                                                                       !00077E00
*********************************************************************  !00077E01
*             Release 6.0                                           *  !00077E02
*********************************************************************  !00077E03
* 30NOV2000   JAS/479                                                  !00077E04
* Symptom:    Release 6.0 Enhancements                                 !00077E05
* Problem:    None.                                                    !00077E06
* Fix:        Updated comments to remove references to release 4.0.    !00077E07
* Dependency: Restore Release 6.0 files, modify the appropriate        !00077E08
*             CUSTMACS flags, and run MAKE.                            !00077E09
* Reference:  WO #000101-1 (General Release 6.0)                       !00077E0A
*********************************************************************  !00077E0B
                                                                       !00077E0C
                                                                       !00077D0B
                                                                       !00077D0C
                                                                       !00077D0D
                                                                       !00077D0E
                                                                       !00078
?PAGE "RFH - Refresh File Header Record"
                                                                       !00078E02
?SECTION RFH
                                                                       !00083
*#####################################################################!!00084
*#                                                                   #!!00085
                                                                       !00086E00
*#       RFH -  REFRESH FILE HEADER RECORD                           #!
                                                                       !00086E03
*#                                                                   #!!00087
*#####################################################################!!00088
                                                                       !00089
                                                                       !00090
?comments
*                                                                     !!00093
*              The file header identifies the file to be refreshed and!!00094
*              whether a full-file or partial-file refresh is to be   !!00095
*              run.  It also contains various processing parameters   !!00096
*              required by Refresh.                                   !!00097
*                                                                     !!00098
*              At least one file header is required per refresh tape. !!00099
*                                                                     !!00100
RECORD RFH.                                                            !00101
                                                                       !00102
                                                                       !00103
   02  REC-CNT                       PIC 9(9).                         !00104
                                                                       !00105
                                                                       !00106
*                                                                     !!00107
*              The record type.  This field must contain the value FH !!00108
*              (File Header).                                         !!00109
*                                                                     !!00110
   02  REC-TYP                       PIC X(2).                         !00111
                                                                       !00112
                                                                       !00113
*                                                                     !!00114
*              The type of refresh for which the records on the tape  !!00115
*              are to be used.  Valid values are:                     !!00116
*                                                                     !!00117
*              0 = Full-file Refresh--Refresh creates an entirely new !!00118
*                  file and adds to that file every record on the     !!00119
*                  tape.                                              !!00120
*              1 = Partial-file Refresh--Refresh updates the existing !!00121
*                  file using records on the tape.                    !!00122
*                                                                     !!00123
   02  REF-TYP                       PIC X.                            !00124
                                                                       !00125
                                                                       !00126
*                                                                     !!00127
                                                                       !00127A00
                                                                       !00127C00
*              Indicates the BASE24 file or table being refreshed.     !00127C01
*              Valid values are:                                       !00127C02
                                                                       !00127C03
                                                                       !00127C04
                                                                       !00127C05
                                                                       !00127C06
*                                                                      !00127A03
                                                                       !00127C07
*              AC = Customer Account Relation Table (CACT)             !00127C08
                                                                       !00127C09
                                                                       !00127C0A
                                                                       !00127C0B
                                                                       !00127C0C
                                                                       !00127B02
                                                                       !00127C0D
*              CC = Positive Balance File (PBF) for credit accounts    !00127C0E
*                   only                                               !00127C0F
*              CF = Cardholder Authorization File (CAF)                !00127C0G
*              CH = Card History File (CHF)                            !00127C0H
                                                                       !00127D00
*              CI = Customer/Card Information File (CCIF)              !00127D01
*              CM = Customer/Card Memo File (CCMF)                     !00127D02
                                                                       !00127D03
*              CO = Corporate Check File (CCF)                         !00127C0I
*              CP = Customer/Personal Id Relation Table (CPIT)         !00127C0J
                                                                       !00127C0K
*              CS = Check Status File (CSF)                            !00127A09
                                                                       !00127B03
                                                                       !00127C0L
*              CT = Customer Table (CSTT)                              !00127C0M
                                                                       !00127C0N
                                                                       !00127C0O
                                                                       !00127C0P
                                                                       !00127B05
*              DA = PBF for checking or NOW accounts only              !00127A0A
*              MB = Mail Box File (MBF)                                !00127A0B
*              NB = No Book File (NBF)                                 !00127A0C
*              NF = Negative Card File (NEG)                           !00127A0D
                                                                       !00127C0Q
                                                                       !00127C0R
                                                                       !00127C0S
*              PF = PBF for all account types                          !00127A0E
                                                                       !00127C0T
*              PT = Personal Information Table (PIT)                   !00127C0U
                                                                       !00127C0V
                                                                       !00127C0W
*              SD = Switch Dispute File (SDF)                          !00127A0F
*              SP = Stop Payment File (SPF)                            !00127A0G
*              SV = PBF for savings accounts only                      !00127A0H
                                                                       !00127B06
*              TH = Transaction History File (THF)                     !00127B07
                                                                       !00127B08
*              WH = Warning/Hold/Float File (WHFF)                     !00127A0I
                                                                       !00127A0J
                                                                       !00128A00
                                                                       !00128A01
                                                                       !00128A02
*                                                                     !!00145
*              A single PBF can contain multiple account types, or a  !!00146
*              PBF can contain a single account type.                 !!00147
*                                                                     !!00148
   02  APPL                          PIC XX.                           !00149
                                                                       !00150
*                                                                     !!00151
*              The refresh group to be refreshed.  Refresh groups     !!00152
*              identify groupings of institutions that share the same !!00153
*              physical files.   Institutions are assigned to refresh !!00154
*              groups via the value in the REFR-GRP field in the Base !!00155
*              segment of the Institution Definition File (IDF).      !!00156
*                                                                     !!00157
   02  GRP                           PIC XXXX.                         !00158
                                                                       !00159
                                                                       !00160
*                                                                     !!00161
*              The date (YYYYMMDD) that this tape was created.        !!00162
*                                                                     !!00163
   02  TAPE-DAT                      PIC X(8).                         !00164
                                                                       !00165
*                                                                     !!00166
*              The time (HHMM) that this tape was created.            !!00167
*                                                                     !!00168
   02  TAPE-TIM                      PIC 9(4).                         !00169
                                                                       !00170
*                                                                     !!00171
*              The identifier assigned to the logical network in which!!00172
*              the records being refreshed reside.                    !!00173
*                                                                     !!00174
   02  LN                            PIC X(4).                         !00175
                                                                       !00176
*                                                                     !!00177
*              The ACI-assigned release number identifying the BASE24 !!00178
*              software release with which the BASE24 file being      !!00179
                                                                       !00180B00
                                                                       !00180B01
                                                                       !00180E00
*              refreshed is compatible.  Valid values are:             !
*              60, 50 and 11.                                          !00180E03
                                                                       !00180E04
*              Note:  The value "11" pertains only to                  !00180E05
*              BASE24-telebanking.                                     !00180E06
                                                                       !00180E07
                                                                       !00180E08
                                                                       !00180E09
                                                                       !00180E0A
*                                                                     !!00189
   02  REL-NUM                       PIC 9(2).                         !00190
                                                                       !00191
                                                                       !00192
*                                                                     !!00193
*              Indicates the file partition to be refreshed, if the   !!00194
*              file is partitioned.  The value in this field is only  !!00195
*              used for full-file refreshes; it should be set to      !!00196
*              blanks for partial-file refreshes.  Valid values are:  !!00197
*                                                                     !!00198
*              blanks = The tape records represent the entire file.   !!00199
*              00     = The tape records represent those records to be!!00200
*                       placed in the primary file partition.         !!00201
*              01-15  = The tape records represent those records to be!!00202
*                       placed in the file partition indicated.       !!00203
*                                                                     !!00204
   02  PART-NUM                      PIC X(2).                         !00205
*                                                                     !!00206
                                                                       !00206A00
*              The following fields contain information about the last !00206A01
*              extract of the BASE24-atm Transaction Log File (TLF).   !00206A02
*              These fields are used for CAF and PBF refreshes with    !00206A03
*              impacting when the BASE24-atm product is part of the    !00206A04
*              BASE24 system.                                          !00206A05
                                                                       !00206A06
                                                                       !00207A00
                                                                       !00207A01
                                                                       !00207A02
*                                                                     !!00212
    02  ATM.                                                           !00213
*                                                                     !!00214
*              The date (YYMMDD) of the last TLF that was fully       !!00215
*              extracted.  A value is required in this field when     !!00216
*              performing a CAF or PBF refresh with impacting and     !!00217
*              BASE24-atm is installed.  The value in this field      !!00218
*              cannot be overridden.                                  !!00219
*                                                                     !!00220
        04  LST-EXTR-DAT           PIC X(6).                           !00221
*                                                                     !!00222
                                                                       !00222A00
*              The date (YYYYMMDD) of the last TLF record extracted.   !00222A01
*              The IMP-STRT-DAT and IMP-STRT-TIM fields can be used to !00222A02
*              specify a timestamp value.  If specified, Refresh will  !00222A03
*              use this timestamp value as an indication of where      !00222A04
*              impacting will start in the initial TLF.                !00222A05
*                                                                      !00222A06
*              A value is required in this field when performing a CAF !00222A07
*              or PBF refresh with impacting and BASE24-atm is         !00222A08
*              installed.  The value in this field can be overridden   !00222A09
*              when Refresh is started by the specifying a date in ATM !00222A0A
*              IMPACT START DATE field on REFR screen 1, or by         !00222A0B
*              specifying a <atm impact start date/time> value from    !00222A0C
*              the Network Control Supervisor (NCS) screen.            !00222A0D
*                                                                      !00222A0E
*              When performing multiple partial extracts of the log    !00222A0F
*              file, extract places the timestamp value of the last    !00222A0G
*              log file record extracted in the first 20 bytes of      !00222A0H
                                                                       !00222E00
                                                                       !00222E01
*              USER-FLD2 of the file trailer record.                   !00222E02
*              The value in the USER-FLD2 field of the                 !00222E03
                                                                       !00222E04
*              last partial extract used to update the host files can  !00222A0K
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00222A0L
*              IMP-STRT-TIM fields.                                    !00222A0M
*                                                                      !00222A0N
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00222A0O
*              IMP-STRT-TIM fields indicates to start impacting at the !00222A0P
*              beginning of the TLF.                                   !00222A0Q
                                                                       !00222A0R
                                                                       !00223A00
                                                                       !00223A01
                                                                       !00223A02
*                                                                     !!00231
        04  IMP-STRT-DAT            PIC X(8).                          !00232
*                                                                     !!00233
                                                                       !00233A00
*              The time (HHMMSSMMMMMM) of the last TLF record          !00233A01
*              extracted.  The IMP-STRT-DAT and IMP-STRT-TIM fields    !00233A02
*              can be used to specify a timestamp value.  If           !00233A03
*              specified, Refresh will use this timestamp value as an  !00233A04
*              indication of where impacting will start in the initial !00233A05
*              TLF.                                                    !00233A06
*                                                                      !00233A07
*              A value is required in this field when performing a CAF !00233A08
*              or PBF refresh with impacting and BASE24-atm is         !00233A09
*              installed.  The value in this field can be overridden   !00233A0A
*              when Refresh is started by the specifying a date in ATM !00233A0B
*              IMPACT START TIME field on REFR screen 1, or by         !00233A0C
*              specifying a <atm impact start date/time> value from    !00233A0D
*              the Network Control Supervisor (NCS) screen.            !00233A0E
*                                                                      !00233A0F
*              When performing multiple partial extracts of the log    !00233A0G
*              file, extract places the timestamp value of the last    !00233A0H
*              log file record extracted in the first 20 bytes of      !00233A0I
                                                                       !00233E00
                                                                       !00233E01
*              USER-FLD2 of the file trailer record.                   !00233E02
*              The value in the USER-FLD2 field of the                 !00233E03
                                                                       !00233E04
*              last partial extract used to update the host files can  !00233A0L
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00233A0M
*              IMP-STRT-TIM fields.                                    !00233A0N
*                                                                      !00233A0O
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00233A0P
*              IMP-STRT-TIM fields indicates to start impacting at the !00233A0Q
*              beginning of the TLF.                                   !00233A0R
                                                                       !00233A0S
                                                                       !00234A00
                                                                       !00234A01
                                                                       !00234A02
*                                                                     !!00242
        04  IMP-STRT-TIM            PIC X(12).                         !00243
*                                                                     !!00244
*              The following fields contain information about the last!!00245
*              extract of the POS Transaction Log File (PTLF).  These !!00246
*              fields are used for PBF refreshes with impacting when  !!00247
*              the BASE24-pos product is part of the BASE24 system.   !!00248
*                                                                     !!00249
    02  POS.                                                           !00250
*                                                                     !!00251
*              The date (YYMMDD) of the last PTLF that was fully      !!00252
*              extracted.  A value is required in this field when     !!00253
*              performing a PBF refresh with impacting and BASE24-pos !!00254
*              is installed.  The value in this field cannot be       !!00255
*              overridden.                                            !!00256
*                                                                     !!00257
        04  LST-EXTR-DAT           PIC X(6).                           !00258
*                                                                     !!00259
*              The date (YYYYMMDD) of the last PTLF record extracted. !!00260
                                                                       !00260A00
*              The IMP-STRT-DAT and IMP-STRT-TIM fields can be used to !00260A01
*              specify a timestamp value.  If specified, Refresh will  !00260A02
*              use this timestamp value as an indication of where      !00260A03
*              impacting will start in the initial PTLF.               !00260A04
*                                                                      !00260A05
*              A value required in this field when performing a PBF    !00260A06
*              refresh with impacting and BASE24-pos is installed.     !00260A07
*              The value in this field can be overridden when Refresh  !00260A08
*              is started by the specifying a date in POS IMPACT START !00260A09
*              DATE field on REFR screen 1, or by specifying a <pos    !00260A0A
*              impact start date/time> value from the Network Control  !00260A0B
*              Supervisor (NCS) screen.                                !00260A0C
*                                                                      !00260A0D
*              When performing multiple partial extracts of the log    !00260A0E
*              file, extract places the timestamp value of the last    !00260A0F
*              log file record extracted in the first 20 bytes of      !00260A0G
                                                                       !00260E00
                                                                       !00260E01
*              USER-FLD2 of the file trailer record.                   !00260E02
*              The value in the USER-FLD2 field of the                 !00260E03
                                                                       !00260E04
*              last partial extract used to update the host files can  !00260A0J
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00260A0K
*              IMP-STRT-TIM fields.                                    !00260A0L
*                                                                      !00260A0M
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00260A0N
*              IMP-STRT-TIM fields indicates to start impacting at the !00260A0O
*              beginning of the PTLF.                                  !00260A0P
                                                                       !00260A0Q
                                                                       !00261A00
                                                                       !00261A01
                                                                       !00261A02
*                                                                     !!00268
        04  IMP-STRT-DAT            PIC X(8).                          !00269
*                                                                     !!00270
                                                                       !00270A00
*              The time (HHMMSSMMMMMM) of the last PTLF record         !00270A01
*              extracted.  The IMP-STRT-DAT and IMP-STRT-TIM fields    !00270A02
*              can be used to specify a timestamp value.  If           !00270A03
*              specified, Refresh will use this timestamp value as an  !00270A04
*              indication of where impacting will start in the initial !00270A05
*              PTLF.                                                   !00270A06
*                                                                      !00270A07
*              A value is required in this field when performing a PBF !00270A08
*              refresh with impacting and BASE24-pos is installed.     !00270A09
*              The value in this field can be overridden when Refresh  !00270A0A
*              is started by the specifying a date in POS IMPACT START !00270A0B
*              TIME field on REFR screen 1, or by specifying a <pos    !00270A0C
*              impact start date/time> value from the Network Control  !00270A0D
*              Supervisor (NCS) screen.                                !00270A0E
*                                                                      !00270A0F
*              When performing multiple partial extracts of the log    !00270A0G
*              file, extract places the timestamp value of the last    !00270A0H
*              log file record extracted in the first 20 bytes of      !00270A0I
                                                                       !00270E00
                                                                       !00270E01
*              USER-FLD2 of the file trailer record.                   !00270E02
*              The value in the USER-FLD2 field of the                 !00270E03
                                                                       !00270E04
*              last partial extract used to update the host files can  !00270A0L
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00270A0M
*              IMP-STRT-TIM fields.                                    !00270A0N
*                                                                      !00270A0O
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00270A0P
*              IMP-STRT-TIM fields indicates to start impacting at the !00270A0Q
*              beginning of the PTLF.                                  !00270A0R
                                                                       !00270A0S
                                                                       !00271A00
                                                                       !00271A01
                                                                       !00271A02
*                                                                     !!00279
        04  IMP-STRT-TIM            PIC X(12).                         !00280
*                                                                     !!00281
*              The following fields contain information about the last!!00282
*              extract of the Teller Transaction Log File (TTLF).     !!00283
*              These fields are used for NBF, PBF, SPF, or WHFF       !!00284
*              refreshes with impacting when the BASE24-teller product!!00285
*              is part of the BASE24 system.                          !!00286
*                                                                     !!00287
    02  TLR.                                                           !00288
*                                                                     !!00289
*              The date (YYMMDD) of the last TTLF that was fully      !!00290
*              extracted.  A value is required in this field when     !!00291
*              performing an NBF, PBF, SPF, or WHFF refresh with      !!00292
*              impacting and BASE24-teller is installed.  The value in!!00293
*              this field cannot be overridden.                       !!00294
*                                                                     !!00295
        04  LST-EXTR-DAT           PIC X(6).                           !00296
*                                                                     !!00297
                                                                       !00297A00
*              The date (YYYYMMDD) of the last TTLF record extracted.  !00297A01
*              The IMP-STRT-DAT and IMP-STRT-TIM fields can be used to !00297A02
*              specify a timestamp value.  If specified, Refresh will  !00297A03
*              use this timestamp value as an indication of where      !00297A04
*              impacting will start in the initial TTLF.               !00297A05
*                                                                      !00297A06
*              A value required in this field when performing an NBF,  !00297A07
*              PBF, SPF, or WHFF refresh with impacting and BASE24-    !00297A08
*              teller is installed.  The value in this field can be    !00297A09
*              overridden when Refresh is started by the specifying a  !00297A0A
*              date in TLR IMPACT START DATE field on REFR screen 1,   !00297A0B
*              or by specifying a <teller impact start date/time>      !00297A0C
*              value from the Network Control Supervisor (NCS) screen. !00297A0D
*                                                                      !00297A0E
*              When performing multiple partial extracts of the log    !00297A0F
*              file, extract places the timestamp value of the last    !00297A0G
*              log file record extracted in the first 20 bytes of      !00297A0H
                                                                       !00297E00
                                                                       !00297E01
*              USER-FLD2 of the file trailer record.                   !00297E02
*              The value in the USER-FLD2 field of the                 !00297E03
                                                                       !00297E04
*              last partial extract used to update the host files can  !00297A0K
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00297A0L
*              IMP-STRT-TIM fields.                                    !00297A0M
*                                                                      !00297A0N
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00297A0O
*              IMP-STRT-TIM fields indicates to start impacting at the !00297A0P
*              beginning of the TTLF.                                  !00297A0Q
                                                                       !00297A0R
                                                                       !00298A00
                                                                       !00298A01
                                                                       !00298A02
*                                                                     !!00306
        04  IMP-STRT-DAT            PIC X(8).                          !00307
*                                                                     !!00308
                                                                       !00308A00
*              The time (HHMMSSMMMMMM) of the last TTLF record         !00308A01
*              extracted.  The IMP-STRT-DAT and IMP-STRT-TIM fields    !00308A02
*              can be used to specify a timestamp value.  If           !00308A03
*              specified, Refresh will use this timestamp value as an  !00308A04
*              indication of where impacting will start in the initial !00308A05
*              TTLF.                                                   !00308A06
*                                                                      !00308A07
*              A value is required in this field when performing an    !00308A08
*              NBF, PBF, SPF, or WHFF refresh with impacting and       !00308A09
*              BASE24-teller is installed.  The value in this field    !00308A0A
*              can be overridden when Refresh is started by the        !00308A0B
*              specifying a date in TLR IMPACT START TIME field on     !00308A0C
*              REFR screen 1, or by specifying a <teller impact start  !00308A0D
*              date/time> value from the Network Control Supervisor    !00308A0E
*              (NCS) screen.                                           !00308A0F
*                                                                      !00308A0G
*              When performing multiple partial extracts of the log    !00308A0H
*              file, extract places the timestamp value of the last    !00308A0I
*              log file record extracted in the first 20 bytes of      !00308A0J
                                                                       !00308E00
                                                                       !00308E01
*              USER-FLD2 of the file trailer record.                   !00308E02
*              The value in the USER-FLD2 field of the                 !00308E03
                                                                       !00308E04
*              last partial extract used to update the host files can  !00308A0M
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00308A0N
*              IMP-STRT-TIM fields.                                    !00308A0O
*                                                                      !00308A0P
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00308A0Q
*              IMP-STRT-TIM fields indicates to start impacting at the !00308A0R
*              beginning of the TTLF.                                  !00308A0S
                                                                       !00308A0T
                                                                       !00309A00
                                                                       !00309A01
                                                                       !00309A02
*                                                                     !!00318
        04  IMP-STRT-TIM            PIC X(12).                         !00319
*                                                                     !!00320
*              Indicates whether CAF, NBF, PBF, SPF, or WHFF records  !!00321
*              are to be impacted.  Valid values are:                 !!00322
*                                                                     !!00323
*              0 = Do not impact refreshed records.                   !!00324
*              1 = Impact refreshed records.                          !!00325
*                                                                     !!00326
*              Impacting refers to the process by which transactions  !!00327
*              occurring since the last transaction log file extract  !!00328
*              are applied to the new records created or updated by   !!00329
*              Refresh.                                               !!00330
*                                                                     !!00331
*              The value in this field is only used for CAF, NBF, PBF,!!00332
*              SPF, or WHFF refreshes. Otherwise, it should be set to !!00333
*              a blank or zero.                                       !!00334
*                                                                     !!00335
   02  IMP-TYP                       PIC X.                            !00336
                                                                       !00337
                                                                       !00338
*                                                                     !!00339
*              The power of 10 to be used when evaluating the         !!00340
*              following CAF amount fields:                           !!00341
*                                                                     !!00342
*              o  GRP-LMT.TTL-WDL-LMT, GRP-LMT.OFFL-WDL-LMT, GRP-     !!00343
*                 LMT.TTL-CCA-LMT, GRP-LMT.OFFL-CCA-LMT, GRP-LMT.AGGR-!!00344
*                 LMT, and GRP-LMT.OFFL-AGGR-LMT in the Base segment  !!00345
*              o  GRP-LMT.TTL-WDL-LMT, GRP-LMT.OFFL-WDL-LMT, GRP-     !!00346
*                 LMT.TTL-CCA-LMT, and GRP-LMT.OFFL-CCA-LMT in the    !!00347
*                 BASE24-atm segment                                  !!00348
*              o  GRP-LMT.TTL-PUR-LMT, GRP-LMT.OFFL-PUR-LMT, GRP-     !!00349
*                 LMT.TTL-CCA-LMT, GRP-LMT.OFFL-CCA-LMT, GRP-LMT.TTL- !!00350
*                 WDL-LMT, GRP-LMT.OFFL-WDL-LMT, GRP-LMT.TTL-RFND-CR- !!00351
*                 LMT, and GRP-LMT.OFFL-RFND-CR-LMT in the BASE24-pos !!00352
*                 segment                                             !!00353
                                                                       !00353A00
*              o  GRP-LMT.TTL-CHK-LMT, GRP-LMT.OFFL-CHK-LMT, GRP-      !00353A01
*                 LMT.TTL-CSF-CHK-LMT, and GRP-LMT.OFFL-CSF-CHK-LMT    !00353A02
*                 in the BASE24-atm SSB Check (SSBC) segment           !00353A03
                                                                       !00353A04
*                                                                     !!00354
*              Refresh multiplies the CAF amount fields on the refresh!!00355
*              tape or disk by the appropriate power of 10 before     !!00356
*              applying them to the CAF.  Valid values are:           !!00357
*                                                                     !!00358
*              _ = Not applicable.  This is not a CAF refresh.  (_    !!00359
*                  indicates a space).                                !!00360
*              0 = Use the CAF amount field as it appears in the      !!00361
*                  message.                                           !!00362
*              1 = Multiply the refresh amount fields by 10.          !!00363
*              2 = Multiply the refresh amount fields by 100.         !!00364
*              3 = Multiply the refresh amount fields by 1000.        !!00365
*                                                                     !!00366
   02 CAF-EXPNT                      PIC X(1).                         !00367
*                                                                     !!00368
*              Indicates whether the host provides preauthorization   !!00369
*              information.  This field is used for partial refreshes !!00370
*              of the CAF and PBF.  It specifies whether Refresh      !!00371
*              retains the current preauthorization holds in the CAF  !!00372
*              or PBF, or replaces them with the information from the !!00373
*              tape.  Valid values are:                               !!00374
*                                                                     !!00375
*              0 = Host does not provide preauthorization holds       !!00376
*              1 = Host provides preauthorization holds.              !!00377
*                                                                     !!00378
   02 PRE-AUTH-SUPPORT               PIC X(1).                         !00379
*                                                                     !!00380
*              This field is not used.                                !!00381
*                                                                     !!00382
   02  USER-FLD2                     PIC X(5).                         !00383
                                                                       !00384
                                                                       !00384B00
*                                                                      !00384B01
*              The following fields contain information about the      !00384B02
*              last extract of the BASE24 Telebanking Transaction      !00384B03
                                                                       !00384E00
*              Log File (ITLF).  The following TB structure is used    !00384E01
                                                                       !00384E02
                                                                       !00384C00
*              when performing a full or partial PBF refresh with      !00384C01
*              impacting.                                              !00384C02
                                                                       !00384C03
                                                                       !00384C04
                                                                       !00384C05
                                                                       !00384C06
                                                                       !00384C07
                                                                       !00384C08
                                                                       !00384C09
   02  TB.                                                             !00384B09
*                                                                      !00384B0A
                                                                       !00384E03
*              The date (YYMMDD) of the last ITLF that was fully       !00384E04
                                                                       !00384E05
                                                                       !00384E06
                                                                       !00384E07
*              extracted.  A value is required in this field when      !00384B0C
                                                                       !00384C0A
*              performing a PBF refresh with impacting and             !00384C0B
                                                                       !00384C0C
                                                                       !00384C0D
                                                                       !00384C0E
*              BASE24-telebanking is installed.  The value in this     !00384B0E
*              field cannot be overridden.                             !00384B0F
*                                                                      !00384B0G
       04  LST-EXTR-DAT              PIC X(6).                         !00384B0H
*                                                                      !00384B0I
                                                                       !00384E08
*              The date (YYYYMMDD) of the last ITLF record extracted.  !00384E09
                                                                       !00384E0A
                                                                       !00384E0B
                                                                       !00384E0C
                                                                       !00384B0K
*              The IMP-STRT-DAT and IMP-STRT-TIM fields can be used to !00384B0L
*              specify a timestamp value.  If specified, Refresh will  !00384B0M
*              use this timestamp value as an indication of where      !00384B0N
                                                                       !00384E0D
*              impacting will start in the initial ITLF.               !00384E0E
                                                                       !00384E0F
                                                                       !00384E0G
                                                                       !00384E0H
*                                                                      !00384B0P
                                                                       !00384C0F
*              A value required in this field when performing a        !00384C0G
*              PBF refresh with impacting and BASE24-telebanking is    !00384C0H
                                                                       !00384C0I
                                                                       !00384C0J
                                                                       !00384C0K
                                                                       !00384C0L
*              installed.  The value in this field can be overridden   !00384B0S
*              when Refresh is started by the specifying a date in TB  !00384B0T
*              IMPACT START DATE field on REFR screen 1, or by         !00384B0U
*              specifying a <telebanking impact start date/time> value !00384B0V
*              from the Network Control Supervisor (NCS) screen.       !00384B0W
*                                                                      !00384B0X
*              When performing multiple partial extracts of the log    !00384B0Y
*              file, extract places the timestamp value of the last    !00384B0Z
*              log file record extracted in the first 20 bytes of      !00384B10
                                                                       !00384E0I
                                                                       !00384E0J
*              USER-FLD2 of the file trailer record.                   !00384E0K
*              The value in the USER-FLD2 field of the                 !00384E0L
                                                                       !00384E0M
*              last partial extract used to update the host files can  !00384B13
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00384B14
*              IMP-STRT-TIM fields.                                    !00384B15
*                                                                      !00384B16
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00384B17
*              IMP-STRT-TIM fields indicates to start impacting at the !00384B18
                                                                       !00384E0N
*              beginning of the ITLF.                                  !00384E0O
                                                                       !00384E0P
                                                                       !00384E0Q
                                                                       !00384E0R
*                                                                      !00384B1A
       04  IMP-STRT-DAT              PIC X(8).                         !00384B1B
*                                                                      !00384B1C
                                                                       !00384E0S
*              The time (HHMMSSMMMMMM) of the last ITLF record         !00384E0T
                                                                       !00384E0U
                                                                       !00384E0V
                                                                       !00384E0W
*              extracted.  The IMP-STRT-DAT and IMP-STRT-TIM fields    !00384B1E
*              can be used to specify a timestamp value.  If           !00384B1F
*              specified, Refresh will use this timestamp value as an  !00384B1G
*              indication of where impacting will start in the initial !00384B1H
                                                                       !00384E0X
*              ITLF.                                                   !00384E0Y
                                                                       !00384E0Z
                                                                       !00384E10
                                                                       !00384E11
*                                                                      !00384B1J
*              A value is required in this field when performing a     !00384B1K
                                                                       !00384C0M
*              PBF refresh with impacting and                          !00384C0N
                                                                       !00384C0O
                                                                       !00384C0P
                                                                       !00384C0Q
*              BASE24-telebanking is installed.  The value in this     !00384B1M
*              field can be overridden when Refresh is started by the  !00384B1N
*              specifying a date in TB IMPACT START TIME field on REFR !00384B1O
*              screen 1, or by specifying a <telebanking impact start  !00384B1P
*              date/time> value from the Network Control Supervisor    !00384B1Q
*              (NCS) screen.                                           !00384B1R
*                                                                      !00384B1S
*              When performing multiple partial extracts of the log    !00384B1T
*              file, extract places the timestamp value of the last    !00384B1U
*              log file record extracted in the first 20 bytes of      !00384B1V
                                                                       !00384E12
                                                                       !00384E13
*              USER-FLD2 of the file trailer record.                   !00384E14
*              The value in the USER-FLD2 field of the                 !00384E15
                                                                       !00384E16
*              last partial extract used to update the host files can  !00384B1Y
*              be echoed back to Refresh in the IMP-STRT-DAT and       !00384B1Z
*              IMP-STRT-TIM fields.                                    !00384B20
*                                                                      !00384B21
*              All blanks or all nines ("9"s) for the IMP-STRT-DAT and !00384B22
*              IMP-STRT-TIM fields indicates to start impacting at the !00384B23
                                                                       !00384E17
*              beginning of the ITLF.                                  !00384E18
                                                                       !00384E19
                                                                       !00384E1A
                                                                       !00384E1B
*                                                                      !00384B25
       04  IMP-STRT-TIM              PIC X(12).                        !00384B26
                                                                       !00384B27
                                                                       !00385
END                                                                    !00386
                                                                       !00387
?nocomments
?PAGE "RBH - Refresh Bank Header Record"
?SECTION RBH
*#####################################################################!!00394
*#                                                                   #!!00395
*#       RBH -         REFRESH BANK HEADER RECORD                    #!!00396
*#                                                                   #!!00397
*#####################################################################!!00398
                                                                       !00399
                                                                       !00400
?comments
*                                                                     !!00403
*              The organization header identifies, by FIID, the       !!00404
*              institution whose files are to be refreshed.           !!00405
*                                                                     !!00406
*              One organization header is required for each set of    !!00407
*              institution records on the refresh tape.  If records   !!00408
*              are not grouped by institution, only one organization  !!00409
*              header is required on the tape.                        !!00410
*                                                                     !!00411
RECORD RBH.                                                            !00412
                                                                       !00413
                                                                       !00414
*                                                                     !!00415
*              The record number.  The value in this field should be  !!00416
*              one greater than that in the previous record, which    !!00417
*              must be a file header or an organization trailer.      !!00418
*                                                                     !!00419
   02  REC-CNT                       PIC 9(9).                         !00420
                                                                       !00421
                                                                       !00422
*                                                                     !!00423
*              The record type.  This field must contain the value BH !!00424
*              (organization header record).                          !!00425
*                                                                     !!00426
   02  REC-TYP                       PIC X(2).                         !00427
                                                                       !00428
                                                                       !00429
*                                                                     !!00430
*              The FIID of the institution whose refresh records      !!00431
*              follow.  The entry in this field is left-justified and !!00432
*              blank-filled on the right.  It is only used with PBF   !!00433
                                                                       !00434B00
*              refreshes and THF refreshes.                           !
                                                                       !00434B03
*                                                                     !!00435
                                                                       !00435B00
*              For THF refreshes, this field combined with RFH.GRP     !00435B01
*              and RBH.END-RANGE allow a file to be optionally         !00435B02
*              defined at a lower level than Refresh Group.            !00435B03
                                                                       !00435B04
   02  CRD-ISS                       PIC X(4).                         !00436
                                                                       !00437
                                                                       !00437B00
*              The account number end range that is associated         !00437B01
*              with the refresh records for this institution.          !00437B02
*              This field combined with RFH.GRP and RBH.CRD-ISS        !00437B03
*              allow a file to be optionally defined at a lower        !00437B04
*              level than Refresh Group.  This field is only used      !00437B05
*              for THF refreshes.                                      !00437B06
*                                                                      !00437B07
   02  END-RANGE                     PIC X(28).                        !00437B08
                                                                       !00437B09
*                                                                     !!00438
*              This field is not used.  It should be left blank.      !!00439
*                                                                     !!00440
   02  USER-FLD                      PIC X.                            !00441
                                                                       !00442
END                                                                    !00443
                                                                       !00444
?nocomments
?PAGE   "RBT - Refresh Bank Trailer Record"
?SECTION RBT
*#####################################################################!!00451
*#                                                                   #!!00452
*#       RBT -        REFRESH BANK TRAILER RECORD                    #!!00453
*#                                                                   #!!00454
*#####################################################################!!00455
                                                                       !00456
?comments
*                                                                     !!00459
*              The organization trailer signals the end of an         !!00460
*              institution's refresh records.  It contains a          !!00461
*              verification count and amount for the institution's    !!00462
*              records, which Refresh uses to check its processing.   !!00463
*                                                                     !!00464
*              One organization trailer is required for each set of   !!00465
*              institution records on the refresh tape.  If records   !!00466
*              are not grouped by institution, only one organization  !!00467
*              trailer is required on the tape.                       !!00468
*                                                                     !!00469
RECORD RBT.                                                            !00470
                                                                       !00471
                                                                       !00472
*                                                                     !!00473
*              The record number.  The value in this field should be  !!00474
*              one greater than that in the previous record.          !!00475
*                                                                     !!00476
   02  REC-CNT                       PIC 9(9).                         !00477
                                                                       !00478
                                                                       !00479
*                                                                     !!00480
*              The record type.  This field must contain the value BT !!00481
*              (organization trailer record).                         !!00482
*                                                                     !!00483
   02  REC-TYP                       PIC X(2).                         !00484
                                                                       !00485
                                                                       !00486
                                                                       !00487
*                                                                     !!00488
                                                                       !00488A00
*              A verification amount used with NBF, PBF, SPF, and WHFF !00488A01
*              refreshes.  This amount must contain the sum of all NBF !00488A02
*              transaction amounts, PBF ledger balances, SPF amounts,  !00488A03
*              or WHFF amounts (respectively) included for the         !00488A04
*              organization.                                           !00488A05
*                                                                      !00488A06
*              To derive this sum, a host must add together the        !00488A07
*              NBF.TRAN-AMT, PBF.BASE.LEDG-BAL, SPF.AMT, or            !00488A08
*              WHFF.PRIKEY.AMT field values for all NBF, PBF, SPF, and !00488A09
*              WHFF records.                                           !00488A0A
                                                                       !00488A0B
                                                                       !00489A00
                                                                       !00489A01
                                                                       !00489A02
*                                                                     !!00495
   02  AMT                           PIC 9(18).                        !00496
                                                                       !00497
                                                                       !00498
                                                                       !00499
*                                                                     !!00500
*              The number of application records for the organization,!!00501
*              not including the organization header or trailer       !!00502
*              records.                                               !!00503
*                                                                     !!00504
   02  NUM-RECS                      PIC 9(9).                         !00505
                                                                       !00506
END                                                                    !00507
                                                                       !00508
?nocomments
?PAGE   "RFT - Refresh File Trailer Record"
?SECTION RFT
*#####################################################################!!00515
*#                                                                   #!!00516
*#       RFT -         REFRESH FILE TRAILER RECORD                   #!!00517
*#                                                                   #!!00518
*#####################################################################!!00519
                                                                       !00520
?comments
*                                                                     !!00523
*              The file trailer signals the end of the refresh        !!00524
*              records.  It contains a verification count, which is   !!00525
*              used by Refresh to check its processing.               !!00526
*                                                                     !!00527
*              One file trailer is required for each refresh tape.    !!00528
*                                                                     !!00529
RECORD RFT.                                                            !00530
                                                                       !00531
                                                                       !00532
*                                                                     !!00533
*              The record number for this record.  The value in this  !!00534
*              field should be one greater than that in the previous  !!00535
*              record, which must be an organization trailer record.  !!00536
*                                                                     !!00537
   02  REC-CNT                       PIC 9(9).                         !00538
                                                                       !00539
                                                                       !00540
*                                                                     !!00541
*              The record type.  This field must contain the value FT !!00542
*              (file trailer record).                                 !!00543
*                                                                     !!00544
   02  REC-TYP                       PIC X(2).                         !00545
                                                                       !00546
                                                                       !00547
*                                                                     !!00548
*              The total number of refresh records on the tape,       !!00549
*              excluding file headers and trailers and organization   !!00550
*              headers and trailers.                                  !!00551
*                                                                     !!00552
   02  NUM-RECS                      PIC 9(9).                         !00553
                                                                       !00554
*                                                                     !!00555
*              Indicates whether another input file follows.  Valid   !!00556
*              values are:                                            !!00557
*                                                                     !!00558
*              0 = This is the last file in the input file.           !!00559
*              1 = A subsequent file is present in the input file.    !!00560
*                                                                     !!00561
   02  NXT-FILE-IND                  PIC X.                            !00562
*                                                                     !!00563
*              This field is not used.  It should be left blank.      !!00564
*                                                                     !!00565
   02  USER-FLD1                     PIC X(3).                         !00566
END                                                                    !00567
                                                                       !00568
?nocomments
