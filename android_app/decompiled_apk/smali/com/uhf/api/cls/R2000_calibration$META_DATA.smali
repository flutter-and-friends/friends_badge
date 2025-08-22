.class public Lcom/uhf/api/cls/R2000_calibration$META_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "META_DATA"
.end annotation


# instance fields
.field public IsAntennaID:Z

.field public IsEmdData:Z

.field public IsFrequency:Z

.field public IsPro:Z

.field public IsRFU:Z

.field public IsRSSI:Z

.field public IsReadCnt:Z

.field public IsTimestamp:Z

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaflag()S
    .locals 2

    .line 827
    iget-boolean v0, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsReadCnt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 829
    :goto_0
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsRSSI:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    .line 831
    :cond_1
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsAntennaID:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    .line 833
    :cond_2
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsFrequency:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    .line 835
    :cond_3
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsTimestamp:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    .line 837
    :cond_4
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsRFU:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    .line 839
    :cond_5
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsPro:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    .line 841
    :cond_6
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsEmdData:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    :cond_7
    return v0
.end method
