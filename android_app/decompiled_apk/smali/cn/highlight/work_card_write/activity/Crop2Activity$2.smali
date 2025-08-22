.class Lcn/highlight/work_card_write/activity/Crop2Activity$2;
.super Ljava/lang/Object;
.source "Crop2Activity.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/callback/CropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Crop2Activity;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Crop2Activity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Crop2Activity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Crop2Activity;

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

    .line 134
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 136
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Crop2Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcn/highlight/work_card_write/activity/Crop2Activity;->setResult(ILandroid/content/Intent;)V

    .line 137
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Crop2Activity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/Crop2Activity;->finishActivity()V

    return-void
.end method
