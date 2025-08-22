.class public Lcom/uhf/api/cls/GPITrigger;
.super Ljava/lang/Object;
.source "GPITrigger.java"


# instance fields
.field public GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

.field public GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

.field public StopTriggerTimeout:I

.field public TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v0}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    .line 12
    new-instance v0, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v0}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    return-void
.end method
