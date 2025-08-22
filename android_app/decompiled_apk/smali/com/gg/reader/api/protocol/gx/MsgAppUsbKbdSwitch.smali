.class public Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppUsbKbdSwitch.java"


# instance fields
.field private kbdSwitch:I

.field private operate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->operate:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x2b

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;-><init>()V

    if-eqz p1, :cond_2

    .line 32
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 35
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->operate:I

    .line 36
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 79
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;)V

    .line 85
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->setRtCode(B)V

    .line 87
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->setRtMsg(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 92
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 94
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I

    :cond_1
    return-void
.end method

.method public getKbdSwitch()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I

    return v0
.end method

.method public getOperate()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->operate:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 67
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->operate:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 69
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    .line 74
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->dataLen:I

    return-void
.end method

.method public setKbdSwitch(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->kbdSwitch:I

    return-void
.end method

.method public setOperate(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppUsbKbdSwitch;->operate:I

    return-void
.end method
