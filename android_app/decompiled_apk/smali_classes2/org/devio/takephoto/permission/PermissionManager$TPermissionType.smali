.class public final enum Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;
.super Ljava/lang/Enum;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TPermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum GRANTED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum NOT_NEED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum ONLY_CAMERA_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum ONLY_STORAGE_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;


# instance fields
.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v1, 0x0

    const-string v2, "GRANTED"

    const-string v3, "\u5df2\u6388\u6743"

    invoke-direct {v0, v2, v1, v3}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v2, 0x1

    const-string v3, "DENIED"

    const-string v4, "\u672a\u6388\u6743"

    invoke-direct {v0, v3, v2, v4}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v3, 0x2

    const-string v4, "WAIT"

    const-string v5, "\u7b49\u5f85\u6388\u6743"

    invoke-direct {v0, v4, v3, v5}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v4, 0x3

    const-string v5, "NOT_NEED"

    const-string v6, "\u65e0\u9700\u6388\u6743"

    invoke-direct {v0, v5, v4, v6}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v5, 0x4

    const-string v6, "ONLY_CAMERA_DENIED"

    const-string v7, "\u6ca1\u6709\u62cd\u7167\u6743\u9650"

    invoke-direct {v0, v6, v5, v7}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    new-instance v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v6, 0x5

    const-string v7, "ONLY_STORAGE_DENIED"

    const-string v8, "\u6ca1\u6709\u8bfb\u5199SD\u5361\u6743\u9650"

    invoke-direct {v0, v7, v6, v8}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    .line 41
    sget-object v7, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v7, v0, v1

    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->$VALUES:[Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;
    .locals 1

    .line 41
    const-class v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0
.end method

.method public static values()[Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;
    .locals 1

    .line 41
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->$VALUES:[Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0}, [Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
