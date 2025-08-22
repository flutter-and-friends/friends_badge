.class public Ljxl/format/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"


# static fields
.field public static final GRAY_25:Ljxl/format/Pattern;

.field public static final GRAY_50:Ljxl/format/Pattern;

.field public static final GRAY_75:Ljxl/format/Pattern;

.field public static final NONE:Ljxl/format/Pattern;

.field public static final PATTERN1:Ljxl/format/Pattern;

.field public static final PATTERN10:Ljxl/format/Pattern;

.field public static final PATTERN11:Ljxl/format/Pattern;

.field public static final PATTERN12:Ljxl/format/Pattern;

.field public static final PATTERN13:Ljxl/format/Pattern;

.field public static final PATTERN14:Ljxl/format/Pattern;

.field public static final PATTERN2:Ljxl/format/Pattern;

.field public static final PATTERN3:Ljxl/format/Pattern;

.field public static final PATTERN4:Ljxl/format/Pattern;

.field public static final PATTERN5:Ljxl/format/Pattern;

.field public static final PATTERN6:Ljxl/format/Pattern;

.field public static final PATTERN7:Ljxl/format/Pattern;

.field public static final PATTERN8:Ljxl/format/Pattern;

.field public static final PATTERN9:Ljxl/format/Pattern;

.field public static final SOLID:Ljxl/format/Pattern;

.field private static patterns:[Ljxl/format/Pattern;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/Pattern;

    .line 42
    sput-object v1, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    .line 101
    new-instance v1, Ljxl/format/Pattern;

    const-string v2, "None"

    invoke-direct {v1, v0, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    .line 102
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x1

    const-string v2, "Solid"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->SOLID:Ljxl/format/Pattern;

    .line 104
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x2

    const-string v2, "Gray 50%"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->GRAY_50:Ljxl/format/Pattern;

    .line 105
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x3

    const-string v2, "Gray 75%"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->GRAY_75:Ljxl/format/Pattern;

    .line 106
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x4

    const-string v2, "Gray 25%"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->GRAY_25:Ljxl/format/Pattern;

    .line 108
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x5

    const-string v2, "Pattern 1"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN1:Ljxl/format/Pattern;

    .line 109
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x6

    const-string v2, "Pattern 2"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN2:Ljxl/format/Pattern;

    .line 110
    new-instance v0, Ljxl/format/Pattern;

    const/4 v1, 0x7

    const-string v2, "Pattern 3"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN3:Ljxl/format/Pattern;

    .line 111
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0x8

    const-string v2, "Pattern 4"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN4:Ljxl/format/Pattern;

    .line 112
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0x9

    const-string v2, "Pattern 5"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN5:Ljxl/format/Pattern;

    .line 113
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0xa

    const-string v2, "Pattern 6"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN6:Ljxl/format/Pattern;

    .line 114
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0xb

    const-string v2, "Pattern 7"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN7:Ljxl/format/Pattern;

    .line 115
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0xc

    const-string v2, "Pattern 8"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN8:Ljxl/format/Pattern;

    .line 116
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0xd

    const-string v2, "Pattern 9"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN9:Ljxl/format/Pattern;

    .line 117
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0xe

    const-string v2, "Pattern 10"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN10:Ljxl/format/Pattern;

    .line 118
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0xf

    const-string v2, "Pattern 11"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN11:Ljxl/format/Pattern;

    .line 119
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0x10

    const-string v2, "Pattern 12"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN12:Ljxl/format/Pattern;

    .line 120
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0x11

    const-string v2, "Pattern 13"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN13:Ljxl/format/Pattern;

    .line 121
    new-instance v0, Ljxl/format/Pattern;

    const/16 v1, 0x12

    const-string v2, "Pattern 14"

    invoke-direct {v0, v1, v2}, Ljxl/format/Pattern;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Pattern;->PATTERN14:Ljxl/format/Pattern;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Ljxl/format/Pattern;->value:I

    .line 53
    iput-object p2, p0, Ljxl/format/Pattern;->string:Ljava/lang/String;

    .line 55
    sget-object p1, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    .line 56
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/Pattern;

    sput-object p2, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    .line 57
    sget-object p2, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    sget-object p2, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getPattern(I)Ljxl/format/Pattern;
    .locals 3

    const/4 v0, 0x0

    .line 90
    :goto_0
    sget-object v1, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 92
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/Pattern;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 94
    sget-object p0, Ljxl/format/Pattern;->patterns:[Ljxl/format/Pattern;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    sget-object p0, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Ljxl/format/Pattern;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 69
    iget v0, p0, Ljxl/format/Pattern;->value:I

    return v0
.end method
