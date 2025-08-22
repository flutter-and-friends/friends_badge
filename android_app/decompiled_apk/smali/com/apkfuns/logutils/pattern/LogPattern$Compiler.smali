.class public Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;
.super Ljava/lang/Object;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compiler"
.end annotation


# static fields
.field public static final CALLER_PATTERN:Ljava/util/regex/Pattern;

.field public static final CALLER_PATTERN_SHORT:Ljava/util/regex/Pattern;

.field public static final CONCATENATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

.field public static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field public static final PERCENT_PATTERN:Ljava/util/regex/Pattern;

.field public static final THREAD_NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final THREAD_NAME_PATTERN_SHORT:Ljava/util/regex/Pattern;


# instance fields
.field private patternString:Ljava/lang/String;

.field private position:I

.field private queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%%"

    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%n"

    .line 172
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?caller(\\{([+-]?\\d+)?(\\.([+-]?\\d+))?\\})?"

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%date(\\{(.*?)\\})?"

    .line 174
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?\\("

    .line 175
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CONCATENATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%d(\\{(.*?)\\})?"

    .line 176
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?c(\\{([+-]?\\d+)?(\\.([+-]?\\d+))?\\})?"

    .line 177
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN_SHORT:Ljava/util/regex/Pattern;

    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?thread"

    .line 178
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%([+-]?\\d+)?(\\.([+-]?\\d+))?t"

    .line 179
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN_SHORT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->patternString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 257
    iget v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iget v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private parse()V
    .locals 8

    .line 211
    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 212
    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    const-string v4, "%"

    invoke-direct {v3, v1, v1, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 213
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    const-string v4, "\n"

    invoke-direct {v3, v1, v1, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 218
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    return-void

    .line 222
    :cond_1
    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v3, 0x3

    const-string v4, "0"

    if-nez v0, :cond_c

    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CALLER_PATTERN_SHORT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 231
    :cond_2
    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 237
    :cond_3
    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->THREAD_NAME_PATTERN_SHORT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 244
    :cond_4
    sget-object v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->CONCATENATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->findPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v4

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 246
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    new-instance v4, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v1, v2, v5}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;-><init>(IILjava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    return-void

    .line 252
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 238
    :cond_8
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v1, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 239
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 240
    iget-object v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v4, Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;

    invoke-direct {v4, v1, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 241
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    return-void

    :cond_b
    :goto_5
    const/4 v3, 0x2

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v4, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;

    invoke-direct {v4, v1, v1, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 234
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    return-void

    .line 223
    :cond_c
    :goto_6
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move-object v1, v4

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 224
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    move-object v3, v4

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x5

    .line 225
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    move-object v5, v4

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x7

    .line 226
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 227
    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v6, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;

    invoke-direct {v6, v1, v3, v5, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;-><init>(IIII)V

    invoke-virtual {v2, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 228
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    .line 186
    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->patternString:Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    .line 188
    iget-object v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    new-instance v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v0, v0, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    if-le v1, v2, :cond_3

    const-string v1, "%"

    .line 190
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 191
    iget v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    const-string v3, ")"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 192
    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    if-ge v2, v1, :cond_1

    .line 193
    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v5, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    iget v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v0, v6}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 194
    iget-object v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    iget-object v5, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apkfuns/logutils/pattern/LogPattern;

    invoke-virtual {v3, v5}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    add-int/lit8 v2, v2, 0x1

    .line 195
    iput v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 198
    iget-object v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v2, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    iget v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, v0, p1}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;

    new-instance v3, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    iget v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v0, v4}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V

    .line 202
    iput v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->position:I

    .line 203
    invoke-direct {p0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->parse()V

    goto/16 :goto_0

    .line 206
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->queue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apkfuns/logutils/pattern/LogPattern;

    return-object p1
.end method
