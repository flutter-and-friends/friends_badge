.class Lcn/highlight/work_card_write/activity/ModelActivity$2;
.super Ljava/lang/Object;
.source "ModelActivity.java"

# interfaces
.implements Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/ModelActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ModelActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSelectableItem(Lcn/highlight/lib_doodle/IDoodle;FF)V
    .locals 0

    return-void
.end method

.method public onOperationItem()V
    .locals 0

    return-void
.end method

.method public onSelectedItem(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/IDoodleSelectableItem;Z)V
    .locals 0

    if-eqz p3, :cond_3

    .line 300
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$200(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleView;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcn/highlight/lib_doodle/DoodleView;->setEditMode(Z)V

    .line 301
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p3

    invoke-interface {p1, p3}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 302
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object p3

    invoke-interface {p1, p3}, Lcn/highlight/lib_doodle/IDoodle;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 303
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getSize()F

    move-result p3

    invoke-interface {p1, p3}, Lcn/highlight/lib_doodle/IDoodle;->setSize(F)V

    .line 304
    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object p3, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, p3, :cond_1

    .line 305
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$300(Lcn/highlight/work_card_write/activity/ModelActivity;Lcn/highlight/lib_doodle/DoodleText;)V

    .line 308
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$400(Lcn/highlight/work_card_write/activity/ModelActivity;I)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, p2, :cond_4

    .line 310
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$500(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    .line 313
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$400(Lcn/highlight/work_card_write/activity/ModelActivity;I)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-nez p1, :cond_4

    .line 317
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 318
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$400(Lcn/highlight/work_card_write/activity/ModelActivity;I)V

    :cond_4
    :goto_0
    return-void
.end method
