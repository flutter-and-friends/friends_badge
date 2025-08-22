.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetWifiHotspot.java"


# instance fields
.field private certificationType:I

.field private connectPassword:Ljava/lang/String;

.field private encryptionAlgorithm:I

.field private hotspotName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->certificationType:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->encryptionAlgorithm:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x33

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;-><init>()V

    if-eqz p1, :cond_5

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x10

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 39
    new-instance v3, Ljava/lang/String;

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->hotspotName:Ljava/lang/String;

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    const/16 v3, 0x8

    div-int/2addr v2, v3

    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 42
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->encryptionAlgorithm:I

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->certificationType:I

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 47
    new-instance v3, Ljava/lang/String;

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    const-string v4, "ASCII"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->connectPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 123
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;)V

    .line 129
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->setRtCode(B)V

    .line 131
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCertificationType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->certificationType:I

    return v0
.end method

.method public getConnectPassword()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->connectPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionAlgorithm()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->encryptionAlgorithm:I

    return v0
.end method

.method public getHotspotName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->hotspotName:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 98
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->hotspotName:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->hotspotName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->hotspotName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->connectPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->connectPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->connectPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 108
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->certificationType:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    .line 109
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 110
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->certificationType:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->encryptionAlgorithm:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->encryptionAlgorithm:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 116
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    .line 117
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->dataLen:I

    return-void
.end method

.method public setCertificationType(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->certificationType:I

    return-void
.end method

.method public setConnectPassword(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->connectPassword:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionAlgorithm(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->encryptionAlgorithm:I

    return-void
.end method

.method public setHotspotName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiHotspot;->hotspotName:Ljava/lang/String;

    return-void
.end method
