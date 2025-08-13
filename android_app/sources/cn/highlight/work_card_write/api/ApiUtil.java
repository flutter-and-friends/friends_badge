package cn.highlight.work_card_write.api;

import android.app.Activity;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.core.utils.load.LoadingUtil;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.entity.AppUpdate;
import cn.highlight.work_card_write.entity.LoginRes;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ApiUtil {
    private static LoadingUtil loadingUtil;
    private static ApiUtil mInstance;

    public static ApiUtil getInstance() {
        if (mInstance == null) {
            synchronized (ApiUtil.class) {
                if (mInstance == null) {
                    mInstance = new ApiUtil();
                    loadingUtil = new LoadingUtil();
                }
            }
        }
        return mInstance;
    }

    public LoadingUtil getLoadingUtil() {
        return loadingUtil;
    }

    public void testConn(Activity activity, String str, final ApiResult<Result> apiResult) {
        String str2 = str + Constants.test;
        if (Tools.isNull(str2)) {
            return;
        }
        if (!Tools.isValidUrl(str2)) {
            ToastUtil.showToast(activity, activity.getResources().getString(C0498R.string.url_error));
        } else {
            loadingUtil.showProgressDialog(activity, activity.getResources().getString(C0498R.string.test_connect));
            Api.getInstance().Get(str2, null, Result.class, 5000L, new ApiResult<Result>() { // from class: cn.highlight.work_card_write.api.ApiUtil.1
                @Override // cn.highlight.work_card_write.api.ApiResult
                public void onSuss(Result result) {
                    ApiUtil.loadingUtil.dismissProgressDialog();
                    apiResult.onSuss(result);
                }

                @Override // cn.highlight.work_card_write.api.ApiResult
                public void onFail(String str3, String str4) {
                    ApiUtil.loadingUtil.dismissProgressDialog();
                    apiResult.onFail(str3, str4);
                }
            });
        }
    }

    public void login(Activity activity, String str, String str2, final ApiResult<LoginRes> apiResult) {
        String requestUrl = getRequestUrl(activity, Constants.login);
        if (Tools.isNull(requestUrl)) {
            return;
        }
        if (!Tools.isValidUrl(requestUrl)) {
            ToastUtil.showToast(activity, activity.getResources().getString(C0498R.string.url_error));
            return;
        }
        ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
        concurrentHashMap.put("lang", "cn");
        try {
            concurrentHashMap.put("user", URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        ConcurrentHashMap<String, String> concurrentHashMap2 = new ConcurrentHashMap<>();
        concurrentHashMap2.put("type", "1");
        concurrentHashMap2.put("username", getParams(CryptoUtils.encrypt(str)));
        concurrentHashMap2.put("password", getParams(CryptoUtils.encrypt(str2)));
        loadingUtil.showProgressDialog(activity, activity.getResources().getString(C0498R.string.logging_in));
        Api.getInstance().Post(requestUrl, concurrentHashMap2, concurrentHashMap, LoginRes.class, 5000L, new ApiResult<LoginRes>() { // from class: cn.highlight.work_card_write.api.ApiUtil.2
            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onSuss(LoginRes loginRes) {
                ApiUtil.loadingUtil.dismissProgressDialog();
                apiResult.onSuss(loginRes);
            }

            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onFail(String str3, String str4) {
                ApiUtil.loadingUtil.dismissProgressDialog();
                apiResult.onFail(str3, str4);
            }
        });
    }

    public void getVersion(Activity activity, final ApiResult<AppUpdate> apiResult) {
        String requestUrl = getRequestUrl(activity, Constants.getVersion);
        if (Tools.isNull(requestUrl)) {
            return;
        }
        Api.getInstance().Get(requestUrl, null, AppUpdate.class, 5000L, new ApiResult<AppUpdate>() { // from class: cn.highlight.work_card_write.api.ApiUtil.3
            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onSuss(AppUpdate appUpdate) {
                apiResult.onSuss(appUpdate);
            }

            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onFail(String str, String str2) {
                apiResult.onFail(str, str2);
            }
        });
    }

    public String getRequestUrl(Activity activity, String str) {
        String string = SpUtil.getString(activity, Constants.APP_URL, Constants.DEFAULT_APP_URL);
        if (Tools.isNull(string)) {
            return "";
        }
        return string + str;
    }

    public boolean isSucceed(String str) {
        return "0".equals(str);
    }

    private String getParams(String str) {
        return Tools.isNull(str) ? "" : str;
    }
}
