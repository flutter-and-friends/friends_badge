.class Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$1;
.super Ljava/lang/Object;
.source "SwipeMenuLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothExpand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$1;->this$0:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$1;->this$0:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollTo(II)V

    return-void
.end method
