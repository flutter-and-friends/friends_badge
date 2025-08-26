package com.yanzhenjie.permission.overlay;

import com.yanzhenjie.permission.Boot;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class MRequestFactory implements Boot.OverlayRequestFactory {
    @Override // com.yanzhenjie.permission.Boot.OverlayRequestFactory
    public OverlayRequest create(Source source) {
        return new MRequest(source);
    }
}
