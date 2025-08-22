.class Lcn/highlight/work_card_write/activity/ModelActivity$1;
.super Ljava/lang/Object;
.source "ModelActivity.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodleListener;


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

    .line 281
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$1;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcn/highlight/lib_doodle/IDoodle;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$1;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 292
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$1;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSupportScaleItem(Z)V

    return-void
.end method

.method public onSaved(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
