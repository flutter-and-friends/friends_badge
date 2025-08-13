package com.yanzhenjie.permission.checker;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.provider.ContactsContract;

/* loaded from: classes.dex */
class ContactsWriteTest implements PermissionTest {
    private static final String DISPLAY_NAME = "PERMISSION";
    private ContentResolver mResolver;

    ContactsWriteTest(ContentResolver contentResolver) {
        this.mResolver = contentResolver;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        Cursor cursorQuery = this.mResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "mimetype=? and data1=?", new String[]{"vnd.android.cursor.item/name", DISPLAY_NAME}, null);
        if (cursorQuery == null) {
            return false;
        }
        if (cursorQuery.moveToFirst()) {
            long j = cursorQuery.getLong(0);
            cursorQuery.close();
            return update(j);
        }
        cursorQuery.close();
        return insert();
    }

    private boolean insert() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_contact_id", Long.valueOf(ContentUris.parseId(this.mResolver.insert(ContactsContract.RawContacts.CONTENT_URI, contentValues))));
        contentValues.put("data1", DISPLAY_NAME);
        contentValues.put("data2", DISPLAY_NAME);
        contentValues.put("mimetype", "vnd.android.cursor.item/name");
        return ContentUris.parseId(this.mResolver.insert(ContactsContract.Data.CONTENT_URI, contentValues)) > 0;
    }

    private void delete(long j, long j2) {
        this.mResolver.delete(ContactsContract.RawContacts.CONTENT_URI, "_id=?", new String[]{Long.toString(j)});
        this.mResolver.delete(ContactsContract.Data.CONTENT_URI, "_id=?", new String[]{Long.toString(j2)});
    }

    private boolean update(long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_contact_id", Long.valueOf(j));
        contentValues.put("data1", DISPLAY_NAME);
        contentValues.put("data2", DISPLAY_NAME);
        contentValues.put("mimetype", "vnd.android.cursor.item/name");
        return ContentUris.parseId(this.mResolver.insert(ContactsContract.Data.CONTENT_URI, contentValues)) > 0;
    }
}
