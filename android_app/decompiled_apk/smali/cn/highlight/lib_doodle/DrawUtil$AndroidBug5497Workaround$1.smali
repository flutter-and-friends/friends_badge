.class Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround$1;
.super Ljava/lang/Object;
.source "DrawUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;-><init>(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;


# direct methods
.method constructor <init>(Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround$1;->this$0:Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround$1;->this$0:Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;->access$100(Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;)V

    return-void
.end method
