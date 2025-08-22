.class public Lcn/highlight/work_card_write/api/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field private static TAG:Ljava/lang/String; = "tuc"

.field private static codeKey:Ljava/lang/String; = "code"

.field private static loginParams:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static loginSxCode:Ljava/lang/String; = "401"

.field private static loginUrl:Ljava/lang/String; = null

.field private static mInstance:Lcn/highlight/work_card_write/api/Api; = null

.field private static outTimeDefault:J = 0x2bf20L

.field private static password:Ljava/lang/String;

.field private static username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/highlight/work_card_write/api/Api;->loginParams:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 35
    sput-object v0, Lcn/highlight/work_card_write/api/Api;->username:Ljava/lang/String;

    .line 36
    sput-object v0, Lcn/highlight/work_card_write/api/Api;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)Z
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p10}, Lcn/highlight/work_card_write/api/Api;->reLogin(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)Z

    move-result p0

    return p0
.end method

.method private addLog(Ljava/lang/String;)V
    .locals 2

    .line 382
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 388
    :cond_1
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lcn/highlight/core/utils/LogText;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcn/highlight/work_card_write/api/Api;
    .locals 2

    .line 40
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->mInstance:Lcn/highlight/work_card_write/api/Api;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcn/highlight/work_card_write/api/Api;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcn/highlight/work_card_write/api/Api;->mInstance:Lcn/highlight/work_card_write/api/Api;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcn/highlight/work_card_write/api/Api;

    invoke-direct {v1}, Lcn/highlight/work_card_write/api/Api;-><init>()V

    sput-object v1, Lcn/highlight/work_card_write/api/Api;->mInstance:Lcn/highlight/work_card_write/api/Api;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->mInstance:Lcn/highlight/work_card_write/api/Api;

    return-object v0
.end method

