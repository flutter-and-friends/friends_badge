.class public Lcom/gyf/barlibrary/ImmersionBar;
.super Ljava/lang/Object;
.source "ImmersionBar.java"


# static fields
.field private static final NAVIGATIONBAR_IS_MIN:Ljava/lang/String; = "navigationbar_is_min"

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gyf/barlibrary/BarParams;",
            ">;"
        }
    .end annotation
.end field

.field private static mTagKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gyf/barlibrary/BarParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityName:Ljava/lang/String;

.field private mBarParams:Lcom/gyf/barlibrary/BarParams;

.field private mConfig:Lcom/gyf/barlibrary/BarConfig;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mFragmentName:Ljava/lang/String;

.field private mImmersionBarName:Ljava/lang/String;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagKeyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 73
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->initParams()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 124
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 126
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 127
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 128
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_AND_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->initParams()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 94
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 96
    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    iput-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 97
    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_AND_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mFragmentName:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mFragmentName:Ljava/lang/String;

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->initParams()V

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity\u4e0d\u80fd\u4e3a\u7a7a!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroidx/fragment/app/DialogFragment;Landroid/app/Dialog;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 105
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 107
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 108
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 109
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_AND_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->initParams()V

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/gyf/barlibrary/ImmersionBar;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarParams;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gyf/barlibrary/ImmersionBar;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gyf/barlibrary/ImmersionBar;)Lcom/gyf/barlibrary/BarConfig;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    return-object p0
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 1

    .line 2049
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 2050
    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 1

    .line 1997
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 1998
    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/app/Activity;)I
    .locals 1

    .line 2010
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 2011
    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarWidth()I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 1

    .line 2036
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 2037
    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/app/Activity;)Z
    .locals 1

    .line 1984
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 1985
    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->hasNavigtionBar()Z

    move-result p0

    return p0
.end method

