.class public Lcom/allenliu/versionchecklib/v2/builder/UIData;
.super Ljava/lang/Object;
.source "UIData.java"


# instance fields
.field private final CONTENT:Ljava/lang/String;

.field private final DOWNLOAD_URL:Ljava/lang/String;

.field private final TITLE:Ljava/lang/String;

.field private versionBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title"

    .line 10
    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->TITLE:Ljava/lang/String;

    const-string v1, "content"

    iput-object v1, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->CONTENT:Ljava/lang/String;

    const-string v2, "download_url"

    iput-object v2, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->DOWNLOAD_URL:Ljava/lang/String;

    .line 29
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    .line 30
    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v3, "by `UIData.setTitle()` to set your update title"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v2, "by `UIData.setContent()` to set your update content "

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static create()Lcom/allenliu/versionchecklib/v2/builder/UIData;
    .locals 1

    .line 15
    new-instance v0, Lcom/allenliu/versionchecklib/v2/builder/UIData;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/builder/UIData;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v1, "download_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBundle()Landroid/os/Bundle;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/UIData;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/UIData;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v1, "download_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/UIData;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/UIData;->versionBundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
