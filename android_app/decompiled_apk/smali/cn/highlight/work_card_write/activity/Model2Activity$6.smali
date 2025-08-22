.class Lcn/highlight/work_card_write/activity/Model2Activity$6;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field final synthetic val$bgAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;

.field final synthetic val$textStyleSeekBarProgress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->val$textStyleSeekBarProgress:Landroid/widget/TextView;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->val$bgAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1144
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->val$textStyleSeekBarProgress:Landroid/widget/TextView;

    add-int/lit8 v3, v1, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    instance-of v2, v2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v1, v1

    const v3, 0x3dac7692

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    .line 1150
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    .line 1153
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotX()F

    move-result v1

    .line 1154
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result v2

    .line 1155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    iget-object v5, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$600(Lcn/highlight/work_card_write/activity/Model2Activity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1160
    invoke-static {v5}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1161
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 1162
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    const-string v11, "\n"

    const/4 v12, 0x1

    if-ne v9, v10, :cond_0

    .line 1164
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x0

    goto :goto_1

    .line 1169
    :cond_0
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v8, v12

    .line 1171
    new-instance v10, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v13, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v13}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x42f00000    # 120.0f

    new-instance v13, Lcn/highlight/lib_doodle/DoodleColor;

    const/high16 v6, -0x1000000

    invoke-direct {v13, v6}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    const/high16 v18, 0x40400000    # 3.0f

    const/high16 v19, 0x40400000    # 3.0f

    move-object v6, v13

    move-object v13, v10

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v19}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V

    .line 1172
    iget-object v6, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v6}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v6

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v6

    invoke-interface {v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v6

    invoke-interface {v10, v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    .line 1173
    invoke-interface {v10}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x44800000    # 1024.0f

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_1

    if-eq v8, v12, :cond_1

    .line 1175
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1176
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1178
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1181
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v3

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 1185
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v3

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v3

    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotX()F

    move-result v3

    .line 1186
    iget-object v4, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v4}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v4

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v4

    invoke-interface {v4}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result v4

    .line 1187
    iget-object v5, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v5

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v5

    invoke-interface {v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 1188
    iget-object v6, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v6}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v6

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v6

    invoke-interface {v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 1189
    iget-object v7, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v7}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v7

    invoke-virtual {v7}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v7

    sub-float/2addr v1, v3

    add-float/2addr v5, v1

    sub-float/2addr v2, v4

    add-float/2addr v6, v2

    invoke-interface {v7, v5, v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 1192
    :cond_3
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->val$bgAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;

    iget-object v2, v2, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$500(Lcn/highlight/work_card_write/activity/Model2Activity;Ljava/lang/String;)I

    move-result v1

    .line 1193
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v2

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v2, v1}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    :cond_4
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
