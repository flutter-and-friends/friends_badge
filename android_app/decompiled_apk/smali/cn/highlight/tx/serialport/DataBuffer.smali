.class public Lcn/highlight/tx/serialport/DataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private LocalBuffer:[B

.field private endIndex:I

.field private startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/highlight/tx/serialport/DataBuffer;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x32000

    new-array v0, v0, [B

    .line 17
    iput-object v0, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 27
    iput v0, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    return-void
.end method

.method private CheckRcv([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 254
    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, -0x45

    if-ne v1, v2, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    const/16 v3, 0x7e

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0, p1}, Lcn/highlight/tx/serialport/DataBuffer;->getCheck([B)B

    move-result v1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget-byte p1, p1, v3

    if-ne v1, p1, :cond_1

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method private getCheck([B)B
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_0

    .line 271
    aget-byte v2, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, 0xff

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public Add([B)V
    .locals 6

    .line 37
    :try_start_0
    sget-object v0, Lcn/highlight/tx/serialport/DataBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    iget v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_2

    .line 39
    iget-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    sub-int/2addr v1, v2

    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 41
    iget-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    goto/16 :goto_0

    .line 43
    :cond_0
    iget v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 45
    iget-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 46
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v1, v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 52
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length p1, p1

    add-int/2addr v2, p1

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    .line 55
    iput-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    goto :goto_0

    .line 59
    :cond_2
    iget v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    sub-int/2addr v1, v2

    array-length v2, p1

    if-lt v1, v2, :cond_3

    .line 61
    iget-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v1, v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 66
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    array-length p1, p1

    add-int/2addr v2, p1

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    .line 69
    iget-object p1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    array-length v3, v1

    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    sub-int/2addr v4, v5

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    array-length p1, v1

    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    sub-int/2addr v2, v3

    sub-int/2addr p1, v2

    iput p1, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 71
    iput-object v1, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    .line 74
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public GetFullPackBuf()[B
    .locals 12

    const/4 v0, 0x0

    .line 87
    :try_start_0
    sget-object v1, Lcn/highlight/tx/serialport/DataBuffer;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 89
    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 94
    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v5, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    const/16 v6, 0x7e

    const/16 v7, 0xbb

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v4, v5, :cond_a

    .line 95
    :goto_0
    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    sub-int/2addr v4, v9

    if-ge v2, v4, :cond_1

    .line 97
    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v9, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_8

    .line 108
    :goto_2
    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    sub-int/2addr v3, v9

    if-ge v5, v3, :cond_4

    .line 109
    iget-object v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    .line 114
    :cond_2
    iget-object v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v9, :cond_3

    move v2, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    sub-int v3, v5, v2

    add-int/2addr v3, v9

    .line 123
    new-array v4, v3, [B

    .line 126
    iget-object v6, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    invoke-static {v6, v2, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    invoke-direct {p0, v4}, Lcn/highlight/tx/serialport/DataBuffer;->CheckRcv([B)Z

    move-result v2

    if-nez v2, :cond_5

    monitor-exit v1

    return-object v0

    :cond_5
    add-int/2addr v5, v9

    .line 139
    iput v5, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 140
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    if-le v2, v3, :cond_6

    .line 141
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 144
    :cond_6
    monitor-exit v1

    return-object v4

    .line 147
    :cond_7
    monitor-exit v1

    return-object v0

    .line 151
    :cond_8
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v7, :cond_9

    .line 152
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    add-int/2addr v2, v9

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 155
    :cond_9
    monitor-exit v1

    return-object v0

    .line 157
    :cond_a
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    if-le v2, v4, :cond_15

    .line 159
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v2, v2

    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v9

    iget v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    add-int/2addr v2, v4

    add-int/2addr v2, v9

    new-array v2, v2, [B

    .line 160
    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v5, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget-object v10, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v10, v10

    iget v11, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    sub-int/2addr v10, v11

    invoke-static {v4, v5, v2, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v4, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget-object v5, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v5, v5

    iget v10, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    sub-int/2addr v5, v10

    iget v10, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    add-int/2addr v10, v9

    invoke-static {v4, v8, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    .line 164
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_c

    .line 166
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v7, :cond_b

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, v2, v5

    and-int/lit16 v10, v10, 0xff

    if-ne v10, v9, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    move v5, v3

    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_13

    .line 177
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ge v5, v3, :cond_f

    .line 178
    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    .line 183
    :cond_d
    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v7, :cond_e

    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v9, :cond_e

    move v4, v5

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_12

    sub-int v3, v5, v4

    add-int/2addr v3, v9

    .line 192
    new-array v6, v3, [B

    .line 193
    invoke-static {v2, v4, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-direct {p0, v6}, Lcn/highlight/tx/serialport/DataBuffer;->CheckRcv([B)Z

    move-result v2

    if-nez v2, :cond_10

    monitor-exit v1

    return-object v0

    .line 209
    :cond_10
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    add-int/2addr v5, v9

    add-int/2addr v2, v5

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 210
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget-object v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_11

    .line 211
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget-object v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 212
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    if-le v2, v3, :cond_11

    .line 213
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 217
    :cond_11
    monitor-exit v1

    return-object v6

    .line 220
    :cond_12
    monitor-exit v1

    return-object v0

    .line 224
    :cond_13
    iget-object v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v7, :cond_14

    .line 225
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    add-int/2addr v2, v9

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 226
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget-object v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_14

    .line 227
    iput v8, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 228
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    iget v3, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    if-le v2, v3, :cond_14

    .line 229
    iget v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->endIndex:I

    iput v2, p0, Lcn/highlight/tx/serialport/DataBuffer;->startIndex:I

    .line 234
    :cond_14
    monitor-exit v1

    return-object v0

    .line 237
    :cond_15
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    .line 239
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public cleanBuffer()V
    .locals 1

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    const v0, 0x32000

    new-array v0, v0, [B

    .line 281
    iput-object v0, p0, Lcn/highlight/tx/serialport/DataBuffer;->LocalBuffer:[B

    return-void
.end method
