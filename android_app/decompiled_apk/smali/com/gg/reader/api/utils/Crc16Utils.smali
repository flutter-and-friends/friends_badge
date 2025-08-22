.class public Lcom/gg/reader/api/utils/Crc16Utils;
.super Ljava/lang/Object;
.source "Crc16Utils.java"


# static fields
.field private static final table1021:[I

.field private static final table8005:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 18
    fill-array-data v1, :array_0

    sput-object v1, Lcom/gg/reader/api/utils/Crc16Utils;->table8005:[I

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_1

    sput-object v0, Lcom/gg/reader/api/utils/Crc16Utils;->table1021:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x8005
        0x800f
        0xa
        0x801b
        0x1e
        0x14
        0x8011
        0x8033
        0x36
        0x3c
        0x8039
        0x28
        0x802d
        0x8027
        0x22
        0x8063
        0x66
        0x6c
        0x8069
        0x78
        0x807d
        0x8077
        0x72
        0x50
        0x8055
        0x805f
        0x5a
        0x804b
        0x4e
        0x44
        0x8041
        0x80c3
        0xc6
        0xcc
        0x80c9
        0xd8
        0x80dd
        0x80d7
        0xd2
        0xf0
        0x80f5
        0x80ff
        0xfa
        0x80eb
        0xee
        0xe4
        0x80e1
        0xa0
        0x80a5
        0x80af
        0xaa
        0x80bb
        0xbe
        0xb4
        0x80b1
        0x8093
        0x96
        0x9c
        0x8099
        0x88
        0x808d
        0x8087
        0x82
        0x8183
        0x186
        0x18c
        0x8189
        0x198
        0x819d
        0x8197
        0x192
        0x1b0
        0x81b5
        0x81bf
        0x1ba
        0x81ab
        0x1ae
        0x1a4
        0x81a1
        0x1e0
        0x81e5
        0x81ef
        0x1ea
        0x81fb
        0x1fe
        0x1f4
        0x81f1
        0x81d3
        0x1d6
        0x1dc
        0x81d9
        0x1c8
        0x81cd
        0x81c7
        0x1c2
        0x140
        0x8145
        0x814f
        0x14a
        0x815b
        0x15e
        0x154
        0x8151
        0x8173
        0x176
        0x17c
        0x8179
        0x168
        0x816d
        0x8167
        0x162
        0x8123
        0x126
        0x12c
        0x8129
        0x138
        0x813d
        0x8137
        0x132
        0x110
        0x8115
        0x811f
        0x11a
        0x810b
        0x10e
        0x104
        0x8101
        0x8303
        0x306
        0x30c
        0x8309
        0x318
        0x831d
        0x8317
        0x312
        0x330
        0x8335
        0x833f
        0x33a
        0x832b
        0x32e
        0x324
        0x8321
        0x360
        0x8365
        0x836f
        0x36a
        0x837b
        0x37e
        0x374
        0x8371
        0x8353
        0x356
        0x35c
        0x8359
        0x348
        0x834d
        0x8347
        0x342
        0x3c0
        0x83c5
        0x83cf
        0x3ca
        0x83db
        0x3de
        0x3d4
        0x83d1
        0x83f3
        0x3f6
        0x3fc
        0x83f9
        0x3e8
        0x83ed
        0x83e7
        0x3e2
        0x83a3
        0x3a6
        0x3ac
        0x83a9
        0x3b8
        0x83bd
        0x83b7
        0x3b2
        0x390
        0x8395
        0x839f
        0x39a
        0x838b
        0x38e
        0x384
        0x8381
        0x280
        0x8285
        0x828f
        0x28a
        0x829b
        0x29e
        0x294
        0x8291
        0x82b3
        0x2b6
        0x2bc
        0x82b9
        0x2a8
        0x82ad
        0x82a7
        0x2a2
        0x82e3
        0x2e6
        0x2ec
        0x82e9
        0x2f8
        0x82fd
        0x82f7
        0x2f2
        0x2d0
        0x82d5
        0x82df
        0x2da
        0x82cb
        0x2ce
        0x2c4
        0x82c1
        0x8243
        0x246
        0x24c
        0x8249
        0x258
        0x825d
        0x8257
        0x252
        0x270
        0x8275
        0x827f
        0x27a
        0x826b
        0x26e
        0x264
        0x8261
        0x220
        0x8225
        0x822f
        0x22a
        0x823b
        0x23e
        0x234
        0x8231
        0x8213
        0x216
        0x21c
        0x8219
        0x208
        0x820d
        0x8207
        0x202
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
        0x1231
        0x210
        0x3273
        0x2252
        0x52b5
        0x4294
        0x72f7
        0x62d6
        0x9339
        0x8318
        0xb37b
        0xa35a
        0xd3bd
        0xc39c
        0xf3ff
        0xe3de
        0x2462
        0x3443
        0x420
        0x1401
        0x64e6
        0x74c7
        0x44a4
        0x5485
        0xa56a
        0xb54b
        0x8528
        0x9509
        0xe5ee
        0xf5cf
        0xc5ac
        0xd58d
        0x3653
        0x2672
        0x1611
        0x630
        0x76d7
        0x66f6
        0x5695
        0x46b4
        0xb75b
        0xa77a
        0x9719
        0x8738
        0xf7df
        0xe7fe
        0xd79d
        0xc7bc
        0x48c4
        0x58e5
        0x6886
        0x78a7
        0x840
        0x1861
        0x2802
        0x3823
        0xc9cc
        0xd9ed
        0xe98e
        0xf9af
        0x8948
        0x9969
        0xa90a
        0xb92b
        0x5af5
        0x4ad4
        0x7ab7
        0x6a96
        0x1a71
        0xa50
        0x3a33
        0x2a12
        0xdbfd
        0xcbdc
        0xfbbf
        0xeb9e
        0x9b79
        0x8b58
        0xbb3b
        0xab1a
        0x6ca6
        0x7c87
        0x4ce4
        0x5cc5
        0x2c22
        0x3c03
        0xc60
        0x1c41
        0xedae
        0xfd8f
        0xcdec
        0xddcd
        0xad2a
        0xbd0b
        0x8d68
        0x9d49
        0x7e97
        0x6eb6
        0x5ed5
        0x4ef4
        0x3e13
        0x2e32
        0x1e51
        0xe70
        0xff9f
        0xefbe
        0xdfdd
        0xcffc
        0xbf1b
        0xaf3a
        0x9f59
        0x8f78
        0x9188
        0x81a9
        0xb1ca
        0xa1eb
        0xd10c
        0xc12d
        0xf14e
        0xe16f
        0x1080
        0xa1
        0x30c2
        0x20e3
        0x5004
        0x4025
        0x7046
        0x6067
        0x83b9
        0x9398
        0xa3fb
        0xb3da
        0xc33d
        0xd31c
        0xe37f
        0xf35e
        0x2b1
        0x1290
        0x22f3
        0x32d2
        0x4235
        0x5214
        0x6277
        0x7256
        0xb5ea
        0xa5cb
        0x95a8
        0x8589
        0xf56e
        0xe54f
        0xd52c
        0xc50d
        0x34e2
        0x24c3
        0x14a0
        0x481
        0x7466
        0x6447
        0x5424
        0x4405
        0xa7db
        0xb7fa
        0x8799
        0x97b8
        0xe75f
        0xf77e
        0xc71d
        0xd73c
        0x26d3
        0x36f2
        0x691
        0x16b0
        0x6657
        0x7676
        0x4615
        0x5634
        0xd94c
        0xc96d
        0xf90e
        0xe92f
        0x99c8
        0x89e9
        0xb98a
        0xa9ab
        0x5844
        0x4865
        0x7806
        0x6827
        0x18c0
        0x8e1
        0x3882
        0x28a3
        0xcb7d
        0xdb5c
        0xeb3f
        0xfb1e
        0x8bf9
        0x9bd8
        0xabbb
        0xbb9a
        0x4a75
        0x5a54
        0x6a37
        0x7a16
        0xaf1
        0x1ad0
        0x2ab3
        0x3a92
        0xfd2e
        0xed0f
        0xdd6c
        0xcd4d
        0xbdaa
        0xad8b
        0x9de8
        0x8dc9
        0x7c26
        0x6c07
        0x5c64
        0x4c45
        0x3ca2
        0x2c83
        0x1ce0
        0xcc1
        0xef1f
        0xff3e
        0xcf5d
        0xdf7c
        0xaf9b
        0xbfba
        0x8fd9
        0x9ff8
        0x6e17
        0x7e36
        0x4e55
        0x5e74
        0x2e93
        0x3eb2
        0xed1
        0x1ef0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CRC_XModem([B)S
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 180
    aget-byte v3, p0, v1

    move v4, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_3

    rsub-int/lit8 v5, v2, 0x7

    shr-int v5, v3, v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    shr-int/lit8 v7, v4, 0xf

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    shl-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    xor-int/lit16 v4, v4, 0x1021

    int-to-short v4, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_4
    const p0, 0xffff

    and-int/2addr p0, v2

    int-to-short p0, p0

    return p0
.end method

.method public static calc1021(S[B)S
    .locals 2

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/Crc16Utils;->calc1021(S[BII)S

    move-result p0

    return p0
.end method

.method public static calc1021(S[BII)S
    .locals 2

    move v0, p0

    move p0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge p0, v1, :cond_0

    .line 159
    aget-byte v1, p1, p0

    invoke-static {v0, v1}, Lcom/gg/reader/api/utils/Crc16Utils;->calc1021_byte(SB)S

    move-result v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    not-int p0, v0

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method private static calc1021_byte(SB)S
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    xor-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    .line 141
    sget-object v0, Lcom/gg/reader/api/utils/Crc16Utils;->table1021:[I

    aget p1, v0, p1

    xor-int/2addr p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static calc8005(S[B)S
    .locals 2

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/Crc16Utils;->calc8005(S[BII)S

    move-result p0

    return p0
.end method

.method public static calc8005(S[BII)S
    .locals 2

    move v0, p0

    move p0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge p0, v1, :cond_0

    .line 115
    aget-byte v1, p1, p0

    invoke-static {v0, v1}, Lcom/gg/reader/api/utils/Crc16Utils;->calc8005_byte(SB)S

    move-result v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const p0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private static calc8005_byte(SB)S
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    xor-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    .line 97
    sget-object v0, Lcom/gg/reader/api/utils/Crc16Utils;->table8005:[I

    aget p1, v0, p1

    xor-int/2addr p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method
