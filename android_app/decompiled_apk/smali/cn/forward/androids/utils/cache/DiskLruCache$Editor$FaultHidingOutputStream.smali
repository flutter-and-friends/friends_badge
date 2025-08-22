.class Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/utils/cache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/forward/androids/utils/cache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    .line 838
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V
    .locals 0

    .line 836
    invoke-direct {p0, p1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 859
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->access$2302(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 867
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->access$2302(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->access$2302(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 851
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->access$2302(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method
