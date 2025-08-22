.class Lcom/yanzhenjie/permission/notify/listener/J1Request;
.super Lcom/yanzhenjie/permission/notify/listener/BaseRequest;
.source "J1Request.java"

# interfaces
.implements Lcom/yanzhenjie/permission/RequestExecutor;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/notify/listener/BaseRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/notify/listener/J1Request;->callbackSucceed()V

    return-void
.end method
