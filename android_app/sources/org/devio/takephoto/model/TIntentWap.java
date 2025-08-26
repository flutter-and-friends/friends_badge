package org.devio.takephoto.model;

import android.content.Intent;

/* loaded from: classes2.dex */
public class TIntentWap {
    private Intent intent;
    private int requestCode;

    public TIntentWap() {
    }

    public TIntentWap(Intent intent, int i) {
        this.intent = intent;
        this.requestCode = i;
    }

    public Intent getIntent() {
        return this.intent;
    }

    public void setIntent(Intent intent) {
        this.intent = intent;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public void setRequestCode(int i) {
        this.requestCode = i;
    }
}
