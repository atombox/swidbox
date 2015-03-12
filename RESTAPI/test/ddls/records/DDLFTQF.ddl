**FIX2.23  01/02/03  DDLFTQF 6005 DDL    BP60CRTA BP06007  E                 ***
**FIX2.14  05/03/01  DDLFTQF 6004 DDL    BP60CRTA BP04022  D                 ***
**SEQ0.04  11/01/00  DDLFTQF 6003 DDL    BP60CRTA BP04000  C                 ***
**SYNC.04  12/08/98  DDLFTQF 5303 DDL    BP53CRTA BP04000  C                 ***
**FIX2.03  08/28/98  DDLFTQF 5303 DDL    BP53CRTA BP03000  C                 ***
**FIX2.06  08/21/98  DDLFTQF 5003 DDL    BP51CRTA BP03011  C                 ***
**SYNC.03  08/22/97  DDLFTQF 5002 DDL    BP51CRTA BP03000  B                 ***
**SYNC.02  06/25/96  DDLFTQF 5002 DDL    BP51CRTA BP02000  B                 ***
**FIX2.00  09/28/93  DDLFTQF 5002 DDL    BP50CRTA BP50032  B                 ***
**FIX1.16  01/22/88  DDLFTQF 5001 DDL    BP50CRTA BP34030  A                 ***
!*SEQ2.17  10/23/87  DDLFTQF 3400 DDL    BP34CRTA                              !
?PAGE "TQF - Terminal Queue File"
?SECTION TQF
********************************************************************** !00000D00
*                                                                    * !00000D01
*                             BASE24-pos                             * !00000D02
*                             ----------                             * !00000D03
*                                                                    * !00000D04
*                  DDL for the Terminal Queue File                   * !00000D05
*                                                                    * !00000D06
*                   Proprietary Software Product                     * !00000D07
*                                                                    * !00000D08
*                         ACI Worldwide Inc.                         * !00000D09
*                       330 South 108th Avenue                       * !00000D0A
*                       Omaha, Nebraska  68154                       * !00000D0B
*                           (402) 390-7600                           * !00000D0C
*                                                                    * !00000D0D
*    Copyright by ACI Worldwide Inc. 1987 - 2001                     * !00000D0E
*                                                                    * !00000D0F
*    All Rights Reserved.  No part of this document may be           * !00000D0G
*    reproduced in any manner without the prior written consent of   * !00000D0H
*    ACI Worldwide Inc.  This material is a trade secret and its     * !00000D0I
*    confidentiality is strictly maintained.  Use of any copyright   * !00000D0J
*    notice does not imply unrestricted or public access to these    * !00000D0K
*    materials.                                                      * !00000D0L
*                                                                    * !00000D0M
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      * !00000D0N
*                                                                    * !00000D0O
********************************************************************** !00000D0P
*                                                                      !00000D0Q
* Record of Changes:                                                   !00000D0R
*                                                                      !00000D0S
* Date        Person/Emp #                                             !00000D0T
* ---------   ------------                                             !00000D0U
                                                                       !00000D0V
!                                                                     !!00005
! History section                                                     !!00006
!---------------------------------------------------------------------!!00007
!                                                                    |!!00008
! 08/20/87     3.4         JHK                                       ! !00009
!                                                                    ! !00010
! SYMPTOM:                                                           ! !00011
! PROBLEM:                                                           ! !00012
! FIX:                                                               ! !00013
! IMPLEMENTATION:                                                    ! !00014
! REFERENCE:  Initial release of DDLs.                               ! !00015
!                                                                    |!!00016
                                                                       !00016A00
                                                                       !00016A01
! 21JAN88       TYPE OF FIX:    Enhancement     Developer:  RHB      ! !00016A02
! SYMPTOM:  CRT AUTH transaction denied by VISANET Interface.        ! !00016A03
! PROBLEM:  The VISANET Interface needs to have the Country Code and ! !00016A04
!           Zip Code of the Terminal initating the request.          ! !00016A05
! FIX:      Added Country Code and Zip Code CRTAUTH-MSG DDL which is ! !00016A06
!           referenced by this DDL.                                  ! !00016A07
! IMPLEMENTATION:  Apply fix to the DDLGCATH, requestor/server and   ! !00016A08
!                  screens which reference these DDLS.               ! !00016A09
! REFERENCE: RPE E871216-1 and RPC 104735.                           ! !00016A0A
!                                                                    |!!00016A0B
                                                                       !00016A0C
                                                                       !00016B00
