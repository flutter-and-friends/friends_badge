.class Ljxl/biff/formula/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final ADD:Ljxl/biff/formula/Token;

.field public static final AREA:Ljxl/biff/formula/Token;

.field public static final AREA3D:Ljxl/biff/formula/Token;

.field public static final AREAV:Ljxl/biff/formula/Token;

.field public static final ATTRIBUTE:Ljxl/biff/formula/Token;

.field public static final BOOL:Ljxl/biff/formula/Token;

.field public static final CONCAT:Ljxl/biff/formula/Token;

.field public static final DIVIDE:Ljxl/biff/formula/Token;

.field public static final DOUBLE:Ljxl/biff/formula/Token;

.field public static final EQUAL:Ljxl/biff/formula/Token;

.field public static final ERR:Ljxl/biff/formula/Token;

.field public static final FUNCTION:Ljxl/biff/formula/Token;

.field public static final FUNCTIONVARARG:Ljxl/biff/formula/Token;

.field public static final GREATER_EQUAL:Ljxl/biff/formula/Token;

.field public static final GREATER_THAN:Ljxl/biff/formula/Token;

.field public static final INTEGER:Ljxl/biff/formula/Token;

.field public static final LESS_EQUAL:Ljxl/biff/formula/Token;

.field public static final LESS_THAN:Ljxl/biff/formula/Token;

.field public static final MEM_AREA:Ljxl/biff/formula/Token;

.field public static final MEM_FUNC:Ljxl/biff/formula/Token;

.field public static final MISSING_ARG:Ljxl/biff/formula/Token;

.field public static final MULTIPLY:Ljxl/biff/formula/Token;

.field public static final NAME:Ljxl/biff/formula/Token;

.field public static final NAMED_RANGE:Ljxl/biff/formula/Token;

.field public static final NOT_EQUAL:Ljxl/biff/formula/Token;

.field public static final PARENTHESIS:Ljxl/biff/formula/Token;

.field public static final PERCENT:Ljxl/biff/formula/Token;

.field public static final POWER:Ljxl/biff/formula/Token;

.field public static final RANGE:Ljxl/biff/formula/Token;

.field public static final REF:Ljxl/biff/formula/Token;

.field public static final REF3D:Ljxl/biff/formula/Token;

.field public static final REFERR:Ljxl/biff/formula/Token;

.field public static final REFV:Ljxl/biff/formula/Token;

.field public static final STRING:Ljxl/biff/formula/Token;

.field public static final SUBTRACT:Ljxl/biff/formula/Token;

.field public static final UNARY_MINUS:Ljxl/biff/formula/Token;

.field public static final UNARY_PLUS:Ljxl/biff/formula/Token;

.field public static final UNION:Ljxl/biff/formula/Token;

.field public static final UNKNOWN:Ljxl/biff/formula/Token;

.field private static tokens:Ljava/util/HashMap;


