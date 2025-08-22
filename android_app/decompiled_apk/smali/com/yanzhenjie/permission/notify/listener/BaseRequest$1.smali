.class Lcom/yanzhenjie/permission/notify/listener/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/Rationale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/permission/notify/listener/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/permission/Rationale<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/permission/notify/listener/BaseRequest;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/notify/listener/BaseRequest;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/listener/BaseRequest$1;->this$0:Lcom/yanzhenjie/permission/notify/listener/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/permission/notify/listener/BaseRequest$1;->showRationale(Landroid/content/Context;Ljava/lang/Void;Lcom/yanzhenjie/permission/RequestExecutor;)V

    return-void
.end method

.method public showRationale(Landroid/content/Context;Ljava/lang/Void;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 0

    .line 35
    invoke-interface {p3}, Lcom/yanzhenjie/permission/RequestExecutor;->execute()V

    return-void
.end method
