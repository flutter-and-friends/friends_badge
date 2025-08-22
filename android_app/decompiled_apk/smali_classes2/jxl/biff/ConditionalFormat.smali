.class public Ljxl/biff/ConditionalFormat;
.super Ljava/lang/Object;
.source "ConditionalFormat.java"


# instance fields
.field private conditions:Ljxl/biff/ConditionalFormatRecord;

.field private range:Ljxl/biff/ConditionalFormatRangeRecord;


# direct methods
.method public constructor <init>(Ljxl/biff/ConditionalFormatRangeRecord;Ljxl/biff/ConditionalFormatRecord;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    .line 51
    iput-object p2, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljxl/biff/ConditionalFormatRecord;

    return-void
.end method


# virtual methods
.method public insertColumn(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->insertColumn(I)V

    return-void
.end method

.method public insertRow(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->insertRow(I)V

    return-void
.end method

.method public removeColumn(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->removeColumn(I)V

    return-void
.end method

.method public removeRow(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord;->removeRow(I)V

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->range:Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 107
    iget-object v0, p0, Ljxl/biff/ConditionalFormat;->conditions:Ljxl/biff/ConditionalFormatRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
