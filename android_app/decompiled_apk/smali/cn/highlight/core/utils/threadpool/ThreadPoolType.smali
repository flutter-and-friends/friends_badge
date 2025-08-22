.class public final enum Lcn/highlight/core/utils/threadpool/ThreadPoolType;
.super Ljava/lang/Enum;
.source "ThreadPoolType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/core/utils/threadpool/ThreadPoolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/core/utils/threadpool/ThreadPoolType;

.field public static final enum CACHED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

.field public static final enum CUSTOM:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

.field public static final enum FIXED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

.field public static final enum SCHEDULED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

.field public static final enum SINGLE:Lcn/highlight/core/utils/threadpool/ThreadPoolType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v1, 0x0

    const-string v2, "CACHED"

    invoke-direct {v0, v2, v1}, Lcn/highlight/core/utils/threadpool/ThreadPoolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CACHED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v2, 0x1

    const-string v3, "FIXED"

    invoke-direct {v0, v3, v2}, Lcn/highlight/core/utils/threadpool/ThreadPoolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->FIXED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v3, 0x2

    const-string v4, "SCHEDULED"

    invoke-direct {v0, v4, v3}, Lcn/highlight/core/utils/threadpool/ThreadPoolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SCHEDULED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v4, 0x3

    const-string v5, "SINGLE"

    invoke-direct {v0, v5, v4}, Lcn/highlight/core/utils/threadpool/ThreadPoolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SINGLE:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v5, 0x4

    const-string v6, "CUSTOM"

    invoke-direct {v0, v6, v5}, Lcn/highlight/core/utils/threadpool/ThreadPoolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CUSTOM:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    .line 20
    sget-object v6, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CACHED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    aput-object v6, v0, v1

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->FIXED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SCHEDULED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SINGLE:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CUSTOM:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    aput-object v1, v0, v5

    sput-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->$VALUES:[Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/ThreadPoolType;
    .locals 1

    .line 20
    const-class v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-object p0
.end method

.method public static values()[Lcn/highlight/core/utils/threadpool/ThreadPoolType;
    .locals 1

    .line 20
    sget-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->$VALUES:[Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    invoke-virtual {v0}, [Lcn/highlight/core/utils/threadpool/ThreadPoolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-object v0
.end method
