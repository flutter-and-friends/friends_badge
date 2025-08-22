.class public final synthetic Lcn/highlight/core/utils/-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcn/highlight/core/utils/-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/highlight/core/utils/-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY;

    invoke-direct {v0}, Lcn/highlight/core/utils/-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY;-><init>()V

    sput-object v0, Lcn/highlight/core/utils/-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY;->INSTANCE:Lcn/highlight/core/utils/-$$Lambda$LogText$cOKHTEOzYsppWSTGtmHc7JOU8SY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcn/highlight/core/utils/LogText;->lambda$deleteOverdueLog$1()V

    return-void
.end method
