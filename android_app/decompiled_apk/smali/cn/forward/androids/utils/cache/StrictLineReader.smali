.class Lcn/forward/androids/utils/cache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-ltz p2, :cond_1

    .line 81
    sget-object v0, Lcn/forward/androids/utils/cache/DiskLruUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-object p1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 86
    iput-object p3, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 87
    new-array p1, p2, [B

    iput-object p1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x2000

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcn/forward/androids/utils/cache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic access$000(Lcn/forward/androids/utils/cache/StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 180
    iput v3, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    .line 181
    iput v0, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    .line 100
    iget-object v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    .line 168
    iget v0, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_7

    .line 122
    iget v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    iget v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    if-lt v1, v2, :cond_0

    .line 123
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/StrictLineReader;->fillBuf()V

    .line 126
    :cond_0
    iget v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    :goto_0
    iget v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 127
    iget-object v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_2

    .line 128
    iget v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 129
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    iget v5, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    iget v6, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 130
    iput v1, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    .line 131
    monitor-exit v0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_3
    new-instance v1, Lcn/forward/androids/utils/cache/StrictLineReader$1;

    iget v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    iget v4, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcn/forward/androids/utils/cache/StrictLineReader$1;-><init>(Lcn/forward/androids/utils/cache/StrictLineReader;I)V

    .line 149
    :cond_4
    iget-object v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    iget v4, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    iget v5, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    iget v6, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 151
    iput v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    .line 152
    invoke-direct {p0}, Lcn/forward/androids/utils/cache/StrictLineReader;->fillBuf()V

    .line 154
    iget v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    :goto_2
    iget v4, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->end:I

    if-eq v2, v4, :cond_4

    .line 155
    iget-object v4, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_6

    .line 156
    iget v3, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    if-eq v2, v3, :cond_5

    .line 157
    iget-object v3, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->buf:[B

    iget v4, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    iget v5, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 159
    iput v2, p0, Lcn/forward/androids/utils/cache/StrictLineReader;->pos:I

    .line 160
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 116
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
