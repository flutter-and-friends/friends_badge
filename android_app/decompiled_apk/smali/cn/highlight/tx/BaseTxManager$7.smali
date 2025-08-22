.class synthetic Lcn/highlight/tx/BaseTxManager$7;
.super Ljava/lang/Object;
.source "BaseTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/BaseTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$highlight$tx$listener$OnOpenSerialPortListener$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    invoke-static {}, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->values()[Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/highlight/tx/BaseTxManager$7;->$SwitchMap$cn$highlight$tx$listener$OnOpenSerialPortListener$Status:[I

    :try_start_0
    sget-object v0, Lcn/highlight/tx/BaseTxManager$7;->$SwitchMap$cn$highlight$tx$listener$OnOpenSerialPortListener$Status:[I

    sget-object v1, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->NO_READ_WRITE_PERMISSION:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    invoke-virtual {v1}, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/highlight/tx/BaseTxManager$7;->$SwitchMap$cn$highlight$tx$listener$OnOpenSerialPortListener$Status:[I

    sget-object v1, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->OPEN_FAIL:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    invoke-virtual {v1}, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
