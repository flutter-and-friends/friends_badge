.class public Lcn/highlight/core/utils/LogManage;
.super Ljava/lang/Object;
.source "LogManage.java"


# static fields
.field private static LOG_ENABLE:Z = true

.field private static TAG:Ljava/lang/String; = "LogManage"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cutStr([BI)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    array-length v1, p0

    if-lt p1, v1, :cond_1

    .line 165
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 168
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const/4 p0, 0x0

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v1, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static dAll(Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 67
    sget-object v1, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcn/highlight/core/utils/LogManage;->print(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 90
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_0
    sget-object p0, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static eAll(Ljava/lang/String;)V
    .locals 2

    .line 96
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 97
    sget-object v1, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcn/highlight/core/utils/LogManage;->print(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static init(ZLjava/lang/String;)V
    .locals 0

    .line 25
    sput-boolean p0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    .line 26
    sput-object p1, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 122
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xfa0

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 130
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 131
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v2, 0x1

    .line 137
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "\u5206\u6bb5\u6253\u5370(%s):%s"

    if-ge v0, v3, :cond_2

    .line 139
    invoke-static {v1, v0}, Lcn/highlight/core/utils/LogManage;->cutStr([BI)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    aput-object v3, v5, p2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move v2, v7

    goto :goto_0

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v2, v0, p2

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 78
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcn/highlight/core/utils/LogManage;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-boolean v0, Lcn/highlight/core/utils/LogManage;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
