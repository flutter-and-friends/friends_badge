.class public Ljxl/biff/DataValidation;
.super Ljava/lang/Object;
.source "DataValidation.java"


# static fields
.field public static final DEFAULT_OBJECT_ID:I = -0x1

.field static synthetic class$jxl$biff$DataValidation:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private comboBoxObjectId:I

.field private copied:Z

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private validityList:Ljxl/biff/DataValidityListRecord;

.field private validitySettings:Ljava/util/ArrayList;

.field private workbook:Ljxl/biff/WorkbookMethods;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Ljxl/biff/DataValidation;->class$jxl$biff$DataValidation:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.DataValidation"

    invoke-static {v0}, Ljxl/biff/DataValidation;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValidation;->class$jxl$biff$DataValidation:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValidation;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p3, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    .line 101
    iput-object p2, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 102
    iput-object p4, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 104
    iput p1, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p3, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    .line 117
    iput-object p2, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 118
    iput-object p4, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p2, 0x1

    .line 119
    iput-boolean p2, p0, Ljxl/biff/DataValidation;->copied:Z

    .line 120
    new-instance p2, Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidation;->getDataValidityList()Ljxl/biff/DataValidityListRecord;

    move-result-object p3

    invoke-direct {p2, p3}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p1}, Ljxl/biff/DataValidation;->getDataValiditySettings()[Ljxl/biff/DataValiditySettingsRecord;

    move-result-object p1

    const/4 p2, 0x0

    .line 125
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 127
    iget-object p3, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    new-instance p4, Ljxl/biff/DataValiditySettingsRecord;

    aget-object v0, p1, p2

    iget-object v1, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v2, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    iget-object v3, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {p4, v0, v1, v2, v3}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DataValiditySettingsRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljxl/biff/DataValidityListRecord;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->getNumberOfSettings()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 43
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


# virtual methods
.method public add(Ljxl/biff/DataValiditySettingsRecord;)V
    .locals 1

    .line 139
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1, p0}, Ljxl/biff/DataValiditySettingsRecord;->setDataValidation(Ljxl/biff/DataValidation;)V

    .line 142
    iget-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    .line 146
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->dvAdded()V

    :cond_1
    return-void
.end method

.method public getComboBoxObjectId()I
    .locals 1

    .line 296
    iget v0, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    return v0
.end method

.method public getDataValidityList()Ljxl/biff/DataValidityListRecord;
    .locals 1

    .line 155
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    return-object v0
.end method

.method public getDataValiditySettings(II)Ljxl/biff/DataValiditySettingsRecord;
    .locals 5

    .line 278
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/DataValiditySettingsRecord;

    .line 281
    invoke-virtual {v3}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v4

    if-ne v4, p2, :cond_0

    const/4 v1, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getDataValiditySettings()[Ljxl/biff/DataValiditySettingsRecord;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DataValiditySettingsRecord;

    .line 164
    iget-object v1, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/DataValiditySettingsRecord;

    return-object v0
.end method

.method public insertColumn(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 243
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->insertColumn(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public insertRow(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 206
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->insertRow(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeColumn(I)V
    .locals 3

    .line 254
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 258
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 261
    iget-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->removeColumn(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeRow(I)V
    .locals 3

    .line 217
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 221
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 224
    iget-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v1, p1}, Ljxl/biff/DataValiditySettingsRecord;->removeRow(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljxl/biff/DValParser;

    iget v1, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    iget-object v2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljxl/biff/DValParser;-><init>(II)V

    .line 179
    new-instance v1, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/biff/DValParser;)V

    iput-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 182
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->hasDVRecords()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 189
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 192
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_0

    :cond_2
    return-void
.end method
