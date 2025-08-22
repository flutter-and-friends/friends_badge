.class public Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "DrawUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/lib_doodle/DrawUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBug5497Workaround"
.end annotation


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/view/Window;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 184
    iget-object p1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround$1;

    invoke-direct {v0, p0}, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround$1;-><init>(Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 189
    iget-object p1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Window;Lcn/highlight/lib_doodle/DrawUtil$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;-><init>(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$100(Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 211
    iget-object v1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 212
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 193
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 194
    iget v1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 197
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 204
    :goto_0
    iget-object v1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 205
    iput v0, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_1
    return-void
.end method
