.class Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserInfoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/UserInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/UserInfoActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;Lcn/highlight/work_card_write/activity/UserInfoActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$2;->this$0:Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$2;->val$target:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$2;->val$target:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/UserInfoActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
