.class public Lcn/forward/androids/utils/AnimatorUtil;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    }
.end annotation


# static fields
.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcn/forward/androids/utils/AnimatorUtil;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 19
    sget-object v0, Lcn/forward/androids/utils/AnimatorUtil;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public static createAnimator()Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 26
    new-instance v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-direct {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;-><init>()V

    return-object v0
.end method

.method public static createAnimator(Landroid/animation/TimeInterpolator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 34
    new-instance v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-direct {v0, p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;-><init>(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public static isVisibleOnScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
