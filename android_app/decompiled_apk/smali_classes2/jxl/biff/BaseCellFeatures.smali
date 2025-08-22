.class public Ljxl/biff/BaseCellFeatures;
.super Ljava/lang/Object;
.source "BaseCellFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/BaseCellFeatures$ValidationCondition;
    }
.end annotation


# static fields
.field public static final BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final GREATER_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final LESS_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final LESS_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final NOT_BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final NOT_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field static synthetic class$jxl$biff$BaseCellFeatures:Ljava/lang/Class; = null

.field private static final defaultCommentHeight:D = 4.0

.field private static final defaultCommentWidth:D = 3.0

.field public static logger:Lcommon/Logger;


# instance fields
.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private comment:Ljava/lang/String;

.field private commentDrawing:Ljxl/biff/drawing/Comment;

.field private commentHeight:D

.field private commentWidth:D

.field private dataValidation:Z

.field private dropDown:Z

.field private dvParser:Ljxl/biff/DVParser;

.field private validationSettings:Ljxl/biff/DataValiditySettingsRecord;

.field private writableCell:Ljxl/write/biff/CellValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-object v0, Ljxl/biff/BaseCellFeatures;->class$jxl$biff$BaseCellFeatures:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.BaseCellFeatures"

    invoke-static {v0}, Ljxl/biff/BaseCellFeatures;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCellFeatures;->class$jxl$biff$BaseCellFeatures:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCellFeatures;->logger:Lcommon/Logger;

    .line 117
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 119
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->NOT_BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 121
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 123
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->NOT_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->NOT_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 125
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->GREATER_THAN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 127
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->LESS_THAN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->LESS_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 129
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->GREATER_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 131
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->LESS_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->LESS_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/BaseCellFeatures;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 150
    iget-wide v0, p1, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    iput-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 151
    iget-wide v0, p1, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    iput-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    .line 154
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 155
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    .line 157
    iget-object p1, p1, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearValidationSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 369
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 v1, 0x0

    .line 370
    iput-boolean v1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 371
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 372
    iput-boolean v1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method


# virtual methods
.method protected getComment()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommentDrawing()Ljxl/biff/drawing/Comment;
    .locals 1

    .line 278
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    return-object v0
.end method

.method public getCommentHeight()D
    .locals 2

    .line 181
    iget-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    return-wide v0
.end method

.method public getCommentWidth()D
    .locals 2

    .line 173
    iget-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    return-wide v0
.end method

.method public getDVParser()Ljxl/biff/DVParser;
    .locals 2

    .line 401
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    if-eqz v0, :cond_0

    return-object v0

    .line 407
    :cond_0
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    if-eqz v0, :cond_1

    .line 409
    new-instance v1, Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-direct {v1, v0}, Ljxl/biff/DVParser;-><init>(Ljxl/biff/DVParser;)V

    iput-object v1, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    .line 410
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataValidationList()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getValidationFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDataValidation()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return v0
.end method

.method public hasDropDown()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    return v0
.end method

.method public removeComment()V
    .locals 3

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    if-eqz v1, :cond_0

    .line 260
    iget-object v2, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v2, v1}, Ljxl/write/biff/CellValue;->removeComment(Ljxl/biff/drawing/Comment;)V

    .line 261
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    :cond_0
    return-void
.end method

.method public setComboBox(Ljxl/biff/drawing/ComboBox;)V
    .locals 0

    .line 392
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 6

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    move-object v0, p0

    move-object v1, p1

    .line 222
    invoke-virtual/range {v0 .. v5}, Ljxl/biff/BaseCellFeatures;->setComment(Ljava/lang/String;DD)V

    return-void
.end method

.method public setComment(Ljava/lang/String;DD)V
    .locals 1

    .line 234
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 235
    iput-wide p2, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 236
    iput-wide p4, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    .line 238
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Ljxl/biff/drawing/Comment;->setCommentText(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    invoke-virtual {p1, p2, p3}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    .line 242
    iget-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    invoke-virtual {p1, p4, p5}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    :cond_0
    return-void
.end method

.method public final setCommentDrawing(Ljxl/biff/drawing/Comment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    return-void
.end method

.method public setDataValidationList(Ljava/util/Collection;)V
    .locals 1

    .line 305
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 306
    new-instance v0, Ljxl/biff/DVParser;

    invoke-direct {v0, p1}, Ljxl/biff/DVParser;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 308
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setDataValidationRange(IIII)V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 319
    new-instance v0, Ljxl/biff/DVParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljxl/biff/DVParser;-><init>(IIII)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 321
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setDataValidationRange(Ljava/lang/String;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 330
    new-instance v0, Ljxl/biff/DVParser;

    invoke-direct {v0, p1}, Ljxl/biff/DVParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x1

    .line 331
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 332
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setNumberValidation(DDLjxl/biff/BaseCellFeatures$ValidationCondition;)V
    .locals 7

    .line 346
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 347
    new-instance v6, Ljxl/biff/DVParser;

    invoke-virtual {p5}, Ljxl/biff/BaseCellFeatures$ValidationCondition;->getCondition()Ljxl/biff/DVParser$Condition;

    move-result-object v5

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Ljxl/biff/DVParser;-><init>(DDLjxl/biff/DVParser$Condition;)V

    iput-object v6, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x0

    .line 348
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setNumberValidation(DLjxl/biff/BaseCellFeatures$ValidationCondition;)V
    .locals 7

    .line 337
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 338
    new-instance v6, Ljxl/biff/DVParser;

    invoke-virtual {p3}, Ljxl/biff/BaseCellFeatures$ValidationCondition;->getCondition()Ljxl/biff/DVParser$Condition;

    move-result-object v5

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/DVParser;-><init>(DDLjxl/biff/DVParser$Condition;)V

    iput-object v6, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 p1, 0x0

    .line 339
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public setReadComment(Ljava/lang/String;DD)V
    .locals 0

    .line 199
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 200
    iput-wide p2, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 201
    iput-wide p4, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    return-void
.end method

.method public setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 211
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 212
    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public final setWritableCell(Ljxl/write/biff/CellValue;)V
    .locals 0

    .line 191
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    return-void
.end method
