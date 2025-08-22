.class final Ljxl/biff/drawing/EscherRecordType;
.super Ljava/lang/Object;
.source "EscherRecordType.java"


# static fields
.field public static final BSE:Ljxl/biff/drawing/EscherRecordType;

.field public static final BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

.field public static final CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

.field public static final CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

.field public static final CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

.field public static final DG:Ljxl/biff/drawing/EscherRecordType;

.field public static final DGG:Ljxl/biff/drawing/EscherRecordType;

.field public static final DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

.field public static final DG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

.field public static final OPT:Ljxl/biff/drawing/EscherRecordType;

.field public static final SP:Ljxl/biff/drawing/EscherRecordType;

.field public static final SPGR:Ljxl/biff/drawing/EscherRecordType;

.field public static final SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

.field public static final SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

.field public static final SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

.field public static final UNKNOWN:Ljxl/biff/drawing/EscherRecordType;

.field private static types:[Ljxl/biff/drawing/EscherRecordType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/drawing/EscherRecordType;

    .line 35
    sput-object v1, Ljxl/biff/drawing/EscherRecordType;->types:[Ljxl/biff/drawing/EscherRecordType;

    .line 85
    new-instance v1, Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v1, Ljxl/biff/drawing/EscherRecordType;->UNKNOWN:Ljxl/biff/drawing/EscherRecordType;

    .line 86
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf000

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    .line 88
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf001

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    .line 90
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf002

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->DG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    .line 92
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf003

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    .line 94
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf004

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    .line 97
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf006

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    .line 98
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf007

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    .line 99
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf008

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    .line 100
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf009

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    .line 101
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf00a

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    .line 102
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf00b

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    .line 103
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf010

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    .line 105
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf011

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    .line 107
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf00d

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

    .line 109
    new-instance v0, Ljxl/biff/drawing/EscherRecordType;

    const v1, 0xf11e

    invoke-direct {v0, v1}, Ljxl/biff/drawing/EscherRecordType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Ljxl/biff/drawing/EscherRecordType;->value:I

    .line 46
    sget-object p1, Ljxl/biff/drawing/EscherRecordType;->types:[Ljxl/biff/drawing/EscherRecordType;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/biff/drawing/EscherRecordType;

    .line 47
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    sget-object p1, Ljxl/biff/drawing/EscherRecordType;->types:[Ljxl/biff/drawing/EscherRecordType;

    array-length p1, p1

    aput-object p0, v0, p1

    .line 49
    sput-object v0, Ljxl/biff/drawing/EscherRecordType;->types:[Ljxl/biff/drawing/EscherRecordType;

    return-void
.end method

.method public static getType(I)Ljxl/biff/drawing/EscherRecordType;
    .locals 4

    .line 71
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->UNKNOWN:Ljxl/biff/drawing/EscherRecordType;

    const/4 v1, 0x0

    .line 73
    :goto_0
    sget-object v2, Ljxl/biff/drawing/EscherRecordType;->types:[Ljxl/biff/drawing/EscherRecordType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 75
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/drawing/EscherRecordType;->value:I

    if-ne p0, v3, :cond_0

    .line 77
    aget-object v0, v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 59
    iget v0, p0, Ljxl/biff/drawing/EscherRecordType;->value:I

    return v0
.end method
