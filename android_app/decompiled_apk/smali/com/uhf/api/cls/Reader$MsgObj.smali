.class Lcom/uhf/api/cls/Reader$MsgObj;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgObj"
.end annotation


# instance fields
.field public crc:[B

.field public data:[B

.field public dataLen:[B

.field public opCode:[B

.field public soh:[B

.field public status:[B

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .locals 1

    .line 2864
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$MsgObj;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array v0, p1, [B

    .line 2865
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$MsgObj;->soh:[B

    new-array v0, p1, [B

    .line 2866
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    new-array p1, p1, [B

    .line 2867
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$MsgObj;->opCode:[B

    const/4 p1, 0x2

    new-array v0, p1, [B

    .line 2868
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$MsgObj;->status:[B

    new-array p1, p1, [B

    .line 2869
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$MsgObj;->crc:[B

    const/16 p1, 0xfa

    new-array p1, p1, [B

    .line 2870
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$MsgObj;->data:[B

    return-void
.end method


# virtual methods
.method public getcheckcrcdata()[B
    .locals 7

    .line 2873
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 2875
    aget-byte v0, v0, v1

    aput-byte v0, v2, v1

    .line 2877
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$MsgObj;->opCode:[B

    aget-byte v0, v0, v1

    const/4 v4, 0x1

    aput-byte v0, v2, v4

    .line 2878
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$MsgObj;->status:[B

    aget-byte v5, v0, v1

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    .line 2879
    aget-byte v0, v0, v4

    const/4 v4, 0x3

    aput-byte v0, v2, v4

    const/4 v0, 0x0

    .line 2880
    :goto_0
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    aget-byte v4, v4, v1

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2881
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$MsgObj;->data:[B

    aget-byte v5, v5, v0

    aput-byte v5, v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method
