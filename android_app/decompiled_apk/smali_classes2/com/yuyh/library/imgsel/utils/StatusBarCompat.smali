.class public Lcom/yuyh/library/imgsel/utils/StatusBarCompat;
.super Ljava/lang/Object;
.source "StatusBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compat(Landroid/app/Activity;IZ)Landroid/view/View;
    .locals 4

    .line 26
    sget v0, Lcom/yuyh/library/imgsel/R$color;->colorPrimary:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 28
    invoke-static {p0, v1, p2}, Lcom/yuyh/library/imgsel/utils/StatusBarCompat;->compatTransStatusBar(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/yuyh/library/imgsel/utils/StatusBarCompat;->compatTransStatusBar(Landroid/app/Activity;IZ)V

    .line 33
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_2

    const p2, 0x1020002

    .line 34
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {p0}, Lcom/yuyh/library/imgsel/utils/StatusBarCompat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 38
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v1

    .line 41
    :cond_1
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 43
    invoke-static {p0}, Lcom/yuyh/library/imgsel/utils/StatusBarCompat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compatTransStatusBar(Landroid/app/Activity;IZ)V
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 p2, 0x2400

    goto :goto_0

    :cond_0
    const/16 p2, 0x500

    .line 67
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/high16 v1, 0x4000000

    if-lt p2, v0, :cond_2

    .line 70
    invoke-static {}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil;->isEMUI()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 75
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
