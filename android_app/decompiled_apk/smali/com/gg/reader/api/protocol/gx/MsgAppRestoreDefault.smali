.class public Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppRestoreDefault.java"


# instance fields
.field private confirmationCode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const-wide/32 v0, 0x5aa5a55a

    .line 13
    iput-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->confirmationCode:J

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x14

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;-><init>()V

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

    const/16 v0, 0x20

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->confirmationCode:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 57
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;)V

    .line 63
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->setRtCode(B)V

    .line 65
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getConfirmationCode()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->confirmationCode:J

    return-wide v0
.end method

.method public pack()V
    .locals 4

    .line 49
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 50
    iget-wide v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->confirmationCode:J

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 51
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->dataLen:I

    return-void
.end method

.method public setConfirmationCode(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppRestoreDefault;->confirmationCode:J

    return-void
.end method
