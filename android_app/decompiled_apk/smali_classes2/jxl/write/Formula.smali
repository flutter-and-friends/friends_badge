.class public Ljxl/write/Formula;
.super Ljxl/write/biff/FormulaRecord;
.source "Formula.java"

# interfaces
.implements Ljxl/write/WritableCell;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/FormulaRecord;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/FormulaRecord;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/Formula;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/FormulaRecord;-><init>(IILjxl/write/biff/FormulaRecord;)V

    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1

    .line 75
    new-instance v0, Ljxl/write/Formula;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Formula;-><init>(IILjxl/write/Formula;)V

    return-object v0
.end method
