.class public Lcn/highlight/work_card_write/api/ApiUtil;
.super Ljava/lang/Object;
.source "ApiUtil.java"


# static fields
.field private static loadingUtil:Lcn/highlight/core/utils/load/LoadingUtil;

.field private static mInstance:Lcn/highlight/work_card_write/api/ApiUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/highlight/core/utils/load/LoadingUtil;
    .locals 1

    .line 19
    sget-object v0, Lcn/highlight/work_card_write/api/ApiUtil;->loadingUtil:Lcn/highlight/core/utils/load/LoadingUtil;

    return-object v0
.end method

.method public static getInstance()Lcn/highlight/work_card_write/api/ApiUtil;
    .locals 2

    .line 25
    sget-object v0, Lcn/highlight/work_card_write/api/ApiUtil;->mInstance:Lcn/highlight/work_card_write/api/ApiUtil;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcn/highlight/work_card_write/api/ApiUtil;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcn/highlight/work_card_write/api/ApiUtil;->mInstance:Lcn/highlight/work_card_write/api/ApiUtil;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcn/highlight/work_card_write/api/ApiUtil;

    invoke-direct {v1}, Lcn/highlight/work_card_write/api/ApiUtil;-><init>()V

    sput-object v1, Lcn/highlight/work_card_write/api/ApiUtil;->mInstance:Lcn/highlight/work_card_write/api/ApiUtil;

    .line 29
    new-instance v1, Lcn/highlight/core/utils/load/LoadingUtil;

    invoke-direct {v1}, Lcn/highlight/core/utils/load/LoadingUtil;-><init>()V

    sput-object v1, Lcn/highlight/work_card_write/api/ApiUtil;->loadingUtil:Lcn/highlight/core/utils/load/LoadingUtil;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/api/ApiUtil;->mInstance:Lcn/highlight/work_card_write/api/ApiUtil;

    return-object v0
.end method

.method private getParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;
    .locals 1

    .line 41
    sget-object v0, Lcn/highlight/work_card_write/api/ApiUtil;->loadingUtil:Lcn/highlight/core/utils/load/LoadingUtil;

    return-object v0
.end method

.method public getRequestUrl(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 145
    sget-object v0, Lcn/highlight/work_card_write/Constants;->APP_URL:Ljava/lang/String;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->DEFAULT_APP_URL:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVersion(Landroid/app/Activity;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "Lcn/highlight/work_card_write/entity/AppUpdate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/version/getNew"

    .line 120
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getRequestUrl(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcn/highlight/work_card_write/api/Api;->getInstance()Lcn/highlight/work_card_write/api/Api;

    move-result-object v1

    const/4 v3, 0x0

    const-class v4, Lcn/highlight/work_card_write/entity/AppUpdate;

    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcn/highlight/work_card_write/api/ApiUtil$3;

    invoke-direct {v6, p0, p2}, Lcn/highlight/work_card_write/api/ApiUtil$3;-><init>(Lcn/highlight/work_card_write/api/ApiUtil;Lcn/highlight/work_card_write/api/ApiResult;)V

    invoke-virtual/range {v1 .. v6}, Lcn/highlight/work_card_write/api/Api;->Get(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    return-void
.end method

.method public isSucceed(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "Lcn/highlight/work_card_write/entity/LoginRes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/h5/login"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getRequestUrl(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000fa

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_1
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v0, "lang"

    const-string v1, "cn"

    .line 87
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "UTF-8"

    .line 89
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    .line 90
    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 94
    :goto_0
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "1"

    .line 95
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Lcn/highlight/work_card_write/api/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/api/ApiUtil;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "username"

    invoke-virtual {v3, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p3}, Lcn/highlight/work_card_write/api/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/api/ApiUtil;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "password"

    invoke-virtual {v3, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object p2, Lcn/highlight/work_card_write/api/ApiUtil;->loadingUtil:Lcn/highlight/core/utils/load/LoadingUtil;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10006c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcn/highlight/core/utils/load/LoadingUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcn/highlight/work_card_write/api/Api;->getInstance()Lcn/highlight/work_card_write/api/Api;

    move-result-object v1

    const-class v5, Lcn/highlight/work_card_write/entity/LoginRes;

    const-wide/16 p1, 0x1388

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lcn/highlight/work_card_write/api/ApiUtil$2;

    invoke-direct {v7, p0, p4}, Lcn/highlight/work_card_write/api/ApiUtil$2;-><init>(Lcn/highlight/work_card_write/api/ApiUtil;Lcn/highlight/work_card_write/api/ApiResult;)V

    invoke-virtual/range {v1 .. v7}, Lcn/highlight/work_card_write/api/Api;->Post(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    return-void
.end method

.method public testConn(Landroid/app/Activity;Ljava/lang/String;Lcn/highlight/work_card_write/api/ApiResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcn/highlight/work_card_write/api/ApiResult<",
            "Lcn/highlight/work_card_write/api/Result;",
            ">;)V"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/cgi-bin/assets4UniApp"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000fa

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_1
    sget-object p2, Lcn/highlight/work_card_write/api/ApiUtil;->loadingUtil:Lcn/highlight/core/utils/load/LoadingUtil;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcn/highlight/core/utils/load/LoadingUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcn/highlight/work_card_write/api/Api;->getInstance()Lcn/highlight/work_card_write/api/Api;

    move-result-object v1

    const/4 v3, 0x0

    const-class v4, Lcn/highlight/work_card_write/api/Result;

    const-wide/16 p1, 0x1388

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcn/highlight/work_card_write/api/ApiUtil$1;

    invoke-direct {v6, p0, p3}, Lcn/highlight/work_card_write/api/ApiUtil$1;-><init>(Lcn/highlight/work_card_write/api/ApiUtil;Lcn/highlight/work_card_write/api/ApiResult;)V

    invoke-virtual/range {v1 .. v6}, Lcn/highlight/work_card_write/api/Api;->Get(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Class;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;)V

    return-void
.end method
