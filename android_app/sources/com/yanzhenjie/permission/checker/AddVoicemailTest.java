package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.VoicemailContract;
import android.text.TextUtils;

/* loaded from: classes.dex */
class AddVoicemailTest implements PermissionTest {
    private ContentResolver mResolver;

    AddVoicemailTest(Context context) {
        this.mResolver = context.getContentResolver();
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        try {
            Uri uri = VoicemailContract.Voicemails.CONTENT_URI;
            ContentValues contentValues = new ContentValues();
            contentValues.put("date", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("number", "1");
            contentValues.put("duration", (Integer) 1);
            contentValues.put("source_package", "permission");
            contentValues.put("source_data", "permission");
            contentValues.put("is_read", (Integer) 0);
            return this.mResolver.delete(uri, "_id=?", new String[]{Long.toString(ContentUris.parseId(this.mResolver.insert(uri, contentValues)))}) > 0;
        } catch (Exception e) {
            if (TextUtils.isEmpty(e.getMessage())) {
                return false;
            }
            return !r0.toLowerCase().contains("add_voicemail");
        }
    }
}
