.class public final Lcn/forward/androids/utils/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/utils/cache/DiskLruCache$Entry;,
        Lcn/forward/androids/utils/cache/DiskLruCache$Editor;,
        Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final STRING_KEY_PATTERN:Ljava/lang/String; = "[a-z0-9_-]{1,120}"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcn/forward/androids/utils/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/forward/androids/utils/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 708
    new-instance v0, Lcn/forward/androids/utils/cache/DiskLruCache$2;

    invoke-direct {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcn/forward/androids/utils/cache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 136
    iput-wide v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    .line 138
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 147
    iput-wide v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->nextSequenceNumber:J

    .line 150
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 152
    new-instance v2, Lcn/forward/androids/utils/cache/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcn/forward/androids/utils/cache/DiskLruCache$1;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;)V

    iput-object v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 169
    iput-object v1, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    .line 170
    iput v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->appVersion:I

    .line 171
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 172
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 173
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    .line 174
    iput v1, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    move-wide/from16 v1, p4

    .line 175
    iput-wide v1, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcn/forward/androids/utils/cache/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$100(Lcn/forward/androids/utils/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;J)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcn/forward/androids/utils/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcn/forward/androids/utils/cache/DiskLruCache;)I
    .locals 0

    .line 75
    iget p0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    return p0
.end method

