.class final Ljxl/biff/drawing/ShapeType;
.super Ljava/lang/Object;
.source "ShapeType.java"


# static fields
.field public static final HOST_CONTROL:Ljxl/biff/drawing/ShapeType;

.field public static final MIN:Ljxl/biff/drawing/ShapeType;

.field public static final PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

.field public static final TEXT_BOX:Ljxl/biff/drawing/ShapeType;

.field public static final UNKNOWN:Ljxl/biff/drawing/ShapeType;

.field private static types:[Ljxl/biff/drawing/ShapeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/drawing/ShapeType;

    .line 35
    sput-object v1, Ljxl/biff/drawing/ShapeType;->types:[Ljxl/biff/drawing/ShapeType;

    .line 83
    new-instance v1, Ljxl/biff/drawing/ShapeType;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/ShapeType;-><init>(I)V

    sput-object v1, Ljxl/biff/drawing/ShapeType;->MIN:Ljxl/biff/drawing/ShapeType;

    .line 84
    new-instance v0, Ljxl/biff/drawing/ShapeType;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Ljxl/biff/drawing/ShapeType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    .line 85
    new-instance v0, Ljxl/biff/drawing/ShapeType;

    const/16 v1, 0xc9

    invoke-direct {v0, v1}, Ljxl/biff/drawing/ShapeType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/ShapeType;->HOST_CONTROL:Ljxl/biff/drawing/ShapeType;

    .line 86
    new-instance v0, Ljxl/biff/drawing/ShapeType;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Ljxl/biff/drawing/ShapeType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/ShapeType;->TEXT_BOX:Ljxl/biff/drawing/ShapeType;

    .line 87
    new-instance v0, Ljxl/biff/drawing/ShapeType;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljxl/biff/drawing/ShapeType;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Ljxl/biff/drawing/ShapeType;->value:I

    .line 46
    sget-object p1, Ljxl/biff/drawing/ShapeType;->types:[Ljxl/biff/drawing/ShapeType;

    .line 47
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/biff/drawing/ShapeType;

    sput-object v0, Ljxl/biff/drawing/ShapeType;->types:[Ljxl/biff/drawing/ShapeType;

    .line 48
    sget-object v0, Ljxl/biff/drawing/ShapeType;->types:[Ljxl/biff/drawing/ShapeType;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    sget-object v0, Ljxl/biff/drawing/ShapeType;->types:[Ljxl/biff/drawing/ShapeType;

    array-length p1, p1

    aput-object p0, v0, p1

    return-void
.end method

.method static getType(I)Ljxl/biff/drawing/ShapeType;
    .locals 5

    .line 60
    sget-object v0, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 62
    :goto_0
    sget-object v3, Ljxl/biff/drawing/ShapeType;->types:[Ljxl/biff/drawing/ShapeType;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    if-nez v0, :cond_1

    .line 64
    aget-object v4, v3, v1

    iget v4, v4, Ljxl/biff/drawing/ShapeType;->value:I

    if-ne v4, p0, :cond_0

    .line 67
    aget-object v0, v3, v1

    const/4 v2, 0x1

    move-object v2, v0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 80
    iget v0, p0, Ljxl/biff/drawing/ShapeType;->value:I

    return v0
.end method
