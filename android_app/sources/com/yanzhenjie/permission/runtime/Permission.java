package com.yanzhenjie.permission.runtime;

import android.content.Context;
import android.os.Build;
import com.yanzhenjie.permission.C1443R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class Permission {
    public static final String ACCESS_COARSE_LOCATION = "android.permission.ACCESS_COARSE_LOCATION";
    public static final String ACCESS_FINE_LOCATION = "android.permission.ACCESS_FINE_LOCATION";
    public static final String ADD_VOICEMAIL = "com.android.voicemail.permission.ADD_VOICEMAIL";
    static final String ADD_VOICEMAIL_MANIFEST = "android.permission.ADD_VOICEMAIL";
    public static final String ANSWER_PHONE_CALLS = "android.permission.ANSWER_PHONE_CALLS";
    public static final String BODY_SENSORS = "android.permission.BODY_SENSORS";
    public static final String CALL_PHONE = "android.permission.CALL_PHONE";
    public static final String CAMERA = "android.permission.CAMERA";
    public static final String GET_ACCOUNTS = "android.permission.GET_ACCOUNTS";
    public static final String PROCESS_OUTGOING_CALLS = "android.permission.PROCESS_OUTGOING_CALLS";
    public static final String READ_CALENDAR = "android.permission.READ_CALENDAR";
    public static final String READ_CALL_LOG = "android.permission.READ_CALL_LOG";
    public static final String READ_CONTACTS = "android.permission.READ_CONTACTS";
    public static final String READ_EXTERNAL_STORAGE = "android.permission.READ_EXTERNAL_STORAGE";
    public static final String READ_PHONE_NUMBERS = "android.permission.READ_PHONE_NUMBERS";
    public static final String READ_PHONE_STATE = "android.permission.READ_PHONE_STATE";
    public static final String READ_SMS = "android.permission.READ_SMS";
    public static final String RECEIVE_MMS = "android.permission.RECEIVE_MMS";
    public static final String RECEIVE_SMS = "android.permission.RECEIVE_SMS";
    public static final String RECEIVE_WAP_PUSH = "android.permission.RECEIVE_WAP_PUSH";
    public static final String RECORD_AUDIO = "android.permission.RECORD_AUDIO";
    public static final String SEND_SMS = "android.permission.SEND_SMS";
    public static final String USE_SIP = "android.permission.USE_SIP";
    public static final String WRITE_CALENDAR = "android.permission.WRITE_CALENDAR";
    public static final String WRITE_CALL_LOG = "android.permission.WRITE_CALL_LOG";
    public static final String WRITE_CONTACTS = "android.permission.WRITE_CONTACTS";
    public static final String WRITE_EXTERNAL_STORAGE = "android.permission.WRITE_EXTERNAL_STORAGE";

    public static final class Group {
        public static final String[] CALENDAR = {Permission.READ_CALENDAR, Permission.WRITE_CALENDAR};
        public static final String[] CAMERA = {Permission.CAMERA};
        public static final String[] CONTACTS = {Permission.READ_CONTACTS, Permission.WRITE_CONTACTS, Permission.GET_ACCOUNTS};
        public static final String[] LOCATION = {Permission.ACCESS_FINE_LOCATION, Permission.ACCESS_COARSE_LOCATION};
        public static final String[] MICROPHONE = {Permission.RECORD_AUDIO};
        public static final String[] PHONE;
        public static final String[] SENSORS;
        public static final String[] SMS;
        public static final String[] STORAGE;

        static {
            if (Build.VERSION.SDK_INT >= 26) {
                PHONE = new String[]{Permission.READ_PHONE_STATE, Permission.CALL_PHONE, Permission.READ_CALL_LOG, Permission.WRITE_CALL_LOG, Permission.ADD_VOICEMAIL, Permission.USE_SIP, Permission.PROCESS_OUTGOING_CALLS, Permission.READ_PHONE_NUMBERS, Permission.ANSWER_PHONE_CALLS};
            } else {
                PHONE = new String[]{Permission.READ_PHONE_STATE, Permission.CALL_PHONE, Permission.READ_CALL_LOG, Permission.WRITE_CALL_LOG, Permission.ADD_VOICEMAIL, Permission.USE_SIP, Permission.PROCESS_OUTGOING_CALLS};
            }
            SENSORS = new String[]{Permission.BODY_SENSORS};
            SMS = new String[]{Permission.SEND_SMS, Permission.RECEIVE_SMS, Permission.READ_SMS, Permission.RECEIVE_WAP_PUSH, Permission.RECEIVE_MMS};
            STORAGE = new String[]{Permission.READ_EXTERNAL_STORAGE, Permission.WRITE_EXTERNAL_STORAGE};
        }
    }

    public static List<String> transformText(Context context, String... strArr) {
        return transformText(context, (List<String>) Arrays.asList(strArr));
    }

    public static List<String> transformText(Context context, String[]... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String[] strArr2 : strArr) {
            arrayList.addAll(Arrays.asList(strArr2));
        }
        return transformText(context, arrayList);
    }

    public static List<String> transformText(Context context, List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            switch (it.next()) {
                case "android.permission.READ_CALENDAR":
                case "android.permission.WRITE_CALENDAR":
                    String string = context.getString(C1443R.string.permission_name_calendar);
                    if (!arrayList.contains(string)) {
                        arrayList.add(string);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.CAMERA":
                    String string2 = context.getString(C1443R.string.permission_name_camera);
                    if (!arrayList.contains(string2)) {
                        arrayList.add(string2);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.READ_CONTACTS":
                case "android.permission.WRITE_CONTACTS":
                    String string3 = context.getString(C1443R.string.permission_name_contacts);
                    if (!arrayList.contains(string3)) {
                        arrayList.add(string3);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.GET_ACCOUNTS":
                    String string4 = context.getString(C1443R.string.permission_name_accounts);
                    if (!arrayList.contains(string4)) {
                        arrayList.add(string4);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.ACCESS_FINE_LOCATION":
                case "android.permission.ACCESS_COARSE_LOCATION":
                    String string5 = context.getString(C1443R.string.permission_name_location);
                    if (!arrayList.contains(string5)) {
                        arrayList.add(string5);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.RECORD_AUDIO":
                    String string6 = context.getString(C1443R.string.permission_name_microphone);
                    if (!arrayList.contains(string6)) {
                        arrayList.add(string6);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.READ_PHONE_STATE":
                case "android.permission.CALL_PHONE":
                case "android.permission.READ_CALL_LOG":
                case "android.permission.WRITE_CALL_LOG":
                case "com.android.voicemail.permission.ADD_VOICEMAIL":
                case "android.permission.ADD_VOICEMAIL":
                case "android.permission.USE_SIP":
                case "android.permission.PROCESS_OUTGOING_CALLS":
                case "android.permission.READ_PHONE_NUMBERS":
                case "android.permission.ANSWER_PHONE_CALLS":
                    String string7 = context.getString(C1443R.string.permission_name_phone);
                    if (!arrayList.contains(string7)) {
                        arrayList.add(string7);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.BODY_SENSORS":
                    String string8 = context.getString(C1443R.string.permission_name_sensors);
                    if (!arrayList.contains(string8)) {
                        arrayList.add(string8);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.SEND_SMS":
                case "android.permission.RECEIVE_SMS":
                case "android.permission.READ_SMS":
                case "android.permission.RECEIVE_WAP_PUSH":
                case "android.permission.RECEIVE_MMS":
                    String string9 = context.getString(C1443R.string.permission_name_sms);
                    if (!arrayList.contains(string9)) {
                        arrayList.add(string9);
                        break;
                    } else {
                        break;
                    }
                case "android.permission.READ_EXTERNAL_STORAGE":
                case "android.permission.WRITE_EXTERNAL_STORAGE":
                    String string10 = context.getString(C1443R.string.permission_name_storage);
                    if (!arrayList.contains(string10)) {
                        arrayList.add(string10);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return arrayList;
    }
}
