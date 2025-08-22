.class public Ljxl/biff/drawing/EscherDisplay;
.super Ljava/lang/Object;
.source "EscherDisplay.java"


# instance fields
.field private stream:Ljxl/biff/drawing/EscherStream;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljxl/biff/drawing/EscherStream;Ljava/io/BufferedWriter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->stream:Ljxl/biff/drawing/EscherStream;

    .line 52
    iput-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    return-void
.end method

.method private displayContainer(Ljxl/biff/drawing/EscherContainer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayRecord(Ljxl/biff/drawing/EscherRecord;I)V

    add-int/lit8 p2, p2, 0x1

    .line 82
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object p1

    const/4 v0, 0x0

    .line 84
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 86
    aget-object v1, p1, v0

    .line 87
    invoke-virtual {v1}, Ljxl/biff/drawing/EscherRecord;->getEscherData()Ljxl/biff/drawing/EscherRecordData;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    check-cast v1, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {p0, v1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayContainer(Ljxl/biff/drawing/EscherContainer;I)V

    goto :goto_1

    .line 93
    :cond_0
    invoke-direct {p0, v1, p2}, Ljxl/biff/drawing/EscherDisplay;->displayRecord(Ljxl/biff/drawing/EscherRecord;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private displayRecord(Ljxl/biff/drawing/EscherRecord;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p2}, Ljxl/biff/drawing/EscherDisplay;->indent(I)V

    .line 110
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object p1

    .line 113
    iget-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecordType;->getValue()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_0

    .line 119
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dgg Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 122
    :cond_0
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_1

    .line 124
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "BStore Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 127
    :cond_1
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_2

    .line 129
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dg Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 132
    :cond_2
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_3

    .line 134
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Spgr Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 137
    :cond_3
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_4

    .line 139
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Sp Container"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 142
    :cond_4
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_5

    .line 144
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dgg"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 147
    :cond_5
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_6

    .line 149
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Bse"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 152
    :cond_6
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_7

    .line 154
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Dg"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 157
    :cond_7
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_8

    .line 159
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Spgr"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    .line 162
    :cond_8
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_9

    .line 164
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Sp"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 167
    :cond_9
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_a

    .line 169
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Opt"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 172
    :cond_a
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_b

    .line 174
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Client Anchor"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 177
    :cond_b
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_c

    .line 179
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Client Data"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 182
    :cond_c
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_d

    .line 184
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Client Text Box"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 187
    :cond_d
    sget-object p2, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    if-ne p1, p2, :cond_e

    .line 189
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "Split Menu Colors"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 194
    :cond_e
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const-string p2, "???"

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    :goto_0
    return-void
.end method

.method private indent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->writer:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public display()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    iget-object v1, p0, Ljxl/biff/drawing/EscherDisplay;->stream:Ljxl/biff/drawing/EscherStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 63
    new-instance v1, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 64
    invoke-direct {p0, v1, v2}, Ljxl/biff/drawing/EscherDisplay;->displayContainer(Ljxl/biff/drawing/EscherContainer;I)V

    return-void
.end method
