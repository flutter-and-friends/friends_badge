package common;

/* loaded from: classes2.dex */
public final class Assert {
    public static void verify(boolean z) {
        if (!z) {
            throw new AssertionFailed();
        }
    }

    public static void verify(boolean z, String str) {
        if (!z) {
            throw new AssertionFailed(str);
        }
    }
}
