package cn.highlight.work_card_write;

import android.app.Application;
import android.content.Context;
import androidx.multidex.MultiDex;
import cn.highlight.core.utils.LogManage;
import cn.highlight.work_card_write.greendao.db.DaoMaster;
import cn.highlight.work_card_write.greendao.db.DaoSession;
import cn.highlight.work_card_write.tools.image.DeviceInfo;
import com.gg.reader.api.protocol.gx.EnumG;
import com.tencent.bugly.Bugly;
import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.cookie.CookieJarImpl;
import com.zhy.http.okhttp.cookie.store.PersistentCookieStore;
import com.zhy.http.okhttp.log.LoggerInterceptor;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

/* loaded from: classes.dex */
public class MyApplication extends Application {
    private static String BUGLY_APPID = "91bbd660a1";
    private static DaoSession daoSession;
    private static DeviceInfo deviceInfo;
    public static Context instance;

    public static void setupDatabase(Context context) {
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        initOKHttp();
        LogManage.init(true, "tuc");
        instance = this;
        setupDatabase();
        DeviceInfo deviceInfo2 = new DeviceInfo();
        deviceInfo2.setHeight(416);
        deviceInfo2.setWidth(EnumG.BaseMid_SafeCertification);
        deviceInfo2.setColorCount(3);
        setDeviceInfo(deviceInfo2);
    }

    private void initBugLy() {
        Bugly.init(getApplicationContext(), BUGLY_APPID, false);
    }

    public static void setDeviceInfo(DeviceInfo deviceInfo2) {
        deviceInfo = deviceInfo2;
    }

    public static DeviceInfo getDeviceInfo() {
        return deviceInfo;
    }

    private void initOKHttp() {
        OkHttpUtils.initClient(new OkHttpClient.Builder().addInterceptor(new LoggerInterceptor("tag")).cookieJar(new CookieJarImpl(new PersistentCookieStore(getApplicationContext()))).connectTimeout(180000L, TimeUnit.MILLISECONDS).readTimeout(180000L, TimeUnit.MILLISECONDS).writeTimeout(180000L, TimeUnit.MILLISECONDS).build());
    }

    private void setupDatabase() {
        daoSession = new DaoMaster(new DaoMaster.DevOpenHelper(this, "badge.db", null).getWritableDatabase()).newSession();
    }

    public static DaoSession getDaoInstant() {
        DaoSession daoSession2 = daoSession;
        if (daoSession2 != null) {
            daoSession2.clear();
        }
        return daoSession;
    }
}
