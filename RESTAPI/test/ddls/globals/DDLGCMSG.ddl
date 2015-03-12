**SEQ0.04  11/01/00  DDLGCMSG6001 DDL    BP60CDDL BP04000  A                 ***
**SYNC.04  12/08/98  DDLGCMSG5301 DDL    BP53CDDL BP04000  A                 ***
**SYNC.03  08/28/98  DDLGCMSG5301 DDL    BP53CDDL BP03000  A                 ***
**SYNC.03  08/22/97  DDLGCMSG5101 DDL    BP51CDDL BP03000  A                 ***
**SYNC.02  06/25/96  DDLGCMSG5101 DDL    BP51CDDL BP02000  A                 ***
**FIX1.16  10/19/87  DDLGCMSG5101 DDL    BP51CDDL BP34001  A                 ***
!*SEQ2.17  10/08/87  DDLGCMSG3400 DDL    BP34CDDL                              !
?PAGE "CRTDH-MSG - CRT Device Handler Transaction Envelope"
?SECTION CRTDH-MSG
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
! 10/16/87     3.4         JHK                                       ! !00016A01
!                                                                    ! !00016A02
! SYMPTOM:  None.                                                    ! !00016A03
! PROBLEM:  Changes derived from CRT Auth testing:                   ! !00016A04
!           MSG-DATA was substantially longer than it needed to be,  ! !00016A05
!           so it was reduced.  Added USER-FLD1 to word-align        ! !00016A06
!           MSG-DATA.                                                ! !00016A07
! FIX:  Added the field CRNCY-CDE.  Reduced MSG-DATA to 300 bytes    ! !00016A08
!       and added USER-FLD1 to word-align it.                        ! !00016A09
! IMPLEMENTATION:  None, as the CRT Auth and CRT Admin code is still ! !00016A0A
!                  in development.                                   ! !00016A0B
! REFERENCE:  None, internal ACI change.                             ! !00016A0C
!                                                                    ! !00016A0D
                                                                       !00016A0E
!---------------------------------------------------------------------!!00017
                                                                       !00018
DEFINITION CRTDH-MSG.                                                  !00019
                                                                       !00020
*     This field is required to be the first word of any request.     !!00021
                                                                       !00022
02  REPL-CDE                 TYPE BINARY 16.                           !00023
                                                                      !00024
*     This field determines the device handler who will process       !!00025
*     the mesage :                                                    !!00026
*                                                                     !!00027
*     "AUTH" - CRT Auth Device Handler or                             !!00028
*     "ADMN" - CRT Admin Device Handler.                              !!00029
                                                                       !00030
02  RTE-CDE                  PIC X(4).                                 !00031
                                                                       !00032
*     This is the transaction message:  Either CRTAUTH-MSG or         !!00033
*     CRTADMN-MSG.                                                    !!00034
                                                                       !00035
*       This field is filled in by the requestor and the Device       !!00036
*       Handler.  Message types for CRT Admin are:                    !!00037
*                                                                     !!00038
*       "0200" = Request (Requestor to DH)                            !!00039
*       "0210" = Response (DH to Requestor)                           !!00040
*       "0220" = Force post transactions                              !!00041
*       "0420" = Reversal                                             !!00042
*       "0402" = Card Issuer Reversal Request (Chargeback Request)    !!00043
*       "0412" = Card Issuer Reversal Response (Chargeback Response)  !!00044
                                                                       !00045
*       Message types for CRT Auth are:                               !!00046
*                                                                     !!00047
*       "0200" = Request for all trans including adjustment           !!00048
*                The actual transaction is determined by looking      !!00049
*                at the TRAN-CDE field.                               !!00050
*       "0220" = Referral override                                    !!00051
*       "0420" = reversal                                             !!00052
*       "0000" = Request for current queue info only                  !!00053
*                Returned data is a TQF record.                       !!00054
*       "CANC" = Cancel transaction request from queue                !!00055
                                                                       !00056
02  TYP                      PIC X(4).                                 !00057
                                                                       !00058
*       This field contains the TERMINAL-FILENAME from PATHWAY.       !!00059
                                                                       !00060
02  TERM-ID                  PIC X(24).                                !00061
                                                                       !00062
*   This field is filled in by the device handler to indicate to the  !!00063
*   pathway requester how things went:                                !!00064
*                                                                     !!00065
*    -1 = null reply.                                                 !!00066
*     0 = good reply with TQF.                                        !!00067
*     1 = unable to process request - TQF table is full.              !!00068
*     2 = unable to process request - tran not in table.              !!00069
*     3 = unable to process request - invalid terminal id.            !!00070
*     4 = invalid tran status - unable to perform transaction         !!00071
*         requested due to status in TQF.                             !!00072
*     5 = invalid tran code - unable to perform adjustment for        !!00073
*         this tran code.                                             !!00074
*     6 = invalid resp code - unable to perform adjustment or         !!00075
*         reversal for non-approved transaction.                      !!00076
                                                                       !00077
02  DH-REPL-CDE              TYPE BINARY.                              !00078
                                                                       !00079
                                                                       !00079A00
02  CRNCY-CDE                TYPE *.                                   !00079A01
                                                                       !00079A02
*   The USER-FLD is here to put DATA on a even byte (word aligned)     !00079A03
*   boundry.  DATA MUST BE WORD ALIGNED or the requesters get back     !00079A04
*   garbage in the response.                                           !00079A05
                                                                       !00079A06
02  USER-FLD1                PIC X(1).                                 !00079A07
                                                                       !00079A08
                                                                       !00079A09
                                                                       !00080A00
02  MSG-DATA                 PIC X(300).                               !00080A01
                                                                       !00080A02
                                                                       !00081
END                                                                    !00082
