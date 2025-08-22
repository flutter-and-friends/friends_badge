.class Ldevlight/io/library/ntb/NavigationTabBar$7;
.super Ljava/lang/Object;
.source "NavigationTabBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldevlight/io/library/ntb/NavigationTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 394
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$7;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 397
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$7;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->updateIndicatorPosition(F)V

    return-void
.end method
