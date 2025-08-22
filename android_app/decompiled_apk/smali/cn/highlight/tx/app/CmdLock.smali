.class public Lcn/highlight/tx/app/CmdLock;
.super Ljava/lang/Object;
.source "CmdLock.java"


# static fields
.field public static final CMD_getAllCabinetLockStatus:B = -0x7ct

.field public static final CMD_getCabinetLockStatus:B = -0x7dt

.field public static final CMD_openAllCabinet:B = -0x7at

.field public static final CMD_openMoreCabinet:B = -0x79t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllCabinetLockStatus(B)[B
    .locals 4

    const/16 v0, 0x8

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x4b

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x59

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    const/4 v0, 0x5

    aput-byte p0, v1, v0

    const/4 p0, 0x6

    const/16 v0, -0x7c

    aput-byte v0, v1, p0

    const/4 p0, 0x7

    .line 32
    invoke-static {v1}, Lcn/highlight/tx/app/CmdLock;->getCheck([B)B

    move-result v0

    aput-byte v0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCabinetLockStatus(BI)[B
    .locals 4

    const/16 v0, 0x9

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x4b

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x59

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    const/4 v0, 0x5

    aput-byte p0, v1, v0

    const/4 p0, 0x6

    const/16 v0, -0x7d

    aput-byte v0, v1, p0

    const/4 p0, 0x7

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    const/16 p0, 0x8

    .line 56
    invoke-static {v1}, Lcn/highlight/tx/app/CmdLock;->getCheck([B)B

    move-result p1

    aput-byte p1, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCheck([B)B
    .locals 4

    const/4 v0, 0x0

    .line 130
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    move v2, v0

    const/4 v0, 0x1

    .line 131
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 132
    aget-byte v3, p0, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static isValid([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 142
    array-length v1, p0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    aget-byte v1, p0, v0

    const/16 v2, 0x57

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x59

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {p0}, Lcn/highlight/tx/app/CmdLock;->getCheck([B)B

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, v1

    aget-byte p0, p0, v3

    if-eq v2, p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static openAllCabinet(B)[B
    .locals 4

    const/16 v0, 0x8

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x4b

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x59

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    const/4 v0, 0x5

    aput-byte p0, v1, v0

    const/4 p0, 0x6

    const/16 v0, -0x7a

    aput-byte v0, v1, p0

    const/4 p0, 0x7

    .line 80
    invoke-static {v1}, Lcn/highlight/tx/app/CmdLock;->getCheck([B)B

    move-result v0

    aput-byte v0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static openMoreCabinet(BLjava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 97
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    .line 101
    new-array v2, v1, [B

    const/16 v3, 0x57

    const/4 v4, 0x0

    .line 102
    aput-byte v3, v2, v4

    const/16 v3, 0x4b

    const/4 v5, 0x1

    .line 103
    aput-byte v3, v2, v5

    const/4 v3, 0x2

    const/16 v6, 0x4c

    .line 104
    aput-byte v6, v2, v3

    const/4 v3, 0x3

    const/16 v6, 0x59

    .line 105
    aput-byte v6, v2, v3

    const/4 v3, 0x4

    int-to-byte v1, v1

    .line 106
    aput-byte v1, v2, v3

    const/4 v1, 0x5

    .line 107
    aput-byte p0, v2, v1

    const/4 p0, 0x6

    const/16 v1, -0x79

    .line 108
    aput-byte v1, v2, p0

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    int-to-byte p0, p0

    const/4 v1, 0x7

    aput-byte p0, v2, v1

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 113
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-byte p0, p0

    .line 114
    aput-byte p0, v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v5

    .line 117
    invoke-static {v2}, Lcn/highlight/tx/app/CmdLock;->getCheck([B)B

    move-result p0

    aput-byte p0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method
