.class Lcom/yanzhenjie/permission/install/NRequest;
.super Lcom/yanzhenjie/permission/install/BaseRequest;
.source "NRequest.java"


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/install/BaseRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/NRequest;->callbackSucceed()V

    .line 32
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/NRequest;->install()V

    return-void
.end method
