.class public Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pabiascal_DATA"
.end annotation


# instance fields
.field paa0:I

.field paa1:I

.field paa2:I

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;III)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput p2, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->paa2:I

    .line 480
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->paa1:I

    .line 481
    iput p4, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->paa0:I

    return-void
.end method


# virtual methods
.method public ToByteData()[B
    .locals 2

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->paa2:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 489
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->paa1:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;->paa0:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
