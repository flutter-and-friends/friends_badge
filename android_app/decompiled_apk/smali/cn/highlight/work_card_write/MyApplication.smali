.class public Lcn/highlight/work_card_write/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static BUGLY_APPID:Ljava/lang/String; = "91bbd660a1"

.field private static daoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

.field private static deviceInfo:Lcn/highlight/work_card_write/tools/image/DeviceInfo;

.field public static instance:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;
    .locals 1

    .line 153
    sget-object v0, Lcn/highlight/work_card_write/MyApplication;->daoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->clear()V

    .line 155
    :cond_0
    sget-object v0, Lcn/highlight/work_card_write/MyApplication;->daoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

    return-object v0
.end method

.method public static getDeviceInfo()Lcn/highlight/work_card_write/tools/image/DeviceInfo;
    .locals 1

    .line 74
    sget-object v0, Lcn/highlight/work_card_write/MyApplication;->deviceInfo:Lcn/highlight/work_card_write/tools/image/DeviceInfo;

    return-object v0
.end method

.method private initBugLy()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcn/highlight/work_card_write/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/highlight/work_card_write/MyApplication;->BUGLY_APPID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private initOKHttp()V
    .locals 4

    .line 82
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/zhy/http/okhttp/log/LoggerInterceptor;

    const-string v2, "tag"

    invoke-direct {v1, v2}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;

    new-instance v2, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;

    .line 84
    invoke-virtual {p0}, Lcn/highlight/work_card_write/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;-><init>(Lcom/zhy/http/okhttp/cookie/store/CookieStore;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x2bf20

    .line 85
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->initClient(Lokhttp3/OkHttpClient;)Lcom/zhy/http/okhttp/OkHttpUtils;

    return-void
.end method

.method public static setDeviceInfo(Lcn/highlight/work_card_write/tools/image/DeviceInfo;)V
    .locals 0

    .line 70
    sput-object p0, Lcn/highlight/work_card_write/MyApplication;->deviceInfo:Lcn/highlight/work_card_write/tools/image/DeviceInfo;

    return-void
.end method

.method private setupDatabase()V
    .locals 3

    .line 143
    new-instance v0, Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;

    const-string v1, "badge.db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 145
    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    new-instance v1, Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->newSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/MyApplication;->daoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

    return-void
.end method

.method public static setupDatabase(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    invoke-direct {p0}, Lcn/highlight/work_card_write/MyApplication;->initOKHttp()V

    const/4 v0, 0x1

    const-string v1, "tuc"

    .line 44
    invoke-static {v0, v1}, Lcn/highlight/core/utils/LogManage;->init(ZLjava/lang/String;)V

    .line 50
    sput-object p0, Lcn/highlight/work_card_write/MyApplication;->instance:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcn/highlight/work_card_write/MyApplication;->setupDatabase()V

    .line 54
    new-instance v0, Lcn/highlight/work_card_write/tools/image/DeviceInfo;

    invoke-direct {v0}, Lcn/highlight/work_card_write/tools/image/DeviceInfo;-><init>()V

    const/16 v1, 0x1a0

    .line 55
    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->setHeight(I)V

    const/16 v1, 0xf0

    .line 56
    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->setWidth(I)V

    const/4 v1, 0x3

    .line 57
    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/tools/image/DeviceInfo;->setColorCount(I)V

    .line 58
    invoke-static {v0}, Lcn/highlight/work_card_write/MyApplication;->setDeviceInfo(Lcn/highlight/work_card_write/tools/image/DeviceInfo;)V

    return-void
.end method
