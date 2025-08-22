.class Lcn/highlight/lib_doodle/DoodleView$1;
.super Landroid/os/AsyncTask;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/lib_doodle/DoodleView;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/lib_doodle/DoodleView;


# direct methods
.method constructor <init>(Lcn/highlight/lib_doodle/DoodleView;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    .line 780
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {p1}, Lcn/highlight/lib_doodle/DoodleView;->access$000(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 781
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->access$100(Lcn/highlight/lib_doodle/DoodleView;Z)V

    .line 782
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    iget-object p1, p1, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 784
    :cond_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {p1}, Lcn/highlight/lib_doodle/DoodleView;->access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v1}, Lcn/highlight/lib_doodle/DoodleView;->access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 785
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 786
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v2}, Lcn/highlight/lib_doodle/DoodleView;->access$300(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 787
    invoke-interface {v3, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 791
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v1}, Lcn/highlight/lib_doodle/DoodleView;->access$400(Lcn/highlight/lib_doodle/DoodleView;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcn/forward/androids/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 773
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$600(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleListener;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$1;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    new-instance v2, Lcn/highlight/lib_doodle/DoodleView$1$1;

    invoke-direct {v2, p0}, Lcn/highlight/lib_doodle/DoodleView$1$1;-><init>(Lcn/highlight/lib_doodle/DoodleView$1;)V

    invoke-interface {v0, v1, p1, v2}, Lcn/highlight/lib_doodle/IDoodleListener;->onSaved(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 773
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
