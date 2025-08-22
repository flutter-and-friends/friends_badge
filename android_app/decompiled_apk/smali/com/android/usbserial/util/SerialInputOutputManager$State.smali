.class public final enum Lcom/android/usbserial/util/SerialInputOutputManager$State;
.super Ljava/lang/Enum;
.source "SerialInputOutputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/util/SerialInputOutputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/usbserial/util/SerialInputOutputManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/usbserial/util/SerialInputOutputManager$State;

.field public static final enum RUNNING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

.field public static final enum STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

.field public static final enum STOPPING:Lcom/android/usbserial/util/SerialInputOutputManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lcom/android/usbserial/util/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 43
    new-instance v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/android/usbserial/util/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->RUNNING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 44
    new-instance v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;

    const/4 v3, 0x2

    const-string v4, "STOPPING"

    invoke-direct {v0, v4, v3}, Lcom/android/usbserial/util/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 41
    sget-object v4, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->RUNNING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->$VALUES:[Lcom/android/usbserial/util/SerialInputOutputManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/usbserial/util/SerialInputOutputManager$State;
    .locals 1

    .line 41
    const-class v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/usbserial/util/SerialInputOutputManager$State;

    return-object p0
.end method

.method public static values()[Lcom/android/usbserial/util/SerialInputOutputManager$State;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->$VALUES:[Lcom/android/usbserial/util/SerialInputOutputManager$State;

    invoke-virtual {v0}, [Lcom/android/usbserial/util/SerialInputOutputManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/usbserial/util/SerialInputOutputManager$State;

    return-object v0
.end method
