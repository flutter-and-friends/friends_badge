.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$1;
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

    .line 129
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 133
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->invalidate()V

    return-void
.end method
