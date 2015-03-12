**FIX2.19  01/12/02  DDLFRGCF6004 DDL    BA60DDL  BA05168  D                 ***
**SEQ0.04  11/01/00  DDLFRGCF6003 DDL    BA60DDL  BA04000  C                 ***
**SYNC.04  12/09/98  DDLFRGCF5303 DDL    BA53DDL  BA04000  C                 ***
**SYNC.03  08/28/98  DDLFRGCF5303 DDL    BA53DDL  BA03000  C                 ***
**SYNC.03  08/22/97  DDLFRGCF5103 DDL    BA51DDL  BA03000  C                 ***
**SYNC.02  06/25/96  DDLFRGCF5103 DDL    BA51DDL  BA02000  C                 ***
**FIX2.00  06/06/95  DDLFRGCF5103 DDL    BA51DDL  BA51017  C                 ***
**FIX2.00  02/19/93  DDLFRGCF5102 DDL    BA51DDL  BA50087  B                 ***
**FIX2.00  01/26/93  DDLFRGCF5001 DDL    BA50DDL  BA50038  A                 ***
!*SEQ2.00  10/20/92  DDLFRGCF5000 DDL    BA50DDL                               !
********************************************************************** !00000D00
*                                                                    * !00000D01
*                               BASE24                               * !00000D02
*                               ------                               * !00000D03
*                                                                    * !00000D04
*              DDL for the Refresh Group Control File                * !00000D05
*                                                                    * !00000D06
*                   Proprietary Software Product                     * !00000D07
*                                                                    * !00000D08
*                         ACI Worldwide Inc.                         * !00000D09
*                       330 South 108th Avenue                       * !00000D0A
*                       Omaha, Nebraska  68154                       * !00000D0B
*                           (402) 390-7600                           * !00000D0C
*                                                                    * !00000D0D
*    Copyright by ACI Worldwide Inc. 1992 - 2001                     * !00000D0E
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
* ----------  ------------                                             !00000D0U
                                                                       !00000D0V
                                                                       !00003D00
                                                                       !00003D01
                                                                       !00003D02
*                                                                     !!00014
                                                                       !00014D00
                                                                       !00014D01
                                                                       !00014D02
                                                                       !00031A00
*  92/11/01       JRA/941                                              !00031A01
*  --------       -------                                              !00031A02
*  SYMPTOM:       BASE24-Base Release 5.0 Enhancements                 !00031A03
*  PROBLEM:       (E) None.                                            !00031A04
*  FIX:           Added the fields BLOCK-LGTH, TOT-REC-LGTH,           !00031A05
*                 IMMEDIATE-DEST, IMMEDIATE-ORIGIN,                    !00031A06
*                 ALL-FILES-PROCESSED, and FIRST-BLOCK-REC-CNT for     !00031A07
*                 support of Refresh suspend and resume processing.    !00031A08
*                 Modified the size of USER-FLD1, USER-FLD2, and       !00031A09
*                 USER-FLD3 to compensate.  Removed STRT-TIM and       !00031A0A
*                 NEW-FILE-NAM and adjusted the size of USER-FLD1 to   !00031A0B
*                 compensate.                                          !00031A0C
*  DEPENDENCIES:  Re-DDL and recompile BASE Refresh.                   !00031A0D
*  REFERENCE:     BASE24-Base Release 5.0 External Specification       !00031A0E
*                 - Refresh Enhancements                               !00031A0F
*  93/02/16       RRC                                                  !00031B00
*  --------       ---                                                  !00031B01
*  SYMPTOM:       None.                                                !00031B02
*  PROBLEM:       The BULK^READ utility does not correctly process     !00031B03
*                 partitioned files when performing impacting from     !00031B04
*                 a partitioned transaction log file or when           !00031B05
*                 refreshing disk-to-disk using a partitioned input    !00031B06
*                 file.                                                !00031B07
*  FIX:           Added the field PART-NUM to the structures           !00031B08
*                 corresponding to the suspension of a disk-to-disk    !00031B09
*                 refresh or the suspension of a refresh during        !00031B0A
*                 impacting.  These fields will be used by the         !00031B0B
*                 BULK^READ utility to allow processing of partitioned !00031B0C
*                 files for impacting and disk-to-disk refreshes.      !00031B0D
*                 Adjusted USER-FLD1 and USER-FLD3 to compensate for   !00031B0E
*                 the new fields added and to maximize record          !00031B0F
*                 blocking.                                            !00031B0G
*  DEPENDENCIES:  None.                                                !00031B0H
*  REFERENCE:     BETA Database RPC #002717                            !00031B0I
*********************************************************************  !00031C03
*                  RELEASE 5.1                                      *  !00031C04
*********************************************************************  !00031C05
*                                                                      !00031C06
* 94/08/22   Release 1.0 Telebanking Design Team - JMS/583             !00031C07
* SYMPTOM:   None.                                                     !00031C08
* PROBLEM:   None.                                                     !00031C09
* FIX:       1) Added the value "10" as an allowed value for the       !00031C0A
*               RGCF.REL-NUM field.  "10" specifies the current        !00031C0B
*               release of BASE24-telebanking.                         !00031C0C
*            2) Updated the comments pertaining to the RGCF.LEN-       !00031C0D
*               DATA-FRMT field to reflect that it is also used for    !00031C0E
*               release 1.0 of BASE24-telebanking.                     !00031C0F
*            3) Added the RGCF.TB structure to be used in keeping      !00031C0G
*               track of the current positions into the TB Transaction !00031C0H
*               Log File for restarting a SUSPENDed refresh run where  !00031C0I
*               impacting is specified.                                !00031C0J
*            4) Moved the RGCF.PKEY.REFR-GRP field out of the PKEY     !00031C0K
*               group item.  This field is now only used for           !00031C0L
*               Transaction History File (THF) refreshes.              !00031C0M
*            5) Added the RGCF.PKEY.GRP field to the PKEY group item.  !00031C0N
*               This field will be used to support defining RGCF       !00031C0O
*               records for Transaction History Files (THFs) as well   !00031C0P
*               as keeping track of the Refresh Group for other        !00031C0Q
*               refreshes.  Note that a THF can optionally be defined  !00031C0R
*               at a lower level than Refresh Group. This changed the  !00031C0S
*               length of the PKEY structure.                          !00031C0T
*            6) Increased USER-FLD3 by 70 bytes (was 22, now 92) in    !00031C0U
*               order to maximize the usable bytes within the          !00031C0V
*               entry-sequenced data block.                            !00031C0W
* IMPLEMENT: Re-DDL.  All modules that source in the RGCF              !00031C0X
*            definition must be recompiled.                            !00031C0Y
* REFERENCE: TB930301-01, BASE24 Telebanking System Specification      !00031C0Z
*                                                                      !00031C10
********************************************************************   !00031C11
*             Release 6.0                                          *   !00031D00
********************************************************************   !00031D01
* 08JAN2002   AG/1749                                                  !00031D02
* Symptom:    Release 6.0 Format 2 File Support.                       !00031D03
* Problem:    None.                                                    !00031D04
* Fix:        RBAs of product specific log files have been changed     !00031D05
*             from Binary 32 to Binary 64.                             !00031D06
* Dependency: Apply fix to REFRS, REFRG, BAREFRMM, BAUTILS, OKLIBTS,   !00031D07
*             DDLFRGCF, DDLGDEFS and Run Make.                         !00031D08
* Reference:  WO #000202-01                                            !00031D09
********************************************************************   !00031D0A
?SECTION RGCF
?comments
                                                                       !00031D0F
                                                                       !00031C14
                                                                       !00031B0L
                                                                       !00031A0I
*                                                                     !!00034
*              A Refresh Group Control File (RGCF) record is          !!00035
*              constructed for each file header processed from the    !!00036
*              input tape/disk file.  Every time that a new file      !!00037
*              header is processed, a RGCF record is added to the RGCF!!00038
*              with the STAT field set in "IN".                       !!00039
*                                                                     !!00040
*              The RGCF is updated when the suspend command is        !!00041
*              executed at the next logical stopping point, when the  !!00042
*              status command is executed, when the stop command is   !!00043
*              executed and when the program programatically aborts.  !!00044
*                                                                     !!00045
RECORD RGCF.  FILE IS "RGCF" KEY-SEQUENCED.                            !00046
    02  pkey.                                                          !00047
