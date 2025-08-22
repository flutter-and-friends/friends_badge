.class public Lcom/yuyh/library/imgsel/utils/AndroidRomUtil;
.super Ljava/lang/Object;
.source "AndroidRomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;
    }
.end annotation


# static fields
.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEMUI()Z
    .locals 4

    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;->newInstance()Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;

    move-result-object v1

    const-string v2, "ro.build.version.emui"

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isFlyme()Z
    .locals 4

    const/4 v0, 0x0

    .line 69
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isMIUI()Z
    .locals 4

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;->newInstance()Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;

    move-result-object v1

    const-string v2, "ro.miui.ui.version.code"

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.ui.version.name"

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.internal.storage"

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/yuyh/library/imgsel/utils/AndroidRomUtil$BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method
