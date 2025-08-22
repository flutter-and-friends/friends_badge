.class public Ldevlight/io/library/behavior/NavigationTabBarBehavior;
.super Ldevlight/io/library/behavior/VerticalScrollingBehavior;
.source "NavigationTabBarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldevlight/io/library/behavior/VerticalScrollingBehavior<",
        "Ldevlight/io/library/ntb/NavigationTabBar;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBehaviorTranslationEnabled:Z

.field private mFabBottomMarginInitialized:Z

.field private mFabDefaultBottomMargin:F

.field private mFabTargetOffset:F

.field private mFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mHidden:Z

.field private mSnackBarHeight:I

.field private mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

.field private mTargetOffset:F

.field private mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mSnackBarHeight:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTargetOffset:F

    iput v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabTargetOffset:F

    iput v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabDefaultBottomMargin:F

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mBehaviorTranslationEnabled:Z

    .line 41
    iput-boolean p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mBehaviorTranslationEnabled:Z

    return-void
.end method

.method static synthetic access$000(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    return-object p0
.end method

.method static synthetic access$100(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F
    .locals 0

    .line 19
    iget p0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTargetOffset:F

    return p0
.end method

.method static synthetic access$102(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F
    .locals 0

    .line 19
    iput p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTargetOffset:F

    return p1
.end method

.method static synthetic access$200(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 19
    iget-object p0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$300(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F
    .locals 0

    .line 19
    iget p0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabTargetOffset:F

    return p0
.end method

.method static synthetic access$302(Ldevlight/io/library/behavior/NavigationTabBarBehavior;F)F
    .locals 0

    .line 19
    iput p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabTargetOffset:F

    return p1
.end method

.method static synthetic access$400(Ldevlight/io/library/behavior/NavigationTabBarBehavior;)F
    .locals 0

    .line 19
    iget p0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabDefaultBottomMargin:F

    return p0
.end method

.method private animateOffset(Ldevlight/io/library/ntb/NavigationTabBar;IZZ)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mBehaviorTranslationEnabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 109
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p3, v0, :cond_1

    .line 110
    invoke-direct {p0, p1, p2, p4}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->ensureOrCancelObjectAnimation(Ldevlight/io/library/ntb/NavigationTabBar;IZ)V

    .line 111
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0, p1, p4}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->ensureOrCancelAnimator(Ldevlight/io/library/ntb/NavigationTabBar;Z)V

    .line 114
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method private ensureOrCancelAnimator(Ldevlight/io/library/ntb/NavigationTabBar;Z)V
    .locals 5

    .line 120
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 121
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 122
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 123
    iget-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v0, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;

    invoke-direct {v0, p0, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior$1;-><init>(Ldevlight/io/library/behavior/NavigationTabBarBehavior;Ldevlight/io/library/ntb/NavigationTabBar;)V

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 147
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    sget-object p2, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 149
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 150
    iget-object p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :goto_2
    return-void
.end method

.method private ensureOrCancelObjectAnimation(Ldevlight/io/library/ntb/NavigationTabBar;IZ)V
    .locals 2

    .line 169
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 171
    :cond_0
    invoke-static {p1, p2}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->objectAnimatorOfTranslationY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 172
    iget-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    iget-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;

    sget-object p3, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    iget-object p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mTranslationObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;

    invoke-direct {p3, p0, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior$2;-><init>(Ldevlight/io/library/behavior/NavigationTabBarBehavior;Ldevlight/io/library/ntb/NavigationTabBar;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static from(Ldevlight/io/library/ntb/NavigationTabBar;)Ldevlight/io/library/behavior/NavigationTabBarBehavior;
    .locals 1

    .line 200
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 201
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 204
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 206
    instance-of v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    if-eqz v0, :cond_0

    .line 210
    check-cast p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    return-object p0

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with NavigationTabBarBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleDirection(Ldevlight/io/library/ntb/NavigationTabBar;I)V
    .locals 3

    .line 96
    iget-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mBehaviorTranslationEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 97
    iget-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    if-eqz v0, :cond_1

    .line 98
    iput-boolean v1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    .line 99
    invoke-direct {p0, p1, v1, v1, v2}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->animateOffset(Ldevlight/io/library/ntb/NavigationTabBar;IZZ)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 100
    iget-boolean p2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    if-nez p2, :cond_2

    .line 101
    iput-boolean v2, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    .line 102
    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2, v1, v2}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->animateOffset(Ldevlight/io/library/ntb/NavigationTabBar;IZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static objectAnimatorOfTranslationY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 157
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    int-to-float p1, p1

    aput p1, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 160
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const-string p0, "translationY"

    .line 161
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    new-array p0, v2, [F

    int-to-float p1, p1

    aput p1, p0, v1

    .line 162
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private updateFloatingActionButton(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 278
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 279
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 281
    iget-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabBottomMarginInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabBottomMarginInitialized:Z

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 287
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p1, p1

    iput p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mFabDefaultBottomMargin:F

    :cond_0
    return-void
.end method

.method private updateSnackBar(Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 237
    instance-of v0, p2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_3

    .line 238
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    iput-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    new-instance v1, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;

    invoke-direct {v1, p0, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior$3;-><init>(Ldevlight/io/library/behavior/NavigationTabBarBehavior;Ldevlight/io/library/ntb/NavigationTabBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 257
    :cond_0
    iget v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mSnackBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mSnackBarHeight:I

    .line 258
    :cond_1
    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar;->getBarHeight()F

    move-result v0

    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 260
    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar;->bringToFront()V

    .line 261
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_2

    const/4 p1, 0x0

    .line 262
    invoke-virtual {p2, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/4 p1, 0x0

    .line 263
    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    .line 266
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 270
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic getOverScrollDirection()I
    .locals 1

    .line 19
    invoke-super {p0}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->getOverScrollDirection()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getScrollDirection()I
    .locals 1

    .line 19
    invoke-super {p0}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->getScrollDirection()I

    move-result v0

    return v0
.end method

.method public hideView(Ldevlight/io/library/ntb/NavigationTabBar;IZ)V
    .locals 1

    .line 220
    iget-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    .line 222
    invoke-direct {p0, p1, p2, v0, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->animateOffset(Ldevlight/io/library/ntb/NavigationTabBar;IZZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 19
    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p0, p1, p2, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p2, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->updateSnackBar(Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)V

    .line 63
    invoke-direct {p0, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->updateFloatingActionButton(Landroid/view/View;)V

    .line 64
    invoke-super {p0, p1, p2, p3}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 19
    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p0, p1, p2, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)Z
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 19
    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p0, p1, p2, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)V

    return-void
.end method

.method public onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onDirectionNestedPreScroll()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 19
    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual {p0, p1, p2, p3}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;I)Z
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected onNestedDirectionFling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 19
    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual/range {p0 .. p7}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;IIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p7}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    if-gez p5, :cond_0

    const/4 p1, -0x1

    .line 85
    invoke-direct {p0, p2, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->handleDirection(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    goto :goto_0

    :cond_0
    if-lez p5, :cond_1

    const/4 p1, 0x1

    .line 86
    invoke-direct {p0, p2, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->handleDirection(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNestedVerticalOverScroll()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 19
    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar;

    invoke-virtual/range {p0 .. p5}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldevlight/io/library/ntb/NavigationTabBar;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    .line 91
    invoke-super/range {p0 .. p5}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public resetOffset(Ldevlight/io/library/ntb/NavigationTabBar;Z)V
    .locals 2

    .line 229
    iget-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mHidden:Z

    const/4 v1, 0x1

    .line 231
    invoke-direct {p0, p1, v0, v1, p2}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->animateOffset(Ldevlight/io/library/ntb/NavigationTabBar;IZZ)V

    :cond_0
    return-void
.end method

.method public setBehaviorTranslationEnabled(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->mBehaviorTranslationEnabled:Z

    return-void
.end method
