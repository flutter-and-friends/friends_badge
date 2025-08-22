.class Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllHostnameVerifier;
.super Ljava/lang/Object;
.source "AllenHttp.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/core/http/AllenHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustAllHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allenliu/versionchecklib/core/http/AllenHttp$1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
