.class Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InstructionActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/InstructionActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/InstructionActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;Lcn/highlight/work_card_write/activity/InstructionActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding$1;->this$0:Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding$1;->val$target:Lcn/highlight/work_card_write/activity/InstructionActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding$1;->val$target:Lcn/highlight/work_card_write/activity/InstructionActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/InstructionActivity;->onViewClicked()V

    return-void
.end method
