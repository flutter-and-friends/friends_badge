.class public Ljxl/write/DateTime;
.super Ljxl/write/biff/DateRecord;
.source "DateTime.java"

# interfaces
.implements Ljxl/write/WritableCell;
.implements Ljxl/DateCell;


# static fields
.field public static final GMT:Ljxl/write/biff/DateRecord$GMTDate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljxl/write/biff/DateRecord$GMTDate;

    invoke-direct {v0}, Ljxl/write/biff/DateRecord$GMTDate;-><init>()V

    sput-object v0, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0

    .line 99
    invoke-direct/range {p0 .. p5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V
    .locals 0

    .line 116
    invoke-direct/range {p0 .. p5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/DateTime;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/DateRecord;-><init>(IILjxl/write/biff/DateRecord;)V

    return-void
.end method

.method public constructor <init>(Ljxl/DateCell;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;-><init>(Ljxl/DateCell;)V

    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1

    .line 173
    new-instance v0, Ljxl/write/DateTime;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/DateTime;-><init>(IILjxl/write/DateTime;)V

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Ljxl/write/biff/DateRecord;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Ljxl/write/biff/DateRecord;->setDate(Ljava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V

    return-void
.end method
