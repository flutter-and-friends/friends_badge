.class public Lcn/highlight/core/zxing/utils/AppliationUtil;
.super Ljava/lang/Object;
.source "AppliationUtil.java"


# static fields
.field public static FREE_MEMORY:J

.field public static MAX_MEMORY:I

.field public static TOTAL_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x400

    sput v1, Lcn/highlight/core/zxing/utils/AppliationUtil;->MAX_MEMORY:I

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x400

    int-to-long v0, v1

    sput-wide v0, Lcn/highlight/core/zxing/utils/AppliationUtil;->TOTAL_MEMORY:J

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x400

    int-to-long v0, v1

    sput-wide v0, Lcn/highlight/core/zxing/utils/AppliationUtil;->FREE_MEMORY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
