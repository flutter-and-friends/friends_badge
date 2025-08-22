.class public Lcom/gg/reader/api/utils/UpgradeUtils;
.super Ljava/lang/Object;
.source "UpgradeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upgradeApp(Ljava/io/File;Lcom/gg/reader/api/dal/GClient;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x100

    new-array p0, p0, [B

    .line 65
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;-><init>()V

    const-wide/16 v2, 0x0

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->setPacketNumber(Ljava/lang/Long;)V

    .line 67
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 68
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->getRtCode()B

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 71
    :cond_0
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->getRtCode()B

    move-result v2

    const-string v3, "upgrade Failure"

    if-nez v2, :cond_4

    const-wide/16 v4, 0x1

    move-wide v6, v4

    .line 72
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 73
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->setPacketNumber(Ljava/lang/Long;)V

    .line 74
    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->setPacketContent([B)V

    .line 75
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 76
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->getRtCode()B

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->getPacketNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v9, v6

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {v1, v8}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->setRtCode(B)V

    add-long/2addr v6, v4

    goto :goto_0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 p0, 0x10

    const-string v2, "FFFFFFFF"

    .line 83
    invoke-static {v2, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->setPacketNumber(Ljava/lang/Long;)V

    const/4 p0, 0x0

    .line 84
    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->setPacketContent([B)V

    .line 85
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 86
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeApp;->getRtCode()B

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v1, 0x1388

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 91
    new-instance p0, Lcom/gg/reader/api/protocol/gx/MsgAppReset;

    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppReset;-><init>()V

    invoke-virtual {p1, p0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "binFile not found!!!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static upgradeBase(Ljava/io/File;Lcom/gg/reader/api/dal/GClient;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x100

    new-array p0, p0, [B

    .line 23
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;-><init>()V

    const-wide/16 v2, 0x0

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketNumber(Ljava/lang/Long;)V

    .line 25
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 26
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v2

    const-string v3, "upgrade Failure"

    if-nez v2, :cond_4

    const-wide/16 v4, 0x1

    move-wide v6, v4

    .line 30
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketNumber(Ljava/lang/Long;)V

    .line 32
    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketContent([B)V

    .line 33
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 34
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getPacketNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v9, v6

    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v1, v8}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setRtCode(B)V

    add-long/2addr v6, v4

    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 p0, 0x10

    const-string v2, "FFFFFFFF"

    .line 41
    invoke-static {v2, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketNumber(Ljava/lang/Long;)V

    const/4 p0, 0x0

    .line 42
    invoke-virtual {v1, p0}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->setPacketContent([B)V

    .line 43
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 44
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgUpgradeBaseband;->getRtCode()B

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v1, 0x7d0

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 49
    new-instance p0, Lcom/gg/reader/api/protocol/gx/MsgAppReset;

    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppReset;-><init>()V

    invoke-virtual {p1, p0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    .line 45
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "binFile not found!!!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