********************************************************************** !00016B01
*                        RELEASE 5.0                                 * !00016B02
********************************************************************** !00016B03
* 93/01/04       Release 5.0 Design Team                               !00016B04
* SYMPTOM:       BASE24-pos Release 5.0 Enhancements                   !00016B05
* PROBLEM:       (E) None.                                             !00016B06
* FIX            1. Added TKN-BUF to the TRAN-TBL so that token        !00016B07
*                   data can be saved for each transaction contained   !00016B08
*                   in the TRAN-TBL.                                   !00016B09
*                2. Added USER-FLD3 so that token data begins          !00016B0A
*                   on an even byte.                                   !00016B0B
* DEPENDENCIES:  All modules that source in the TQF must be            !00016B0C
*                recompiled.  Refer to the Release 5.0 Installation    !00016B0D
*                Documentation for a complete list of applicable       !00016B0E
*                modules.                                              !00016B0F
* REFERENCE:     BASE24 Release 5.0 External Specifications            !00016B0G
*                - Message Tokenization                                !00016B0H
                                                                       !00016B0I
                                                                       !00016C00
********************************************************************** !00016C01
*                        RELEASE 5.3                                 * !00016C02
********************************************************************** !00016C03
* 20AUG1997  NLG/1808                                                  !00016C04
* Symptom:   Card Verification Value 2 Enhancement.                    !00016C05
* Problem:   None.                                                     !00016C06
* Fix:       Decreased the size of the TKN-BUF to accomodate the new   !00016C07
*            fields in the CRTAUTH-MSG without increasing the size     !00016C08
*            of the TQF record.                                        !00016C09
* Dependency:Apply fixes to DDLFTQF, DDLGCATH, DDLPSTKN, CRTAUDHS,     !00016C0A
*            RQOLTS, SCRNOLT, RQPRFS, SVPRFS, SCRNPRF and re-make.     !00016C0B
* Reference: WO #980331-1                                              !00016C0C
                                                                       !00016C0D
