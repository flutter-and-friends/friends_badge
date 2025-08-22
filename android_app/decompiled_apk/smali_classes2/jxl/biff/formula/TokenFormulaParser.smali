.class Ljxl/biff/formula/TokenFormulaParser;
.super Ljava/lang/Object;
.source "TokenFormulaParser.java"

# interfaces
.implements Ljxl/biff/formula/Parser;


# static fields
.field static synthetic class$jxl$biff$formula$TokenFormulaParser:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private pos:I

.field private relativeTo:Ljxl/Cell;

.field private root:Ljxl/biff/formula/ParseItem;

.field private settings:Ljxl/WorkbookSettings;

.field private tokenData:[B

.field private tokenStack:Ljava/util/Stack;

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Ljxl/biff/formula/TokenFormulaParser;->class$jxl$biff$formula$TokenFormulaParser:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.TokenFormulaParser"

    invoke-static {v0}, Ljxl/biff/formula/TokenFormulaParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/TokenFormulaParser;->class$jxl$biff$formula$TokenFormulaParser:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/TokenFormulaParser;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 94
    iput-object p2, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    .line 95
    iput-object p3, p0, Ljxl/biff/formula/TokenFormulaParser;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 96
    iput-object p4, p0, Ljxl/biff/formula/TokenFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 97
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 98
    iput-object p5, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    .line 100
    iget-object p2, p0, Ljxl/biff/formula/TokenFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method private addOperator(Ljxl/biff/formula/Operator;)V
    .locals 1

    .line 450
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 453
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 39
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

.method private handleMemoryFunction(Ljxl/biff/formula/SubExpression;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 421
    iget v0, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v1, v0}, Ljxl/biff/formula/SubExpression;->read([BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 424
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 425
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 427
    invoke-virtual {p1}, Ljxl/biff/formula/SubExpression;->getLength()I

    move-result v1

    invoke-direct {p0, v1}, Ljxl/biff/formula/TokenFormulaParser;->parseSubExpression(I)V

    .line 429
    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Ljxl/biff/formula/ParseItem;

    const/4 v2, 0x0

    .line 431
    :goto_0
    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/formula/ParseItem;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p1, v1}, Ljxl/biff/formula/SubExpression;->setSubExpression([Ljxl/biff/formula/ParseItem;)V

    .line 439
    iput-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 440
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseSubExpression(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 138
    iget v1, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    add-int/2addr v1, p1

    .line 140
    :cond_0
    :goto_0
    iget p1, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    if-ge p1, v1, :cond_29

    .line 142
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    aget-byte v2, v2, p1

    add-int/lit8 p1, p1, 0x1

    .line 143
    iput p1, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 145
    invoke-static {v2}, Ljxl/biff/formula/Token;->getToken(I)Ljxl/biff/formula/Token;

    move-result-object p1

    .line 147
    sget-object v3, Ljxl/biff/formula/Token;->UNKNOWN:Ljxl/biff/formula/Token;

    if-eq p1, v3, :cond_28

    .line 153
    sget-object v2, Ljxl/biff/formula/Token;->UNKNOWN:Ljxl/biff/formula/Token;

    if-eq p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 156
    sget-object v2, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_2

    .line 158
    new-instance p1, Ljxl/biff/formula/CellReference;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    invoke-direct {p1, v2}, Ljxl/biff/formula/CellReference;-><init>(Ljxl/Cell;)V

    .line 159
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/CellReference;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 160
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_2
    sget-object v2, Ljxl/biff/formula/Token;->REFERR:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_3

    .line 164
    new-instance p1, Ljxl/biff/formula/CellReferenceError;

    invoke-direct {p1}, Ljxl/biff/formula/CellReferenceError;-><init>()V

    .line 165
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/CellReferenceError;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 166
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_3
    sget-object v2, Ljxl/biff/formula/Token;->ERR:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_4

    .line 170
    new-instance p1, Ljxl/biff/formula/ErrorConstant;

    invoke-direct {p1}, Ljxl/biff/formula/ErrorConstant;-><init>()V

    .line 171
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/ErrorConstant;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 172
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_4
    sget-object v2, Ljxl/biff/formula/Token;->REFV:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_5

    .line 176
    new-instance p1, Ljxl/biff/formula/SharedFormulaCellReference;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    invoke-direct {p1, v2}, Ljxl/biff/formula/SharedFormulaCellReference;-><init>(Ljxl/Cell;)V

    .line 178
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/SharedFormulaCellReference;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 179
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    :cond_5
    sget-object v2, Ljxl/biff/formula/Token;->REF3D:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_6

    .line 183
    new-instance p1, Ljxl/biff/formula/CellReference3d;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->workbook:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {p1, v2, v3}, Ljxl/biff/formula/CellReference3d;-><init>(Ljxl/Cell;Ljxl/biff/formula/ExternalSheet;)V

    .line 184
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/CellReference3d;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 185
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 187
    :cond_6
    sget-object v2, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_7

    .line 189
    new-instance p1, Ljxl/biff/formula/Area;

    invoke-direct {p1}, Ljxl/biff/formula/Area;-><init>()V

    .line 190
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Area;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 191
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 193
    :cond_7
    sget-object v2, Ljxl/biff/formula/Token;->AREAV:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_8

    .line 195
    new-instance p1, Ljxl/biff/formula/SharedFormulaArea;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    invoke-direct {p1, v2}, Ljxl/biff/formula/SharedFormulaArea;-><init>(Ljxl/Cell;)V

    .line 196
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/SharedFormulaArea;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 197
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    :cond_8
    sget-object v2, Ljxl/biff/formula/Token;->AREA3D:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_9

    .line 201
    new-instance p1, Ljxl/biff/formula/Area3d;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->workbook:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {p1, v2}, Ljxl/biff/formula/Area3d;-><init>(Ljxl/biff/formula/ExternalSheet;)V

    .line 202
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Area3d;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 203
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 205
    :cond_9
    sget-object v2, Ljxl/biff/formula/Token;->NAME:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_a

    .line 207
    new-instance p1, Ljxl/biff/formula/Name;

    invoke-direct {p1}, Ljxl/biff/formula/Name;-><init>()V

    .line 208
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Name;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 209
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 211
    :cond_a
    sget-object v2, Ljxl/biff/formula/Token;->NAMED_RANGE:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_b

    .line 213
    new-instance p1, Ljxl/biff/formula/NameRange;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {p1, v2}, Ljxl/biff/formula/NameRange;-><init>(Ljxl/biff/WorkbookMethods;)V

    .line 214
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/NameRange;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 215
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 217
    :cond_b
    sget-object v2, Ljxl/biff/formula/Token;->INTEGER:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_c

    .line 219
    new-instance p1, Ljxl/biff/formula/IntegerValue;

    invoke-direct {p1}, Ljxl/biff/formula/IntegerValue;-><init>()V

    .line 220
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/IntegerValue;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 221
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 223
    :cond_c
    sget-object v2, Ljxl/biff/formula/Token;->DOUBLE:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_d

    .line 225
    new-instance p1, Ljxl/biff/formula/DoubleValue;

    invoke-direct {p1}, Ljxl/biff/formula/DoubleValue;-><init>()V

    .line 226
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/DoubleValue;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 227
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 229
    :cond_d
    sget-object v2, Ljxl/biff/formula/Token;->BOOL:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_e

    .line 231
    new-instance p1, Ljxl/biff/formula/BooleanValue;

    invoke-direct {p1}, Ljxl/biff/formula/BooleanValue;-><init>()V

    .line 232
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/BooleanValue;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 233
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 235
    :cond_e
    sget-object v2, Ljxl/biff/formula/Token;->STRING:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_f

    .line 237
    new-instance p1, Ljxl/biff/formula/StringValue;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p1, v2}, Ljxl/biff/formula/StringValue;-><init>(Ljxl/WorkbookSettings;)V

    .line 238
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/StringValue;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 239
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 241
    :cond_f
    sget-object v2, Ljxl/biff/formula/Token;->MISSING_ARG:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_10

    .line 243
    new-instance p1, Ljxl/biff/formula/MissingArg;

    invoke-direct {p1}, Ljxl/biff/formula/MissingArg;-><init>()V

    .line 244
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/MissingArg;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 245
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 249
    :cond_10
    sget-object v2, Ljxl/biff/formula/Token;->UNARY_PLUS:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_11

    .line 251
    new-instance p1, Ljxl/biff/formula/UnaryPlus;

    invoke-direct {p1}, Ljxl/biff/formula/UnaryPlus;-><init>()V

    .line 252
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/UnaryPlus;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 253
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 255
    :cond_11
    sget-object v2, Ljxl/biff/formula/Token;->UNARY_MINUS:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_12

    .line 257
    new-instance p1, Ljxl/biff/formula/UnaryMinus;

    invoke-direct {p1}, Ljxl/biff/formula/UnaryMinus;-><init>()V

    .line 258
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/UnaryMinus;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 259
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 261
    :cond_12
    sget-object v2, Ljxl/biff/formula/Token;->PERCENT:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_13

    .line 263
    new-instance p1, Ljxl/biff/formula/Percent;

    invoke-direct {p1}, Ljxl/biff/formula/Percent;-><init>()V

    .line 264
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Percent;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 265
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 269
    :cond_13
    sget-object v2, Ljxl/biff/formula/Token;->SUBTRACT:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_14

    .line 271
    new-instance p1, Ljxl/biff/formula/Subtract;

    invoke-direct {p1}, Ljxl/biff/formula/Subtract;-><init>()V

    .line 272
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Subtract;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 273
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 275
    :cond_14
    sget-object v2, Ljxl/biff/formula/Token;->ADD:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_15

    .line 277
    new-instance p1, Ljxl/biff/formula/Add;

    invoke-direct {p1}, Ljxl/biff/formula/Add;-><init>()V

    .line 278
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Add;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 279
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 281
    :cond_15
    sget-object v2, Ljxl/biff/formula/Token;->MULTIPLY:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_16

    .line 283
    new-instance p1, Ljxl/biff/formula/Multiply;

    invoke-direct {p1}, Ljxl/biff/formula/Multiply;-><init>()V

    .line 284
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Multiply;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 285
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 287
    :cond_16
    sget-object v2, Ljxl/biff/formula/Token;->DIVIDE:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_17

    .line 289
    new-instance p1, Ljxl/biff/formula/Divide;

    invoke-direct {p1}, Ljxl/biff/formula/Divide;-><init>()V

    .line 290
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Divide;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 291
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 293
    :cond_17
    sget-object v2, Ljxl/biff/formula/Token;->CONCAT:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_18

    .line 295
    new-instance p1, Ljxl/biff/formula/Concatenate;

    invoke-direct {p1}, Ljxl/biff/formula/Concatenate;-><init>()V

    .line 296
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Concatenate;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 297
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 299
    :cond_18
    sget-object v2, Ljxl/biff/formula/Token;->POWER:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_19

    .line 301
    new-instance p1, Ljxl/biff/formula/Power;

    invoke-direct {p1}, Ljxl/biff/formula/Power;-><init>()V

    .line 302
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Power;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 303
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 305
    :cond_19
    sget-object v2, Ljxl/biff/formula/Token;->LESS_THAN:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_1a

    .line 307
    new-instance p1, Ljxl/biff/formula/LessThan;

    invoke-direct {p1}, Ljxl/biff/formula/LessThan;-><init>()V

    .line 308
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/LessThan;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 309
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 311
    :cond_1a
    sget-object v2, Ljxl/biff/formula/Token;->LESS_EQUAL:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_1b

    .line 313
    new-instance p1, Ljxl/biff/formula/LessEqual;

    invoke-direct {p1}, Ljxl/biff/formula/LessEqual;-><init>()V

    .line 314
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/LessEqual;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 315
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 317
    :cond_1b
    sget-object v2, Ljxl/biff/formula/Token;->GREATER_THAN:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_1c

    .line 319
    new-instance p1, Ljxl/biff/formula/GreaterThan;

    invoke-direct {p1}, Ljxl/biff/formula/GreaterThan;-><init>()V

    .line 320
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/GreaterThan;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 321
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 323
    :cond_1c
    sget-object v2, Ljxl/biff/formula/Token;->GREATER_EQUAL:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_1d

    .line 325
    new-instance p1, Ljxl/biff/formula/GreaterEqual;

    invoke-direct {p1}, Ljxl/biff/formula/GreaterEqual;-><init>()V

    .line 326
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/GreaterEqual;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 327
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 329
    :cond_1d
    sget-object v2, Ljxl/biff/formula/Token;->NOT_EQUAL:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_1e

    .line 331
    new-instance p1, Ljxl/biff/formula/NotEqual;

    invoke-direct {p1}, Ljxl/biff/formula/NotEqual;-><init>()V

    .line 332
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/NotEqual;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 333
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 335
    :cond_1e
    sget-object v2, Ljxl/biff/formula/Token;->EQUAL:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_1f

    .line 337
    new-instance p1, Ljxl/biff/formula/Equal;

    invoke-direct {p1}, Ljxl/biff/formula/Equal;-><init>()V

    .line 338
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Equal;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 339
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 341
    :cond_1f
    sget-object v2, Ljxl/biff/formula/Token;->PARENTHESIS:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_20

    .line 343
    new-instance p1, Ljxl/biff/formula/Parenthesis;

    invoke-direct {p1}, Ljxl/biff/formula/Parenthesis;-><init>()V

    .line 344
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Parenthesis;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 345
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 349
    :cond_20
    sget-object v2, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_22

    .line 351
    new-instance p1, Ljxl/biff/formula/Attribute;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p1, v2}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/WorkbookSettings;)V

    .line 352
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/Attribute;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 354
    invoke-virtual {p1}, Ljxl/biff/formula/Attribute;->isSum()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 356
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 358
    :cond_21
    invoke-virtual {p1}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 364
    :cond_22
    sget-object v2, Ljxl/biff/formula/Token;->FUNCTION:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_23

    .line 366
    new-instance p1, Ljxl/biff/formula/BuiltInFunction;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p1, v2}, Ljxl/biff/formula/BuiltInFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 367
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/BuiltInFunction;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 369
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 371
    :cond_23
    sget-object v2, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_26

    .line 373
    new-instance p1, Ljxl/biff/formula/VariableArgFunction;

    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p1, v2}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 374
    iget v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v3, v2}, Ljxl/biff/formula/VariableArgFunction;->read([BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 376
    invoke-virtual {p1}, Ljxl/biff/formula/VariableArgFunction;->getFunction()Ljxl/biff/formula/Function;

    move-result-object v2

    sget-object v3, Ljxl/biff/formula/Function;->ATTRIBUTE:Ljxl/biff/formula/Function;

    if-eq v2, v3, :cond_24

    .line 378
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto/16 :goto_0

    .line 384
    :cond_24
    iget-object v2, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {p1, v2}, Ljxl/biff/formula/VariableArgFunction;->getOperands(Ljava/util/Stack;)V

    .line 387
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 389
    new-instance v2, Ljxl/biff/formula/Attribute;

    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v2, v3}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/WorkbookSettings;)V

    goto :goto_2

    .line 393
    :cond_25
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/formula/Attribute;

    .line 396
    :goto_2
    invoke-virtual {v2, p1}, Ljxl/biff/formula/Attribute;->setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V

    .line 397
    iget-object p1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 402
    :cond_26
    sget-object v2, Ljxl/biff/formula/Token;->MEM_FUNC:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_27

    .line 404
    new-instance p1, Ljxl/biff/formula/MemFunc;

    invoke-direct {p1}, Ljxl/biff/formula/MemFunc;-><init>()V

    .line 405
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->handleMemoryFunction(Ljxl/biff/formula/SubExpression;)V

    goto/16 :goto_0

    .line 407
    :cond_27
    sget-object v2, Ljxl/biff/formula/Token;->MEM_AREA:Ljxl/biff/formula/Token;

    if-ne p1, v2, :cond_0

    .line 409
    new-instance p1, Ljxl/biff/formula/MemArea;

    invoke-direct {p1}, Ljxl/biff/formula/MemArea;-><init>()V

    .line 410
    invoke-direct {p0, p1}, Ljxl/biff/formula/TokenFormulaParser;->handleMemoryFunction(Ljxl/biff/formula/SubExpression;)V

    goto/16 :goto_0

    .line 149
    :cond_28
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object v0, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_TOKEN:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p1, v0, v2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;I)V

    throw p1

    :cond_29
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1

    .line 475
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1

    .line 501
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    return-void
.end method

.method public columnRemoved(IIZ)V
    .locals 1

    .line 515
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 486
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 462
    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1, v0}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleImportedCellReferences()Z
    .locals 1

    .line 556
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 557
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isValid()Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Ljxl/biff/formula/TokenFormulaParser;->parseSubExpression(I)V

    .line 115
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    iput-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    .line 117
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method public rowInserted(IIZ)V
    .locals 1

    .line 530
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    return-void
.end method

.method public rowRemoved(IIZ)V
    .locals 1

    .line 545
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    return-void
.end method
