.class Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CropActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/CropActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/CropActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CropActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$4;->this$0:Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$4;->val$target:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$4;->val$target:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/CropActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
