.class public Lcn/highlight/core/utils/ExcelUtils;
.super Ljava/lang/Object;
.source "ExcelUtils.java"


# static fields
.field public static final GBK_ENCODING:Ljava/lang/String; = "GBK"

.field public static final UTF8_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static arial10font:Ljxl/write/WritableFont;

.field public static arial10format:Ljxl/write/WritableCellFormat;

.field public static arial12font:Ljxl/write/WritableFont;

.field public static arial12format:Ljxl/write/WritableCellFormat;

.field public static arial14font:Ljxl/write/WritableFont;

.field public static arial14format:Ljxl/write/WritableCellFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format()V
    .locals 4

    .line 38
    :try_start_0
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v2, 0xe

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v1, v2, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    sput-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial14font:Ljxl/write/WritableFont;

    .line 40
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial14font:Ljxl/write/WritableFont;

    sget-object v1, Ljxl/format/Colour;->LIGHT_BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 41
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Lcn/highlight/core/utils/ExcelUtils;->arial14font:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial14format:Ljxl/write/WritableCellFormat;

    .line 42
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial14format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 43
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial14format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 45
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial14format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Colour;->VERY_LIGHT_YELLOW:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 46
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v2, 0xa

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v1, v2, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    sput-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial10font:Ljxl/write/WritableFont;

    .line 48
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Lcn/highlight/core/utils/ExcelUtils;->arial10font:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial10format:Ljxl/write/WritableCellFormat;

    .line 49
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial10format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 50
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial10format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 52
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial10format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Colour;->LIGHT_BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 53
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    sput-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial12font:Ljxl/write/WritableFont;

    .line 54
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Lcn/highlight/core/utils/ExcelUtils;->arial12font:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial12format:Ljxl/write/WritableCellFormat;

    .line 55
    sget-object v0, Lcn/highlight/core/utils/ExcelUtils;->arial12format:Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljxl/write/WriteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static initExcel(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 64
    invoke-static {}, Lcn/highlight/core/utils/ExcelUtils;->format()V

    const/4 v0, 0x0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 71
    :cond_0
    invoke-static {v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    const-string v1, "\u76d8\u70b9\u6570\u636e\u8868"

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    .line 73
    new-instance v3, Ljxl/write/Label;

    sget-object v4, Lcn/highlight/core/utils/ExcelUtils;->arial14format:Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v2, v2, p0, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v1, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 p0, 0x0

    .line 74
    :goto_0
    array-length v3, p1

    if-ge p0, v3, :cond_1

    .line 75
    new-instance v3, Ljxl/write/Label;

    aget-object v4, p1, p0

    sget-object v5, Lcn/highlight/core/utils/ExcelUtils;->arial10format:Ljxl/write/WritableCellFormat;

    invoke-direct {v3, p0, v2, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v1, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 83
    :try_start_1
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 79
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    .line 83
    :try_start_4
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :cond_3
    :goto_3
    throw p0
.end method

.method public static writeObjListToExcel(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 101
    :try_start_0
    new-instance v1, Ljxl/WorkbookSettings;

    invoke-direct {v1}, Ljxl/WorkbookSettings;-><init>()V

    const-string v2, "UTF-8"

    .line 102
    invoke-virtual {v1, v2}, Ljxl/WorkbookSettings;->setEncoding(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-static {v1}, Ljxl/Workbook;->getWorkbook(Ljava/io/InputStream;)Ljxl/Workbook;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v2}, Ljxl/write/WritableWorkbook;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v3

    const/4 v4, 0x0

    .line 107
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 108
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 109
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 110
    new-instance v7, Ljxl/write/Label;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcn/highlight/core/utils/ExcelUtils;->arial12format:Ljxl/write/WritableCellFormat;

    invoke-direct {v7, v6, v8, v9, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v3, v7}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5bfc\u51fa\u5230\u624b\u673a\u5b58\u50a8\u4e2d\u6587\u4ef6\u5939\u6210\u529f!"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 121
    :try_start_2
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 116
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "EXCEL"

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excel\u5bfc\u51fa\u9519\u8bef\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 121
    :try_start_5
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    if-eqz v1, :cond_6

    .line 129
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v0, :cond_4

    .line 121
    :try_start_7
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 129
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    :cond_5
    :goto_7
    throw p0

    :cond_6
    :goto_8
    return-void
.end method