*                                                                     !!00048
*              The date that the refresh tape was created.  This is   !!00049
*              obtained from the Refresh File Header record.  This    !!00050
*              field contains ASCII characters in YYYYMMDD format.    !!00051
*                                                                     !!00052
        04  tape-dat                    pic x(8).                      !00053
*                                                                     !!00054
*              The time the refresh tape was created.  This is        !!00055
*              obtained from the Refresh File Header record.   This   !!00056
*              field contains ASCII Characters in HHMM format.        !!00057
*                                                                     !!00058
        04  tape-tim                    pic x(4).                      !00059
                                                                       !00059C00
*              A refresh group from the Refresh File Header record or  !00059C01
*              the assign name from the Transaction History            !00059C02
*              Configuration File.  If group is not applicable, this   !00059C03
*              field will contain blanks.                              !00059C04
*                                                                      !00059C05
        04  grp                         pic x(32).                     !00059C06
                                                                       !00059C07
                                                                       !00059C08
                                                                       !00060C00
                                                                       !00060C01
                                                                       !00060C02
*                                                                     !!00066
*              The application which was being refreshed at the time  !!00067
*              of the abort or suspend.  Any application code that is !!00068
*              valid for refresh is valid here as well.  The value in !!00069
*              this field is Copied from the Refresh File Header      !!00070
*              record or set to AC if this is an ACH refresh.         !!00071
*                                                                     !!00072
        04  appl                    pic x(2).                          !00073
                                                                       !00074
*              This field contains the partition number if the        !!00075
*              application file being refreshed is a partioned file.  !!00076
*              If a partition number is not applicable, this field    !!00077
*              will contain blanks.                                   !!00078
                                                                       !00079
        04 part-num                 pic x(2).                          !00080
                                                                       !00081
                                                                       !00081C00
*              A refresh group from the Refresh File Header record.    !00081C01
*              This field is used only for THF refreshes.              !00081C02
*                                                                      !00081C03
    02  refr-grp                    pic x(4).                          !00081C04
                                                                       !00081C05
*                                                                     !!00082
*              The record number of the last record from the refresh  !!00083
*              input tape file that was used to update the file being !!00084
*              refreshed.  This number is inclusive of file headers,  !!00085
*              file trailers, batch/organization headers and          !!00086
*              batch/organization trailers.  It will be used on a     !!00087
*              restart to position to the last record processed from  !!00088
*              the tape file.                                         !!00089
                                                                       !00090
    02  last-rec-num                type binary 32.                    !00091
                                                                       !00092
*              For disk to disk refresh restarts, this field will     !!00093
*              contain the relative byte address of the beginning of  !!00094
*              the block within the input disk file where the refresh !!00095
*              is to restart from.  For tape to disk refreshes, this  !!00096
*              field is not used and will contain zeros.              !!00097
                                                                       !00098
                                                                       !00099D00
    02  restart-rba                 type binary 64.                    !00099D01
                                                                       !00099D02
                                                                       !00100
*                                                                     !!00101
*              For disk to disk refresh restarts, this field will     !!00102
*              contain a count of the last record within the block    !!00103
*              indicated by the RESTART-RBA field that was processed  !!00104
*              when the process was suspended or aborted.  Refresh    !!00105
*              will continue with the record following this record    !!00106
*              when the process is resumed or restarted.  For tape to !!00107
*              disk refreshes, this field is not used and will contain!!00108
*              zeros.                                                 !!00109
*                                                                     !!00110
    02  suspend-blk-rec-num         type binary 16.                    !00111
                                                                       !00112
                                                                       !00112B00
*                                                                      !00112B01
*              For disk to disk refresh restarts using a partitioned   !00112B02
*              input file, this field will contain the number of the   !00112B03
*              partition within the input file that was being          !00112B04
*              processed when the process was suspended or aborted.    !00112B05
*                                                                      !00112B06
    02  part-num                    type binary 16.                    !00112B07
                                                                       !00112B08
                                                                       !00112B09
*                                                                     !!00113
*              For PBF and ACH refreshes, this field contains the     !!00114
*              number of records within the batch that were processed !!00115
*              when the process was suspended or stopped.             !!00116
*                                                                     !!00117
*              This field allows Refresh to keep track of the total   !!00118
*              number of records in the batch.  When the refresh is   !!00119
*              resumed, Refresh move the value in this field to an    !!00120
*              internal counter that tracks the number of records     !!00121
*              processed.  Refresh adds one to the internal counter   !!00122
*              for each susequent record processed.                   !!00123
                                                                       !00124
    02  ttl-num-batch-recs          type binary 32.                    !00125
                                                                       !00126
*                                                                     !!00127
*              For PBF refreshes, this field contains the sum of the  !!00128
*              ledger balances for the records within the tape/disk   !!00129
*              batch that were processed when the process was         !!00130
*              suspended or stopped.                                  !!00131
*                                                                     !!00132
*              For ACH refreshes, this field contains the total debit !!00133
*              dollar amount for the records within the tape/disk     !!00134
*              batch that were processed against DDA accounts when the!!00135
*              process was suspended or restarted.                    !!00136
*                                                                     !!00137
*              This field allows Refresh to calculate a total batch   !!00138
*              amount when used to verify the refresh.  When Refresh  !!00139
*              is resumed, Refresh moves the value in this field to   !!00140
*              an internal field that reflects the sum of all total   !!00141
*              batch amounts processed.  As each subsequent batch     !!00142
*              is processed Refresh add the batch total to the        !!00143
*              internal field.                                        !!00144
*                                                                     !!00145
*              For all other refreshes, this field is not used and    !!00146
*              will contain zeros.                                    !!00147
                                                                       !00148
    02  ttl-batch-amt               type binary 64.                    !00149
    02  ttl-batch-dda-amt           redefines ttl-batch-amt            !00150
                                    type binary 64.                    !00151
                                                                       !00152
*                                                                     !!00153
*              For ACH refreshes, this field contains the total debit !!00154
*              dollar amount for the records within the tape/disk     !!00155
*              batch that were processed against SAV accounts when the!!00156
*              process was suspended or restarted.                    !!00157
*                                                                     !!00158
*              When the process is resumed or restarted, the value of !!00159
*              this field will be used to start adding to for the     !!00160
*              remaining records in in the batch.                     !!00161
*                                                                     !!00162
*              For all other refreshes, this field is not used and    !!00163
*              will contain zeros.                                    !!00164
                                                                       !00165
    02  ttl-batch-sav-amt           type binary 64.                    !00166
                                                                       !00167
*                                                                     !!00168
*              For ACH refreshes, this field contains the total credit!!00169
*              dollar amount for the records within the tape/disk     !!00170
*              batch that were processed against DDA accounts when the!!00171
*              process was suspended or restarted.                    !!00172
*                                                                     !!00173
*              When the process is resumed or restarted, the value of !!00174
*              this field will be used to start adding to for the     !!00175
*              remaining records in in the batch.                     !!00176
*                                                                     !!00177
*              For all other refreshes, this field is not used and    !!00178
*              will contain zeros.                                    !!00179
*                                                                     !!00180
    02  ttl-batch-dda-amt2          type binary 64.                    !00181
                                                                       !00182
*                                                                     !!00183
*              For ACH refreshes, this field contains the total credit!!00184
*              dollar amount for the records within the tape/disk     !!00185
*              batch that were processed against SAV accounts when the!!00186
*              process was suspended or restarted.                    !!00187
*                                                                     !!00188
*              When the process is resumed or restarted, the value of !!00189
*              this field will be used to start adding to for the     !!00190
*              remaining records in in the batch.                     !!00191
*                                                                     !!00192
*              For all other refreshes, this field is not used and    !!00193
*              will contain zeros.                                    !!00194
                                                                       !00195
    02  ttl-batch-sav-amt2          type binary 64.                    !00196
                                                                       !00197
