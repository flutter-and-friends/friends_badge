.class Lcn/highlight/work_card_write/view/CycleWheelView$3;
.super Landroid/graphics/drawable/Drawable;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/view/CycleWheelView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/view/CycleWheelView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 415
    iget-object v1, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-virtual {v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->getWidth()I

    move-result v1

    .line 416
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 417
    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$500(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$600(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 419
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 420
    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$700(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 422
    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$800(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 423
    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    iget-object v4, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v4}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    mul-int v3, v3, v4

    int-to-float v3, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, p1

    move/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 424
    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    iget-object v4, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v4}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v4}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v4

    iget-object v5, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 425
    invoke-static {v5}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v5

    mul-int v4, v4, v5

    int-to-float v4, v4

    move/from16 v17, v3

    move/from16 v19, v4

    .line 424
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 426
    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    int-to-float v11, v2

    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 427
    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    int-to-float v13, v2

    const/4 v10, 0x0

    move-object/from16 v9, p1

    move v12, v1

    .line 426
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 428
    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    int-to-float v4, v2

    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 429
    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    int-to-float v6, v2

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move v5, v1

    move-object v7, v8

    .line 428
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 430
    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    int-to-float v4, v2

    iget-object v2, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v2

    iget-object v3, v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 431
    invoke-static {v3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    int-to-float v6, v2

    const/4 v3, 0x0

    move-object/from16 v2, p1

    .line 430
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
