.class final Lcom/handheld/uhfr/UHFRManager$5;
.super Ljava/lang/Object;
.source "UHFRManager.java"

# interfaces
.implements Lcom/gg/reader/api/dal/HandlerTagGbOver;


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

    .line 3214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V
    .locals 0

    .line 3217
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$400()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 3218
    :try_start_0
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->access$400()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 3219
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