*                                                                     !!00198
*              For ACH refreshes, this field contains the batch entry !!00199
*              hash total of the Receiving DFI Identification number  !!00200
*              field for all entry detail records within the tape/disk!!00201
*              batch that were processed when the process was         !!00202
*              suspended or restarted.                                !!00203
*                                                                     !!00204
*              When the process is resumed or restarted, the value of !!00205
*              this field will be used to start adding to for the     !!00206
*              remaining records in in the batch.                     !!00207
*                                                                     !!00208
*              For all other refreshes, this field is not used and    !!00209
*              will contain zeros.                                    !!00210
*                                                                     !!00211
    02  ttl-batch-entry-hash        type binary 64.                    !00212
                                                                       !00213
*                                                                     !!00214
*              For ACH refreshes, this field contains the total debit !!00215
*              dollar amount for all records of all batches on the    !!00216
*              input file that were processed against DDA accounts    !!00217
*              when the process was suspended or restarted.           !!00218
*                                                                     !!00219
*              When the process is resumed or restarted, the value of !!00220
*              this field will be used to start adding to for the     !!00221
*              remaining records on the tape/disk file.               !!00222
*                                                                     !!00223
*              For all other refreshes, this field is not used and    !!00224
*              will contain zeros.                                    !!00225
                                                                       !00226
    02  ttl-file-dda-amt            type binary 64.                    !00227
                                                                       !00228
*                                                                     !!00229
*              For ACH refreshes, this field contains the total debit !!00230
*              dollar amount for all records of all batches on the    !!00231
*              input file that were processed against SAV accounts    !!00232
*              when the process was suspended or restarted.           !!00233
*                                                                     !!00234
*              When the process is resumed or restarted, the value of !!00235
*              this field will be used to start adding to for the     !!00236
*              remaining records on the tape/disk file.               !!00237
*                                                                     !!00238
*              For all other refreshes, this field is not used and    !!00239
*              will contain zeros.                                    !!00240
                                                                       !00241
    02  ttl-file-sav-amt            type binary 64.                    !00242
                                                                       !00243
*                                                                     !!00244
*              For ACH refreshes, this field contains the total credit!!00245
*              dollar amount for all records of all batches on the    !!00246
*              input file that were processed against DDA accounts    !!00247
*              when the process was suspended or restarted.           !!00248
*                                                                     !!00249
*              When the process is resumed or restarted, the value of !!00250
*              this field will be used to start adding to for the     !!00251
*              remaining records in the tape/disk file.               !!00252
*                                                                     !!00253
*              For all other refreshes, this field is not used and    !!00254
*              will contain zeros.                                    !!00255
                                                                       !00256
    02  ttl-file-dda-amt2           type binary 64.                    !00257
                                                                       !00258
*                                                                     !!00259
*              For ACH refreshes, this field contains the total credit!!00260
*              dollar amount for all records of all batches on the    !!00261
*              input file that were processed against SAV accounts    !!00262
*              when the process was suspended or restarted.           !!00263
*                                                                     !!00264
*              When the process is resumed or restarted, the value of !!00265
*              this field will be used to start adding to for the     !!00266
*              remaining records in the tape/disk file.               !!00267
*                                                                     !!00268
*              For all other refreshes, this field is not used and    !!00269
*              will contain zeros.                                    !!00270
                                                                       !00271
    02  ttl-file-sav-amt2           type binary 64.                    !00272
                                                                       !00273
*                                                                     !!00274
*              For ACH refreshes, this field contains the file entry  !!00275
*              hash total of the Receiving DFI Identification number  !!00276
*              field for all tape/disk batches that were processed    !!00277
*              when the process was suspended or restarted.           !!00278
*                                                                     !!00279
*              When the process is resumed or restarted, the value of !!00280
*              this field will be used to start adding to for the     !!00281
*              remaining records in the tape/disk file.               !!00282
*                                                                     !!00283
*              For all other refreshes, this field is not used and    !!00284
*              will contain zeros.                                    !!00285
                                                                       !00286
    02  ttl-file-entry-hash         type binary 64.                    !00287
                                                                       !00288
*                                                                     !!00289
*              This field contains the total number of records,       !!00290
*              excluding file and batch/organization headers and      !!00291
*              trailers, processed when the process was suspended or  !!00292
*              restarted.                                             !!00293
*                                                                     !!00294
*              When the process is resumed or restarted, the value of !!00295
*              this field will be used to start incrementing by one   !!00296
*              from for the remaining data records on the tape/disk   !!00297
*              file.                                                  !!00298
                                                                       !00299
    02  ttl-num-recs                type binary 32.                    !00300
                                                                       !00301
*              For ACH refreshes, this field will contain the total   !!00302
*              number of batches on the input file that were processed!!00303
*              when the process was suspended or restarted.           !!00304
*                                                                     !!00305
*              When the process is resumed or restarted, the value of !!00306
*              this field will be used to start incrementing by one   !!00307
*              from for the remaining batches on the tape/disk file.  !!00308
*                                                                     !!00309
*              For all other refreshes, this field is not used and    !!00310
*              will contain zeros.                                    !!00311
                                                                       !00312
    02  ttl-num-batches             type binary 32.                    !00313
                                                                       !00314
*              For ACH refreshes, this field will contain the number  !!00315
*              of the batch which was being processed at the time that!!00316
*              the RGCF was updated.  The value of this field is taken!!00317
*              from the field ACBH.BATCH-NUM.                         !!00318
*                                                                     !!00319
*              For all other refreshes, this field is not used and    !!00320
*              will contain zeros.                                    !!00321
                                                                       !00322
    02  batch-num                   pic 9(7).                          !00323
                                                                       !00324
*              For ACH refreshes, this field will contain the service !!00325
*              class code of the batch which was being processed at   !!00326
*              the time that the RGCF was updated.  The value of this !!00327
*              field is taken from the field ACBH.SERVICE-CLASS-CDE.  !!00328
*                                                                     !!00329
*              For all other refreshes, this field is not used and    !!00330
*              will contain zeros.                                    !!00331
                                                                       !00332
    02  service-class-cde           pic 9(3).                          !00333
                                                                       !00334
                                                                       !00334A00
*              For ACH refreshes, this field will contain the          !00334A01
*              immediate destination from the ACH file header.  The    !00334A02
*              value of this field is taken from the field             !00334A03
*              AFH.IMMEDIATE-DEST.                                     !00334A04
*                                                                      !00334A05
*              For all other refreshes, this field is not used and     !00334A06
*              will contain blanks.                                    !00334A07
                                                                       !00334A08
    02  immediate-dest              pic x(10).                         !00334A09
                                                                       !00334A0A
*              For ACH refreshes, this field will contain the          !00334A0B
*              immediate origin from the ACH file header.  The value   !00334A0C
*              of this field is taken from the field                   !00334A0D
*              AFH.IMMEDIATE-ORIGIN.                                   !00334A0E
*                                                                      !00334A0F
*              For all other refreshes, this field is not used and     !00334A0G
*              will contain blanks.                                    !00334A0H
                                                                       !00334A0I
    02  immediate-origin            pic x(10).                         !00334A0J
                                                                       !00334A0K
                                                                       !00334A0L
                                                                       !00335A00
                                                                       !00335A01
                                                                       !00335A02
*                                                                     !!00343
*              The status of the refresh run when the refresh was     !!00344
*              aborted or suspended.  Current valid values and        !!00345
*              definitions:                                           !!00346
*                                                                     !!00347
*              DO = Done processing refresh run                       !!00348
*              IN = Initializing for refresh run                      !!00349
*              SU = Suspended during processing of input file         !!00350
*              IM = Suspended after impacting has started.            !!00351
                                                                       !00352
    02  stat                        pic x(2).                          !00353
                                                                       !00354
*                                                                     !!00355
*              A code that indicates whether the refresh run is a     !!00356
*              full, partial, NACHA ACH, or Switch Dispute File (SDF) !!00357
*              refresh.  Valid values are:                            !!00358
*                                                                     !!00359
*              0 = Full file refresh run                              !!00360
*              1 = Partial file refresh run                           !!00361
*              2 = NACHA ACH refresh run                              !!00362
*              3 = SDF refresh run                                    !!00363
*                                                                     !!00364
    02  refr-typ                    pic x(1).                          !00365
                                                                       !00366
