.class Lcn/highlight/work_card_write/activity/Model2Activity$5;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$str3:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;[Ljava/lang/String;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 1007
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1008
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget-object v0, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1009
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget-object v1, v1, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v1, p1

    .line 1010
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$200(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleView;

    move-result-object p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p1

    .line 1011
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$200(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleView;

    move-result-object v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v0

    .line 1013
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    instance-of v1, v1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleText;

    .line 1018
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$700(Lcn/highlight/work_card_write/activity/Model2Activity;)F

    move-result v2

    const v3, 0x447ac000    # 1003.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const v3, 0x44898000    # 1100.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1020
    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleText;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->getMaxWidth(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 1021
    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleText;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->getMaxHeight(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1022
    invoke-virtual {v1, p1, v0}, Lcn/highlight/lib_doodle/DoodleText;->setLocation(FF)V

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    const-string v2, "\u9ed1\u8272"

    invoke-static {v1, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$500(Lcn/highlight/work_card_write/activity/Model2Activity;Ljava/lang/String;)I

    move-result v1

    .line 1027
    new-instance v10, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v3

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    aget-object v4, v2, v9

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget v2, v2, Lcn/highlight/work_card_write/activity/Model2Activity;->MIN_TEXT_SIZE:I

    int-to-float v5, v2

    new-instance v6, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-direct {v6, v1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    move-object v2, v10

    move v7, p1

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V

    .line 1028
    move-object v1, v10

    check-cast v1, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->getMaxWidth(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 1029
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->getMaxHeight(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1030
    invoke-interface {v10, p1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 1031
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    invoke-interface {p1, v10}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1032
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 1033
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    const-string v1, "\u9ed8\u8ba4"

    invoke-virtual {p1, v0, v1}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 1034
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 954
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p1, :cond_0

    .line 955
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    goto :goto_0

    .line 957
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    const-string p2, "\u9ed1\u8272"

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$500(Lcn/highlight/work_card_write/activity/Model2Activity;Ljava/lang/String;)I

    move-result p1

    .line 958
    new-instance p2, Lcn/highlight/lib_doodle/DoodleText;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$600(Lcn/highlight/work_card_write/activity/Model2Activity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iget p3, p3, Lcn/highlight/work_card_write/activity/Model2Activity;->MIN_TEXT_SIZE:I

    int-to-float v3, p3

    new-instance v4, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-direct {v4, p1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40400000    # 3.0f

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V

    move-object p1, p2

    .line 960
    :goto_0
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result p1

    invoke-static {p2, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$702(Lcn/highlight/work_card_write/activity/Model2Activity;F)F

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 18

    move-object/from16 v0, p0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$600(Lcn/highlight/work_card_write/activity/Model2Activity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 972
    invoke-static {v3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 973
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    const-string v9, "\n"

    const/4 v10, 0x1

    if-ne v7, v8, :cond_0

    .line 976
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x0

    goto :goto_1

    .line 981
    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v6, v10

    .line 983
    new-instance v8, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v11, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v11}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/high16 v14, 0x42f00000    # 120.0f

    new-instance v15, Lcn/highlight/lib_doodle/DoodleColor;

    const/high16 v11, -0x1000000

    invoke-direct {v15, v11}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    const/high16 v16, 0x40400000    # 3.0f

    const/high16 v17, 0x40400000    # 3.0f

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V

    .line 984
    iget-object v11, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v11}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v11

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v11}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v11

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    instance-of v11, v11, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v11, :cond_1

    .line 985
    iget-object v11, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v11}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v11

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    invoke-interface {v11}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v11

    invoke-interface {v8, v11}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    .line 987
    :cond_1
    invoke-interface {v8}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x44800000    # 1024.0f

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_2

    if-eq v6, v10, :cond_2

    .line 989
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 992
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_1

    .line 995
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 998
    :cond_3
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_2

    .line 1000
    :cond_4
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity$5;->val$str3:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    :goto_2
    return-void
.end method
