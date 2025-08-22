.class Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$9;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ModelActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/ModelActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$9;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$9;->val$target:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$9;->val$target:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
