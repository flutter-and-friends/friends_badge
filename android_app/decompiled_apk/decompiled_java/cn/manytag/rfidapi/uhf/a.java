package cn.manytag.rfidapi.uhf;

import android.app.Application;
import android.os.Handler;
import android.os.Message;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.uhf.data.BleData;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a {
    public static int j = -1;
    public f b;
    public j c;
    public h d;
    public i e;
    public g f;
    public k g;
    public e h;
    Application m;
    private List n;
    StringBuffer a = new StringBuffer();
    int i = 0;
    public l k = new l();
    public cn.manytag.rfidapi.uhf.util.b l = new cn.manytag.rfidapi.uhf.util.b();
    private Handler o = new d(this);

    public a(Application application) {
        this.m = application;
        d();
        this.n = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        for (byte b : bArr) {
            this.n.add(Byte.valueOf(b));
            if (b == 22 && this.n.size() > 2) {
                List list = this.n;
                if (((Byte) list.get(list.size() - 2)).byteValue() == -74) {
                    ArrayList arrayList = new ArrayList(this.n);
                    this.n.clear();
                    Message messageObtainMessage = this.o.obtainMessage();
                    messageObtainMessage.obj = new BleData(arrayList);
                    this.o.sendMessage(messageObtainMessage);
                }
            }
        }
    }

    private static byte[][] a(byte[] bArr, int i) throws NumberFormatException {
        double d = Double.parseDouble(i + "");
        int iCeil = (int) Math.ceil(((double) bArr.length) / d);
        byte[][] bArr2 = new byte[iCeil][];
        for (int i2 = 0; i2 < iCeil; i2++) {
            int i3 = (int) (i2 * d);
            int length = (int) (i3 + d);
            if (length > bArr.length) {
                length = bArr.length;
            }
            bArr2[i2] = Arrays.copyOfRange(bArr, i3, length);
        }
        return bArr2;
    }

    private void b(BleDevice bleDevice, byte[] bArr) throws InterruptedException {
        try {
            Thread.sleep(50L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        cn.manytag.rfidapi.ble.a.a().a(bleDevice, "0000ffe1-0000-1000-8000-00805f9b34fb", "0000ffe3-0000-1000-8000-00805f9b34fb", bArr, new c(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(byte[] bArr) {
        if (bArr != null && bArr.length >= 8) {
            int length = bArr.length - 3;
            int i = 0;
            for (int i2 = 2; i2 < length; i2++) {
                i += bArr[i2];
            }
            if (bArr[bArr.length - 3] == ((byte) (i & 255))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] b(List list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        byte[] bArr = new byte[list.size()];
        int i = 0;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bArr[i] = ((Byte) it.next()).byteValue();
            i++;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(byte[] bArr) {
        byte b = bArr[2];
        this.d.a(b != 16 ? b != 32 ? b != 34 ? b != 48 ? b != 50 ? b != 52 ? "" : "工作时间&休息时间设置" : "设置启动停止" : "工作模式设置" : "工作频段设置" : "功率设置" : "声音设置", Integer.parseInt(String.format("%02x", Integer.valueOf(bArr[5] & 255)).toUpperCase(), 16));
    }

    private void d() {
        cn.manytag.rfidapi.ble.a.a().a(this.m);
        cn.manytag.rfidapi.ble.a.a().a(false).a(1, 2000L).a(OkHttpUtils.DEFAULT_MILLISECONDS).a(5000);
    }

    public void a() {
        cn.manytag.rfidapi.ble.a.a().k();
    }

    public void a(BleDevice bleDevice) throws InterruptedException {
        try {
            Thread.sleep(200L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        cn.manytag.rfidapi.ble.a.a().a(bleDevice, "0000ffe1-0000-1000-8000-00805f9b34fb", "0000ffe2-0000-1000-8000-00805f9b34fb", new b(this));
    }

    public void a(BleDevice bleDevice, cn.manytag.rfidapi.ble.callback.b bVar) {
        cn.manytag.rfidapi.ble.a.a().a(bleDevice, bVar);
    }

    public void a(BleDevice bleDevice, byte[] bArr) throws InterruptedException, NumberFormatException {
        if (bArr.length <= 20) {
            b(bleDevice, bArr);
            return;
        }
        for (byte[] bArr2 : a(bArr, 20)) {
            b(bleDevice, bArr2);
        }
    }

    public void a(e eVar) {
        this.h = eVar;
    }

    public void a(f fVar) {
        this.b = fVar;
    }

    public void a(g gVar) {
        this.f = gVar;
    }

    public void a(h hVar) {
        this.d = hVar;
    }

    public void a(i iVar) {
        this.e = iVar;
    }

    public void a(j jVar) {
        this.c = jVar;
    }

    public void a(k kVar) {
        this.g = kVar;
    }

    public void a(String str, cn.manytag.rfidapi.ble.callback.b bVar) {
        cn.manytag.rfidapi.ble.a.a().a(str, bVar);
    }

    public void b() {
        cn.manytag.rfidapi.ble.a.a().n();
        cn.manytag.rfidapi.ble.a.a().o();
    }

    public void c() {
        if (this.f != null) {
            this.f = null;
        }
        if (this.b != null) {
            this.b = null;
        }
        if (this.e != null) {
            this.e = null;
        }
        if (this.d != null) {
            this.d = null;
        }
        if (this.g != null) {
            this.g = null;
        }
        if (this.h != null) {
            this.h = null;
        }
    }
}
