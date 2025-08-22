.class public Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;
.super Ljava/lang/Object;
.source "NavigationTabBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResizeInterpolator"
.end annotation


# static fields
.field private static final FACTOR:F = 1.0f


# instance fields
.field private mResizeIn:Z

.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar;


# direct methods
.method protected constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar;)V
    .locals 0

    .line 1911
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;FZ)F
    .locals 0

    .line 1911
    invoke-direct {p0, p1, p2}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->getResizeInterpolation(FZ)F

    move-result p0

    return p0
.end method

.method private getResizeInterpolation(FZ)F
    .locals 0

    .line 1925
    iput-boolean p2, p0, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->mResizeIn:Z

    .line 1926
    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    .line 1920
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->mResizeIn:Z

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    float-to-double v5, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    double-to-float p1, v3

    return p1

    :cond_0
    float-to-double v3, p1

    .line 1921
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
