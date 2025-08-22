.class Ldevlight/io/library/ntb/NavigationTabBar$Model$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/ntb/NavigationTabBar$Model;-><init>(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar$Model;)V
    .locals 0

    .line 1723
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1733
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1734
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1737
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1702(Ldevlight/io/library/ntb/NavigationTabBar$Model;Z)Z

    goto :goto_0

    .line 1738
    :cond_0
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1602(Ldevlight/io/library/ntb/NavigationTabBar$Model;Z)Z

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1744
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;->this$0:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1900(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$1802(Ldevlight/io/library/ntb/NavigationTabBar$Model;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1727
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1728
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
