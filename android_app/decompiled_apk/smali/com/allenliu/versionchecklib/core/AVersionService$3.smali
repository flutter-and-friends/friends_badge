.class synthetic Lcom/allenliu/versionchecklib/core/AVersionService$3;
.super Ljava/lang/Object;
.source "AVersionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/core/AVersionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->values()[Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/allenliu/versionchecklib/core/AVersionService$3;->$SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I

    :try_start_0
    sget-object v0, Lcom/allenliu/versionchecklib/core/AVersionService$3;->$SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I

    sget-object v1, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->GET:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/allenliu/versionchecklib/core/AVersionService$3;->$SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I

    sget-object v1, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->POST:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/allenliu/versionchecklib/core/AVersionService$3;->$SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I

    sget-object v1, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->POSTJSON:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
