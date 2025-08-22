.class public Ljxl/demo/Escher;
.super Ljava/lang/Object;
.source "Escher.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const-string v0, "UnicodeBig"

    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p3, "UTF8"

    .line 57
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 58
    new-instance p2, Ljava/io/BufferedWriter;

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p3, 0x0

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 62
    invoke-virtual {p1, p3}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SheetImpl;

    .line 63
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 65
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 67
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getDrawingData()Ljxl/biff/drawing/DrawingData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v1, Ljxl/biff/drawing/EscherDisplay;

    invoke-direct {v1, v0, p2}, Ljxl/biff/drawing/EscherDisplay;-><init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V

    .line 72
    invoke-virtual {v1}, Ljxl/biff/drawing/EscherDisplay;->display()V

    .line 75
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 76
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 77
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 80
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
