.class Lcn/highlight/work_card_write/activity/CropActivity$2;
.super Ljava/lang/Object;
.source "CropActivity.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/callback/CropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/CropActivity;->onViewClicked(Landroid/view/View;)V
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

    .line 184
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity$2;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 187
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    .line 188
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity$2;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    const-class v1, Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity$2;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/CropActivity;->access$000(Lcn/highlight/work_card_write/activity/CropActivity;)I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity$2;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/CropActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity$2;->this$0:Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/CropActivity;->finishActivity()V

    return-void
.end method
