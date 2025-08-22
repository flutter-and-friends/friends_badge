.class Lcom/gg/reader/api/dal/communication/BleBluetoothClient$2;
.super Ljava/lang/Object;
.source "BleBluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/dal/communication/BleBluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->scanBluetooth(ZJ)V

    return-void
.end method
