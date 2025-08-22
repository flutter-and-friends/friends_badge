.class public Ljxl/biff/DataValiditySettingsRecord;
.super Ljxl/biff/WritableRecordData;
.source "DataValiditySettingsRecord.java"


# static fields
.field static synthetic class$jxl$biff$DataValiditySettingsRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private dataValidation:Ljxl/biff/DataValidation;

.field private dvParser:Ljxl/biff/DVParser;

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private workbook:Ljxl/biff/WorkbookMethods;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Ljxl/biff/DataValiditySettingsRecord;->class$jxl$biff$DataValiditySettingsRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.DataValiditySettingsRecord"

    invoke-static {v0}, Ljxl/biff/DataValiditySettingsRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValiditySettingsRecord;->class$jxl$biff$DataValiditySettingsRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValiditySettingsRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DVParser;)V
    .locals 1

    .line 127
    sget-object v0, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 128
    iput-object p1, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    return-void
.end method

.method constructor <init>(Ljxl/biff/DataValiditySettingsRecord;)V
    .locals 1

    .line 92
    sget-object v0, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 94
    invoke-virtual {p1}, Ljxl/biff/DataValiditySettingsRecord;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    return-void
.end method

.method constructor <init>(Ljxl/biff/DataValiditySettingsRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 107
    sget-object v0, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 109
    iput-object p3, p0, Ljxl/biff/DataValiditySettingsRecord;->workbook:Ljxl/biff/WorkbookMethods;

    .line 110
    iput-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 111
    iput-object p4, p0, Ljxl/biff/DataValiditySettingsRecord;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 113
    :goto_0
    invoke-static {p3}, Lcommon/Assert;->verify(Z)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 114
    :goto_1
    invoke-static {p4}, Lcommon/Assert;->verify(Z)V

    .line 116
    iget-object p2, p1, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    array-length p2, p2

    new-array p2, p2, [B

    iput-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    .line 117
    iget-object p1, p1, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    iget-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    array-length p3, p2

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 81
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    .line 82
    iput-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 83
    iput-object p3, p0, Ljxl/biff/DataValiditySettingsRecord;->workbook:Ljxl/biff/WorkbookMethods;

    .line 84
    iput-object p4, p0, Ljxl/biff/DataValiditySettingsRecord;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 40
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

.method private initialize()V
    .locals 5

    .line 138
    :try_start_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljxl/biff/DVParser;

    iget-object v1, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    iget-object v2, p0, Ljxl/biff/DataValiditySettingsRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v3, p0, Ljxl/biff/DataValiditySettingsRecord;->workbook:Ljxl/biff/WorkbookMethods;

    iget-object v4, p0, Ljxl/biff/DataValiditySettingsRecord;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/biff/DVParser;-><init>([BLjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Ljxl/biff/DataValiditySettingsRecord;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot read drop down range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method getDVParser()Ljxl/biff/DVParser;
    .locals 1

    .line 301
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 157
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DVParser;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 232
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 237
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 262
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 267
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v0

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 247
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 252
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 277
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 282
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v0

    return v0
.end method

.method public getValidationFormula()Ljava/lang/String;
    .locals 4

    .line 308
    :try_start_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 313
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getValidationFormula()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 317
    sget-object v1, Ljxl/biff/DataValiditySettingsRecord;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot read drop down range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public insertColumn(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 207
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0, p1}, Ljxl/biff/DVParser;->insertColumn(I)V

    return-void
.end method

.method public insertRow(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 177
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0, p1}, Ljxl/biff/DVParser;->insertRow(I)V

    return-void
.end method

.method public removeColumn(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 222
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0, p1}, Ljxl/biff/DVParser;->removeColumn(I)V

    return-void
.end method

.method public removeRow(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 192
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0, p1}, Ljxl/biff/DVParser;->removeRow(I)V

    return-void
.end method

.method setDataValidation(Ljxl/biff/DataValidation;)V
    .locals 0

    .line 292
    iput-object p1, p0, Ljxl/biff/DataValiditySettingsRecord;->dataValidation:Ljxl/biff/DataValidation;

    return-void
.end method
