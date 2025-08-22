.class Ljxl/demo/BiffDump;
.super Ljava/lang/Object;
.source "BiffDump.java"


# static fields
.field private static final bytesPerLine:I = 0x10


# instance fields
.field private bofs:I

.field private fontIndex:I

.field private reader:Ljxl/read/biff/BiffRecordReader;

.field private recordNames:Ljava/util/HashMap;

.field private writer:Ljava/io/BufferedWriter;

.field private xfIndex:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    .line 66
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    new-instance p1, Ljxl/read/biff/File;

    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-direct {p1, p2, v0}, Ljxl/read/biff/File;-><init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V

    .line 68
    new-instance v0, Ljxl/read/biff/BiffRecordReader;

    invoke-direct {v0, p1}, Ljxl/read/biff/BiffRecordReader;-><init>(Ljxl/read/biff/File;)V

    iput-object v0, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    .line 70
    invoke-direct {p0}, Ljxl/demo/BiffDump;->buildNameHash()V

    .line 71
    invoke-direct {p0}, Ljxl/demo/BiffDump;->dump()V

    .line 73
    iget-object p1, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 74
    iget-object p1, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 75
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private buildNameHash()V
    .locals 3

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    .line 85
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    const-string v2, "BOF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    const-string v2, "EOF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    const-string v2, "FONT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SST:Ljxl/biff/Type;

    const-string v2, "SST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    const-string v2, "LABELSST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    const-string v2, "WRITEACCESS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    const-string v2, "FORMULA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    const-string v2, "XF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    const-string v2, "MULRK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    const-string v2, "NUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOUNDSHEET:Ljxl/biff/Type;

    const-string v2, "BOUNDSHEET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    const-string v2, "CONTINUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    const-string v2, "FORMAT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    const-string v2, "EXTERNSHEET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->INDEX:Ljxl/biff/Type;

    const-string v2, "INDEX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    const-string v2, "DIMENSION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    const-string v2, "ROW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DBCELL:Ljxl/biff/Type;

    const-string v2, "DBCELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    const-string v2, "BLANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MULBLANK:Ljxl/biff/Type;

    const-string v2, "MULBLANK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->RK:Ljxl/biff/Type;

    const-string v2, "RK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->RK2:Ljxl/biff/Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    const-string v2, "COLINFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->LABEL:Ljxl/biff/Type;

    const-string v2, "LABEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SHAREDFORMULA:Ljxl/biff/Type;

    const-string v2, "SHAREDFORMULA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CODEPAGE:Ljxl/biff/Type;

    const-string v2, "CODEPAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WINDOW1:Ljxl/biff/Type;

    const-string v2, "WINDOW1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    const-string v2, "WINDOW2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    const-string v2, "MERGEDCELLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    const-string v2, "HLINK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HEADER:Ljxl/biff/Type;

    const-string v2, "HEADER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    const-string v2, "FOOTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->INTERFACEHDR:Ljxl/biff/Type;

    const-string v2, "INTERFACEHDR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MMS:Ljxl/biff/Type;

    const-string v2, "MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->INTERFACEEND:Ljxl/biff/Type;

    const-string v2, "INTERFACEEND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DSF:Ljxl/biff/Type;

    const-string v2, "DSF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FNGROUPCOUNT:Ljxl/biff/Type;

    const-string v2, "FNGROUPCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    const-string v2, "COUNTRY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TABID:Ljxl/biff/Type;

    const-string v2, "TABID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    const-string v2, "PROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SCENPROTECT:Ljxl/biff/Type;

    const-string v2, "SCENPROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->OBJPROTECT:Ljxl/biff/Type;

    const-string v2, "OBJPROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WINDOWPROTECT:Ljxl/biff/Type;

    const-string v2, "WINDOWPROTECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    const-string v2, "PASSWORD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PROT4REV:Ljxl/biff/Type;

    const-string v2, "PROT4REV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PROT4REVPASS:Ljxl/biff/Type;

    const-string v2, "PROT4REVPASS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BACKUP:Ljxl/biff/Type;

    const-string v2, "BACKUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HIDEOBJ:Ljxl/biff/Type;

    const-string v2, "HIDEOBJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    const-string v2, "1904"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PRECISION:Ljxl/biff/Type;

    const-string v2, "PRECISION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOOKBOOL:Ljxl/biff/Type;

    const-string v2, "BOOKBOOL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->STYLE:Ljxl/biff/Type;

    const-string v2, "STYLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EXTSST:Ljxl/biff/Type;

    const-string v2, "EXTSST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->REFRESHALL:Ljxl/biff/Type;

    const-string v2, "REFRESHALL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    const-string v2, "CALCMODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CALCCOUNT:Ljxl/biff/Type;

    const-string v2, "CALCCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    const-string v2, "NAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MSODRAWINGGROUP:Ljxl/biff/Type;

    const-string v2, "MSODRAWINGGROUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    const-string v2, "MSODRAWING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    const-string v2, "OBJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->USESELFS:Ljxl/biff/Type;

    const-string v2, "USESELFS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    const-string v2, "SUPBOOK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    const-string v2, "LEFTMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    const-string v2, "RIGHTMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    const-string v2, "TOPMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    const-string v2, "BOTTOMMARGIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HCENTER:Ljxl/biff/Type;

    const-string v2, "HCENTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->VCENTER:Ljxl/biff/Type;

    const-string v2, "VCENTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->ITERATION:Ljxl/biff/Type;

    const-string v2, "ITERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DELTA:Ljxl/biff/Type;

    const-string v2, "DELTA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SAVERECALC:Ljxl/biff/Type;

    const-string v2, "SAVERECALC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    const-string v2, "PRINTHEADERS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PRINTGRIDLINES:Ljxl/biff/Type;

    const-string v2, "PRINTGRIDLINES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    const-string v2, "SETUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SELECTION:Ljxl/biff/Type;

    const-string v2, "SELECTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const-string v2, "STRING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FONTX:Ljxl/biff/Type;

    const-string v2, "FONTX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->IFMT:Ljxl/biff/Type;

    const-string v2, "IFMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    const-string v2, "WSBOOL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->GRIDSET:Ljxl/biff/Type;

    const-string v2, "GRIDSET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->REFMODE:Ljxl/biff/Type;

    const-string v2, "REFMODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->GUTS:Ljxl/biff/Type;

    const-string v2, "GUTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->EXTERNNAME:Ljxl/biff/Type;

    const-string v2, "EXTERNNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FBI:Ljxl/biff/Type;

    const-string v2, "FBI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CRN:Ljxl/biff/Type;

    const-string v2, "CRN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    const-string v2, "HORIZONTALPAGEBREAKS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    const-string v2, "VERTICALPAGEBREAKS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DEFAULTROWHEIGHT:Ljxl/biff/Type;

    const-string v2, "DEFAULTROWHEIGHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TEMPLATE:Ljxl/biff/Type;

    const-string v2, "TEMPLATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    const-string v2, "PANE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    const-string v2, "SCL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    const-string v2, "PALETTE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    const-string v2, "PLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->OBJPROJ:Ljxl/biff/Type;

    const-string v2, "OBJPROJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DEFCOLWIDTH:Ljxl/biff/Type;

    const-string v2, "DEFCOLWIDTH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->ARRAY:Ljxl/biff/Type;

    const-string v2, "ARRAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->WEIRD1:Ljxl/biff/Type;

    const-string v2, "WEIRD1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BOOLERR:Ljxl/biff/Type;

    const-string v2, "BOOLERR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SORT:Ljxl/biff/Type;

    const-string v2, "SORT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    const-string v2, "BUTTONPROPERTYSET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    const-string v2, "NOTE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    const-string v2, "TXO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    const-string v2, "DV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    const-string v2, "DVAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SERIES:Ljxl/biff/Type;

    const-string v2, "SERIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SERIESLIST:Ljxl/biff/Type;

    const-string v2, "SERIESLIST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->SBASEREF:Ljxl/biff/Type;

    const-string v2, "SBASEREF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CONDFMT:Ljxl/biff/Type;

    const-string v2, "CONDFMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->CF:Ljxl/biff/Type;

    const-string v2, "CF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->FILTERMODE:Ljxl/biff/Type;

    const-string v2, "FILTERMODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->AUTOFILTER:Ljxl/biff/Type;

    const-string v2, "AUTOFILTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->AUTOFILTERINFO:Ljxl/biff/Type;

    const-string v2, "AUTOFILTERINFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    sget-object v1, Ljxl/biff/Type;->UNKNOWN:Ljxl/biff/Type;

    const-string v2, "???"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private dump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 208
    :goto_0
    iget-object v1, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v1}, Ljxl/read/biff/BiffRecordReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v0}, Ljxl/read/biff/BiffRecordReader;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Ljxl/demo/BiffDump;->writeRecord(Ljxl/read/biff/Record;)Z

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeByte(BLjava/lang/StringBuffer;)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private writeRecord(Ljxl/read/biff/Record;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Ljxl/demo/BiffDump;->reader:Ljxl/read/biff/BiffRecordReader;

    invoke-virtual {v0}, Ljxl/read/biff/BiffRecordReader;->getPos()I

    move-result v0

    .line 225
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getCode()I

    move-result v1

    .line 227
    iget v2, p0, Ljxl/demo/BiffDump;->bofs:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 229
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v5, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    return v2

    .line 237
    :cond_2
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v5, v6, :cond_3

    .line 239
    iget v5, p0, Ljxl/demo/BiffDump;->bofs:I

    add-int/2addr v5, v4

    iput v5, p0, Ljxl/demo/BiffDump;->bofs:I

    .line 242
    :cond_3
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v5, v6, :cond_4

    .line 244
    iget v5, p0, Ljxl/demo/BiffDump;->bofs:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljxl/demo/BiffDump;->bofs:I

    .line 247
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    invoke-direct {p0, v0, v5}, Ljxl/demo/BiffDump;->writeSixDigitValue(ILjava/lang/StringBuffer;)V

    const-string v6, " ["

    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-object v6, p0, Ljxl/demo/BiffDump;->recordNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v6, "]"

    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "  (0x"

    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    sget-object v7, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    iget v7, v7, Ljxl/biff/Type;->value:I

    const-string v8, " (0x"

    if-ne v1, v7, :cond_5

    .line 260
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    iget v7, p0, Ljxl/demo/BiffDump;->xfIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    iget v7, p0, Ljxl/demo/BiffDump;->xfIndex:I

    add-int/2addr v7, v4

    iput v7, p0, Ljxl/demo/BiffDump;->xfIndex:I

    .line 266
    :cond_5
    sget-object v7, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    iget v7, v7, Ljxl/biff/Type;->value:I

    const/4 v9, 0x4

    if-ne v1, v7, :cond_7

    .line 268
    iget v7, p0, Ljxl/demo/BiffDump;->fontIndex:I

    if-ne v7, v9, :cond_6

    add-int/2addr v7, v4

    .line 270
    iput v7, p0, Ljxl/demo/BiffDump;->fontIndex:I

    .line 273
    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    iget v7, p0, Ljxl/demo/BiffDump;->fontIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    iget v6, p0, Ljxl/demo/BiffDump;->fontIndex:I

    add-int/2addr v6, v4

    iput v6, p0, Ljxl/demo/BiffDump;->fontIndex:I

    .line 279
    :cond_7
    iget-object v6, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    new-array v5, v9, [B

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    const v6, 0xff00

    and-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v5, v4

    const/4 v1, 0x2

    .line 285
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getLength()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    const/4 v1, 0x3

    .line 286
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getLength()I

    move-result v4

    and-int/2addr v4, v6

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    .line 287
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 288
    array-length v1, v5

    array-length v4, p1

    add-int/2addr v1, v4

    new-array v1, v1, [B

    .line 289
    array-length v4, v5

    invoke-static {v5, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    array-length v4, v5

    array-length v5, p1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 296
    :goto_2
    array-length v4, v1

    if-ge p1, v4, :cond_d

    .line 298
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    add-int v5, v0, p1

    .line 299
    invoke-direct {p0, v5, v4}, Ljxl/demo/BiffDump;->writeSixDigitValue(ILjava/lang/StringBuffer;)V

    const-string v5, "   "

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    array-length v6, v1

    sub-int/2addr v6, p1

    const/16 v7, 0x10

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x20

    if-ge v8, v6, :cond_8

    add-int v10, v8, p1

    .line 306
    aget-byte v10, v1, v10

    invoke-direct {p0, v10, v4}, Ljxl/demo/BiffDump;->writeByte(BLjava/lang/StringBuffer;)V

    .line 307
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    if-ge v6, v7, :cond_9

    const/4 v8, 0x0

    :goto_4
    rsub-int/lit8 v10, v6, 0x10

    if-ge v8, v10, :cond_9

    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    const-string v5, "  "

    .line 319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_c

    add-int v7, v5, p1

    .line 323
    aget-byte v7, v1, v7

    int-to-char v7, v7

    if-lt v7, v9, :cond_a

    const/16 v8, 0x7a

    if-le v7, v8, :cond_b

    :cond_a
    const/16 v7, 0x2e

    .line 328
    :cond_b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    add-int/2addr p1, v6

    .line 333
    iget-object v5, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 334
    iget-object v4, p0, Ljxl/demo/BiffDump;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_2

    :cond_d
    return v2
.end method

.method private writeSixDigitValue(ILjava/lang/StringBuffer;)V
    .locals 2

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    .line 347
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x30

    .line 349
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
