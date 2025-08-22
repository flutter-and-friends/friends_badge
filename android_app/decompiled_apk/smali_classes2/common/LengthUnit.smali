.class public Lcommon/LengthUnit;
.super Lcommon/BaseUnit;
.source "LengthUnit.java"


# static fields
.field public static CENTIMETRES:Lcommon/LengthUnit;

.field public static INCHES:Lcommon/LengthUnit;

.field public static METRES:Lcommon/LengthUnit;

.field public static POINTS:Lcommon/LengthUnit;

.field private static count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcommon/LengthUnit;

    invoke-direct {v0}, Lcommon/LengthUnit;-><init>()V

    sput-object v0, Lcommon/LengthUnit;->POINTS:Lcommon/LengthUnit;

    .line 41
    new-instance v0, Lcommon/LengthUnit;

    invoke-direct {v0}, Lcommon/LengthUnit;-><init>()V

    sput-object v0, Lcommon/LengthUnit;->METRES:Lcommon/LengthUnit;

    .line 42
    new-instance v0, Lcommon/LengthUnit;

    invoke-direct {v0}, Lcommon/LengthUnit;-><init>()V

    sput-object v0, Lcommon/LengthUnit;->CENTIMETRES:Lcommon/LengthUnit;

    .line 43
    new-instance v0, Lcommon/LengthUnit;

    invoke-direct {v0}, Lcommon/LengthUnit;-><init>()V

    sput-object v0, Lcommon/LengthUnit;->INCHES:Lcommon/LengthUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    sget v0, Lcommon/LengthUnit;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcommon/LengthUnit;->count:I

    invoke-direct {p0, v0}, Lcommon/BaseUnit;-><init>(I)V

    return-void
.end method

.method public static getCount()I
    .locals 1

    .line 37
    sget v0, Lcommon/LengthUnit;->count:I

    return v0
.end method
