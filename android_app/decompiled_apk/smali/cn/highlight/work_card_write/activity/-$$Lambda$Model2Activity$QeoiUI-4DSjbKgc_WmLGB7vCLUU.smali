.class public final synthetic Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;->f$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;->f$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->lambda$showErrorDialog$4$Model2Activity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
