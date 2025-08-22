.class Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V
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

    .line 546
    iput-object p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$4;->this$0:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 549
    iget-object p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$4;->this$0:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->access$002(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;Z)Z

    return-void
.end method
