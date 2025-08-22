.class Lcn/highlight/work_card_write/activity/Model2Activity$9;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field final synthetic val$imageSizeSeekBarProgress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->val$imageSizeSeekBarProgress:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1565
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->val$imageSizeSeekBarProgress:Landroid/widget/TextView;

    add-int/lit8 p3, p2, 0x14

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1566
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p1, :cond_0

    .line 1567
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3e800000    # 0.25f

    int-to-float p2, p2

    const p3, 0x3c28f5c2

    mul-float p2, p2, p3

    add-float/2addr p2, p1

    .line 1571
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$9;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
