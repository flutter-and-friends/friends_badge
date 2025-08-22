.class public final Lcom/blankj/utilcode/util/AdaptScreenUtils;
.super Ljava/lang/Object;
.source "AdaptScreenUtils.java"


# static fields
.field private static isInitMiui:Z = false

.field private static mTmpMetricsField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptHeight(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .locals 3

    .line 29
    invoke-static {p0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getDisplayMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 30
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x42900000    # 72.0f

    mul-float v1, v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 31
    invoke-static {v1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->setAppDmXdpi(F)V

    return-object p0
.end method

.method public static adaptWidth(Landroid/content/res/Resources;I)Landroid/content/res/Resources;
    .locals 3

    .line 19
    invoke-static {p0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getDisplayMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x42900000    # 72.0f

    mul-float v1, v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 21
    invoke-static {v1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->setAppDmXdpi(F)V

    return-object p0
.end method

.method public static closeAdapt(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 3

    .line 40
    invoke-static {p0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getDisplayMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42900000    # 72.0f

    mul-float v1, v1, v2

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 42
    invoke-static {v1}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->setAppDmXdpi(F)V

    return-object p0
.end method

.method private static getDisplayMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 73
    invoke-static {p0}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getMiuiTmpMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static getMiuiTmpMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 4

    .line 79
    sget-boolean v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->isInitMiui:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiResources"

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, "XResources"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mTmpMetrics"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->mTmpMetricsField:Ljava/lang/reflect/Field;

    .line 86
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->mTmpMetricsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->mTmpMetricsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AdaptScreenUtils"

    const-string v0, "no field of mTmpMetrics in resources."

    .line 89
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p0, v1

    .line 92
    :goto_0
    sput-boolean v3, Lcom/blankj/utilcode/util/AdaptScreenUtils;->isInitMiui:Z

    return-object p0

    .line 95
    :cond_2
    sget-object v0, Lcom/blankj/utilcode/util/AdaptScreenUtils;->mTmpMetricsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-object v1

    .line 97
    :cond_3
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v1
.end method

.method public static pt2Px(F)I
    .locals 4

    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float p0, p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static px2Pt(F)I
    .locals 4

    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42900000    # 72.0f

    mul-float p0, p0, v1

    .line 65
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private static setAppDmXdpi(F)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    return-void
.end method