.method static synthetic access$1900(Lcn/forward/androids/utils/cache/DiskLruCache;)Ljava/io/File;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcn/forward/androids/utils/cache/DiskLruCache;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    .line 75
    sget-object v0, Lcn/forward/androids/utils/cache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache;->completeEdit(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/forward/androids/utils/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcn/forward/androids/utils/cache/DiskLruCache;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->access$1400(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 509
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$600(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 510
    :goto_0
    iget v3, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 511
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->access$1500(Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 515
    invoke-virtual {v0, v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    invoke-virtual {p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->abort()V

    .line 513
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_2
    :goto_1
    iget p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_5

    .line 523
    invoke-virtual {v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    invoke-virtual {v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 527
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 528
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1000(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 529
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 530
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1000(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 531
    iget-wide v7, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    goto :goto_2

    .line 534
    :cond_3
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 538
    :cond_5
    iget p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 539
    invoke-static {v0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$702(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    .line 540
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$600(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 541
    invoke-static {v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$602(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Z)Z

    .line 542
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1100(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 544
    iget-wide p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1202(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;J)J

    goto :goto_3

    .line 547
    :cond_6
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1100(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1100(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 550
    :cond_7
    :goto_3
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 552
    iget-wide p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    iget-wide v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 553
    :cond_8
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :cond_9
    monitor-exit p0

    return-void

    .line 505
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 448
    :try_start_0
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->checkNotClosed()V

    .line 449
    invoke-direct {p0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 452
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1200(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 453
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 456
    :try_start_1
    new-instance v0, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V

    .line 457
    iget-object p2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 459
    monitor-exit p0

    return-object v3

    .line 462
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V

    .line 463
    invoke-static {v0, p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$702(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    .line 466
    iget-object p3, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcn/forward/androids/utils/cache/DiskLruUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruUtil;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .line 563
    iget v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 564
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcn/forward/androids/utils/cache/DiskLruCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    if-lez p2, :cond_3

    .line 197
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 204
    invoke-static {v0, v1, v2}, Lcn/forward/androids/utils/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 209
    :cond_1
    :goto_0
    new-instance v0, Lcn/forward/androids/utils/cache/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcn/forward/androids/utils/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 210
    iget-object v1, v0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :try_start_0
    invoke-direct {v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->readJournal()V

    .line 213
    invoke-direct {v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 216
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->delete()V

    .line 227
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 228
    new-instance v0, Lcn/forward/androids/utils/cache/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcn/forward/androids/utils/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 229
    invoke-direct {v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->rebuildJournal()V

    return-object v0

    .line 193
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 318
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    .line 320
    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 321
    :goto_1
    iget v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 322
    iget-wide v4, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1000(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 325
    invoke-static {v1, v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$702(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    .line 326
    :goto_2
    iget v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 327
    invoke-virtual {v1, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcn/forward/androids/utils/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 328
    invoke-virtual {v1, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcn/forward/androids/utils/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 330
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 234
    new-instance v1, Lcn/forward/androids/utils/cache/StrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcn/forward/androids/utils/cache/DiskLruUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcn/forward/androids/utils/cache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 236
    :try_start_0
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 241
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    .line 242
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->appVersion:I

    .line 243
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 245
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 253
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/forward/androids/utils/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    .line 262
    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 265
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcn/forward/androids/utils/cache/DiskLruUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :goto_1
    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 246
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 269
    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 270
    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 280
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 283
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 284
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 289
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 292
    :cond_1
    iget-object v5, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 294
    new-instance v5, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4, v6}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V

    .line 295
    iget-object v7, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v7, "CLEAN"

    .line 298
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {v5, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$602(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Z)Z

    .line 301
    invoke-static {v5, v6}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$702(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    .line 302
    invoke-static {v5, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$800(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    .line 303
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    new-instance p1, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$1;)V

    invoke-static {v5, p1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$702(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;Lcn/forward/androids/utils/cache/DiskLruCache$Editor;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 308
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 344
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcn/forward/androids/utils/cache/DiskLruUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 347
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 348
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 349
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 350
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    iget v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 352
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 353
    iget v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 354
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 355
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    .line 358
    invoke-static {v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1100(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1100(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 368
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 371
    :cond_3
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcn/forward/androids/utils/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 372
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 374
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcn/forward/androids/utils/cache/DiskLruUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 365
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 366
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 386
    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 389
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    :goto_0
    iget-wide v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 636
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/forward/androids/utils/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .line 652
    sget-object v0, Lcn/forward/androids/utils/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 654
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 622
    monitor-exit p0

    return-void

    .line 624
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    .line 625
    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 626
    invoke-static {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->abort()V

    goto :goto_0

    .line 629
    :cond_2
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->trimToSize()V

    .line 630
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->close()V

    .line 648
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruUtil;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 444
    invoke-direct {p0, p1, v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 614
    :try_start_0
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->checkNotClosed()V

    .line 615
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->trimToSize()V

    .line 616
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->checkNotClosed()V

    .line 400
    invoke-direct {p0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    monitor-exit p0

    return-object v1

    .line 406
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$600(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 407
    monitor-exit p0

    return-object v1

    .line 413
    :cond_1
    :try_start_2
    iget v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 415
    :goto_0
    :try_start_3
    iget v4, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_2

    .line 416
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    :cond_2
    :try_start_4
    iget v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    .line 431
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 432
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 436
    :cond_3
    new-instance v1, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1200(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)J

    move-result-wide v6

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1000(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;-><init>(Lcn/forward/androids/utils/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcn/forward/androids/utils/cache/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 420
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v2, p1, :cond_4

    .line 421
    aget-object p1, v8, v2

    if-eqz p1, :cond_4

    .line 422
    aget-object p1, v8, v2

    invoke-static {p1}, Lcn/forward/androids/utils/cache/DiskLruUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 473
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 481
    :try_start_0
    iget-wide v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 574
    :try_start_0
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->checkNotClosed()V

    .line 575
    invoke-direct {p0, p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 577
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$700(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 581
    :cond_0
    :goto_0
    iget v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 582
    invoke-virtual {v0, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 583
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1000(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J

    .line 587
    invoke-static {v0}, Lcn/forward/androids/utils/cache/DiskLruCache$Entry;->access$1000(Lcn/forward/androids/utils/cache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_3
    iget v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->redundantOpCount:I

    .line 591
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 592
    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 595
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :cond_4
    monitor-exit p0

    return v1

    .line 578
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 489
    :try_start_0
    iput-wide p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->maxSize:J

    .line 490
    iget-object p1, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 499
    :try_start_0
    iget-wide v0, p0, Lcn/forward/androids/utils/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
