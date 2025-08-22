.class public Ljxl/biff/drawing/ObjRecord;
.super Ljxl/biff/WritableRecordData;
.source "ObjRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/ObjRecord$ObjType;
    }
.end annotation


# static fields
.field public static final BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final CLIPBOARD_FORMAT_LENGTH:I = 0x6

.field public static final COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final COMBOBOX_STRUCTURE_LENGTH:I = 0x2c

.field private static final COMMON_DATA_LENGTH:I = 0x16

.field public static final DIALOGUEBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final EDITBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final END_LENGTH:I = 0x4

.field public static final EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final FORMCONTROL:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final GROUPBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final LABEL:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final LISTBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final MSOFFICEDRAWING:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final NOTE_STRUCTURE_LENGTH:I = 0x1a

.field public static final OPTION:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final PICTURE_OPTION_LENGTH:I = 0x6

.field public static final TBD:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final TBD2:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

.field static synthetic class$jxl$biff$drawing$ObjRecord:Ljava/lang/Class;

.field private static final logger:Lcommon/Logger;


# instance fields
.field private objectId:I

.field private read:Z

.field private type:Ljxl/biff/drawing/ObjRecord$ObjType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-object v0, Ljxl/biff/drawing/ObjRecord;->class$jxl$biff$drawing$ObjRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.ObjRecord"

    invoke-static {v0}, Ljxl/biff/drawing/ObjRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->class$jxl$biff$drawing$ObjRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->logger:Lcommon/Logger;

    .line 97
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x1

    const-string v2, "TBD2"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->TBD2:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 98
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x2

    const-string v2, "TBD"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->TBD:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 99
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x5

    const-string v2, "Chart"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 100
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x6

    const-string v2, "Text"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 101
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x7

    const-string v2, "Button"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 102
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x8

    const-string v2, "Picture"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 103
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xe

    const-string v2, "Checkbox"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 104
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v2, 0xc

    const-string v3, "Option"

    invoke-direct {v0, v2, v3}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->OPTION:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 105
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v2, 0xd

    const-string v3, "Edit Box"

    invoke-direct {v0, v2, v3}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->EDITBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 106
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const-string v2, "Label"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->LABEL:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 107
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xf

    const-string v2, "Dialogue Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->DIALOGUEBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 108
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x12

    const-string v2, "List Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->LISTBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 109
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x13

    const-string v2, "Group Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->GROUPBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 110
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x14

    const-string v2, "Combo Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 111
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v2, 0x1e

    const-string v3, "MS Office Drawing"

    invoke-direct {v0, v2, v3}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->MSOFFICEDRAWING:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 113
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const-string v2, "Form Combo Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->FORMCONTROL:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 115
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x19

    const-string v2, "Excel Note"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 118
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xff

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-void
.end method

.method constructor <init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V
    .locals 1

    .line 157
    sget-object v0, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 158
    iput p1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    .line 159
    iput-object p2, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 4

    .line 135
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 136
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x4

    .line 137
    aget-byte v0, p1, v0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljxl/biff/drawing/ObjRecord;->read:Z

    .line 139
    invoke-static {v0}, Ljxl/biff/drawing/ObjRecord$ObjType;->getType(I)Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 141
    iget-object v1, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_0

    .line 143
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown object type code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x6

    .line 146
    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 39
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

.method private getComboBoxData()[B
    .locals 9

    const/16 v0, 0x46

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 326
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v2, 0x2

    const/16 v3, 0x12

    .line 329
    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 332
    iget-object v3, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v3, v3, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 335
    iget v3, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    const/4 v5, 0x6

    invoke-static {v3, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v3, 0x8

    .line 338
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v6, 0x16

    const/16 v7, 0xc

    .line 343
    invoke-static {v7, v0, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v6, 0x14

    const/16 v7, 0x18

    .line 346
    invoke-static {v6, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v6, 0x1

    const/16 v7, 0x24

    aput-byte v6, v0, v7

    const/16 v7, 0x26

    aput-byte v4, v0, v7

    const/16 v7, 0x2a

    const/16 v8, 0x10

    aput-byte v8, v0, v7

    const/16 v7, 0x2e

    const/16 v8, 0x13

    aput-byte v8, v0, v7

    const/16 v7, 0x30

    const/16 v8, -0x12

    aput-byte v8, v0, v7

    const/16 v7, 0x31

    const/16 v8, 0x1f

    aput-byte v8, v0, v7

    const/16 v7, 0x34

    aput-byte v4, v0, v7

    const/16 v4, 0x38

    aput-byte v6, v0, v4

    const/16 v4, 0x39

    aput-byte v5, v0, v4

    const/16 v4, 0x3c

    aput-byte v2, v0, v4

    const/16 v2, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x40

    aput-byte v2, v0, v2

    const/16 v2, 0x42

    .line 366
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x44

    .line 369
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method private getNoteData()[B
    .locals 4

    const/16 v0, 0x34

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 273
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x12

    const/4 v3, 0x2

    .line 276
    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 279
    iget-object v2, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v2, v2, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    const/4 v3, 0x4

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 282
    iget v2, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    const/4 v3, 0x6

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x4011

    const/16 v3, 0x8

    .line 285
    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x16

    const/16 v3, 0xd

    .line 290
    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v3, 0x18

    .line 293
    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x30

    .line 300
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x32

    .line 303
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method private getPictureData()[B
    .locals 6

    const/16 v0, 0x26

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 209
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v2, 0x2

    const/16 v3, 0x12

    .line 212
    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 215
    iget-object v3, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v3, v3, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 218
    iget v3, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    const/4 v4, 0x6

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v3, 0x8

    const/16 v4, 0x6011

    .line 221
    invoke-static {v4, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v4, 0x16

    const/4 v5, 0x7

    .line 226
    invoke-static {v5, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v4, 0x18

    .line 229
    invoke-static {v2, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const v4, 0xffff

    const/16 v5, 0x1a

    .line 232
    invoke-static {v4, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v4, 0x1c

    .line 237
    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v3, 0x1e

    .line 240
    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v2, 0x1

    const/16 v3, 0x20

    .line 243
    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x22

    .line 247
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0x24

    .line 250
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .line 169
    iget-boolean v0, p0, Ljxl/biff/drawing/ObjRecord;->read:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Ljxl/biff/drawing/ObjRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v0, v1, :cond_4

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_2

    .line 180
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getNoteData()[B

    move-result-object v0

    return-object v0

    .line 182
    :cond_2
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_3

    .line 184
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getComboBoxData()[B

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_4
    :goto_0
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getPictureData()[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()I
    .locals 1

    .line 405
    iget v0, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    return v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 385
    invoke-super {p0}, Ljxl/biff/WritableRecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ObjRecord$ObjType;
    .locals 1

    .line 395
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-object v0
.end method
