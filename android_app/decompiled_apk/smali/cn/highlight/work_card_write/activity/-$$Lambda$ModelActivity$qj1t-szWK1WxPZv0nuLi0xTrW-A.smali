.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/ModelActivity;

.field private final synthetic f$1:Lcn/highlight/lib_doodle/DoodleText;

.field private final synthetic f$2:F

.field private final synthetic f$3:F

.field private final synthetic f$4:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;Lcn/highlight/lib_doodle/DoodleText;FFLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$1:Lcn/highlight/lib_doodle/DoodleText;

    iput p3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$2:F

    iput p4, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$3:F

    iput-object p5, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$1:Lcn/highlight/lib_doodle/DoodleText;

    iget v2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$2:F

    iget v3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$3:F

    iget-object v4, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/ModelActivity;->lambda$initText$9$ModelActivity(Lcn/highlight/lib_doodle/DoodleText;FFLjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method
