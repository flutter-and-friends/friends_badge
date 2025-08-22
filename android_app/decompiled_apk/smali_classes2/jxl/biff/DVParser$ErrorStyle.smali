.class public Ljxl/biff/DVParser$ErrorStyle;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/DVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorStyle"
.end annotation


# static fields
.field private static types:[Ljxl/biff/DVParser$ErrorStyle;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DVParser$ErrorStyle;

    .line 93
    sput-object v0, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Ljxl/biff/DVParser$ErrorStyle;->value:I

    .line 98
    sget-object p1, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    .line 99
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/biff/DVParser$ErrorStyle;

    sput-object v0, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    .line 100
    sget-object v0, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    sget-object v0, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    array-length p1, p1

    aput-object p0, v0, p1

    return-void
.end method

.method static getErrorStyle(I)Ljxl/biff/DVParser$ErrorStyle;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    :goto_0
    sget-object v2, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 109
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/DVParser$ErrorStyle;->value:I

    if-ne v3, p0, :cond_0

    .line 111
    aget-object v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 119
    iget v0, p0, Ljxl/biff/DVParser$ErrorStyle;->value:I

    return v0
.end method
