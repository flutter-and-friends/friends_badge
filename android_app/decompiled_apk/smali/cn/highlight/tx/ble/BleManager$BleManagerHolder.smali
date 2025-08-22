.class Lcn/highlight/tx/ble/BleManager$BleManagerHolder;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleManagerHolder"
.end annotation


# static fields
.field private static final sBleManager:Lcn/highlight/tx/ble/BleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcn/highlight/tx/ble/BleManager;

    invoke-direct {v0}, Lcn/highlight/tx/ble/BleManager;-><init>()V

    sput-object v0, Lcn/highlight/tx/ble/BleManager$BleManagerHolder;->sBleManager:Lcn/highlight/tx/ble/BleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/highlight/tx/ble/BleManager;
    .locals 1

    .line 72
    sget-object v0, Lcn/highlight/tx/ble/BleManager$BleManagerHolder;->sBleManager:Lcn/highlight/tx/ble/BleManager;

    return-object v0
.end method
