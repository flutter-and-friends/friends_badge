.class Ljxl/biff/formula/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# instance fields
.field private final YYINITIAL:I

.field private final YYSTRING:I

.field private final YY_BOL:I

.field private final YY_BUFFER_SIZE:I

.field private final YY_END:I

.field private final YY_EOF:I

.field private final YY_E_INTERNAL:I

.field private final YY_E_MATCH:I

.field private final YY_F:I

.field private final YY_NOT_ACCEPT:I

.field private final YY_NO_ANCHOR:I

.field private final YY_NO_STATE:I

.field private final YY_START:I

.field private emptyString:Z

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private yy_acpt:[I

.field private yy_at_bol:Z

.field private yy_buffer:[C

.field private yy_buffer_end:I

.field private yy_buffer_index:I

.field private yy_buffer_read:I

.field private yy_buffer_start:I

.field private yy_cmap:[I

.field private yy_eof_done:Z

.field private yy_error_string:[Ljava/lang/String;

.field private yy_last_was_cr:Z

.field private yy_lexical_state:I

.field private yy_nxt:[[I

.field private yy_reader:Ljava/io/BufferedReader;

.field private yy_rmap:[I

.field private final yy_state_dtrans:[I

.field private yychar:I

.field private yyline:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 28
    iput v0, p0, Ljxl/biff/formula/Yylex;->YY_BUFFER_SIZE:I

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Ljxl/biff/formula/Yylex;->YY_F:I

    .line 30
    iput v1, p0, Ljxl/biff/formula/Yylex;->YY_NO_STATE:I

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Ljxl/biff/formula/Yylex;->YY_NOT_ACCEPT:I

    const/4 v2, 0x1

    .line 32
    iput v2, p0, Ljxl/biff/formula/Yylex;->YY_START:I

    const/4 v3, 0x2

    .line 33
    iput v3, p0, Ljxl/biff/formula/Yylex;->YY_END:I

    const/4 v4, 0x4

    .line 34
    iput v4, p0, Ljxl/biff/formula/Yylex;->YY_NO_ANCHOR:I

    const/high16 v4, 0x10000

    .line 35
    iput v4, p0, Ljxl/biff/formula/Yylex;->YY_BOL:I

    const v4, 0x10001

    .line 36
    iput v4, p0, Ljxl/biff/formula/Yylex;->YY_EOF:I

    .line 91
    iput-boolean v1, p0, Ljxl/biff/formula/Yylex;->yy_eof_done:Z

    .line 92
    iput v2, p0, Ljxl/biff/formula/Yylex;->YYSTRING:I

    .line 93
    iput v1, p0, Ljxl/biff/formula/Yylex;->YYINITIAL:I

    new-array v3, v3, [I

    .line 94
    fill-array-data v3, :array_0

    iput-object v3, p0, Ljxl/biff/formula/Yylex;->yy_state_dtrans:[I

    .line 154
    iput-boolean v1, p0, Ljxl/biff/formula/Yylex;->yy_last_was_cr:Z

    .line 198
    iput v1, p0, Ljxl/biff/formula/Yylex;->YY_E_INTERNAL:I

    .line 199
    iput v2, p0, Ljxl/biff/formula/Yylex;->YY_E_MATCH:I

    const-string v3, "Error: Internal error.\n"

    const-string v4, "Error: Unmatched input.\n"

    .line 200
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/formula/Yylex;->yy_error_string:[Ljava/lang/String;

    const/16 v3, 0x61

    new-array v4, v3, [I

    .line 248
    fill-array-data v4, :array_1

    iput-object v4, p0, Ljxl/biff/formula/Yylex;->yy_acpt:[I

    const v4, 0x10002

    const-string v5, "14:8,26:3,14:21,26,15,37,29,11,14:2,13,27,28,3,1,8,2,10,4,34,9:9,16,14,7,6,5,36,14,22,12:2,31,20,21,12:2,32,12:2,23,35,30,12:3,18,24,17,19,33,12:4,14:4,25,14,12:26,14:65413,0:2"

    .line 347
    invoke-direct {p0, v2, v4, v5}, Ljxl/biff/formula/Yylex;->unpackFromString(IILjava/lang/String;)[[I

    move-result-object v4

    aget-object v4, v4, v1

    iput-object v4, p0, Ljxl/biff/formula/Yylex;->yy_cmap:[I

    const-string v4, "0,1:5,2,1,3,1,4,5,1:8,6,1,7,8,9,10,11,12,10,1,13,14,15,1,16,17,18,1:2,19,20,10,21,22,7,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,9,45,46,47,48,49,50,51,11,52,53,54,55,56,57,58,59,60,61,62,14,63,64,65,66,67,68,69,70,71"

    .line 352
    invoke-direct {p0, v2, v3, v4}, Ljxl/biff/formula/Yylex;->unpackFromString(IILjava/lang/String;)[[I

    move-result-object v3

    aget-object v3, v3, v1

    iput-object v3, p0, Ljxl/biff/formula/Yylex;->yy_rmap:[I

    const/16 v3, 0x48

    const/16 v4, 0x26

    const-string v5, "1,2,3,4,5,6,7,8,9,10,-1,34,11,40,-1:2,12,95,11:3,96,11:3,-1,13,14,15,42,11:4,10,11,-1,16,-1:44,17,-1:36,18,19,-1:40,10,44,-1:23,10,-1:12,20,-1,47,89,-1:2,48,49,89:8,35,-1,21,-1:2,89:4,20,89,-1:11,20,-1:2,35,-1:3,91,35:9,-1:4,35:4,20,35,-1:11,22,-1:24,22,-1:15,37,-1:4,37:8,-1:5,37:4,-1,37,-1:11,24,-1:24,24,-1:12,35,-1:2,41,-1:2,48,-1,41:8,35,-1,21,-1:2,41:4,35,41,-1:11,26,-1:24,26,-1:12,27,-1:6,83,-1:17,27,-1:15,38,-1:4,38:8,-1:5,38:4,-1,38,-1:11,31,-1:24,31,-1:3,1,39:36,33,-1:12,46,-1:4,46:8,-1:5,46:4,-1,46,-1:11,35,-1:2,35,-1:4,35:9,-1:4,35:6,-1:11,36,-1:6,91,-1:17,36,-1:4,39:36,-1:2,40:12,50,40:24,-1:18,51,-1:11,52,53,-1,54,-1:13,35,-1:2,41,-1:2,48,-1,41:3,25,41:4,35,-1,21,-1:2,41:4,35,41,-1:11,35,-1:2,41,-1:2,48,-1,41:3,28,41:4,35,-1,21,-1:2,41:4,35,41,-1:11,36,-1,47,55,-1:3,49,55:8,-1:5,55:4,36,55,-1:11,36,-1:24,36,-1:14,56,57,-1:4,57:8,-1:5,57:4,-1,57,-1:13,58,23,-1:4,23:8,-1:5,23:4,-1,23,-1:17,59,-1:42,60,-1:36,61,-1:2,62,-1:47,63,-1:27,64,-1:24,36,-1,47,-1:4,49,-1:17,36,-1:15,57,-1:4,57:8,-1:5,57:4,-1,57,-1:11,24,-1,67,68,-1:4,68:8,-1:5,68:4,24,68,-1:14,23,-1:4,23:8,-1:5,23:4,-1,23,-1:13,69,70,-1:4,70:8,-1:5,70:4,-1,70,-1:23,71,-1:39,92,-1:11,71,-1:37,72,-1:35,73,-1:27,74,-1:26,66,-1:4,66:8,-1:5,66:4,-1,66,-1:11,26,-1,75,76,-1:4,76:8,-1:5,76:4,26,76,-1:11,24,-1,67,-1:22,24,-1:15,70,-1:4,70:8,-1:5,70:4,-1,70,-1:11,27,-1,77,78,-1:3,79,78:8,-1:5,78:4,27,78,-1:17,29,-1:42,80,-1:21,81,-1:52,82,-1:27,26,-1,75,-1:22,26,-1:12,27,-1:24,27,-1:12,27,-1,77,-1:4,79,-1:17,27,-1:14,84,30,-1:4,30:8,-1:5,30:4,-1,30,-1:38,29,-1:35,71,-1:23,71,-1:28,85,86,-1:4,86:8,-1:5,86:4,-1,86,-1:14,30,-1:4,30:8,-1:5,30:4,-1,30,-1:14,86,-1:4,86:8,-1:5,86:4,-1,86,-1:11,31,-1,87,88,-1:4,88:8,-1:5,88:4,31,88,-1:11,31,-1,87,-1:22,31,-1:12,20,-1,47,41,-1:2,48,49,41:8,35,-1,21,-1:2,41:4,20,41,-1:11,35,-1:2,41,-1:2,48,-1,41:7,45,35,-1,21,-1:2,41:4,35,41,-1:13,65,66,-1:4,66:8,-1:5,66:4,-1,66,-1:25,71,-1:23,20,-1,47,41,-1:2,48,49,41:2,43,41:5,35,-1,21,-1:2,41:4,20,41,-1:11,20,-1,47,41,-1:2,48,49,41:6,90,41,35,-1,21,-1:2,41:4,20,41,-1:11,20,-1,47,89,-1:2,48,49,89,93,89:6,35,-1,21,-1:2,89:4,20,89,-1:11,20,-1,47,89,-1:2,48,49,89:5,94,89:2,35,-1,21,-1:2,89:4,20,89,-1:2"

    .line 358
    invoke-direct {p0, v3, v4, v5}, Ljxl/biff/formula/Yylex;->unpackFromString(IILjava/lang/String;)[[I

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/formula/Yylex;->yy_nxt:[[I

    new-array v0, v0, [C

    .line 80
    iput-object v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    .line 81
    iput v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    .line 82
    iput v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    .line 83
    iput v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    .line 84
    iput v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    .line 85
    iput v1, p0, Ljxl/biff/formula/Yylex;->yychar:I

    .line 86
    iput v1, p0, Ljxl/biff/formula/Yylex;->yyline:I

    .line 87
    iput-boolean v2, p0, Ljxl/biff/formula/Yylex;->yy_at_bol:Z

    .line 88
    iput v1, p0, Ljxl/biff/formula/Yylex;->yy_lexical_state:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x0
        0x4
        0x0
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;-><init>()V

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Ljxl/biff/formula/Yylex;->yy_reader:Ljava/io/BufferedReader;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Error: Bad input stream initializer."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Ljxl/biff/formula/Yylex;->yy_reader:Ljava/io/BufferedReader;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Error: Bad input stream initializer."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unpackFromString(IILjava/lang/String;)[[I
    .locals 9

    .line 220
    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move-object v3, p3

    const/4 p3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p3, p1, :cond_4

    move v5, v4

    move-object v4, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_3

    if-eqz v3, :cond_0

    .line 224
    aget-object v6, v0, p3

    aput v5, v6, v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_0
    const/16 v6, 0x2c

    .line 228
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    move-object v8, v4

    goto :goto_2

    .line 229
    :cond_1
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 231
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3a

    .line 232
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 234
    aget-object v6, v0, p3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v6, 0x1

    .line 237
    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 240
    invoke-virtual {v8, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 242
    aget-object v6, v0, p3

    aput v5, v6, v2

    add-int/2addr v3, v7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    move v2, v3

    move-object v3, v4

    move v4, v5

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private yy_advance()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    aget-char v0, v1, v0

    return v0

    .line 111
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    const v1, 0x10001

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 114
    :goto_0
    iget v5, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    if-ge v0, v5, :cond_1

    .line 115
    iget-object v5, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    aget-char v6, v5, v0

    aput-char v6, v5, v4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    iget v5, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    sub-int/2addr v0, v5

    iput v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    .line 120
    iput v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    .line 121
    iput v4, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    .line 122
    iput v4, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    .line 123
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_reader:Ljava/io/BufferedReader;

    iget-object v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    iget v4, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    if-ne v2, v0, :cond_2

    return v1

    .line 129
    :cond_2
    iget v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    add-int/2addr v3, v0

    iput v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    .line 132
    :cond_3
    :goto_1
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    iget v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    if-lt v0, v3, :cond_6

    .line 133
    iget-object v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    array-length v4, v3

    if-lt v0, v4, :cond_4

    .line 134
    invoke-direct {p0, v3}, Ljxl/biff/formula/Yylex;->yy_double([C)[C

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    .line 136
    :cond_4
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_reader:Ljava/io/BufferedReader;

    iget-object v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    iget v4, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    if-ne v2, v0, :cond_5

    return v1

    .line 142
    :cond_5
    iget v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    add-int/2addr v3, v0

    iput v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_read:I

    goto :goto_1

    .line 144
    :cond_6
    iget-object v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    aget-char v0, v1, v0

    return v0
.end method

.method private yy_double([C)[C
    .locals 3

    .line 192
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 193
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 194
    aget-char v2, p1, v1

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private yy_error(IZ)V
    .locals 2

    .line 205
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Ljxl/biff/formula/Yylex;->yy_error_string:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 206
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    if-nez p2, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Fatal Error.\n"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private yy_mark_end()V
    .locals 1

    .line 171
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    iput v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    return-void
.end method

.method private yy_mark_start()V
    .locals 4

    .line 157
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    :goto_0
    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    if-ge v0, v1, :cond_2

    const/16 v1, 0xa

    .line 158
    iget-object v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    aget-char v2, v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Ljxl/biff/formula/Yylex;->yy_last_was_cr:Z

    if-nez v1, :cond_0

    .line 159
    iget v1, p0, Ljxl/biff/formula/Yylex;->yyline:I

    add-int/2addr v1, v3

    iput v1, p0, Ljxl/biff/formula/Yylex;->yyline:I

    :cond_0
    const/16 v1, 0xd

    .line 161
    iget-object v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 162
    iget v1, p0, Ljxl/biff/formula/Yylex;->yyline:I

    add-int/2addr v1, v3

    iput v1, p0, Ljxl/biff/formula/Yylex;->yyline:I

    .line 163
    iput-boolean v3, p0, Ljxl/biff/formula/Yylex;->yy_last_was_cr:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Ljxl/biff/formula/Yylex;->yy_last_was_cr:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iget v0, p0, Ljxl/biff/formula/Yylex;->yychar:I

    add-int/2addr v0, v1

    iget v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/formula/Yylex;->yychar:I

    .line 168
    iput v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    return-void
.end method

.method private yy_move_end()V
    .locals 4

    .line 147
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    if-le v0, v1, :cond_0

    const/16 v1, 0xa

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 149
    iput v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    .line 150
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    if-le v0, v1, :cond_1

    const/16 v1, 0xd

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 152
    iput v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    :cond_1
    return-void
.end method

.method private yy_to_mark()V
    .locals 5

    .line 174
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    iput v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_index:I

    .line 175
    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    const/16 v1, 0xd

    iget-object v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v3, v4

    if-eq v1, v4, :cond_1

    const/16 v1, 0xa

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v3, v4

    if-eq v1, v4, :cond_1

    const/16 v1, 0x7ec

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v3, v4

    if-eq v1, v4, :cond_1

    const/16 v1, 0x7ed

    sub-int/2addr v0, v2

    aget-char v0, v3, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iput-boolean v2, p0, Ljxl/biff/formula/Yylex;->yy_at_bol:Z

    return-void
.end method

.method private yybegin(I)V
    .locals 0

    .line 99
    iput p1, p0, Ljxl/biff/formula/Yylex;->yy_lexical_state:I

    return-void
.end method

.method private yylength()I
    .locals 2

    .line 187
    iget v0, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private yytext()Ljava/lang/String;
    .locals 4

    .line 182
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljxl/biff/formula/Yylex;->yy_buffer:[C

    iget v2, p0, Ljxl/biff/formula/Yylex;->yy_buffer_start:I

    iget v3, p0, Ljxl/biff/formula/Yylex;->yy_buffer_end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method getPos()I
    .locals 1

    .line 38
    iget v0, p0, Ljxl/biff/formula/Yylex;->yychar:I

    return v0
.end method

.method setExternalSheet(Ljxl/biff/formula/ExternalSheet;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    return-void
.end method

.method setNameTable(Ljxl/biff/WorkbookMethods;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    return-void
.end method

.method public yylex()Ljxl/biff/formula/ParseItem;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_state_dtrans:[I

    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_lexical_state:I

    aget v0, v0, v1

    .line 402
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_mark_start()V

    .line 403
    iget-object v1, p0, Ljxl/biff/formula/Yylex;->yy_acpt:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 406
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_mark_end()V

    move v1, v0

    move v5, v1

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_1
    const/4 v0, 0x1

    const/4 v5, -0x1

    :goto_2
    if-eqz v0, :cond_1

    .line 409
    iget-boolean v6, p0, Ljxl/biff/formula/Yylex;->yy_at_bol:Z

    if-eqz v6, :cond_1

    const/high16 v6, 0x10000

    goto :goto_3

    .line 410
    :cond_1
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_advance()I

    move-result v6

    .line 412
    :goto_3
    iget-object v7, p0, Ljxl/biff/formula/Yylex;->yy_nxt:[[I

    iget-object v8, p0, Ljxl/biff/formula/Yylex;->yy_rmap:[I

    aget v1, v8, v1

    aget-object v1, v7, v1

    iget-object v7, p0, Ljxl/biff/formula/Yylex;->yy_cmap:[I

    aget v7, v7, v6

    aget v1, v1, v7

    const v7, 0x10001

    if-ne v7, v6, :cond_2

    if-ne v3, v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    if-eq v2, v1, :cond_4

    .line 419
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_acpt:[I

    aget v0, v0, v1

    if-eqz v0, :cond_3

    .line 422
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_mark_end()V

    move v5, v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    if-eq v2, v5, :cond_d

    .line 430
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_acpt:[I

    aget v0, v0, v5

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 432
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_move_end()V

    .line 434
    :cond_5
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_to_mark()V

    const/16 v0, 0x29

    if-eq v5, v0, :cond_c

    const/16 v0, 0x2b

    if-eq v5, v0, :cond_b

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_a

    const/16 v0, 0x59

    if-eq v5, v0, :cond_9

    const/16 v0, 0x5a

    if-eq v5, v0, :cond_8

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    .line 625
    invoke-direct {p0, v4, v4}, Ljxl/biff/formula/Yylex;->yy_error(IZ)V

    goto/16 :goto_4

    .line 621
    :pswitch_0
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 617
    :pswitch_1
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 613
    :pswitch_2
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 609
    :pswitch_3
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 585
    :pswitch_4
    iput-boolean v4, p0, Ljxl/biff/formula/Yylex;->emptyString:Z

    new-instance v0, Ljxl/biff/formula/StringValue;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 581
    :pswitch_5
    new-instance v0, Ljxl/biff/formula/ColumnRange3d;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/ColumnRange3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v0

    .line 577
    :pswitch_6
    new-instance v0, Ljxl/biff/formula/ColumnRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/ColumnRange;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 573
    :pswitch_7
    new-instance v0, Ljxl/biff/formula/CellReference;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/CellReference;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 569
    :pswitch_8
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 565
    :pswitch_9
    invoke-direct {p0, v4}, Ljxl/biff/formula/Yylex;->yybegin(I)V

    iget-boolean v0, p0, Ljxl/biff/formula/Yylex;->emptyString:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljxl/biff/formula/StringValue;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljxl/biff/formula/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 561
    :pswitch_a
    iput-boolean v4, p0, Ljxl/biff/formula/Yylex;->emptyString:Z

    new-instance v0, Ljxl/biff/formula/StringValue;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 557
    :pswitch_b
    new-instance v0, Ljxl/biff/formula/Area3d;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/Area3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v0

    .line 553
    :pswitch_c
    new-instance v0, Ljxl/biff/formula/ColumnRange3d;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/ColumnRange3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v0

    .line 549
    :pswitch_d
    new-instance v0, Ljxl/biff/formula/ErrorConstant;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/ErrorConstant;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 545
    :pswitch_e
    new-instance v0, Ljxl/biff/formula/BooleanValue;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/BooleanValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 541
    :pswitch_f
    new-instance v0, Ljxl/biff/formula/CellReference3d;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/CellReference3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v0

    .line 537
    :pswitch_10
    new-instance v0, Ljxl/biff/formula/Area;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/Area;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 533
    :pswitch_11
    new-instance v0, Ljxl/biff/formula/BooleanValue;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/BooleanValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 529
    :pswitch_12
    new-instance v0, Ljxl/biff/formula/CellReference3d;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/CellReference3d;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V

    return-object v0

    .line 525
    :pswitch_13
    new-instance v0, Ljxl/biff/formula/ColumnRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/ColumnRange;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 521
    :pswitch_14
    new-instance v0, Ljxl/biff/formula/DoubleValue;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/DoubleValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 517
    :pswitch_15
    new-instance v0, Ljxl/biff/formula/StringFunction;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/StringFunction;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 513
    :pswitch_16
    new-instance v0, Ljxl/biff/formula/CellReference;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/CellReference;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 509
    :pswitch_17
    new-instance v0, Ljxl/biff/formula/LessEqual;

    invoke-direct {v0}, Ljxl/biff/formula/LessEqual;-><init>()V

    return-object v0

    .line 505
    :pswitch_18
    new-instance v0, Ljxl/biff/formula/NotEqual;

    invoke-direct {v0}, Ljxl/biff/formula/NotEqual;-><init>()V

    return-object v0

    .line 501
    :pswitch_19
    new-instance v0, Ljxl/biff/formula/GreaterEqual;

    invoke-direct {v0}, Ljxl/biff/formula/GreaterEqual;-><init>()V

    return-object v0

    .line 497
    :pswitch_1a
    iput-boolean v3, p0, Ljxl/biff/formula/Yylex;->emptyString:Z

    invoke-direct {p0, v3}, Ljxl/biff/formula/Yylex;->yybegin(I)V

    goto :goto_4

    .line 493
    :pswitch_1b
    new-instance v0, Ljxl/biff/formula/CloseParentheses;

    invoke-direct {v0}, Ljxl/biff/formula/CloseParentheses;-><init>()V

    return-object v0

    .line 489
    :pswitch_1c
    new-instance v0, Ljxl/biff/formula/OpenParentheses;

    invoke-direct {v0}, Ljxl/biff/formula/OpenParentheses;-><init>()V

    return-object v0

    .line 481
    :pswitch_1d
    new-instance v0, Ljxl/biff/formula/RangeSeparator;

    invoke-direct {v0}, Ljxl/biff/formula/RangeSeparator;-><init>()V

    return-object v0

    .line 477
    :pswitch_1e
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 473
    :pswitch_1f
    new-instance v0, Ljxl/biff/formula/IntegerValue;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/formula/IntegerValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 469
    :pswitch_20
    new-instance v0, Ljxl/biff/formula/ArgumentSeparator;

    invoke-direct {v0}, Ljxl/biff/formula/ArgumentSeparator;-><init>()V

    return-object v0

    .line 465
    :pswitch_21
    new-instance v0, Ljxl/biff/formula/LessThan;

    invoke-direct {v0}, Ljxl/biff/formula/LessThan;-><init>()V

    return-object v0

    .line 461
    :pswitch_22
    new-instance v0, Ljxl/biff/formula/Equal;

    invoke-direct {v0}, Ljxl/biff/formula/Equal;-><init>()V

    return-object v0

    .line 457
    :pswitch_23
    new-instance v0, Ljxl/biff/formula/GreaterThan;

    invoke-direct {v0}, Ljxl/biff/formula/GreaterThan;-><init>()V

    return-object v0

    .line 453
    :pswitch_24
    new-instance v0, Ljxl/biff/formula/Divide;

    invoke-direct {v0}, Ljxl/biff/formula/Divide;-><init>()V

    return-object v0

    .line 449
    :pswitch_25
    new-instance v0, Ljxl/biff/formula/Multiply;

    invoke-direct {v0}, Ljxl/biff/formula/Multiply;-><init>()V

    return-object v0

    .line 445
    :pswitch_26
    new-instance v0, Ljxl/biff/formula/Minus;

    invoke-direct {v0}, Ljxl/biff/formula/Minus;-><init>()V

    return-object v0

    .line 441
    :pswitch_27
    new-instance v0, Ljxl/biff/formula/Plus;

    invoke-direct {v0}, Ljxl/biff/formula/Plus;-><init>()V

    return-object v0

    .line 629
    :cond_6
    :goto_4
    :pswitch_28
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_state_dtrans:[I

    iget v1, p0, Ljxl/biff/formula/Yylex;->yy_lexical_state:I

    aget v5, v0, v1

    .line 632
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_mark_start()V

    .line 633
    iget-object v0, p0, Ljxl/biff/formula/Yylex;->yy_acpt:[I

    aget v0, v0, v5

    if-eqz v0, :cond_7

    .line 636
    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yy_mark_end()V

    move v1, v5

    goto/16 :goto_0

    :cond_7
    move v1, v5

    goto/16 :goto_1

    .line 605
    :cond_8
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 601
    :cond_9
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 597
    :cond_a
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 593
    :cond_b
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 589
    :cond_c
    new-instance v0, Ljxl/biff/formula/NameRange;

    invoke-direct {p0}, Ljxl/biff/formula/Yylex;->yytext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/formula/Yylex;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V

    return-object v0

    .line 427
    :cond_d
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Lexical Error: Unmatched Input."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x30
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_28
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
