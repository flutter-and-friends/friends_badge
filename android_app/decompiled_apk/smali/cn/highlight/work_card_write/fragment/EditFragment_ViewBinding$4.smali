.class Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/fragment/EditFragment;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/EditFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$4;->this$0:Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$4;->val$target:Lcn/highlight/work_card_write/fragment/EditFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$4;->val$target:Lcn/highlight/work_card_write/fragment/EditFragment;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
