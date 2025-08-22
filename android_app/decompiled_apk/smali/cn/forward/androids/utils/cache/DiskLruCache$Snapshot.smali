.class public final Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/utils/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcn/forward/androids/utils/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p2, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 672
    iput-wide p3, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 673
    iput-object p5, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 674
    iput-object p6, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcn/forward/androids/utils/cache/DiskLruCache$1;)V
    .locals 0

    .line 664
    invoke-direct/range {p0 .. p6}, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 702
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 703
    invoke-static {v3}, Lcn/forward/androids/utils/cache/DiskLruUtil;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public edit()Lcn/forward/androids/utils/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->this$0:Lcn/forward/androids/utils/cache/DiskLruCache;

    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1600(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;J)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1

    .line 688
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLength(I)J
    .locals 3

    .line 698
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
