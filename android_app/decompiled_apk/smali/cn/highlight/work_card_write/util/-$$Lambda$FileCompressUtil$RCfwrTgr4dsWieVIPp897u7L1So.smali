.class public final synthetic Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ltop/zibin/luban/CompressionPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;

    invoke-direct {v0}, Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;-><init>()V

    sput-object v0, Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;->INSTANCE:Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcn/highlight/work_card_write/util/FileCompressUtil;->lambda$compressImg$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
