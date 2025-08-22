.class public Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterS2inA_DATA"
.end annotation


# instance fields
.field antbit:S

.field fre_v:I

.field power_v:S

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[III)V
    .locals 3

    .line 949
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 950
    iput-short p1, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->antbit:S

    .line 951
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 953
    iget-short v0, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->antbit:S

    aget v1, p2, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->antbit:S

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 955
    :cond_0
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->fre_v:I

    int-to-short p1, p4

    .line 956
    iput-short p1, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->power_v:S

    return-void
.end method


# virtual methods
.method public ToByteData()[B
    .locals 2

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 963
    iget-short v1, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->antbit:S

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->shortTolistbytes(S)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 964
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->fre_v:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 965
    iget-short v1, p0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->power_v:S

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->shortTolistbytes(S)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 966
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
