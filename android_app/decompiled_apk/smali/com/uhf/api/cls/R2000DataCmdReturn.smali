.class public Lcom/uhf/api/cls/R2000DataCmdReturn;
.super Ljava/lang/Object;
.source "R2000DataCmdReturn.java"


# instance fields
.field private cmdcrc:[B

.field private command:I

.field private data:[B

.field private datalength:I

.field private headercode:I

.field private onebyte:Z

.field private sdata:B

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->status:I

    return-void
.end method


# virtual methods
.method public Data()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->data:[B

    return-object v0
.end method

.method public DataLength()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->datalength:I

    return v0
.end method

.method public GetData([B)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 38
    iput-object v1, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->cmdcrc:[B

    const/4 v1, 0x0

    .line 39
    aget-byte v2, p1, v1

    iput v2, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->headercode:I

    const/4 v2, 0x1

    .line 40
    aget-byte v3, p1, v2

    iput v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->datalength:I

    .line 42
    aget-byte v3, p1, v0

    iput v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->command:I

    const/4 v3, 0x3

    .line 43
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->status:I

    .line 44
    iget v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->datalength:I

    const/4 v4, 0x5

    if-ne v3, v2, :cond_0

    .line 46
    aget-byte v3, p1, v4

    iput-byte v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->sdata:B

    new-array v3, v2, [B

    .line 47
    iput-object v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->data:[B

    .line 48
    iget-object v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->data:[B

    iget-byte v4, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->sdata:B

    aput-byte v4, v3, v1

    .line 49
    iput-boolean v2, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->onebyte:Z

    goto :goto_0

    :cond_0
    if-le v3, v2, :cond_1

    .line 53
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->data:[B

    .line 54
    iget-object v5, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->data:[B

    invoke-static {p1, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-boolean v1, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->onebyte:Z

    goto :goto_0

    .line 59
    :cond_1
    iput-byte v1, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->sdata:B

    const/4 v3, 0x0

    .line 60
    iput-object v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->data:[B

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->cmdcrc:[B

    array-length v4, p1

    sub-int/2addr v4, v0

    aget-byte v0, p1, v4

    aput-byte v0, v3, v1

    .line 63
    array-length v0, p1

    sub-int/2addr v0, v2

    aget-byte p1, p1, v0

    aput-byte p1, v3, v2

    return-void
.end method

.method public SData()B
    .locals 1

    .line 26
    iget-byte v0, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->sdata:B

    return v0
.end method

.method public Status()Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;
    .locals 1

    .line 15
    iget v0, p0, Lcom/uhf/api/cls/R2000DataCmdReturn;->status:I

    invoke-static {v0}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->valueOf(I)Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    move-result-object v0

    return-object v0
.end method
