.class Lcn/highlight/work_card_write/activity/Model2Activity$16;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


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

.field final synthetic val$llShapeSet:Landroid/widget/LinearLayout;

.field final synthetic val$ll_model_shape_style_h:Landroid/widget/LinearLayout;

.field final synthetic val$ll_model_shape_style_rv:Landroid/widget/LinearLayout;

.field final synthetic val$llshapeSetStyle:Landroid/widget/LinearLayout;

.field final synthetic val$shapeHeightSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$shapeHeightSeekBarProgress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0

    .line 2310
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$llShapeSet:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$llshapeSetStyle:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$ll_model_shape_style_h:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$ll_model_shape_style_rv:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$shapeHeightSeekBar:Landroid/widget/SeekBar;

    iput-object p7, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$shapeHeightSeekBarProgress:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 6

    .line 2313
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 2314
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$llShapeSet:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2315
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$llshapeSetStyle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    .line 2321
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$ll_model_shape_style_h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2322
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$ll_model_shape_style_rv:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2323
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz p1, :cond_2

    .line 2325
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result p1

    sget-object v2, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v2

    const-string v3, ""

    if-ne p1, v2, :cond_1

    .line 2327
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {p1, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2328
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$shapeHeightSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 2329
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$shapeHeightSeekBarProgress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2331
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$shapeHeightSeekBarProgress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$shapeHeightSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget-object v5, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v5

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v5

    invoke-interface {v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$ll_model_shape_style_rv:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2335
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$llshapeSetStyle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 2318
    :cond_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$16;->val$llShapeSet:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
