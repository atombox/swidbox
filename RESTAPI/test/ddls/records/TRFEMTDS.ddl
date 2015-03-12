!*SEQ2.00  01/21/01  TRFEMTDS6000 DDL    AT60EMTB                              !
?page "TRFEMT - Terminal Receipt File Extended Memory Table"
?section trfemt-history
**********************************************************************!!00005
*                                                                    *!!00006
*                             BASE24-atm                             *!!00007
*                             ----------                             *!!00008
*                                                                    *!!00009
*               DDL for the TRF Extended Memory Table                *!!00010
*                                                                    *!!00011
*                   Proprietary Software Product                     *!!00012
*                                                                    *!!00013
*                         ACI Worldwide Inc.                         *!!00014
*                       330 South 108th Avenue                       *!!00015
*                       Omaha, Nebraska  68154                       *!!00016
*                           (402) 390-7600                           *!!00017
*                                                                    *!!00018
*    Copyright by ACI Worldwide Inc. 2000                            *!!00019
*                                                                    *!!00020
*    All Rights Reserved.  No part of this document may be           *!!00021
*    reproduced in any manner without the prior written consent of   *!!00022
*    ACI Worldwide Inc.  This material is a trade secret and its     *!!00023
*    confidentiality is strictly maintained.  Use of any copyright   *!!00024
*    notice does not imply unrestricted or public access to these    *!!00025
*    materials.                                                      *!!00026
*                                                                    *!!00027
*    BASE24 (R) is a registered trademark of ACI Worldwide Inc.      *!!00028
*                                                                    *!!00029
**********************************************************************!!00030
*                                                                     !!00031
* Record of Changes:                                                  !!00032
*                                                                     !!00033
* Date         Person/Emp #                                           !!00034
* ----------   ------------                                           !!00035
********************************************************************* !!00036
*             Release 6.0                                           * !!00037
********************************************************************* !!00038
* 30NOV2000   sde/316                                                 !!00039
* Symptom:    Release 6.0 Enhancements                                !!00040
* Problem:    None                                                    !!00041
* Fix:        Initial Release.                                        !!00042
* Dependency: Restore Release 6.0 files, modify the appropriate       !!00043
*             CUSTMACS flags, and run MAKE.                           !!00044
* Reference:  WO #981118-3 (Transactions Allowed)                     !!00045
*             WO #991215-02 (EMTs in BASE24 classic)                  !!00046
********************************************************************* !!00047
                                                                       !00048
?section trfemtds-deflist
?deflist
                                                                       !00053
?section trfemt-prikey-typ-constants
?setsection trfemt-prikey-typ-constants
?page "Terminal Receipt File EMT Primary Key Type Constants"
**********************************************************************!!00060
*                                                                    *!!00061
*         Terminal Receipt File EMT Primary Key Type Constants       *!!00062
*                                                                    *!!00063
*  The following constants indicate the type of primary key data     *!!00064
*  that is contained in a TRFEMT record.                             *!!00065
*                                                                    *!!00066
**********************************************************************!!00067
                                                                       !00068
                                                                       !00069
?nocobol
                                                                       !00072
*             Indicates that the TRFEMT record contains a complete    !!00073
*             key, including all the primary key fields of the TRF.   !!00074
*                                                                     !!00075
*             A record with this primary key type contains the data   !!00076
*             from exactly one TRF record.                            !!00077
                                                                       !00078
constant trfemt-prikey-typ-compl-d      value "CO".                    !00079
                                                                       !00080
*             Indicates that the TRFEMT record contains a partial     !!00081
*             key, including only the terminal receipt profile.  All  !!00082
*             other fields should be spaces.                          !!00083
*                                                                     !!00084
*             A record with this primary key type contains composite  !!00085
*             data from all TRF records matching the partial key.     !!00086
                                                                       !00087
constant trfemt-prikey-typ-partial-d    value "PA".                    !00088
                                                                       !00089
?notal
?cobol =atemtb_dx
                                                                       !00094
def trfemt-prikey-typ-compl-c           pic x(2)                       !00095
                                        value                          !00096
                                        trfemt-prikey-typ-compl-d.     !00097
                                                                       !00098
def trfemt-prikey-typ-partial-c         pic x(2)                       !00099
                                        value                          !00100
                                        trfemt-prikey-typ-partial-d.   !00101
                                                                       !00102
?nocobol
?tal =atemtb_dt
                                                                       !00107
?section trfemt-prikey
?setsection trfemt-prikey
?page "Terminal Receipt File EMT Primary Key"
**********************************************************************!!00114
*                                                                    *!!00115
*               Terminal Receipt File EMT Primary Key                *!!00116
*                                                                    *!!00117
**********************************************************************!!00118
                                                                       !00119
                                                                       !00120
*             The values in the following fields form the primary     !!00121
*             key to records in the TRFEMT.                           !!00122
                                                                       !00123
                                                                       !00124
