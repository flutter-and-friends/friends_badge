.class public final Lcom/blankj/utilcode/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ToastUtils$IToast;,
        Lcom/blankj/utilcode/util/ToastUtils$AbsToast;,
        Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;,
        Lcom/blankj/utilcode/util/ToastUtils$SystemToast;,
        Lcom/blankj/utilcode/util/ToastUtils$ToastFactory;
    }
.end annotation


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final HANDLER:Landroid/os/Handler;

.field private static final NULL:Ljava/lang/String; = "null"

.field private static iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

.field private static sBgColor:I

.field private static sBgResource:I

.field private static sGravity:I

.field private static sMsgColor:I

.field private static sMsgTextSize:I

.field private static sXOffset:I

.field private static sYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/blankj/utilcode/util/ToastUtils;->HANDLER:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 47
    sput v0, Lcom/blankj/utilcode/util/ToastUtils;->sGravity:I

    .line 48
    sput v0, Lcom/blankj/utilcode/util/ToastUtils;->sXOffset:I

    .line 49
    sput v0, Lcom/blankj/utilcode/util/ToastUtils;->sYOffset:I

    const v1, -0x1000001

    .line 50
    sput v1, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    .line 51
    sput v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    .line 52
    sput v1, Lcom/blankj/utilcode/util/ToastUtils;->sMsgColor:I

    .line 53
    sput v0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgTextSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .locals 1

    .line 40
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/blankj/utilcode/util/ToastUtils$IToast;)Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .locals 0

    .line 40
    sput-object p0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 40
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgColor:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 40
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgTextSize:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 40
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sGravity:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 40
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sXOffset:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 40
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sYOffset:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->setBg(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->setBg()V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .line 40
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static cancel()V
    .locals 1

    .line 210
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->cancel()V

    :cond_0
    return-void
.end method

.method private static getView(I)Landroid/view/View;
    .locals 2

    .line 332
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static setBg()V
    .locals 4

    .line 288
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 289
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 290
    sget v1, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 291
    :cond_0
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    const v1, -0x1000001

    if-eq v0, v1, :cond_3

    .line 292
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 299
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 300
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 302
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static setBg(Landroid/widget/TextView;)V
    .locals 5

    .line 309
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 310
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 311
    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 312
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 313
    :cond_0
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    const v2, -0x1000001

    if-eq v0, v2, :cond_4

    .line 314
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 316
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 318
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 319
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 321
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 323
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 325
    :cond_3
    sget p0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static setBgColor(I)V
    .locals 0

    .line 78
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    return-void
.end method

.method public static setBgResource(I)V
    .locals 0

    .line 87
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    return-void
.end method

.method public static setGravity(III)V
    .locals 0

    .line 67
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sGravity:I

    .line 68
    sput p1, Lcom/blankj/utilcode/util/ToastUtils;->sXOffset:I

    .line 69
    sput p2, Lcom/blankj/utilcode/util/ToastUtils;->sYOffset:I

    return-void
.end method

.method public static setMsgColor(I)V
    .locals 0

    .line 96
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgColor:I

    return-void
.end method

.method public static setMsgTextSize(I)V
    .locals 0

    .line 105
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgTextSize:I

    return-void
.end method

.method private static show(II)V
    .locals 1

    .line 217
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private static varargs show(II[Ljava/lang/Object;)V
    .locals 1

    .line 226
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 228
    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private static show(Landroid/view/View;I)V
    .locals 2

    .line 271
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/blankj/utilcode/util/ToastUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 248
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/blankj/utilcode/util/ToastUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static varargs show(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "null"

    if-nez p0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 244
    :goto_0
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showCustomLong(I)Landroid/view/View;
    .locals 1

    .line 201
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 202
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showCustomShort(I)Landroid/view/View;
    .locals 1

    .line 190
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 191
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showLong(I)V
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(II)V

    return-void
.end method

.method public static varargs showLong(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 171
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x1

    .line 152
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 181
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static showShort(I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(II)V

    return-void
.end method

.method public static varargs showShort(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x0

    .line 114
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
