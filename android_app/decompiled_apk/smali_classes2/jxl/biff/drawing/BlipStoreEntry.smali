.class Ljxl/biff/drawing/BlipStoreEntry;
.super Ljxl/biff/drawing/EscherAtom;
.source "BlipStoreEntry.java"


# static fields
.field private static final IMAGE_DATA_OFFSET:I = 0x3d

.field static synthetic class$jxl$biff$drawing$BlipStoreEntry:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private imageDataLength:I

.field private referenceCount:I

.field private type:Ljxl/biff/drawing/BlipType;

.field private write:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Ljxl/biff/drawing/BlipStoreEntry;->class$jxl$biff$drawing$BlipStoreEntry:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.BlipStoreEntry"

    invoke-static {v0}, Ljxl/biff/drawing/BlipStoreEntry;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/BlipStoreEntry;->class$jxl$biff$drawing$BlipStoreEntry:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/BlipStoreEntry;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/Drawing;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 94
    sget-object v0, Ljxl/biff/drawing/BlipType;->PNG:Ljxl/biff/drawing/BlipType;

    iput-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/BlipStoreEntry;->setVersion(I)V

    .line 96
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    invoke-virtual {v0}, Ljxl/biff/drawing/BlipType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/BlipStoreEntry;->setInstance(I)V

    .line 98
    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getImageBytes()[B

    move-result-object v0

    .line 99
    array-length v1, v0

    iput v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    .line 100
    iget v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    add-int/lit8 v2, v1, 0x3d

    new-array v2, v2, [B

    iput-object v2, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    .line 101
    iget-object v2, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getReferenceCount()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->write:Z

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 4

    .line 77
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 78
    invoke-virtual {p0}, Ljxl/biff/drawing/BlipStoreEntry;->getInstance()I

    move-result p1

    invoke-static {p1}, Ljxl/biff/drawing/BlipType;->getType(I)Ljxl/biff/drawing/BlipType;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->write:Z

    .line 80
    invoke-virtual {p0}, Ljxl/biff/drawing/BlipStoreEntry;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x18

    .line 81
    aget-byte v0, p1, v0

    const/16 v1, 0x19

    aget-byte v1, p1, v1

    const/16 v2, 0x1a

    aget-byte v2, p1, v2

    const/16 v3, 0x1b

    aget-byte p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 37
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
.method dereference()V
    .locals 2

    .line 187
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    .line 188
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method public getBlipType()Ljxl/biff/drawing/BlipType;
    .locals 1

    .line 113
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    return-object v0
.end method

.method public getData()[B
    .locals 5

    .line 123
    iget-boolean v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->write:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    invoke-virtual {v1}, Ljxl/biff/drawing/BlipType;->getValue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 131
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    invoke-virtual {v1}, Ljxl/biff/drawing/BlipType;->getValue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 140
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v4, 0x14

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 143
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v4, 0x18

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 146
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v1, 0x1c

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 149
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    .line 152
    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v4, 0x7e

    .line 155
    aput-byte v4, v0, v1

    const/16 v1, 0x23

    .line 156
    aput-byte v3, v0, v1

    const/16 v1, 0x24

    .line 159
    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6e

    .line 160
    aput-byte v2, v0, v1

    const v1, 0xf01e

    const/16 v2, 0x26

    .line 163
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 167
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/drawing/BlipStoreEntry;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    .line 178
    :goto_0
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/BlipStoreEntry;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method getImageData()[B
    .locals 5

    .line 208
    invoke-virtual {p0}, Ljxl/biff/drawing/BlipStoreEntry;->getBytes()[B

    move-result-object v0

    .line 209
    array-length v1, v0

    const/16 v2, 0x3d

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 210
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method getReferenceCount()I
    .locals 1

    .line 198
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    return v0
.end method
