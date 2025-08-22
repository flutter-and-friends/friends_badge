.class public Lcom/gg/reader/api/entity/WifiHotspotInfo;
.super Ljava/lang/Object;
.source "WifiHotspotInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bssid:Ljava/lang/String;

.field private capabilities:Ljava/lang/String;

.field private frequency:I

.field private level:I

.field private networkId:I

.field private ssid:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->networkId:I

    .line 12
    iput v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->status:I

    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->frequency:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->level:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->networkId:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->status:I

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->capabilities:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->frequency:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->level:I

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->networkId:I

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiHotspotInfo{capabilities=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", frequency="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->frequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networkId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->networkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bssid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ssid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/entity/WifiHotspotInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
