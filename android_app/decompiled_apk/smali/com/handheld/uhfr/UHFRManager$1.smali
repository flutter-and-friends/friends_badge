.class Lcom/handheld/uhfr/UHFRManager$1;
.super Ljava/lang/Object;
.source "UHFRManager.java"

# interfaces
.implements Lcom/uhf/api/cls/ReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handheld/uhfr/UHFRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handheld/uhfr/UHFRManager;


# direct methods
.method constructor <init>(Lcom/handheld/uhfr/UHFRManager;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/handheld/uhfr/UHFRManager$1;->this$0:Lcom/handheld/uhfr/UHFRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tagRead(Lcom/uhf/api/cls/Reader;[Lcom/uhf/api/cls/Reader$TAGINFO;)V
    .locals 1

    .line 579
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager$1;->this$0:Lcom/handheld/uhfr/UHFRManager;

    invoke-static {p1}, Lcom/handheld/uhfr/UHFRManager;->access$000(Lcom/handheld/uhfr/UHFRManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_0

    .line 580
    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager$1;->this$0:Lcom/handheld/uhfr/UHFRManager;

    invoke-static {v0}, Lcom/handheld/uhfr/UHFRManager;->access$000(Lcom/handheld/uhfr/UHFRManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 584
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
