.class public Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;
.super Ljava/lang/Object;
.source "BleScanRuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/ble/scan/BleScanRuleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoConnect:Z

.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceNames:[Ljava/lang/String;

.field private mFuzzy:Z

.field private mServiceUuids:[Ljava/util/UUID;

.field private mTimeOut:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mServiceUuids:[Ljava/util/UUID;

    .line 45
    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mDeviceNames:[Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mDeviceMac:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mAutoConnect:Z

    .line 48
    iput-boolean v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mFuzzy:Z

    const-wide/16 v0, 0x2710

    .line 49
    iput-wide v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mTimeOut:J

    return-void
.end method


# virtual methods
.method applyConfig(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mServiceUuids:[Ljava/util/UUID;

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->access$002(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;[Ljava/util/UUID;)[Ljava/util/UUID;

    .line 79
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mDeviceNames:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->access$102(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;[Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mDeviceMac:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->access$202(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mAutoConnect:Z

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->access$302(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;Z)Z

    .line 82
    iget-boolean v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mFuzzy:Z

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->access$402(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;Z)Z

    .line 83
    iget-wide v0, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mTimeOut:J

    invoke-static {p1, v0, v1}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->access$502(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;J)J

    return-void
.end method

.method public build()Lcn/highlight/tx/ble/scan/BleScanRuleConfig;
    .locals 1

    .line 87
    new-instance v0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-direct {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;-><init>()V

    .line 88
    invoke-virtual {p0, v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->applyConfig(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;)V

    return-object v0
.end method

.method public setAutoConnect(Z)Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mAutoConnect:Z

    return-object p0
.end method

.method public setDeviceMac(Ljava/lang/String;)Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mDeviceMac:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setDeviceName(Z[Ljava/lang/String;)Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mFuzzy:Z

    .line 58
    iput-object p2, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mDeviceNames:[Ljava/lang/String;

    return-object p0
.end method

.method public setScanTimeOut(J)Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 73
    iput-wide p1, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mTimeOut:J

    return-object p0
.end method

.method public setServiceUuids([Ljava/util/UUID;)Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanRuleConfig$Builder;->mServiceUuids:[Ljava/util/UUID;

    return-object p0
.end method
