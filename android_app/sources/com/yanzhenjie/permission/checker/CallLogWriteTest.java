package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.provider.CallLog;

/* loaded from: classes.dex */
class CallLogWriteTest implements PermissionTest {
    private ContentResolver mResolver;

    CallLogWriteTest(Context context) {
        this.mResolver = context.getContentResolver();
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", (Integer) 1);
            contentValues.put("number", "1");
            contentValues.put("date", (Integer) 20080808);
            contentValues.put("new", "0");
            return ContentUris.parseId(this.mResolver.insert(CallLog.Calls.CONTENT_URI, contentValues)) > 0;
        } finally {
            this.mResolver.delete(CallLog.Calls.CONTENT_URI, "number=?", new String[]{"1"});
        }
    }
}