*                                                                     !!00367
*              The release number corresponding to the refresh format !!00368
*              used.  Valid values are:                               !!00369
*                                                                     !!00370
*              00 = Not Applicable                                    !!00371
                                                                       !00371C00
*              10 = Release 1.0 BASE24-telebanking                     !00371C01
                                                                       !00371C02
*              40 = Release 4.0                                       !!00372
*              50 = Release 5.0                                       !!00373
*                                                                     !!00374
    02  rel-num                     pic x(2).                          !00375
                                                                       !00376
*                                                                     !!00377
                                                                       !00378C00
                                                                       !00378C01
*              For release 5.0 and 1.0 refresh formats, this field    !
*              indicates the data format for both block and record    !
*              lengths.  Valid values are:                            !
                                                                       !00378C08
*                                                                     !!00381
*              _ = Not Applicable (_ denotes blank)                   !!00382
*              D = Block and record lengths are represented in 6      !!00383
*                  byte display format.                               !!00384
*              B = Block and record lengths are represented in 4      !!00385
*                  byte binary format.                                !!00386
                                                                       !00387
    02  len-data-frmt               pic x(1).                          !00388
                                                                       !00389
*                                                                     !!00390
*              A code that indicates whether or not impacting is to   !!00391
*              take place.  Valid values are:                         !!00392
*                                                                     !!00393
*              0 = Do not perform impacting                           !!00394
*              1 = Perform impacting                                  !!00395
*                                                                     !!00396
    02  imp-typ                     pic x(1).                          !00397
                                                                       !00398
*                                                                     !!00399
*              The Mount Message that will be added with the TAPECOM  !!00400
*              define.  This message will appear with the system mount!!00401
*              message when the define is opened.  Any alpha-numeric  !!00402
*              is valid.                                              !!00403
*                                                                     !!00404
    02  mount-msg                   pic x(25).                         !00405
                                                                       !00406
*                                                                     !!00407
*              The name of the tape file.  It is used by TAPECOM      !!00408
*              during validity checking.  Any valid Tandem file name  !!00409
*              is allowable.                                          !!00410
*                                                                     !!00411
    02  file-id                     pic x(17).                         !00412
                                                                       !00413
*                                                                     !!00414
*              The volume identifiers for up to 35 reels of the       !!00415
*              multiple reel refresh set.  This field is used only    !!00416
*              with IBM and ANSI labeled tapes when TAPECOM is        !!00417
*              performing labeled tape processing.                    !!00418
*                                                                     !!00419
    02  vol-ids                     occurs 35 times                    !00420
                                    pic x(6).                          !00421
                                                                       !00422
*                                                                     !!00423
*              A code that indicates whether the input file is in     !!00424
*              EBCDIC character format or ASCII format.               !!00425
*                                                                     !!00426
    02  data-frmt                   pic x(1).                          !00427
                                                                       !00428
*                                                                     !!00429
*              The name of the tape device on which the tape is       !!00430
*              mounted or the disc file name of the input file.       !!00431
*                                                                     !!00432
    02  file-nam                    pic x(35).                         !00433
                                                                       !00434
*                                                                     !!00435
*              The value of the BASE24-TAPE-LBL-PROC-USED LCONF       !!00436
*              parameter or Refresh default value.  It is used in     !!00437
*              determining whether the TAPECOM utility or Refresh was !!00438
*              performing  tape label processing.  Valid values are:  !!00439
*                                                                     !!00440
*              N = No, BASE24 tape label processing was NOT being     !!00441
*                  utilized                                           !!00442
*              Y = Yes, BASE24 tape label processing was being        !!00443
*                  utilized                                           !!00444
                                                                       !00445
    02  base24-tape-lbl-proc-used   pic x(1).                          !00446
                                                                       !00447
*                                                                     !!00448
*              The type of tape label processing that will be used.   !!00449
*              Valid values are:                                      !!00450
*                                                                     !!00451
*              ANS = ANSI standard labeled tape                       !!00452
*              BLS = Burroughs Large Scale labels, Refresh handles    !!00453
*                    label processing                                 !!00454
*              BUR = Burroughs standard labels, Refresh handles label !!00455
*                    processing                                       !!00456
*              BYP = Non standard labels (bypass)                     !!00457
*              DOS = IBM DOS standard labeled tape                    !!00458
*              IBM = IBM OS standard labeled tape                     !!00459
*              OMI = NON-labeled tape (omitted)                       !!00460
*                                                                     !!00461
    02  labels                      pic x(3).                          !00462
                                                                       !00463
*                                                                     !!00464
*              The number of parity errors to bypass.                 !!00465
*                                                                     !!00466
    02  bypass-num                  pic 9(5).                          !00467
                                                                       !00468
*                                                                     !!00469
                                                                       !00470A00
                                                                       !00470A01
                                                                       !00470A02
*              This field is not used.                                !!00474
                                                                       !00475
                                                                       !00476A00
                                                                       !00476B00
    02  user-fld1                   pic x(2).                          !00476B01
                                                                       !00476B02
                                                                       !00476A02
                                                                       !00477
                                                                       !00477A00
*              A flag that indicates whether the file being processed  !00477A01
*              is the last file on the input file.  Valid values are:  !00477A02
*                                                                      !00477A03
*              0 = Additional files remain to be processed once        !00477A04
*                  refresh is resumed                                  !00477A05
*              1 = The file being processed at the time refresh was    !00477A06
*                  suspended is the last file on the input file        !00477A07
                                                                       !00477A08
    02  all-files-processed         pic x(1).                          !00477A09
                                                                       !00477A0A
                                                                       !00477A0B
*              A code that indicates whether this refresh may be      !!00478
*              resumed.  The refresh may only be resumed if the       !!00479
*              process was suspended.  If the process was stopped or  !!00480
*              aborted, this refresh may not be resumed.  Valid values!!00481
*              are:                                                   !!00482
*                                                                     !!00483
*              0 = Cannot resume                                      !!00484
*              1 = Can resume                                         !!00485
                                                                       !00486
    02  resume-flg                  pic x(1).                          !00487
                                                                       !00488
*              For a CAF refresh, this field will contain the CAF     !!00489
*              exponent which applies to all CAF limit fields.  The   !!00490
*              value in this field is copied from the Refresh file    !!00491
*              header record.  If this record is is not for a CAF     !!00492
*              refresh, this field will contain a blank. For other    !!00493
*              valid values, refer to the refresh file header record  !!00494
*              layout.                                                !!00495
                                                                       !00496
    02  caf-expnt                   pic x(1).                          !00497
                                                                       !00498
*              For a CAF or PBF partial refresh, this field will      !!00499
*              indicate whether to retain the current preauthorization!!00500
*              holds on those files.  The value in this field is      !!00501
*              copied from the refresh file header record.  If this   !!00502
*              record is not for a partial CAF or PBF refresh, this   !!00503
*              field will contain a blank.  For other valid values,   !!00504
*              refer to the refresh file header record format.        !!00505
                                                                       !00506
    02  pre-auth-support            pic x(1).                          !00507
                                                                       !00508
*                                                                     !!00509
*              The FIID for the institution whose records are being   !!00510
*              processed.  This field is only used with PBF refreshes.!!00511
*              The value in this field is Copied from the Refresh     !!00512
*              Batch Header record.                                   !!00513
*                                                                     !!00514
    02  rbh-crd-iss                 pic x(4).                          !00515
                                                                       !00516
                                                                       !00516A00
*                                                                      !00516A01
*              The block length of the tape block being processed.     !00516A02
*              This field is only used with refreshes from tape.       !00516A03
*                                                                      !00516A04
    02  block-lgth                  type binary 16.                    !00516A05
                                                                       !00516A06
*                                                                      !00516A07
*              The total length of all records processed within the    !00516A08
*              current tape block so far.  This field is only used     !00516A09
*              with refreshes from tape.                               !00516A0A
*                                                                      !00516A0B
    02  tot-rec-lgth                type binary 16.                    !00516A0C
                                                                       !00516A0D
