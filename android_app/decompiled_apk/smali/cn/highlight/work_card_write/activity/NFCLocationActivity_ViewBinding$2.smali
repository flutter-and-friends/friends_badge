.class Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NFCLocationActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$2;->this$0:Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$2;->val$target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$2;->val$target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
