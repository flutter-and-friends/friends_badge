.class public Ljxl/biff/DVParser;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/DVParser$Condition;,
        Ljxl/biff/DVParser$ErrorStyle;,
        Ljxl/biff/DVParser$DVType;
    }
.end annotation


# static fields
.field public static final ANY:Ljxl/biff/DVParser$DVType;

.field public static final BETWEEN:Ljxl/biff/DVParser$Condition;

.field public static final DATE:Ljxl/biff/DVParser$DVType;

.field public static final DECIMAL:Ljxl/biff/DVParser$DVType;

.field private static DECIMAL_FORMAT:Ljava/text/DecimalFormat;

.field private static EMPTY_CELLS_ALLOWED_MASK:I

.field public static final EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final FORMULA:Ljxl/biff/DVParser$DVType;

.field public static final GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final GREATER_THAN:Ljxl/biff/DVParser$Condition;

.field public static final INFO:Ljxl/biff/DVParser$ErrorStyle;

.field public static final INTEGER:Ljxl/biff/DVParser$DVType;

.field public static final LESS_EQUAL:Ljxl/biff/DVParser$Condition;

.field public static final LESS_THAN:Ljxl/biff/DVParser$Condition;

.field public static final LIST:Ljxl/biff/DVParser$DVType;

.field public static final NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

.field public static final NOT_EQUAL:Ljxl/biff/DVParser$Condition;

.field private static SHOW_ERROR_MASK:I

.field private static SHOW_PROMPT_MASK:I

.field public static final STOP:Ljxl/biff/DVParser$ErrorStyle;

.field private static STRING_LIST_GIVEN_MASK:I

.field private static SUPPRESS_ARROW_MASK:I

.field public static final TEXT_LENGTH:Ljxl/biff/DVParser$DVType;

.field public static final TIME:Ljxl/biff/DVParser$DVType;

.field public static final WARNING:Ljxl/biff/DVParser$ErrorStyle;

.field static synthetic class$jxl$biff$DVParser:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column1:I

.field private column2:I

.field private condition:Ljxl/biff/DVParser$Condition;

.field private emptyCellsAllowed:Z

.field private errorStyle:Ljxl/biff/DVParser$ErrorStyle;

.field private errorText:Ljava/lang/String;

.field private errorTitle:Ljava/lang/String;

.field private formula1:Ljxl/biff/formula/FormulaParser;

.field private formula1String:Ljava/lang/String;

.field private formula2:Ljxl/biff/formula/FormulaParser;

.field private formula2String:Ljava/lang/String;

.field private promptText:Ljava/lang/String;

.field private promptTitle:Ljava/lang/String;

.field private row1:I

.field private row2:I

.field private showError:Z

.field private showPrompt:Z

.field private stringListGiven:Z

.field private suppressArrow:Z

