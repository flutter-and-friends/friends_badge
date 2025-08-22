.class public Ljxl/write/Label;
.super Ljxl/write/biff/LabelRecord;
.source "Label.java"

# interfaces
.implements Ljxl/write/WritableCell;
.implements Ljxl/LabelCell;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/LabelRecord;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/LabelRecord;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/Label;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/LabelRecord;-><init>(IILjxl/write/biff/LabelRecord;)V

    return-void
.end method

.method public constructor <init>(Ljxl/LabelCell;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Ljxl/write/biff/LabelRecord;-><init>(Ljxl/LabelCell;)V

    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1

    .line 101
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Label;-><init>(IILjxl/write/Label;)V

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Ljxl/write/biff/LabelRecord;->setString(Ljava/lang/String;)V

    return-void
.end method
