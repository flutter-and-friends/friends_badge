.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 436
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1, p2, p3, p4}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 446
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
