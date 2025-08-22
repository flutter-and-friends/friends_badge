.class Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LanguageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/LanguageActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$6;->this$0:Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$6;->val$target:Lcn/highlight/work_card_write/activity/LanguageActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$6;->val$target:Lcn/highlight/work_card_write/activity/LanguageActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
