.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const/16 v9, 0x80

    .line 203
    aget-byte v0, p1, p2

    .line 204
    .local v0, b0:B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 205
    .local v1, b1:B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 206
    .local v2, b2:B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 209
    .local v3, b3:B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 210
    .local v4, i0:I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 211
    .local v5, i1:I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 212
    .local v6, i2:I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 214
    .local v7, i3:I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4           #i0:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v7           #i3:I
    :cond_0
    move v4, v0

    .line 209
    goto :goto_0

    .restart local v4       #i0:I
    :cond_1
    move v5, v1

    .line 210
    goto :goto_1

    .restart local v5       #i1:I
    :cond_2
    move v6, v2

    .line 211
    goto :goto_2

    .restart local v6       #i2:I
    :cond_3
    move v7, v3

    .line 212
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 223
    .local v2, seconds:J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 224
    .local v0, fraction:J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "time"

    .prologue
    .line 232
    const-wide/16 v7, 0x3e8

    div-long v5, p3, v7

    .line 233
    .local v5, seconds:J
    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    sub-long v2, p3, v7

    .line 234
    .local v2, milliseconds:J
    const-wide v7, 0x83aa7e80L

    add-long/2addr v5, v7

    .line 237
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .local v4, offset:I
    const/16 v7, 0x18

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 238
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 239
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 240
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/4 v7, 0x0

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 242
    const-wide v7, 0x100000000L

    mul-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 244
    .local v0, fraction:J
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x18

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 245
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 246
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 248
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 249
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 36
    .parameter "host"
    .parameter "timeout"

    .prologue
    .line 74
    const/16 v28, 0x0

    .line 78
    .local v28, socket:Ljava/net/DatagramSocket;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 79
    .local v4, address:[Ljava/net/InetAddress;
    const/4 v9, 0x0

    .line 80
    .local v9, i:I
    const/16 v27, 0x1

    .local v27, set:Z
    move v10, v9

    .end local v9           #i:I
    .local v10, i:I
    move-object/from16 v29, v28

    .line 81
    .end local v28           #socket:Ljava/net/DatagramSocket;
    .local v29, socket:Ljava/net/DatagramSocket;
    :goto_0
    :try_start_1
    array-length v0, v4

    move/from16 v32, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v0, v32

    if-ge v10, v0, :cond_3

    if-eqz v27, :cond_3

    .line 84
    :try_start_2
    new-instance v28, Ljava/net/DatagramSocket;

    invoke-direct/range {v28 .. v28}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v28       #socket:Ljava/net/DatagramSocket;
    :try_start_3
    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 95
    const/16 v32, 0x30

    move/from16 v0, v32

    new-array v5, v0, [B

    .line 96
    .local v5, buffer:[B
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v32, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    :try_start_4
    aget-object v33, v4, v10

    const/16 v34, 0x7b

    move/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v15, v5, v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 102
    .local v15, request:Ljava/net/DatagramPacket;
    const/16 v32, 0x0

    const/16 v33, 0x1b

    aput-byte v33, v5, v32

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 106
    .local v18, requestTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 107
    .local v16, requestTicks:J
    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-wide/from16 v2, v18

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 109
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 112
    new-instance v20, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v32, v0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 113
    .local v20, response:Ljava/net/DatagramPacket;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 115
    .local v21, responseTicks:J
    sub-long v32, v21, v16

    add-long v23, v18, v32

    .line 118
    .local v23, responseTime:J
    const/16 v32, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v11

    .line 122
    .local v11, originateTime:J
    const-string v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "originateTime: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "requestTime: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-wide/16 v32, 0x0

    cmp-long v32, v11, v32

    if-gez v32, :cond_0

    .line 125
    move-wide/from16 v11, v18

    .line 129
    :cond_0
    const/16 v32, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v13

    .line 130
    .local v13, receiveTime:J
    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v30

    .line 131
    .local v30, transmitTime:J
    sub-long v32, v21, v16

    sub-long v34, v30, v13

    sub-long v25, v32, v34

    .line 140
    .local v25, roundTripTime:J
    sub-long v32, v13, v11

    sub-long v34, v30, v23

    add-long v32, v32, v34

    const-wide/16 v34, 0x2

    div-long v6, v32, v34

    .line 146
    .local v6, clockOffset:J
    add-long v32, v23, v6

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 147
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 148
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 151
    const/16 v27, 0x0

    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    move-object/from16 v29, v28

    .line 156
    .end local v28           #socket:Ljava/net/DatagramSocket;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .line 152
    .end local v5           #buffer:[B
    .end local v6           #clockOffset:J
    .end local v11           #originateTime:J
    .end local v13           #receiveTime:J
    .end local v15           #request:Ljava/net/DatagramPacket;
    .end local v16           #requestTicks:J
    .end local v18           #requestTime:J
    .end local v20           #response:Ljava/net/DatagramPacket;
    .end local v21           #responseTicks:J
    .end local v23           #responseTime:J
    .end local v25           #roundTripTime:J
    .end local v30           #transmitTime:J
    :catch_0
    move-exception v8

    move v9, v10

    .end local v10           #i:I
    .restart local v9       #i:I
    move-object/from16 v28, v29

    .line 153
    .end local v29           #socket:Ljava/net/DatagramSocket;
    .local v8, e:Ljava/lang/Exception;
    .restart local v28       #socket:Ljava/net/DatagramSocket;
    :goto_1
    :try_start_5
    const-string v32, "SntpClient"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    array-length v0, v4

    move/from16 v32, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move/from16 v0, v32

    if-ne v9, v0, :cond_2

    .line 155
    const/16 v32, 0x0

    .line 163
    if-eqz v28, :cond_1

    .line 164
    invoke-virtual/range {v28 .. v28}, Ljava/net/DatagramSocket;->close()V

    .line 168
    .end local v4           #address:[Ljava/net/InetAddress;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #i:I
    .end local v27           #set:Z
    :cond_1
    :goto_2
    return v32

    .restart local v4       #address:[Ljava/net/InetAddress;
    .restart local v8       #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v27       #set:Z
    :cond_2
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    move-object/from16 v29, v28

    .line 156
    .end local v28           #socket:Ljava/net/DatagramSocket;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .line 163
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    if-eqz v29, :cond_4

    .line 164
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramSocket;->close()V

    .line 168
    :cond_4
    const/16 v32, 0x1

    move-object/from16 v28, v29

    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v28       #socket:Ljava/net/DatagramSocket;
    goto :goto_2

    .line 159
    .end local v4           #address:[Ljava/net/InetAddress;
    .end local v10           #i:I
    .end local v27           #set:Z
    :catch_1
    move-exception v8

    .line 161
    .restart local v8       #e:Ljava/lang/Exception;
    :goto_3
    const/16 v32, 0x0

    .line 163
    if-eqz v28, :cond_1

    .line 164
    invoke-virtual/range {v28 .. v28}, Ljava/net/DatagramSocket;->close()V

    goto :goto_2

    .line 163
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v32

    :goto_4
    if-eqz v28, :cond_5

    .line 164
    invoke-virtual/range {v28 .. v28}, Ljava/net/DatagramSocket;->close()V

    :cond_5
    throw v32

    .line 163
    .end local v28           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #address:[Ljava/net/InetAddress;
    .restart local v10       #i:I
    .restart local v27       #set:Z
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v32

    move-object/from16 v28, v29

    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v28       #socket:Ljava/net/DatagramSocket;
    goto :goto_4

    .line 159
    .end local v28           #socket:Ljava/net/DatagramSocket;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    :catch_2
    move-exception v8

    move-object/from16 v28, v29

    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v28       #socket:Ljava/net/DatagramSocket;
    goto :goto_3

    .line 152
    :catch_3
    move-exception v8

    move v9, v10

    .end local v10           #i:I
    .restart local v9       #i:I
    goto :goto_1

    .restart local v5       #buffer:[B
    :catch_4
    move-exception v8

    goto :goto_1
.end method
