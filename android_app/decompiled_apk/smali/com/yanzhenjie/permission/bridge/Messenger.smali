.class Lcom/yanzhenjie/permission/bridge/Messenger;
.super Landroid/content/BroadcastReceiver;
.source "Messenger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/permission/bridge/Messenger$Callback;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.yanzhenjie.permission.bridge"


# instance fields
.field private final mCallback:Lcom/yanzhenjie/permission/bridge/Messenger$Callback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yanzhenjie/permission/bridge/Messenger$Callback;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yanzhenjie/permission/bridge/Messenger;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/yanzhenjie/permission/bridge/Messenger;->mCallback:Lcom/yanzhenjie/permission/bridge/Messenger$Callback;

    return-void
.end method

.method public static send(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yanzhenjie.permission.bridge"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/yanzhenjie/permission/bridge/Messenger;->mCallback:Lcom/yanzhenjie/permission/bridge/Messenger$Callback;

    invoke-interface {p1}, Lcom/yanzhenjie/permission/bridge/Messenger$Callback;->onCallback()V

    return-void
.end method

.method public register()V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yanzhenjie.permission.bridge"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/yanzhenjie/permission/bridge/Messenger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/Messenger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
