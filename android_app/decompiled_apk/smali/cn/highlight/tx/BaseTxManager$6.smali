.class Lcn/highlight/tx/BaseTxManager$6;
.super Ljava/lang/Object;
.source "BaseTxManager.java"

# interfaces
.implements Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/BaseTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/BaseTxManager;


# direct methods
.method constructor <init>(Lcn/highlight/tx/BaseTxManager;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$6;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewData([B)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager$6;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {v0, p1}, Lcn/highlight/tx/BaseTxManager;->access$100(Lcn/highlight/tx/BaseTxManager;[B)V

    return-void
.end method

.method public onRunError(Ljava/lang/Exception;)V
    .locals 0

    .line 364
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
