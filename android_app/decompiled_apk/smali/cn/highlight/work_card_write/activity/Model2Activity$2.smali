.class Lcn/highlight/work_card_write/activity/Model2Activity$2;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSelectableItem(Lcn/highlight/lib_doodle/IDoodle;FF)V
    .locals 0

    return-void
.end method

.method public onOperationItem()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$400(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    return-void
.end method

.method public onSelectedItem(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/IDoodleSelectableItem;Z)V
    .locals 2

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 262
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$200(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleView;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcn/highlight/lib_doodle/DoodleView;->setEditMode(Z)V

    .line 263
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p3

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    invoke-interface {p3, v1}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 264
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p3

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v1

    invoke-interface {p3, v1}, Lcn/highlight/lib_doodle/IDoodle;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 265
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p3}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p3

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getSize()F

    move-result p2

    invoke-interface {p3, p2}, Lcn/highlight/lib_doodle/IDoodle;->setSize(F)V

    .line 266
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$300(Lcn/highlight/work_card_write/activity/Model2Activity;Z)V

    .line 268
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleBg;

    if-eqz p2, :cond_0

    .line 269
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$300(Lcn/highlight/work_card_write/activity/Model2Activity;Z)V

    .line 271
    :cond_0
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz p2, :cond_1

    .line 272
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleQRCode;->setIsRotating(Z)V

    .line 274
    :cond_1
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz p2, :cond_3

    .line 275
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->setIsRotating(Z)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-nez p2, :cond_3

    .line 279
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p2

    sget-object p3, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p2, p3}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 280
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$2;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {p2, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$300(Lcn/highlight/work_card_write/activity/Model2Activity;Z)V

    :cond_3
    :goto_0
    return-void
.end method
