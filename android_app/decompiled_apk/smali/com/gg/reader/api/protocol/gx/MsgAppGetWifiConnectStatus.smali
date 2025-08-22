.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetWifiConnectStatus.java"


# instance fields
.field private hotspotName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x34

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;-><init>()V

    if-eqz p1, :cond_1

    .line 29
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 34
    new-instance v1, Ljava/lang/String;

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    const-string v0, "ASCII"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 3

    .line 58
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 61
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->cData:[B

    .line 65
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x10

    .line 75
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 78
    :try_start_0
    new-instance v3, Ljava/lang/String;

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    const-string v2, "ASCII"

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\u672a\u8fde\u63a5"

    .line 80
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getHotspotName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setHotspotName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetWifiConnectStatus{hotspotName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiConnectStatus;->hotspotName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
