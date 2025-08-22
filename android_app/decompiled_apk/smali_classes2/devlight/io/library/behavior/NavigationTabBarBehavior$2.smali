.class Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;
.super Ljava/lang/Object;
.source "NavigationTabBarBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/behavior/NavigationTabBarBehavior;->ensureOrCancelObjectAnimation(Ldevlight/io/library/ntb/NavigationTabBar;IZ)V
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

    .line 174
    iput-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    iput-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 177
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {v0}, Ldevlight/io/library/ntb/NavigationTabBar;->getBarHeight()F

    move-result v0

    iget-object v1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {v1}, Ldevlight/io/library/ntb/NavigationTabBar;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$102(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F

    .line 180
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$100(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 183
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->requestLayout()V

    .line 186
    :cond_0
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$400(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result v0

    iget-object v1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {v1}, Ldevlight/io/library/ntb/NavigationTabBar;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$302(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F

    .line 189
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {v3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$300(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 192
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    :cond_1
    return-void
.end method
