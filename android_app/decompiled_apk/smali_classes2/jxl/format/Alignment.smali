.class public Ljxl/format/Alignment;
.super Ljava/lang/Object;
.source "Alignment.java"


# static fields
.field public static CENTRE:Ljxl/format/Alignment;

.field public static FILL:Ljxl/format/Alignment;

.field public static GENERAL:Ljxl/format/Alignment;

.field public static JUSTIFY:Ljxl/format/Alignment;

.field public static LEFT:Ljxl/format/Alignment;

.field public static RIGHT:Ljxl/format/Alignment;

.field private static alignments:[Ljxl/format/Alignment;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/Alignment;

    .line 41
    sput-object v1, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    .line 103
    new-instance v1, Ljxl/format/Alignment;

    const-string v2, "general"

    invoke-direct {v1, v0, v2}, Ljxl/format/Alignment;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/Alignment;->GENERAL:Ljxl/format/Alignment;

    .line 108
    new-instance v0, Ljxl/format/Alignment;

    const/4 v1, 0x1

    const-string v2, "left"

    invoke-direct {v0, v1, v2}, Ljxl/format/Alignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Alignment;->LEFT:Ljxl/format/Alignment;

    .line 112
    new-instance v0, Ljxl/format/Alignment;

    const/4 v1, 0x2

    const-string v2, "centre"

    invoke-direct {v0, v1, v2}, Ljxl/format/Alignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    .line 116
    new-instance v0, Ljxl/format/Alignment;

    const/4 v1, 0x3

    const-string v2, "right"

    invoke-direct {v0, v1, v2}, Ljxl/format/Alignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Alignment;->RIGHT:Ljxl/format/Alignment;

    .line 120
    new-instance v0, Ljxl/format/Alignment;

    const/4 v1, 0x4

    const-string v2, "fill"

    invoke-direct {v0, v1, v2}, Ljxl/format/Alignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Alignment;->FILL:Ljxl/format/Alignment;

    .line 124
    new-instance v0, Ljxl/format/Alignment;

    const/4 v1, 0x5

    const-string v2, "justify"

    invoke-direct {v0, v1, v2}, Ljxl/format/Alignment;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Alignment;->JUSTIFY:Ljxl/format/Alignment;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Ljxl/format/Alignment;->value:I

    .line 52
    iput-object p2, p0, Ljxl/format/Alignment;->string:Ljava/lang/String;

    .line 54
    sget-object p1, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    .line 55
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/Alignment;

    sput-object p2, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    .line 56
    sget-object p2, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    sget-object p2, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getAlignment(I)Ljxl/format/Alignment;
    .locals 3

    const/4 v0, 0x0

    .line 89
    :goto_0
    sget-object v1, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 91
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/Alignment;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 93
    sget-object p0, Ljxl/format/Alignment;->alignments:[Ljxl/format/Alignment;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    sget-object p0, Ljxl/format/Alignment;->GENERAL:Ljxl/format/Alignment;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Ljxl/format/Alignment;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 68
    iget v0, p0, Ljxl/format/Alignment;->value:I

    return v0
.end method
