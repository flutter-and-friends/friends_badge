package android.device.scanner.configuration;

/* loaded from: classes.dex */
public enum Triggering {
    PULSE(2),
    CONTINUOUS(4),
    HOST(8);

    private final int value;

    Triggering(int i) {
        this.value = i;
    }

    public int toInt() {
        throw new RuntimeException("stub");
    }
}
