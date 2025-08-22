.class public Lcn/highlight/lib_doodle/DoodleRecord;
.super Ljava/lang/Object;
.source "DoodleRecord.java"


# instance fields
.field private bgColor:I

.field private doodleItem:Lcn/highlight/lib_doodle/IDoodleItem;

.field private effects:I

.field private fgColor:I

.field private height:I

.field private identity:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColor:I

.field private mIDoodlePen:I

.field private mIsNeedClipOutside:Z

.field private mLocationX:F

.field private mLocationY:F

.field private mPivotX:F

.field private mPivotY:F

.field private mRotate:F

.field private mScale:F

.field private mSize:F

.field private mText0:Ljava/lang/String;

.field private mText1:Ljava/lang/String;

.field private mTextBgColor:I

.field private mTextBold:I

.field private mTextItalic:I

.field private mTextStyle:Ljava/lang/String;

.field private mTextUnderline:I

.field private shape1:I

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .line 204
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->bgColor:I

    return v0
.end method

.method public getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->doodleItem:Lcn/highlight/lib_doodle/IDoodleItem;

    return-object v0
.end method

.method public getEffects()I
    .locals 1

    .line 244
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->effects:I

    return v0
.end method

.method public getFgColor()I
    .locals 1

    .line 212
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->fgColor:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 236
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->height:I

    return v0
.end method

.method public getIdentity()I
    .locals 1

    .line 36
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->identity:I

    return v0
.end method

.method public getShape1()I
    .locals 1

    .line 220
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->shape1:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 44
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 228
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->width:I

    return v0
.end method

.method public getmBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmColor()I
    .locals 1

    .line 76
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mColor:I

    return v0
.end method

.method public getmIDoodlePen()I
    .locals 1

    .line 60
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mIDoodlePen:I

    return v0
.end method

.method public getmLocationX()F
    .locals 1

    .line 84
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mLocationX:F

    return v0
.end method

.method public getmLocationY()F
    .locals 1

    .line 92
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mLocationY:F

    return v0
.end method

.method public getmPivotX()F
    .locals 1

    .line 100
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mPivotX:F

    return v0
.end method

.method public getmPivotY()F
    .locals 1

    .line 108
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mPivotY:F

    return v0
.end method

.method public getmRotate()F
    .locals 1

    .line 116
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mRotate:F

    return v0
.end method

.method public getmScale()F
    .locals 1

    .line 132
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mScale:F

    return v0
.end method

.method public getmSize()F
    .locals 1

    .line 68
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mSize:F

    return v0
.end method

.method public getmText0()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mText0:Ljava/lang/String;

    return-object v0
.end method

.method public getmText1()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method public getmTextBgColor()I
    .locals 1

    .line 164
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextBgColor:I

    return v0
.end method

.method public getmTextBold()I
    .locals 1

    .line 172
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextBold:I

    return v0
.end method

.method public getmTextItalic()I
    .locals 1

    .line 180
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextItalic:I

    return v0
.end method

.method public getmTextStyle()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getmTextUnderline()I
    .locals 1

    .line 188
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextUnderline:I

    return v0
.end method

.method public ismIsNeedClipOutside()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mIsNeedClipOutside:Z

    return v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->bgColor:I

    return-void
.end method

.method public setDoodleItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->doodleItem:Lcn/highlight/lib_doodle/IDoodleItem;

    return-void
.end method

.method public setEffects(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->effects:I

    return-void
.end method

.method public setFgColor(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->fgColor:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->height:I

    return-void
.end method

.method public setIdentity(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->identity:I

    return-void
.end method

.method public setShape1(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->shape1:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->type:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->width:I

    return-void
.end method

.method public setmBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setmColor(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mColor:I

    return-void
.end method

.method public setmIDoodlePen(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mIDoodlePen:I

    return-void
.end method

.method public setmIsNeedClipOutside(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mIsNeedClipOutside:Z

    return-void
.end method

.method public setmLocationX(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mLocationX:F

    return-void
.end method

.method public setmLocationY(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mLocationY:F

    return-void
.end method

.method public setmPivotX(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mPivotX:F

    return-void
.end method

.method public setmPivotY(F)V
    .locals 0

    .line 112
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mPivotY:F

    return-void
.end method

.method public setmRotate(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mRotate:F

    return-void
.end method

.method public setmScale(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mScale:F

    return-void
.end method

.method public setmSize(F)V
    .locals 0

    .line 72
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mSize:F

    return-void
.end method

.method public setmText0(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mText0:Ljava/lang/String;

    return-void
.end method

.method public setmText1(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mText1:Ljava/lang/String;

    return-void
.end method

.method public setmTextBgColor(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextBgColor:I

    return-void
.end method

.method public setmTextBold(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextBold:I

    return-void
.end method

.method public setmTextItalic(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextItalic:I

    return-void
.end method

.method public setmTextStyle(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextStyle:Ljava/lang/String;

    return-void
.end method

.method public setmTextUnderline(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleRecord;->mTextUnderline:I

    return-void
.end method
