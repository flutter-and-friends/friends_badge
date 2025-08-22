.class public abstract Lcom/yanzhenjie/permission/source/Source;
.super Ljava/lang/Object;
.source "Source.java"


# static fields
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final OP_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "OP_REQUEST_INSTALL_PACKAGES"

.field private static final OP_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "OP_SYSTEM_ALERT_WINDOW"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mTargetSdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getTargetSdkVersion()I
    .locals 2

    .line 57
    iget v0, p0, Lcom/yanzhenjie/permission/source/Source;->mTargetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/yanzhenjie/permission/source/Source;->mTargetSdkVersion:I

    .line 60
    :cond_0
    iget v0, p0, Lcom/yanzhenjie/permission/source/Source;->mTargetSdkVersion:I

    return v0
.end method

.method private reflectionOps(Ljava/lang/String;)Z
    .locals 9

    .line 136
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    .line 138
    :try_start_0
    const-class v2, Landroid/app/AppOpsManager;

    const-string v3, "checkOpNoThrow"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 139
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 141
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 142
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :catchall_0
    :goto_0
    return v1
.end method


# virtual methods
.method public final canDrawOverlays()Z
    .locals 3

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getTargetSdkVersion()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 110
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "OP_SYSTEM_ALERT_WINDOW"

    .line 113
    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->reflectionOps(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final canListenerNotification()Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canNotify()Z
    .locals 2

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const-string v0, "OP_POST_NOTIFICATION"

    .line 122
    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->reflectionOps(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final canRequestPackageInstalls()Z
    .locals 3

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 97
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v2, :cond_1

    const-string v0, "OP_REQUEST_INSTALL_PACKAGES"

    .line 99
    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->reflectionOps(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageName:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isShowRationalePermission(Ljava/lang/String;)Z
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method
