!*SEQ0.04  11/01/00  DDLGX25 6000 DDL    BA60DDL    04000                      !
!*SYNC.04  12/09/98  DDLGX25 5300 DDL    BA53DDL    04000                      !
!*SYNC.03  08/28/98  DDLGX25 5300 DDL    BA53DDL    03000                      !
!*SYNC.03  08/22/97  DDLGX25 5100 DDL    BA51DDL    03000                      !
!*SYNC.02  06/25/96  DDLGX25 5100 DDL    BA51DDL    02000                      !
!*SEQ2.00  10/20/92  DDLGX25 5100 DDL    BA51DDL                               !
?page "X25H8473/X25H8602 - X25 8473/8602 Message Header"
?section X25h8473
!****************************************************************     !!00005
!*                                                              *     !!00006
!*  This file contains DDL definitions for the message format   *     !!00007
!*  used by the Host Interface's utility procs.  These utility  *     !!00008
!*  procs handle the communication between the nucleus and      *     !!00009
!*  the Host Interface.                                         *     !!00010
!*                                                              *     !!00011
!****************************************************************     !!00012
*1  4.3.3     X25h8473                                                !!00013
*1  4.3.3.10.1  Identification                                        !!00014
*1                                                                    !!00015
*1    X.25 network header, according to ISO 8473 network              !!00016
*1    layer definition.                                               !!00017
*1                                                                    !!00018
*1  4.3.3.10.2  Security                                              !!00019
*1                                                                    !!00020
*1    Not applicable.                                                 !!00021
*1                                                                    !!00022
*1  4.3.3.10.3  Usage                                                 !!00023
*1                                                                    !!00024
*1    Nucleus, utilities ; needed by Host Interface                   !!00025
*1                                                                    !!00026
**********************************************************************!!00027
                                                                       !00028
def x25h8473.                                                          !00029
                                                                       !00030
02  is8473.                                                            !00031
                                                                       !00032
*                                                                     !!00033
*    Network Layer Protocol Identifier                                !!00034
*                                                                     !!00035
*    This value identifies the BASE24-eftpos protocol.  Other         !!00036
*    values are not allowed by the implementation of the protocol     !!00037
*                                                                     !!00038
*    Set to 129                                                       !!00039
*                                                                     !!00040
    04  proto-typ                           pic x.                     !00041
                                                                       !00042
*    Length indicator                                                 !!00043
*                                                                     !!00044
*    This value is calculated based on length address fields and      !!00045
*    number of option fields used as described in BLD/F5/2 Pages      !!00046
*    23-25.  It is used for the protocol header only.                 !!00047
*                                                                     !!00048
                                                                       !00049
    04  proto-hdr-lgth                      pic x.                     !00050
                                                                       !00051
*                                                                     !!00052
*    Version/Protocol Identifier                                      !!00053
*                                                                     !!00054
*    This value indicates which version of the protocol is used       !!00055
*    for this message.  Only a single version of the protocol is      !!00056
*    supported for this implementation.                               !!00057
*                                                                     !!00058
*    Set to 1                                                         !!00059
*                                                                     !!00060
                                                                       !00061
    04  proto-ver                           pic x.                     !00062
                                                                       !00063
*    Lifetime                                                         !!00064
*                                                                     !!00065
*    This field is not used by BASE24.  If a message were to pass     !!00066
*    through the system, BASE24 would decrement the lifetime by the   !!00067
*    predetermined value.  The intent being to provide tracking for   !!00068
*    messages which have been traveling around the system which cannot!!00069
*    reach the destination in a given time period.                    !!00070
*                                                                     !!00071
*    Set to (1-256) based on trunk time limit                         !!00072
*                                                                     !!00073
                                                                       !00074
    04  lifetim-val                         pic x.                     !00075
                                                                       !00076
*                                                                     !!00077
*    The control flag is used to provide information required for     !!00078
*    processing this specific PDU.  Bit settings within this byte are !!00079
*    interpreted to indicate processing values.                       !!00080
*                                                                     !!00081
*    <8>   Segmentation permitted flag - set to 0                     !!00082
*    <7>   More Segments flag - set to 0                              !!00083
*    <6>   Error Report Flag - set to 1                               !!00084
*    <1:5> Type     - set to 12 for Data PDU                          !!00085
*                        - set to 1 for Error PDU                     !!00086
*                                                                     !!00087
*    Segmentation permitted flag                                      !!00088
*                                                                     !!00089
*    This field is not used by BASE24-eftpos.  It indicates whether   !!00090
*    message segmentation is allowed by the source system/device.     !!00091
*                                                                     !!00092
*    Set to 0.                                                        !!00093
*                                                                     !!00094
*                                                                     !!00095
*    More Segments to follow                                          !!00096
*                                                                     !!00097
*    This field is used by BASE24-eftpos to indicate whether the      !!00098
*    segmentation is allowed by the source system/device.             !!00099
*                                                                     !!00100
*    Set to 0.                                                        !!00101
*                                                                     !!00102
*    Error report flag                                                !!00103
*                                                                     !!00104
*    This field is used by BASE24-eftpos to indicate that this PDU    !!00105
*    requires advice of failure via an ERR PDU.                       !!00106
*                                                                     !!00107
*    Set to 0 (data PDU)                                              !!00108
*    Set to 1 (error PDU)                                             !!00109
*                                                                     !!00110
*    Type                                                             !!00111
*                                                                     !!00112
*    This field is used by BASE24-eftpos to indicate that this PDU is !!00113
*    an error PDU or a data PDU.                                      !!00114
*                                                                     !!00115
*    Set to 12 (normal PDU)                                           !!00116
*    Set to  1 (error PDU)                                            !!00117
*                                                                     !!00118
                                                                       !00119
    04  cntl-flg                            pic x.                     !00120
                                                                       !00121
