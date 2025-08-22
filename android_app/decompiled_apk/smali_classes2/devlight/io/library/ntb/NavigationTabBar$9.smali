.class Ldevlight/io/library/ntb/NavigationTabBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/ntb/NavigationTabBar;->setOnTabBarSelectedIndexListener(Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar;


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar;)V
    .locals 0

    .line 720
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 734
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-boolean v0, v0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 736
    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 737
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 739
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-object p1, p1, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    if-eqz p1, :cond_1

    .line 740
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-object p1, p1, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-object v0, v0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v1, v1, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v1, v1, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {p1, v0, v1}, Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;->onEndTabSelected(Ldevlight/io/library/ntb/NavigationTabBar$Model;I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 723
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-object v0, v0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-object v0, v0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget-object v1, v1, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    iget-object v2, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v2, v2, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    iget-object v2, p0, Ldevlight/io/library/ntb/NavigationTabBar$9;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v2, v2, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {v0, v1, v2}, Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;->onStartTabSelected(Ldevlight/io/library/ntb/NavigationTabBar$Model;I)V

    .line 728
    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 729
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
