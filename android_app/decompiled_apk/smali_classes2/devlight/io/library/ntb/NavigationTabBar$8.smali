.class Ldevlight/io/library/ntb/NavigationTabBar$8;
.super Ljava/lang/Object;
.source "NavigationTabBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/ntb/NavigationTabBar;->setModels(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar;

.field final synthetic val$model:Ldevlight/io/library/ntb/NavigationTabBar$Model;


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar;Ldevlight/io/library/ntb/NavigationTabBar$Model;)V
    .locals 0

    .line 447
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$8;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iput-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar$8;->val$model:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 450
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$8;->val$model:Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$102(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F

    .line 451
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$8;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method