*                                                                     !!00122
*    Message Length                                                   !!00123
*                                                                     !!00124
*    This field is calculated based on the header message length plus !!00125
*    the length of the data portion of the message.  The IS 8602      !!00126
*    message header is not part of this calculation.                  !!00127
*                                                                     !!00128
*    Set to length based on calculation.                              !!00129
*                                                                     !!00130
                                                                       !00131
    04  msg-lgth                            pic xx.                    !00132
                                                                       !00133
                                                                       !00134
*                                                                     !!00135
*    Checksum                                                         !!00136
*                                                                     !!00137
*    This field is not used by BASE24-eftpos.                         !!00138
*                                                                     !!00139
*    Set to 0.                                                        !!00140
*                                                                     !!00141
                                                                       !00142
    04  chksum                              pic xx.                    !00143
                                                                       !00144
*   Header Variable Portion                                           !!00145
*                                                                     !!00146
*   The message header variable portion is processed based on message !!00147
*   element lengths included in the message.                          !!00148
*                                                                     !!00149
************                                                          !!00150
*                                                                     !!00151
*   Destination address length indicator                              !!00152
*                                                                     !!00153
*   Verified by the application utilities, must 20 or less.           !!00154
*                                                                     !!00155
************                                                          !!00156
*                                                                     !!00157
*   Destination address                                               !!00158
*                                                                     !!00159
*   This is the destination of the message as set by the originating  !!00160
*   application.  Used to identify application across a WAN for       !!00161
*   message routing.                                                  !!00162
*                                                                     !!00163
************                                                          !!00164
*                                                                     !!00165
*   Source Address Length Indicator                                   !!00166
*                                                                     !!00167
*   Verified by the application utilities, must 20 or less.           !!00168
*                                                                     !!00169
************                                                          !!00170
*                                                                     !!00171
*   Source Address                                                    !!00172
*                                                                     !!00173
*   This is the source of the message as set by the originating       !!00174
*   application.  Used to identify application originating the        !!00175
*   message on the WAN.                                               !!00176
*                                                                     !!00177
************                                                          !!00178
*                                                                     !!00179
*   Error PDU fields                                                  !!00180
*   ****************                                                  !!00181
*                                                                     !!00182
*   Parameter Code                                                    !!00183
*                                                                     !!00184
*   This field indicates that there are parameters to follow.  Used   !!00185
*   in the BASE24-eftpos system to indicate that the message includes !!00186
*   Error PDU information.                                            !!00187
*                                                                     !!00188
*   Set to 193.                                                       !!00189
*                                                                     !!00190
************                                                          !!00191
*                                                                     !!00192
*   Length Code                                                       !!00193
*                                                                     !!00194
*   This field indicates fixed format of BASE24-eftpos Options fields.!!00195
*                                                                     !!00196
*   Set to 193.                                                       !!00197
*                                                                     !!00198
************                                                          !!00199
*                                                                     !!00200
*   Parameter Value1                                                  !!00201
*                                                                     !!00202
*   This is the actual error PDU number.                              !!00203
*                                                                     !!00204
*   Set based on processing according to protocol rules specified.    !!00205
*                                                                     !!00206
************                                                          !!00207
*                                                                     !!00208
*   Parameter Value2                                                  !!00209
*                                                                     !!00210
*   This field indicates the offending octet (byte) which the error   !!00211
*   was generated This value provided for header processing only.     !!00212
*                                                                     !!00213
*   Format errors in data messages normally are for more than a       !!00214
*   single octet.  The application logs the field in error to the     !!00215
*   operations log for resolution.  This is a system error or a       !!00216
*   device malfunction.                                               !!00217
*                                                                     !!00218
************                                                          !!00219
*                                                                     !!00220
*   04  Variable message header depending on data included.           !!00221
*                                                                     !!00222
*  Data - the Data PDU is returned intact with the last x bytes       !!00223
*   truncated to ensure data packet size of less than 1K bytes.       !!00224
*   The value of x is determined based on the original data PDU       !!00225
*   length minus the 4 bytes required to report the error in the      !!00226
*   options portion of the header.                                    !!00227
*                                                                     !!00228
************                                                          !!00229
                                                                       !00230
    04  variable-data                       pic x.                     !00231
end                                                                    !00232
                                                                       !00233
Definition x25h8602.                                                   !00234
*                                                                     !!00235
*   The field len-8602-header is the length of the 8602 header.       !!00236
*   This field should contain a value of 5.                           !!00237
*                                                                     !!00238
    02  len-8602-header  pic x.                                        !00239
*                                                                     !!00240
*   The field tpdu-code( Transport Protocol Data Unit ) should contain!!00241
*   the value 64.                                                     !!00242
*                                                                     !!00243
    02  tpdu-code        pic x.                                        !00244
*                                                                     !!00245
*   The field checksum-para specifies that a checksum follows.  This field
*   should contain the value 195.                                     !!00248
*                                                                     !!00249
    02  checksum-para    pic x.                                        !00250
*                                                                     !!00251
*   The field checksum-len specifies the length of the checksum.  Since the
*   checksum is two octets, this field should contain a 2.            !!00254
*                                                                     !!00255
    02  checksum-len     pic x.                                        !00256
*                                                                     !!00257
*   The field checksum-8602 is the checksum.                          !!00258
*                                                                     !!00259
    02  checksum-8602    pic xx.                                       !00260
*                                                                     !!00261
*   The field message-text is the first byte of text.  This field will!!00262
*   used to move the message text around.                             !!00263
*                                                                     !!00264
    02  message-text     pic x.                                        !00265
end                                                                    !00266
