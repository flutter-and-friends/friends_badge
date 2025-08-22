.class Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP$1;
.super Ljava/util/Hashtable;
.source "MsgAppSetEthernetIP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP;->ackUnpack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/Byte;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP;)V
    .locals 1

    .line 148
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 150
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 151
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "ReaderIp parameter error ."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetEthernetIP$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
