.class Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MyFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$4;->this$0:Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$4;->val$target:Lcn/highlight/work_card_write/fragment/MyFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$4;->val$target:Lcn/highlight/work_card_write/fragment/MyFragment;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
