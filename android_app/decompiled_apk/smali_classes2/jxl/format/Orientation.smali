.class public final Ljxl/format/Orientation;
.super Ljava/lang/Object;
.source "Orientation.java"


# static fields
.field public static HORIZONTAL:Ljxl/format/Orientation;

.field public static MINUS_45:Ljxl/format/Orientation;

.field public static MINUS_90:Ljxl/format/Orientation;

.field public static PLUS_45:Ljxl/format/Orientation;

.field public static PLUS_90:Ljxl/format/Orientation;

.field public static STACKED:Ljxl/format/Orientation;

.field public static VERTICAL:Ljxl/format/Orientation;

.field private static orientations:[Ljxl/format/Orientation;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/Orientation;

    .line 40
    sput-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    .line 98
    new-instance v1, Ljxl/format/Orientation;

    const-string v2, "horizontal"

    invoke-direct {v1, v0, v2}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/Orientation;->HORIZONTAL:Ljxl/format/Orientation;

    .line 103
    new-instance v0, Ljxl/format/Orientation;

    const/16 v1, 0xff

    const-string v2, "vertical"

    invoke-direct {v0, v1, v2}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->VERTICAL:Ljxl/format/Orientation;

    .line 108
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0x5a

    const-string v3, "up 90"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->PLUS_90:Ljxl/format/Orientation;

    .line 113
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0xb4

    const-string v3, "down 90"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->MINUS_90:Ljxl/format/Orientation;

    .line 118
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0x2d

    const-string v3, "up 45"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->PLUS_45:Ljxl/format/Orientation;

    .line 123
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0x87

    const-string v3, "down 45"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->MINUS_45:Ljxl/format/Orientation;

    .line 128
    new-instance v0, Ljxl/format/Orientation;

    const-string v2, "stacked"

    invoke-direct {v0, v1, v2}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->STACKED:Ljxl/format/Orientation;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Ljxl/format/Orientation;->value:I

    iput-object p2, p0, Ljxl/format/Orientation;->string:Ljava/lang/String;

    .line 51
    sget-object p1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    .line 52
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/Orientation;

    sput-object p2, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    .line 53
    sget-object p2, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    sget-object p2, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getOrientation(I)Ljxl/format/Orientation;
    .locals 3

    const/4 v0, 0x0

    .line 83
    :goto_0
    sget-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/Orientation;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 87
    sget-object p0, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    sget-object p0, Ljxl/format/Orientation;->HORIZONTAL:Ljxl/format/Orientation;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Ljxl/format/Orientation;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 64
    iget v0, p0, Ljxl/format/Orientation;->value:I

    return v0
.end method
