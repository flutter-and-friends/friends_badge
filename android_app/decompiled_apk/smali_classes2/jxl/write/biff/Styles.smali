.class Ljxl/write/biff/Styles;
.super Ljava/lang/Object;
.source "Styles.java"


# static fields
.field static synthetic class$jxl$write$biff$Styles:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private arial10pt:Ljxl/write/WritableFont;

.field private defaultDateFormat:Ljxl/write/WritableCellFormat;

.field private hiddenStyle:Ljxl/write/WritableCellFormat;

.field private hyperlinkFont:Ljxl/write/WritableFont;

.field private hyperlinkStyle:Ljxl/write/WritableCellFormat;

.field private normalStyle:Ljxl/write/WritableCellFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Ljxl/write/biff/Styles;->class$jxl$write$biff$Styles:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.Styles"

    invoke-static {v0}, Ljxl/write/biff/Styles;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/Styles;->class$jxl$write$biff$Styles:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/Styles;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Ljxl/write/biff/Styles;->arial10pt:Ljxl/write/WritableFont;

    .line 80
    iput-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkFont:Ljxl/write/WritableFont;

    .line 81
    iput-object v0, p0, Ljxl/write/biff/Styles;->normalStyle:Ljxl/write/WritableCellFormat;

    .line 82
    iput-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkStyle:Ljxl/write/WritableCellFormat;

    .line 83
    iput-object v0, p0, Ljxl/write/biff/Styles;->hiddenStyle:Ljxl/write/WritableCellFormat;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 42
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

.method private declared-synchronized initArial10Pt()V
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableFont;-><init>(Ljxl/format/Font;)V

    iput-object v0, p0, Ljxl/write/biff/Styles;->arial10pt:Ljxl/write/WritableFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initDefaultDateFormat()V
    .locals 2

    monitor-enter p0

    .line 167
    :try_start_0
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    iput-object v0, p0, Ljxl/write/biff/Styles;->defaultDateFormat:Ljxl/write/WritableCellFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initHiddenStyle()V
    .locals 4

    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v1

    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, ";;;"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    iput-object v0, p0, Ljxl/write/biff/Styles;->hiddenStyle:Ljxl/write/WritableCellFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initHyperlinkFont()V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableFont;-><init>(Ljxl/format/Font;)V

    iput-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkFont:Ljxl/write/WritableFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initHyperlinkStyle()V
    .locals 3

    monitor-enter p0

    .line 121
    :try_start_0
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getHyperlinkFont()Ljxl/write/WritableFont;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    iput-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkStyle:Ljxl/write/WritableCellFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNormalStyle()V
    .locals 3

    monitor-enter p0

    .line 88
    :try_start_0
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    iput-object v0, p0, Ljxl/write/biff/Styles;->normalStyle:Ljxl/write/WritableCellFormat;

    .line 90
    iget-object v0, p0, Ljxl/write/biff/Styles;->normalStyle:Ljxl/write/WritableCellFormat;

    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setFont(Ljxl/biff/FontRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getArial10Pt()Ljxl/write/WritableFont;
    .locals 1

    .line 142
    iget-object v0, p0, Ljxl/write/biff/Styles;->arial10pt:Ljxl/write/WritableFont;

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Ljxl/write/biff/Styles;->initArial10Pt()V

    .line 147
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/Styles;->arial10pt:Ljxl/write/WritableFont;

    return-object v0
.end method

.method public getDefaultDateFormat()Ljxl/write/WritableCellFormat;
    .locals 1

    .line 172
    iget-object v0, p0, Ljxl/write/biff/Styles;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Ljxl/write/biff/Styles;->initDefaultDateFormat()V

    .line 177
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/Styles;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    return-object v0
.end method

.method public getFormat(Ljxl/biff/XFRecord;)Ljxl/biff/XFRecord;
    .locals 2

    .line 196
    sget-object v0, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    if-ne p1, v0, :cond_0

    .line 198
    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    if-ne p1, v0, :cond_1

    .line 202
    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getHyperlinkStyle()Ljxl/write/WritableCellFormat;

    move-result-object p1

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    if-ne p1, v0, :cond_2

    .line 206
    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getHiddenStyle()Ljxl/write/WritableCellFormat;

    move-result-object p1

    goto :goto_0

    .line 208
    :cond_2
    sget-object v0, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    if-ne p1, v0, :cond_3

    .line 210
    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getDefaultDateFormat()Ljxl/write/WritableCellFormat;

    move-result-object p1

    .line 214
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v0

    sget-object v1, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    if-ne v0, v1, :cond_4

    .line 216
    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/biff/XFRecord;->setFont(Ljxl/biff/FontRecord;)V

    goto :goto_1

    .line 218
    :cond_4
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v0

    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    if-ne v0, v1, :cond_5

    .line 220
    invoke-virtual {p0}, Ljxl/write/biff/Styles;->getHyperlinkFont()Ljxl/write/WritableFont;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/biff/XFRecord;->setFont(Ljxl/biff/FontRecord;)V

    :cond_5
    :goto_1
    return-object p1
.end method

.method public getHiddenStyle()Ljxl/write/WritableCellFormat;
    .locals 1

    .line 111
    iget-object v0, p0, Ljxl/write/biff/Styles;->hiddenStyle:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Ljxl/write/biff/Styles;->initHiddenStyle()V

    .line 116
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/Styles;->hiddenStyle:Ljxl/write/WritableCellFormat;

    return-object v0
.end method

.method public getHyperlinkFont()Ljxl/write/WritableFont;
    .locals 1

    .line 157
    iget-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkFont:Ljxl/write/WritableFont;

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Ljxl/write/biff/Styles;->initHyperlinkFont()V

    .line 162
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkFont:Ljxl/write/WritableFont;

    return-object v0
.end method

.method public getHyperlinkStyle()Ljxl/write/WritableCellFormat;
    .locals 1

    .line 127
    iget-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkStyle:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Ljxl/write/biff/Styles;->initHyperlinkStyle()V

    .line 132
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/Styles;->hyperlinkStyle:Ljxl/write/WritableCellFormat;

    return-object v0
.end method

.method public getNormalStyle()Ljxl/write/WritableCellFormat;
    .locals 1

    .line 95
    iget-object v0, p0, Ljxl/write/biff/Styles;->normalStyle:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Ljxl/write/biff/Styles;->initNormalStyle()V

    .line 100
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/Styles;->normalStyle:Ljxl/write/WritableCellFormat;

    return-object v0
.end method
