.class public Ljxl/write/Boolean;
.super Ljxl/write/biff/BooleanRecord;
.source "Boolean.java"

# interfaces
.implements Ljxl/write/WritableCell;
.implements Ljxl/BooleanCell;


# direct methods
.method protected constructor <init>(IILjxl/write/Boolean;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/BooleanRecord;-><init>(IILjxl/write/biff/BooleanRecord;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/BooleanRecord;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZLjxl/format/CellFormat;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/BooleanRecord;-><init>(IIZLjxl/format/CellFormat;)V

    return-void
.end method

.method public constructor <init>(Ljxl/BooleanCell;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Ljxl/write/biff/BooleanRecord;-><init>(Ljxl/BooleanCell;)V

    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1

    .line 101
    new-instance v0, Ljxl/write/Boolean;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Boolean;-><init>(IILjxl/write/Boolean;)V

    return-object v0
.end method

.method public setValue(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Ljxl/write/biff/BooleanRecord;->setValue(Z)V

    return-void
.end method
