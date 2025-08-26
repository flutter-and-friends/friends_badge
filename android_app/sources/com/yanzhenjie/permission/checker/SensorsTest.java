package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

/* loaded from: classes.dex */
class SensorsTest implements PermissionTest {
    private static final SensorEventListener SENSOR_EVENT_LISTENER = new SensorEventListener() { // from class: com.yanzhenjie.permission.checker.SensorsTest.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
        }
    };
    private Context mContext;

    SensorsTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        try {
            Sensor defaultSensor = sensorManager.getDefaultSensor(21);
            sensorManager.registerListener(SENSOR_EVENT_LISTENER, defaultSensor, 3);
            sensorManager.unregisterListener(SENSOR_EVENT_LISTENER, defaultSensor);
            return true;
        } catch (Throwable unused) {
            return !this.mContext.getPackageManager().hasSystemFeature("android.hardware.sensor.heartrate");
        }
    }
}
