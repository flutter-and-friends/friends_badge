.class public Ljxl/format/BorderLineStyle;
.super Ljava/lang/Object;
.source "BorderLineStyle.java"


# static fields
.field public static final DASHED:Ljxl/format/BorderLineStyle;

.field public static final DASH_DOT:Ljxl/format/BorderLineStyle;

.field public static final DASH_DOT_DOT:Ljxl/format/BorderLineStyle;

.field public static final DOTTED:Ljxl/format/BorderLineStyle;

.field public static final DOUBLE:Ljxl/format/BorderLineStyle;

.field public static final HAIR:Ljxl/format/BorderLineStyle;

.field public static final MEDIUM:Ljxl/format/BorderLineStyle;

.field public static final MEDIUM_DASHED:Ljxl/format/BorderLineStyle;

.field public static final MEDIUM_DASH_DOT:Ljxl/format/BorderLineStyle;

.field public static final MEDIUM_DASH_DOT_DOT:Ljxl/format/BorderLineStyle;

.field public static final NONE:Ljxl/format/BorderLineStyle;

.field public static final SLANTED_DASH_DOT:Ljxl/format/BorderLineStyle;

.field public static final THICK:Ljxl/format/BorderLineStyle;

.field public static final THIN:Ljxl/format/BorderLineStyle;

.field private static styles:[Ljxl/format/BorderLineStyle;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/BorderLineStyle;

    .line 40
    sput-object v1, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    .line 94
    new-instance v1, Ljxl/format/BorderLineStyle;

    const-string v2, "none"

    invoke-direct {v1, v0, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    .line 96
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x1

    const-string v2, "thin"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    .line 98
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x2

    const-string v2, "medium"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->MEDIUM:Ljxl/format/BorderLineStyle;

    .line 100
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x3

    const-string v2, "dashed"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->DASHED:Ljxl/format/BorderLineStyle;

    .line 102
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x4

    const-string v2, "dotted"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->DOTTED:Ljxl/format/BorderLineStyle;

    .line 104
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x5

    const-string v2, "thick"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    .line 106
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x6

    const-string v2, "double"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->DOUBLE:Ljxl/format/BorderLineStyle;

    .line 108
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/4 v1, 0x7

    const-string v2, "hair"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->HAIR:Ljxl/format/BorderLineStyle;

    .line 110
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/16 v1, 0x8

    const-string v2, "medium dashed"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->MEDIUM_DASHED:Ljxl/format/BorderLineStyle;

    .line 112
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/16 v1, 0x9

    const-string v2, "dash dot"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->DASH_DOT:Ljxl/format/BorderLineStyle;

    .line 114
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/16 v1, 0xa

    const-string v2, "medium dash dot"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->MEDIUM_DASH_DOT:Ljxl/format/BorderLineStyle;

    .line 116
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/16 v1, 0xb

    const-string v2, "Dash dot dot"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->DASH_DOT_DOT:Ljxl/format/BorderLineStyle;

    .line 118
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/16 v1, 0xc

    const-string v2, "Medium dash dot dot"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->MEDIUM_DASH_DOT_DOT:Ljxl/format/BorderLineStyle;

    .line 120
    new-instance v0, Ljxl/format/BorderLineStyle;

    const/16 v1, 0xd

    const-string v2, "Slanted dash dot"

    invoke-direct {v0, v1, v2}, Ljxl/format/BorderLineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/BorderLineStyle;->SLANTED_DASH_DOT:Ljxl/format/BorderLineStyle;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Ljxl/format/BorderLineStyle;->value:I

    .line 49
    iput-object p2, p0, Ljxl/format/BorderLineStyle;->string:Ljava/lang/String;

    .line 51
    sget-object p1, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    .line 52
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/BorderLineStyle;

    sput-object p2, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    .line 53
    sget-object p2, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    sget-object p2, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getStyle(I)Ljxl/format/BorderLineStyle;
    .locals 3

    const/4 v0, 0x0

    .line 83
    :goto_0
    sget-object v1, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/BorderLineStyle;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 87
    sget-object p0, Ljxl/format/BorderLineStyle;->styles:[Ljxl/format/BorderLineStyle;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    sget-object p0, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Ljxl/format/BorderLineStyle;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 64
    iget v0, p0, Ljxl/format/BorderLineStyle;->value:I

    return v0
.end method
