.class public Ljxl/biff/BuiltInName;
.super Ljava/lang/Object;
.source "BuiltInName.java"


# static fields
.field public static final AUTO_ACTIVATE:Ljxl/biff/BuiltInName;

.field public static final AUTO_CLOSE:Ljxl/biff/BuiltInName;

.field public static final AUTO_DEACTIVATE:Ljxl/biff/BuiltInName;

.field public static final AUTO_OPEN:Ljxl/biff/BuiltInName;

.field public static final CONSOLIDATE_AREA:Ljxl/biff/BuiltInName;

.field public static final CRITERIA:Ljxl/biff/BuiltInName;

.field public static final DATABASE:Ljxl/biff/BuiltInName;

.field public static final DATA_FORM:Ljxl/biff/BuiltInName;

.field public static final EXTRACT:Ljxl/biff/BuiltInName;

.field public static final FILTER_DATABASE:Ljxl/biff/BuiltInName;

.field public static final PRINT_AREA:Ljxl/biff/BuiltInName;

.field public static final PRINT_TITLES:Ljxl/biff/BuiltInName;

.field public static final RECORDER:Ljxl/biff/BuiltInName;

.field public static final SHEET_TITLE:Ljxl/biff/BuiltInName;

.field private static builtInNames:[Ljxl/biff/BuiltInName;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/BuiltInName;

    .line 40
    sput-object v1, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    .line 92
    new-instance v1, Ljxl/biff/BuiltInName;

    const-string v2, "Consolidate_Area"

    invoke-direct {v1, v2, v0}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljxl/biff/BuiltInName;->CONSOLIDATE_AREA:Ljxl/biff/BuiltInName;

    .line 94
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Auto_Open"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->AUTO_OPEN:Ljxl/biff/BuiltInName;

    .line 96
    new-instance v0, Ljxl/biff/BuiltInName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->AUTO_CLOSE:Ljxl/biff/BuiltInName;

    .line 98
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Extract"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->EXTRACT:Ljxl/biff/BuiltInName;

    .line 100
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Database"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->DATABASE:Ljxl/biff/BuiltInName;

    .line 102
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Criteria"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->CRITERIA:Ljxl/biff/BuiltInName;

    .line 104
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Print_Area"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    .line 106
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Print_Titles"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    .line 108
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Recorder"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->RECORDER:Ljxl/biff/BuiltInName;

    .line 110
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Data_Form"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->DATA_FORM:Ljxl/biff/BuiltInName;

    .line 112
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "Auto_Activate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->AUTO_ACTIVATE:Ljxl/biff/BuiltInName;

    .line 114
    new-instance v0, Ljxl/biff/BuiltInName;

    const/16 v1, 0xb

    const-string v2, "Auto_Deactivate"

    invoke-direct {v0, v2, v1}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->AUTO_DEACTIVATE:Ljxl/biff/BuiltInName;

    .line 116
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v2, "Sheet_Title"

    invoke-direct {v0, v2, v1}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->SHEET_TITLE:Ljxl/biff/BuiltInName;

    .line 118
    new-instance v0, Ljxl/biff/BuiltInName;

    const-string v1, "_FilterDatabase"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljxl/biff/BuiltInName;->FILTER_DATABASE:Ljxl/biff/BuiltInName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljxl/biff/BuiltInName;->name:Ljava/lang/String;

    .line 47
    iput p2, p0, Ljxl/biff/BuiltInName;->value:I

    .line 49
    sget-object p1, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    .line 50
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/BuiltInName;

    sput-object p2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    .line 51
    sget-object p2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    sget-object p2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getBuiltInName(I)Ljxl/biff/BuiltInName;
    .locals 4

    .line 80
    sget-object v0, Ljxl/biff/BuiltInName;->FILTER_DATABASE:Ljxl/biff/BuiltInName;

    const/4 v1, 0x0

    .line 81
    :goto_0
    sget-object v2, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 83
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/biff/BuiltInName;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 85
    sget-object v0, Ljxl/biff/BuiltInName;->builtInNames:[Ljxl/biff/BuiltInName;

    aget-object v0, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Ljxl/biff/BuiltInName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 72
    iget v0, p0, Ljxl/biff/BuiltInName;->value:I

    return v0
.end method
