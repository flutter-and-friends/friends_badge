.class Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList$1;
.super Ljava/util/Hashtable;
.source "MsgAppImportWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->ackUnpack()V
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
.field final synthetic this$0:Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList$1;->this$0:Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 p1, 0x0

    .line 83
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Success."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "Fail."

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
