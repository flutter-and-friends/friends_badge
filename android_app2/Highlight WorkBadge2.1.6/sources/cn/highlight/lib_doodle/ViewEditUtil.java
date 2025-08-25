package cn.highlight.lib_doodle;

import android.content.Context;
import android.graphics.Typeface;

/* loaded from: classes.dex */
public class ViewEditUtil {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface getViewTextFont(Context context, String str) {
        switch (str) {
            case "思源黑体":
            case "SourceHanSansCN-Regular":
                return Typeface.createFromAsset(context.getAssets(), "fonts/SourceHanSansCN-Regular.otf");
            case "思源黑体细":
            case "SourceHanSansCN-Light":
                return Typeface.createFromAsset(context.getAssets(), "fonts/SourceHanSansCN-Light.otf");
            case "思源宋体中":
            case "SourceHanSerifCN-Medium":
                return Typeface.createFromAsset(context.getAssets(), "fonts/SourceHanSerifCN-Medium.otf");
            case "鸿蒙黑体粗":
            case "HarmonyOS_Sans_Bold":
                return Typeface.createFromAsset(context.getAssets(), "fonts/HarmonyOS_Sans_Bold.ttf");
            default:
                return null;
        }
    }
}
