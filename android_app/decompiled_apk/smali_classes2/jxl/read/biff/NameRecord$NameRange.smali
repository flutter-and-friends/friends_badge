.class public Ljxl/read/biff/NameRecord$NameRange;
.super Ljava/lang/Object;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/read/biff/NameRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameRange"
.end annotation


# instance fields
.field private columnFirst:I

.field private columnLast:I

.field private externalSheet:I

.field private rowFirst:I

.field private rowLast:I

.field private final synthetic this$0:Ljxl/read/biff/NameRecord;


# direct methods
.method constructor <init>(Ljxl/read/biff/NameRecord;IIIII)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/NameRecord$NameRange;->this$0:Ljxl/read/biff/NameRecord;

    .line 127
    iput p3, p0, Ljxl/read/biff/NameRecord$NameRange;->columnFirst:I

    .line 128
    iput p4, p0, Ljxl/read/biff/NameRecord$NameRange;->rowFirst:I

    .line 129
    iput p5, p0, Ljxl/read/biff/NameRecord$NameRange;->columnLast:I

    .line 130
    iput p6, p0, Ljxl/read/biff/NameRecord$NameRange;->rowLast:I

    .line 131
    iput p2, p0, Ljxl/read/biff/NameRecord$NameRange;->externalSheet:I

    return-void
.end method


# virtual methods
.method public getExternalSheet()I
    .locals 1

    .line 181
    iget v0, p0, Ljxl/read/biff/NameRecord$NameRange;->externalSheet:I

    return v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 141
    iget v0, p0, Ljxl/read/biff/NameRecord$NameRange;->columnFirst:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 151
    iget v0, p0, Ljxl/read/biff/NameRecord$NameRange;->rowFirst:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 161
    iget v0, p0, Ljxl/read/biff/NameRecord$NameRange;->columnLast:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 171
    iget v0, p0, Ljxl/read/biff/NameRecord$NameRange;->rowLast:I

    return v0
.end method
