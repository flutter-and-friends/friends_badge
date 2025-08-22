.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$1;
.super Ljava/lang/Object;
.source "RoundProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->access$002(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;I)I

    .line 61
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$1;->this$0:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->postInvalidate()V

    return-void
.end method
