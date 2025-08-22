.class Ljxl/write/biff/NameRecord$NameRange;
.super Ljava/lang/Object;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/NameRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NameRange"
.end annotation


# instance fields
.field private columnFirst:I

.field private columnLast:I

.field private externalSheet:I

.field private rowFirst:I

.field private rowLast:I

.field private final synthetic this$0:Ljxl/write/biff/NameRecord;


# direct methods
.method constructor <init>(Ljxl/write/biff/NameRecord;IIIII)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/NameRecord$NameRange;->this$0:Ljxl/write/biff/NameRecord;

    .line 89
    iput p5, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    .line 90
    iput p3, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    .line 91
    iput p6, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    .line 92
    iput p4, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    .line 93
    iput p2, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    return-void
.end method

.method constructor <init>(Ljxl/write/biff/NameRecord;Ljxl/read/biff/NameRecord$NameRange;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/NameRecord$NameRange;->this$0:Ljxl/write/biff/NameRecord;

    .line 73
    invoke-virtual {p2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    .line 74
    invoke-virtual {p2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    .line 75
    invoke-virtual {p2}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    .line 76
    invoke-virtual {p2}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    .line 77
    invoke-virtual {p2}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    return-void
.end method


# virtual methods
.method getData()[B
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 107
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 110
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 113
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 116
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 119
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method getExternalSheet()I
    .locals 1

    .line 100
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    return v0
.end method

.method getFirstColumn()I
    .locals 1

    .line 96
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    return v0
.end method

.method getFirstRow()I
    .locals 1

    .line 97
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    return v0
.end method

.method getLastColumn()I
    .locals 1

    .line 98
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    return v0
.end method

.method getLastRow()I
    .locals 1

    .line 99
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    return v0
.end method
