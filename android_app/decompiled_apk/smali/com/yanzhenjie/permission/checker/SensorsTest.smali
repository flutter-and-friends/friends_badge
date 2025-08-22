.class Lcom/yanzhenjie/permission/checker/SensorsTest;
.super Ljava/lang/Object;
.source "SensorsTest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionTest;


# static fields
.field private static final SENSOR_EVENT_LISTENER:Landroid/hardware/SensorEventListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/yanzhenjie/permission/checker/SensorsTest$1;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/SensorsTest$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/checker/SensorsTest;->SENSOR_EVENT_LISTENER:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yanzhenjie/permission/checker/SensorsTest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public test()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/yanzhenjie/permission/checker/SensorsTest;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x15

    const/4 v2, 0x1

    .line 40
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 41
    sget-object v3, Lcom/yanzhenjie/permission/checker/SensorsTest;->SENSOR_EVENT_LISTENER:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 42
    sget-object v3, Lcom/yanzhenjie/permission/checker/SensorsTest;->SENSOR_EVENT_LISTENER:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 44
    :catchall_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/checker/SensorsTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.heartrate"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method
