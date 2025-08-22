.class public Ljxl/biff/ContinueRecord;
.super Ljxl/biff/WritableRecordData;
.source "ContinueRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/ContinueRecord;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 53
    sget-object v0, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 54
    iput-object p1, p0, Ljxl/biff/ContinueRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 64
    iget-object v0, p0, Ljxl/biff/ContinueRecord;->data:[B

    return-object v0
.end method
