.class Lcn/forward/androids/utils/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/utils/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/utils/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcn/forward/androids/utils/cache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$000(Lcn/forward/androids/utils/cache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 156
    monitor-exit v0

    return-object v2

    .line 158
    :cond_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$100(Lcn/forward/androids/utils/cache/DiskLruCache;)V

    .line 159
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$200(Lcn/forward/androids/utils/cache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$300(Lcn/forward/androids/utils/cache/DiskLruCache;)V

    .line 161
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$1;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$402(Lcn/forward/androids/utils/cache/DiskLruCache;I)I

    .line 163
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
