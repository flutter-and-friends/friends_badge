package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.os.Build;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class StrictChecker implements PermissionChecker {
    @Override // com.yanzhenjie.permission.checker.PermissionChecker
    public boolean hasPermission(Context context, String... strArr) {
        if (Build.VERSION.SDK_INT < 21) {
            return true;
        }
        for (String str : strArr) {
            if (!hasPermission(context, str)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionChecker
    public boolean hasPermission(Context context, List<String> list) {
        if (Build.VERSION.SDK_INT < 21) {
            return true;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (!hasPermission(context, it.next())) {
                return false;
            }
        }
        return true;
    }

    private boolean hasPermission(Context context, String str) {
        try {
            switch (str) {
                case "android.permission.READ_CALENDAR":
                    return checkReadCalendar(context);
                case "android.permission.WRITE_CALENDAR":
                    return checkWriteCalendar(context);
                case "android.permission.CAMERA":
                    return checkCamera(context);
                case "android.permission.READ_CONTACTS":
                    return checkReadContacts(context);
                case "android.permission.WRITE_CONTACTS":
                    return checkWriteContacts(context);
                case "android.permission.GET_ACCOUNTS":
                    return true;
                case "android.permission.ACCESS_COARSE_LOCATION":
                    return checkCoarseLocation(context);
                case "android.permission.ACCESS_FINE_LOCATION":
                    return checkFineLocation(context);
                case "android.permission.RECORD_AUDIO":
                    return checkRecordAudio(context);
                case "android.permission.READ_PHONE_STATE":
                    return checkReadPhoneState(context);
                case "android.permission.CALL_PHONE":
                    return true;
                case "android.permission.READ_CALL_LOG":
                    return checkReadCallLog(context);
                case "android.permission.WRITE_CALL_LOG":
                    return checkWriteCallLog(context);
                case "com.android.voicemail.permission.ADD_VOICEMAIL":
                    return checkAddVoicemail(context);
                case "android.permission.USE_SIP":
                    return checkSip(context);
                case "android.permission.PROCESS_OUTGOING_CALLS":
                    return true;
                case "android.permission.BODY_SENSORS":
                    return checkSensors(context);
                case "android.permission.SEND_SMS":
                case "android.permission.RECEIVE_MMS":
                    return true;
                case "android.permission.READ_SMS":
                    return checkReadSms(context);
                case "android.permission.RECEIVE_WAP_PUSH":
                case "android.permission.RECEIVE_SMS":
                    return true;
                case "android.permission.READ_EXTERNAL_STORAGE":
                    return checkReadStorage();
                case "android.permission.WRITE_EXTERNAL_STORAGE":
                    return checkWriteStorage();
                default:
                    return true;
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean checkReadCalendar(Context context) throws Throwable {
        return new CalendarReadTest(context).test();
    }

    private static boolean checkWriteCalendar(Context context) throws Throwable {
        return new CalendarWriteTest(context).test();
    }

    private static boolean checkCamera(Context context) throws Throwable {
        return new CameraTest(context).test();
    }

    private static boolean checkReadContacts(Context context) throws Throwable {
        return new ContactsReadTest(context).test();
    }

    private static boolean checkWriteContacts(Context context) throws Throwable {
        return new ContactsWriteTest(context.getContentResolver()).test();
    }

    private static boolean checkCoarseLocation(Context context) throws Throwable {
        return new LocationCoarseTest(context).test();
    }

    private static boolean checkFineLocation(Context context) throws Throwable {
        return new LocationFineTest(context).test();
    }

    private static boolean checkRecordAudio(Context context) throws Throwable {
        return new RecordAudioTest(context).test();
    }

    private static boolean checkReadPhoneState(Context context) throws Throwable {
        return new PhoneStateReadTest(context).test();
    }

    private static boolean checkReadCallLog(Context context) throws Throwable {
        return new CallLogReadTest(context).test();
    }

    private static boolean checkWriteCallLog(Context context) throws Throwable {
        return new CallLogWriteTest(context).test();
    }

    private static boolean checkAddVoicemail(Context context) throws Throwable {
        return new AddVoicemailTest(context).test();
    }

    private static boolean checkSip(Context context) throws Throwable {
        return new SipTest(context).test();
    }

    private static boolean checkSensors(Context context) throws Throwable {
        return new SensorsTest(context).test();
    }

    private static boolean checkReadSms(Context context) throws Throwable {
        return new SmsReadTest(context).test();
    }

    private static boolean checkReadStorage() throws Throwable {
        return new StorageReadTest().test();
    }

    private static boolean checkWriteStorage() throws Throwable {
        return new StorageWriteTest().test();
    }
}
