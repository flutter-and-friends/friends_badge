.class public Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;
.super Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isSuccessful:Z

.field private message:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;-><init>()V

    return-void
.end method

.method public static getSimpleEvent(I)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;
    .locals 2

    .line 50
    new-instance v0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;-><init>()V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setSuccessful(Z)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    .line 52
    invoke-virtual {v0, p0}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setEventType(I)Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->responseCode:I

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->isSuccessful:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseCode(I)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;
    .locals 0

    .line 26
    iput p1, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->responseCode:I

    return-object p0
.end method

.method public setSuccessful(Z)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->isSuccessful:Z

    return-object p0
.end method
