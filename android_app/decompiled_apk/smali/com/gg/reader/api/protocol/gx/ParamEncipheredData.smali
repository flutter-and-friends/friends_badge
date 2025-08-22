.class public Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamEncipheredData.java"


# instance fields
.field private bData:[B

.field private bitLength:I

.field private hexData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 24
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bitLength:I

    .line 25
    iput-object p2, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->hexData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 62
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bitLength:I

    .line 63
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bitLength:I

    div-int/lit8 v0, v0, 0x8

    .line 64
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    .line 67
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->hexData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public getBitLength()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bitLength:I

    return v0
.end method

.method public getHexData()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->hexData:Ljava/lang/String;

    return-object v0
.end method

.method public getbData()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    return-object v0
.end method

.method public setBitLength(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bitLength:I

    return-void
.end method

.method public setHexData(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->hexData:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->hexData:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    :cond_0
    return-void
.end method

.method public setbData([B)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 76
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 77
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bitLength:I

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 78
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->bData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 79
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
