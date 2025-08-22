.class Ljxl/write/biff/SetupRecord;
.super Ljxl/biff/WritableRecordData;
.source "SetupRecord.java"


# static fields
.field static synthetic class$jxl$write$biff$SetupRecord:Ljava/lang/Class;


# instance fields
.field private copies:I

.field private data:[B

.field private fitHeight:I

.field private fitWidth:I

.field private footerMargin:D

.field private headerMargin:D

.field private horizontalPrintResolution:I

.field logger:Lcommon/Logger;

.field private orientation:Ljxl/format/PageOrientation;

.field private pageStart:I

.field private paperSize:I

.field private scaleFactor:I

.field private verticalPrintResolution:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 109
    sget-object v0, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 40
    sget-object v0, Ljxl/write/biff/SetupRecord;->class$jxl$write$biff$SetupRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.SetupRecord"

    invoke-static {v0}, Ljxl/write/biff/SetupRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SetupRecord;->class$jxl$write$biff$SetupRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->logger:Lcommon/Logger;

    .line 111
    sget-object v0, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 112
    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    .line 113
    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    .line 114
    sget-object v0, Ljxl/format/PaperSize;->A4:Ljxl/format/PaperSize;

    invoke-virtual {v0}, Ljxl/format/PaperSize;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    const/16 v0, 0x12c

    .line 115
    iput v0, p0, Ljxl/write/biff/SetupRecord;->horizontalPrintResolution:I

    .line 116
    iput v0, p0, Ljxl/write/biff/SetupRecord;->verticalPrintResolution:I

    const/4 v0, 0x1

    .line 117
    iput v0, p0, Ljxl/write/biff/SetupRecord;->copies:I

    return-void
.end method

.method public constructor <init>(Ljxl/SheetSettings;)V
    .locals 2

    .line 128
    sget-object v0, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 40
    sget-object v0, Ljxl/write/biff/SetupRecord;->class$jxl$write$biff$SetupRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.SetupRecord"

    invoke-static {v0}, Ljxl/write/biff/SetupRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SetupRecord;->class$jxl$write$biff$SetupRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->logger:Lcommon/Logger;

    .line 130
    invoke-virtual {p1}, Ljxl/SheetSettings;->getOrientation()Ljxl/format/PageOrientation;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    .line 131
    invoke-virtual {p1}, Ljxl/SheetSettings;->getHeaderMargin()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    .line 132
    invoke-virtual {p1}, Ljxl/SheetSettings;->getFooterMargin()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    .line 133
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPaperSize()Ljxl/format/PaperSize;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/format/PaperSize;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    .line 134
    invoke-virtual {p1}, Ljxl/SheetSettings;->getHorizontalPrintResolution()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->horizontalPrintResolution:I

    .line 135
    invoke-virtual {p1}, Ljxl/SheetSettings;->getVerticalPrintResolution()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->verticalPrintResolution:I

    .line 136
    invoke-virtual {p1}, Ljxl/SheetSettings;->getFitWidth()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->fitWidth:I

    .line 137
    invoke-virtual {p1}, Ljxl/SheetSettings;->getFitHeight()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->fitHeight:I

    .line 138
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageStart()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    .line 139
    invoke-virtual {p1}, Ljxl/SheetSettings;->getScaleFactor()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->scaleFactor:I

    .line 140
    invoke-virtual {p1}, Ljxl/SheetSettings;->getCopies()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/SetupRecord;->copies:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/SetupRecord;)V
    .locals 2

    .line 149
    sget-object v0, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 40
    sget-object v0, Ljxl/write/biff/SetupRecord;->class$jxl$write$biff$SetupRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.SetupRecord"

    invoke-static {v0}, Ljxl/write/biff/SetupRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SetupRecord;->class$jxl$write$biff$SetupRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->logger:Lcommon/Logger;

    .line 151
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    goto :goto_0

    :cond_1
    sget-object v0, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    :goto_0
    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    .line 154
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getPaperSize()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    .line 155
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getHeaderMargin()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    .line 156
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getFooterMargin()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    .line 157
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getScaleFactor()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->scaleFactor:I

    .line 158
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getPageStart()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    .line 159
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getFitWidth()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->fitWidth:I

    .line 160
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getFitHeight()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->fitHeight:I

    .line 161
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getHorizontalPrintResolution()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->horizontalPrintResolution:I

    .line 162
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getVerticalPrintResolution()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SetupRecord;->verticalPrintResolution:I

    .line 163
    invoke-virtual {p1}, Ljxl/read/biff/SetupRecord;->getCopies()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/SetupRecord;->copies:I

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


# virtual methods
.method public getData()[B
    .locals 5

    const/16 v0, 0x22

    new-array v0, v0, [B

    .line 205
    iput-object v0, p0, Ljxl/write/biff/SetupRecord;->data:[B

    .line 208
    iget v0, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 211
    iget v0, p0, Ljxl/write/biff/SetupRecord;->scaleFactor:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 214
    iget v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v4, 0x4

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 217
    iget v0, p0, Ljxl/write/biff/SetupRecord;->fitWidth:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/4 v4, 0x6

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 220
    iget v0, p0, Ljxl/write/biff/SetupRecord;->fitHeight:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v4, 0x8

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 224
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    sget-object v1, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    .line 229
    :cond_0
    iget v0, p0, Ljxl/write/biff/SetupRecord;->pageStart:I

    if-eqz v0, :cond_1

    or-int/lit16 v2, v2, 0x80

    .line 234
    :cond_1
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v1, 0xa

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 237
    iget v0, p0, Ljxl/write/biff/SetupRecord;->horizontalPrintResolution:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 240
    iget v0, p0, Ljxl/write/biff/SetupRecord;->verticalPrintResolution:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 243
    iget-wide v0, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    iget-object v2, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 246
    iget-wide v0, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    iget-object v2, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 249
    iget v0, p0, Ljxl/write/biff/SetupRecord;->copies:I

    iget-object v1, p0, Ljxl/write/biff/SetupRecord;->data:[B

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 251
    iget-object v0, p0, Ljxl/write/biff/SetupRecord;->data:[B

    return-object v0
.end method

.method public setMargins(DD)V
    .locals 0

    .line 184
    iput-wide p1, p0, Ljxl/write/biff/SetupRecord;->headerMargin:D

    .line 185
    iput-wide p3, p0, Ljxl/write/biff/SetupRecord;->footerMargin:D

    return-void
.end method

.method public setOrientation(Ljxl/format/PageOrientation;)V
    .locals 0

    .line 173
    iput-object p1, p0, Ljxl/write/biff/SetupRecord;->orientation:Ljxl/format/PageOrientation;

    return-void
.end method

.method public setPaperSize(Ljxl/format/PaperSize;)V
    .locals 0

    .line 195
    invoke-virtual {p1}, Ljxl/format/PaperSize;->getValue()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/SetupRecord;->paperSize:I

    return-void
.end method
