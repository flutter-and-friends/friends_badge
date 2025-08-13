package com.yanzhenjie.permission.install;

import com.yanzhenjie.permission.Boot;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class NRequestFactory implements Boot.InstallRequestFactory {
    @Override // com.yanzhenjie.permission.Boot.InstallRequestFactory
    public InstallRequest create(Source source) {
        return new NRequest(source);
    }
}