*                                                                      !00516A0E
*              The CNT field value of the first record within the tape !00516A0F
*              block being processed.  This field is only used with    !00516A0G
*              refreshes from tape.                                    !00516A0H
*                                                                      !00516A0I
    02  first-block-rec-cnt         pic x(9).                          !00516A0J
                                                                       !00516A0K
                                                                       !00516A0L
*              This field is not used.                                !!00517
                                                                       !00518
                                                                       !00519A00
    02  user-fld2                   pic x(1).                          !00519A01
                                                                       !00519A02
                                                                       !00520
                                                                       !00521
    02  atm.                                                           !00522
                                                                       !00523
*              The date of the last ATM Transaction Log File that was !!00524
*              fully extracted.  This date plus one day will be the   !!00525
*              date of the log file that will be used to start        !!00526
*              impacting from.                                        !!00527
*                                                                     !!00528
        04  lst-extr-dat            pic x(6).                          !00529
                                                                       !00530
*                                                                     !!00531
*              The date of the ATM Transaction Log File record to     !!00532
*              start impacting from. This field contains ASCII        !!00533
*              characters in YYYYMMDD format.                         !!00534
                                                                       !00535
        04  imp-strt-dat            pic x(8).                          !00536
                                                                       !00537
*              The time of the ATM Transaction Log File record where  !!00538
*              impacting is to start from.  This field contains ASCII !!00539
*              characters in HHMMSSMMMMMM format.                     !!00540
*                                                                     !!00541
        04  imp-strt-tim            pic x(12).                         !00542
                                                                       !00543
        04 cur.                                                        !00544
                                                                       !00545
*              For full or partial file refreshes with impacting, this!!00546
*              field contains the date of the ATM Transaction Log File!!00547
*              that was being used to impact from when the process was!!00548
*              suspended or aborted.  Impacting will resume from this !!00549
*              file when the process is resumed or restarted. ASCII   !!00550
*              characters in YYMMDD format.  The date in this field   !!00551
*              may be the date of the transaction log file to start   !!00552
*              impacting from or any date up to and including the     !!00553
*              current log file date.                                 !!00554
                                                                       !00555
            06 suspend-file-dat     pic x(6).                          !00556
                                                                       !00557
*              For full or partial file refreshes with impacting, this!!00558
*              field contains the date of the last ATM Transaction Log!!00559
*              File record within the ATM.CUR.SUSPEND-FILE-DAT field  !!00560
*              that was used for impacting.  This field contains ASCII!!00561
*              characters in YYYYMMDD format.                         !!00562
                                                                       !00563
            06  suspend-rec-dat     pic x(8).                          !00564
                                                                       !00565
*              For full or partial file refreshes with impacting, this!!00566
*              field contains the time of the last ATM Transaction Log!!00567
*              File record within ATM.CUR.SUSPEND-FILE-DAT that was   !!00568
*              being used for impacting.  This field contains ASCII   !!00569
*              characaters in HHMMSSMMMMMM format.  Impacting will    !!00570
*              resume from the record following the timestamp of      !!00571
*              the ATM.CUR.SUSPEND-REC-DAT and                        !!00572
*              ATM.CUR.SUSPEND-REC-TIM fields.                        !!00573
                                                                       !00574
            06  suspend-rec-tim     pic x(12).                         !00575
                                                                       !00576
*              The number of records that had been processed from the !!00577
*              ATM.CUR.SUSPEND-FILE-DAT field when the process was    !!00578
*              suspended or aborted.                                  !!00579
                                                                       !00580
            06  suspend-num-recs    type binary 32.                    !00581
                                                                       !00582
*              For full or partial file refreshes with impacting, this!!00583
*              field contains the relative byte address of the        !!00584
*              beginning of the block within the                      !!00585
*              ATM.CUR.SUSPEND-FILE-DAT field where impacting is to   !!00586
*              restart from.                                          !!00587
                                                                       !00588
                                                                       !00589D00
            06  restart-rba         type binary 64.                    !00589D01
                                                                       !00589D02
                                                                       !00590
*              For full or partial file refreshes with impacting, this!!00591
*              field contains the last record within the block        !!00592
*              indicated by the ATM.CUR.RESTART-RBA field             !!00593
*              that was processed when the process was suspended or   !!00594
*              aborted.  Impacting will continue with the record      !!00595
*              following this record when the process is resumed or   !!00596
*              restarted.                                             !!00597
                                                                       !00598
            06  suspend-blk-rec-num     type binary 16.                !00599
                                                                       !00599B00
                                                                       !00599B01
*                                                                      !00599B02
*              For full or partial file refreshes with impacting from  !00599B03
*              a partitioned TLF log file, this field will contain     !00599B04
*              the number of the partition within the TLF file         !00599B05
*              specified by the date in ATM.CUR.SUSPEND-FILE-DAT that  !00599B06
*              was being processed when the process was suspended or   !00599B07
*              aborted.                                                !00599B08
*                                                                      !00599B09
            06  part-num                    type binary 16.            !00599B0A
                                                                       !00599B0B
                                                                       !00600
        04 nxt.                                                        !00601
                                                                       !00602
*              For full or partial file refreshes with impacting, this!!00603
*              field contains the date of the ATM Transaction Log File!!00604
*              that was being used to impact from when the process was!!00605
*              suspended or aborted.  Impacting will resume from this !!00606
*              file when the process is resumed or restarted. ASCII   !!00607
*              characters in YYMMDD format.  The date in this field   !!00608
*              will be the date of the next days transaction log file !!00609
*              to start impacting from.                               !!00610
                                                                       !00611
            06 suspend-file-dat     pic x(6).                          !00612
                                                                       !00613
*              For full or partial file refreshes with impacting, this!!00614
*              field contains the date of the last ATM Transaction Log!!00615
*              File record within the ATM.NXT.SUSPEND-FILE-DAT field  !!00616
*              that was used for impacting when the process was       !!00617
*              suspended or aborted.  ASCII characters in YYYYMMDD    !!00618
*              format.                                                !!00619
                                                                       !00620
            06  suspend-rec-dat     pic x(8).                          !00621
                                                                       !00622
*              For full or partial file refreshes with impacting, this!!00623
*              field contains the time of the last ATM Transaction Log!!00624
*              File record within ATM.NXT.SUSPEND-FILE-DAT that was   !!00625
*              being used for impacting.  This field will contain     !!00626
*              ASCII characaters in HHMMSSMMMMMM format.  Impacting   !!00627
*              will resume from the record following the timestamp of !!00628
*              the ATM.SUSPEND-REC-DAT and ATM.SUSPEND-REC-TIM fields.!!00629
                                                                       !00630
            06  suspend-rec-tim     pic x(12).                         !00631
                                                                       !00632
*              The number of records that had been processed from     !!00633
*              the ATM.NXT.SUSPEND-FILE-DAT field when the process was!!00634
*              suspended or aborted.                                  !!00635
*                                                                     !!00636
            06  suspend-num-recs    type binary 32.                    !00637
                                                                       !00638
*              For full or partial file refreshes with impacting, this!!00639
*              field contains the relative byte address of the        !!00640
*              beginning of the block within the                      !!00641
*              ATM.NXT.SUSPEND-FILE-DAT field where impacting is to   !!00642
*              restart from.                                          !!00643
                                                                       !00644
                                                                       !00645D00
            06  restart-rba         type binary 64.                    !00645D01
                                                                       !00645D02
                                                                       !00646
*              For full or partial file refreshes with impacting, this!!00647
*              field contains the last record within the block        !!00648
*              indicated by the ATM.NXT.RESTART-RBA field that was    !!00649
*              processed when the process was suspended or aborted.   !!00650
*              Impacting will continue with the record following this !!00651
*              record when the process is resumed or restarted.       !!00652
                                                                       !00653
            06  suspend-blk-rec-num     type binary 16.                !00654
                                                                       !00655
                                                                       !00655B00
