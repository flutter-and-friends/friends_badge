package cn.manytag.rfidapi.uhf;

import android.app.Application;
import android.os.Handler;
import android.os.Message;
import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.AbstractC0677b;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.uhf.data.BleData;
import cn.manytag.rfidapi.uhf.util.C0713b;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: cn.manytag.rfidapi.uhf.a */
/* loaded from: classes.dex */
public class C0699a {

    /* renamed from: j */
    public static int f261j = -1;

    /* renamed from: b */
    public InterfaceC0704f f263b;

    /* renamed from: c */
    public InterfaceC0708j f264c;

    /* renamed from: d */
    public InterfaceC0706h f265d;

    /* renamed from: e */
    public InterfaceC0707i f266e;

    /* renamed from: f */
    public InterfaceC0705g f267f;

    /* renamed from: g */
    public InterfaceC0709k f268g;

    /* renamed from: h */
    public InterfaceC0703e f269h;

    /* renamed from: m */
    Application f273m;

    /* renamed from: n */
    private List f274n;

    /* renamed from: a */
    StringBuffer f262a = new StringBuffer();

    /* renamed from: i */
    int f270i = 0;

    /* renamed from: k */
    public C0710l f271k = new C0710l();

    /* renamed from: l */
    public C0713b f272l = new C0713b();

    /* renamed from: o */
    private Handler f275o = new HandlerC0702d(this);

    public C0699a(Application application) {
        this.f273m = application;
        m225d();
        this.f274n = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m216a(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        for (byte b : bArr) {
            this.f274n.add(Byte.valueOf(b));
            if (b == 22 && this.f274n.size() > 2) {
                List list = this.f274n;
                if (((Byte) list.get(list.size() - 2)).byteValue() == -74) {
                    ArrayList arrayList = new ArrayList(this.f274n);
                    this.f274n.clear();
                    Message messageObtainMessage = this.f275o.obtainMessage();
                    messageObtainMessage.obj = new BleData(arrayList);
                    this.f275o.sendMessage(messageObtainMessage);
                }
            }
        }
    }

    /* renamed from: a */
    private static byte[][] m218a(byte[] bArr, int i) throws NumberFormatException {
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

    /* renamed from: b */
    private void m219b(BleDevice bleDevice, byte[] bArr) throws InterruptedException {
        try {
            Thread.sleep(50L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        C0646a.m50a().m62a(bleDevice, "0000ffe1-0000-1000-8000-00805f9b34fb", "0000ffe3-0000-1000-8000-00805f9b34fb", bArr, new C0701c(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m221b(byte[] bArr) {
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
    /* renamed from: b */
    public static byte[] m222b(List list) {
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
    /* renamed from: c */
    public void m224c(byte[] bArr) {
        byte b = bArr[2];
        this.f265d.mo209a(b != 16 ? b != 32 ? b != 34 ? b != 48 ? b != 50 ? b != 52 ? "" : "工作时间&休息时间设置" : "设置启动停止" : "工作模式设置" : "工作频段设置" : "功率设置" : "声音设置", Integer.parseInt(String.format("%02x", Integer.valueOf(bArr[5] & 255)).toUpperCase(), 16));
    }

    /* renamed from: d */
    private void m225d() {
        C0646a.m50a().m57a(this.f273m);
        C0646a.m50a().m56a(false).m54a(1, 2000L).m55a(OkHttpUtils.DEFAULT_MILLISECONDS).m53a(5000);
    }

    /* renamed from: a */
    public void m226a() {
        C0646a.m50a().m74k();
    }

    /* renamed from: a */
    public void m227a(BleDevice bleDevice) throws InterruptedException {
        try {
            Thread.sleep(200L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        C0646a.m50a().m60a(bleDevice, "0000ffe1-0000-1000-8000-00805f9b34fb", "0000ffe2-0000-1000-8000-00805f9b34fb", new C0700b(this));
    }

    /* renamed from: a */
    public void m228a(BleDevice bleDevice, AbstractC0677b abstractC0677b) {
        C0646a.m50a().m51a(bleDevice, abstractC0677b);
    }

    /* renamed from: a */
    public void m229a(BleDevice bleDevice, byte[] bArr) throws InterruptedException, NumberFormatException {
        if (bArr.length <= 20) {
            m219b(bleDevice, bArr);
            return;
        }
        for (byte[] bArr2 : m218a(bArr, 20)) {
            m219b(bleDevice, bArr2);
        }
    }

    /* renamed from: a */
    public void m230a(InterfaceC0703e interfaceC0703e) {
        this.f269h = interfaceC0703e;
    }

    /* renamed from: a */
    public void m231a(InterfaceC0704f interfaceC0704f) {
        this.f263b = interfaceC0704f;
    }

    /* renamed from: a */
    public void m232a(InterfaceC0705g interfaceC0705g) {
        this.f267f = interfaceC0705g;
    }

    /* renamed from: a */
    public void m233a(InterfaceC0706h interfaceC0706h) {
        this.f265d = interfaceC0706h;
    }

    /* renamed from: a */
    public void m234a(InterfaceC0707i interfaceC0707i) {
        this.f266e = interfaceC0707i;
    }

    /* renamed from: a */
    public void m235a(InterfaceC0708j interfaceC0708j) {
        this.f264c = interfaceC0708j;
    }

    /* renamed from: a */
    public void m236a(InterfaceC0709k interfaceC0709k) {
        this.f268g = interfaceC0709k;
    }

    /* renamed from: a */
    public void m237a(String str, AbstractC0677b abstractC0677b) {
        C0646a.m50a().m52a(str, abstractC0677b);
    }

    /* renamed from: b */
    public void m238b() {
        C0646a.m50a().m77n();
        C0646a.m50a().m78o();
    }

    /* renamed from: c */
    public void m239c() {
        if (this.f267f != null) {
            this.f267f = null;
        }
        if (this.f263b != null) {
            this.f263b = null;
        }
        if (this.f266e != null) {
            this.f266e = null;
        }
        if (this.f265d != null) {
            this.f265d = null;
        }
        if (this.f268g != null) {
            this.f268g = null;
        }
        if (this.f269h != null) {
            this.f269h = null;
        }
    }
}
