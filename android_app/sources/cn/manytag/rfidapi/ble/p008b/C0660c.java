package cn.manytag.rfidapi.ble.p008b;

/* renamed from: cn.manytag.rfidapi.ble.b.c */
/* loaded from: classes.dex */
public class C0660c extends AbstractC0658a {

    /* renamed from: a */
    private int f197a;

    public C0660c(int i) {
        super(101, "Gatt Exception Occurred! ");
        this.f197a = i;
    }

    @Override // cn.manytag.rfidapi.ble.p008b.AbstractC0658a
    public String toString() {
        return "GattException{gattStatus=" + this.f197a + "} " + super.toString();
    }
}
