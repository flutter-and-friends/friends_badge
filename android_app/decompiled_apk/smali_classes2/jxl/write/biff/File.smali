.class public final Ljxl/write/biff/File;
.super Ljava/lang/Object;
.source "File.java"


# static fields
.field static synthetic class$jxl$write$biff$File:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private arrayGrowSize:I

.field private data:[B

.field private initialFileSize:I

.field private outputStream:Ljava/io/OutputStream;

.field private pos:I

.field readCompoundFile:Ljxl/read/biff/CompoundFile;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Ljxl/write/biff/File;->class$jxl$write$biff$File:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.File"

    invoke-static {v0}, Ljxl/write/biff/File;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/File;->class$jxl$write$biff$File:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/File;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Ljxl/WorkbookSettings;Ljxl/read/biff/CompoundFile;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p2}, Ljxl/WorkbookSettings;->getInitialFileSize()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/File;->initialFileSize:I

    .line 83
    invoke-virtual {p2}, Ljxl/WorkbookSettings;->getArrayGrowSize()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/File;->arrayGrowSize:I

    .line 84
    iget v0, p0, Ljxl/write/biff/File;->initialFileSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/File;->data:[B

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Ljxl/write/biff/File;->pos:I

    .line 86
    iput-object p1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    .line 87
    iput-object p2, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    .line 88
    iput-object p3, p0, Ljxl/write/biff/File;->readCompoundFile:Ljxl/read/biff/CompoundFile;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method close(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/biff/JxlWriteException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljxl/write/biff/CompoundFile;

    iget-object v1, p0, Ljxl/write/biff/File;->data:[B

    iget v2, p0, Ljxl/write/biff/File;->pos:I

    iget-object v3, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Ljxl/write/biff/File;->readCompoundFile:Ljxl/read/biff/CompoundFile;

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/write/biff/CompoundFile;-><init>([BILjava/io/OutputStream;Ljxl/read/biff/CompoundFile;)V

    .line 104
    invoke-virtual {v0}, Ljxl/write/biff/CompoundFile;->write()V

    .line 106
    iget-object v0, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Ljxl/write/biff/File;->data:[B

    .line 116
    iget-object p1, p0, Ljxl/write/biff/File;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {p1}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    return-void
.end method

.method getPos()I
    .locals 1

    .line 151
    iget v0, p0, Ljxl/write/biff/File;->pos:I

    return v0
.end method

.method setData([BI)V
    .locals 3

    .line 163
    iget-object v0, p0, Ljxl/write/biff/File;->data:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setOutputFile(Ljava/io/OutputStream;)V
    .locals 2

    .line 175
    iget-object v0, p0, Ljxl/write/biff/File;->data:[B

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Ljxl/write/biff/File;->logger:Lcommon/Logger;

    const-string v1, "Rewriting a workbook with non-empty data"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 180
    :cond_0
    iput-object p1, p0, Ljxl/write/biff/File;->outputStream:Ljava/io/OutputStream;

    .line 181
    iget p1, p0, Ljxl/write/biff/File;->initialFileSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Ljxl/write/biff/File;->data:[B

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Ljxl/write/biff/File;->pos:I

    return-void
.end method

.method public write(Ljxl/biff/ByteData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljxl/biff/ByteData;->getBytes()[B

    move-result-object p1

    .line 132
    :goto_0
    iget v0, p0, Ljxl/write/biff/File;->pos:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Ljxl/write/biff/File;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    .line 135
    array-length v1, v2

    iget v3, p0, Ljxl/write/biff/File;->arrayGrowSize:I

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 136
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iput-object v1, p0, Ljxl/write/biff/File;->data:[B

    goto :goto_0

    .line 140
    :cond_0
    array-length v1, p1

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v0, p0, Ljxl/write/biff/File;->pos:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/write/biff/File;->pos:I

    return-void
.end method
