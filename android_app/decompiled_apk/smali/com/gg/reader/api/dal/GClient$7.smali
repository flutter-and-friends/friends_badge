.class Lcom/gg/reader/api/dal/GClient$7;
.super Ljava/lang/Object;
.source "GClient.java"

# interfaces
.implements Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/GClient;->openHdSerial(Ljava/lang/String;I)Z
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

    .line 442
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient$7;->this$0:Lcom/gg/reader/api/dal/GClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public received(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient$7;->this$0:Lcom/gg/reader/api/dal/GClient;

    invoke-static {v0, p1}, Lcom/gg/reader/api/dal/GClient;->access$000(Lcom/gg/reader/api/dal/GClient;Lcom/gg/reader/api/protocol/gx/Message;)V

    return-void
.end method
