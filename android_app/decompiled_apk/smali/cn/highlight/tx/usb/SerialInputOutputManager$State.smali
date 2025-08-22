.class final enum Lcn/highlight/tx/usb/SerialInputOutputManager$State;
.super Ljava/lang/Enum;
.source "SerialInputOutputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/SerialInputOutputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/tx/usb/SerialInputOutputManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/tx/usb/SerialInputOutputManager$State;

.field public static final enum RUNNING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

.field public static final enum STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

.field public static final enum STOPPING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lcn/highlight/tx/usb/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 55
    new-instance v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcn/highlight/tx/usb/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->RUNNING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 56
    new-instance v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    const/4 v3, 0x2

    const-string v4, "STOPPING"

    invoke-direct {v0, v4, v3}, Lcn/highlight/tx/usb/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 53
    sget-object v4, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    aput-object v4, v0, v1

    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->RUNNING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->$VALUES:[Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/tx/usb/SerialInputOutputManager$State;
    .locals 1

    .line 53
    const-class v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    return-object p0
.end method

.method public static values()[Lcn/highlight/tx/usb/SerialInputOutputManager$State;
    .locals 1

    .line 53
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->$VALUES:[Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    invoke-virtual {v0}, [Lcn/highlight/tx/usb/SerialInputOutputManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    return-object v0
.end method
