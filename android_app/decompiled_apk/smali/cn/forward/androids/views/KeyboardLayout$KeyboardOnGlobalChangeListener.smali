.class Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardOnGlobalChangeListener"
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field mScreenHeight:I

.field final synthetic this$0:Lcn/forward/androids/views/KeyboardLayout;


# direct methods
.method private constructor <init>(Lcn/forward/androids/views/KeyboardLayout;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/views/KeyboardLayout;Lcn/forward/androids/views/KeyboardLayout$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;-><init>(Lcn/forward/androids/views/KeyboardLayout;)V

    return-void
.end method

.method private getScreenHeight()I
    .locals 2

    .line 40
    iget v0, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    if-lez v0, :cond_0

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    invoke-virtual {v0}, Lcn/forward/androids/views/KeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 44
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    .line 45
    iget v0, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    return v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    iget-object v1, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcn/forward/androids/views/KeyboardLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    invoke-direct {p0}, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->getScreenHeight()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v0, v0, 0x5

    if-le v2, v0, :cond_0

    const/4 v0, 0x1

    .line 58
    iget-object v2, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    invoke-static {v2, v1}, Lcn/forward/androids/views/KeyboardLayout;->access$102(Lcn/forward/androids/views/KeyboardLayout;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v2, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    invoke-static {v2, v0}, Lcn/forward/androids/views/KeyboardLayout;->access$202(Lcn/forward/androids/views/KeyboardLayout;Z)Z

    .line 61
    iget-object v2, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    invoke-static {v2}, Lcn/forward/androids/views/KeyboardLayout;->access$300(Lcn/forward/androids/views/KeyboardLayout;)Lcn/forward/androids/views/KeyboardLayout$KeyboardLayoutListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcn/forward/androids/views/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Lcn/forward/androids/views/KeyboardLayout;

    invoke-static {v2}, Lcn/forward/androids/views/KeyboardLayout;->access$300(Lcn/forward/androids/views/KeyboardLayout;)Lcn/forward/androids/views/KeyboardLayout$KeyboardLayoutListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcn/forward/androids/views/KeyboardLayout$KeyboardLayoutListener;->onKeyboardStateChanged(ZI)V

    :cond_1
    return-void
.end method
