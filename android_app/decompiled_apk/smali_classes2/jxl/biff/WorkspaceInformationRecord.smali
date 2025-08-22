.class public Ljxl/biff/WorkspaceInformationRecord;
.super Ljxl/biff/WritableRecordData;
.source "WorkspaceInformationRecord.java"


# static fields
.field private static final defaultOptions:I = 0x4c1

.field private static final fitToPages:I = 0x100


# instance fields
.field private wsoptions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/16 v0, 0x4c1

    .line 57
    iput v0, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 46
    invoke-virtual {p0}, Ljxl/biff/WorkspaceInformationRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 91
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getFitToPages()Z
    .locals 1

    .line 67
    iget v0, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFitToPages(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 77
    iget p1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 p1, p1, 0x100

    goto :goto_0

    :cond_0
    iget p1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    and-int/lit16 p1, p1, -0x101

    :goto_0
    iput p1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    return-void
.end method
