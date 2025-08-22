.class Lcom/gg/reader/api/dal/GClient$16;
.super Ljava/lang/Object;
.source "GClient.java"

# interfaces
.implements Lcom/gg/reader/api/dal/communication/HandlerDisconnected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/GClient;->openBleBluetooth(Ljava/lang/String;ILcom/gg/reader/api/dal/communication/BleBluetoothClient;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/GClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/GClient;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient$16;->this$0:Lcom/gg/reader/api/dal/GClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log()V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient$16;->this$0:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->triggerDisconnected()V

    return-void
.end method
