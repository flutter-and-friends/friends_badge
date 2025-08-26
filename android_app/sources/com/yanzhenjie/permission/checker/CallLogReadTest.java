package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.CallLog;
import com.yanzhenjie.permission.checker.PermissionTest;

/* loaded from: classes.dex */
class CallLogReadTest implements PermissionTest {
    private ContentResolver mResolver;

    CallLogReadTest(Context context) {
        this.mResolver = context.getContentResolver();
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        Cursor cursorQuery = this.mResolver.query(CallLog.Calls.CONTENT_URI, new String[]{"_id", "number", "type"}, null, null, null);
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
