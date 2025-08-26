package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.provider.CalendarContract;
import java.util.TimeZone;

/* loaded from: classes.dex */
class CalendarWriteTest implements PermissionTest {
    private static final String ACCOUNT = "permission@gmail.com";
    private static final String NAME = "PERMISSION";
    private ContentResolver mResolver;

    CalendarWriteTest(Context context) {
        this.mResolver = context.getContentResolver();
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", NAME);
            contentValues.put("account_name", ACCOUNT);
            contentValues.put("account_type", "LOCAL");
            contentValues.put("calendar_displayName", NAME);
            contentValues.put("visible", (Integer) 1);
            contentValues.put("calendar_color", (Integer) (-16776961));
            contentValues.put("calendar_access_level", (Integer) 700);
            contentValues.put("sync_events", (Integer) 1);
            contentValues.put("calendar_timezone", timeZone.getID());
            contentValues.put("ownerAccount", NAME);
            contentValues.put("canOrganizerRespond", (Integer) 0);
            return ContentUris.parseId(this.mResolver.insert(CalendarContract.Calendars.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").appendQueryParameter("account_name", NAME).appendQueryParameter("account_type", "LOCAL").build(), contentValues)) > 0;
        } finally {
            this.mResolver.delete(CalendarContract.Calendars.CONTENT_URI.buildUpon().build(), "account_name=?", new String[]{ACCOUNT});
        }
    }
}
