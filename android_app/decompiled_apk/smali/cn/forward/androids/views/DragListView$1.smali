.class Lcn/forward/androids/views/DragListView$1;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/views/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/views/DragListView;


# direct methods
.method constructor <init>(Lcn/forward/androids/views/DragListView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/forward/androids/views/DragListView$1;->this$0:Lcn/forward/androids/views/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/forward/androids/views/DragListView$1;->this$0:Lcn/forward/androids/views/DragListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/forward/androids/views/DragListView;->access$002(Lcn/forward/androids/views/DragListView;Z)Z

    .line 66
    iget-object v0, p0, Lcn/forward/androids/views/DragListView$1;->this$0:Lcn/forward/androids/views/DragListView;

    invoke-static {v0}, Lcn/forward/androids/views/DragListView;->access$100(Lcn/forward/androids/views/DragListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/forward/androids/views/DragListView$1;->this$0:Lcn/forward/androids/views/DragListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/forward/androids/views/DragListView;->access$202(Lcn/forward/androids/views/DragListView;J)J

    .line 68
    iget-object v0, p0, Lcn/forward/androids/views/DragListView$1;->this$0:Lcn/forward/androids/views/DragListView;

    invoke-static {v0}, Lcn/forward/androids/views/DragListView;->access$300(Lcn/forward/androids/views/DragListView;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/views/DragListView;->onMove(I)V

    .line 69
    iget-object v0, p0, Lcn/forward/androids/views/DragListView$1;->this$0:Lcn/forward/androids/views/DragListView;

    invoke-virtual {v0}, Lcn/forward/androids/views/DragListView;->invalidate()V

    :cond_0
    return-void
.end method
