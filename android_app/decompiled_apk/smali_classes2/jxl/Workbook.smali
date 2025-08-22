.class public abstract Ljxl/Workbook;
.super Ljava/lang/Object;
.source "Workbook.java"


# static fields
.field private static final VERSION:Ljava/lang/String; = "2.6.3"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWorkbook(Ljava/io/File;)Ljxl/write/WritableWorkbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, p1, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/File;Ljxl/Workbook;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    new-instance p0, Ljxl/write/biff/WritableWorkbookImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Ljxl/write/biff/WritableWorkbookImpl;-><init>(Ljava/io/OutputStream;Ljxl/Workbook;ZLjxl/WorkbookSettings;)V

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 302
    new-instance p0, Ljxl/write/biff/WritableWorkbookImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Ljxl/write/biff/WritableWorkbookImpl;-><init>(Ljava/io/OutputStream;ZLjxl/WorkbookSettings;)V

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/OutputStream;)Ljxl/write/WritableWorkbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/OutputStream;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/OutputStream;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    move-object v0, p1

    check-cast v0, Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/OutputStream;Ljxl/Workbook;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/OutputStream;Ljxl/Workbook;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljxl/write/biff/WritableWorkbookImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Ljxl/write/biff/WritableWorkbookImpl;-><init>(Ljava/io/OutputStream;Ljxl/Workbook;ZLjxl/WorkbookSettings;)V

    return-object v0
.end method

.method public static createWorkbook(Ljava/io/OutputStream;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljxl/write/biff/WritableWorkbookImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Ljxl/write/biff/WritableWorkbookImpl;-><init>(Ljava/io/OutputStream;ZLjxl/WorkbookSettings;)V

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.3"

    return-object v0
.end method

.method public static getWorkbook(Ljava/io/File;)Ljxl/Workbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/Workbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 221
    :try_start_0
    new-instance p0, Ljxl/read/biff/File;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/File;-><init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljxl/read/biff/BiffException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 236
    new-instance v0, Ljxl/read/biff/WorkbookParser;

    invoke-direct {v0, p0, p1}, Ljxl/read/biff/WorkbookParser;-><init>(Ljxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 237
    invoke-virtual {v0}, Ljxl/Workbook;->parse()V

    return-object v0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 231
    throw p0

    :catch_1
    move-exception p0

    .line 225
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 226
    throw p0
.end method

.method public static getWorkbook(Ljava/io/InputStream;)Ljxl/Workbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/InputStream;Ljxl/WorkbookSettings;)Ljxl/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkbook(Ljava/io/InputStream;Ljxl/WorkbookSettings;)Ljxl/Workbook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljxl/read/biff/File;

    invoke-direct {v0, p0, p1}, Ljxl/read/biff/File;-><init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V

    .line 270
    new-instance p0, Ljxl/read/biff/WorkbookParser;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/WorkbookParser;-><init>(Ljxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 271
    invoke-virtual {p0}, Ljxl/Workbook;->parse()V

    return-object p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract findByName(Ljava/lang/String;)[Ljxl/Range;
.end method

.method public abstract findCellByName(Ljava/lang/String;)Ljxl/Cell;
.end method

.method public abstract getCell(Ljava/lang/String;)Ljxl/Cell;
.end method

.method public abstract getNumberOfSheets()I
.end method

.method public abstract getRangeNames()[Ljava/lang/String;
.end method

.method public abstract getSheet(I)Ljxl/Sheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getSheet(Ljava/lang/String;)Ljxl/Sheet;
.end method

.method public abstract getSheetNames()[Ljava/lang/String;
.end method

.method public abstract getSheets()[Ljxl/Sheet;
.end method

.method public abstract isProtected()Z
.end method

.method protected abstract parse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;,
            Ljxl/read/biff/PasswordException;
        }
    .end annotation
.end method
