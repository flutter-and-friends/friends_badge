.class Lcn/highlight/tx/ble/bluetooth/SplitWriter$1;
.super Landroid/os/Handler;
.source "SplitWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/bluetooth/SplitWriter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/bluetooth/SplitWriter;Landroid/os/Looper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$1;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$1;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$000(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)V

    :cond_0
    return-void
.end method
