package cn.highlight.work_card_write.api;

import cn.highlight.core.utils.LogManage;
import cn.highlight.core.utils.LogText;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.entity.UserInfo;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.builder.PostFormBuilder;
import com.zhy.http.okhttp.callback.Callback;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Response;

/* loaded from: classes.dex */
public class Api {
    private static String TAG = "tuc";
    private static String codeKey = "code";
    private static String loginSxCode = "401";
    private static String loginUrl = null;
    private static Api mInstance = null;
    private static long outTimeDefault = 180000;
    private static ConcurrentHashMap<String, String> loginParams = new ConcurrentHashMap<>();
    private static String username = "";
    private static String password = "";

    public static Api getInstance() {
        if (mInstance == null) {
            synchronized (Api.class) {
                if (mInstance == null) {
                    mInstance = new Api();
                }
            }
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> boolean reLogin(String str, final int i, final String str2, final ConcurrentHashMap<String, String> concurrentHashMap, final String str3, final List<String> list, final ConcurrentHashMap<String, String> concurrentHashMap2, final Class<T> cls, final Long l, final ApiResult<T> apiResult) {
        try {
            String strSubstring = str.substring(0, 20);
            if (strSubstring.contains(codeKey) && strSubstring.contains(loginSxCode) && !Tools.isNull(loginUrl) && !Tools.isNull(username) && !Tools.isNull(password)) {
                loginParams.clear();
                loginParams.put("username", username);
                loginParams.put("password", password);
                loginParams.put("softType", "ST01");
                Post(loginUrl, loginParams, null, UserInfo.class, 5000L, new ApiResult<UserInfo>() { // from class: cn.highlight.work_card_write.api.Api.1
                    @Override // cn.highlight.work_card_write.api.ApiResult
                    public void onFail(String str4, String str5) {
                    }

                    @Override // cn.highlight.work_card_write.api.ApiResult
                    public void onSuss(UserInfo userInfo) {
                        if (userInfo == null || 200 != userInfo.getCode()) {
                            return;
                        }
                        int i2 = i;
                        if (i2 == 1) {
                            Api.this.Get(str2, concurrentHashMap, cls, l, apiResult);
                            return;
                        }
                        if (i2 == 2) {
                            Api.this.Post(str2, concurrentHashMap, concurrentHashMap2, cls, l, apiResult);
                        } else if (i2 == 3) {
                            Api.this.PostString(str2, str3, cls, l, apiResult);
                        } else {
                            if (i2 != 4) {
                                return;
                            }
                            Api.this.PostFile(str2, concurrentHashMap, list, cls, l, apiResult);
                        }
                    }
                });
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    <T> void Get(final String str, final ConcurrentHashMap<String, String> concurrentHashMap, final Class<T> cls, final Long l, final ApiResult<T> apiResult) {
        new Thread(new Runnable() { // from class: cn.highlight.work_card_write.api.-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$Get$0$Api(str, concurrentHashMap, l, apiResult, cls);
            }
        }).start();
    }

    public /* synthetic */ void lambda$Get$0$Api(final String str, final ConcurrentHashMap concurrentHashMap, final Long l, final ApiResult apiResult, final Class cls) {
        addLog("url:" + str);
        if (concurrentHashMap != null) {
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                String str3 = (String) entry.getValue();
                if (Tools.isNull(str3)) {
                    concurrentHashMap.remove(str2);
                } else {
                    addLog(str2 + ":" + str3);
                }
            }
        }
        long jLongValue = outTimeDefault;
        if (l != null) {
            jLongValue = l.longValue();
        }
        OkHttpUtils.get().url(str).params((Map<String, String>) concurrentHashMap).build().connTimeOut(jLongValue).readTimeOut(jLongValue).writeTimeOut(jLongValue).execute(new Callback<String>() { // from class: cn.highlight.work_card_write.api.Api.2
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // com.zhy.http.okhttp.callback.Callback
            public String parseNetworkResponse(Response response, int i) throws Exception {
                String strString = response.body().string();
                Api.this.addLog("请求结果:" + strString);
                return strString;
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onError(Call call, Exception exc, int i) {
                ApiResult apiResult2 = apiResult;
                if (apiResult2 != null) {
                    apiResult2.onFail(str, exc.getMessage());
                }
                Api.this.addLog("接口请求失败！--->" + str);
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onResponse(String str4, int i) {
                if (Api.this.reLogin(str4, 1, str, concurrentHashMap, null, null, null, cls, l, apiResult) || apiResult == null) {
                    return;
                }
                Object objFromJson = null;
                try {
                    objFromJson = new Gson().fromJson(str4, (Class<Object>) cls);
                } catch (JsonSyntaxException e) {
                    e.printStackTrace();
                }
                apiResult.onSuss(objFromJson);
            }
        });
    }

    <T> void Post(final String str, final ConcurrentHashMap<String, String> concurrentHashMap, final ConcurrentHashMap<String, String> concurrentHashMap2, final Class<T> cls, final Long l, final ApiResult<T> apiResult) {
        new Thread(new Runnable() { // from class: cn.highlight.work_card_write.api.-$$Lambda$Api$wk3yi5xnxFwdQ68DrmiXIl6Ju9U
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$Post$1$Api(str, concurrentHashMap, concurrentHashMap2, l, apiResult, cls);
            }
        }).start();
    }

    public /* synthetic */ void lambda$Post$1$Api(final String str, final ConcurrentHashMap concurrentHashMap, final ConcurrentHashMap concurrentHashMap2, final Long l, final ApiResult apiResult, final Class cls) {
        addLog("url:" + str);
        if (str.contains(Constants.login)) {
            loginUrl = str;
            username = (String) concurrentHashMap.get("username");
            password = (String) concurrentHashMap.get("password");
        }
        if (concurrentHashMap != null) {
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                String str3 = (String) entry.getValue();
                if (Tools.isNull(str3)) {
                    concurrentHashMap.remove(str2);
                } else {
                    addLog(str2 + ":" + str3);
                }
            }
        }
        if (concurrentHashMap2 != null) {
            for (Map.Entry entry2 : concurrentHashMap2.entrySet()) {
                String str4 = (String) entry2.getKey();
                String str5 = (String) entry2.getValue();
                if (Tools.isNull(str5)) {
                    concurrentHashMap2.remove(str4);
                } else {
                    addLog(str4 + ":" + str5);
                }
            }
        }
        long jLongValue = outTimeDefault;
        if (l != null) {
            jLongValue = l.longValue();
        }
        OkHttpUtils.post().url(str).headers(concurrentHashMap2).params((Map<String, String>) concurrentHashMap).build().connTimeOut(jLongValue).readTimeOut(jLongValue).writeTimeOut(jLongValue).execute(new Callback<String>() { // from class: cn.highlight.work_card_write.api.Api.3
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // com.zhy.http.okhttp.callback.Callback
            public String parseNetworkResponse(Response response, int i) throws Exception {
                String strString = response.body().string();
                Api.this.addLog("请求结果:" + strString);
                return strString;
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onError(Call call, Exception exc, int i) {
                ApiResult apiResult2 = apiResult;
                if (apiResult2 != null) {
                    apiResult2.onFail(str, exc.getMessage());
                }
                Api.this.addLog("接口请求失败！--->" + str);
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onResponse(String str6, int i) {
                if (Api.this.reLogin(str6, 2, str, concurrentHashMap, null, null, concurrentHashMap2, cls, l, apiResult) || apiResult == null) {
                    return;
                }
                Object objFromJson = null;
                try {
                    objFromJson = new Gson().fromJson(str6, (Class<Object>) cls);
                } catch (JsonSyntaxException e) {
                    e.printStackTrace();
                }
                apiResult.onSuss(objFromJson);
            }
        });
    }

    <T> void PostString(final String str, final String str2, final Class<T> cls, final Long l, final ApiResult<T> apiResult) {
        new Thread(new Runnable() { // from class: cn.highlight.work_card_write.api.-$$Lambda$Api$7KP0AbdPncCp9_MsF1YbpXtcbPw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$PostString$2$Api(str, str2, l, apiResult, cls);
            }
        }).start();
    }

    public /* synthetic */ void lambda$PostString$2$Api(final String str, final String str2, final Long l, final ApiResult apiResult, final Class cls) {
        addLog("url:" + str);
        addLog("paramsJson:" + str2);
        long jLongValue = outTimeDefault;
        if (l != null) {
            jLongValue = l.longValue();
        }
        OkHttpUtils.postString().url(str).mediaType(MediaType.parse("application/json; charset=utf-8")).content(str2).build().connTimeOut(jLongValue).readTimeOut(jLongValue).writeTimeOut(jLongValue).execute(new Callback<String>() { // from class: cn.highlight.work_card_write.api.Api.4
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // com.zhy.http.okhttp.callback.Callback
            public String parseNetworkResponse(Response response, int i) throws Exception {
                String strString = response.body().string();
                Api.this.addLog("请求结果:" + strString);
                return strString;
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onError(Call call, Exception exc, int i) {
                ApiResult apiResult2 = apiResult;
                if (apiResult2 != null) {
                    apiResult2.onFail(str, exc.getMessage());
                }
                Api.this.addLog("接口请求失败！--->" + str);
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onResponse(String str3, int i) {
                if (Api.this.reLogin(str3, 3, str, null, str2, null, null, cls, l, apiResult) || apiResult == null) {
                    return;
                }
                Object objFromJson = null;
                try {
                    objFromJson = new Gson().fromJson(str3, (Class<Object>) cls);
                } catch (JsonSyntaxException e) {
                    e.printStackTrace();
                }
                apiResult.onSuss(objFromJson);
            }
        });
    }

    <T> void PostFile(final String str, final ConcurrentHashMap<String, String> concurrentHashMap, final List<String> list, final Class<T> cls, final Long l, final ApiResult<T> apiResult) {
        new Thread(new Runnable() { // from class: cn.highlight.work_card_write.api.-$$Lambda$Api$OgXUqON2nONhlPyyfJ2KRrCuX3g
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$PostFile$3$Api(str, concurrentHashMap, list, apiResult, l, cls);
            }
        }).start();
    }

    public /* synthetic */ void lambda$PostFile$3$Api(final String str, final ConcurrentHashMap concurrentHashMap, final List list, final ApiResult apiResult, final Long l, final Class cls) {
        addLog("url:" + str);
        if (concurrentHashMap != null) {
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                String str3 = (String) entry.getValue();
                if (Tools.isNull(str3)) {
                    concurrentHashMap.remove(str2);
                } else {
                    addLog(str2 + ":" + str3);
                }
            }
        }
        PostFormBuilder postFormBuilderPost = OkHttpUtils.post();
        postFormBuilderPost.url(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str4 = (String) it.next();
            addLog("文件路径:" + str4);
            File file = new File(str4);
            if (!file.exists()) {
                apiResult.onFail(str4, "有无法识别的文件路径，请检查！");
                return;
            }
            postFormBuilderPost.addFile("files", file.getName(), file);
        }
        long jLongValue = outTimeDefault;
        if (l != null) {
            jLongValue = l.longValue();
        }
        postFormBuilderPost.params((Map<String, String>) concurrentHashMap).addHeader("Content-Disposition", "form-data;filename=enctype").build().connTimeOut(jLongValue).readTimeOut(jLongValue).writeTimeOut(jLongValue).execute(new Callback<String>() { // from class: cn.highlight.work_card_write.api.Api.5
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // com.zhy.http.okhttp.callback.Callback
            public String parseNetworkResponse(Response response, int i) throws Exception {
                String strString = response.body().string();
                Api.this.addLog("请求结果:" + strString);
                return strString;
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onError(Call call, Exception exc, int i) {
                ApiResult apiResult2 = apiResult;
                if (apiResult2 != null) {
                    apiResult2.onFail(str, exc.getMessage());
                }
                Api.this.addLog("接口请求失败！--->" + str);
            }

            @Override // com.zhy.http.okhttp.callback.Callback
            public void onResponse(String str5, int i) {
                if (Api.this.reLogin(str5, 4, str, concurrentHashMap, null, list, null, cls, l, apiResult) || apiResult == null) {
                    return;
                }
                Object objFromJson = null;
                try {
                    objFromJson = new Gson().fromJson(str5, (Class<Object>) cls);
                } catch (JsonSyntaxException e) {
                    e.printStackTrace();
                }
                apiResult.onSuss(objFromJson);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLog(String str) {
        if (Tools.isNull(str)) {
            return;
        }
        if (str.length() > 512) {
            str = str.substring(0, 512);
        }
        LogManage.e(TAG, str);
        LogText.writeLog(str);
    }

    public boolean isSucceed(String str) {
        return "0".equals(str);
    }
}
