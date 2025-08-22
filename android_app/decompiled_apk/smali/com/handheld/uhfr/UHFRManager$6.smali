.class final Lcom/handheld/uhfr/UHFRManager$6;
.super Ljava/lang/Object;
.source "UHFRManager.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTagGJbLog;


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

    .line 3223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V
    .locals 1

    .line 3226
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getResult()I

    move-result p1

    if-nez p1, :cond_0

    .line 3227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gbepc = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getEpc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pang"

    invoke-static {v0, p1}, Lcom/handheld/uhfr/UHFRManager;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$500()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 3230
    :try_start_0
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3231
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
