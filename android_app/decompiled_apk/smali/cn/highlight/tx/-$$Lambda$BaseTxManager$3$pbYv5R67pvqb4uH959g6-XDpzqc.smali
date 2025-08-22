.class public final synthetic Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/highlight/tx/BaseTxManager$3;

.field private final synthetic f$1:Lcn/highlight/tx/ble/data/BleDevice;

.field private final synthetic f$2:Lcn/highlight/tx/listener/OnConnStatus;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/tx/BaseTxManager$3;Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;->f$0:Lcn/highlight/tx/BaseTxManager$3;

    iput-object p2, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;->f$1:Lcn/highlight/tx/ble/data/BleDevice;

    iput-object p3, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;->f$2:Lcn/highlight/tx/listener/OnConnStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;->f$0:Lcn/highlight/tx/BaseTxManager$3;

    iget-object v1, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;->f$1:Lcn/highlight/tx/ble/data/BleDevice;

    iget-object v2, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;->f$2:Lcn/highlight/tx/listener/OnConnStatus;

    invoke-virtual {v0, v1, v2}, Lcn/highlight/tx/BaseTxManager$3;->lambda$onConnectSuccess$0$BaseTxManager$3(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V

    return-void
.end method
