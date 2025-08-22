.class Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$1;
.super Ljava/lang/Object;
.source "GoogleDotView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->fraction1:F

    .line 65
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->invalidate()V

    return-void
.end method
