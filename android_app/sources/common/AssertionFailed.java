package common;

/* loaded from: classes2.dex */
public class AssertionFailed extends RuntimeException {
    public AssertionFailed() {
        printStackTrace();
    }

    public AssertionFailed(String str) {
        super(str);
    }
}
