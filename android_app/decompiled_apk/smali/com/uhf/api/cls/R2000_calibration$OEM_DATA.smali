.class public Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OEM_DATA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;
    }
.end annotation


# instance fields
.field La:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;",
            ">;"
        }
    .end annotation
.end field

.field Lad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;S)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    .line 263
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;SI)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    .line 255
    new-instance p1, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-direct {p1, p0}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;-><init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V

    .line 256
    iput-short p2, p1, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    .line 257
    iput p3, p1, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    .line 258
    iget-object p2, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[B)V
    .locals 9

    .line 267
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    array-length p1, p2

    div-int/lit8 p1, p1, 0x6

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v3, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 277
    invoke-static {p2, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 280
    invoke-static {p2, v2, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    .line 283
    new-instance v5, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-direct {v5, p0}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;-><init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V

    .line 284
    aget-byte v7, v4, v0

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v4, v7

    int-to-short v4, v4

    iput-short v4, v5, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    .line 287
    aget-byte v4, v6, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v7, v6, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    iput v3, v5, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    .line 292
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public AddTo(SI)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-direct {v0, p0}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;-><init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V

    .line 302
    iput-short p1, v0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    .line 303
    iput p2, v0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    .line 304
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    iget-object p2, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 308
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public GetAddr()[Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    return-object v0
.end method

.method public ToByteData()[B
    .locals 4

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    iget-short v3, v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    invoke-static {v3}, Lcom/uhf/api/cls/R2000_calibration;->shortTolistbytes(S)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    iget v3, v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    invoke-static {v3}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 328
    :goto_1
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->shortTolistbytes(S)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    :cond_1
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
