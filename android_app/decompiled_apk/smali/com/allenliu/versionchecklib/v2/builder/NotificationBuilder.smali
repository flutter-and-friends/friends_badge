.class public Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"


# instance fields
.field private contentText:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private icon:I

.field private isRingtone:Z

.field private ticker:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->isRingtone:Z

    return-void
.end method

.method public static create()Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 1

    .line 15
    new-instance v0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->icon:I

    return v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public isRingtone()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->isRingtone:Z

    return v0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->contentText:Ljava/lang/String;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(I)Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 0

    .line 29
    iput p1, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->icon:I

    return-object p0
.end method

.method public setRingtone(Z)Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->isRingtone:Z

    return-object p0
.end method

.method public setTicker(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->ticker:Ljava/lang/String;

    return-object p0
.end method
