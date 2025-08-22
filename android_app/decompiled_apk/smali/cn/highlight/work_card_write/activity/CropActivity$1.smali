.class Lcn/highlight/work_card_write/activity/CropActivity$1;
.super Ljava/lang/Object;
.source "CropActivity.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/callback/LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/CropActivity;->initCrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/CropActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/CropActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity$1;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity$1;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/CropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
