.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BezierLayout.java"


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

    .line 142
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 145
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 146
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 149
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 150
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2$1;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
