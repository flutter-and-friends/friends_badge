.class public Lcom/handheld/uhfr/Reader$TEMPTAGINFO;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handheld/uhfr/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TEMPTAGINFO"
.end annotation


# instance fields
.field public AntennaID:B

.field public CRC:[B

.field public EmbededData:[B

.field public EmbededDatalen:S

.field public EpcId:[B

.field public Epclen:S

.field public Frequency:I

.field public PC:[B

.field public Phase:I

.field public RSSI:I

.field public ReadCnt:I

.field public Res:[B

.field public Temperature:D

.field public TimeStamp:I

.field public count:I

.field public index:I

.field public protocol:Lcom/handheld/uhfr/Reader$SL_TagProtocol;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 309
    iput-object v1, p0, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Res:[B

    new-array v1, v0, [B

    .line 310
    iput-object v1, p0, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->PC:[B

    new-array v0, v0, [B

    .line 311
    iput-object v0, p0, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->CRC:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 330
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
