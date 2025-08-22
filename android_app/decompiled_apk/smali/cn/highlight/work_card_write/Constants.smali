.class public Lcn/highlight/work_card_write/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ACCOUNT:Ljava/lang/String; = null

.field public static final APK_PATH:Ljava/lang/String; = "/storage/emulated/0/APK/"

.field public static APP_URL:Ljava/lang/String; = "app_url"

.field public static DEFAULT_APP_URL:Ljava/lang/String; = ""

.field public static final Enterprise:Ljava/lang/String; = "Enterprise"

.field public static final FIRST_USE:Ljava/lang/String; = "first_use"

.field public static final Identity:Ljava/lang/String; = "Identity"

.field public static IsModelThemeIn:Ljava/lang/Boolean; = null

.field public static NICKNAME:Ljava/lang/String; = null

.field public static PASSWORD:Ljava/lang/String; = null

.field public static final Person:Ljava/lang/String; = "Person"

.field public static final assetList:Ljava/lang/String; = "/app/assetList"

.field public static cardShowPage:Ljava/lang/String; = "\u6a21\u677f"

.field public static cardSize:Ljava/lang/String; = "3.7"

.field public static editColor:Ljava/lang/String; = "\u9ed1\u767d\u7ea2"

.field public static editCrop2Image:Landroid/graphics/Bitmap; = null

.field public static editCropImage:Landroid/graphics/Bitmap; = null

.field public static editModelImage:Landroid/graphics/Bitmap; = null

.field public static editSaveModel:Lcn/highlight/lib_doodle/IDoodle; = null

.field public static editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean; = null

.field public static editSize:Ljava/lang/String; = "3.7"

.field public static final getKey:Ljava/lang/String; = "/main/getKey"

.field public static final getScjNewFile:Ljava/lang/String; = "/version/getScjNewFile"

.field public static final getVersion:Ljava/lang/String; = "/version/getNew"

.field public static isAppExit:Z = false

.field public static isPermissionsPass:Z = false

.field public static final login:Ljava/lang/String; = "/h5/login"

.field public static organizationId:Ljava/lang/String; = null

.field public static savePath:Ljava/lang/String; = null

.field public static final test:Ljava/lang/String; = "/cgi-bin/assets4UniApp"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/WC/Doodle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    const-string v0, "account"

    .line 114
    sput-object v0, Lcn/highlight/work_card_write/Constants;->ACCOUNT:Ljava/lang/String;

    const-string v0, "password"

    .line 115
    sput-object v0, Lcn/highlight/work_card_write/Constants;->PASSWORD:Ljava/lang/String;

    const-string v0, "nickname"

    .line 116
    sput-object v0, Lcn/highlight/work_card_write/Constants;->NICKNAME:Ljava/lang/String;

    const-string v0, ""

    .line 117
    sput-object v0, Lcn/highlight/work_card_write/Constants;->organizationId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
