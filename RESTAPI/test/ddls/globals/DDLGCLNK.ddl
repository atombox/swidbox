!*SEQ0.04  11/01/00  DDLGCLNK6000 DDL    BP60CRTA   04000                      !
!*SYNC.04  12/08/98  DDLGCLNK5300 DDL    BP53CRTA   04000                      !
!*SYNC.03  08/28/98  DDLGCLNK5300 DDL    BP53CRTA   03000                      !
!*SYNC.03  08/22/97  DDLGCLNK5000 DDL    BP51CRTA   03000                      !
!*SYNC.02  06/25/96  DDLGCLNK5000 DDL    BP51CRTA   02000                      !
!*SEQ2.17  03/14/89  DDLGCLNK5000 DDL    BP50CRTA                              !
?SECTION CRT-AUTH-LINKAGE
DEFINITION CRTAUTH-LINKAGE.                                            !00003
           02  CRED-LINKAGE.                                           !00004
               03  CRED-FIID                       PIC X(4).           !00005
               03  CRED-CARD                       PIC X(19).          !00006
               03  CRED-MBR-NUM                    PIC X(3).           !00007
               03  CRED-ACCT                       PIC X(19).          !00008
               03  CRED-TYP                        PIC 9(2).           !00009
               03  CRED-FETCH-MSG                  PIC X(5).           !00010
               03  FILLER                          PIC X(10).          !00011
           02 CRED-ERROR-MESSAGE                 REDEFINES CRED-LINKAGE.
               03  CRTA-ERROR-MSG                  PIC X(60).          !00014
               03  CRTA-ERROR-NUM                  PIC S9(4) COMP.     !00015
           02  PRF-LINKAGE.                                            !00016
               03  INPUT-PARAMS.                                       !00017
                   05  INPUT-PRF-FILE-DATE         PIC X(6).           !00018
                   05  INPUT-RETAILER-ID           PIC X(19).          !00019
                   05  INPUT-RFRL-CDE              PIC X(8).           !00020
                                                                       !00021
*                  Values returned in OUTPUT-RESPONSE :               !!00022
*                                                                     !!00023
*                  BLANK = REFERRAL NOT ACTED UPON                    !!00024
*                    A   = REFERRAL APPROVED                          !!00025
*                    D   = REFERRAL DECLINED                          !!00026
*                    E   = ERROR OCCURED IN RETRIEVING REFERRAL RECORD!!00027
*                                                                     !!00028
               03  OUTPUT-PARAMS.                                      !00029
                   05  OUTPUT-RESPONSE             PIC X.              !00030
                                                                       !00031
                                                                       !00032
END                                                                    !00033
