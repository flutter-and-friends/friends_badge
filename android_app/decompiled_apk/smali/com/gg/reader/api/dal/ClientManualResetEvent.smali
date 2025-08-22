.class public Lcom/gg/reader/api/dal/ClientManualResetEvent;
.super Ljava/lang/Object;
.source "ClientManualResetEvent.java"


# instance fields
.field public data:Lcom/gg/reader/api/protocol/gx/Message;

.field public evt:Lcom/gg/reader/api/utils/ManualResetEvent;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/gg/reader/api/utils/ManualResetEvent;

    invoke-direct {v0, p1}, Lcom/gg/reader/api/utils/ManualResetEvent;-><init>(Z)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    return-void
.end method
