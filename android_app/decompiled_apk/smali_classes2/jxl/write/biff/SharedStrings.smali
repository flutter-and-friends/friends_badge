.class Ljxl/write/biff/SharedStrings;
.super Ljava/lang/Object;
.source "SharedStrings.java"


# instance fields
.field private stringList:Ljava/util/ArrayList;

.field private strings:Ljava/util/HashMap;

.field private totalOccurrences:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    return-void
.end method

.method private createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 167
    new-instance v0, Ljxl/write/biff/SSTContinueRecord;

    invoke-direct {v0}, Ljxl/write/biff/SSTContinueRecord;-><init>()V

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljxl/write/biff/SSTContinueRecord;->setFirstString(Ljava/lang/String;Z)I

    move-result p2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    .line 171
    invoke-virtual {v0, p1, p2}, Ljxl/write/biff/SSTContinueRecord;->setFirstString(Ljava/lang/String;Z)I

    move-result p2

    :goto_2
    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p3, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 182
    new-instance v0, Ljxl/write/biff/SSTContinueRecord;

    invoke-direct {v0}, Ljxl/write/biff/SSTContinueRecord;-><init>()V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 2

    .line 69
    iget-object v0, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 74
    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget p1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljxl/write/biff/SSTRecord;

    iget v1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    iget-object v2, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljxl/write/biff/SSTRecord;-><init>(II)V

    .line 107
    new-instance v1, Ljxl/write/biff/ExtendedSSTRecord;

    iget-object v2, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/ExtendedSSTRecord;-><init>(I)V

    .line 108
    invoke-virtual {v1}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v2

    .line 110
    iget-object v3, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    .line 112
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Ljxl/write/biff/SSTRecord;->getOffset()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    .line 117
    invoke-virtual {v0, v6}, Ljxl/write/biff/SSTRecord;->add(Ljava/lang/String;)I

    move-result v7

    .line 118
    rem-int v8, v5, v2

    if-nez v8, :cond_0

    .line 119
    invoke-virtual {p1}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v1, v8, v4}, Ljxl/write/biff/ExtendedSSTRecord;->addString(II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    if-nez v4, :cond_2

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    :cond_2
    invoke-direct {p0, v6, v4, p1}, Ljxl/write/biff/SharedStrings;->createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;

    move-result-object v0

    .line 133
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Ljxl/write/biff/SSTContinueRecord;->getOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    .line 137
    invoke-virtual {v0, v4}, Ljxl/write/biff/SSTContinueRecord;->add(Ljava/lang/String;)I

    move-result v7

    .line 138
    rem-int v8, v5, v2

    if-nez v8, :cond_4

    .line 139
    invoke-virtual {p1}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v1, v8, v6}, Ljxl/write/biff/ExtendedSSTRecord;->addString(II)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-eqz v7, :cond_3

    .line 145
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 146
    invoke-direct {p0, v4, v7, p1}, Ljxl/write/biff/SharedStrings;->createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 153
    :cond_6
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
