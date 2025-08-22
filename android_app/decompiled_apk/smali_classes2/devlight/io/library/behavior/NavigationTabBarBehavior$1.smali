.class Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;
.super Ljava/lang/Object;
.source "NavigationTabBarBehavior.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/behavior/NavigationTabBarBehavior;->ensureOrCancelAnimator(Ldevlight/io/library/ntb/NavigationTabBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

.field final synthetic val$child:Ldevlight/io/library/ntb/NavigationTabBar;


# direct methods
.method constructor <init>(Ldevlight/io/library/behavior/NavigationTabBarBehavior;Ldevlight/io/library/ntb/NavigationTabBar;)V
    .locals 0

    .line 123
    iput-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    iput-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 5

    .line 127
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    iget-object v1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {v1}, Ldevlight/io/library/ntb/NavigationTabBar;->getBarHeight()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$102(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F

    .line 130
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v4}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$100(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->requestLayout()V

    .line 137
    :cond_0
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    iget-object v1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$400(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-static {v1, v2}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$302(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F

    .line 142
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$300(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 143
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    :cond_1
    return-void
.end method
