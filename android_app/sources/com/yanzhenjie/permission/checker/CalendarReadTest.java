package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.CalendarContract;
import com.yanzhenjie.permission.checker.PermissionTest;

/* loaded from: classes.dex */
class CalendarReadTest implements PermissionTest {
    private ContentResolver mResolver;

    CalendarReadTest(Context context) {
        this.mResolver = context.getContentResolver();
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        Cursor cursorQuery = this.mResolver.query(CalendarContract.Calendars.CONTENT_URI, new String[]{"_id", "name"}, null, null, null);
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
