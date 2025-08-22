.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetWifiIp.java"


# instance fields
.field private autoIp:I

.field private dns1:Ljava/lang/String;

.field private dns2:Ljava/lang/String;

.field private gateway:Ljava/lang/String;

.field private hotId:Ljava/lang/Long;

.field private iP:Ljava/lang/String;

.field private mask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const-string v0, "0.0.0.0"

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->iP:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->mask:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->gateway:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns1:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns2:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->hotId:Ljava/lang/Long;

    .line 24
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x35

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;-><init>()V

    if-eqz p1, :cond_1

    .line 36
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->autoIp:I

    .line 40
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "."

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x20

    .line 59
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->hotId:Ljava/lang/Long;

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns2:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns1:Ljava/lang/String;

    goto/16 :goto_0

    .line 50
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->gateway:Ljava/lang/String;

    goto/16 :goto_0

    .line 47
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->mask:Ljava/lang/String;

    goto/16 :goto_0

    .line 44
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->iP:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 169
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;)V

    .line 175
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->setRtCode(B)V

    .line 177
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAutoIp()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->autoIp:I

    return v0
.end method

.method public getDns1()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns1:Ljava/lang/String;

    return-object v0
.end method

.method public getDns2()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getHotId()Ljava/lang/Long;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->hotId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getiP()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->iP:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 9

    .line 126
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 127
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->autoIp:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 128
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->autoIp:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 130
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->iP:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v1, v6

    .line 132
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 134
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 135
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->mask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    array-length v4, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 139
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 140
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->gateway:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 141
    array-length v4, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v1, v6

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    .line 144
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 145
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    array-length v4, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_3

    aget-object v7, v1, v6

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x5

    .line 149
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 150
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    array-length v2, v1

    :goto_4
    if-ge v5, v2, :cond_4

    aget-object v4, v1, v5

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const-wide v1, 0x7fffffffffffffffL

    .line 155
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->hotId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x20

    const/4 v7, 0x6

    cmp-long v8, v1, v4

    if-eqz v8, :cond_5

    .line 156
    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 157
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->hotId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v6}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_5

    .line 159
    :cond_5
    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide/16 v1, 0x0

    .line 160
    invoke-virtual {v0, v1, v2, v6}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 163
    :goto_5
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    .line 164
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dataLen:I

    return-void
.end method

.method public setAutoIp(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->autoIp:I

    return-void
.end method

.method public setDns1(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns1:Ljava/lang/String;

    return-void
.end method

.method public setDns2(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->dns2:Ljava/lang/String;

    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->gateway:Ljava/lang/String;

    return-void
.end method

.method public setHotId(Ljava/lang/Long;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->hotId:Ljava/lang/Long;

    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->mask:Ljava/lang/String;

    return-void
.end method

.method public setiP(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWifiIp;->iP:Ljava/lang/String;

    return-void
.end method
