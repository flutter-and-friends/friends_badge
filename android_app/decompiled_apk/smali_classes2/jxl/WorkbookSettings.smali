.class public final Ljxl/WorkbookSettings;
.super Ljava/lang/Object;
.source "WorkbookSettings.java"


# static fields
.field private static final DEFAULT_ARRAY_GROW_SIZE:I = 0x100000

.field private static final DEFAULT_INITIAL_FILE_SIZE:I = 0x500000

.field static synthetic class$jxl$WorkbookSettings:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private arrayGrowSize:I

.field private autoFilterDisabled:Z

.field private cellValidationDisabled:Z

.field private characterSet:I

.field private drawingsDisabled:Z

.field private encoding:Ljava/lang/String;

.field private excelDisplayLanguage:Ljava/lang/String;

.field private excelRegionalSettings:Ljava/lang/String;

.field private formulaReferenceAdjustDisabled:Z

.field private functionNames:Ljxl/biff/formula/FunctionNames;

.field private gcDisabled:Z

.field private ignoreBlankCells:Z

.field private initialFileSize:I

.field private locale:Ljava/util/Locale;

.field private localeFunctionNames:Ljava/util/HashMap;

.field private mergedCellCheckingDisabled:Z

.field private namesDisabled:Z

.field private propertySetsDisabled:Z

