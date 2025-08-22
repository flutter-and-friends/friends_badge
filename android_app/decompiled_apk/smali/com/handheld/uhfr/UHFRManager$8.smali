.class final Lcom/handheld/uhfr/UHFRManager$8;
.super Ljava/lang/Object;
.source "UHFRManager.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTag6bLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handheld/uhfr/UHFRManager;->onTagHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V
    .locals 1

    .line 3249
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getResult()I

    move-result p1

    if-nez p1, :cond_0

    .line 3251
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$600()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 3253
    :try_start_0
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$600()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3254
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
