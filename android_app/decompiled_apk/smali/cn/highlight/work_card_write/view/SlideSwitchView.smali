.class public Lcn/highlight/work_card_write/view/SlideSwitchView;
.super Landroid/view/View;
.source "SlideSwitchView.java"


# instance fields
.field private closeImage:Landroid/graphics/Bitmap;

.field private imageHeight:I

.field private imageWidth:I

.field private isChecked:Z

.field private openImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked:Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object v0, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->openImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->closeImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 53
    iget-boolean v2, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 54
    :goto_0
    iget v1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->imageWidth:I

    if-eqz v1, :cond_1

    iget v2, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->imageHeight:I

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 55
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked:Z

    .line 40
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/SlideSwitchView;->invalidate()V

    return-void
.end method

.method public setSwitchImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->openImage:Landroid/graphics/Bitmap;

    .line 28
    iput-object p2, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->closeImage:Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/SlideSwitchView;->invalidate()V

    return-void
.end method

.method public setSwitchImageSize(II)V
    .locals 0

    .line 33
    iput p1, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->imageWidth:I

    .line 34
    iput p2, p0, Lcn/highlight/work_card_write/view/SlideSwitchView;->imageHeight:I

    .line 35
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/SlideSwitchView;->invalidate()V

    return-void
.end method
