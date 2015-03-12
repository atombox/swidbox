!*SEQ2.06  02/11/03  DDLFRCDF6000 DDL    PS60DDL                               !
********************************************************************* !!00001
*                                                                   * !!00002
*                             BASE24-pos                            * !!00003
*                             ----------                            * !!00004
*                                                                   * !!00005
*       DDL for the BASE24-pos Response Code Description File       * !!00006
*                                                                   * !!00007
*                   Proprietary Software Product                    * !!00008
*                                                                   * !!00009
*                         ACI Worldwide Inc.                        * !!00010
*                       330 South 108th Avenue                      * !!00011
*                       Omaha, Nebraska  68154                      * !!00012
*                           (402) 390-7600                          * !!00013
*                                                                   * !!00014
*    Copyright by ACI Worldwide Inc. 2003                           * !!00015
*                                                                   * !!00016
*    All Rights Reserved.                                           * !!00017
*                                                                   * !!00018
********************************************************************* !!00019
*                                                                     !!00020
* Record of Changes:                                                  !!00021
*                                                                     !!00022
* Date        Person/Emp #                                            !!00023
* ---------   ------------                                            !!00024
* 07FEB2003   ALR/455                                                 !!00025
* Symptom:    POS Enhancements.                                       !!00026
* Problem:    None.                                                   !!00027
* Fix:        Initial release.                                        !!00028
* Dependency: Apply fixes to PSDDLM and PSDDLFM.  Restore DDLFRCDF    !!00029
*             and run MAKE. Refer to BA60UD06.SCNFIL for a            !!00030
*             complete listing of dependencies.                       !!00031
* Reference:  WO #020606-01.                                          !!00032
********************************************************************* !!00033
?section rcdf-prikey
?setsection rcdf-prikey
?deflist
?comments
*             The values in the following fields form the primary     !!00042
*             key to records in the RCDF.                             !!00043
definition rcdf-prikey.                                                !00044
                                                                       !00045
*            Indicates the terminal group.  The terminal group is     !!00046
*            defined in the PTD.                                      !!00047
                                                                       !00048
  02 term-grp                    pic x(4).                             !00049
                                                                       !00050
*            Indicates the record type for the response code          !!00051
*            description record.                                      !!00052
*            Valid values are  "01" = ISO and "02" = BASE24           !!00053
                                                                       !00054
  02 rec-typ                     pic x(2).                             !00055
                                                                       !00056
*            Indicates the terminal's FIID.  The terminal's FIID is   !!00057
*            defined in the PTD.                                      !!00058
                                                                       !00059
  02 fiid                        type *.                               !00060
                                                                       !00061
*             The language indicator indicates which language         !!00062
*             the record is in.  This value corresponds to the        !!00063
*             language indicator in the SPDH native message.          !!00064
*             Valid values are asterisks, "0", "1" or "2"             !!00065
                                                                       !00066
  02 lang-ind                    pic x.                                !00067
                                                                       !00068
*             The account type indicates which account type is valid  !!00069
*             for the response code description record.               !!00070
                                                                       !00071
  02 acct-typ                    pic x(2).                             !00072
                                                                       !00073
*             The response code indicates the response code           !!00074
*             associated with the response code description.          !!00075
                                                                       !00076
  02  resp-code                  pic x(3).                             !00077
                                                                       !00078
end                                                                    !00079
                                                                       !00080
?nocomments
?section rcdf
?setsection rcdf
?comments
*             The Response Code Description File (RCDF) contains      !!00089
*             records for ISO, BASE24 response                        !!00090
*             codes and descripitons.  The ISO response codes will    !!00091
*             override the BASE24 response codes.                     !!00092
*                                                                     !!00093
record rcdf.            file is "rcdf" key-sequenced.                  !00094
                                                                       !00095
*             The values in the following fields form the primary     !!00096
*             key to records in the RCDF.                             !!00097
                                                                       !00098
  02  prikey                     type rcdf-prikey.                     !00099
                                                                       !00100
*             An indicator that identifies the last file maintenance  !!00101
*             action on this record.  This includes the user who      !!00102
*             performed the update, the time at which it was done,    !!00103
*             and the type of update.                                 !!00104
                                                                       !00105
  02  last-afm                   type *.                               !00106
                                                                       !00107
*             The description of the ISO or BASE24 response code.     !!00108
                                                                       !00109
  02  descr                                 pic x(48).                 !00110
                                                                       !00111
  key 0 is prikey.                                                     !00112
  end                                                                  !00113
?setsection
