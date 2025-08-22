.class public final Ljxl/CellType;
.super Ljava/lang/Object;
.source "CellType.java"


# static fields
.field public static final BOOLEAN:Ljxl/CellType;

.field public static final BOOLEAN_FORMULA:Ljxl/CellType;

.field public static final DATE:Ljxl/CellType;

.field public static final DATE_FORMULA:Ljxl/CellType;

.field public static final EMPTY:Ljxl/CellType;

.field public static final ERROR:Ljxl/CellType;

.field public static final FORMULA_ERROR:Ljxl/CellType;

.field public static final LABEL:Ljxl/CellType;

.field public static final NUMBER:Ljxl/CellType;

.field public static final NUMBER_FORMULA:Ljxl/CellType;

.field public static final STRING_FORMULA:Ljxl/CellType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljxl/CellType;

    const-string v1, "Empty"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    .line 57
    new-instance v0, Ljxl/CellType;

    const-string v1, "Label"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    .line 60
    new-instance v0, Ljxl/CellType;

    const-string v1, "Number"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    .line 63
    new-instance v0, Ljxl/CellType;

    const-string v1, "Boolean"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    .line 66
    new-instance v0, Ljxl/CellType;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    .line 69
    new-instance v0, Ljxl/CellType;

    const-string v1, "Numerical Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    .line 73
    new-instance v0, Ljxl/CellType;

    const-string v1, "Date Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    .line 76
    new-instance v0, Ljxl/CellType;

    const-string v1, "String Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    .line 79
    new-instance v0, Ljxl/CellType;

    const-string v1, "Boolean Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    .line 83
    new-instance v0, Ljxl/CellType;

    const-string v1, "Formula Error"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    .line 86
    new-instance v0, Ljxl/CellType;

    const-string v1, "Date"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->DATE:Ljxl/CellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ljxl/CellType;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Ljxl/CellType;->description:Ljava/lang/String;

    return-object v0
.end method
