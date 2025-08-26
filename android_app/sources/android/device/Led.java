package android.device;

/* loaded from: classes.dex */
public enum Led {
    LED_1(1),
    LED_2(2),
    LED_3(3),
    LED_4(4),
    LED_5(5),
    LED_6(6),
    LED_7(7),
    LED_8(8);

    private final int value;

    Led(int i) {
        this.value = i;
    }

    public int toInt() {
        return this.value;
    }
}