.method private hideBar(I)I
    .locals 2

    .line 1698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1699
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar$4;->$SwitchMap$com$gyf$barlibrary$BarHide:[I

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->barHide:Lcom/gyf/barlibrary/BarHide;

    invoke-virtual {v1}, Lcom/gyf/barlibrary/BarHide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 p1, p1, 0x0

    goto :goto_0

    :cond_1
    or-int/lit16 p1, p1, 0x202

    goto :goto_0

    :cond_2
    or-int/lit16 p1, p1, 0x404

    goto :goto_0

    :cond_3
    or-int/lit16 p1, p1, 0x206

    :cond_4
    :goto_0
    or-int/lit16 p1, p1, 0x1000

    return p1
.end method

.method public static hideStatusBar(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x400

    .line 2074
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private initBar()V
    .locals 3

    .line 1427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/16 v0, 0x100

    .line 1429
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1430
    invoke-direct {p0, v0}, Lcom/gyf/barlibrary/ImmersionBar;->initBarAboveLOLLIPOP(I)I

    move-result v0

    .line 1431
    invoke-direct {p0, v0}, Lcom/gyf/barlibrary/ImmersionBar;->setStatusBarDarkFont(I)I

    move-result v0

    .line 1432
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->supportActionBar()V

    goto :goto_0

    .line 1434
    :cond_0
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->initBarBelowLOLLIPOP()V

    .line 1435
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->solveNavigation()V

    .line 1437
    :goto_0
    invoke-direct {p0, v0}, Lcom/gyf/barlibrary/ImmersionBar;->hideBar(I)I

    move-result v0

    .line 1438
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1440
    :cond_1
    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1441
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v1, v1, Lcom/gyf/barlibrary/BarParams;->darkFont:Z

    invoke-direct {p0, v0, v1}, Lcom/gyf/barlibrary/ImmersionBar;->setMIUIStatusBarDarkFont(Landroid/view/Window;Z)V

    .line 1442
    :cond_2
    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isFlymeOS4Later()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v0, v0, Lcom/gyf/barlibrary/BarParams;->flymeOSStatusBarFontColor:I

    if-eqz v0, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->flymeOSStatusBarFontColor:I

    invoke-static {v0, v1}, Lcom/gyf/barlibrary/FlymeOSStatusBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1446
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 1447
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v1, v1, Lcom/gyf/barlibrary/BarParams;->darkFont:Z

    invoke-static {v0, v1}, Lcom/gyf/barlibrary/FlymeOSStatusBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private initBarAboveLOLLIPOP(I)I
    .locals 4

    or-int/lit16 p1, p1, 0x400

    .line 1461
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_0

    or-int/lit16 p1, p1, 0x200

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1465
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->hasNavigtionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1469
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarFlag:Z

    if-eqz v0, :cond_2

    .line 1470
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 1473
    :cond_2
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1475
    :goto_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_3

    .line 1476
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_3
    return p1
.end method

.method private initBarBelowLOLLIPOP()V
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1486
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->setupStatusBarView()V

    .line 1487
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->hasNavigtionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1492
    :goto_0
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->setupNavBarView()V

    :cond_1
    return-void
.end method

.method private initParams()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 139
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 140
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 141
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 142
    new-instance v0, Lcom/gyf/barlibrary/BarParams;

    invoke-direct {v0}, Lcom/gyf/barlibrary/BarParams;-><init>()V

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    .line 143
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mFragmentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    sget-object v1, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    sget-object v1, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    sget-object v1, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    goto :goto_0

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5728Fragment\u91cc\u4f7f\u7528\u65f6\uff0c\u8bf7\u5148\u5728\u52a0\u8f7dFragment\u7684Activity\u91cc\u521d\u59cb\u5316\uff01\uff01\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    :goto_0
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 155
    :cond_4
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gyf/barlibrary/BarParams;

    iput-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    :goto_1
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2096
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNavigationAtBottom(Landroid/app/Activity;)Z
    .locals 1

    .line 2023
    new-instance v0, Lcom/gyf/barlibrary/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 2024
    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->isNavigationAtBottom()Z

    move-result p0

    return p0
.end method

.method public static isSupportStatusBarDarkFont()Z
    .locals 2

    .line 2060
    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isFlymeOS4Later()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private keyboardEnable()V
    .locals 3

    .line 1860
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1861
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    if-nez v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-static {v1, v2}, Lcom/gyf/barlibrary/KeyboardPatch;->patch(Landroid/app/Activity;Landroid/view/Window;)Lcom/gyf/barlibrary/KeyboardPatch;

    move-result-object v1

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-virtual {v0, v1}, Lcom/gyf/barlibrary/KeyboardPatch;->setBarParams(Lcom/gyf/barlibrary/BarParams;)V

    .line 1865
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardEnable:Z

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->keyboardMode:I

    invoke-virtual {v0, v1}, Lcom/gyf/barlibrary/KeyboardPatch;->enable(I)V

    goto :goto_0

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->keyboardMode:I

    invoke-virtual {v0, v1}, Lcom/gyf/barlibrary/KeyboardPatch;->disable(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerEMUI3_x()V
    .locals 4

    .line 1646
    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->hasNavigtionBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_2

    .line 1648
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationStatusObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    new-instance v1, Lcom/gyf/barlibrary/ImmersionBar$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/gyf/barlibrary/ImmersionBar$1;-><init>(Lcom/gyf/barlibrary/ImmersionBar;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationStatusObserver:Landroid/database/ContentObserver;

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_is_min"

    .line 1673
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v3, v3, Lcom/gyf/barlibrary/BarParams;->navigationStatusObserver:Landroid/database/ContentObserver;

    .line 1672
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1020002

    .line 1965
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1966
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1967
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1968
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1969
    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1970
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMIUIStatusBarDarkFont(Landroid/view/Window;Z)V
    .locals 8

    if-eqz p1, :cond_1

    .line 1880
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 1883
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 1884
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1885
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1886
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p2, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    .line 1888
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v7

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    .line 1890
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v7

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1893
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setStatusBarDarkFont(I)I
    .locals 2

    .line 1725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->darkFont:Z

    if-eqz v0, :cond_0

    or-int/lit16 p1, p1, 0x2000

    :cond_0
    return p1
.end method

.method private setStatusBarView()V
    .locals 2

    .line 1764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarViewByHeight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarViewByHeight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1766
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v1}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1767
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarViewByHeight:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static setStatusBarView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 1934
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1935
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1936
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1937
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setTitleBar()V
    .locals 6

    .line 1776
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1777
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1778
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1798
    :cond_0
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarHeight:I

    if-nez v1, :cond_1

    .line 1799
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gyf/barlibrary/BarParams;->titleBarHeight:I

    .line 1800
    :cond_1
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarPaddingTopHeight:I

    if-nez v1, :cond_2

    .line 1801
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v2, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1802
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gyf/barlibrary/BarParams;->titleBarPaddingTopHeight:I

    .line 1803
    :cond_2
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1804
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v2, v2, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->titleBarPaddingTopHeight:I

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v4, v4, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    .line 1806
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v5, v5, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    .line 1807
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1804
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1808
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1780
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/gyf/barlibrary/ImmersionBar$2;

    invoke-direct {v2, p0, v0}, Lcom/gyf/barlibrary/ImmersionBar$2;-><init>(Lcom/gyf/barlibrary/ImmersionBar;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static setTitleBar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1906
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1907
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1908
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 1909
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/gyf/barlibrary/ImmersionBar$3;

    invoke-direct {v2, p1, v0, p0}, Lcom/gyf/barlibrary/ImmersionBar$3;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1919
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1920
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    add-int/2addr v1, p0

    .line 1921
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 1920
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTitleBarMarginTop()V
    .locals 5

    .line 1818
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->titleBarViewMarginTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1820
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1821
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1820
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1824
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gyf/barlibrary/BarParams;->titleBarViewMarginTopFlag:Z

    :cond_0
    return-void
.end method

.method public static setTitleBarMarginTop(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1949
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1951
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1952
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    add-int/2addr v1, p0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1951
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method private setupNavBarView()V
    .locals 5

    .line 1524
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->isNavigationAtBottom()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1529
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 1530
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 1532
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarWidth()I

    move-result v2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 1533
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1535
    :goto_0
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    if-nez v0, :cond_2

    .line 1538
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    const/high16 v3, -0x1000000

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v4, v4, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1541
    :cond_2
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v4, v4, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1545
    :cond_3
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1546
    :goto_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1549
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1550
    :cond_4
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupStatusBarView()V
    .locals 5

    .line 1500
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    .line 1503
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1504
    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    .line 1505
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1506
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v4, v4, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1511
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    invoke-static {v2, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1513
    :goto_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1516
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1517
    :cond_2
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private solveNavigation()V
    .locals 5

    .line 1557
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1558
    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1559
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1560
    instance-of v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v4, :cond_0

    .line 1561
    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1563
    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    iput-boolean v3, v4, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    .line 1564
    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v3, v3, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    if-eqz v3, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    .line 1570
    :cond_0
    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    iput-boolean v3, v4, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    .line 1571
    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v3, v3, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    if-eqz v3, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->hasNavigtionBar()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fullScreenTemp:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-nez v0, :cond_e

    .line 1581
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1582
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    if-nez v0, :cond_6

    .line 1583
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_4

    .line 1584
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v0, :cond_3

    .line 1585
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1586
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarHeight()I

    move-result v3

    .line 1585
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1588
    :cond_3
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1590
    :cond_4
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v0, :cond_5

    .line 1591
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1593
    :cond_5
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1597
    :cond_6
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_7

    .line 1598
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1599
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarHeight()I

    move-result v3

    .line 1598
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1601
    :cond_7
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1602
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    .line 1601
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1605
    :cond_8
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    if-nez v0, :cond_c

    .line 1606
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_a

    .line 1607
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v0, :cond_9

    .line 1608
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1609
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarWidth()I

    move-result v3

    .line 1608
    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1611
    :cond_9
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarWidth()I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1613
    :cond_a
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v0, :cond_b

    .line 1614
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1616
    :cond_b
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1620
    :cond_c
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_d

    .line 1621
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1622
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getNavigationBarWidth()I

    move-result v3

    .line 1621
    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1624
    :cond_d
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1625
    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    .line 1624
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1629
    :cond_e
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    if-nez v0, :cond_10

    .line 1630
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v0, :cond_f

    .line 1631
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1633
    :cond_f
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1636
    :cond_10
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method private supportActionBar()V
    .locals 5

    .line 1833
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1834
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1835
    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1836
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 1837
    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    iput-boolean v3, v4, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    .line 1838
    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v3, v3, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    if-eqz v3, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1844
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    if-eqz v0, :cond_2

    .line 1845
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/barlibrary/BarConfig;->getActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1847
    :cond_2
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v0, :cond_3

    .line 1848
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/barlibrary/BarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1850
    :cond_3
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method private transformView()V
    .locals 7

    .line 1738
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1739
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1740
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1741
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1742
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1743
    iget-object v3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v3, v3, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1744
    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v4, v4, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1745
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1746
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1747
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    .line 1750
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->viewAlpha:F

    const/4 v5, 0x0

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    .line 1751
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v4, v4, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1753
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v4, v4, Lcom/gyf/barlibrary/BarParams;->viewAlpha:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private unRegisterEMUI3_x()V
    .locals 2

    .line 1682
    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarConfig;->hasNavigtionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationStatusObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->navigationStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p0, :cond_0

    .line 169
    new-instance v0, Lcom/gyf/barlibrary/ImmersionBar;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/ImmersionBar;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 215
    invoke-static {p2}, Lcom/gyf/barlibrary/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/gyf/barlibrary/ImmersionBar;

    invoke-direct {v0, p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V

    return-object v0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag\u4e0d\u80fd\u4e3anull\u6216\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dialog\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 190
    new-instance v0, Lcom/gyf/barlibrary/ImmersionBar;

    invoke-direct {v0, p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with(Landroidx/fragment/app/DialogFragment;Landroid/app/Dialog;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 198
    new-instance v0, Lcom/gyf/barlibrary/ImmersionBar;

    invoke-direct {v0, p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;-><init>(Landroidx/fragment/app/DialogFragment;Landroid/app/Dialog;)V

    return-object v0

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dialog\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DialogFragment\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p0, :cond_0

    .line 182
    new-instance v0, Lcom/gyf/barlibrary/ImmersionBar;

    invoke-direct {v0, p0}, Lcom/gyf/barlibrary/ImmersionBar;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fragment\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TAG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1256
    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-virtual {v0}, Lcom/gyf/barlibrary/BarParams;->clone()Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    .line 1258
    sget-object v1, Lcom/gyf/barlibrary/ImmersionBar;->mTagMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagKeyMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1261
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1262
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1264
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_1
    :goto_0
    sget-object p1, Lcom/gyf/barlibrary/ImmersionBar;->mTagKeyMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public addViewSupportTransformColor(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v0, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;II)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 743
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 744
    invoke-static {v0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 742
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 755
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 769
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 770
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 768
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    if-eqz p1, :cond_0

    .line 784
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 785
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v1, v1, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object p2, p2, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 782
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_0

    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 804
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object p2, p2, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 801
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public barAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    .line 891
    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    return-object p0
.end method

.method public barColor(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->barColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(IF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 511
    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/gyf/barlibrary/ImmersionBar;->barColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(IIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 526
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 525
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->barColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 536
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->barColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 547
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->barColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 561
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->barColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    .line 572
    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 573
    iget p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    return-object p0
.end method

.method public barColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    .line 586
    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 587
    iget p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    .line 588
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    .line 589
    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    return-object p0
.end method

.method public barColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    .line 605
    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 606
    iget p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    .line 608
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    .line 609
    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    .line 611
    iput p3, p1, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    .line 612
    iput p3, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    return-object p0
.end method

.method public barColorTransform(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->barColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorTransform(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 696
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->barColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    .line 707
    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    return-object p0
.end method

.method public destroy()V
    .locals 3

    .line 1392
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->unRegisterEMUI3_x()V

    .line 1393
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v2, v2, Lcom/gyf/barlibrary/BarParams;->keyboardMode:I

    invoke-virtual {v0, v2}, Lcom/gyf/barlibrary/KeyboardPatch;->disable(I)V

    .line 1395
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-object v1, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1398
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1400
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 1401
    :cond_2
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    if-eqz v0, :cond_3

    .line 1402
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mConfig:Lcom/gyf/barlibrary/BarConfig;

    .line 1403
    :cond_3
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_4

    .line 1404
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 1406
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 1407
    :cond_5
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 1408
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 1409
    :cond_6
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1410
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    if-eqz v0, :cond_7

    .line 1411
    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    .line 1412
    :cond_7
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagKeyMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1413
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1414
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1415
    sget-object v2, Lcom/gyf/barlibrary/ImmersionBar;->mTagMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1417
    :cond_8
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagKeyMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    :cond_9
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public fitsSystemWindows(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    return-object p0
.end method

.method public fitsSystemWindows(ZI)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    const v0, 0x106000c

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gyf/barlibrary/ImmersionBar;->fitsSystemWindows(ZIIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindows(ZIIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->fits:Z

    .line 1019
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColorContentView:I

    .line 1020
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p1, Lcom/gyf/barlibrary/BarParams;->statusBarColorContentViewTransform:I

    .line 1021
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p4, p1, Lcom/gyf/barlibrary/BarParams;->statusBarContentViewAlpha:F

    .line 1022
    iget-object p3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {p3, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->statusBarColorContentView:I

    .line 1023
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget p2, p2, Lcom/gyf/barlibrary/BarParams;->statusBarColorContentView:I

    iget-object p3, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget p3, p3, Lcom/gyf/barlibrary/BarParams;->statusBarColorContentViewTransform:I

    iget-object p4, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget p4, p4, Lcom/gyf/barlibrary/BarParams;->statusBarContentViewAlpha:F

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-object p0
.end method

.method public fixMarginAtBottom(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->fixMarginAtBottom:Z

    return-object p0
.end method

.method public flymeOSStatusBarFontColor(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->flymeOSStatusBarFontColor:I

    return-object p0
.end method

.method public flymeOSStatusBarFontColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->flymeOSStatusBarFontColor:I

    return-object p0
.end method

.method public flymeOSStatusBarFontColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->flymeOSStatusBarFontColor:I

    return-object p0
.end method

.method public fullScreen(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    return-object p0
.end method

.method public getBarParams()Lcom/gyf/barlibrary/BarParams;
    .locals 1

    .line 2084
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 3

    .line 1280
    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_TAG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gyf/barlibrary/BarParams;

    if-eqz p1, :cond_0

    .line 1283
    invoke-virtual {p1}, Lcom/gyf/barlibrary/BarParams;->clone()Lcom/gyf/barlibrary/BarParams;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    :cond_0
    return-object p0
.end method

.method public getTagBarParams(Ljava/lang/String;)Lcom/gyf/barlibrary/BarParams;
    .locals 3

    .line 2089
    invoke-static {p1}, Lcom/gyf/barlibrary/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mTagMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_TAG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gyf/barlibrary/BarParams;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hideBar(Lcom/gyf/barlibrary/BarHide;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-object p1, v0, Lcom/gyf/barlibrary/BarParams;->barHide:Lcom/gyf/barlibrary/BarHide;

    .line 969
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 970
    :cond_0
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object p1, p1, Lcom/gyf/barlibrary/BarParams;->barHide:Lcom/gyf/barlibrary/BarHide;

    sget-object v0, Lcom/gyf/barlibrary/BarHide;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/barlibrary/BarHide;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object p1, p1, Lcom/gyf/barlibrary/BarParams;->barHide:Lcom/gyf/barlibrary/BarHide;

    sget-object v0, Lcom/gyf/barlibrary/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/barlibrary/BarHide;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 975
    :cond_1
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget v0, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    iput v0, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 976
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean v1, p1, Lcom/gyf/barlibrary/BarParams;->fullScreenTemp:Z

    goto :goto_1

    .line 972
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput v1, p1, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p1, Lcom/gyf/barlibrary/BarParams;->fullScreenTemp:Z

    :cond_3
    :goto_1
    return-object p0
.end method

.method public init()V
    .locals 3

    .line 1380
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->initBar()V

    .line 1382
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->setStatusBarView()V

    .line 1383
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->transformView()V

    .line 1384
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->keyboardEnable()V

    .line 1385
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->registerEMUI3_x()V

    return-void
.end method

.method public keyboardEnable(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    const/16 v0, 0x12

    .line 1297
    invoke-virtual {p0, p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->keyboardEnable(ZI)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public keyboardEnable(ZI)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->keyboardEnable:Z

    .line 1310
    iput p2, v0, Lcom/gyf/barlibrary/BarParams;->keyboardMode:I

    return-object p0
.end method

.method public keyboardMode(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->keyboardMode:I

    return-object p0
.end method

.method public navigationBarAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    return-object p0
.end method

.method public navigationBarColor(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(IF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(IIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 408
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 407
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 418
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 430
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 444
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 445
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 456
    iget p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    return-object p0
.end method

.method public navigationBarColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 470
    iput p2, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    .line 471
    iget p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    return-object p0
.end method

.method public navigationBarColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 487
    iput p2, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    .line 488
    iput p3, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarAlpha:F

    .line 489
    iget p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    return-object p0
.end method

.method public navigationBarColorTransform(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorTransform(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 665
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->navigationBarColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTransform:I

    return-object p0
.end method

.method public navigationBarEnable(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    return-object p0
.end method

.method public navigationBarWithKitkatEnable(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    return-object p0
.end method

.method public removeSupportAllView()Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-object p0
.end method

.method public removeSupportView(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_1

    .line 831
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 832
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0

    .line 829
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()Lcom/gyf/barlibrary/ImmersionBar;
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    .line 1237
    new-instance v1, Lcom/gyf/barlibrary/BarParams;

    invoke-direct {v1}, Lcom/gyf/barlibrary/BarParams;-><init>()V

    iput-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    .line 1238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    :cond_0
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v2, v0, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    iput-object v2, v1, Lcom/gyf/barlibrary/BarParams;->statusBarView:Landroid/view/View;

    .line 1240
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v2, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    iput-object v2, v1, Lcom/gyf/barlibrary/BarParams;->navigationBarView:Landroid/view/View;

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    iput-object v0, v1, Lcom/gyf/barlibrary/BarParams;->keyboardPatch:Lcom/gyf/barlibrary/KeyboardPatch;

    .line 1243
    sget-object v0, Lcom/gyf/barlibrary/ImmersionBar;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mImmersionBarName:Ljava/lang/String;

    iget-object v2, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setOnKeyboardListener(Lcom/gyf/barlibrary/OnKeyboardListener;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    if-nez v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-object p1, v0, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    :cond_0
    return-object p0
.end method

.method public statusBarAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    return-object p0
.end method

.method public statusBarColor(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(IF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(IIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 289
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 301
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 313
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 327
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 328
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    return-object p0
.end method

.method public statusBarColorInt(IF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    .line 353
    iput p2, v0, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    return-object p0
.end method

.method public statusBarColorInt(IIF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    .line 369
    iput p2, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    .line 370
    iput p3, v0, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    return-object p0
.end method

.method public statusBarColorTransform(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorTransform(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 634
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorTransformEnable(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarFlag:Z

    return-object p0
.end method

.method public statusBarColorTransformInt(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColorTransform:I

    return-object p0
.end method

.method public statusBarDarkFont(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    const/4 v0, 0x0

    .line 902
    invoke-virtual {p0, p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarDarkFont(ZF)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->darkFont:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 916
    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->flymeOSStatusBarFontColor:I

    .line 917
    :cond_0
    invoke-static {}, Lcom/gyf/barlibrary/ImmersionBar;->isSupportStatusBarDarkFont()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 918
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 p2, 0x0

    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    goto :goto_0

    .line 920
    :cond_1
    iget-object p1, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p2, p1, Lcom/gyf/barlibrary/BarParams;->statusBarAlpha:F

    :goto_0
    return-object p0
.end method

.method public statusBarView(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1053
    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarView(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1051
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u672a\u627e\u5230viewId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public statusBarView(ILandroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 1065
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1069
    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarView(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1067
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u672a\u627e\u5230viewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public statusBarView(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-object p1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarViewByHeight:Landroid/view/View;

    return-object p0

    .line 1036
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportActionBar(Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    return-object p0
.end method

.method public titleBar(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1128
    invoke-virtual {p0, p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleBar(ILandroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 1154
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 1158
    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleBar(ILandroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 1171
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1175
    invoke-virtual {p0, p1, p3}, Lcom/gyf/barlibrary/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleBar(IZ)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1143
    invoke-virtual {p0, p1, p2}, Lcom/gyf/barlibrary/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleBar(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1095
    invoke-virtual {p0, p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 1093
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleBar(Landroid/view/View;Z)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-object p1, v0, Lcom/gyf/barlibrary/BarParams;->titleBarView:Landroid/view/View;

    .line 1111
    iput-boolean p2, v0, Lcom/gyf/barlibrary/BarParams;->statusBarFlag:Z

    .line 1112
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->setTitleBar()V

    return-object p0

    .line 1108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleBarMarginTop(I)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBarMarginTop(ILandroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 0

    .line 1198
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBarMarginTop(Landroid/view/View;)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput-object p1, v0, Lcom/gyf/barlibrary/BarParams;->titleBarViewMarginTop:Landroid/view/View;

    .line 1213
    iget-boolean p1, v0, Lcom/gyf/barlibrary/BarParams;->titleBarViewMarginTopFlag:Z

    if-nez p1, :cond_0

    .line 1214
    invoke-direct {p0}, Lcom/gyf/barlibrary/ImmersionBar;->setTitleBarMarginTop()V

    :cond_0
    return-object p0

    .line 1210
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transparentBar()Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    .line 249
    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 250
    iget v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    .line 251
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    return-object p0
.end method

.method public transparentNavigationBar()Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    .line 237
    iget v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColor:I

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarColorTemp:I

    .line 238
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    return-object p0
.end method

.method public transparentStatusBar()Lcom/gyf/barlibrary/ImmersionBar;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/barlibrary/BarParams;->statusBarColor:I

    return-object p0
.end method

.method public viewAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/gyf/barlibrary/ImmersionBar;->mBarParams:Lcom/gyf/barlibrary/BarParams;

    iput p1, v0, Lcom/gyf/barlibrary/BarParams;->viewAlpha:F

    return-object p0
.end method