.field private type:Ljxl/biff/DVParser$DVType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 44
    sget-object v0, Ljxl/biff/DVParser;->class$jxl$biff$DVParser:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.DVParser"

    invoke-static {v0}, Ljxl/biff/DVParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/DVParser;->class$jxl$biff$DVParser:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DVParser;->logger:Lcommon/Logger;

    .line 166
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v1, 0x0

    const-string v2, "any"

    invoke-direct {v0, v1, v2}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->ANY:Ljxl/biff/DVParser$DVType;

    .line 167
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v2, 0x1

    const-string v3, "int"

    invoke-direct {v0, v2, v3}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->INTEGER:Ljxl/biff/DVParser$DVType;

    .line 168
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v3, 0x2

    const-string v4, "dec"

    invoke-direct {v0, v3, v4}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DECIMAL:Ljxl/biff/DVParser$DVType;

    .line 169
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v4, 0x3

    const-string v5, "list"

    invoke-direct {v0, v4, v5}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    .line 170
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v5, 0x4

    const-string v6, "date"

    invoke-direct {v0, v5, v6}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DATE:Ljxl/biff/DVParser$DVType;

    .line 171
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v6, 0x5

    const-string v7, "time"

    invoke-direct {v0, v6, v7}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->TIME:Ljxl/biff/DVParser$DVType;

    .line 172
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v7, 0x6

    const-string v8, "strlen"

    invoke-direct {v0, v7, v8}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->TEXT_LENGTH:Ljxl/biff/DVParser$DVType;

    .line 173
    new-instance v0, Ljxl/biff/DVParser$DVType;

    const/4 v8, 0x7

    const-string v9, "form"

    invoke-direct {v0, v8, v9}, Ljxl/biff/DVParser$DVType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->FORMULA:Ljxl/biff/DVParser$DVType;

    .line 176
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v1}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    .line 177
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v2}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->WARNING:Ljxl/biff/DVParser$ErrorStyle;

    .line 178
    new-instance v0, Ljxl/biff/DVParser$ErrorStyle;

    invoke-direct {v0, v3}, Ljxl/biff/DVParser$ErrorStyle;-><init>(I)V

    sput-object v0, Ljxl/biff/DVParser;->INFO:Ljxl/biff/DVParser$ErrorStyle;

    .line 181
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v9, "{0} <= x <= {1}"

    invoke-direct {v0, v1, v9}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    .line 182
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "!({0} <= x <= {1}"

    invoke-direct {v0, v2, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

    .line 184
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x == {0}"

    invoke-direct {v0, v3, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    .line 185
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x != {0}"

    invoke-direct {v0, v4, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->NOT_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 186
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x > {0}"

    invoke-direct {v0, v5, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->GREATER_THAN:Ljxl/biff/DVParser$Condition;

    .line 187
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x < {0}"

    invoke-direct {v0, v6, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LESS_THAN:Ljxl/biff/DVParser$Condition;

    .line 188
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x >= {0}"

    invoke-direct {v0, v7, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

    .line 189
    new-instance v0, Ljxl/biff/DVParser$Condition;

    const-string v1, "x <= {0}"

    invoke-direct {v0, v8, v1}, Ljxl/biff/DVParser$Condition;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->LESS_EQUAL:Ljxl/biff/DVParser$Condition;

    const/16 v0, 0x80

    .line 192
    sput v0, Ljxl/biff/DVParser;->STRING_LIST_GIVEN_MASK:I

    const/16 v0, 0x100

    .line 193
    sput v0, Ljxl/biff/DVParser;->EMPTY_CELLS_ALLOWED_MASK:I

    const/16 v0, 0x200

    .line 194
    sput v0, Ljxl/biff/DVParser;->SUPPRESS_ARROW_MASK:I

    const/high16 v0, 0x40000

    .line 195
    sput v0, Ljxl/biff/DVParser;->SHOW_PROMPT_MASK:I

    const/high16 v0, 0x80000

    .line 196
    sput v0, Ljxl/biff/DVParser;->SHOW_ERROR_MASK:I

    .line 199
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(DDLjxl/biff/DVParser$Condition;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    sget-object v0, Ljxl/biff/DVParser;->DECIMAL:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 535
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 536
    iput-object p5, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    const/4 p5, 0x0

    .line 539
    iput-boolean p5, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 541
    iput-boolean p5, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 542
    iput-boolean v0, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 543
    iput-boolean v0, p0, Ljxl/biff/DVParser;->showError:Z

    const-string p5, "\u0000"

    .line 545
    iput-object p5, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 546
    iput-object p5, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 547
    iput-object p5, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 548
    iput-object p5, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 549
    sget-object p5, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p5, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 551
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    .line 553
    sget-object p1, Ljxl/biff/DVParser;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    sget-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 508
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 509
    sget-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    const/4 v1, 0x1

    .line 513
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 514
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 515
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 516
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    const-string v0, "\u0000"

    .line 518
    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 519
    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 520
    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 521
    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 522
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 523
    invoke-static {p1, p2, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    const/16 p1, 0x3a

    .line 524
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    invoke-static {p3, p4, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    sget-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 485
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 486
    sget-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    const/4 v1, 0x1

    .line 490
    iput-boolean v1, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 491
    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 492
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 493
    iput-boolean v1, p0, Ljxl/biff/DVParser;->showError:Z

    const-string v0, "\u0000"

    .line 495
    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 499
    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    sget-object v0, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 446
    sget-object v0, Ljxl/biff/DVParser;->STOP:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 447
    sget-object v0, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 451
    iput-boolean v0, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    const/4 v1, 0x0

    .line 452
    iput-boolean v1, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 453
    iput-boolean v0, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 454
    iput-boolean v0, p0, Ljxl/biff/DVParser;->showError:Z

    const-string v0, "\u0000"

    .line 456
    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 457
    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 458
    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 459
    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 460
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    sget-object v0, Ljxl/biff/DVParser;->logger:Lcommon/Logger;

    const-string v2, "no validation strings - ignoring"

    invoke-virtual {v0, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 465
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 466
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x22

    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 473
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DVParser;)V
    .locals 3

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iget-object v0, p1, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    iput-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    .line 563
    iget-object v0, p1, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    .line 564
    iget-object v0, p1, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    iput-object v0, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 565
    iget-boolean v0, p1, Ljxl/biff/DVParser;->stringListGiven:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 566
    iget-boolean v0, p1, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 567
    iget-boolean v0, p1, Ljxl/biff/DVParser;->suppressArrow:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 568
    iget-boolean v0, p1, Ljxl/biff/DVParser;->showPrompt:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 569
    iget-boolean v0, p1, Ljxl/biff/DVParser;->showError:Z

    iput-boolean v0, p0, Ljxl/biff/DVParser;->showError:Z

    .line 570
    iget-object v0, p1, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    .line 571
    iget-object v0, p1, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    .line 572
    iget-object v0, p1, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    .line 573
    iget-object v0, p1, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    .line 578
    :try_start_0
    iget-object v0, p1, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    .line 579
    iget-object v0, p1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 584
    sget-object v0, Ljxl/biff/DVParser;->logger:Lcommon/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot parse validation formula:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public constructor <init>([BLjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v8, p4

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 309
    :goto_0
    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 311
    aget-byte v3, v1, v9

    aget-byte v4, v1, v2

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    const/4 v7, 0x3

    aget-byte v10, v1, v7

    invoke-static {v3, v4, v6, v10}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v3

    and-int/lit8 v4, v3, 0xf

    .line 314
    invoke-static {v4}, Ljxl/biff/DVParser$DVType;->getType(I)Ljxl/biff/DVParser$DVType;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    and-int/lit8 v4, v3, 0x70

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    .line 317
    invoke-static {v4}, Ljxl/biff/DVParser$ErrorStyle;->getErrorStyle(I)Ljxl/biff/DVParser$ErrorStyle;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    const/high16 v4, 0xf00000

    and-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x14

    .line 320
    invoke-static {v4}, Ljxl/biff/DVParser$Condition;->getCondition(I)Ljxl/biff/DVParser$Condition;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    .line 322
    sget v4, Ljxl/biff/DVParser;->STRING_LIST_GIVEN_MASK:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Ljxl/biff/DVParser;->stringListGiven:Z

    .line 323
    sget v4, Ljxl/biff/DVParser;->EMPTY_CELLS_ALLOWED_MASK:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    .line 324
    sget v4, Ljxl/biff/DVParser;->SUPPRESS_ARROW_MASK:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v0, Ljxl/biff/DVParser;->suppressArrow:Z

    .line 325
    sget v4, Ljxl/biff/DVParser;->SHOW_PROMPT_MASK:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v0, Ljxl/biff/DVParser;->showPrompt:Z

    .line 326
    sget v4, Ljxl/biff/DVParser;->SHOW_ERROR_MASK:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v0, Ljxl/biff/DVParser;->showError:Z

    .line 329
    aget-byte v3, v1, v6

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    const/4 v4, 0x7

    const/4 v10, 0x6

    if-lez v3, :cond_6

    .line 330
    aget-byte v11, v1, v10

    if-nez v11, :cond_6

    .line 332
    invoke-static {p1, v3, v4, v8}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    add-int/2addr v3, v7

    add-int/lit8 v10, v3, 0x4

    goto :goto_6

    :cond_6
    if-lez v3, :cond_7

    .line 337
    invoke-static {p1, v3, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    add-int v10, v6, v3

    .line 345
    :cond_7
    :goto_6
    aget-byte v3, v1, v10

    add-int/lit8 v4, v10, 0x1

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    if-lez v3, :cond_8

    add-int/lit8 v4, v10, 0x2

    .line 346
    aget-byte v4, v1, v4

    if-nez v4, :cond_8

    add-int/lit8 v4, v10, 0x3

    .line 348
    invoke-static {p1, v3, v4, v8}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    goto :goto_7

    :cond_8
    if-lez v3, :cond_9

    add-int/lit8 v4, v10, 0x3

    .line 353
    invoke-static {p1, v3, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    :goto_7
    add-int/2addr v3, v7

    add-int/2addr v10, v3

    goto :goto_8

    :cond_9
    add-int/2addr v10, v5

    .line 361
    :goto_8
    aget-byte v3, v1, v10

    add-int/lit8 v4, v10, 0x1

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    if-lez v3, :cond_a

    add-int/lit8 v4, v10, 0x2

    .line 362
    aget-byte v4, v1, v4

    if-nez v4, :cond_a

    add-int/lit8 v4, v10, 0x3

    .line 364
    invoke-static {p1, v3, v4, v8}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    goto :goto_9

    :cond_a
    if-lez v3, :cond_b

    add-int/lit8 v4, v10, 0x3

    .line 369
    invoke-static {p1, v3, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    :goto_9
    add-int/2addr v3, v7

    add-int/2addr v10, v3

    goto :goto_a

    :cond_b
    add-int/2addr v10, v5

    .line 377
    :goto_a
    aget-byte v3, v1, v10

    add-int/lit8 v4, v10, 0x1

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    if-lez v3, :cond_c

    add-int/lit8 v4, v10, 0x2

    .line 378
    aget-byte v4, v1, v4

    if-nez v4, :cond_c

    add-int/lit8 v4, v10, 0x3

    .line 380
    invoke-static {p1, v3, v4, v8}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    goto :goto_b

    :cond_c
    if-lez v3, :cond_d

    add-int/lit8 v4, v10, 0x3

    .line 385
    invoke-static {p1, v3, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x2

    :goto_b
    add-int/2addr v3, v7

    add-int/2addr v10, v3

    goto :goto_c

    :cond_d
    add-int/2addr v10, v5

    .line 393
    :goto_c
    aget-byte v3, v1, v10

    add-int/lit8 v4, v10, 0x1

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    add-int/2addr v10, v6

    add-int v4, v10, v3

    .line 398
    aget-byte v7, v1, v4

    add-int/lit8 v11, v4, 0x1

    aget-byte v11, v1, v11

    invoke-static {v7, v11}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v11

    add-int/lit8 v12, v4, 0x4

    add-int v4, v12, v11

    add-int/2addr v4, v5

    .line 405
    aget-byte v6, v1, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    invoke-static {v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    iput v6, v0, Ljxl/biff/DVParser;->row1:I

    add-int/2addr v4, v5

    .line 408
    aget-byte v6, v1, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    invoke-static {v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    iput v6, v0, Ljxl/biff/DVParser;->row2:I

    add-int/2addr v4, v5

    .line 411
    aget-byte v6, v1, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    invoke-static {v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    iput v6, v0, Ljxl/biff/DVParser;->column1:I

    add-int/2addr v4, v5

    .line 414
    aget-byte v5, v1, v4

    add-int/2addr v4, v2

    aget-byte v2, v1, v4

    invoke-static {v5, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, v0, Ljxl/biff/DVParser;->column2:I

    .line 421
    new-instance v13, Ljxl/biff/EmptyCell;

    iget v2, v0, Ljxl/biff/DVParser;->column1:I

    iget v4, v0, Ljxl/biff/DVParser;->row1:I

    invoke-direct {v13, v2, v4}, Ljxl/biff/EmptyCell;-><init>(II)V

    if-eqz v3, :cond_e

    .line 425
    new-array v4, v3, [B

    .line 426
    invoke-static {p1, v10, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    new-instance v10, Ljxl/biff/formula/FormulaParser;

    move-object v2, v10

    move-object v3, v4

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v10, v0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    .line 428
    iget-object v2, v0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->parse()V

    :cond_e
    if-eqz v11, :cond_f

    .line 433
    new-array v2, v11, [B

    .line 434
    invoke-static {p1, v12, v2, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    new-instance v7, Ljxl/biff/formula/FormulaParser;

    move-object v1, v7

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v7, v0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    .line 436
    iget-object v1, v0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->parse()V

    :cond_f
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 44
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
.method public getData()[B
    .locals 7

    .line 596
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [B

    .line 597
    :goto_0
    iget-object v2, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v2

    goto :goto_1

    :cond_1
    new-array v2, v1, [B

    .line 598
    :goto_1
    iget-object v3, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, v0

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    array-length v5, v2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    .line 609
    new-array v3, v3, [B

    .line 616
    iget-object v5, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    invoke-virtual {v5}, Ljxl/biff/DVParser$DVType;->getValue()I

    move-result v5

    or-int/2addr v5, v1

    .line 617
    iget-object v6, p0, Ljxl/biff/DVParser;->errorStyle:Ljxl/biff/DVParser$ErrorStyle;

    invoke-virtual {v6}, Ljxl/biff/DVParser$ErrorStyle;->getValue()I

    move-result v6

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 618
    iget-object v6, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    invoke-virtual {v6}, Ljxl/biff/DVParser$Condition;->getValue()I

    move-result v6

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v5, v6

    .line 620
    iget-boolean v6, p0, Ljxl/biff/DVParser;->stringListGiven:Z

    if-eqz v6, :cond_2

    .line 622
    sget v6, Ljxl/biff/DVParser;->STRING_LIST_GIVEN_MASK:I

    or-int/2addr v5, v6

    .line 625
    :cond_2
    iget-boolean v6, p0, Ljxl/biff/DVParser;->emptyCellsAllowed:Z

    if-eqz v6, :cond_3

    .line 627
    sget v6, Ljxl/biff/DVParser;->EMPTY_CELLS_ALLOWED_MASK:I

    or-int/2addr v5, v6

    .line 630
    :cond_3
    iget-boolean v6, p0, Ljxl/biff/DVParser;->suppressArrow:Z

    if-eqz v6, :cond_4

    .line 632
    sget v6, Ljxl/biff/DVParser;->SUPPRESS_ARROW_MASK:I

    or-int/2addr v5, v6

    .line 635
    :cond_4
    iget-boolean v6, p0, Ljxl/biff/DVParser;->showPrompt:Z

    if-eqz v6, :cond_5

    .line 637
    sget v6, Ljxl/biff/DVParser;->SHOW_PROMPT_MASK:I

    or-int/2addr v5, v6

    .line 640
    :cond_5
    iget-boolean v6, p0, Ljxl/biff/DVParser;->showError:Z

    if-eqz v6, :cond_6

    .line 642
    sget v6, Ljxl/biff/DVParser;->SHOW_ERROR_MASK:I

    or-int/2addr v5, v6

    .line 646
    :cond_6
    invoke-static {v5, v3, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 649
    iget-object v5, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v5, 0x6

    .line 652
    iget-object v6, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 653
    iget-object v6, p0, Ljxl/biff/DVParser;->promptTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 655
    iget-object v6, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 658
    iget-object v6, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 659
    iget-object v6, p0, Ljxl/biff/DVParser;->errorTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 661
    iget-object v6, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 664
    iget-object v6, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 665
    iget-object v6, p0, Ljxl/biff/DVParser;->promptText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 667
    iget-object v6, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 670
    iget-object v6, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 671
    iget-object v6, p0, Ljxl/biff/DVParser;->errorText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 674
    array-length v6, v0

    invoke-static {v6, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/2addr v5, v4

    .line 677
    array-length v6, v0

    invoke-static {v0, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    array-length v0, v0

    add-int/2addr v5, v0

    .line 681
    array-length v0, v2

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/2addr v5, v4

    .line 684
    array-length v0, v2

    invoke-static {v2, v1, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    array-length v0, v2

    add-int/2addr v5, v0

    const/4 v0, 0x1

    .line 688
    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 691
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 694
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 697
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v5, v5, 0x2

    .line 700
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v3
.end method

.method public getFirstColumn()I
    .locals 1

    .line 825
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 845
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 835
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 855
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    return v0
.end method

.method getValidationFormula()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    sget-object v1, Ljxl/biff/DVParser;->LIST:Ljxl/biff/DVParser$DVType;

    if-ne v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 871
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    .line 872
    iget-object v1, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 873
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ljxl/biff/DVParser;->condition:Ljxl/biff/DVParser$Condition;

    invoke-virtual {v3, v0, v1}, Ljxl/biff/DVParser$Condition;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; x "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljxl/biff/DVParser;->type:Ljxl/biff/DVParser$DVType;

    invoke-virtual {v0}, Ljxl/biff/DVParser$DVType;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertColumn(I)V
    .locals 3

    .line 741
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 746
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 751
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    if-lt v0, p1, :cond_2

    add-int/2addr v0, v2

    .line 753
    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 756
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    if-lt v0, p1, :cond_3

    add-int/2addr v0, v2

    .line 758
    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    :cond_3
    return-void
.end method

.method public insertRow(I)V
    .locals 3

    .line 713
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 718
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 723
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    if-lt v0, p1, :cond_2

    add-int/2addr v0, v2

    .line 725
    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 728
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    if-lt v0, p1, :cond_3

    add-int/2addr v0, v2

    .line 730
    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    :cond_3
    return-void
.end method

.method public removeColumn(I)V
    .locals 3

    .line 797
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 802
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 807
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->column1:I

    if-le v0, p1, :cond_2

    sub-int/2addr v0, v2

    .line 809
    iput v0, p0, Ljxl/biff/DVParser;->column1:I

    .line 812
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->column2:I

    if-lt v0, p1, :cond_3

    sub-int/2addr v0, v2

    .line 814
    iput v0, p0, Ljxl/biff/DVParser;->column2:I

    :cond_3
    return-void
.end method

.method public removeRow(I)V
    .locals 3

    .line 769
    iget-object v0, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 774
    :cond_0
    iget-object v0, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {v0, v1, p1, v2}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 779
    :cond_1
    iget v0, p0, Ljxl/biff/DVParser;->row1:I

    if-le v0, p1, :cond_2

    sub-int/2addr v0, v2

    .line 781
    iput v0, p0, Ljxl/biff/DVParser;->row1:I

    .line 784
    :cond_2
    iget v0, p0, Ljxl/biff/DVParser;->row2:I

    if-lt v0, p1, :cond_3

    sub-int/2addr v0, v2

    .line 786
    iput v0, p0, Ljxl/biff/DVParser;->row2:I

    :cond_3
    return-void
.end method

.method public setCell(IILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 885
    iput p2, p0, Ljxl/biff/DVParser;->row1:I

    .line 886
    iput p2, p0, Ljxl/biff/DVParser;->row2:I

    .line 887
    iput p1, p0, Ljxl/biff/DVParser;->column1:I

    .line 888
    iput p1, p0, Ljxl/biff/DVParser;->column2:I

    .line 890
    new-instance p1, Ljxl/biff/formula/FormulaParser;

    iget-object p2, p0, Ljxl/biff/DVParser;->formula1String:Ljava/lang/String;

    invoke-direct {p1, p2, p3, p4, p5}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    .line 892
    iget-object p1, p0, Ljxl/biff/DVParser;->formula1:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 894
    iget-object p1, p0, Ljxl/biff/DVParser;->formula2String:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 896
    new-instance p2, Ljxl/biff/formula/FormulaParser;

    invoke-direct {p2, p1, p3, p4, p5}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object p2, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    .line 898
    iget-object p1, p0, Ljxl/biff/DVParser;->formula2:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->parse()V

    :cond_0
    return-void
.end method
