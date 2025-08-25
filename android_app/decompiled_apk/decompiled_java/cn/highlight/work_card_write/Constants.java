package cn.highlight.work_card_write;

import android.graphics.Bitmap;
import android.os.Environment;
import cn.highlight.lib_doodle.IDoodle;
import cn.highlight.work_card_write.greendao.table.BadgeBean;

/* loaded from: classes.dex */
public class Constants {
    public static final String APK_PATH = "/storage/emulated/0/APK/";
    public static String APP_URL = "app_url";
    public static String DEFAULT_APP_URL = "";
    public static final String Enterprise = "Enterprise";
    public static final String FIRST_USE = "first_use";
    public static final String Identity = "Identity";
    public static Boolean IsModelThemeIn = null;
    public static final String Person = "Person";
    public static final String assetList = "/app/assetList";
    public static String cardShowPage = "模板";
    public static String cardSize = "3.7";
    public static String editColor = "黑白红";
    public static Bitmap editCrop2Image = null;
    public static Bitmap editCropImage = null;
    public static Bitmap editModelImage = null;
    public static IDoodle editSaveModel = null;
    public static BadgeBean editSelectModel = null;
    public static String editSize = "3.7";
    public static final String getKey = "/main/getKey";
    public static final String getScjNewFile = "/version/getScjNewFile";
    public static final String getVersion = "/version/getNew";
    public static boolean isAppExit = false;
    public static boolean isPermissionsPass = false;
    public static final String login = "/h5/login";
    public static final String test = "/cgi-bin/assets4UniApp";
    public static String savePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/WC/Doodle";
    public static String ACCOUNT = "account";
    public static String PASSWORD = "password";
    public static String NICKNAME = "nickname";
    public static String organizationId = "";
}
