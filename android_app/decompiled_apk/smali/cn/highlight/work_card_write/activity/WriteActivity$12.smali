.class Lcn/highlight/work_card_write/activity/WriteActivity$12;
.super Landroid/os/CountDownTimer;
.source "WriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;->swipe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/WriteActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;JJ)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$12;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1523
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$12;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$12;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1202(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 1525
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$12;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1800(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1517
    div-long/2addr p1, v0

    .line 1518
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$12;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    return-void
.end method
