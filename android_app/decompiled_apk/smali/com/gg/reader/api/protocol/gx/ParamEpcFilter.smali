.class public Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamEpcFilter.java"


# instance fields
.field private area:I

.field private bData:[B

.field private bitLength:I

.field private bitStart:I

.field private hexData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 25
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->area:I

    .line 26
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitStart:I

    .line 27
    iput p3, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitLength:I

    .line 28
    iput-object p4, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->hexData:Ljava/lang/String;

    .line 29
    invoke-static {p4}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->hexData:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 84
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->area:I

    const/16 v1, 0x10

    .line 85
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitStart:I

    .line 86
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitLength:I

    .line 87
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitLength:I

    div-int/2addr v1, v0

    .line 88
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    if-lez v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    .line 91
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->hexData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->area:I

    return v0
.end method

.method public getBitLength()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitLength:I

    return v0
.end method

.method public getBitStart()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitStart:I

    return v0
.end method

.method public getHexData()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->hexData:Ljava/lang/String;

    return-object v0
.end method

.method public getbData()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    return-object v0
.end method

.method public setArea(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->area:I

    return-void
.end method

.method public setBitLength(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitLength:I

    return-void
.end method

.method public setBitStart(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitStart:I

    return-void
.end method

.method public setHexData(Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->hexData:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->hexData:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    :cond_0
    return-void
.end method

.method public setbData([B)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    return-void
.end method

.method public toBytes()[B
    .locals 5

    .line 99
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 100
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitStart:I

    int-to-long v1, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 102
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bitLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->bData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 104
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
