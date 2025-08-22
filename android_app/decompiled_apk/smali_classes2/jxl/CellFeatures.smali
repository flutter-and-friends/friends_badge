.class public Ljxl/CellFeatures;
.super Ljxl/biff/BaseCellFeatures;
.source "CellFeatures.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljxl/CellFeatures;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljxl/biff/BaseCellFeatures;-><init>(Ljxl/biff/BaseCellFeatures;)V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-super {p0}, Ljxl/biff/BaseCellFeatures;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataValidationList()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-super {p0}, Ljxl/biff/BaseCellFeatures;->getDataValidationList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
