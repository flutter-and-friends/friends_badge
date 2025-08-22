.class Lcn/highlight/tx/ble/scan/BleScanner$BleScannerHolder;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/ble/scan/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleScannerHolder"
.end annotation


# static fields
.field private static final sBleScanner:Lcn/highlight/tx/ble/scan/BleScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-direct {v0}, Lcn/highlight/tx/ble/scan/BleScanner;-><init>()V

    sput-object v0, Lcn/highlight/tx/ble/scan/BleScanner$BleScannerHolder;->sBleScanner:Lcn/highlight/tx/ble/scan/BleScanner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/highlight/tx/ble/scan/BleScanner;
    .locals 1

    .line 28
    sget-object v0, Lcn/highlight/tx/ble/scan/BleScanner$BleScannerHolder;->sBleScanner:Lcn/highlight/tx/ble/scan/BleScanner;

    return-object v0
.end method
