**SEQ0.04  11/01/00  DDLFCRUF6001 DDL    BP60CRTA BP04000  A                 ***
**SYNC.04  12/08/98  DDLFCRUF5301 DDL    BP53CRTA BP04000  A                 ***
**SYNC.03  08/28/98  DDLFCRUF5301 DDL    BP53CRTA BP03000  A                 ***
**SYNC.03  08/22/97  DDLFCRUF5001 DDL    BP51CRTA BP03000  A                 ***
**SYNC.02  06/25/96  DDLFCRUF5001 DDL    BP51CRTA BP02000  A                 ***
**FIX2.00  09/28/93  DDLFCRUF5001 DDL    BP50CRTA BP50030  A                 ***
!*SEQ2.17  03/14/89  DDLFCRUF5000 DDL    BP50CRTA                              !
?PAGE "CRUF - Crt Authorization Retailer Usage File"
?SECTION CRUF
!                                                                     !!00005
! History section                                                     !!00006
!---------------------------------------------------------------------!!00007
!                                                                     !!00008
!  07FEBR89       Initial Release     lj culp                         !!00009
!                                                                     !!00010
                                                                       !00010A00
********************************************************************** !00010A01
*                        RELEASE 5.0                                 * !00010A02
********************************************************************** !00010A03
* 93/01/04       Release 5.0 Design Team                               !00010A04
* SYMPTOM:       BASE24 Release 5.0 Enhancements                       !00010A05
* PROBLEM:       (E) None.                                             !00010A06
* FIX:           Updated comments                                      !00010A07
* DEPENDENCIES:  Refer to the Release 5.0 Installation Document        !00010A08
*                for a complete list of the applicable modules.        !00010A09
*    REFERENCE:  BASE24 Release 5.0 External Specifications            !00010A0A
*                                                                      !00010A0B
                                                                       !00010A0C
                                                                       !00011A00
                                                                       !00011A01
                                                                       !00011A02
!---------------------------------------------------------------------!!00017
*#####################################################################!!00018
*#      CRT RETAILER USAGE FILE                                      #!!00019
*#####################################################################!!00020
*1  4.1.n  CRT Authorization Retailer Usage File                      !!00021
*1  4.1.n.1  Identification                                           !!00022
*1                                                                    !!00023
*1      The CRT Authorization Retailer Usage File (CRUF) contains one !!00024
*1      record for every retailer processing Merchandise Return       !!00025
*1      transactions through CRT Authorization.  The record is used   !!00026
*1      to maintain counts and amounts, hold limits of counts and     !!00027
*1      amounts, and hole processing information for clearing the     !!00028
*1      file.                                                         !!00029
*1                                                                    !!00030
*1  4.1.n.2  Security                                                 !!00031
*1                                                                    !!00032
*1      The CRUF is secured under Tandem's group level security so    !!00033
*1      that only authorized network operators may access (or start   !!00034
*1      programs which will access) the file.                         !!00035
*1                                                                    !!00036
*1      USER ID         = <Base24 node name>.*                        !!00037
*1      FILE CODE       = 0                                           !!00038
*1      ACCESS SECURITY = GGGG                                        !!00039
*1                                                                    !!00040
*1  4.1.n.3  Usage                                                    !!00041
*1                                                                    !!00042
*3       CRT Dev Hand  i/o         RAND (  )    r       shared        !!00043
*3       File maint    i/o         RAND (CR)    r       shared        !!00044
*3       Operations    input       RAND (CR)    r       shared        !!00045
*1                                                                    !!00046
                                                                       !00047
                                                                       !00047A00
?comments
*                                                                      !00047A03
*              The CRT Authorization Retailer Usage File (CRUF) is an  !00047A04
*              optional file that is used only by financial            !00047A05
*              institutions who have incorporated CRT Authorization    !00047A06
*              into their BASE24-pos facility.  The CRUF contains one  !00047A07
*              record for every retailer processing merchandise return !00047A08
*              transactions via BASE24-pos CRT Authorization.          !00047A09
*              Financial institutions are allowed to set parameters in !00047A0A
*              the CRUF that limit the number and amount of            !00047A0B
*              merchandise return transactions, adjustments to         !00047A0C
*              merchandise returns, reversals on merchandise returns,  !00047A0D
*              and reversals on merchandise return adjustments that a  !00047A0E
*              specific retailer can perform through BASE24-pos CRT    !00047A0F
*              Authorization during a single usage accumulation        !00047A0G
*              period.  The CRUF keeps a running total of  the number  !00047A0H
*              and amount of merchandise return transactions that have !00047A0I
*              already been performed for a specific retailer during   !00047A0J
*              the current usage accumulation period.                  !00047A0K
*                                                                      !00047A0L
*              The activity limits the financial institution has set   !00047A0M
*              for the specific retailer are compared on a per         !00047A0N
*              transaction basis to the total activity that has        !00047A0O
*              occurred during the current usage accumulation period   !00047A0P
*              for that same retailer.  If the transaction being       !00047A0Q
*              performed causes the count or amount activity during    !00047A0R
*              the current usage accumulation period to exceed the     !00047A0S
*              activity limits set by the financial institution, an    !00047A0T
*              error message will be displayed on the CRT.  If the     !00047A0U
*              transaction is a 0200 (Authorization request), the      !00047A0V
*              transaction will also be declined with a response code  !00047A0W
*              of 253 (Declined--CRT Authorization Merchandise Return  !00047A0X
*              Limits Exceeded) and logged to the POS Transaction Log  !00047A0Y
*              File (PTLF).  If the transaction is a 0220 (Force post  !00047A0Z
*              or Referral override), the transaction will not be      !00047A10
*              declined, but an error message will be displayed on the !00047A11
*              terminal.  The transaction will then be sent by  the    !00047A12
*              CRT Authorization Device Handler to the                 !00047A13
*              Router/Authorization modules for processing.            !00047A14
*                                                                      !00047A15
*              PROCESS USAGE:      CRT Authorization Device Handler    !00047A16
*                                  CRUF Server                         !00047A17
*                                                                      !00047A18
*              STANDARD LOCATION:  $DATA.PRO1DATA                      !00047A19
*                                                                      !00047A1A
*              LCONF ASSIGN:       BP-CRT-AUTH-CRUF                    !00047A1B
*                                                                      !00047A1C
                                                                       !00047A1D
                                                                       !00047A1E
