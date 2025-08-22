.class public final Ljxl/format/ScriptStyle;
.super Ljava/lang/Object;
.source "ScriptStyle.java"


# static fields
.field public static final NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

.field public static final SUBSCRIPT:Ljxl/format/ScriptStyle;

.field public static final SUPERSCRIPT:Ljxl/format/ScriptStyle;

.field private static styles:[Ljxl/format/ScriptStyle;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/ScriptStyle;

    .line 43
    sput-object v1, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    .line 104
    new-instance v1, Ljxl/format/ScriptStyle;

    const-string v2, "normal"

    invoke-direct {v1, v0, v2}, Ljxl/format/ScriptStyle;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    .line 105
    new-instance v0, Ljxl/format/ScriptStyle;

    const/4 v1, 0x1

    const-string v2, "super"

    invoke-direct {v0, v1, v2}, Ljxl/format/ScriptStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/ScriptStyle;->SUPERSCRIPT:Ljxl/format/ScriptStyle;

    .line 106
    new-instance v0, Ljxl/format/ScriptStyle;

    const/4 v1, 0x2

    const-string v2, "sub"

    invoke-direct {v0, v1, v2}, Ljxl/format/ScriptStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/ScriptStyle;->SUBSCRIPT:Ljxl/format/ScriptStyle;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Ljxl/format/ScriptStyle;->value:I

    .line 55
    iput-object p2, p0, Ljxl/format/ScriptStyle;->string:Ljava/lang/String;

    .line 57
    sget-object p1, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    .line 58
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/ScriptStyle;

    sput-object p2, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    .line 59
    sget-object p2, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    sget-object p2, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getStyle(I)Ljxl/format/ScriptStyle;
    .locals 3

    const/4 v0, 0x0

    .line 92
    :goto_0
    sget-object v1, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 94
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/ScriptStyle;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 96
    sget-object p0, Ljxl/format/ScriptStyle;->styles:[Ljxl/format/ScriptStyle;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    sget-object p0, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Ljxl/format/ScriptStyle;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 71
    iget v0, p0, Ljxl/format/ScriptStyle;->value:I

    return v0
.end method
