.class Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NFCLocation1Activity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/NFCLocation1Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/NFCLocation1Activity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocation1Activity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding$1;->this$0:Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding$1;->val$target:Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/NFCLocation1Activity_ViewBinding$1;->val$target:Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;->onViewClicked()V

    return-void
.end method
