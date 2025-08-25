package cn.manytag.rfidapi.ble.a;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class h {
    private HandlerThread a = new HandlerThread("splitWriter");
    private Handler b;
    private a c;
    private String d;
    private String e;
    private byte[] f;
    private int g;
    private boolean h;
    private long i;
    private cn.manytag.rfidapi.ble.callback.i j;
    private Queue k;
    private int l;

    public h() {
        this.a.start();
        this.b = new i(this, this.a.getLooper());
    }

    private static Queue a(byte[] bArr, int i) {
        byte[] bArr2;
        if (i > 20) {
            cn.manytag.rfidapi.ble.d.a.b("Be careful: split count beyond 20! Ensure MTU higher than 23!");
        }
        LinkedList linkedList = new LinkedList();
        int length = bArr.length % i == 0 ? bArr.length / i : Math.round((bArr.length / i) + 1);
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (length == 1 || i2 == length - 1) {
                    int length2 = bArr.length % i == 0 ? i : bArr.length % i;
                    byte[] bArr3 = new byte[length2];
                    System.arraycopy(bArr, i2 * i, bArr3, 0, length2);
                    bArr2 = bArr3;
                } else {
                    bArr2 = new byte[i];
                    System.arraycopy(bArr, i2 * i, bArr2, 0, i);
                }
                linkedList.offer(bArr2);
            }
        }
        return linkedList;
    }

    private void a() {
        byte[] bArr = this.f;
        if (bArr == null) {
            throw new IllegalArgumentException("data is Null!");
        }
        int i = this.g;
        if (i < 1) {
            throw new IllegalArgumentException("split count should higher than 0!");
        }
        this.k = a(bArr, i);
        this.l = this.k.size();
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.k.peek() == null) {
            c();
            return;
        }
        this.c.a().a(this.d, this.e).a((byte[]) this.k.poll(), new j(this), this.e);
        if (this.h) {
            return;
        }
        this.b.sendMessageDelayed(this.b.obtainMessage(51), this.i);
    }

    private void c() {
        this.a.quit();
        this.b.removeCallbacksAndMessages(null);
    }

    public void a(a aVar, String str, String str2, byte[] bArr, boolean z, long j, cn.manytag.rfidapi.ble.callback.i iVar) {
        this.c = aVar;
        this.d = str;
        this.e = str2;
        this.f = bArr;
        this.h = z;
        this.i = j;
        this.g = cn.manytag.rfidapi.ble.a.a().i();
        this.j = iVar;
        a();
    }
}