.field private rationalizationDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Ljxl/WorkbookSettings;->class$jxl$WorkbookSettings:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.WorkbookSettings"

    invoke-static {v0}, Ljxl/WorkbookSettings;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/WorkbookSettings;->class$jxl$WorkbookSettings:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/WorkbookSettings;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v0, "jxl.encoding"

    const-string v1, "jxl.country"

    const-string v2, "jxl.lang"

    const-string v3, "Error accessing system properties."

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v4, 0x500000

    .line 185
    iput v4, p0, Ljxl/WorkbookSettings;->initialFileSize:I

    const/high16 v4, 0x100000

    .line 186
    iput v4, p0, Ljxl/WorkbookSettings;->arrayGrowSize:I

    .line 187
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Ljxl/WorkbookSettings;->localeFunctionNames:Ljava/util/HashMap;

    .line 188
    sget-object v4, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    invoke-virtual {v4}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljxl/WorkbookSettings;->excelDisplayLanguage:Ljava/lang/String;

    .line 189
    sget-object v4, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    invoke-virtual {v4}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljxl/WorkbookSettings;->excelRegionalSettings:Ljava/lang/String;

    :try_start_0
    const-string v4, "jxl.nowarnings"

    .line 194
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 195
    invoke-virtual {p0, v4}, Ljxl/WorkbookSettings;->setSuppressWarnings(Z)V

    const-string v4, "jxl.nodrawings"

    .line 196
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->drawingsDisabled:Z

    const-string v4, "jxl.nonames"

    .line 197
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->namesDisabled:Z

    const-string v4, "jxl.nogc"

    .line 198
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->gcDisabled:Z

    const-string v4, "jxl.norat"

    .line 199
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->rationalizationDisabled:Z

    const-string v4, "jxl.nomergedcellchecks"

    .line 200
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->mergedCellCheckingDisabled:Z

    const-string v4, "jxl.noformulaadjust"

    .line 202
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->formulaReferenceAdjustDisabled:Z

    const-string v4, "jxl.nopropertysets"

    .line 204
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->propertySetsDisabled:Z

    const-string v4, "jxl.ignoreblanks"

    .line 205
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->ignoreBlankCells:Z

    const-string v4, "jxl.nocellvalidation"

    .line 206
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->cellValidationDisabled:Z

    const-string v4, "jxl.autofilter"

    .line 207
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->autoFilterDisabled:Z

    const-string v4, "file.encoding"

    .line 209
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 213
    sget-object v5, Ljxl/WorkbookSettings;->logger:Lcommon/Logger;

    invoke-virtual {v5, v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    :goto_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 226
    :cond_1
    new-instance v4, Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    goto :goto_3

    .line 222
    :cond_2
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    .line 230
    :goto_3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 232
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 237
    sget-object v1, Ljxl/WorkbookSettings;->logger:Lcommon/Logger;

    invoke-virtual {v1, v3, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    :cond_3
    :goto_4
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
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
.method public getArrayGrowSize()I
    .locals 1

    .line 263
    iget v0, p0, Ljxl/WorkbookSettings;->arrayGrowSize:I

    return v0
.end method

.method public getAutoFilterDisabled()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->autoFilterDisabled:Z

    return v0
.end method

.method public getCellValidationDisabled()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->cellValidationDisabled:Z

    return v0
.end method

.method public getCharacterSet()I
    .locals 1

    .line 511
    iget v0, p0, Ljxl/WorkbookSettings;->characterSet:I

    return v0
.end method

.method public getDrawingsDisabled()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->drawingsDisabled:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExcelDisplayLanguage()Ljava/lang/String;
    .locals 1

    .line 582
    iget-object v0, p0, Ljxl/WorkbookSettings;->excelDisplayLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getExcelRegionalSettings()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Ljxl/WorkbookSettings;->excelRegionalSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaAdjust()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->formulaReferenceAdjustDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFunctionNames()Ljxl/biff/formula/FunctionNames;
    .locals 3

    .line 487
    iget-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Ljxl/WorkbookSettings;->localeFunctionNames:Ljava/util/HashMap;

    iget-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/FunctionNames;

    iput-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    .line 493
    iget-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljxl/biff/formula/FunctionNames;

    iget-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FunctionNames;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    .line 496
    iget-object v0, p0, Ljxl/WorkbookSettings;->localeFunctionNames:Ljava/util/HashMap;

    iget-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    iget-object v2, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_0
    iget-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    return-object v0
.end method

.method public getGCDisabled()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->gcDisabled:Z

    return v0
.end method

.method public getIgnoreBlanks()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->ignoreBlankCells:Z

    return v0
.end method

.method public getInitialFileSize()I
    .locals 1

    .line 286
    iget v0, p0, Ljxl/WorkbookSettings;->initialFileSize:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 455
    iget-object v0, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMergedCellCheckingDisabled()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->mergedCellCheckingDisabled:Z

    return v0
.end method

.method public getNamesDisabled()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->namesDisabled:Z

    return v0
.end method

.method public getPropertySetsDisabled()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->propertySetsDisabled:Z

    return v0
.end method

.method public getRationalizationDisabled()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->rationalizationDisabled:Z

    return v0
.end method

.method public setArrayGrowSize(I)V
    .locals 0

    .line 253
    iput p1, p0, Ljxl/WorkbookSettings;->arrayGrowSize:I

    return-void
.end method

.method public setAutoFilterDisabled(Z)V
    .locals 0

    .line 632
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->autoFilterDisabled:Z

    return-void
.end method

.method public setCellValidationDisabled(Z)V
    .locals 0

    .line 562
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->cellValidationDisabled:Z

    return-void
.end method

.method public setCharacterSet(I)V
    .locals 0

    .line 522
    iput p1, p0, Ljxl/WorkbookSettings;->characterSet:I

    return-void
.end method

.method public setDrawingsDisabled(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->drawingsDisabled:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 475
    iput-object p1, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setExcelDisplayLanguage(Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Ljxl/WorkbookSettings;->excelDisplayLanguage:Ljava/lang/String;

    return-void
.end method

.method public setExcelRegionalSettings(Ljava/lang/String;)V
    .locals 0

    .line 612
    iput-object p1, p0, Ljxl/WorkbookSettings;->excelRegionalSettings:Ljava/lang/String;

    return-void
.end method

.method public setFormulaAdjust(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 433
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->formulaReferenceAdjustDisabled:Z

    return-void
.end method

.method public setGCDisabled(Z)V
    .locals 0

    .line 532
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->gcDisabled:Z

    return-void
.end method

.method public setIgnoreBlanks(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->ignoreBlankCells:Z

    return-void
.end method

.method public setInitialFileSize(I)V
    .locals 0

    .line 276
    iput p1, p0, Ljxl/WorkbookSettings;->initialFileSize:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 445
    iput-object p1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setMergedCellChecking(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 377
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->mergedCellCheckingDisabled:Z

    return-void
.end method

.method public setNamesDisabled(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->namesDisabled:Z

    return-void
.end method

.method public setPropertySets(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 390
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->propertySetsDisabled:Z

    return-void
.end method

.method public setRationalization(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 347
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->rationalizationDisabled:Z

    return-void
.end method

.method public setSuppressWarnings(Z)V
    .locals 1

    .line 412
    sget-object v0, Ljxl/WorkbookSettings;->logger:Lcommon/Logger;

    invoke-virtual {v0, p1}, Lcommon/Logger;->setSuppressWarnings(Z)V

    return-void
.end method
