.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 417
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 418
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 419
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    const-wide/16 v2, 0x534

    .line 423
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 424
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->access$400(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->access$402(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;F)F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->access$402(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;F)F

    return-void
.end method
