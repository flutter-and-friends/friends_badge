.class public Lcom/gg/reader/api/utils/WhiteListUtils;
.super Ljava/lang/Object;
.source "WhiteListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static importData(Ljava/io/File;Lcom/gg/reader/api/dal/GClient;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "dbFile not found!!!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x100

    new-array p0, p0, [B

    .line 20
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;-><init>()V

    const-wide/16 v2, 0x0

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setPacketNumber(Ljava/lang/Long;)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 23
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->getRtCode()B

    move-result v2

    const-string v3, "Import white list Failure"

    if-nez v2, :cond_5

    const-wide/16 v4, 0x1

    move-wide v6, v4

    .line 24
    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    .line 25
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setPacketNumber(Ljava/lang/Long;)V

    .line 26
    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setPacketContent([B)V

    .line 27
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 28
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->getRtCode()B

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->getPacketNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v9, v6

    if-nez v2, :cond_2

    .line 29
    invoke-virtual {v1, v8}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setRtCode(B)V

    add-long/2addr v6, v4

    const-wide/16 v8, 0x32

    .line 35
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 p0, 0x10

    const-string v2, "FFFFFFFF"

    .line 39
    invoke-static {v2, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setPacketNumber(Ljava/lang/Long;)V

    const/4 p0, 0x0

    .line 40
    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setPacketContent([B)V

    .line 41
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 42
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->getRtCode()B

    move-result p0

    if-nez p0, :cond_4

    .line 45
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    .line 43
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
