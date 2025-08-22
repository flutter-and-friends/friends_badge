.class Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "IdentityActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/IdentityActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/IdentityActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;Lcn/highlight/work_card_write/activity/IdentityActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$1;->this$0:Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$1;->val$target:Lcn/highlight/work_card_write/activity/IdentityActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$1;->val$target:Lcn/highlight/work_card_write/activity/IdentityActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/IdentityActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
