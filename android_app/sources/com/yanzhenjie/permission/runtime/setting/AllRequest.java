package com.yanzhenjie.permission.runtime.setting;

import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class AllRequest implements SettingRequest {
    private Source mSource;

    public AllRequest(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.runtime.setting.SettingRequest
    public void start(int i) {
        new SettingPage(this.mSource).start(i);
    }
}
