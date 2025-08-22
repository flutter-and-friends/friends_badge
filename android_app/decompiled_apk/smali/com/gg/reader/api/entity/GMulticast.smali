.class public Lcom/gg/reader/api/entity/GMulticast;
.super Ljava/lang/Object;
.source "GMulticast.java"


# instance fields
.field private connectMode:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private dhcp:Ljava/lang/String;

.field private gateway:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mask:Ljava/lang/String;

.field private remoteIP:Ljava/lang/String;

.field private remotePort:Ljava/lang/String;

.field private serverPort:Ljava/lang/String;

.field private workingMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->mac:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->ip:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->serverPort:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->remoteIP:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->remotePort:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->workingMode:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->connectMode:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->deviceType:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->dhcp:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->mask:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->gateway:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->mac:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->ip:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->serverPort:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->remoteIP:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->remotePort:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->workingMode:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->connectMode:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->deviceType:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->dhcp:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->mask:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->gateway:Ljava/lang/String;

    const-string v0, "^"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 123
    array-length v0, p1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    .line 124
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    const-string v5, ":"

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 127
    aget-object v6, v4, v2

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "NET_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "GATEWAY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_2
    const-string v7, "PORT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_3
    const-string v7, "MODE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_4
    const-string v9, "MASK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_5
    const-string v7, "MAC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_6
    const-string v7, "IP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_7
    const-string v7, "RFID_READER_INFORMATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_8
    const-string v7, "HOST_SERVER_PORT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_9
    const-string v7, "HOST_SERVER_IP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_a
    const-string v7, "DHCP_SW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 159
    :pswitch_0
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->dhcp:Ljava/lang/String;

    goto :goto_3

    .line 156
    :pswitch_1
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->connectMode:Ljava/lang/String;

    goto :goto_3

    .line 153
    :pswitch_2
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->workingMode:Ljava/lang/String;

    goto :goto_3

    .line 150
    :pswitch_3
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->remotePort:Ljava/lang/String;

    goto :goto_3

    .line 147
    :pswitch_4
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->remoteIP:Ljava/lang/String;

    goto :goto_3

    .line 144
    :pswitch_5
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->serverPort:Ljava/lang/String;

    goto :goto_3

    .line 141
    :pswitch_6
    aget-object v4, v4, v1

    const-string v6, "-"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->mac:Ljava/lang/String;

    goto :goto_3

    .line 138
    :pswitch_7
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->gateway:Ljava/lang/String;

    goto :goto_3

    .line 135
    :pswitch_8
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->mask:Ljava/lang/String;

    goto :goto_3

    .line 132
    :pswitch_9
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->ip:Ljava/lang/String;

    goto :goto_3

    .line 129
    :pswitch_a
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/gg/reader/api/entity/GMulticast;->deviceType:Ljava/lang/String;

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7425628e -> :sswitch_a
        -0x43f82a34 -> :sswitch_9
        -0x2693381a -> :sswitch_8
        -0x128c0080 -> :sswitch_7
        0x927 -> :sswitch_6
        0x1292f -> :sswitch_5
        0x23feec -> :sswitch_4
        0x2431a3 -> :sswitch_3
        0x259081 -> :sswitch_2
        0x1f85d224 -> :sswitch_1
        0x2eeb8b2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getConnectMode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->connectMode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDhcp()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->dhcp:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIP()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->remoteIP:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePort()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->remotePort:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->serverPort:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingMode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/entity/GMulticast;->workingMode:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectMode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->connectMode:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setDhcp(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->dhcp:Ljava/lang/String;

    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->gateway:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->ip:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->mask:Ljava/lang/String;

    return-void
.end method

.method public setRemoteIP(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->remoteIP:Ljava/lang/String;

    return-void
.end method

.method public setRemotePort(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->remotePort:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->serverPort:Ljava/lang/String;

    return-void
.end method

.method public setWorkingMode(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/gg/reader/api/entity/GMulticast;->workingMode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMulticast{mac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/entity/GMulticast;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serverPort=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->serverPort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", remoteIP=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->remoteIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", remotePort=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->remotePort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", workingMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->workingMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", connectMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->connectMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dhcp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->dhcp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mask=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->mask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gateway=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/GMulticast;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
