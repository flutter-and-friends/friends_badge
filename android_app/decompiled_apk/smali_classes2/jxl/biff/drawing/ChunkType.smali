.class Ljxl/biff/drawing/ChunkType;
.super Ljava/lang/Object;
.source "ChunkType.java"


# static fields
.field public static IEND:Ljxl/biff/drawing/ChunkType;

.field public static IHDR:Ljxl/biff/drawing/ChunkType;

.field public static PHYS:Ljxl/biff/drawing/ChunkType;

.field public static UNKNOWN:Ljxl/biff/drawing/ChunkType;

.field private static chunkTypes:[Ljxl/biff/drawing/ChunkType;


# instance fields
.field private id:[B

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/drawing/ChunkType;

    .line 32
    sput-object v0, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    .line 70
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v2, 0x49

    const/16 v3, 0x48

    const/16 v4, 0x44

    const/16 v5, 0x52

    const-string v6, "IHDR"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->IHDR:Ljxl/biff/drawing/ChunkType;

    .line 71
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v8, 0x49

    const/16 v9, 0x45

    const/16 v10, 0x4e

    const/16 v11, 0x44

    const-string v12, "IEND"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->IEND:Ljxl/biff/drawing/ChunkType;

    .line 72
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v2, 0x70

    const/16 v4, 0x59

    const/16 v5, 0x73

    const-string v6, "pHYs"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->PHYS:Ljxl/biff/drawing/ChunkType;

    .line 73
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    const-string v12, "UNKNOWN"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->UNKNOWN:Ljxl/biff/drawing/ChunkType;

    return-void
.end method

.method private constructor <init>(IIIILjava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p3, 0x2

    aput-byte p1, v0, p3

    int-to-byte p1, p4

    const/4 p3, 0x3

    aput-byte p1, v0, p3

    .line 36
    iput-object v0, p0, Ljxl/biff/drawing/ChunkType;->id:[B

    .line 37
    iput-object p5, p0, Ljxl/biff/drawing/ChunkType;->name:Ljava/lang/String;

    .line 39
    sget-object p1, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    array-length p3, p1

    add-int/2addr p3, p2

    new-array p2, p3, [Ljxl/biff/drawing/ChunkType;

    .line 40
    array-length p3, p1

    invoke-static {p1, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    sget-object p1, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    array-length p1, p1

    aput-object p0, p2, p1

    .line 42
    sput-object p2, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    return-void
.end method

.method public static getChunkType(BBBB)Ljxl/biff/drawing/ChunkType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte p1, v0, p0

    const/4 p1, 0x2

    aput-byte p2, v0, p1

    const/4 p1, 0x3

    aput-byte p3, v0, p1

    .line 55
    sget-object p1, Ljxl/biff/drawing/ChunkType;->UNKNOWN:Ljxl/biff/drawing/ChunkType;

    move-object p2, p1

    const/4 p1, 0x0

    .line 57
    :goto_0
    sget-object p3, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    array-length v2, p3

    if-ge v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 59
    aget-object p3, p3, v1

    iget-object p3, p3, Ljxl/biff/drawing/ChunkType;->id:[B

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 61
    sget-object p1, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    aget-object p1, p1, v1

    move-object p2, p1

    const/4 p1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Ljxl/biff/drawing/ChunkType;->name:Ljava/lang/String;

    return-object v0
.end method
