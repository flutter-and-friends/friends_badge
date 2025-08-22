.class public final Lcn/forward/androids/utils/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/utils/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    .line 724
    invoke-static {p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$600(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1800(Lcn/forward/androids/utils/cache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->written:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V
    .locals 0

    .line 716
    invoke-direct {p0, p1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Entry;
    .locals 0

    .line 716
    iget-object p0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)[Z
    .locals 0

    .line 716
    iget-object p0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->written:[Z

    return-object p0
.end method

.method static synthetic access$2302(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)Z
    .locals 0

    .line 716
    iput-boolean p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$2200(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget-boolean v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->hasErrors:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$2200(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)V

    .line 812
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    iget-object v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1100(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/forward/androids/utils/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$2200(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)V

    .line 816
    :goto_0
    iput-boolean v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->committed:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 753
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 736
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$600(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 737
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 740
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 742
    :catch_0
    monitor-exit v0

    return-object v2

    .line 734
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 744
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 764
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1800(Lcn/forward/androids/utils/cache/DiskLruCache;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 769
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 773
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$600(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 776
    :cond_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->entry:Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 782
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1900(Lcn/forward/androids/utils/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 790
    :goto_0
    :try_start_4
    new-instance p1, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V

    monitor-exit v0

    return-object p1

    .line 787
    :catch_1
    invoke-static {}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 771
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 791
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 765
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    .line 767
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1800(Lcn/forward/androids/utils/cache/DiskLruCache;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 798
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v2, Lcn/forward/androids/utils/cache/DiskLruUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 802
    throw p1
.end method
