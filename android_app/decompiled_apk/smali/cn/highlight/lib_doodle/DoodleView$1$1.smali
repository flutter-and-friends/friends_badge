.class Lcn/highlight/lib_doodle/DoodleView$1$1;
.super Ljava/lang/Object;
.source "DoodleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/lib_doodle/DoodleView$1;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/highlight/lib_doodle/DoodleView$1;


# direct methods
.method constructor <init>(Lcn/highlight/lib_doodle/DoodleView$1;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$1$1;->this$1:Lcn/highlight/lib_doodle/DoodleView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 800
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$1$1;->this$1:Lcn/highlight/lib_doodle/DoodleView$1;

    iget-object v0, v0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->access$502(Lcn/highlight/lib_doodle/DoodleView;Z)Z

    .line 801
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$1$1;->this$1:Lcn/highlight/lib_doodle/DoodleView$1;

    iget-object v0, v0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$000(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$1$1;->this$1:Lcn/highlight/lib_doodle/DoodleView$1;

    iget-object v0, v0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->access$100(Lcn/highlight/lib_doodle/DoodleView;Z)V

    .line 804
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$1$1;->this$1:Lcn/highlight/lib_doodle/DoodleView$1;

    iget-object v0, v0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method
