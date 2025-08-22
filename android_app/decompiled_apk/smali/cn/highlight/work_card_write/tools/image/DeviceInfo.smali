.class public Lcn/highlight/work_card_write/tools/image/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private AppID:Ljava/lang/String;

.field private EN_Color:Ljava/lang/String;

.field private UID:Ljava/lang/String;

.field private black:I

.field private color:Ljava/lang/String;

.field private colorCount:I

.field private colorType:Ljava/lang/String;

.field private cosVersion:I

.field private height:I

.field private isBattery:Z

.field private isCompress:Z

.field private isPin:Z

.field private manufacturer:Ljava/lang/String;

.field private pictureCapacity:I

.field private pinCode:Ljava/lang/String;

.field private red:I

.field private refreshScan:I

.field private scanType:Ljava/lang/String;

.field private screen:Ljava/lang/String;

.field private size:I

.field private userData:I

.field private white:I

.field private width:I

.field private yellow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Black White Red"

    .line 96
    iput-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->color:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->EN_Color:Ljava/lang/String;

    const/4 v0, 0x3

    .line 206
    iput v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->colorCount:I

    const-string v0, ""

    .line 212
    iput-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->colorType:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->scanType:Ljava/lang/String;

    const-string v0, "1122334455"

    .line 283
    iput-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->pinCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->AppID:Ljava/lang/String;

    return-object v0
.end method

.method public getBlack()I
    .locals 1

    .line 164
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->black:I

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getColorCount()I
    .locals 1

    .line 196
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->colorCount:I

    return v0
.end method

.method public getColorType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->colorType:Ljava/lang/String;

    return-object v0
.end method

.method public getCosVersion()I
    .locals 1

    .line 219
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->cosVersion:I

    return v0
.end method

.method public getEN_Color()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->EN_Color:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 126
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->height:I

    return v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureCapacity()I
    .locals 1

    .line 50
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->pictureCapacity:I

    return v0
.end method

.method public getPin()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->isPin:Z

    return v0
.end method

.method public getPinCode()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->pinCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRed()I
    .locals 1

    .line 180
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->red:I

    return v0
.end method

.method public getRefreshScan()I
    .locals 1

    .line 240
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->refreshScan:I

    return v0
.end method

.method public getScanType()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->scanType:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->screen:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 151
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->size:I

    return v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->UID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()I
    .locals 1

    .line 253
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->userData:I

    return v0
.end method

.method public getWhite()I
    .locals 1

    .line 172
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->white:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 118
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->width:I

    return v0
.end method

.method public getYellow()I
    .locals 1

    .line 188
    iget v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->yellow:I

    return v0
.end method

.method public isBattery()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->isBattery:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->isCompress:Z

    return v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->AppID:Ljava/lang/String;

    return-void
.end method

.method public setBattery(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->isBattery:Z

    return-void
.end method

.method public setBlack(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->black:I

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->color:Ljava/lang/String;

    return-void
.end method

.method public setColorCount(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->colorCount:I

    return-void
.end method

.method public setColorType(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->colorType:Ljava/lang/String;

    return-void
.end method

.method public setCompress(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->isCompress:Z

    return-void
.end method

.method public setCosVersion(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->cosVersion:I

    return-void
.end method

.method public setEN_Color(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->EN_Color:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->height:I

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setPictureCapacity(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->pictureCapacity:I

    return-void
.end method

.method public setPin(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->isPin:Z

    return-void
.end method

.method public setPinCode(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->pinCode:Ljava/lang/String;

    return-void
.end method

.method public setRed(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->red:I

    return-void
.end method

.method public setRefreshScan(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->refreshScan:I

    return-void
.end method

.method public setScanType(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->scanType:Ljava/lang/String;

    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->screen:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->size:I

    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->UID:Ljava/lang/String;

    return-void
.end method

.method public setUserData(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->userData:I

    return-void
.end method

.method public setWhite(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->white:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->width:I

    return-void
.end method

.method public setYellow(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->yellow:I

    return-void
.end method
