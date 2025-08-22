.class Lcn/highlight/work_card_write/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/LoginActivity;->showOrgPop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/LoginActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$1;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$1;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    iget-object v0, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->ivArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method
