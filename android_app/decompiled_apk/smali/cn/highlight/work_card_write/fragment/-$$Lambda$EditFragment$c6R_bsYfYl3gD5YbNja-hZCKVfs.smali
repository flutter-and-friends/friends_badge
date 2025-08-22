.class public final synthetic Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;

    invoke-direct {v0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;-><init>()V

    sput-object v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;->INSTANCE:Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    check-cast p2, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/fragment/EditFragment;->lambda$initUsedData$1(Lcn/highlight/work_card_write/greendao/table/BadgeBean;Lcn/highlight/work_card_write/greendao/table/BadgeBean;)I

    move-result p1

    return p1
.end method
