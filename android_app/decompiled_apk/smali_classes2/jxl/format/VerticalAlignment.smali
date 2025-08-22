.class public Ljxl/format/VerticalAlignment;
.super Ljava/lang/Object;
.source "VerticalAlignment.java"


# static fields
.field public static BOTTOM:Ljxl/format/VerticalAlignment;

.field public static CENTRE:Ljxl/format/VerticalAlignment;

.field public static JUSTIFY:Ljxl/format/VerticalAlignment;

.field public static TOP:Ljxl/format/VerticalAlignment;

.field private static alignments:[Ljxl/format/VerticalAlignment;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/VerticalAlignment;

    .line 40
    sput-object v1, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    .line 100
    new-instance v1, Ljxl/format/VerticalAlignment;

    const-string v2, "top"

    invoke-direct {v1, v0, v2}, Ljxl/format/VerticalAlignment;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/VerticalAlignment;->TOP:Ljxl/format/VerticalAlignment;

    .line 105
    new-instance v0, Ljxl/format/VerticalAlignment;

    const/4 v1, 0x1

    const-string v2, "centre"

    invoke-direct {v0, v1, v2}, Ljxl/format/VerticalAlignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/VerticalAlignment;->CENTRE:Ljxl/format/VerticalAlignment;

    .line 110
    new-instance v0, Ljxl/format/VerticalAlignment;

    const/4 v1, 0x2

    const-string v2, "bottom"

    invoke-direct {v0, v1, v2}, Ljxl/format/VerticalAlignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/VerticalAlignment;->BOTTOM:Ljxl/format/VerticalAlignment;

    .line 115
    new-instance v0, Ljxl/format/VerticalAlignment;

    const/4 v1, 0x3

    const-string v2, "Justify"

    invoke-direct {v0, v1, v2}, Ljxl/format/VerticalAlignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/VerticalAlignment;->JUSTIFY:Ljxl/format/VerticalAlignment;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Ljxl/format/VerticalAlignment;->value:I

    .line 50
    iput-object p2, p0, Ljxl/format/VerticalAlignment;->string:Ljava/lang/String;

    .line 52
    sget-object p1, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    .line 53
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/VerticalAlignment;

    sput-object p2, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    .line 54
    sget-object p2, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    sget-object p2, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getAlignment(I)Ljxl/format/VerticalAlignment;
    .locals 3

    const/4 v0, 0x0

    .line 84
    :goto_0
    sget-object v1, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 86
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/VerticalAlignment;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 88
    sget-object p0, Ljxl/format/VerticalAlignment;->alignments:[Ljxl/format/VerticalAlignment;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    sget-object p0, Ljxl/format/VerticalAlignment;->BOTTOM:Ljxl/format/VerticalAlignment;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Ljxl/format/VerticalAlignment;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 65
    iget v0, p0, Ljxl/format/VerticalAlignment;->value:I

    return v0
.end method
