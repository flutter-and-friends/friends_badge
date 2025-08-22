.class Ljxl/write/biff/SelectionRecord;
.super Ljxl/biff/WritableRecordData;
.source "SelectionRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/SelectionRecord$PaneType;
    }
.end annotation


# static fields
.field public static final lowerLeft:Ljxl/write/biff/SelectionRecord$PaneType;

.field public static final lowerRight:Ljxl/write/biff/SelectionRecord$PaneType;

.field public static final upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

.field public static final upperRight:Ljxl/write/biff/SelectionRecord$PaneType;


# instance fields
.field private column:I

.field private pane:Ljxl/write/biff/SelectionRecord$PaneType;

.field private row:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljxl/write/biff/SelectionRecord$PaneType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/SelectionRecord$PaneType;-><init>(I)V

    sput-object v0, Ljxl/write/biff/SelectionRecord;->lowerRight:Ljxl/write/biff/SelectionRecord$PaneType;

    .line 57
    new-instance v0, Ljxl/write/biff/SelectionRecord$PaneType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljxl/write/biff/SelectionRecord$PaneType;-><init>(I)V

    sput-object v0, Ljxl/write/biff/SelectionRecord;->upperRight:Ljxl/write/biff/SelectionRecord$PaneType;

    .line 58
    new-instance v0, Ljxl/write/biff/SelectionRecord$PaneType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljxl/write/biff/SelectionRecord$PaneType;-><init>(I)V

    sput-object v0, Ljxl/write/biff/SelectionRecord;->lowerLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    .line 59
    new-instance v0, Ljxl/write/biff/SelectionRecord$PaneType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljxl/write/biff/SelectionRecord$PaneType;-><init>(I)V

    sput-object v0, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V
    .locals 1

    .line 66
    sget-object v0, Ljxl/biff/Type;->SELECTION:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 67
    iput p2, p0, Ljxl/write/biff/SelectionRecord;->column:I

    .line 68
    iput p3, p0, Ljxl/write/biff/SelectionRecord;->row:I

    .line 69
    iput-object p1, p0, Ljxl/write/biff/SelectionRecord;->pane:Ljxl/write/biff/SelectionRecord$PaneType;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 82
    iget-object v1, p0, Ljxl/write/biff/SelectionRecord;->pane:Ljxl/write/biff/SelectionRecord$PaneType;

    iget v1, v1, Ljxl/write/biff/SelectionRecord$PaneType;->val:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 83
    iget v1, p0, Ljxl/write/biff/SelectionRecord;->row:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 84
    iget v1, p0, Ljxl/write/biff/SelectionRecord;->column:I

    const/4 v3, 0x3

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    .line 88
    iget v1, p0, Ljxl/write/biff/SelectionRecord;->row:I

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 89
    iget v1, p0, Ljxl/write/biff/SelectionRecord;->row:I

    const/16 v2, 0xb

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 90
    iget v1, p0, Ljxl/write/biff/SelectionRecord;->column:I

    int-to-byte v2, v1

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    int-to-byte v1, v1

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    return-object v0
.end method
