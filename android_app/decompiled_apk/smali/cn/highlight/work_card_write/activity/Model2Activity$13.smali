.class Lcn/highlight/work_card_write/activity/Model2Activity$13;
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

.field final synthetic val$shapeWidthSeekBarProgress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;)V
    .locals 0

    .line 2178
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->val$shapeWidthSeekBarProgress:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .line 2181
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->val$shapeWidthSeekBarProgress:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, p2, 0x5

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2182
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz p1, :cond_0

    .line 2183
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->val$shapeWidthSeekBarProgress:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2184
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleShape1;->setWidth(I)V

    .line 2185
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result v4

    .line 2186
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result v3

    .line 2187
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result v5

    .line 2188
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result v6

    .line 2189
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result v7

    add-int/lit8 p1, v5, 0x5

    add-int/lit8 p2, v6, 0x5

    .line 2190
    invoke-static {v3, v4, p1, p2, v7}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateGraph(IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2192
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$13;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

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
