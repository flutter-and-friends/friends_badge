.class public Lcn/manytag/rfidapi/Reader;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcn/manytag/rfidapi/Reader;


# instance fields
.field ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

.field bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

.field context:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/manytag/rfidapi/Reader;B)I
    .locals 0

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/Reader;->byteToInt(B)I

    move-result p0

    return p0
.end method

.method private byteToInt(B)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static getInstance()Lcn/manytag/rfidapi/Reader;
    .locals 2

    sget-object v0, Lcn/manytag/rfidapi/Reader;->instance:Lcn/manytag/rfidapi/Reader;

    if-nez v0, :cond_1

    const-class v0, Lcn/manytag/rfidapi/Reader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/manytag/rfidapi/Reader;->instance:Lcn/manytag/rfidapi/Reader;

    if-nez v1, :cond_0

    new-instance v1, Lcn/manytag/rfidapi/Reader;

    invoke-direct {v1}, Lcn/manytag/rfidapi/Reader;-><init>()V

    sput-object v1, Lcn/manytag/rfidapi/Reader;->instance:Lcn/manytag/rfidapi/Reader;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/manytag/rfidapi/Reader;->instance:Lcn/manytag/rfidapi/Reader;

    return-object v0
.end method

.method private setBMtu(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 3

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    new-instance v1, Lcn/manytag/rfidapi/c;

    invoke-direct {v1, p0}, Lcn/manytag/rfidapi/c;-><init>(Lcn/manytag/rfidapi/Reader;)V

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v2, v1}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;ILcn/manytag/rfidapi/ble/callback/d;)V

    return-void
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/uhf/a;->a()V

    return-void
.end method

.method public closeDevice()V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/uhf/a;->b()V

    return-void
.end method

.method public connect(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/d;

    invoke-direct {v1, p0, p2}, Lcn/manytag/rfidapi/d;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;)V

    invoke-virtual {v0, p1, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/callback/b;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/e;

    invoke-direct {v1, p0}, Lcn/manytag/rfidapi/e;-><init>(Lcn/manytag/rfidapi/Reader;)V

    invoke-virtual {v0, p1, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/b;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/a;

    invoke-direct {v1, p0, p2}, Lcn/manytag/rfidapi/a;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;)V

    invoke-virtual {v0, p1, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/b;)V

    return-void
.end method

.method public findTag([BI)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {p1, p2}, Lcn/manytag/rfidapi/uhf/m;->a([BI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getDutyCycle()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->j()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getGattery()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getPower()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->d()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getSonudMode()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->b()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getTag()V
    .locals 3

    const/4 v0, 0x2

    sput v0, Lcn/manytag/rfidapi/uhf/a;->j:I

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->e()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getVersion()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->l()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getWorkingFrequency()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->k()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public getWorkingMode()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->g()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    iput-object p1, p0, Lcn/manytag/rfidapi/Reader;->context:Landroid/app/Application;

    new-instance v0, Lcn/manytag/rfidapi/uhf/a;

    invoke-direct {v0, p1}, Lcn/manytag/rfidapi/uhf/a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    return-void
.end method

.method public removeListening()V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/uhf/a;->c()V

    return-void
.end method

.method public setBuzzing()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->c()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public setDeviceDisplayNum(I)V
    .locals 2

    const v0, 0xffff

    if-le p1, v0, :cond_0

    const p1, 0xffff

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->IntToByte(I)[B

    move-result-object p1

    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/m;->a([B)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public setDutyCycle(II)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {p1, p2}, Lcn/manytag/rfidapi/uhf/m;->a(II)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public setFindTagListener(Lcn/manytag/rfidapi/uhf/listen/OnFindTag;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/b;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/b;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnFindTag;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/e;)V

    return-void
.end method

.method public setInventory(Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/h;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/h;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnInventoryTag;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/f;)V

    return-void
.end method

.method public setKeypad(Lcn/manytag/rfidapi/uhf/listen/OnKeypad;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/j;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/j;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnKeypad;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/g;)V

    return-void
.end method

.method public setOperation(Lcn/manytag/rfidapi/uhf/listen/OnOperation;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/f;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/f;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnOperation;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/h;)V

    return-void
.end method

.method public setPower(I)V
    .locals 2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/16 v1, 0x21

    if-le p1, v1, :cond_1

    const/16 v0, 0x21

    :cond_1
    iget-object p1, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b(I)[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public setSetting(Lcn/manytag/rfidapi/uhf/listen/OnSetting;)V
    .locals 3

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/Setting;

    invoke-direct {v0}, Lcn/manytag/rfidapi/uhf/data/Setting;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v2, Lcn/manytag/rfidapi/g;

    invoke-direct {v2, p0, v0, p1}, Lcn/manytag/rfidapi/g;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/data/Setting;Lcn/manytag/rfidapi/uhf/listen/OnSetting;)V

    invoke-virtual {v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSonudMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/m;->a(I)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public setTagInventory(Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/i;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/i;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnTagInfo;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/j;)V

    return-void
.end method

.method public setWorkingFrequency(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Japan(952MHz-953MHz)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "Europe(865MHz-868MHz)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "Korea(917MHz-923MHz)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "USA(902MHz-928MHz)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "China2(920MHz-925MHz)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "China1(840MHz-845MHz)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x32

    goto :goto_2

    :cond_2
    const/16 v3, 0x16

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    :goto_2
    iget-object p1, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {v3}, Lcn/manytag/rfidapi/uhf/m;->a(B)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5dda77b1 -> :sswitch_5
        -0x45f45332 -> :sswitch_4
        -0x3813777b -> :sswitch_3
        0x89f7a55 -> :sswitch_2
        0x10c5fb05 -> :sswitch_1
        0x22fbbc7f -> :sswitch_0
    .end sparse-switch
.end method

.method public setWorkingMode(Lcn/manytag/rfidapi/uhf/data/WorkingModeType;)V
    .locals 3

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->RFID:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    const/4 v2, 0x0

    invoke-static {v2}, Lcn/manytag/rfidapi/uhf/m;->c(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    :cond_0
    sget-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->BARCODE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/manytag/rfidapi/uhf/m;->c(I)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    :cond_1
    return-void
.end method

.method public setWorkingMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "RFID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    const/4 v2, 0x0

    invoke-static {v2}, Lcn/manytag/rfidapi/uhf/m;->c(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    :cond_0
    const-string v0, "BARCODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/manytag/rfidapi/uhf/m;->c(I)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    :cond_1
    return-void
.end method

.method public setWorkingModeListener(Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    new-instance v1, Lcn/manytag/rfidapi/k;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/k;-><init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/uhf/k;)V

    return-void
.end method

.method public startInventory()V
    .locals 3

    const/4 v0, 0x1

    sput v0, Lcn/manytag/rfidapi/uhf/a;->j:I

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->h()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public startScanBle(Lcn/manytag/rfidapi/ble/callback/BleScanCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/callback/BleScanCallback;)V

    :cond_0
    return-void
.end method

.method public stopFindTag()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->f()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public stopInventory()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->i()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method

.method public stopReadBuffer()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Lcn/manytag/rfidapi/uhf/m;->m()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    return-void
.end method
