.class public final Ljxl/format/RGB;
.super Ljava/lang/Object;
.source "RGB.java"


# instance fields
.field private blue:I

.field private green:I

.field private red:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Ljxl/format/RGB;->red:I

    .line 53
    iput p2, p0, Ljxl/format/RGB;->green:I

    .line 54
    iput p3, p0, Ljxl/format/RGB;->blue:I

    return-void
.end method


# virtual methods
.method public getBlue()I
    .locals 1

    .line 84
    iget v0, p0, Ljxl/format/RGB;->blue:I

    return v0
.end method

.method public getGreen()I
    .locals 1

    .line 74
    iget v0, p0, Ljxl/format/RGB;->green:I

    return v0
.end method

.method public getRed()I
    .locals 1

    .line 64
    iget v0, p0, Ljxl/format/RGB;->red:I

    return v0
.end method
