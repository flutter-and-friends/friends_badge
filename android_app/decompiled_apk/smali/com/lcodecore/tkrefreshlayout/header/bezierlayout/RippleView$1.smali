.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$1;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->startReveal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->access$002(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;I)I

    .line 66
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->invalidate()V

    return-void
.end method
