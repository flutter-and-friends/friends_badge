.class Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;
.super Lcn/highlight/lib_doodle/DoodleView;
.source "ModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/activity/ModelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoodleViewWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ModelActivity;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    .line 350
    invoke-direct {p0, p2, p3, p4, p5}, Lcn/highlight/lib_doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V

    return-void
.end method


# virtual methods
.method public redo(I)Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 386
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->redo(I)Z

    move-result p1

    return p1
.end method

.method public setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 367
    instance-of v0, p1, Lcn/highlight/lib_doodle/DoodleColor;

    if-eqz v0, :cond_0

    .line 368
    check-cast p1, Lcn/highlight/lib_doodle/DoodleColor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 371
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 372
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleColor;->copy()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    :cond_1
    return-void
.end method

.method public setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V
    .locals 1

    .line 355
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 356
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, v0, :cond_0

    .line 357
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget v0, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->DEFAULT_TEXT_SIZE:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setSize(F)V

    goto :goto_0

    .line 358
    :cond_0
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, v0, :cond_1

    .line 359
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget v0, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->DEFAULT_BITMAP_SIZE:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setSize(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public undo()Z
    .locals 2

    .line 379
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 380
    invoke-super {p0}, Lcn/highlight/lib_doodle/DoodleView;->undo()Z

    move-result v0

    return v0
.end method
