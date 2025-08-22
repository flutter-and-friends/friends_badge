.class public Lcn/manytag/rfidapi/uhf/a;
.super Ljava/lang/Object;


# static fields
.field public static j:I = -0x1


# instance fields
.field a:Ljava/lang/StringBuffer;

.field public b:Lcn/manytag/rfidapi/uhf/f;

.field public c:Lcn/manytag/rfidapi/uhf/j;

.field public d:Lcn/manytag/rfidapi/uhf/h;

.field public e:Lcn/manytag/rfidapi/uhf/i;

.field public f:Lcn/manytag/rfidapi/uhf/g;

.field public g:Lcn/manytag/rfidapi/uhf/k;

.field public h:Lcn/manytag/rfidapi/uhf/e;

.field i:I

.field public k:Lcn/manytag/rfidapi/uhf/l;

.field public l:Lcn/manytag/rfidapi/uhf/util/b;

.field m:Landroid/app/Application;

.field private n:Ljava/util/List;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->a:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcn/manytag/rfidapi/uhf/a;->i:I

    new-instance v0, Lcn/manytag/rfidapi/uhf/l;

    invoke-direct {v0}, Lcn/manytag/rfidapi/uhf/l;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->k:Lcn/manytag/rfidapi/uhf/l;

    new-instance v0, Lcn/manytag/rfidapi/uhf/util/b;

    invoke-direct {v0}, Lcn/manytag/rfidapi/uhf/util/b;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->l:Lcn/manytag/rfidapi/uhf/util/b;

    new-instance v0, Lcn/manytag/rfidapi/uhf/d;

    invoke-direct {v0, p0}, Lcn/manytag/rfidapi/uhf/d;-><init>(Lcn/manytag/rfidapi/uhf/a;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->o:Landroid/os/Handler;

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->m:Landroid/app/Application;

    invoke-direct {p0}, Lcn/manytag/rfidapi/uhf/a;->d()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->n:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcn/manytag/rfidapi/uhf/a;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/uhf/a;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v2, p1, v1

    iget-object v3, p0, Lcn/manytag/rfidapi/uhf/a;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcn/manytag/rfidapi/uhf/a;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcn/manytag/rfidapi/uhf/a;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, -0x4a

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/manytag/rfidapi/uhf/a;->n:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcn/manytag/rfidapi/uhf/a;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcn/manytag/rfidapi/uhf/a;->o:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    new-instance v4, Lcn/manytag/rfidapi/uhf/data/BleData;

    invoke-direct {v4, v2}, Lcn/manytag/rfidapi/uhf/data/BleData;-><init>(Ljava/util/List;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcn/manytag/rfidapi/uhf/a;->o:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/util/List;)[B
    .locals 0

    invoke-static {p0}, Lcn/manytag/rfidapi/uhf/a;->b(Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([BI)[[B
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    array-length p1, p0

    int-to-double v2, p1

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    new-array v2, p1, [[B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    int-to-double v4, v3

    mul-double v4, v4, v0

    double-to-int v4, v4

    int-to-double v5, v4

    add-double/2addr v5, v0

    double-to-int v5, v5

    array-length v6, p0

    if-le v5, v6, :cond_0

    array-length v5, p0

    :cond_0
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private b(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V
    .locals 7

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v1

    new-instance v6, Lcn/manytag/rfidapi/uhf/c;

    invoke-direct {v6, p0}, Lcn/manytag/rfidapi/uhf/c;-><init>(Lcn/manytag/rfidapi/uhf/a;)V

    const-string v3, "0000ffe1-0000-1000-8000-00805f9b34fb"

    const-string v4, "0000ffe3-0000-1000-8000-00805f9b34fb"

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcn/manytag/rfidapi/ble/callback/i;)V

    return-void
.end method

.method static synthetic b(Lcn/manytag/rfidapi/uhf/a;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/uhf/a;->b([B)Z

    move-result p0

    return p0
.end method

.method private b([B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v4, p1, v1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    aget-byte p1, p1, v2

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method private static b(Ljava/util/List;)[B
    .locals 3

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcn/manytag/rfidapi/uhf/a;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/uhf/a;->c([B)V

    return-void
.end method

.method private c([B)V
    .locals 5

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0x22

    if-eq v0, v2, :cond_3

    const/16 v2, 0x30

    if-eq v0, v2, :cond_2

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1

    const/16 v2, 0x34

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\u5de5\u4f5c\u65f6\u95f4&\u4f11\u606f\u65f6\u95f4\u8bbe\u7f6e"

    goto :goto_0

    :cond_1
    const-string v0, "\u8bbe\u7f6e\u542f\u52a8\u505c\u6b62"

    goto :goto_0

    :cond_2
    const-string v0, "\u5de5\u4f5c\u6a21\u5f0f\u8bbe\u7f6e"

    goto :goto_0

    :cond_3
    const-string v0, "\u5de5\u4f5c\u9891\u6bb5\u8bbe\u7f6e"

    goto :goto_0

    :cond_4
    const-string v0, "\u529f\u7387\u8bbe\u7f6e"

    goto :goto_0

    :cond_5
    const-string v0, "\u58f0\u97f3\u8bbe\u7f6e"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%02x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->d:Lcn/manytag/rfidapi/uhf/h;

    invoke-interface {v1, v0, p1}, Lcn/manytag/rfidapi/uhf/h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->m:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a;->a(Landroid/app/Application;)V

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a;->a(Z)Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/manytag/rfidapi/ble/a;->a(IJ)Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/ble/a;->a(J)Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a;->a(I)Lcn/manytag/rfidapi/ble/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->k()V

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 4

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    new-instance v1, Lcn/manytag/rfidapi/uhf/b;

    invoke-direct {v1, p0}, Lcn/manytag/rfidapi/uhf/b;-><init>(Lcn/manytag/rfidapi/uhf/a;)V

    const-string v2, "0000ffe1-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ffe2-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p1, v2, v3, v1}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/e;)V

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/callback/b;)V
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V
    .locals 2

    array-length v0, p2

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    invoke-static {p2, v1}, Lcn/manytag/rfidapi/uhf/a;->a([BI)[[B

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lcn/manytag/rfidapi/uhf/a;->b(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/manytag/rfidapi/uhf/a;->b(Lcn/manytag/rfidapi/ble/data/BleDevice;[B)V

    :cond_1
    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/e;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->h:Lcn/manytag/rfidapi/uhf/e;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/f;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->b:Lcn/manytag/rfidapi/uhf/f;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/g;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->f:Lcn/manytag/rfidapi/uhf/g;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/h;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->d:Lcn/manytag/rfidapi/uhf/h;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/i;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->e:Lcn/manytag/rfidapi/uhf/i;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/j;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->c:Lcn/manytag/rfidapi/uhf/j;

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/uhf/k;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/a;->g:Lcn/manytag/rfidapi/uhf/k;

    return-void
.end method

.method public a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/b;)V
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/manytag/rfidapi/ble/a;->a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->n()V

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->o()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->f:Lcn/manytag/rfidapi/uhf/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->f:Lcn/manytag/rfidapi/uhf/g;

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->b:Lcn/manytag/rfidapi/uhf/f;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->b:Lcn/manytag/rfidapi/uhf/f;

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->e:Lcn/manytag/rfidapi/uhf/i;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->e:Lcn/manytag/rfidapi/uhf/i;

    :cond_2
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->d:Lcn/manytag/rfidapi/uhf/h;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->d:Lcn/manytag/rfidapi/uhf/h;

    :cond_3
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->g:Lcn/manytag/rfidapi/uhf/k;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->g:Lcn/manytag/rfidapi/uhf/k;

    :cond_4
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/a;->h:Lcn/manytag/rfidapi/uhf/e;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcn/manytag/rfidapi/uhf/a;->h:Lcn/manytag/rfidapi/uhf/e;

    :cond_5
    return-void
.end method
