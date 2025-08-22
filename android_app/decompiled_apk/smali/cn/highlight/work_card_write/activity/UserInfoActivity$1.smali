.class Lcn/highlight/work_card_write/activity/UserInfoActivity$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/UserInfoActivity;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity;

.field final synthetic val$hintDialog:Lcn/highlight/work_card_write/dialog/HintDialog;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/UserInfoActivity;Lcn/highlight/work_card_write/dialog/HintDialog;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->val$hintDialog:Lcn/highlight/work_card_write/dialog/HintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoClick(Landroid/view/View;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->val$hintDialog:Lcn/highlight/work_card_write/dialog/HintDialog;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/dialog/HintDialog;->dismiss()V

    return-void
.end method

.method public onYesClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    const-string v0, "Identity"

    const-string v1, "Person"

    invoke-static {p1, v0, v1}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity;->changeFrag(I)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->val$hintDialog:Lcn/highlight/work_card_write/dialog/HintDialog;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/dialog/HintDialog;->dismiss()V

    .line 81
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    const-class v0, Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/UserInfoActivity;->launchActivity(Ljava/lang/Class;)V

    .line 82
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;->this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/UserInfoActivity;->finishActivity()V

    return-void
.end method
