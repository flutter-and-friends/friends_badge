.class Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;
.super Ljava/util/HashMap;
.source "MsgTestEnvRssiDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->ackUnpack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Byte;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "FrequencyPoint Param Reader Not Support."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 105
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Port Param Reader Not Support."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 106
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Phase-locked loop locking failed"

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 107
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Other error"

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
