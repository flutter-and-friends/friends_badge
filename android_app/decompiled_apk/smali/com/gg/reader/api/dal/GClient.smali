.class public Lcom/gg/reader/api/dal/GClient;
.super Ljava/lang/Object;
.source "GClient.java"


# static fields
.field private static final MSG_TIME_OUT:I = 0xbb8


# instance fields
.field public cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

.field private ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

.field public debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

.field private dicMre:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/gg/reader/api/dal/ClientManualResetEvent;",
            ">;"
        }
    .end annotation
.end field

.field private isPrint:Z

.field private name:Ljava/lang/String;

.field public onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

.field public onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

.field public onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

.field public onHeartbeatLog:Lcom/gg/reader/api/dal/HandlerHeartbeatLog;

.field public onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

.field public onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

.field public onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

.field public onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

.field public onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

.field public onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

.field public onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

.field public onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

.field public onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

.field public onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/GClient;Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/gg/reader/api/dal/GClient;->processMessage(Lcom/gg/reader/api/protocol/gx/Message;)V

    return-void
.end method

.method private processMessage(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 852
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;->toInt()I

    move-result v0

    .line 855
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 856
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iput-object p1, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    .line 857
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p1, p1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    invoke-virtual {p1}, Lcom/gg/reader/api/utils/ManualResetEvent;->set()V

    goto/16 :goto_0

    .line 861
    :cond_1
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v1, "0010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 863
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-nez v0, :cond_2

    .line 864
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;-><init>()V

    .line 865
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ackUnpack([B)V

    .line 866
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagEpcLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x20

    .line 867
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_3

    .line 868
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;-><init>()V

    .line 869
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->ackUnpack([B)V

    .line 870
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTag6bLogEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x30

    .line 871
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_4

    .line 872
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;-><init>()V

    .line 873
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->ackUnpack([B)V

    .line 874
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x40

    .line 875
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_5

    .line 876
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;-><init>()V

    .line 877
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->ackUnpack([B)V

    .line 878
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGJbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V

    goto/16 :goto_0

    .line 879
    :cond_5
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v1, v0, :cond_6

    .line 880
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;-><init>()V

    .line 881
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->ackUnpack([B)V

    .line 882
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagEpcOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x21

    .line 883
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_7

    .line 884
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;-><init>()V

    .line 885
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;->ackUnpack([B)V

    .line 886
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTag6bOverEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x31

    .line 887
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_8

    .line 888
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;-><init>()V

    .line 889
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;->ackUnpack([B)V

    .line 890
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x41

    .line 891
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_9

    .line 892
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;-><init>()V

    .line 893
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;->ackUnpack([B)V

    .line 894
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGJbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;)V

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x32

    .line 895
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_a

    .line 896
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;-><init>()V

    .line 897
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->ackUnpack([B)V

    .line 898
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerTagGbSafeParamEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;)V

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x43

    .line 899
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_10

    .line 900
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->triggerTagGJbRn11LogEvent([B)V

    goto/16 :goto_0

    .line 902
    :cond_b
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v2, "0001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x12

    .line 904
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v2, v2, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v2, :cond_d

    .line 905
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz v0, :cond_c

    const-string v0, "[heartbeat]"

    .line 906
    invoke-static {v0}, Lcom/gg/reader/api/utils/GLog;->d(Ljava/lang/String;)V

    .line 908
    :cond_c
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;-><init>()V

    .line 909
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iput-object v2, v0, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 910
    iget-object v2, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;->ackUnpack([B)V

    .line 911
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 912
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onHeartbeatLog:Lcom/gg/reader/api/dal/HandlerHeartbeatLog;

    if-eqz v0, :cond_d

    .line 913
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onHeartbeatLog:Lcom/gg/reader/api/dal/HandlerHeartbeatLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/gg/reader/api/dal/HandlerHeartbeatLog;->log(Ljava/lang/String;)V

    .line 916
    :cond_d
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-nez v0, :cond_e

    .line 918
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;-><init>()V

    .line 919
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->ackUnpack([B)V

    .line 920
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerGpiStart(Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;)V

    goto :goto_0

    .line 921
    :cond_e
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v0, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v1, v0, :cond_f

    .line 923
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;-><init>()V

    .line 924
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->ackUnpack([B)V

    .line 925
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerGpiOver(Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;)V

    goto :goto_0

    :cond_f
    const/16 v0, 0x1b

    .line 926
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-byte v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    if-ne v0, v1, :cond_10

    .line 928
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;-><init>()V

    .line 929
    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->ackUnpack([B)V

    .line 930
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/dal/GClient;->triggerCacheDataOver(Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_10
    :goto_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->close()V

    .line 741
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 742
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 743
    iput-object v1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectType()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    return v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->getConnectType()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hdPowerOff()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 469
    instance-of v1, v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->hdPowerOff()V

    :cond_0
    return-void
.end method

.method public hdPowerOn()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 461
    instance-of v1, v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->hdPowerOn()V

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;Lcom/gg/reader/api/dal/communication/CommunicationInterface;I)Z
    .locals 1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 255
    :cond_0
    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 256
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$1;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 262
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$2;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$2;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 268
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 269
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method

.method public openAndroidRs485(Ljava/lang/String;I)Z
    .locals 5

    const-string p2, ":"

    const/4 v0, 0x0

    .line 414
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {v2}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;-><init>()V

    iput-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 420
    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v3, Lcom/gg/reader/api/dal/GClient$6;

    invoke-direct {v3, p0}, Lcom/gg/reader/api/dal/GClient$6;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v3, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 426
    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    aget-object v4, v1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 429
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 430
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 431
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public openAndroidSerial(Ljava/lang/String;I)Z
    .locals 2

    const/4 p2, 0x0

    .line 346
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 347
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$3;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$3;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 353
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 356
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public openAndroidUsbHid(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Z
    .locals 2

    .line 720
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 721
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$17;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$17;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 727
    invoke-virtual {p1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->getUsbName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 728
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 729
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public openAndroidUsbRs485(Lcom/android/usbserial/client/AndroidUsbSerialClient;I)Z
    .locals 2

    .line 582
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 583
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$11;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$11;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 589
    invoke-virtual {p1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 590
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 591
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V

    .line 592
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 593
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public openAndroidUsbSerial(Lcom/android/usbserial/client/AndroidUsbSerialClient;)Z
    .locals 2

    .line 563
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 564
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$10;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$10;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 570
    invoke-virtual {p1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 571
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 572
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public openBleBluetooth(Ljava/lang/String;ILcom/gg/reader/api/dal/communication/BleBluetoothClient;)Z
    .locals 1

    .line 694
    :try_start_0
    iput-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 695
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$15;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$15;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 701
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$16;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$16;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 707
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p3, p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 709
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public openBluetooth(Ljava/lang/String;IILcom/gg/reader/api/dal/communication/BluetoothClient;)Z
    .locals 0

    .line 623
    :try_start_0
    iput-object p4, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 624
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p4, Lcom/gg/reader/api/dal/GClient$12;

    invoke-direct {p4, p0}, Lcom/gg/reader/api/dal/GClient$12;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p4, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 630
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p4, Lcom/gg/reader/api/dal/GClient$13;

    invoke-direct {p4, p0}, Lcom/gg/reader/api/dal/GClient$13;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p4, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 636
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 638
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public openCusAndroidRs485(Ljava/lang/String;II)Z
    .locals 5

    const-string v0, ":"

    const/4 v1, 0x0

    .line 387
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 388
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v3, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-direct {v3, p2, p3}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;-><init>(II)V

    iput-object v3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 393
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p3, Lcom/gg/reader/api/dal/GClient$5;

    invoke-direct {p3, p0}, Lcom/gg/reader/api/dal/GClient$5;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p3, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 399
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v1

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 401
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 402
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V

    .line 403
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485(Z)V

    .line 404
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x2

    aget-object p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setRs485Address(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public openCusAndroidSerial(Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    .line 366
    :try_start_0
    new-instance v1, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-direct {v1, p2, p3}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;-><init>(II)V

    iput-object v1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 368
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance p3, Lcom/gg/reader/api/dal/GClient$4;

    invoke-direct {p3, p0}, Lcom/gg/reader/api/dal/GClient$4;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object p3, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 374
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 376
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 377
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public openCwSerial(Ljava/lang/String;ILcom/gg/reader/api/dal/communication/CWSerialClient;)Z
    .locals 1

    const/4 p2, 0x0

    .line 649
    :try_start_0
    iput-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 650
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$14;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$14;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 656
    iget-object p3, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 658
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 659
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public openHdSerial(Ljava/lang/String;I)Z
    .locals 2

    const/4 p2, 0x0

    .line 441
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 442
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v1, Lcom/gg/reader/api/dal/GClient$7;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/GClient$7;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 448
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 451
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public openTcp(Ljava/lang/String;I)Z
    .locals 1

    .line 478
    :try_start_0
    new-instance p2, Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-direct {p2}, Lcom/gg/reader/api/dal/communication/TcpClient;-><init>()V

    iput-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    .line 479
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$8;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$8;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    .line 485
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    new-instance v0, Lcom/gg/reader/api/dal/GClient$9;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/GClient$9;-><init>(Lcom/gg/reader/api/dal/GClient;)V

    iput-object v0, p2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 491
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->open(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 493
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    .line 494
    iget-object p1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->setConnectType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 798
    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    return-void
.end method

.method public sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/GClient;->getConnectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 758
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "1"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 760
    :cond_1
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;->toInt()I

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 762
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 765
    new-instance v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/gg/reader/api/dal/ClientManualResetEvent;-><init>(Z)V

    .line 766
    iput-object v2, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    .line 767
    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 769
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iput-object v2, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    .line 770
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object v1, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    invoke-virtual {v1}, Lcom/gg/reader/api/utils/ManualResetEvent;->reset()V

    .line 773
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 774
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "]"

    const-string v3, "]-["

    if-eqz v1, :cond_4

    .line 775
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v1, :cond_4

    .line 776
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send-["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {v5}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/gg/reader/api/dal/HandlerDebugLog;->sendDebugLog(Ljava/lang/String;)V

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object v1, v1, Lcom/gg/reader/api/dal/ClientManualResetEvent;->evt:Lcom/gg/reader/api/utils/ManualResetEvent;

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/gg/reader/api/utils/ManualResetEvent;->waitOne(J)Z

    .line 781
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p2, p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    if-eqz p2, :cond_5

    .line 782
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p2, p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    iget-object p2, p2, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    iput-object p2, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    .line 783
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->dicMre:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;

    iget-object p2, p2, Lcom/gg/reader/api/dal/ClientManualResetEvent;->data:Lcom/gg/reader/api/protocol/gx/Message;

    iget-object p2, p2, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/Message;->ackUnpack([B)V

    .line 784
    iget-boolean p2, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz p2, :cond_5

    .line 785
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz p2, :cond_5

    .line 786
    iget-object p2, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive-["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public sendSynMsgRetry(Lcom/gg/reader/api/protocol/gx/Message;II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 804
    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;I)V

    .line 805
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 818
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_1

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->sendDebugLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendUnsynMsg([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->send([B)V

    .line 832
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_1

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send-[custom]-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->sendDebugLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendUnsynMsgRetry(Lcom/gg/reader/api/protocol/gx/Message;I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 842
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/GClient;->sendUnsynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrint(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/GClient;->isPrint:Z

    return-void
.end method

.method public setSendHeartBeat(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->ci:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    if-eqz v0, :cond_0

    .line 69
    iput-boolean p1, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->_isSendHeartbeat:Z

    :cond_0
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method protected triggerCacheDataOver(Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V
    .locals 3

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->cacheDataOver:Lcom/gg/reader/api/dal/HandlerCacheDataOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerCacheDataOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V

    .line 234
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerDisconnected()V
    .locals 3

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onDisconnected:Lcom/gg/reader/api/dal/HandlerTcpDisconnected;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/gg/reader/api/dal/HandlerTcpDisconnected;->log(Ljava/lang/String;)V

    .line 245
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerGpiOver(Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;)V
    .locals 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onGpiOver:Lcom/gg/reader/api/dal/HandlerGpiOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerGpiOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;)V

    .line 223
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerGpiStart(Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;)V
    .locals 3

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onGpiStart:Lcom/gg/reader/api/dal/HandlerGpiStart;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerGpiStart;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;)V

    .line 210
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTag6bLogEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTag6bLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;)V

    .line 110
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTag6bOverEvent(Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V
    .locals 3

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBase6bOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTag6bOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBase6bOver;)V

    .line 123
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagEpcLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagEpcLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;)V

    .line 84
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagEpcOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagEpcOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V

    .line 97
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGJbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V
    .locals 3

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGJbLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;)V

    .line 162
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGJbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;)V
    .locals 3

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGJbOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGJbOver;)V

    .line 175
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGJbRn11LogEvent([B)V
    .locals 3

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGJbRn11Log:Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGJbRn11Log;->log(Ljava/lang/String;[B)V

    .line 186
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerTagGbLogEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)V
    .locals 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGbLog;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;)V

    .line 136
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGbOverEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V
    .locals 3

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;->setReaderSerialNumber(Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGbOver;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbOver;)V

    .line 149
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected triggerTagGbSafeParamEvent(Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;)V
    .locals 3

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GClient;->onTagGbSafeParam:Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GClient;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/gg/reader/api/dal/HandlerTagGbSafeParam;->log(Ljava/lang/String;Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;)V

    .line 197
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method
