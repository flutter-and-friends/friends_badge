.class public Ljxl/demo/Formulas;
.super Ljava/lang/Object;
.source "Formulas.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const-string v0, "UnicodeBig"

    .line 58
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p3, "UTF8"

    .line 65
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 66
    new-instance p2, Ljava/io/BufferedWriter;

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 72
    invoke-virtual {p1, v1}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v2

    .line 74
    invoke-interface {v2}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v3, 0x0

    .line 80
    :goto_1
    invoke-interface {v2}, Ljxl/Sheet;->getRows()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 82
    invoke-interface {v2, v3}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v4

    const/4 v5, 0x0

    .line 84
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 86
    aget-object v6, v4, v5

    .line 87
    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v8, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-eq v7, v8, :cond_2

    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v8, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-eq v7, v8, :cond_2

    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v8, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-eq v7, v8, :cond_2

    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v8, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-eq v7, v8, :cond_2

    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v8, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    if-ne v7, v8, :cond_3

    .line 93
    :cond_2
    move-object v7, v6

    check-cast v7, Ljxl/FormulaCell;

    .line 94
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v9

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v10

    invoke-static {v9, v10, v8}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Formula in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " value:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v6}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 103
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, " formula: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v7}, Ljxl/FormulaCell;->getFormula()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 105
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljxl/biff/formula/FormulaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v6

    .line 109
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v9, 0x21

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 117
    :cond_6
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 118
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    .line 120
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 122
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 123
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "There were "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " errors"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 126
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 128
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 134
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
