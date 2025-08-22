.class public Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VSWRReturnloss_DATA"
.end annotation


# instance fields
.field ants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lifre:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field power:I

.field regb:Lcom/uhf/api/cls/R2000_calibration$Region;

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;I[I[ILcom/uhf/api/cls/R2000_calibration$Region;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    .line 411
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    .line 413
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-static {p3}, Lcom/uhf/api/cls/R2000_calibration;->intsTolistints([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    invoke-static {p4}, Lcom/uhf/api/cls/R2000_calibration;->intsTolistints([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    iput p2, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    .line 418
    iput-object p5, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[B)V
    .locals 3

    .line 426
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    .line 428
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    .line 429
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lires:Ljava/util/List;

    const/4 p1, 0x0

    .line 430
    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    .line 431
    invoke-static {}, Lcom/uhf/api/cls/R2000_calibration$Region;->values()[Lcom/uhf/api/cls/R2000_calibration$Region;

    move-result-object p1

    const/4 v0, 0x3

    aget-byte v0, p2, v0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 p1, 0x5

    .line 433
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    aget-byte v1, p2, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lires:Ljava/util/List;

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Ants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    return-object v0
.end method

.method public LiFre()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    return-object v0
.end method

.method public Lires()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lires:Ljava/util/List;

    return-object v0
.end method

.method public Power()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    return v0
.end method

.method public Regb()Lcom/uhf/api/cls/R2000_calibration$Region;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    return-object v0
.end method

.method public ToByteData()[B
    .locals 5

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 446
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    invoke-static {v4}, Lcom/uhf/api/cls/R2000_calibration$Region;->access$000(Lcom/uhf/api/cls/R2000_calibration$Region;)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 450
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :goto_0
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 456
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_1
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
