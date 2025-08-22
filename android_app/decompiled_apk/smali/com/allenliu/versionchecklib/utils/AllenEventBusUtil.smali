.class public Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;
.super Ljava/lang/Object;
.source "AllenEventBusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEventBus(I)V
    .locals 2

    .line 13
    new-instance v0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;-><init>()V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setSuccessful(Z)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    .line 15
    invoke-virtual {v0, p0}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setEventType(I)Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
