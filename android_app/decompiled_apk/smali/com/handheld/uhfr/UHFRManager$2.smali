.class final Lcom/handheld/uhfr/UHFRManager$2;
.super Ljava/lang/Object;
.source "UHFRManager.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTagEpcLog;


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

    .line 3175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V
    .locals 2

    .line 3178
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getResult()I

    move-result p1

    if-nez p1, :cond_0

    .line 3179
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$100()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 3181
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->setReplySerialNumber(Ljava/lang/Long;)V

    .line 3182
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3183
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