* 20AUG1998   DAH/1602 GCS/643 ADS/1616                                !00016C0E
* Symptom:    If a transaction is selected from the lower part of      !00016C0F
*             the OLT and an adjustment is attempted but is            !00016C0G
*             declined, there is no way to go back and reverse the     !00016C0H
*             original transaction.                                    !00016C0I
* Problem:    Because the original TQF record is modified by the       !00016C0J
*             adjustment response, the reversal is disallowed          !00016C0K
*             because the response code is no longer an approval.      !00016C0L
* Fix:        Modify TQF to hold a new field (ADJ-STAT) which will     !00016C0M
*             indicate whether the adjustment was generated after      !00016C0N
*             selecting a transaction from the lower portion of the    !00016C0O
*             OLT or by entering it as a new transaction in the        !00016C0P
*             upper portion of the OLT.  If the declined adjustment    !00016C0Q
*             was generated by selecting from the lower portion of     !00016C0R
*             the OLT, a reversal of the original amount will be       !00016C0S
*             allowed.                                                 !00016C0T
* Dependency: Changes also made to RQOLTS and CRTAUDHS.  Apply         !00016C0U
*             fixes and re-make.                                       !00016C0V
* Reference:  None (retro of BP5A012 from Case #302226)                !00016C0W
                                                                       !00016C0X
                                                                       !00016D00
********************************************************************** !00016D01
*                        RELEASE 6.0                                 * !00016D02
********************************************************************** !00016D03
* 04MAY2001   RKK/299                                                  !00016D04
* Symptom:    Release 6.0 Enhancements.                                !00016D05
* Problem:    None.                                                    !00016D06
* Fix:        Decreased the size of the TKN-BUF to accomodate the new  !00016D07
*             fields in the CRTAUTH-MSG without increasing the size    !00016D08
*             of the TQF record.                                       !00016D09
* Dependency: Restore Release 6.0 files, modify the appropriate        !00016D0A
*             CUSTMACS flags, and run MAKE.                            !00016D0B
* Reference:  WO ##000101-1 (General Release 6.0)                      !00016D0C
                                                                       !00016E00
* 31OCT2002   pas/515                                                  !00016E01
* Symptom:    Event message #7151 - "Unable to store all token data    !00016E02
*             in the TQF" was displayed for every transaction.         !00016E03
* Problem:    The available token buffer space in the TQF was full     !00016E04
*             and no additional token information could be stored.     !00016E05
* Fix:        Added tkn-retrv-opt and tlf-base-tkn fields to the       !00016E06
*             TQF file and reduced the number of bytes in the tkn-     !00016E07
*             buf from 283 to 196.  Additional token buffer space      !00016E08
*             is available in a new file (the TQFT), if a customer     !00016E09
*             is configured to support that token retrieval option.    !00016E0A
* Dependency: Apply fixes to ddlftqf, auddlm, bpcrtamm.  Restore       !00016E0B
*             ddlftqft and remake.                                     !00016E0C
* Reference:  Case #339343 and 341789                                  !00016E0D
*                                                                      !00016E0E
                                                                       !00016E0F
*##################################################################### !00016D0D
*#      Terminal Queue File                                          # !00016D0E
*##################################################################### !00016D0F
*                                                                      !00016D0G
*    The TQF is secured under Tandem's group level security so that    !00016D0H
*    only authorized network operators may access (or start            !00016D0I
*    programs which will access) the file.                             !00016D0J
*                                                                      !00016D0K
*    USER ID         = <Base24 node name>.*                            !00016D0L
*    FILE CODE       = 0                                               !00016D0M
*    ACCESS SECURITY = GGGG                                            !00016D0N
*                                                                      !00016D0O
*    Usage                                                             !00016D0P
*                                                                      !00016D0Q
*    CRT DH       i/o          RAND (  )    r       shared             !00016D0R
*                                                                      !00016D0S
*                                                                      !00016D0T
                                                                       !00016D0U
?comments
*                                                                      !00016D0X
*    The Terminal Queue File (TQF) contains one record for every CRT   !00016D0Y
*    terminal that is used to perform CRT authorization.  This file    !00016D0Z
*    is only used in systems that support BASE24-pos CRT               !00016D10
*    Authorization.  Each record contains information about the        !00016D11
*    particular CRT terminal and the current transactions that are     !00016D12
*    displayed on it.                                                  !00016D13
*                                                                      !00016D14
*    The following pages describe the fields included in a TQF         !00016D15
*    record.  The information below summarizes other information       !00016D16
*    specific to the TQF.                                              !00016D17
*                                                                      !00016D18
*    PROCESS USAGE:      CRT Authorization Device Handler              !00016D19
*                                                                      !00016D1A
*    LCONF ASSIGN:       POS-CRT-DH-TQF                                !00016D1B
                                                                       !00016D1C
                                                                       !00016D1D
                                                                       !00016D1E
                                                                       !00017D00
                                                                       !00017D01
                                                                       !00017D02
RECORD TQF.                    FILE IS "TQF" RELATIVE.                 !00047
                                                                       !00048
                                                                       !00048B00
*              This field is filled in by the device handler to        !00048B01
*              indicate to the pathway requester how things went:      !00048B02
                                                                       !00048B03
                                                                       !00049B00
                                                                       !00049B01
                                                                       !00049B02
*                                                                     !!00051
                                                                       !00052B00
                                                                       !00052B01
*              -1 = null reply.                                       !
*               0 = good reply with TQF.                              !
*               1 = unable to process request - TQF table is full.    !
*               2 = unable to process request - tran not in table.    !
*               3 = unable to process request - invalid terminal id.  !
*               4 = invalid tran status - unable to perform           !
*                   transaction requested due to status in TQF.       !
*               5 = invalid tran code - unable to perform adjustment  !
*                   for this tran code.                               !
*               6 = invalid resp code - unable to perform adjustment  !
*                   or reversal for non-approved transaction.         !
                                                                       !00052B0O
                                                                       !00063
  02  DH-REPL-CDE               TYPE BINARY.                           !00064
                                                                       !00065
                                                                       !00065B00
*              The Pathway TERMINAL-FILENAME of the sending CRT        !00065B01
*              terminal.                                               !00065B02
                                                                       !00065B03
                                                                       !00066B00
                                                                       !00066B01
                                                                       !00067
  02  TERM-ID                   PIC X(24)                              !00068
                                KEYTAG "TM" DUPLICATES NOT ALLOWED.    !00069
                                                                       !00070
                                                                       !00071B00
                                                                       !00071B01
*              "N" - Normal transaction mode.                         !
*              "A" - Aborted (queue taken over by another terminal    !
                                                                       !00071B06
                                                                       !00073
  02  TERM-MODE                 PIC X.                                 !00074
                                                                       !00075
  02  USER-FLD1                 PIC X.                                 !00076
                                                                       !00077
                                                                       !00078A00
                                                                       !00078B00
*              This field is for future use and is intialized to       !00078B01
*              Binary 0.                                               !00078B02
                                                                       !00078B03
                                                                       !00078A03
                                                                       !00079
  02  DH-CRTPID                 TYPE BINARY 16.                        !00080
                                                                       !00081
                                                                       !00082B00
                                                                       !00082B01
*              This field is used by the FUTL routines to maintain    !
*              the current PTDF terminal status.                      !
                                                                       !00082B06
*                   bit  0 = online/offline                           !!00084
*                        1 = open/closed                              !!00085
*                        2 = tran in progress                         !!00086
*                        3 = record in use                            !!00087
*                        4 = slow mode                                !!00088
*                        5 = cutover pending                          !!00089
                                                                       !00090
  02  FUTL-STAT                 TYPE BINARY 16.                        !00091
                                                                       !00092
                                                                       !00093
                                                                       !00094B00
*              This field contains the transaction queue for          !
*              this terminal.                                          !00094B03
                                                                       !00094B04
                                                                       !00095
                                                                       !00096
  02  TRAN-TBL                  OCCURS 7 TIMES.                        !00097
                                                                       !00098
                                                                       !00099B00
                                                                       !00099B01
*              This field contains the transaction status:            !
*              "1" = empty slot                                       !
*              "2" = waiting for resp from auth, host, or switch      !
*              "4" = response received from auth, host or switch      !
*              "5" = transaction reversed                             !
*              "6" = transaction timed out                            !
*              "7" = transaction cancelled by operator                !
                                                                       !00099B0G
                                                                       !00106
      04  TRAN-STAT             PIC X.                                 !00107
                                                                       !00108
      04  USER-FLD2             PIC X.                                 !00109
                                                                       !00109C00
*              "M" = adjustment manually entered in upper part of OLT  !00109C01
*              "A" = adjustment of authorized transaction selected     !00109C02
*                    from lower part of OLT                            !00109C03
                                                                       !00109C04
      04  ADJ-STAT              PIC X                                  !00109C05
                                REDEFINES USER-FLD2.                   !00109C06
                                                                       !00109C07
                                                                       !00110C00
                                                                       !00110C01
                                                                       !00110C02
                                                                       !00112B00
                                                                       !00112B01
*              This field contains the time the transaction was added !
*              to the table.                                          !
                                                                       !00112B06
                                                                       !00114
      04  TIMSTP-I.                                                    !00115
          06 WORD               TYPE BINARY OCCURS 4 TIMES.            !00116
      04  TIMSTP                TYPE BINARY 64                         !00117
                                REDEFINES TIMSTP-I.                    !00118
                                                                       !00119
                                                                       !00120B00
*              Message types for CRT Auth are:                        !
                                                                       !00120B03
*                                                                     !!00121
                                                                       !00122B00
                                                                       !00122B01
*              "0200" = Request for all trans including adjustment    !
*                       The actual transaction is determined by       !
*                       looking at the TRAN-CDE field.                !
*              "0220" = Referral override                             !
*              "0420" = reversal                                      !
*              "0000" = Request for current queue info only           !
*                       Returned data is a TQF record.                !
*              "CANC" = Cancel transaction request from queue         !
                                                                       !00122B0I
                                                                       !00130
      04  TYP                   PIC X(4).                              !00131
                                                                       !00132
      04  AUTH-MSG              TYPE CRTAUTH-MSG.                      !00133
                                                                       !00133B00
                                                                       !00133B01
      04  USER-FLD3             PIC X.                                 !00133B02
                                                                       !00133E00
*                                                                      !00133E01
*              Option for retrieving the tokens.  Tokens can be        !00133E02
*              retrieved from the TQF, TQFT, PTLF, or not at all.      !00133E03
*                "1"   = TQF or TQFT                                   !00133E04
*                "2"   = PTLF                                          !00133E05
*                any other value = no tokens will be retrieved         !00133E06
*                                                                      !00133E07
*                                                                      !00133E08
      04  TKN-RETRV-OPT         PIC X.                                 !00133E09
*                                                                      !00133E0A
*              The following structure is used to read the BASE24-pos  !00133E0B
*              Transaction Log File and is available to the device     !00133E0C
*              handler via the TLF token.                              !00133E0D
*                                                                      !00133E0E
      04  TLF-TKN               TYPE TLF-BASE-TKN.                     !00133E0F
                                                                       !00133E0G
                                                                       !00133E0H
                                                                       !00133E0I
*                                                                      !00133E0J
                                                                       !00133E0K
*              The following field maintains token data that is        !00133B04
*              returned in the response.  If a reversal message is     !00133B05
*              generated, the token data will be sent in the reversal  !00133B06
*              message.                                                !00133B07
                                                                       !00133B08
                                                                       !00133C00
                                                                       !00133D00
                                                                       !00133E0L
      04  TKN-BUF               PIC X(196).                            !00133E0M
                                                                       !00133E0N
                                                                       !00133D02
                                                                       !00133C02
                                                                       !00133B0A
                                                                       !00134
END                                                                    !00135
                                                                       !00135B00
?nocomments
                                                                       !00135B03
