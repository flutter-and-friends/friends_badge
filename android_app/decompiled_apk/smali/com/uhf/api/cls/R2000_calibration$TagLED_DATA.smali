.class public Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagLED_DATA"
.end annotation


# instance fields
.field BankData:[B

.field pvtAntenna:I

.field pvtFrequency:I

.field pvtLqi:I

.field pvtPhase:I

.field pvtPro:I

.field pvtReadCount:I

.field pvtTsmp:I

.field tagcrc:[B

.field tagepc:[B

.field tagpc:[B

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V
    .locals 7

    .line 744
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 747
    aget-byte v0, p2, p1

    const/16 v1, 0x10

    and-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 751
    aget-byte v0, p2, v3

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    const/4 v4, 0x3

    .line 752
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    int-to-short v0, v0

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 755
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    const/4 v4, 0x4

    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 757
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    move v4, v5

    :cond_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 760
    aget-byte v4, p2, v4

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    .line 761
    iget v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    if-nez v4, :cond_2

    .line 762
    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    :cond_2
    move v4, v5

    :cond_3
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    .line 766
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    .line 767
    iget v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    .line 768
    iget v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    move v4, v5

    :cond_4
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 772
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    .line 773
    iget v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x10

    or-int/2addr v1, v4

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    .line 774
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    add-int/lit8 v4, v6, 0x1

    aget-byte v5, p2, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    .line 775
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    move v4, v5

    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .line 781
    aget-byte v1, p2, v1

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    add-int/lit8 v4, v4, 0x2

    :cond_6
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_7

    add-int/lit8 v1, v4, 0x1

    .line 785
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    goto :goto_0

    :cond_7
    move v1, v4

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 790
    aget-byte v0, p2, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p2, v4

    or-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x2

    if-eqz v0, :cond_8

    .line 794
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    .line 795
    iget-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    invoke-static {p2, v1, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    add-int/2addr v0, v1

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    const/4 v0, 0x1

    :goto_1
    new-array v1, v2, [B

    .line 801
    iput-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    .line 802
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p2, v0

    aput-byte v0, v1, p1

    add-int/lit8 v0, v4, 0x1

    .line 803
    aget-byte v4, p2, v4

    aput-byte v4, v1, v3

    sub-int/2addr p3, v0

    sub-int/2addr p3, v2

    .line 804
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    move p3, v0

    .line 805
    :goto_2
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    array-length v4, v1

    add-int/2addr v4, v0

    if-ge p3, v4, :cond_b

    sub-int v4, p3, v0

    .line 806
    aget-byte v5, p2, p3

    aput-byte v5, v1, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_b
    new-array p3, v2, [B

    .line 807
    iput-object p3, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    .line 808
    iget-object p3, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p2, v0

    aput-byte v0, p3, p1

    .line 809
    aget-byte p1, p2, v1

    aput-byte p1, p3, v3

    return-void
.end method


# virtual methods
.method public Antenna()I
    .locals 1

    .line 719
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    return v0
.end method

.method public Data()[B
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    return-object v0
.end method

.method public Frequency()I
    .locals 1

    .line 711
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    return v0
.end method

.method public Lqi()I
    .locals 1

    .line 707
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    return v0
.end method

.method public Phase()I
    .locals 1

    .line 715
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    return v0
.end method

.method public Protocol()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    return v0
.end method

.method public ReadCount()I
    .locals 1

    .line 703
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    return v0
.end method

.method public TagEpc()[B
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    return-object v0
.end method

.method public Timestamp()I
    .locals 1

    .line 723
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    return v0
.end method
