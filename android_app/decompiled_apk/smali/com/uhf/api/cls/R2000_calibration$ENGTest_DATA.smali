.class public Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ENGTest_DATA"
.end annotation


# instance fields
.field arg0:I

.field arg1:I

.field subcmd:B

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;BII)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iput-byte p2, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->subcmd:B

    .line 872
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->arg0:I

    .line 873
    iput p4, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->arg1:I

    return-void
.end method


# virtual methods
.method public ToByteData()[B
    .locals 2

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 879
    iget-byte v1, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->subcmd:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->arg0:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 881
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;->arg1:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 882
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
