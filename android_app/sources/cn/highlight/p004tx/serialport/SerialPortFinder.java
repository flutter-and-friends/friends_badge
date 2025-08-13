package cn.highlight.p004tx.serialport;

import android.util.Log;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.LineNumberReader;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SerialPortFinder {
    private static final String DRIVERS_PATH = "/proc/tty/drivers";
    private static final String SERIAL_FIELD = "serial";
    private static final String TAG = SerialPortFinder.class.getSimpleName();

    public SerialPortFinder() {
        boolean zCanRead = new File(DRIVERS_PATH).canRead();
        Log.i(TAG, "SerialPortFinder: file.canRead() = " + zCanRead);
    }

    private ArrayList<Driver> getDrivers() throws IOException {
        ArrayList<Driver> arrayList = new ArrayList<>();
        LineNumberReader lineNumberReader = new LineNumberReader(new FileReader(DRIVERS_PATH));
        while (true) {
            String line = lineNumberReader.readLine();
            if (line == null) {
                return arrayList;
            }
            String strTrim = line.substring(0, 21).trim();
            String[] strArrSplit = line.split(" +");
            if (strArrSplit.length >= 5 && strArrSplit[strArrSplit.length - 1].equals(SERIAL_FIELD)) {
                Log.d(TAG, "Found new driver " + strTrim + " on " + strArrSplit[strArrSplit.length - 4]);
                arrayList.add(new Driver(strTrim, strArrSplit[strArrSplit.length + (-4)]));
            }
        }
    }

    public ArrayList<Device> getDevices() {
        ArrayList<Device> arrayList = new ArrayList<>();
        try {
            Iterator<Driver> it = getDrivers().iterator();
            while (it.hasNext()) {
                Driver next = it.next();
                String name = next.getName();
                Iterator<File> it2 = next.getDevices().iterator();
                while (it2.hasNext()) {
                    File next2 = it2.next();
                    arrayList.add(new Device(next2.getName(), name, next2));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
