.class public Lcn/highlight/tx/app/CmdCRT;
.super Ljava/lang/Object;
.source "CmdCRT.java"


# static fields
.field private static TAG:Ljava/lang/String; = "CmdCRT"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCardSerial()[B
    .locals 5

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v3, 0x1

    const/16 v4, 0x20

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 24
    invoke-static {v0}, Lcn/highlight/tx/utils/BCCUtil;->getXor2([B)B

    move-result v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCardSerial2()[B
    .locals 4

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    aput-byte v3, v0, v3

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isValid([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 59
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 63
    invoke-static {p0}, Lcn/highlight/tx/utils/BCCUtil;->getXor2([B)B

    move-result v3

    aget-byte p0, p0, v1

    if-eq v3, p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0
.end method