.method private reLogin(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "TT;>;)Z"
        }
    .end annotation

    const/16 v0, 0x14

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 60
    :try_start_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v2, Lcn/highlight/work_card_write/api/Api;->codeKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/highlight/work_card_write/api/Api;->loginSxCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/highlight/work_card_write/api/Api;->loginUrl:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/highlight/work_card_write/api/Api;->username:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/highlight/work_card_write/api/Api;->password:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->loginParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 65
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->loginParams:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "username"

    sget-object v3, Lcn/highlight/work_card_write/api/Api;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->loginParams:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "password"

    sget-object v3, Lcn/highlight/work_card_write/api/Api;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->loginParams:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "softType"

    const-string v3, "ST01"

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcn/highlight/work_card_write/api/Api;->loginUrl:Ljava/lang/String;

    sget-object v2, Lcn/highlight/work_card_write/api/Api;->loginParams:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x0

    const-class v4, Lcn/highlight/work_card_write/entity/UserInfo;

    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v17, Lcn/highlight/work_card_write/api/Api$1;

    move-object/from16 v6, v17

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p7

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    invoke-direct/range {v6 .. v16}, Lcn/highlight/work_card_write/api/Api$1;-><init>(Lcn/highlight/work_card_write/api/Api;ILjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v17

    invoke-virtual/range {p1 .. p7}, Lcn/highlight/work_card_write/api/Api;->Post(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method


# virtual methods
.method Get(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;-><init>(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method Post(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcn/highlight/work_card_write/api/-$$Lambda$Api$wk3yi5xnxFwdQ68DrmiXIl6Ju9U;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcn/highlight/work_card_write/api/-$$Lambda$Api$wk3yi5xnxFwdQ68DrmiXIl6Ju9U;-><init>(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method PostFile(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcn/highlight/work_card_write/api/-$$Lambda$Api$OgXUqON2nONhlPyyfJ2KRrCuX3g;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p6

    move-object v7, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcn/highlight/work_card_write/api/-$$Lambda$Api$OgXUqON2nONhlPyyfJ2KRrCuX3g;-><init>(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Long;Ljava/lang/Class;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method PostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Long;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcn/highlight/work_card_write/api/-$$Lambda$Api$7KP0AbdPncCp9_MsF1YbpXtcbPw;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/highlight/work_card_write/api/-$$Lambda$Api$7KP0AbdPncCp9_MsF1YbpXtcbPw;-><init>(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isSucceed(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$Get$0$Api(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V
    .locals 9

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    sget-wide v0, Lcn/highlight/work_card_write/api/Api;->outTimeDefault:J

    if-eqz p3, :cond_2

    .line 120
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 123
    :cond_2
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v2

    .line 124
    invoke-virtual {v2, p1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/zhy/http/okhttp/builder/GetBuilder;

    .line 125
    invoke-virtual {v2, p2}, Lcom/zhy/http/okhttp/builder/GetBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v8, Lcn/highlight/work_card_write/api/Api$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/highlight/work_card_write/api/Api$2;-><init>(Lcn/highlight/work_card_write/api/Api;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;)V

    .line 130
    invoke-virtual {v0, v8}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    return-void
.end method

.method public synthetic lambda$Post$1$Api(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V
    .locals 11

    move-object v8, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    const-string v0, "/h5/login"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sput-object v3, Lcn/highlight/work_card_write/api/Api;->loginUrl:Ljava/lang/String;

    const-string v0, "username"

    .line 173
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcn/highlight/work_card_write/api/Api;->username:Ljava/lang/String;

    const-string v0, "password"

    .line 174
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcn/highlight/work_card_write/api/Api;->password:Ljava/lang/String;

    :cond_0
    const-string v0, ":"

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    invoke-virtual {p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    .line 189
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 194
    invoke-virtual {p3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 196
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_4
    sget-wide v0, Lcn/highlight/work_card_write/api/Api;->outTimeDefault:J

    if-eqz p4, :cond_5

    .line 202
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 205
    :cond_5
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->post()Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v2

    .line 206
    invoke-virtual {v2, p1}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    .line 207
    invoke-virtual {v2, p3}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->headers(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    .line 208
    invoke-virtual {v2, p2}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v9

    new-instance v10, Lcn/highlight/work_card_write/api/Api$3;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcn/highlight/work_card_write/api/Api$3;-><init>(Lcn/highlight/work_card_write/api/Api;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;)V

    .line 213
    invoke-virtual {v9, v10}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    return-void
.end method

.method public synthetic lambda$PostFile$3$Api(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Long;Ljava/lang/Class;)V
    .locals 11

    move-object v8, p0

    move-object v3, p1

    move-object v4, p2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 308
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->post()Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p1}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    .line 321
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6587\u4ef6\u8def\u5f84:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    .line 323
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v0, "\u6709\u65e0\u6cd5\u8bc6\u522b\u7684\u6587\u4ef6\u8def\u5f84\uff0c\u8bf7\u68c0\u67e5\uff01"

    move-object v6, p4

    .line 326
    invoke-interface {p4, v2, v0}, Lcn/highlight/work_card_write/api/ApiResult;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v6, p4

    .line 329
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "files"

    invoke-virtual {v0, v7, v2, v5}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->addFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    goto :goto_1

    :cond_3
    move-object v6, p4

    .line 331
    sget-wide v1, Lcn/highlight/work_card_write/api/Api;->outTimeDefault:J

    if-eqz p5, :cond_4

    .line 333
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 335
    :cond_4
    invoke-virtual {v0, p2}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v0

    const-string v5, "Content-Disposition"

    const-string v7, "form-data;filename=enctype"

    .line 336
    invoke-virtual {v0, v5, v7}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    .line 337
    invoke-virtual {v0}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v1, v2}, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v1, v2}, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v9

    new-instance v10, Lcn/highlight/work_card_write/api/Api$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/highlight/work_card_write/api/Api$5;-><init>(Lcn/highlight/work_card_write/api/Api;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Long;)V

    .line 341
    invoke-virtual {v9, v10}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    return-void
.end method

.method public synthetic lambda$PostString$2$Api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V
    .locals 9

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paramsJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/api/Api;->addLog(Ljava/lang/String;)V

    .line 254
    sget-wide v0, Lcn/highlight/work_card_write/api/Api;->outTimeDefault:J

    if-eqz p3, :cond_0

    .line 256
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 259
    :cond_0
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->postString()Lcom/zhy/http/okhttp/builder/PostStringBuilder;

    move-result-object v2

    .line 260
    invoke-virtual {v2, p1}, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/zhy/http/okhttp/builder/PostStringBuilder;

    const-string v3, "application/json; charset=utf-8"

    .line 261
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->mediaType(Lokhttp3/MediaType;)Lcom/zhy/http/okhttp/builder/PostStringBuilder;

    move-result-object v2

    .line 262
    invoke-virtual {v2, p2}, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->content(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/PostStringBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v2

    .line 266
    invoke-virtual {v2, v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v8, Lcn/highlight/work_card_write/api/Api$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/highlight/work_card_write/api/Api$4;-><init>(Lcn/highlight/work_card_write/api/Api;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Long;)V

    .line 267
    invoke-virtual {v0, v8}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    return-void
.end method
