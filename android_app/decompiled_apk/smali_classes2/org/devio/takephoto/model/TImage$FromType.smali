.class public final enum Lorg/devio/takephoto/model/TImage$FromType;
.super Ljava/lang/Enum;
.source "TImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/model/TImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/devio/takephoto/model/TImage$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/devio/takephoto/model/TImage$FromType;

.field public static final enum CAMERA:Lorg/devio/takephoto/model/TImage$FromType;

.field public static final enum OTHER:Lorg/devio/takephoto/model/TImage$FromType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 98
    new-instance v0, Lorg/devio/takephoto/model/TImage$FromType;

    const/4 v1, 0x0

    const-string v2, "CAMERA"

    invoke-direct {v0, v2, v1}, Lorg/devio/takephoto/model/TImage$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/devio/takephoto/model/TImage$FromType;->CAMERA:Lorg/devio/takephoto/model/TImage$FromType;

    new-instance v0, Lorg/devio/takephoto/model/TImage$FromType;

    const/4 v2, 0x1

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v2}, Lorg/devio/takephoto/model/TImage$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/devio/takephoto/model/TImage$FromType;->OTHER:Lorg/devio/takephoto/model/TImage$FromType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/devio/takephoto/model/TImage$FromType;

    .line 97
    sget-object v3, Lorg/devio/takephoto/model/TImage$FromType;->CAMERA:Lorg/devio/takephoto/model/TImage$FromType;

    aput-object v3, v0, v1

    sget-object v1, Lorg/devio/takephoto/model/TImage$FromType;->OTHER:Lorg/devio/takephoto/model/TImage$FromType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/devio/takephoto/model/TImage$FromType;->$VALUES:[Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/devio/takephoto/model/TImage$FromType;
    .locals 1

    .line 97
    const-class v0, Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/devio/takephoto/model/TImage$FromType;

    return-object p0
.end method

.method public static values()[Lorg/devio/takephoto/model/TImage$FromType;
    .locals 1

    .line 97
    sget-object v0, Lorg/devio/takephoto/model/TImage$FromType;->$VALUES:[Lorg/devio/takephoto/model/TImage$FromType;

    invoke-virtual {v0}, [Lorg/devio/takephoto/model/TImage$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/devio/takephoto/model/TImage$FromType;

    return-object v0
.end method
