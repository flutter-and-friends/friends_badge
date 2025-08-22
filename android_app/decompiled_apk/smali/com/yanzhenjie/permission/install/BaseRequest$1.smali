.class Lcom/yanzhenjie/permission/install/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/Rationale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/permission/install/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/permission/Rationale<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/permission/install/BaseRequest;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/install/BaseRequest;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/BaseRequest$1;->this$0:Lcom/yanzhenjie/permission/install/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showRationale(Landroid/content/Context;Ljava/io/File;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 0

    .line 41
    invoke-interface {p3}, Lcom/yanzhenjie/permission/RequestExecutor;->execute()V

    return-void
.end method

.method public bridge synthetic showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 0

    .line 38
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/permission/install/BaseRequest$1;->showRationale(Landroid/content/Context;Ljava/io/File;Lcom/yanzhenjie/permission/RequestExecutor;)V

    return-void
.end method