*                                                                      !00655B01
*              For full or partial file refreshes with impacting from  !00655B02
*              a partitioned TLF log file, this field will contain     !00655B03
*              the number of the partition within the TLF file         !00655B04
*              specified by the date in ATM.NXT.SUSPEND-FILE-DAT that  !00655B05
*              was being processed when the process was suspended or   !00655B06
*              aborted.                                                !00655B07
*                                                                      !00655B08
            06  part-num                    type binary 16.            !00655B09
                                                                       !00655B0A
                                                                       !00656
    02  pos.                                                           !00657
                                                                       !00658
                                                                       !00659
*              The Date of the last POS Transaction Log File that was !!00660
*              fully extracted.  This date plus one day will be the   !!00661
*              date of the log file that will be used to start        !!00662
*              impacting from.                                        !!00663
                                                                       !00664
        04  lst-extr-dat            pic x(6).                          !00665
                                                                       !00666
*                                                                     !!00667
*              The date of the POS Transaction Log File record to     !!00668
*              start impacting from.  This field contains ASCII       !!00669
*              characters in YYYYMMDD format.                         !!00670
*                                                                     !!00671
        04  imp-strt-dat            pic x(8).                          !00672
                                                                       !00673
*              The time of the POS Transaction Log File record where  !!00674
*              impacting is to start from.  This field contains ASCII !!00675
*              characters in HHMMSSMMMMMM format.                     !!00676
*                                                                     !!00677
        04  imp-strt-tim            pic x(12).                         !00678
                                                                       !00679
        04  cur.                                                       !00680
                                                                       !00681
*              For full or partial file refreshes with impacting, this!!00682
*              field contains the date of the POS Transaction Log File!!00683
*              that was being used to impact from when the process was!!00684
*              suspended or aborted.  Impacting will resume from this !!00685
*              file.   This field contains ASCII characters in YYMMDD !!00686
*              format.  The date in this field may be the date of the !!00687
*              transaction log file to start impacting from or any    !!00688
*              date up to and including the current log file date.    !!00689
*                                                                     !!00690
            06  suspend-file-dat    pic x(6).                          !00691
                                                                       !00692
*              For full or partial file refreshes with impacting, this!!00693
*              field contains the date of the last POS Transaction Log!!00694
*              File record within POS.SUSPEND-FILE-DAT that was used  !!00695
*              for impacting.   This field contains ASCII characters  !!00696
*              in YYYYMMDD format.                                    !!00697
                                                                       !00698
            06  suspend-rec-dat     pic x(8).                          !00699
                                                                       !00700
*              For full or partial file refreshes with impacting, this!!00701
*              field contains the time of the last POS Transaction Log!!00702
*              File record within POS.SUSPEND-FILE-DAT that was used  !!00703
*              for impacting.  This field contains ASCII characters in!!00704
*              HHMMSSMMMMMM format.  Impacting will resume from the   !!00705
*              record following the timestamp of the                  !!00706
*              POS.SUSPEND-REC-DAT and POS.SUSPEND-REC-TIM fields.    !!00707
*                                                                     !!00708
            06  suspend-rec-tim     pic x(12).                         !00709
                                                                       !00710
*              The number of records from the POS Transaction Log that!!00711
*              had been processed when the process was suspended or   !!00712
*              aborted.                                               !!00713
                                                                       !00714
            06  suspend-num-recs    type binary 32.                    !00715
                                                                       !00716
*              For full or partial file refreshes with impacting, this!!00717
*              field contains the relative byte address of the        !!00718
*              beginning of the block within the POS.SUSPEND-FILE-DAT !!00719
*              field where impacting is to restart from.              !!00720
                                                                       !00721
                                                                       !00722D00
            06  restart-rba         type binary 64.                    !00722D01
                                                                       !00722D02
                                                                       !00723
*              For full or partial file refreshes with impacting, this!!00724
*              field contains the last record within the block        !!00725
*              indicated by the POS.RESTART-RBA field that was        !!00726
*              processed when the process was suspended or aborted.   !!00727
*              Impacting will continue with the record following this !!00728
*              record when the process is resumed or restarted.       !!00729
                                                                       !00730
            06  suspend-blk-rec-num     type binary 16.                !00731
                                                                       !00731B00
                                                                       !00731B01
*                                                                      !00731B02
*              For full or partial file refreshes with impacting from  !00731B03
*              a partitioned PTLF log file, this field will contain    !00731B04
*              the number of the partition within the PTLF file        !00731B05
*              specified by the date in POS.CUR.SUSPEND-FILE-DAT that  !00731B06
*              was being processed when the process was suspended or   !00731B07
*              aborted.                                                !00731B08
*                                                                      !00731B09
            06  part-num                    type binary 16.            !00731B0A
                                                                       !00731B0B
                                                                       !00732
        04 nxt.                                                        !00733
                                                                       !00734
*              For full or partial file refreshes with impacting, this!!00735
*              field contains the date of the POS Transaction Log File!!00736
*              that was being used to impact from when the process was!!00737
*              suspended or aborted.  Impacting will resume from this !!00738
*              file when the process is resumed or restarted. ASCII   !!00739
*              characters in YYMMDD format.  The date in this field   !!00740
*              will be the date of the next days transaction log file !!00741
*              to start impacting from.                               !!00742
                                                                       !00743
            06 suspend-file-dat     pic x(6).                          !00744
                                                                       !00745
*              For full or partial file refreshes with impacting, this!!00746
*              field contains the date of the last POS Transaction Log!!00747
*              File record within the POS.NXT.SUSPEND-FILE-DAT field  !!00748
*              that was used for impacting when the process was       !!00749
*              suspended or aborted.  ASCII characters in YYYYMMDD    !!00750
*              format.                                                !!00751
                                                                       !00752
            06  suspend-rec-dat     pic x(8).                          !00753
                                                                       !00754
*              For full or partial file refreshes with impacting, this!!00755
*              field contains the time of the last POS Transaction Log!!00756
*              File record within POS.NXT.SUSPEND-FILE-DAT that was   !!00757
*              being used for impacting.  The field contains ASCII    !!00758
*              characaters in HHMMSSMMMMMM format.  Impacting will    !!00759
*              resume from the record following the timestamp of the  !!00760
*              POS.SUSPEND-REC-DAT and POS.SUSPEND-REC-TIM fields     !!00761
                                                                       !00762
            06  suspend-rec-tim     pic x(12).                         !00763
                                                                       !00764
*              The number of records that had been processed from the !!00765
*              POS.NXT.SUSPEND-FILE-DAT field when the process was    !!00766
*              suspended or aborted.                                  !!00767
                                                                       !00768
            06  suspend-num-recs    type binary 32.                    !00769
                                                                       !00770
*              For full or partial file refreshes with impacting, this!!00771
*              field contains the relative byte address of the        !!00772
*              beginning of the block within the                      !!00773
*              POS.NXT.SUSPEND-FILE-DAT field where impacting is to   !!00774
*              restart from.                                          !!00775
                                                                       !00776
                                                                       !00777D00
            06  restart-rba         type binary 64.                    !00777D01
                                                                       !00777D02
                                                                       !00778
*              For full or partial file refreshes with impacting, this!!00779
*              field contains the last record within the block        !!00780
*              indicated by the POS.NXT.RESTART-RBA field that was    !!00781
*              processed when the process was suspended or aborted.   !!00782
*              Impacting will continue with the record following this !!00783
*              record when the process is resumed or restarted.       !!00784
                                                                       !00785
            06  suspend-blk-rec-num     type binary 16.                !00786
                                                                       !00786B00
                                                                       !00786B01
*                                                                      !00786B02
*              For full or partial file refreshes with impacting from  !00786B03
*              a partitioned PTLF log file, this field will contain    !00786B04
*              the number of the partition within the PTLF file        !00786B05
*              specified by the date in POS.NXT.SUSPEND-FILE-DAT that  !00786B06
*              was being processed when the process was suspended or   !00786B07
*              aborted.                                                !00786B08
*                                                                      !00786B09
            06  part-num                    type binary 16.            !00786B0A
                                                                       !00786B0B
                                                                       !00787
    02  tlr.                                                           !00788
                                                                       !00789
