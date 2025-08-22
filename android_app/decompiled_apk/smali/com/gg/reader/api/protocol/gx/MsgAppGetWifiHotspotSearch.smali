.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetWifiHotspotSearch.java"


# instance fields
.field private jsonReader:Lcom/gg/reader/api/utils/JsonReader;

.field private packetContent:[B

.field private searchResultPacketNumber:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 23
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x32

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 26
    new-instance v0, Lcom/gg/reader/api/utils/JsonReader;

    invoke-direct {v0}, Lcom/gg/reader/api/utils/JsonReader;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->jsonReader:Lcom/gg/reader/api/utils/JsonReader;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;-><init>()V

    if-eqz p1, :cond_1

    .line 35
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    const/16 v0, 0x10

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    .line 41
    new-array v1, v0, [B

    if-lez v0, :cond_1

    .line 43
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 98
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 100
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put([BI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    .line 106
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 116
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    const/16 v2, 0x10

    .line 118
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 119
    new-array v3, v2, [B

    if-lez v2, :cond_0

    .line 121
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    .line 123
    :cond_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getPacketContent()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    return-object v0
.end method

.method public getSearchResultPacketNumber()Ljava/lang/Long;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getWifiFormatterParam([B)Lcom/gg/reader/api/entity/WifiHotspotInfo;
    .locals 3

    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->jsonReader:Lcom/gg/reader/api/utils/JsonReader;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-class p1, Lcom/gg/reader/api/entity/WifiHotspotInfo;

    invoke-virtual {v0, v1, p1}, Lcom/gg/reader/api/utils/JsonReader;->jsonToClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gg/reader/api/entity/WifiHotspotInfo;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public pack()V
    .locals 4

    .line 82
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setPacketContent([B)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    return-void
.end method

.method public setSearchResultPacketNumber(Ljava/lang/Long;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetWifiHotspotSearch{searchResultPacketNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->searchResultPacketNumber:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packetContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiHotspotSearch;->packetContent:[B

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
