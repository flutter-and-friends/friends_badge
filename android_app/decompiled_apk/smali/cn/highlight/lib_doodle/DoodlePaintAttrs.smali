.class public Lcn/highlight/lib_doodle/DoodlePaintAttrs;
.super Ljava/lang/Object;
.source "DoodlePaintAttrs.java"


# instance fields
.field private mColor:Lcn/highlight/lib_doodle/IDoodleColor;

.field private mPen:Lcn/highlight/lib_doodle/IDoodlePen;

.field private mShape:Lcn/highlight/lib_doodle/IDoodleShape;

.field private mSize:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcn/highlight/lib_doodle/DoodlePaintAttrs;
    .locals 1

    .line 51
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;

    invoke-direct {v0}, Lcn/highlight/lib_doodle/DoodlePaintAttrs;-><init>()V

    return-object v0
.end method


# virtual methods
.method public color(Lcn/highlight/lib_doodle/IDoodleColor;)Lcn/highlight/lib_doodle/DoodlePaintAttrs;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    return-object p0
.end method

.method public color()Lcn/highlight/lib_doodle/IDoodleColor;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    return-object v0
.end method

.method public pen(Lcn/highlight/lib_doodle/IDoodlePen;)Lcn/highlight/lib_doodle/DoodlePaintAttrs;
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    return-object p0
.end method

.method public pen()Lcn/highlight/lib_doodle/IDoodlePen;
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    return-object v0
.end method

.method public shape(Lcn/highlight/lib_doodle/IDoodleShape;)Lcn/highlight/lib_doodle/DoodlePaintAttrs;
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    return-object p0
.end method

.method public shape()Lcn/highlight/lib_doodle/IDoodleShape;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    return-object v0
.end method

.method public size()F
    .locals 1

    .line 33
    iget v0, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mSize:F

    return v0
.end method

.method public size(F)Lcn/highlight/lib_doodle/DoodlePaintAttrs;
    .locals 0

    .line 37
    iput p1, p0, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->mSize:F

    return-object p0
.end method
