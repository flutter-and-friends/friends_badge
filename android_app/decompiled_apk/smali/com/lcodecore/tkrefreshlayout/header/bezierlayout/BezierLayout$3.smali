.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$3;
.super Ljava/lang/Object;
.source "BezierLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->startAnim(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    neg-float p1, p1

    const/high16 v1, 0x42200000    # 40.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 164
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$3;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->invalidate()V

    return-void
.end method
