.class Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;
.super Ljava/util/Hashtable;
.source "MsgBaseSetAutoDormancy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->ackUnpack()V
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
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 80
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 81
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Parameter error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 82
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Other error."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 83
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Save failure."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
