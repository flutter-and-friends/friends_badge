.class Lcn/highlight/work_card_write/activity/ServiceActivity$1;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/ServiceActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/ServiceActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$1;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$1;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->finishActivity()V

    return-void
.end method
