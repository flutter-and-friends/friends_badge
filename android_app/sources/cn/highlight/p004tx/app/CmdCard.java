package cn.highlight.p004tx.app;

/* loaded from: classes.dex */
public class CmdCard {
    private static String TAG = "CmdCard";

    public static byte[] setWorkMode() {
        return new byte[]{27, 5, 6, 0, 0, 2, 1, 10, 11};
    }
}
