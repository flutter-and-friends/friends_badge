package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.Telephony;
import com.yanzhenjie.permission.checker.PermissionTest;

/* loaded from: classes.dex */
class SmsReadTest implements PermissionTest {
    private ContentResolver mResolver;

    SmsReadTest(Context context) {
        this.mResolver = context.getContentResolver();
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        Cursor cursorQuery = this.mResolver.query(Telephony.Sms.CONTENT_URI, new String[]{"_id", "address", "person", "body"}, null, null, null);
        if (cursorQuery == null) {
            return false;
        }
        try {
            PermissionTest.CursorTest.read(cursorQuery);
            cursorQuery.close();
            return true;
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }
}
