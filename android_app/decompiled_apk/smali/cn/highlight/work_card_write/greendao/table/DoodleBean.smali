.class public Lcn/highlight/work_card_write/greendao/table/DoodleBean;
.super Ljava/lang/Object;
.source "DoodleBean.java"


# instance fields
.field private YL1:Ljava/lang/String;

.field private YL2:Ljava/lang/String;

.field private YL3:Ljava/lang/String;

.field private bgColor:I

.field private effects:I

.field private fgColor:I

.field private height:I

.field private id:Ljava/lang/Long;

.field private imageName:Ljava/lang/String;

.field private mBitmap:[B

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

.field private mText:Ljava/lang/String;

.field private mText0:Ljava/lang/String;

.field private mTextBgColor:I

.field private mTextBold:I

.field private mTextItalic:I

.field private mTextStyle:Ljava/lang/String;

.field private mTextUnderline:I

.field private shape1:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;IFIFFFFFZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII[BIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 45
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 46
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->imageName:Ljava/lang/String;

    move v1, p3

    .line 47
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mIDoodlePen:I

    move v1, p4

    .line 48
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mSize:F

    move v1, p5

    .line 49
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mColor:I

    move v1, p6

    .line 50
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mLocationX:F

    move v1, p7

    .line 51
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mLocationY:F

    move v1, p8

    .line 52
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mPivotX:F

    move v1, p9

    .line 53
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mPivotY:F

    move v1, p10

    .line 54
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mRotate:F

    move v1, p11

    .line 55
    iput-boolean v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mIsNeedClipOutside:Z

    move v1, p12

    .line 56
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mScale:F

    move-object v1, p13

    .line 57
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mText0:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 58
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mText:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 59
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextStyle:Ljava/lang/String;

    move/from16 v1, p16

    .line 60
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextBgColor:I

    move/from16 v1, p17

    .line 61
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextBold:I

    move/from16 v1, p18

    .line 62
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextItalic:I

    move/from16 v1, p19

    .line 63
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextUnderline:I

    move-object/from16 v1, p20

    .line 64
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mBitmap:[B

    move/from16 v1, p21

    .line 65
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->bgColor:I

    move/from16 v1, p22

    .line 66
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->fgColor:I

    move/from16 v1, p23

    .line 67
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->shape1:I

    move/from16 v1, p24

    .line 68
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->width:I

    move/from16 v1, p25

    .line 69
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->height:I

    move/from16 v1, p26

    .line 70
    iput v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->effects:I

    move-object/from16 v1, p27

    .line 71
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL1:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 72
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL2:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 73
    iput-object v1, v0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .line 217
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->bgColor:I

    return v0
.end method

.method public getEffects()I
    .locals 1

    .line 305
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->effects:I

    return v0
.end method

.method public getFgColor()I
    .locals 1

    .line 225
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->fgColor:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 297
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->height:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMBitmap()[B
    .locals 1

    .line 193
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mBitmap:[B

    return-object v0
.end method

.method public getMColor()I
    .locals 1

    .line 113
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mColor:I

    return v0
.end method

.method public getMIDoodlePen()I
    .locals 1

    .line 97
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mIDoodlePen:I

    return v0
.end method

.method public getMIsNeedClipOutside()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mIsNeedClipOutside:Z

    return v0
.end method

.method public getMLocationX()F
    .locals 1

    .line 121
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mLocationX:F

    return v0
.end method

.method public getMLocationY()F
    .locals 1

    .line 129
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mLocationY:F

    return v0
.end method

.method public getMPivotX()F
    .locals 1

    .line 137
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mPivotX:F

    return v0
.end method

.method public getMPivotY()F
    .locals 1

    .line 145
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mPivotY:F

    return v0
.end method

.method public getMRotate()F
    .locals 1

    .line 153
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mRotate:F

    return v0
.end method

.method public getMScale()F
    .locals 1

    .line 169
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mScale:F

    return v0
.end method

.method public getMSize()F
    .locals 1

    .line 105
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mSize:F

    return v0
.end method

.method public getMText()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getMText0()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mText0:Ljava/lang/String;

    return-object v0
.end method

.method public getMTextBgColor()I
    .locals 1

    .line 201
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextBgColor:I

    return v0
.end method

.method public getMTextBold()I
    .locals 1

    .line 233
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextBold:I

    return v0
.end method

.method public getMTextItalic()I
    .locals 1

    .line 241
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextItalic:I

    return v0
.end method

.method public getMTextStyle()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getMTextUnderline()I
    .locals 1

    .line 249
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextUnderline:I

    return v0
.end method

.method public getShape1()I
    .locals 1

    .line 281
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->shape1:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 289
    iget v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->width:I

    return v0
.end method

.method public getYL1()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL1:Ljava/lang/String;

    return-object v0
.end method

.method public getYL2()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL2:Ljava/lang/String;

    return-object v0
.end method

.method public getYL3()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL3:Ljava/lang/String;

    return-object v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->bgColor:I

    return-void
.end method

.method public setEffects(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->effects:I

    return-void
.end method

.method public setFgColor(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->fgColor:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->height:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->imageName:Ljava/lang/String;

    return-void
.end method

.method public setMBitmap([B)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mBitmap:[B

    return-void
.end method

.method public setMColor(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mColor:I

    return-void
.end method

.method public setMIDoodlePen(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mIDoodlePen:I

    return-void
.end method

.method public setMIsNeedClipOutside(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mIsNeedClipOutside:Z

    return-void
.end method

.method public setMLocationX(F)V
    .locals 0

    .line 125
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mLocationX:F

    return-void
.end method

.method public setMLocationY(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mLocationY:F

    return-void
.end method

.method public setMPivotX(F)V
    .locals 0

    .line 141
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mPivotX:F

    return-void
.end method

.method public setMPivotY(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mPivotY:F

    return-void
.end method

.method public setMRotate(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mRotate:F

    return-void
.end method

.method public setMScale(F)V
    .locals 0

    .line 173
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mScale:F

    return-void
.end method

.method public setMSize(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mSize:F

    return-void
.end method

.method public setMText(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mText:Ljava/lang/String;

    return-void
.end method

.method public setMText0(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mText0:Ljava/lang/String;

    return-void
.end method

.method public setMTextBgColor(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextBgColor:I

    return-void
.end method

.method public setMTextBold(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextBold:I

    return-void
.end method

.method public setMTextItalic(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextItalic:I

    return-void
.end method

.method public setMTextStyle(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextStyle:Ljava/lang/String;

    return-void
.end method

.method public setMTextUnderline(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->mTextUnderline:I

    return-void
.end method

.method public setShape1(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->shape1:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->width:I

    return-void
.end method

.method public setYL1(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL1:Ljava/lang/String;

    return-void
.end method

.method public setYL2(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL2:Ljava/lang/String;

    return-void
.end method

.method public setYL3(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->YL3:Ljava/lang/String;

    return-void
.end method
