.class final enum Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/zxing/utils/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

.field public static final enum DONE:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    const/4 v1, 0x0

    const-string v2, "PREVIEW"

    invoke-direct {v0, v2, v1}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    new-instance v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    new-instance v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->DONE:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    .line 42
    sget-object v4, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    aput-object v4, v0, v1

    sget-object v1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->DONE:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sput-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->$VALUES:[Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;
    .locals 1

    .line 42
    const-class v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;
    .locals 1

    .line 42
    sget-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->$VALUES:[Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    return-object v0
.end method
