.class Lcn/highlight/work_card_write/activity/Model2Activity$15;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetShape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field final synthetic val$shapeRealVirtualSeekBarProgress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;)V
    .locals 0

    .line 2244
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->val$shapeRealVirtualSeekBarProgress:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .line 2247
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->val$shapeRealVirtualSeekBarProgress:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz p1, :cond_0

    .line 2249
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleShape1;->setEffects(I)V

    .line 2250
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result v4

    .line 2251
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result v3

    .line 2252
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result v5

    .line 2253
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result v6

    .line 2254
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result v7

    add-int/lit8 p1, v5, 0x5

    add-int/lit8 p2, v6, 0x5

    .line 2255
    invoke-static {v3, v4, p1, p2, v7}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateGraph(IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2257
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$15;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-static/range {v0 .. v7}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$900(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V

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
