.class public Ljxl/biff/AutoFilter;
.super Ljava/lang/Object;
.source "AutoFilter.java"


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilterRecord;

.field private autoFilterInfo:Ljxl/biff/AutoFilterInfoRecord;

.field private filterMode:Ljxl/biff/FilterModeRecord;


# direct methods
.method public constructor <init>(Ljxl/biff/FilterModeRecord;Ljxl/biff/AutoFilterInfoRecord;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljxl/biff/AutoFilter;->filterMode:Ljxl/biff/FilterModeRecord;

    .line 42
    iput-object p2, p0, Ljxl/biff/AutoFilter;->autoFilterInfo:Ljxl/biff/AutoFilterInfoRecord;

    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/AutoFilterRecord;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ljxl/biff/AutoFilter;->autoFilter:Ljxl/biff/AutoFilterRecord;

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Ljxl/biff/AutoFilter;->filterMode:Ljxl/biff/FilterModeRecord;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 63
    :cond_0
    iget-object v0, p0, Ljxl/biff/AutoFilter;->autoFilterInfo:Ljxl/biff/AutoFilterInfoRecord;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 68
    :cond_1
    iget-object v0, p0, Ljxl/biff/AutoFilter;->autoFilter:Ljxl/biff/AutoFilterRecord;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :cond_2
    return-void
.end method
