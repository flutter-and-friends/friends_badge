.class public Lcn/highlight/tx/utils/BCCUtil;
.super Ljava/lang/Object;
.source "BCCUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXor([B)B
    .locals 4

    if-eqz p0, :cond_2

    .line 10
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 13
    aget-byte v0, p0, v0

    const/4 v1, 0x3

    move v2, v0

    const/4 v0, 0x3

    .line 15
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    .line 16
    aget-byte v3, p0, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getXor2([B)B
    .locals 4

    const/4 v0, 0x0

    .line 27
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    move v2, v0

    const/4 v0, 0x1

    .line 28
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 29
    aget-byte v3, p0, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
