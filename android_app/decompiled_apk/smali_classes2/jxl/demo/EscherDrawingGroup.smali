.class public Ljxl/demo/EscherDrawingGroup;
.super Ljava/lang/Object;
.source "EscherDrawingGroup.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
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

    .line 60
    check-cast p1, Ljxl/read/biff/WorkbookParser;

    .line 62
    invoke-virtual {p1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 66
    new-instance p3, Ljxl/biff/drawing/EscherDisplay;

    invoke-direct {p3, p1, p2}, Ljxl/biff/drawing/EscherDisplay;-><init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V

    .line 67
    invoke-virtual {p3}, Ljxl/biff/drawing/EscherDisplay;->display()V

    .line 70
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 71
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 72
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 73
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