RECORD CRUF.                   FILE IS "CRUF" RELATIVE.                !00048
*                                                                     !!00049
                                                                       !00050A00
*              The primary key of the file.                           !
                                                                       !00050A03
*                                                                     !!00051
  02  PRIKEY                   KEYTAG "CR" DUPLICATES NOT ALLOWED.     !00052
      04  RETAILER-ID          PIC X(19).                              !00053
*                                                                     !!00054
                                                                       !00055A00
                                                                       !00055A01
*              This field identifies the financial institution which  !
*              issued this card.                                      !
                                                                       !00055A06
  02 FIID                      TYPE *.                                 !00057
*                                                                     !!00058
                                                                       !00059A00
                                                                       !00059A01
*              The limit per usage period for the accumulated dollar  !
*              amount of merchandise return transactions that may be  !
*              performed by this particular retailer.                 !
                                                                       !00059A08
*                                                                     !!00062
  02  USER-FLD1                PIC X(1).                               !00063
  02  RETURN-LMT-AMT           TYPE BINARY 64.                         !00064
*                                                                     !!00065
                                                                       !00066A00
                                                                       !00066A01
*              The limit per usage period for the number or           !
*              merchandise return transactions that may be performed  !
*              by this retailer.                                      !
                                                                       !00066A08
*                                                                     !!00069
  02  RETURN-LMT-CNT           TYPE BINARY 16.                         !00070
*                                                                     !!00071
                                                                       !00072A00
                                                                       !00072A01
*              The accumulated dollar amount of merchandise return    !
*              transactions that have been performed by this retailer !
*              for this usage period.                                 !
                                                                       !00072A08
*                                                                     !!00075
  02  RETURN-AMT               TYPE BINARY 64.                         !00076
*                                                                     !!00077
                                                                       !00078A00
                                                                       !00078A01
*              The accumulated number of merchandise return           !
*              transactions that have been performed by this retailer !
*              for this usage period.                                 !
                                                                       !00078A08
*                                                                     !!00081
  02  RETURN-CNT               TYPE BINARY 16.                         !00082
*                                                                     !!00083
                                                                       !00084A00
*              The method of clearing usages for this file.           !
                                                                       !00084A03
*                                                                     !!00085
                                                                       !00086A00
*              Valid values are:                                      !
                                                                       !00086A03
*                                                                     !!00087
                                                                       !00088A00
                                                                       !00088A01
*              M - clear usages at midnight.                          !
*              L - clear usages at LN cutover.                        !
                                                                       !00088A06
*                                                                     !!00090
  02  CUTOVER-FLG              PIC X(1).                               !00091
*                                                                     !!00092
                                                                       !00093A00
*              The date the usages were last reset.                   !
                                                                       !00093A03
*                                                                     !!00094
  02  LAST-RESET-DATE          TYPE DAT.                               !00095
  02  USER-FLD2                PIC X(1).                               !00096
*                                                                     !!00097
                                                                       !00098A00
                                                                       !00098A01
*              This field occurs in every record which is updated     !
*              by the on-line system to insure against multiple or    !
*              incomplete updates due to process failure and restart. !
                                                                       !00098A08
*                                                                     !!00101
  02  LAST-TRAN                TYPE *.                                 !00102
*                                                                     !!00103
                                                                       !00104A00
                                                                       !00104A01
*              This field describes the last on-line file maintenance !
*              update applied to this record.  This includes the user !
*              who did the update, the time at which it was done, the !
*              type of update and the terminal originating the update !
*              transaction.                                           !
                                                                       !00104A0C
*                                                                     !!00109
  02  LAST-FM                  TYPE *.                                 !00110
                                                                       !00111
                                                                       !00112A00
                                                                       !00112A01
*              This field is used by the FUTL routines to maintain    !
*              the file status.                                       !
                                                                       !00112A06
                                                                       !00114
  02  FUTL-STAT                TYPE BINARY 16.                         !00115
                                                                       !00116
                                                                       !00117
  02  USER-FLD3                PIC X(28).                              !00118
                                                                       !00119
END                                                                    !00120
                                                                       !00120A00
?nocomments
                                                                       !00120A03
