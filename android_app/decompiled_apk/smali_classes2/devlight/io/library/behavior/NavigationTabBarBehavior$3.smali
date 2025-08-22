.class Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;
.super Ljava/lang/Object;
.source "NavigationTabBarBehavior.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/behavior/NavigationTabBarBehavior;->updateSnackBar(Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)V
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

    .line 240
    iput-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    iput-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 244
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$400(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result p2

    iget-object p3, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->val$child:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p3}, Ldevlight/io/library/ntb/NavigationTabBar;->getTranslationY()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$302(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F

    .line 248
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 250
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p5, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p5}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$300(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F

    move-result p5

    float-to-int p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 251
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;->this$0:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-static {p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method