def trfemt-prikey.                                                     !00125
                                                                       !00126
*             The type of the primary key.  Valid values are:         !!00127
*                 TRFEMT-PRIKEY-TYP-COMPL-D                           !!00128
*                 TRFEMT-PRIKEY-TYP-PARTIAL-D                         !!00129
                                                                       !00130
    02  prikey-typ                      pic x(2).                      !00131
                                                                       !00132
*             The terminal receipt profile from the TRF record.       !!00133
                                                                       !00134
    02  term-rcpt-prfl                  type prfl.                     !00135
                                                                       !00136
*             The message category from the TRF record.               !!00137
                                                                       !00138
    02  msg-cat                         pic x.                         !00139
                                                                       !00140
*             The processing code from the TRF record.                !!00141
                                                                       !00142
    02  proc-cde                        type *.                        !00143
                                                                       !00144
*             Added for word alignment.                               !!00145
                                                                       !00146
    02  user-fld1                       pic x.                         !00147
                                                                       !00148
end                                                                    !00149
                                                                       !00150
                                                                       !00151
?section trfemt-rcpt-opt
?setsection trfemt-rcpt-opt
?page "Terminal Receipt File EMT Receipt Options Structure"
**********************************************************************!!00158
*                                                                    *!!00159
*        Terminal Receipt File EMT Receipt Options Structure         *!!00160
*                                                                    *!!00161
**********************************************************************!!00162
                                                                       !00163
                                                                       !00164
*            The TRFEMT receipt options structure represents the      !!00165
*            combined receipt options for a set of TRF records.       !!00166
*            For example, if at least one record in the set has       !!00167
*            the receipt option RCPT_PRNT_NONE_D, then the NONE       !!00168
*            field below will be TRUE; otherwise, it will be          !!00169
*            FALSE.                                                   !!00170
                                                                       !00171
def trfemt-rcpt-opt.                                                   !00172
                                                                       !00173
    02  none                            type binary 16.                !00174
    02  cust-mand                       type binary 16.                !00175
    02  cust-opt                        type binary 16.                !00176
    02  aud-mand                        type binary 16.                !00177
    02  aud-opt                         type binary 16.                !00178
    02  cust-mand-aud-mand              type binary 16.                !00179
    02  cust-opt-aud-opt                type binary 16.                !00180
    02  cust-mand-aud-opt               type binary 16.                !00181
    02  cust-opt-aud-mand               type binary 16.                !00182
                                                                       !00183
end                                                                    !00184
                                                                       !00185
?section trfemt
?setsection trfemt
?page "Terminal Receipt File EMT Primary Key"
**********************************************************************!!00192
*             Terminal Receipt File Extended Memory Table            *!!00193
**********************************************************************!!00194
                                                                       !00195
*             The Terminal Receipt File Extended Memory Table         !!00196
*             (TRFEMT) contains one record for each record in the     !!00197
*             Terminal Receipt File (TRF) having the same data as     !!00198
*             the TRF record.  In addition, the TRFEMT contains a     !!00199
*             separate record for each distinct terminal receipt      !!00200
*             profile in the TRF.  This record contains a composite   !!00201
*             of receipt printing options from all the TRF records    !!00202
*             that share the profile.                                 !!00203
                                                                       !00204
def trfemt.                                                            !00205
                                                                       !00206
*             The primary key by which each TRFEMT record is          !!00207
*             accessed.                                               !!00208
                                                                       !00209
  02  prikey                            type trfemt-prikey.            !00210
                                                                       !00211
*                                                                     !!00212
*             Contains the data from the TRF record.  Used if the     !!00213
*             primary key type is TRFEMT-PRIKEY-TYP-COMPL-D.          !!00214
                                                                       !00215
  02  file-data.                                                       !00216
      04  last-afm                      type *.                        !00217
      04  rcpt-opt-apprv                pic 9.                         !00218
      04  rcpt-opt-dcln                 pic 9.                         !00219
                                                                       !00220
*             Contains the combined receipt print options for all     !!00221
*             TRF records matching the given partial key.  Used if    !!00222
*             the primary key type is TRFEMT-PRIKEY-TYP-PARTIAL-D.    !!00223
                                                                       !00224
  02  rcpt-opt                          redefines file-data.           !00225
                                                                       !00226
*             Contains the combined receipt print options for         !!00227
*             approved transactions.                                  !!00228
                                                                       !00229
        04  apprv                       type trfemt-rcpt-opt.          !00230
                                                                       !00231
*             Contains the combined receipt print options for         !!00232
*             declined transactions.                                  !!00233
                                                                       !00234
        04  dcln                        type trfemt-rcpt-opt.          !00235
                                                                       !00236
        04  user-fld1-rcpt-opt          pic x(6).                      !00237
                                                                       !00238
end                                                                    !00239
                                                                       !00240
?setsection
