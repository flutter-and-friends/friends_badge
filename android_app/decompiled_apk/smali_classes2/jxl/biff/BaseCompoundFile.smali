.class public abstract Ljxl/biff/BaseCompoundFile;
.super Ljava/lang/Object;
.source "BaseCompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/BaseCompoundFile$PropertyStorage;
    }
.end annotation


# static fields
.field protected static final BIG_BLOCK_DEPOT_BLOCKS_POS:I = 0x4c

.field protected static final BIG_BLOCK_SIZE:I = 0x200

.field private static final CHILD_POS:I = 0x4c

.field private static final COLOUR_POS:I = 0x43

.field public static final COMP_OBJ_NAME:Ljava/lang/String; = "\u0001CompObj"

.field public static final DIRECTORY_PS_TYPE:I = 0x1

.field public static final DOCUMENT_SUMMARY_INFORMATION_NAME:Ljava/lang/String; = "\u0005DocumentSummaryInformation"

.field protected static final EXTENSION_BLOCK_POS:I = 0x44

.field public static final FILE_PS_TYPE:I = 0x2

.field protected static final IDENTIFIER:[B

.field private static final NEXT_POS:I = 0x48

.field public static final NONE_PS_TYPE:I = 0x0

.field protected static final NUM_BIG_BLOCK_DEPOT_BLOCKS_POS:I = 0x2c

.field protected static final NUM_EXTENSION_BLOCK_POS:I = 0x48

.field protected static final NUM_SMALL_BLOCK_DEPOT_BLOCKS_POS:I = 0x40

.field private static final PREVIOUS_POS:I = 0x44

.field protected static final PROPERTY_STORAGE_BLOCK_SIZE:I = 0x80

.field public static final ROOT_ENTRY_NAME:Ljava/lang/String; = "Root Entry"

.field public static final ROOT_ENTRY_PS_TYPE:I = 0x5

.field protected static final ROOT_START_BLOCK_POS:I = 0x30

.field private static final SIZE_OF_NAME_POS:I = 0x40

.field private static final SIZE_POS:I = 0x78

.field protected static final SMALL_BLOCK_DEPOT_BLOCK_POS:I = 0x3c

.field protected static final SMALL_BLOCK_SIZE:I = 0x40

.field protected static final SMALL_BLOCK_THRESHOLD:I = 0x1000

.field public static final STANDARD_PROPERTY_SETS:[Ljava/lang/String;

.field private static final START_BLOCK_POS:I = 0x74

.field public static final SUMMARY_INFORMATION_NAME:Ljava/lang/String; = "\u0005SummaryInformation"

.field private static final TYPE_POS:I = 0x42

.field public static final WORKBOOK_NAME:Ljava/lang/String; = "Workbook"

.field static synthetic class$jxl$biff$BaseCompoundFile:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-object v0, Ljxl/biff/BaseCompoundFile;->class$jxl$biff$BaseCompoundFile:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.BaseCompoundFile"

    invoke-static {v0}, Ljxl/biff/BaseCompoundFile;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->class$jxl$biff$BaseCompoundFile:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->logger:Lcommon/Logger;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->IDENTIFIER:[B

    const-string v0, "Root Entry"

    const-string v1, "Workbook"

    const-string v2, "\u0005SummaryInformation"

    const-string v3, "\u0005DocumentSummaryInformation"

    .line 118
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcommon/Logger;
    .locals 1

    .line 28
    sget-object v0, Ljxl/biff/BaseCompoundFile;->logger:Lcommon/Logger;

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 33
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
