.class Ljxl/biff/drawing/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field private data:[B

.field private length:I

.field private pos:I

.field private type:Ljxl/biff/drawing/ChunkType;


# direct methods
.method public constructor <init>(IILjxl/biff/drawing/ChunkType;[B)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Ljxl/biff/drawing/Chunk;->pos:I

    .line 32
    iput p2, p0, Ljxl/biff/drawing/Chunk;->length:I

    .line 33
    iput-object p3, p0, Ljxl/biff/drawing/Chunk;->type:Ljxl/biff/drawing/ChunkType;

    .line 34
    iget p1, p0, Ljxl/biff/drawing/Chunk;->length:I

    new-array p2, p1, [B

    iput-object p2, p0, Ljxl/biff/drawing/Chunk;->data:[B

    .line 35
    iget p2, p0, Ljxl/biff/drawing/Chunk;->pos:I

    iget-object p3, p0, Ljxl/biff/drawing/Chunk;->data:[B

    const/4 v0, 0x0

    invoke-static {p4, p2, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 41
    iget-object v0, p0, Ljxl/biff/drawing/Chunk;->data:[B

    return-object v0
.end method
