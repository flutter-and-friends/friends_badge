.class public Ljxl/biff/DVParser$DVType;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/DVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DVType"
.end annotation


# static fields
.field private static types:[Ljxl/biff/DVParser$DVType;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DVParser$DVType;

    .line 52
    sput-object v0, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Ljxl/biff/DVParser$DVType;->value:I

    .line 57
    iput-object p2, p0, Ljxl/biff/DVParser$DVType;->desc:Ljava/lang/String;

    .line 58
    sget-object p1, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    .line 59
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/DVParser$DVType;

    sput-object p2, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    .line 60
    sget-object p2, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    sget-object p2, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method static getType(I)Ljxl/biff/DVParser$DVType;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_0
    sget-object v2, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 69
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/DVParser$DVType;->value:I

    if-ne v3, p0, :cond_0

    .line 71
    aget-object v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ljxl/biff/DVParser$DVType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 79
    iget v0, p0, Ljxl/biff/DVParser$DVType;->value:I

    return v0
.end method
