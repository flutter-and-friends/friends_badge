package cn.manytag.rfidapi.ble.b;

/* loaded from: classes.dex */
public class c extends a {
    private int a;

    public c(int i) {
        super(101, "Gatt Exception Occurred! ");
        this.a = i;
    }

    @Override // cn.manytag.rfidapi.ble.b.a
    public String toString() {
        return "GattException{gattStatus=" + this.a + "} " + super.toString();
    }
}
