.class public Lcom/gg/reader/api/utils/DesUtils;
.super Ljava/lang/Object;
.source "DesUtils.java"


# static fields
.field public static final DES3_CBC:Ljava/lang/String; = "DESede/CBC/NoPadding"

.field public static final DES3_ECB:Ljava/lang/String; = "DESede/ECB/NoPadding"

.field public static final DES_CBC:Ljava/lang/String; = "DES/CBC/NoPadding"

.field public static final DES_ECB:Ljava/lang/String; = "DES/ECB/NoPadding"

.field public static desDcbKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/sun/crypto/provider/SunJCE;

    invoke-direct {v0}, Lcom/sun/crypto/provider/SunJCE;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 27
    fill-array-data v0, :array_0

    sput-object v0, Lcom/gg/reader/api/utils/DesUtils;->desDcbKey:[B

    return-void

    :array_0
    .array-data 1
        0x67t
        0x78t
        0x77t
        0x6ct
        0x69t
        0x6ft
        0x74t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 151
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 152
    invoke-static {p2}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 153
    invoke-static {p0, p1, p2}, Lcom/gg/reader/api/utils/DesUtils;->decode(Ljava/lang/String;[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;[B[B)[B
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 115
    array-length v0, p1

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    array-length v0, p2

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 119
    array-length v0, p1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 121
    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    const/16 v0, 0x2f

    .line 127
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 132
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p1, 0x2

    .line 134
    invoke-virtual {p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 135
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static decodeDES_ECB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "DES/ECB/NoPadding"

    .line 198
    invoke-static {v0, p0, p1}, Lcom/gg/reader/api/utils/DesUtils;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeDES_ECB([B[B)[B
    .locals 1

    const-string v0, "DES/ECB/NoPadding"

    .line 187
    invoke-static {v0, p0, p1}, Lcom/gg/reader/api/utils/DesUtils;->decode(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 98
    invoke-static {p2}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 99
    invoke-static {p0, p1, p2}, Lcom/gg/reader/api/utils/DesUtils;->encode(Ljava/lang/String;[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;[B[B)[B
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 60
    array-length v0, p1

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    array-length v0, p2

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 64
    array-length v0, p1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 66
    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    const/16 v0, 0x2f

    .line 72
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 77
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 80
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static encodeDES_ECB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "DES/ECB/NoPadding"

    .line 176
    invoke-static {v0, p0, p1}, Lcom/gg/reader/api/utils/DesUtils;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeDES_ECB([B[B)[B
    .locals 1

    const-string v0, "DES/ECB/NoPadding"

    .line 165
    invoke-static {v0, p0, p1}, Lcom/gg/reader/api/utils/DesUtils;->encode(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method
