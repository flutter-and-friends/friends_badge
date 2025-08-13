package cn.manytag.rfidapi.ble.p007a;

import android.os.Handler;
import android.os.HandlerThread;
import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.p010d.C0685a;
import java.util.LinkedList;
import java.util.Queue;

/* renamed from: cn.manytag.rfidapi.ble.a.h */
/* loaded from: classes.dex */
public class C0654h {

    /* renamed from: a */
    private HandlerThread f178a = new HandlerThread("splitWriter");

    /* renamed from: b */
    private Handler f179b;

    /* renamed from: c */
    private C0647a f180c;

    /* renamed from: d */
    private String f181d;

    /* renamed from: e */
    private String f182e;

    /* renamed from: f */
    private byte[] f183f;

    /* renamed from: g */
    private int f184g;

    /* renamed from: h */
    private boolean f185h;

    /* renamed from: i */
    private long f186i;

    /* renamed from: j */
    private AbstractC0684i f187j;

    /* renamed from: k */
    private Queue f188k;

    /* renamed from: l */
    private int f189l;

    public C0654h() {
        this.f178a.start();
        this.f179b = new HandlerC0655i(this, this.f178a.getLooper());
    }

    /* renamed from: a */
    private static Queue m140a(byte[] bArr, int i) {
        byte[] bArr2;
        if (i > 20) {
            C0685a.m202b("Be careful: split count beyond 20! Ensure MTU higher than 23!");
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

    /* renamed from: a */
    private void m141a() {
        byte[] bArr = this.f183f;
        if (bArr == null) {
            throw new IllegalArgumentException("data is Null!");
        }
        int i = this.f184g;
        if (i < 1) {
            throw new IllegalArgumentException("split count should higher than 0!");
        }
        this.f188k = m140a(bArr, i);
        this.f189l = this.f188k.size();
        m144b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m144b() {
        if (this.f188k.peek() == null) {
            m146c();
            return;
        }
        this.f180c.m104a().m123a(this.f181d, this.f182e).m127a((byte[]) this.f188k.poll(), new C0656j(this), this.f182e);
        if (this.f185h) {
            return;
        }
        this.f179b.sendMessageDelayed(this.f179b.obtainMessage(51), this.f186i);
    }

    /* renamed from: c */
    private void m146c() {
        this.f178a.quit();
        this.f179b.removeCallbacksAndMessages(null);
    }

    /* renamed from: a */
    public void m151a(C0647a c0647a, String str, String str2, byte[] bArr, boolean z, long j, AbstractC0684i abstractC0684i) {
        this.f180c = c0647a;
        this.f181d = str;
        this.f182e = str2;
        this.f183f = bArr;
        this.f185h = z;
        this.f186i = j;
        this.f184g = C0646a.m50a().m72i();
        this.f187j = abstractC0684i;
        m141a();
    }
}
