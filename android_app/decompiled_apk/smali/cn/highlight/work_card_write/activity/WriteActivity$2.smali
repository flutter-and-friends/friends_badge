.class Lcn/highlight/work_card_write/activity/WriteActivity$2;
.super Ljava/lang/Object;
.source "WriteActivity.java"

# interfaces
.implements Lcn/highlight/tx/listener/OnConnStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;->connectBLE(Lcn/highlight/tx/ble/data/BleDevice;)V
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

    .line 868
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connFail()V
    .locals 4

    .line 879
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$002(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 880
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$602(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 881
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-virtual {v3, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$200(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 882
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$400(Lcn/highlight/work_card_write/activity/WriteActivity;)Lcn/highlight/tx/BaseTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/BaseTxManager;->disConn()V

    .line 883
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    return-void
.end method

.method public connSuccess()V
    .locals 3

    .line 871
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$002(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 872
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$602(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 873
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$700(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    return-void
.end method

.method public disConnected()V
    .locals 7

    .line 888
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$002(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 889
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$602(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 890
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$802(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 891
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$900(Lcn/highlight/work_card_write/activity/WriteActivity;)Z

    move-result v0

    const-string v2, ""

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1000(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 893
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v4, 0x7f10010b

    invoke-virtual {v0, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v6, 0x7f100049

    invoke-virtual {v5, v6}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$200(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 894
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/16 v4, 0x3e8

    invoke-static {v0, v2, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;I)V

    .line 896
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1202(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 897
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1302(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 898
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1400(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    .line 899
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$2;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    return-void
.end method
