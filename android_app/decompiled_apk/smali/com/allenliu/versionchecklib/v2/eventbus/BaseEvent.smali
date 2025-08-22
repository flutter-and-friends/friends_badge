.class public Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field private eventType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;->eventType:I

    return v0
.end method

.method public setEventType(I)Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;
    .locals 0

    .line 15
    iput p1, p0, Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;->eventType:I

    return-object p0
.end method
