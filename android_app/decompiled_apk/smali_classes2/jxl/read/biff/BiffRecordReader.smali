.class public Ljxl/read/biff/BiffRecordReader;
.super Ljava/lang/Object;
.source "BiffRecordReader.java"


# instance fields
.field private file:Ljxl/read/biff/File;

.field private record:Ljxl/read/biff/Record;


# direct methods
.method public constructor <init>(Ljxl/read/biff/File;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljxl/read/biff/BiffRecordReader;->file:Ljxl/read/biff/File;

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 2

    .line 77
    iget-object v0, p0, Ljxl/read/biff/BiffRecordReader;->file:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    iget-object v1, p0, Ljxl/read/biff/BiffRecordReader;->record:Ljxl/read/biff/Record;

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getLength()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 56
    iget-object v0, p0, Ljxl/read/biff/BiffRecordReader;->file:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljxl/read/biff/Record;
    .locals 1

    .line 66
    iget-object v0, p0, Ljxl/read/biff/BiffRecordReader;->file:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/BiffRecordReader;->record:Ljxl/read/biff/Record;

    .line 67
    iget-object v0, p0, Ljxl/read/biff/BiffRecordReader;->record:Ljxl/read/biff/Record;

    return-object v0
.end method
