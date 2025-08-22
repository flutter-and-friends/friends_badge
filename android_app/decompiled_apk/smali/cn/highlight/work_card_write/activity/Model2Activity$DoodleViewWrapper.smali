.class Lcn/highlight/work_card_write/activity/Model2Activity$DoodleViewWrapper;
.super Lcn/highlight/lib_doodle/DoodleView;
.source "Model2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoodleViewWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$DoodleViewWrapper;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    .line 311
    invoke-direct {p0, p2, p3, p4, p5}, Lcn/highlight/lib_doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V

    return-void
.end method
