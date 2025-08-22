.class Ltop/zibin/luban/Luban$1;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/Luban;->launch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/zibin/luban/Luban;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:Ltop/zibin/luban/InputStreamProvider;


# direct methods
.method constructor <init>(Ltop/zibin/luban/Luban;Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)V
    .locals 0

    .line 130
    iput-object p1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    iput-object p2, p0, Ltop/zibin/luban/Luban$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 134
    :try_start_0
    iget-object v0, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v0}, Ltop/zibin/luban/Luban;->access$700(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v1}, Ltop/zibin/luban/Luban;->access$700(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v0, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-static {v0, v1, v2}, Ltop/zibin/luban/Luban;->access$800(Ltop/zibin/luban/Luban;Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object v0

    .line 138
    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v1}, Ltop/zibin/luban/Luban;->access$700(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v2}, Ltop/zibin/luban/Luban;->access$700(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v1}, Ltop/zibin/luban/Luban;->access$700(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v2}, Ltop/zibin/luban/Luban;->access$700(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
