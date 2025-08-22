.class public Ljxl/demo/XML;
.super Ljava/lang/Object;
.source "XML.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;

.field private workbook:Ljxl/Workbook;


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p3, p0, Ljxl/demo/XML;->encoding:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Ljxl/demo/XML;->workbook:Ljxl/Workbook;

    .line 77
    iput-object p2, p0, Ljxl/demo/XML;->out:Ljava/io/OutputStream;

    .line 79
    iget-object p1, p0, Ljxl/demo/XML;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, "UnicodeBig"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "UTF8"

    .line 81
    iput-object p1, p0, Ljxl/demo/XML;->encoding:Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    .line 86
    invoke-direct {p0}, Ljxl/demo/XML;->writeFormattedXML()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Ljxl/demo/XML;->writeXML()V

    :goto_0
    return-void
.end method

.method private writeFormattedXML()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\">"

    const-string v1, " />"

    const-string v2, "\""

    .line 165
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Ljxl/demo/XML;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljxl/demo/XML;->encoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 166
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "<?xml version=\"1.0\" ?>"

    .line 168
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v3, "<!DOCTYPE workbook SYSTEM \"formatworkbook.dtd\">"

    .line 170
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 172
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v3, "<workbook>"

    .line 173
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 175
    :goto_0
    iget-object v6, p0, Ljxl/demo/XML;->workbook:Ljxl/Workbook;

    invoke-virtual {v6}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 177
    iget-object v6, p0, Ljxl/demo/XML;->workbook:Ljxl/Workbook;

    invoke-virtual {v6, v5}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v6

    const-string v7, "  <sheet>"

    .line 179
    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 181
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "    <name><![CDATA["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v6}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "]]></name>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v7, 0x0

    .line 188
    :goto_1
    invoke-interface {v6}, Ljxl/Sheet;->getRows()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 190
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "    <row number=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 192
    invoke-interface {v6, v7}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v8

    const/4 v9, 0x0

    .line 194
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_8

    .line 197
    aget-object v10, v8, v9

    invoke-interface {v10}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v10

    sget-object v11, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v10, v11, :cond_0

    aget-object v10, v8, v9

    invoke-interface {v10}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 200
    :cond_0
    aget-object v10, v8, v9

    invoke-interface {v10}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v10

    .line 201
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "      <col number=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v11, "        <data>"

    .line 203
    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 204
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "<![CDATA["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v12, v8, v9

    invoke-interface {v12}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, "]]>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v11, "</data>"

    .line 205
    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 208
    aget-object v11, v8, v9

    invoke-interface {v11}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 210
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "        <format wrap=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Ljxl/format/CellFormat;->getWrap()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 212
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                align=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Ljxl/format/CellFormat;->getAlignment()Ljxl/format/Alignment;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/Alignment;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 215
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                valign=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Ljxl/format/CellFormat;->getVerticalAlignment()Ljxl/format/VerticalAlignment;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/VerticalAlignment;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 218
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                orientation=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Ljxl/format/CellFormat;->getOrientation()Ljxl/format/Orientation;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/Orientation;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v11, ">"

    .line 220
    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 224
    invoke-interface {v10}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v11

    .line 225
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "          <font name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 227
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "                point_size=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->getPointSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 230
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "                bold_weight=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->getBoldWeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 233
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "                italic=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->isItalic()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 235
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "                underline=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->getUnderlineStyle()Ljxl/format/UnderlineStyle;

    move-result-object v13

    invoke-virtual {v13}, Ljxl/format/UnderlineStyle;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 238
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "                colour=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->getColour()Ljxl/format/Colour;

    move-result-object v13

    invoke-virtual {v13}, Ljxl/format/Colour;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 241
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "                script=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljxl/format/Font;->getScriptStyle()Ljxl/format/ScriptStyle;

    move-result-object v11

    invoke-virtual {v11}, Ljxl/format/ScriptStyle;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 248
    invoke-interface {v10}, Ljxl/format/CellFormat;->getBackgroundColour()Ljxl/format/Colour;

    move-result-object v11

    sget-object v12, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    if-ne v11, v12, :cond_1

    invoke-interface {v10}, Ljxl/format/CellFormat;->getPattern()Ljxl/format/Pattern;

    move-result-object v11

    sget-object v12, Ljxl/format/Pattern;->NONE:Ljxl/format/Pattern;

    if-eq v11, v12, :cond_2

    .line 251
    :cond_1
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "          <background colour=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Ljxl/format/CellFormat;->getBackgroundColour()Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/Colour;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 254
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                      pattern=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v10}, Ljxl/format/CellFormat;->getPattern()Ljxl/format/Pattern;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/Pattern;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 262
    :cond_2
    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-interface {v10, v11}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v11, v12, :cond_3

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-interface {v10, v11}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v11, v12, :cond_3

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-interface {v10, v11}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-ne v11, v12, :cond_3

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-interface {v10, v11}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    if-eq v11, v12, :cond_4

    .line 268
    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "          <border top=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-interface {v10, v12}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 271
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                  bottom=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v12, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-interface {v10, v12}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 275
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                  left=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v12, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-interface {v10, v12}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 278
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "                  right=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-interface {v10, v12}, Ljxl/format/CellFormat;->getBorder(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/format/BorderLineStyle;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 285
    :cond_4
    invoke-interface {v10}, Ljxl/format/CellFormat;->getFormat()Ljxl/format/Format;

    move-result-object v11

    invoke-interface {v11}, Ljxl/format/Format;->getFormatString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "          <format_string string=\""

    .line 287
    invoke-virtual {v4, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 288
    invoke-interface {v10}, Ljxl/format/CellFormat;->getFormat()Ljxl/format/Format;

    move-result-object v10

    invoke-interface {v10}, Ljxl/format/Format;->getFormatString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v10, "\" />"

    .line 289
    invoke-virtual {v4, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    :cond_5
    const-string v10, "        </format>"

    .line 293
    invoke-virtual {v4, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    :cond_6
    const-string v10, "      </col>"

    .line 297
    invoke-virtual {v4, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_8
    const-string v8, "    </row>"

    .line 301
    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v6, "  </sheet>"

    .line 304
    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v0, "</workbook>"

    .line 308
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 311
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 312
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 316
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private writeXML()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\">"

    .line 102
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljxl/demo/XML;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljxl/demo/XML;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "<?xml version=\"1.0\" ?>"

    .line 105
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    const-string v1, "<!DOCTYPE workbook SYSTEM \"workbook.dtd\">"

    .line 107
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 109
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    const-string v1, "<workbook>"

    .line 110
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 112
    :goto_0
    iget-object v4, p0, Ljxl/demo/XML;->workbook:Ljxl/Workbook;

    invoke-virtual {v4}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 114
    iget-object v4, p0, Ljxl/demo/XML;->workbook:Ljxl/Workbook;

    invoke-virtual {v4, v3}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v4

    const-string v5, "  <sheet>"

    .line 116
    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 118
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "    <name><![CDATA["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v4}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "]]></name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v5, 0x0

    .line 123
    :goto_1
    invoke-interface {v4}, Ljxl/Sheet;->getRows()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 125
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "    <row number=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 127
    invoke-interface {v4, v5}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v6

    const/4 v7, 0x0

    .line 129
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_1

    .line 131
    aget-object v8, v6, v7

    invoke-interface {v8}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v8

    sget-object v9, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v8, v9, :cond_0

    .line 133
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "      <col number=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 134
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "<![CDATA["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v9, v6, v7

    invoke-interface {v9}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "]]>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v8, "</col>"

    .line 135
    invoke-virtual {v2, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const-string v6, "    </row>"

    .line 139
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "  </sheet>"

    .line 142
    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "</workbook>"

    .line 146
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 149
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 150
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
