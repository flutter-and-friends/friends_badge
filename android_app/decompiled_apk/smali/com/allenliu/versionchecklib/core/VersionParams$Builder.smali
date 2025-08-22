.class public Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
.super Ljava/lang/Object;
.source "VersionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/core/VersionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field params:Lcom/allenliu/versionchecklib/core/VersionParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;-><init>(Lcom/allenliu/versionchecklib/core/VersionParams$1;)V

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 170
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {}, Lcom/allenliu/versionchecklib/utils/FileHelper;->getDownloadApkCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$102(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$202(Lcom/allenliu/versionchecklib/core/VersionParams;J)J

    .line 172
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    sget-object v1, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->GET:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$302(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;)Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    .line 173
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-class v1, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$402(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/Class;)Ljava/lang/Class;

    .line 175
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload:Z

    .line 176
    iput-boolean v1, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload:Z

    .line 177
    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$502(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    .line 178
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$602(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    .line 179
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-class v2, Lcom/allenliu/versionchecklib/core/MyService;

    invoke-static {v0, v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$702(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/Class;)Ljava/lang/Class;

    .line 180
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$802(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    .line 181
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$902(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    return-void
.end method


# virtual methods
.method public build()Lcom/allenliu/versionchecklib/core/VersionParams;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    return-object v0
.end method

.method public setCustomDownloadActivityClass(Ljava/lang/Class;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$402(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/Class;)Ljava/lang/Class;

    return-object p0
.end method

.method public setDownloadAPKPath(Ljava/lang/String;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$102(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1102(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setForceRedownload(Z)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-boolean p1, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload:Z

    return-object p0
.end method

.method public setHttpHeaders(Lcom/allenliu/versionchecklib/core/http/HttpHeaders;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1502(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpHeaders;)Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    return-object p0
.end method

.method public setOnlyDownload(Z)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$502(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    return-object p0
.end method

.method public setParamBundle(Landroid/os/Bundle;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1002(Lcom/allenliu/versionchecklib/core/VersionParams;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public setPauseRequestTime(J)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1, p2}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$202(Lcom/allenliu/versionchecklib/core/VersionParams;J)J

    return-object p0
.end method

.method public setRequestMethod(Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$302(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;)Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object p0
.end method

.method public setRequestParams(Lcom/allenliu/versionchecklib/core/http/HttpParams;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1602(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpParams;)Lcom/allenliu/versionchecklib/core/http/HttpParams;

    return-object p0
.end method

.method public setRequestUrl(Ljava/lang/String;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1402(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setService(Ljava/lang/Class;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/allenliu/versionchecklib/core/AVersionService;",
            ">;)",
            "Lcom/allenliu/versionchecklib/core/VersionParams$Builder;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$702(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/Class;)Ljava/lang/Class;

    return-object p0
.end method

.method public setShowDownLoadFailDialog(Z)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$602(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    return-object p0
.end method

.method public setShowDownloadingDialog(Z)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$902(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    return-object p0
.end method

.method public setShowNotification(Z)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$802(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z

    return-object p0
.end method

.method public setSilentDownload(Z)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-boolean p1, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1202(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setUpdateMsg(Ljava/lang/String;)Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams$Builder;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->access$1302(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
