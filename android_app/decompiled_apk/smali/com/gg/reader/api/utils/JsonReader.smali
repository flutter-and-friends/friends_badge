.class public Lcom/gg/reader/api/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# static fields
.field private static final ARRAY_END:Ljava/lang/Object;

.field private static final COLON:Ljava/lang/Object;

.field private static final COMMA:Ljava/lang/Object;

.field public static final CURRENT:I = 0x1

.field public static final FIRST:I = 0x0

.field public static final NEXT:I = 0x2

.field private static final OBJECT_END:Ljava/lang/Object;

.field private static escapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private c:C

.field private it:Ljava/text/CharacterIterator;

.field private token:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gg/reader/api/utils/JsonReader;->OBJECT_END:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gg/reader/api/utils/JsonReader;->ARRAY_END:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gg/reader/api/utils/JsonReader;->COLON:Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gg/reader/api/utils/JsonReader;->COMMA:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->buf:Ljava/lang/StringBuffer;

    return-void
.end method

.method private add()V
    .locals 1

    .line 226
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    invoke-direct {p0, v0}, Lcom/gg/reader/api/utils/JsonReader;->add(C)V

    return-void
.end method

.method private add(C)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    return-void
.end method

.method private addDigits()I
    .locals 2

    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-char v1, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->add()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private array()Ljava/lang/Object;
    .locals 4

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v1

    .line 152
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    sget-object v3, Lcom/gg/reader/api/utils/JsonReader;->ARRAY_END:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/gg/reader/api/utils/JsonReader;->COMMA:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private next()C
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    iput-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    .line 44
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    return v0
.end method

.method private number()Ljava/lang/Object;
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 166
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->add()V

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->addDigits()I

    move-result v0

    add-int/2addr v0, v1

    .line 170
    iget-char v3, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->add()V

    .line 172
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->addDigits()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 175
    :cond_1
    iget-char v3, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    const/16 v4, 0x45

    if-ne v3, v4, :cond_5

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->add()V

    .line 177
    iget-char v1, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_4

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->add()V

    .line 180
    :cond_4
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->addDigits()I

    const/4 v1, 0x1

    .line 184
    :cond_5
    iget-object v2, p0, Lcom/gg/reader/api/utils/JsonReader;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    if-ge v0, v1, :cond_6

    .line 186
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v1, 0x13

    if-ge v0, v1, :cond_8

    .line 187
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private object()Ljava/lang/Object;
    .locals 4

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v1

    .line 136
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    sget-object v3, Lcom/gg/reader/api/utils/JsonReader;->OBJECT_END:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    sget-object v3, Lcom/gg/reader/api/utils/JsonReader;->OBJECT_END:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/gg/reader/api/utils/JsonReader;->COMMA:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private read()Ljava/lang/Object;
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->skipWhiteSpace()V

    .line 79
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    .line 80
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x66

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    iput-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    .line 124
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->number()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->OBJECT_END:Ljava/lang/Object;

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->object()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 105
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 106
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 107
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_4
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 118
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 119
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_5
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 111
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 112
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 113
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 114
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_6
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->ARRAY_END:Ljava/lang/Object;

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_7
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->array()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_8
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->COLON:Ljava/lang/Object;

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_9
    sget-object v0, Lcom/gg/reader/api/utils/JsonReader;->COMMA:Ljava/lang/Object;

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_a
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->string()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    .line 130
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->token:Ljava/lang/Object;

    return-object v0
.end method

.method private skipWhiteSpace()V
    .locals 1

    .line 48
    :goto_0
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    goto :goto_0

    :cond_0
    return-void
.end method

.method private string()Ljava/lang/Object;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 200
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 203
    iget-char v0, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->unicode()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/gg/reader/api/utils/JsonReader;->add(C)V

    goto :goto_0

    .line 206
    :cond_1
    sget-object v1, Lcom/gg/reader/api/utils/JsonReader;->escapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/gg/reader/api/utils/JsonReader;->add(C)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->add()V

    goto :goto_0

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    .line 217
    iget-object v0, p0, Lcom/gg/reader/api/utils/JsonReader;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unicode()C
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->next()C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    shl-int/lit8 v1, v1, 0x4

    .line 251
    iget-char v2, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x6b

    goto :goto_1

    :pswitch_1
    shl-int/lit8 v1, v1, 0x4

    .line 259
    iget-char v2, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4b

    goto :goto_1

    :pswitch_2
    shl-int/lit8 v1, v1, 0x4

    .line 243
    iget-char v2, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x30

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-char v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public jsonToClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/JsonReader;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 270
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 271
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 272
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 273
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 274
    aget-object v4, p2, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 275
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java.lang.String"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "set"

    if-eqz v7, :cond_0

    .line 279
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    .line 280
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.lang.Integer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    aput-object v11, v10, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    .line 284
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.lang.Long"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    .line 288
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-virtual {v6, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    :catch_0
    :cond_4
    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 74
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/gg/reader/api/utils/JsonReader;->read(Ljava/text/CharacterIterator;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/text/CharacterIterator;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/utils/JsonReader;->read(Ljava/text/CharacterIterator;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/text/CharacterIterator;I)Ljava/lang/Object;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gg/reader/api/utils/JsonReader;->it:Ljava/text/CharacterIterator;

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/utils/JsonReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result p1

    iput-char p1, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/gg/reader/api/utils/JsonReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result p1

    iput-char p1, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/gg/reader/api/utils/JsonReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result p1

    iput-char p1, p0, Lcom/gg/reader/api/utils/JsonReader;->c:C

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/gg/reader/api/utils/JsonReader;->read()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
