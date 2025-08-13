package cn.highlight.work_card_write.p006sp;

import android.os.Build;
import android.os.LocaleList;
import com.blankj.utilcode.util.SPUtils;

/* loaded from: classes.dex */
public class ConfigSp {
    public static void saveLang(String str) {
        SPUtils.getInstance("work_card", 0).put("lang", str);
    }

    public static String getLang() {
        return SPUtils.getInstance("work_card", 0).getString("lang", Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0).getLanguage() : "en");
    }
}
