.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x5412

    aput v4, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    .line 36
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    .line 37
    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v2, v1, [I

    .line 38
    fill-array-data v2, :array_2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    .line 39
    fill-array-data v2, :array_3

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    .line 40
    fill-array-data v2, :array_4

    const/4 v6, 0x5

    aput-object v2, v0, v6

    new-array v2, v1, [I

    .line 41
    fill-array-data v2, :array_5

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-array v2, v1, [I

    .line 42
    fill-array-data v2, :array_6

    const/4 v8, 0x7

    aput-object v2, v0, v8

    new-array v2, v1, [I

    .line 43
    fill-array-data v2, :array_7

    const/16 v9, 0x8

    aput-object v2, v0, v9

    new-array v2, v1, [I

    .line 44
    fill-array-data v2, :array_8

    const/16 v10, 0x9

    aput-object v2, v0, v10

    new-array v2, v1, [I

    .line 45
    fill-array-data v2, :array_9

    const/16 v11, 0xa

    aput-object v2, v0, v11

    new-array v2, v1, [I

    .line 46
    fill-array-data v2, :array_a

    const/16 v12, 0xb

    aput-object v2, v0, v12

    new-array v2, v1, [I

    .line 47
    fill-array-data v2, :array_b

    const/16 v13, 0xc

    aput-object v2, v0, v13

    new-array v2, v1, [I

    .line 48
    fill-array-data v2, :array_c

    const/16 v14, 0xd

    aput-object v2, v0, v14

    new-array v2, v1, [I

    .line 49
    fill-array-data v2, :array_d

    const/16 v15, 0xe

    aput-object v2, v0, v15

    new-array v2, v1, [I

    .line 50
    fill-array-data v2, :array_e

    const/16 v16, 0xf

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 51
    fill-array-data v2, :array_f

    const/16 v16, 0x10

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 52
    fill-array-data v2, :array_10

    const/16 v16, 0x11

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 53
    fill-array-data v2, :array_11

    const/16 v16, 0x12

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 54
    fill-array-data v2, :array_12

    const/16 v16, 0x13

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 55
    fill-array-data v2, :array_13

    const/16 v16, 0x14

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 56
    fill-array-data v2, :array_14

    const/16 v16, 0x15

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 57
    fill-array-data v2, :array_15

    const/16 v16, 0x16

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 58
    fill-array-data v2, :array_16

    const/16 v16, 0x17

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 59
    fill-array-data v2, :array_17

    const/16 v16, 0x18

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 60
    fill-array-data v2, :array_18

    const/16 v16, 0x19

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 61
    fill-array-data v2, :array_19

    const/16 v16, 0x1a

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 62
    fill-array-data v2, :array_1a

    const/16 v16, 0x1b

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 63
    fill-array-data v2, :array_1b

    const/16 v16, 0x1c

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 64
    fill-array-data v2, :array_1c

    const/16 v16, 0x1d

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 65
    fill-array-data v2, :array_1d

    const/16 v16, 0x1e

    aput-object v2, v0, v16

    new-array v2, v1, [I

    .line 66
    fill-array-data v2, :array_1e

    const/16 v16, 0x1f

    aput-object v2, v0, v16

    .line 34
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v3, v0, v1

    aput v1, v0, v4

    aput v3, v0, v5

    aput v1, v0, v6

    aput v1, v0, v7

    aput v4, v0, v8

    aput v3, v0, v9

    aput v1, v0, v10

    aput v1, v0, v11

    aput v4, v0, v12

    aput v1, v0, v13

    aput v4, v0, v14

    aput v4, v0, v15

    const/16 v1, 0xf

    aput v5, v0, v1

    .line 72
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    return-void

    :array_0
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_9
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_a
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_b
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_d
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_e
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_f
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_10
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_11
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_13
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_14
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_15
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_16
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_17
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_18
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_19
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1a
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_1b
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_1c
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_1d
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_1e
    .array-data 4
        0x2bed
        0x1f
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    .line 80
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    and-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    .line 82
    iput-byte p1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 1

    .line 106
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    xor-int/lit16 p0, p0, 0x5412

    xor-int/lit16 p1, p1, 0x5412

    .line 113
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object p0

    return-object p0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 10

    .line 121
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    const/4 p0, 0x3

    if-gt v4, p0, :cond_0

    .line 144
    new-instance p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {p0, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_1
    aget-object v6, v0, v3

    .line 122
    aget v7, v6, v2

    const/4 v8, 0x1

    if-eq v7, p0, :cond_5

    if-ne v7, p1, :cond_2

    goto :goto_1

    .line 127
    :cond_2
    invoke-static {p0, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v9

    if-ge v9, v4, :cond_3

    .line 129
    aget v5, v6, v8

    move v4, v9

    :cond_3
    if-eq p0, p1, :cond_4

    .line 134
    invoke-static {p1, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v7

    if-ge v7, v4, :cond_4

    .line 136
    aget v4, v6, v8

    move v5, v4

    move v4, v7

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_5
    :goto_1
    new-instance p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget p1, v6, v8

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object p0
.end method

.method static numBitsDiffering(II)I
    .locals 2

    xor-int/2addr p0, p1

    .line 88
    sget-object p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v0, p0, 0xf

    aget v0, p1, v0

    ushr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 89
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    .line 90
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    .line 91
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit8 v1, v1, 0xf

    .line 92
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x14

    and-int/lit8 v1, v1, 0xf

    .line 93
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    .line 94
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1c

    and-int/lit8 p0, p0, 0xf

    .line 95
    aget p0, p1, p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 164
    instance-of v0, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    check-cast p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 168
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v2, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v0, v2, :cond_1

    .line 169
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte p1, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method getDataMask()B
    .locals 1

    .line 154
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
