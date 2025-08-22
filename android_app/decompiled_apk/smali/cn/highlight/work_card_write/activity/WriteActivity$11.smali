.class Lcn/highlight/work_card_write/activity/WriteActivity$11;
.super Landroid/os/Handler;
.source "WriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/WriteActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 1397
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1400
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ""

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1401
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10011a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1402
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$400(Lcn/highlight/work_card_write/activity/WriteActivity;)Lcn/highlight/tx/BaseTxManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/BaseTxManager;->cancelScan()V

    .line 1403
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$002(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 1404
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v0, 0x7f100113

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v4, 0x7f100048

    invoke-virtual {v3, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$200(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1405
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1400(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 1406
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1408
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x2

    if-ne v0, v2, :cond_1

    .line 1409
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$902(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 1410
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1600(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 1411
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$300(Lcn/highlight/work_card_write/activity/WriteActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1412
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$300(Lcn/highlight/work_card_write/activity/WriteActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1414
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_2

    .line 1415
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1400(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 1416
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1417
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ne v0, v5, :cond_3

    .line 1418
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$902(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 1419
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1600(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 1420
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$300(Lcn/highlight/work_card_write/activity/WriteActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1421
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$300(Lcn/highlight/work_card_write/activity/WriteActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1423
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_4

    .line 1424
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v0, 0x7f10011c

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v4, 0x7f10004a

    invoke-virtual {v3, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$200(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1425
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1400(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 1426
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1427
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 1429
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$11;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1700(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    :cond_5
    :goto_0
    return-void
.end method
