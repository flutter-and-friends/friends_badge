.class public final enum Lorg/devio/takephoto/permission/PermissionManager$TPermission;
.super Ljava/lang/Enum;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/devio/takephoto/permission/PermissionManager$TPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/devio/takephoto/permission/PermissionManager$TPermission;

.field public static final enum CAMERA:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

.field public static final enum STORAGE:Lorg/devio/takephoto/permission/PermissionManager$TPermission;


# instance fields
.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    const/4 v1, 0x0

    const-string v2, "STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v0, v2, v1, v3}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    const/4 v2, 0x1

    const-string v3, "CAMERA"

    const-string v4, "android.permission.CAMERA"

    invoke-direct {v0, v3, v2, v4}, Lorg/devio/takephoto/permission/PermissionManager$TPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    .line 27
    sget-object v3, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    aput-object v3, v0, v1

    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    aput-object v1, v0, v2

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->$VALUES:[Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/devio/takephoto/permission/PermissionManager$TPermission;
    .locals 1

    .line 27
    const-class v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    return-object p0
.end method

.method public static values()[Lorg/devio/takephoto/permission/PermissionManager$TPermission;
    .locals 1

    .line 27
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->$VALUES:[Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v0}, [Lorg/devio/takephoto/permission/PermissionManager$TPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/devio/takephoto/permission/PermissionManager$TPermission;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/devio/takephoto/permission/PermissionManager$TPermission;->stringValue:Ljava/lang/String;

    return-object v0
.end method