*              The date of the last Teller Transaction Log File that  !!00790
*              was fully extracted.  This date plus one day will be   !!00791
*              the date from the log file that will be used to start  !!00792
*              impacting from.                                        !!00793
                                                                       !00794
        04  lst-extr-dat            pic x(6).                          !00795
                                                                       !00796
*                                                                     !!00797
*              The date of the Teller Transaction Log File record to  !!00798
*              start impacting from.  This field contains ASCII       !!00799
*              characters in YYYYMMDD format.                         !!00800
*                                                                     !!00801
        04  imp-strt-dat            pic x(8).                          !00802
                                                                       !00803
*              The time of the Teller Transaction Log File record     !!00804
*              where impacting is to start from.  This field contains !!00805
*              ASCII characters in HHMMSSMMMMMM format.               !!00806
                                                                       !00807
        04  imp-strt-tim            pic x(12).                         !00808
                                                                       !00809
        04  cur.                                                       !00810
                                                                       !00811
*              For full or partial file refreshes with impacting, this!!00812
*              field contains the date of the Teller transaction log  !!00813
*              file that was being used to impact from when the       !!00814
*              process was suspended or aborted.  Impacting will      !!00815
*              resume from this file when the process is resumed or   !!00816
*              restarted. ASCII characters in YYMMDD format.  The date!!00817
*              in this field may be the date of the transaction log   !!00818
*              file to start impacting from or any date up to and     !!00819
*              including the current log file date.                   !!00820
                                                                       !00821
            06  suspend-file-dat    pic x(6).                          !00822
                                                                       !00823
*              For full or partial file refreshes with impacting, this!!00824
*              field contains the date of the last Teller Transaction !!00825
*              Log File record within TLR.SUSPEND-FILE-DAT that was   !!00826
*              being used for impacting.  This field contains ASCII   !!00827
*              characaters in YYYYMMDD format.                        !!00828
                                                                       !00829
            06  suspend-rec-dat     pic x(8).                          !00830
                                                                       !00831
*              For full or partial file refreshes with impacting, this!!00832
*              field contains the time of the last Teller Transaction !!00833
*              Log File record within TLR.SUSPEND-FILE-DAT that was   !!00834
*              used for impacting.  This field contains ASCII         !!00835
*              characaters in HHMMSSMMMMMM format.  Impacting will    !!00836
*              resume from the record following the timestamp of the  !!00837
*              TLR.SUSPEND-REC-DAT and TLR.SUSPEND-REC-TIM fields     !!00838
                                                                       !00839
            06  suspend-rec-tim     pic x(12).                         !00840
                                                                       !00841
*              The number of records from the Teller transaction log  !!00842
*              file that had been processed when the process was      !!00843
*              suspended or aborted.                                  !!00844
                                                                       !00845
            06  suspend-num-recs    type binary 32.                    !00846
                                                                       !00847
*              For full or partial file refreshes with impacting, this!!00848
*              field contains the relative byte address of the        !!00849
*              beginning of the block within the TLR.SUSPEND-FILE-DAT !!00850
*              field where impacting is to restart from.              !!00851
                                                                       !00852
                                                                       !00853D00
            06  restart-rba         type binary 64.                    !00853D01
                                                                       !00853D02
                                                                       !00854
*              For full or partial file refreshes with impacting, this!!00855
*              field contains the last record within the block        !!00856
*              indicated by the TLR.RESTART-RBA field that was        !!00857
*              processed when the process was suspended or aborted.   !!00858
*              Impacting will continue with the record following this !!00859
*              record when the process is resumed or restarted.       !!00860
                                                                       !00861
            06  suspend-blk-rec-num     type binary 16.                !00862
                                                                       !00862B00
                                                                       !00862B01
*                                                                      !00862B02
*              For full or partial file refreshes with impacting from  !00862B03
*              a partitioned TTLF log file, this field will contain    !00862B04
*              the number of the partition within the TTLF file        !00862B05
*              specified by the date in TLR.CUR.SUSPEND-FILE-DAT that  !00862B06
*              was being processed when the process was suspended or   !00862B07
*              aborted.                                                !00862B08
*                                                                      !00862B09
            06  part-num                    type binary 16.            !00862B0A
                                                                       !00862B0B
                                                                       !00863
        04 nxt.                                                        !00864
                                                                       !00865
*              For full or partial file refreshes with impacting, this!!00866
*              field contains the date of the TLR Transaction Log File!!00867
*              that was being used to impact from when the process was!!00868
*              suspended or aborted.  Impacting will resume from this !!00869
*              file when the process is resumed or restarted. ASCII   !!00870
*              characters in YYMMDD format.  The date in this field   !!00871
*              will be the date of the next days transaction log file !!00872
*              to start impacting from.                               !!00873
                                                                       !00874
            06 suspend-file-dat     pic x(6).                          !00875
                                                                       !00876
*              For full or partial file refreshes with impacting, this!!00877
*              field contains the date of the last TLR Transaction Log!!00878
*              File record within TLR.NXT.SUSPEND-FILE-DAT that was   !!00879
*              used for impacting when the process was suspended or   !!00880
*              aborted.  This field contains ASCII characters in      !!00881
*              YYYYMMDD format.                                       !!00882
                                                                       !00883
            06  suspend-rec-dat     pic x(8).                          !00884
                                                                       !00885
*              For full or partial file refreshes with impacting, this!!00886
*              field contains the time of the last Teller Transaction !!00887
*              Log File record within TLR.NXT.SUSPEND-FILE-DAT that   !!00888
*              was being used for impacting.  This field contains     !!00889
*              ASCII characaters in HHMMSSMMMMMM format.  Impacting   !!00890
*              will resume from the record following the timestamp of !!00891
*              the TLR.SUSPEND-REC-DAT and TLR.SUSPEND-REC-TIM fields.!!00892
                                                                       !00893
            06  suspend-rec-tim     pic x(12).                         !00894
                                                                       !00895
*             The number of records that had been processed from      !!00896
*             the TLR.NXT.SUSPEND-FILE-DAT field when the process was !!00897
*             suspended or aborted.                                   !!00898
*                                                                     !!00899
            06  suspend-num-recs    type binary 32.                    !00900
                                                                       !00901
*             For full or partial file refreshes with impacting, this !!00902
*             field contains the relative byte address of the         !!00903
*             beginning of the block within the                       !!00904
*             TLR.NXT.SUSPEND-FILE-DAT field where impacting is to    !!00905
*             restart from.                                           !!00906
                                                                       !00907
                                                                       !00908D00
            06  restart-rba         type binary 64.                    !00908D01
                                                                       !00908D02
                                                                       !00909
*             For full or partial file refreshes with impacting, this !!00910
*             field contains the last record within the block         !!00911
*             indicated by the TLR.NXT.RESTART-RBA field that was     !!00912
*             processed when the process was suspended or aborted.    !!00913
*             Impacting will continue with the record following this  !!00914
*             record when the process is resumed or restarted.        !!00915
                                                                       !00916
            06  suspend-blk-rec-num     type binary 16.                !00917
                                                                       !00917B00
                                                                       !00917B01
*                                                                      !00917B02
*              For full or partial file refreshes with impacting from  !00917B03
*              a partitioned TTLF log file, this field will contain    !00917B04
*              the number of the partition within the TTLF file        !00917B05
*              specified by the date in TLR.NXT.SUSPEND-FILE-DAT that  !00917B06
*              was being processed when the process was suspended or   !00917B07
*              aborted.                                                !00917B08
*                                                                      !00917B09
            06  part-num                    type binary 16.            !00917B0A
                                                                       !00917B0B
                                                                       !00917C00
    02  tb.                                                            !00917C01
                                                                       !00917C02
*              The date of the last TB Transaction Log File that was   !00917C03
*              fully extracted.  This date plus one day will be the    !00917C04
*              date of the log file that will be used to start         !00917C05
*              impacting from.                                         !00917C06
                                                                       !00917C07
        04  lst-extr-dat            pic x(6).                          !00917C08
                                                                       !00917C09
