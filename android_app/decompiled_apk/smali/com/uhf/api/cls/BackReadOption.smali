.class public Lcom/uhf/api/cls/BackReadOption;
.super Ljava/lang/Object;
.source "BackReadOption.java"


# instance fields
.field public FastReadDutyRation:C

.field public GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

.field public IsFastRead:Z

.field public IsGPITrigger:Z

.field public ReadDuration:S

.field public ReadInterval:I

.field public TMFlags:Lcom/uhf/api/cls/TagMetaFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/uhf/api/cls/TagMetaFlags;

    invoke-direct {v0}, Lcom/uhf/api/cls/TagMetaFlags;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    .line 15
    new-instance v0, Lcom/uhf/api/cls/GPITrigger;

    invoke-direct {v0}, Lcom/uhf/api/cls/GPITrigger;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    return-void
.end method
