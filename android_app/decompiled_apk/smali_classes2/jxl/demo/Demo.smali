.class public Ljxl/demo/Demo;
.super Ljava/lang/Object;
.source "Demo.java"


# static fields
.field private static final CSVFormat:I = 0xd

.field private static final XMLFormat:I = 0xe

.field static synthetic class$jxl$demo$Demo:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Ljxl/demo/Demo;->class$jxl$demo$Demo:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.demo.Demo"

    invoke-static {v0}, Ljxl/demo/Demo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/demo/Demo;->class$jxl$demo$Demo:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 45
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

.method private static displayHelp()V
    .locals 2

    .line 52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Command format:  Demo [-unicode] [-csv] [-hide] excelfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -xml [-format]  excelfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -readwrite|-rw excelfile output"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -biffdump | -bd | -wa | -write | -formulas | -features | -escher | -escherdg excelfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -ps excelfile [property] [output]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -version | -logtest | -h | -help"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static findTest(Ljxl/Workbook;)V
    .locals 7

    .line 304
    sget-object v0, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    const-string v1, "Find test"

    invoke-virtual {v0, v1}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    const-string v0, "named1"

    .line 306
    invoke-virtual {p0, v0}, Ljxl/Workbook;->findCellByName(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v1, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "named1 contents:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "named2"

    .line 312
    invoke-virtual {p0, v0}, Ljxl/Workbook;->findCellByName(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v0

    const-string v1, "named2 contents:  "

    if-eqz v0, :cond_1

    .line 315
    sget-object v2, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    :cond_1
    const-string v0, "namedrange"

    .line 318
    invoke-virtual {p0, v0}, Ljxl/Workbook;->findCellByName(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 324
    :cond_2
    invoke-virtual {p0, v0}, Ljxl/Workbook;->findByName(Ljava/lang/String;)[Ljxl/Range;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 327
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v2

    .line 328
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "namedrange top left contents:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 330
    aget-object v0, v0, v1

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    .line 331
    sget-object v2, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "namedrange bottom right contents:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "nonadjacentrange"

    .line 334
    invoke-virtual {p0, v0}, Ljxl/Workbook;->findByName(Ljava/lang/String;)[Ljxl/Range;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 337
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 339
    aget-object v3, v0, v2

    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v3

    .line 340
    sget-object v4, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "nonadjacent top left contents:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 342
    aget-object v3, v0, v2

    invoke-interface {v3}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v3

    .line 343
    sget-object v4, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "nonadjacent bottom right contents:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "horizontalnonadjacentrange"

    .line 347
    invoke-virtual {p0, v0}, Ljxl/Workbook;->findByName(Ljava/lang/String;)[Ljxl/Range;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 350
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_5

    .line 352
    aget-object v0, p0, v1

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    .line 353
    sget-object v2, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "horizontalnonadjacent top left contents:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 356
    aget-object v0, p0, v1

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    .line 357
    sget-object v2, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "horizontalnonadjacent bottom right contents:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 71
    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Ljxl/demo/Demo;->displayHelp()V

    .line 74
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v1, 0x0

    .line 77
    aget-object v3, v0, v1

    const-string v4, "-help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v1

    const-string v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    :cond_1
    invoke-static {}, Ljxl/demo/Demo;->displayHelp()V

    .line 80
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 83
    :cond_2
    aget-object v3, v0, v1

    const-string v4, "-version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljxl/Workbook;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 89
    :cond_3
    aget-object v3, v0, v1

    const-string v4, "-logtest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    const-string v4, "A sample \"debug\" message"

    invoke-virtual {v3, v4}, Lcommon/Logger;->debug(Ljava/lang/Object;)V

    .line 92
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    const-string v4, "A sample \"info\" message"

    invoke-virtual {v3, v4}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 93
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    const-string v4, "A sample \"warning\" message"

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 94
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    const-string v4, "A sample \"error\" message"

    invoke-virtual {v3, v4}, Lcommon/Logger;->error(Ljava/lang/Object;)V

    .line 95
    sget-object v3, Ljxl/demo/Demo;->logger:Lcommon/Logger;

    const-string v4, "A sample \"fatal\" message"

    invoke-virtual {v3, v4}, Lcommon/Logger;->fatal(Ljava/lang/Object;)V

    .line 96
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 108
    :cond_4
    aget-object v3, v0, v1

    .line 112
    aget-object v3, v0, v1

    const-string v4, "-write"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 115
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    :goto_5
    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 117
    :cond_5
    aget-object v3, v0, v1

    const-string v5, "-formulas"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    .line 122
    :cond_6
    aget-object v3, v0, v1

    const-string v5, "-features"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_6

    .line 127
    :cond_7
    aget-object v3, v0, v1

    const-string v5, "-escher"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_7

    .line 132
    :cond_8
    aget-object v3, v0, v1

    const-string v5, "-escherdg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_b

    .line 137
    :cond_9
    aget-object v3, v0, v1

    const-string v5, "-biffdump"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    aget-object v3, v0, v1

    const-string v5, "-bd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_a

    .line 142
    :cond_a
    aget-object v3, v0, v1

    const-string v5, "-wa"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 145
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 147
    :cond_b
    aget-object v3, v0, v1

    const-string v5, "-ps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_e

    .line 150
    aget-object v3, v0, v2

    .line 152
    array-length v6, v0

    if-le v6, v5, :cond_c

    .line 154
    aget-object v5, v0, v5

    goto :goto_8

    :cond_c
    move-object v5, v4

    .line 157
    :goto_8
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_d

    const/4 v4, 0x3

    .line 159
    aget-object v4, v0, v4

    :cond_d
    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    .line 162
    :cond_e
    aget-object v3, v0, v1

    const-string v6, "-readwrite"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    aget-object v3, v0, v1

    const-string v6, "-rw"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_9

    .line 170
    :cond_f
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v3, v0, v3

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 165
    :cond_10
    :goto_9
    aget-object v3, v0, v2

    .line 166
    aget-object v5, v0, v5

    move-object v12, v3

    move-object v14, v4

    move-object v13, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 140
    :cond_11
    :goto_a
    aget-object v3, v0, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    :goto_b
    const-string v15, "UTF8"

    if-nez v3, :cond_18

    if-nez v4, :cond_18

    if-nez v5, :cond_18

    if-nez v6, :cond_18

    if-nez v7, :cond_18

    if-nez v8, :cond_18

    if-nez v9, :cond_18

    if-nez v10, :cond_18

    if-nez v11, :cond_18

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0xd

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 188
    :goto_c
    array-length v1, v0

    sub-int/2addr v1, v2

    if-ge v15, v1, :cond_17

    .line 190
    aget-object v1, v0, v15

    const-string v2, "-unicode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v16, "UnicodeBig"

    const/4 v1, 0x1

    goto :goto_d

    .line 194
    :cond_12
    aget-object v1, v0, v15

    const-string v2, "-xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    const/16 v17, 0xe

    goto :goto_d

    .line 198
    :cond_13
    aget-object v1, v0, v15

    const-string v2, "-csv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    const/16 v17, 0xd

    goto :goto_d

    .line 202
    :cond_14
    aget-object v1, v0, v15

    const-string v2, "-format"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    const/16 v19, 0x1

    goto :goto_d

    .line 206
    :cond_15
    aget-object v1, v0, v15

    const-string v2, "-hide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    const/16 v18, 0x1

    goto :goto_d

    .line 212
    :cond_16
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Command format:  CSV [-unicode] [-xml|-csv] excelfile"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 214
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_d
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_c

    :cond_17
    move-object/from16 v15, v16

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_e

    :cond_18
    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-eqz v3, :cond_19

    .line 223
    :try_start_0
    new-instance v0, Ljxl/demo/Write;

    invoke-direct {v0, v12}, Ljxl/demo/Write;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljxl/demo/Write;->write()V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_19
    if-eqz v4, :cond_1a

    .line 228
    new-instance v0, Ljxl/demo/ReadWrite;

    invoke-direct {v0, v12, v13}, Ljxl/demo/ReadWrite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljxl/demo/ReadWrite;->readWrite()V

    goto/16 :goto_11

    :cond_1a
    if-eqz v5, :cond_1b

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 234
    new-instance v1, Ljxl/demo/Formulas;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0, v2, v15}, Ljxl/demo/Formulas;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    goto/16 :goto_11

    :cond_1b
    if-eqz v9, :cond_1c

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 240
    new-instance v1, Ljxl/demo/Features;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0, v2, v15}, Ljxl/demo/Features;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    goto/16 :goto_11

    :cond_1c
    if-eqz v10, :cond_1d

    .line 245
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 246
    new-instance v1, Ljxl/demo/Escher;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0, v2, v15}, Ljxl/demo/Escher;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    goto/16 :goto_11

    :cond_1d
    if-eqz v11, :cond_1e

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 252
    new-instance v1, Ljxl/demo/EscherDrawingGroup;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0, v2, v15}, Ljxl/demo/EscherDrawingGroup;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    goto :goto_11

    :cond_1e
    if-eqz v6, :cond_1f

    .line 257
    new-instance v0, Ljxl/demo/BiffDump;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v2}, Ljxl/demo/BiffDump;-><init>(Ljava/io/File;Ljava/io/OutputStream;)V

    goto :goto_11

    :cond_1f
    if-eqz v7, :cond_20

    .line 261
    new-instance v0, Ljxl/demo/WriteAccess;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljxl/demo/WriteAccess;-><init>(Ljava/io/File;)V

    goto :goto_11

    :cond_20
    if-eqz v8, :cond_22

    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz v13, :cond_21

    .line 268
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 270
    :cond_21
    new-instance v1, Ljxl/demo/PropertySetsReader;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v14, v0}, Ljxl/demo/PropertySetsReader;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 276
    :cond_22
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v3

    const/16 v4, 0xd

    if-ne v0, v4, :cond_23

    .line 282
    new-instance v0, Ljxl/demo/CSV;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v3, v2, v15, v1}, Ljxl/demo/CSV;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto :goto_f

    :cond_23
    const/16 v1, 0xe

    if-ne v0, v1, :cond_24

    .line 286
    new-instance v0, Ljxl/demo/XML;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v3, v1, v15, v2}, Ljxl/demo/XML;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 289
    :cond_24
    :goto_f
    invoke-virtual {v3}, Ljxl/Workbook;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    .line 294
    :goto_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    return-void
.end method
