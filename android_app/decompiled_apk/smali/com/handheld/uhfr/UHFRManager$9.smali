.class final Lcom/handheld/uhfr/UHFRManager$9;
.super Ljava/lang/Object;
.source "UHFRManager.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTag6bOver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handheld/uhfr/UHFRManager;->onTagHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V
    .locals 0

    .line 3263
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$600()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    return-void
.end method
