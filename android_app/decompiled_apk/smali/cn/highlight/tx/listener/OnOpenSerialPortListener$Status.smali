.class public final enum Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;
.super Ljava/lang/Enum;
.source "OnOpenSerialPortListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/listener/OnOpenSerialPortListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

.field public static final enum NO_READ_WRITE_PERMISSION:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

.field public static final enum OPEN_FAIL:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    const/4 v1, 0x0

    const-string v2, "NO_READ_WRITE_PERMISSION"

    invoke-direct {v0, v2, v1}, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->NO_READ_WRITE_PERMISSION:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    .line 18
    new-instance v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    const/4 v2, 0x1

    const-string v3, "OPEN_FAIL"

    invoke-direct {v0, v3, v2}, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->OPEN_FAIL:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    .line 16
    sget-object v3, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->NO_READ_WRITE_PERMISSION:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    aput-object v3, v0, v1

    sget-object v1, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->OPEN_FAIL:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    aput-object v1, v0, v2

    sput-object v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->$VALUES:[Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;
    .locals 1

    .line 16
    const-class v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    return-object p0
.end method

.method public static values()[Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;
    .locals 1

    .line 16
    sget-object v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->$VALUES:[Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    invoke-virtual {v0}, [Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    return-object v0
.end method