# instance fields
.field public final value:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x44

    const/16 v3, 0x24

    const/16 v4, 0x64

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    .line 148
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x5a

    const/16 v3, 0x3a

    const/16 v4, 0x7a

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->REF3D:Ljxl/biff/formula/Token;

    .line 149
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->MISSING_ARG:Ljxl/biff/formula/Token;

    .line 150
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x17

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->STRING:Ljxl/biff/formula/Token;

    .line 151
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x1c

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->ERR:Ljxl/biff/formula/Token;

    .line 152
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x1d

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->BOOL:Ljxl/biff/formula/Token;

    .line 153
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->INTEGER:Ljxl/biff/formula/Token;

    .line 154
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x1f

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->DOUBLE:Ljxl/biff/formula/Token;

    .line 155
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x2a

    const/16 v3, 0x4a

    const/16 v4, 0x6a

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->REFERR:Ljxl/biff/formula/Token;

    .line 156
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x2c

    const/16 v3, 0x4c

    const/16 v4, 0x6c

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->REFV:Ljxl/biff/formula/Token;

    .line 157
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x2d

    const/16 v3, 0x4d

    const/16 v4, 0x6d

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->AREAV:Ljxl/biff/formula/Token;

    .line 158
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x26

    const/16 v3, 0x46

    const/16 v4, 0x66

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->MEM_AREA:Ljxl/biff/formula/Token;

    .line 159
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x25

    const/16 v3, 0x65

    const/16 v4, 0x45

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    .line 160
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x23

    const/16 v3, 0x43

    const/16 v4, 0x63

    invoke-direct {v0, v2, v3, v4}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->NAMED_RANGE:Ljxl/biff/formula/Token;

    .line 161
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x39

    const/16 v3, 0x59

    invoke-direct {v0, v2, v3}, Ljxl/biff/formula/Token;-><init>(II)V

    sput-object v0, Ljxl/biff/formula/Token;->NAME:Ljxl/biff/formula/Token;

    .line 162
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x3b

    const/16 v3, 0x5b

    invoke-direct {v0, v2, v3}, Ljxl/biff/formula/Token;-><init>(II)V

    sput-object v0, Ljxl/biff/formula/Token;->AREA3D:Ljxl/biff/formula/Token;

    .line 165
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->UNARY_PLUS:Ljxl/biff/formula/Token;

    .line 166
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->UNARY_MINUS:Ljxl/biff/formula/Token;

    .line 167
    new-instance v0, Ljxl/biff/formula/Token;

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->PERCENT:Ljxl/biff/formula/Token;

    .line 168
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->PARENTHESIS:Ljxl/biff/formula/Token;

    .line 171
    new-instance v0, Ljxl/biff/formula/Token;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->ADD:Ljxl/biff/formula/Token;

    .line 172
    new-instance v0, Ljxl/biff/formula/Token;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->SUBTRACT:Ljxl/biff/formula/Token;

    .line 173
    new-instance v0, Ljxl/biff/formula/Token;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->MULTIPLY:Ljxl/biff/formula/Token;

    .line 174
    new-instance v0, Ljxl/biff/formula/Token;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->DIVIDE:Ljxl/biff/formula/Token;

    .line 175
    new-instance v0, Ljxl/biff/formula/Token;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->POWER:Ljxl/biff/formula/Token;

    .line 176
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->CONCAT:Ljxl/biff/formula/Token;

    .line 177
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->LESS_THAN:Ljxl/biff/formula/Token;

    .line 178
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->LESS_EQUAL:Ljxl/biff/formula/Token;

    .line 179
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->EQUAL:Ljxl/biff/formula/Token;

    .line 180
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->GREATER_EQUAL:Ljxl/biff/formula/Token;

    .line 181
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->GREATER_THAN:Ljxl/biff/formula/Token;

    .line 182
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->NOT_EQUAL:Ljxl/biff/formula/Token;

    .line 183
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->UNION:Ljxl/biff/formula/Token;

    .line 184
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->RANGE:Ljxl/biff/formula/Token;

    .line 187
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x41

    const/16 v2, 0x21

    const/16 v3, 0x61

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->FUNCTION:Ljxl/biff/formula/Token;

    .line 188
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x42

    const/16 v2, 0x22

    const/16 v3, 0x62

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    .line 191
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    .line 192
    new-instance v0, Ljxl/biff/formula/Token;

    const/16 v1, 0x29

    const/16 v2, 0x49

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/formula/Token;-><init>(III)V

    sput-object v0, Ljxl/biff/formula/Token;->MEM_FUNC:Ljxl/biff/formula/Token;

    .line 195
    new-instance v0, Ljxl/biff/formula/Token;

    const v1, 0xffff

    invoke-direct {v0, v1}, Ljxl/biff/formula/Token;-><init>(I)V

    sput-object v0, Ljxl/biff/formula/Token;->UNKNOWN:Ljxl/biff/formula/Token;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 48
    iput-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    .line 50
    sget-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 61
    iput-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    .line 63
    sget-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 75
    iput-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    .line 77
    sget-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 90
    iput-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    .line 92
    sget-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 106
    iput-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    .line 108
    sget-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object p1, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getToken(I)Ljxl/biff/formula/Token;
    .locals 2

    .line 141
    sget-object v0, Ljxl/biff/formula/Token;->tokens:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljxl/biff/formula/Token;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    sget-object p0, Ljxl/biff/formula/Token;->UNKNOWN:Ljxl/biff/formula/Token;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCode()B
    .locals 2

    .line 122
    iget-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public getCode2()B
    .locals 2

    .line 133
    iget-object v0, p0, Ljxl/biff/formula/Token;->value:[I

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method