*              The date of the TB Transaction Log File record to       !00917C0A
*              start impacting from. This field contains ASCII         !00917C0B
*              characters in YYYYMMDD format.                          !00917C0C
                                                                       !00917C0D
        04  imp-strt-dat            pic x(8).                          !00917C0E
                                                                       !00917C0F
*              The time of the TB Transaction Log File record where    !00917C0G
*              impacting is to start from.  This field contains ASCII  !00917C0H
*              characters in HHMMSSMMMMMM format.                      !00917C0I
*                                                                      !00917C0J
        04  imp-strt-tim            pic x(12).                         !00917C0K
                                                                       !00917C0L
        04  cur.                                                       !00917C0M
                                                                       !00917C0N
*              For full file refreshes with impacting, this field      !00917C0O
*              contains the date of the TB Transaction Log File that   !00917C0P
*              was being used to impact from when the process was      !00917C0Q
*              suspended or aborted.  Impacting will resume from this  !00917C0R
*              file when the process is resumed or restarted.  ASCII   !00917C0S
*              characters in YYMMDD format.  The date in this field    !00917C0T
*              may be the date of the transaction log file to start    !00917C0U
*              impacting from or any date up to and including the      !00917C0V
*              current log file date.                                  !00917C0W
                                                                       !00917C0X
            06  suspend-file-dat    pic x(6).                          !00917C0Y
                                                                       !00917C0Z
*              For full file refreshes with impacting, this field      !00917C10
*              contains the date of the last TB Transaction Log File   !00917C11
*              record within the TB.CUR.SUSPEND-FILE-DAT field that    !00917C12
*              was used for impacting.  This field contains ASCII      !00917C13
*              characters in YYYYMMDD format.                          !00917C14
                                                                       !00917C15
            06  suspend-rec-dat     pic x(8).                          !00917C16
                                                                       !00917C17
*              For full file refreshes with impacting, this field      !00917C18
*              contains the time of the last TB Transaction Log File   !00917C19
*              record within TB.CUR.SUSPEND-FILE-DAT that was being    !00917C1A
*              used for impacting.  This field contains ASCII          !00917C1B
*              characaters in HHMMSSMMMMMM format.  Impacting will     !00917C1C
*              resume from the record following the timestamp of the   !00917C1D
*              TB.CUR.SUSPEND-REC-DAT and TB.CUR.SUSPEND-REC-TIM       !00917C1E
*              fields.                                                 !00917C1F
                                                                       !00917C1G
            06  suspend-rec-tim     pic x(12).                         !00917C1H
                                                                       !00917C1I
*              The number of records that had been processed from the  !00917C1J
*              TB.CUR.SUSPEND-FILE-DAT field when the process was      !00917C1K
*              suspended or aborted.                                   !00917C1L
                                                                       !00917C1M
            06  suspend-num-recs    type binary 32.                    !00917C1N
                                                                       !00917C1O
*              For full file refreshes with impacting, this field      !00917C1P
*              contains the relative byte address of the beginning of  !00917C1Q
*              the block within the TB.CUR.SUSPEND-FILE-DAT field      !00917C1R
*              where impacting is to restart from.                     !00917C1S
                                                                       !00917C1T
                                                                       !00917D00
            06  restart-rba         type binary 64.                    !00917D01
                                                                       !00917D02
                                                                       !00917C1V
*              For full file refreshes with impacting, this field      !00917C1W
*              contains the last record within the block indicated by  !00917C1X
*              the TB.CUR.RESTART-RBA field that was processed when    !00917C1Y
*              the process was suspended or aborted.  Impacting will   !00917C1Z
*              continue with the record following this record when the !00917C20
*              process is resumed or restarted.                        !00917C21
                                                                       !00917C22
            06  suspend-blk-rec-num type binary 16.                    !00917C23
                                                                       !00917C24
*              For full file refreshes with impacting from a           !00917C25
*              partitioned TLF log file, this field will contain the   !00917C26
*              number of the partition within the TLF file specified   !00917C27
*              by the date in TB.CUR.SUSPEND-FILE-DAT that was being   !00917C28
*              processed when the process was suspended or aborted.    !00917C29
                                                                       !00917C2A
            06  part-num            type binary 16.                    !00917C2B
                                                                       !00917C2C
        04  nxt.                                                       !00917C2D
                                                                       !00917C2E
*              For full file refreshes with impacting, this field      !00917C2F
*              contains the date of the TB Transaction Log File that   !00917C2G
*              was being used to impact from when the process was      !00917C2H
*              suspended or aborted.  Impacting will resume from this  !00917C2I
*              file when the process is resumed or restarted. ASCII    !00917C2J
*              characters in YYMMDD format.  The date in this field    !00917C2K
*              will be the date of the next days transaction log file  !00917C2L
*              to start impacting from.                                !00917C2M
                                                                       !00917C2N
            06  suspend-file-dat    pic x(6).                          !00917C2O
                                                                       !00917C2P
*              For full file refreshes with impacting, this field      !00917C2Q
*              contains the date of the last TB Transaction Log File   !00917C2R
*              record within the TB.NXT.SUSPEND-FILE-DAT field that    !00917C2S
*              was used for impacting when the process was suspended   !00917C2T
*              or aborted.  ASCII characters in YYYYMMDD format.       !00917C2U
                                                                       !00917C2V
            06  suspend-rec-dat     pic x(8).                          !00917C2W
                                                                       !00917C2X
*              For full file refreshes with impacting, this field      !00917C2Y
*              contains the time of the last TB Transaction Log File   !00917C2Z
*              record within TB.NXT.SUSPEND-FILE-DAT that was being    !00917C30
*              used for impacting.  This field will contain ASCII      !00917C31
*              characaters in HHMMSSMMMMMM format.  Impacting will     !00917C32
*              resume from the record following the timestamp of the   !00917C33
*              TB.SUSPEND-REC-DAT and TB.SUSPEND-REC-TIM fields.       !00917C34
                                                                       !00917C35
            06  suspend-rec-tim     pic x(12).                         !00917C36
                                                                       !00917C37
*              The number of records that had been processed from      !00917C38
*              the TB.NXT.SUSPEND-FILE-DAT field when the process was  !00917C39
*              suspended or aborted.                                   !00917C3A
                                                                       !00917C3B
            06  suspend-num-recs    type binary 32.                    !00917C3C
                                                                       !00917C3D
*              For full file refreshes with impacting, this field      !00917C3E
*              contains the relative byte address of the beginning of  !00917C3F
*              the block within the TB.NXT.SUSPEND-FILE-DAT field      !00917C3G
*              where impacting is to restart from.                     !00917C3H
                                                                       !00917C3I
                                                                       !00917D03
            06  restart-rba         type binary 64.                    !00917D04
                                                                       !00917D05
                                                                       !00917C3K
*              For full file refreshes with impacting, this field      !00917C3L
*              contains the last record within the block indicated by  !00917C3M
*              the TB.NXT.RESTART-RBA field that was processed when    !00917C3N
*              the process was suspended or aborted.  Impacting will   !00917C3O
*              continue with the record following this record when the !00917C3P
*              process is resumed or restarted.                        !00917C3Q
                                                                       !00917C3R
            06  suspend-blk-rec-num type binary 16.                    !00917C3S
                                                                       !00917C3T
*              For full file refreshes with impacting from a           !00917C3U
*              partitioned TLF log file, this field will contain the   !00917C3V
*              number of the partition within the TLF file specified   !00917C3W
*              by the date in TB.NXT.SUSPEND-FILE-DAT that was being   !00917C3X
*              processed when the process was suspended or aborted.    !00917C3Y
                                                                       !00917C3Z
            06  part-num            type binary 16.                    !00917C40
                                                                       !00917C41
                                                                       !00918
*             This field is not used.                                 !!00919
                                                                       !00920
                                                                       !00921A00
                                                                       !00921B00
                                                                       !00921C00
    02  user-fld3                   pic x(92).                         !00921C01
                                                                       !00921C02
                                                                       !00921B02
                                                                       !00921A02
                                                                       !00922
?nocomments
! Primary key                                                         !!00925
KEY IS RGCF.PKEY.                                                      !00926
END                                                                    !00927
                                                                       !00928
