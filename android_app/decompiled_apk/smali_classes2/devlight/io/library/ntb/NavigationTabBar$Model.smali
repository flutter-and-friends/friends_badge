.class public Ldevlight/io/library/ntb/NavigationTabBar$Model;
.super Ljava/lang/Object;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;
    }
.end annotation


# instance fields
.field private mActiveIconScaleBy:F

.field private final mBadgeAnimator:Landroid/animation/ValueAnimator;

.field private mBadgeFraction:F

.field private mBadgeTitle:Ljava/lang/String;

.field private mColor:I

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconMatrix:Landroid/graphics/Matrix;

.field private mInactiveIconScale:F

.field private mIsBadgeShowed:Z

.field private mIsBadgeUpdated:Z

.field private final mSelectedIcon:Landroid/graphics/Bitmap;

.field private mTempBadgeTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)V
    .locals 1

    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1701
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIconMatrix:Landroid/graphics/Matrix;

    const-string v0, ""

    .line 1703
    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTitle:Ljava/lang/String;

    .line 1704
    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeTitle:Ljava/lang/String;

    .line 1705
    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTempBadgeTitle:Ljava/lang/String;

    .line 1711
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    .line 1717
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->access$1100(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)I

    move-result v0

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mColor:I

    .line 1718
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->access$1200(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIcon:Landroid/graphics/Bitmap;

    .line 1719
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->access$1300(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mSelectedIcon:Landroid/graphics/Bitmap;

    .line 1720
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->access$1400(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTitle:Ljava/lang/String;

    .line 1721
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->access$1500(Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeTitle:Ljava/lang/String;

    .line 1723
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;

    invoke-direct {v0, p0}, Ldevlight/io/library/ntb/NavigationTabBar$Model$1;-><init>(Ldevlight/io/library/ntb/NavigationTabBar$Model;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1695
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F
    .locals 0

    .line 1695
    iget p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeFraction:F

    return p0
.end method

.method static synthetic access$102(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F
    .locals 0

    .line 1695
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeFraction:F

    return p1
.end method

.method static synthetic access$1600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Z
    .locals 0

    .line 1695
    iget-boolean p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeUpdated:Z

    return p0
.end method

.method static synthetic access$1602(Ldevlight/io/library/ntb/NavigationTabBar$Model;Z)Z
    .locals 0

    .line 1695
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeUpdated:Z

    return p1
.end method

.method static synthetic access$1700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Z
    .locals 0

    .line 1695
    iget-boolean p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    return p0
.end method

.method static synthetic access$1702(Ldevlight/io/library/ntb/NavigationTabBar$Model;Z)Z
    .locals 0

    .line 1695
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    return p1
.end method

.method static synthetic access$1802(Ldevlight/io/library/ntb/NavigationTabBar$Model;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1695
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Ljava/lang/String;
    .locals 0

    .line 1695
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTempBadgeTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1695
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F
    .locals 0

    .line 1695
    iget p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mInactiveIconScale:F

    return p0
.end method

.method static synthetic access$402(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F
    .locals 0

    .line 1695
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mInactiveIconScale:F

    return p1
.end method

.method static synthetic access$500(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F
    .locals 0

    .line 1695
    iget p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mActiveIconScaleBy:F

    return p0
.end method

.method static synthetic access$502(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F
    .locals 0

    .line 1695
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mActiveIconScaleBy:F

    return p1
.end method

.method static synthetic access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;
    .locals 0

    .line 1695
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIconMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1695
    iget-object p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mSelectedIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public getBadgeTitle()Ljava/lang/String;
    .locals 1

    .line 1770
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 1758
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1750
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hideBadge()V
    .locals 4

    const/4 v0, 0x0

    .line 1813
    iput-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeUpdated:Z

    .line 1815
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 1816
    :cond_0
    iget-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    if-nez v1, :cond_1

    return-void

    .line 1818
    :cond_1
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1819
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Ldevlight/io/library/ntb/NavigationTabBar;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1820
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1821
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1822
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1823
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isBadgeShowed()Z
    .locals 1

    .line 1766
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    return v0
.end method

.method public setBadgeTitle(Ljava/lang/String;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeTitle:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1762
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1754
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public showBadge()V
    .locals 4

    const/4 v0, 0x0

    .line 1799
    iput-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeUpdated:Z

    .line 1801
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 1802
    :cond_0
    iget-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    if-eqz v1, :cond_1

    return-void

    .line 1804
    :cond_1
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1805
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Ldevlight/io/library/ntb/NavigationTabBar;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1806
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1807
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1808
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1809
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toggleBadge()V
    .locals 1

    .line 1793
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1794
    :cond_0
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->hideBadge()V

    goto :goto_0

    .line 1795
    :cond_1
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->showBadge()V

    :goto_0
    return-void
.end method

.method public updateBadgeTitle(Ljava/lang/String;)V
    .locals 4

    .line 1779
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeShowed:Z

    if-nez v0, :cond_0

    return-void

    .line 1780
    :cond_0
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1782
    :cond_1
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mTempBadgeTitle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1783
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mIsBadgeUpdated:Z

    .line 1785
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1786
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1787
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1788
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1789
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$Model;->mBadgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
