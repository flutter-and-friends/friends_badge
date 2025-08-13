package com.yanzhenjie.permission.checker;

import android.database.Cursor;

/* loaded from: classes.dex */
interface PermissionTest {
    boolean test() throws Throwable;

    public static class CursorTest {
        public static void read(Cursor cursor) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                int type = cursor.getType(0);
                if (type == 0 || type == 4) {
                    return;
                }
                cursor.getString(0);
            }
        }
    }
}
