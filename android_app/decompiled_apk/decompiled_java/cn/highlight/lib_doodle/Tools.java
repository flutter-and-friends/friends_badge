package cn.highlight.lib_doodle;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.lang.Character;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class Tools {
    public static String changeWeekToHanzi(int i) {
        switch (i) {
            case 1:
                return "星期一";
            case 2:
                return "星期二";
            case 3:
                return "星期三";
            case 4:
                return "星期四";
            case 5:
                return "星期五";
            case 6:
                return "星期六";
            case 7:
                return "星期日";
            default:
                return "";
        }
    }

    public static String propertyNoToEpc(String str) {
        byte[] bArrASCToHex;
        if (!isNull(str) && (bArrASCToHex = ASCToHex(str)) != null && bArrASCToHex.length != 0) {
            String strBytesToHexString = bytesToHexString(bArrASCToHex, false);
            int length = strBytesToHexString.length() % 4;
            if (length > 0) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < length; i++) {
                    sb.append("0");
                }
                strBytesToHexString = ((Object) sb) + strBytesToHexString;
            }
            if (strBytesToHexString.length() % 4 == 0 && isHex(strBytesToHexString)) {
                return strBytesToHexString;
            }
        }
        return "未知";
    }

    private static String bytesToHexString(byte[] bArr, boolean z) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString.toUpperCase());
            if (z) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    private static byte[] ASCToHex(String str) {
        if (str.matches("\\A\\p{ASCII}*\\z")) {
            return Build.VERSION.SDK_INT >= 19 ? str.getBytes(StandardCharsets.US_ASCII) : new byte[0];
        }
        return null;
    }

    public static String convertHexToString(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length() - 1) {
            int i2 = i + 2;
            sb.append((char) Integer.parseInt(str.substring(i, i2), 16));
            i = i2;
        }
        return sb.toString();
    }

    public static boolean isValidUrl(String str) {
        if (isNull(str)) {
            return false;
        }
        String strTrim = str.trim();
        return ((!strTrim.contains("http://") && !strTrim.contains("https://")) || strTrim.contains("：") || strTrim.contains(" ") || strTrim.contains("..") || strTrim.contains("::") || strTrim.contains("///")) ? false : true;
    }

    public static double getVersionDouble(String str) {
        try {
            if (isNull(str)) {
                return 0.0d;
            }
            String[] strArrSplit = str.replaceAll(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "").replaceAll("v", "").replaceAll(" ", "").split("\\.");
            StringBuilder sb = new StringBuilder();
            int i = 0;
            for (String str2 : strArrSplit) {
                if (i == 0) {
                    sb = new StringBuilder(str2 + ".");
                } else {
                    sb.append(str2);
                }
                i++;
            }
            return Double.parseDouble(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0d;
        }
    }

    public static String conversionString(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                if (str.charAt(i) != '.') {
                    sb.append(str.charAt(i));
                }
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getSDPath() {
        try {
            return (Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory() : null).toString();
        } catch (Exception e) {
            Log.e("getSDPath", "获取路手机路径出错" + e.getMessage());
            return null;
        }
    }

    public static void makeDir(File file) {
        try {
            if (!file.getParentFile().exists()) {
                makeDir(file.getParentFile());
            }
            file.mkdir();
        } catch (Exception e) {
            Log.e("getSDPath", "创建文件夹出错" + e.getMessage());
        }
    }

    public static boolean isHex(String str) {
        return str.matches("^[A-Fa-f0-9]+$");
    }

    public static String getStringDate2() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    public static String getStringDate() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public static String getVerName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        String str = "";
        try {
            String str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            if (str2 != null) {
                try {
                    if (str2.length() > 0) {
                        return str2;
                    }
                } catch (Exception e) {
                    str = str2;
                    e = e;
                    e.printStackTrace();
                    return str;
                }
            }
            return "";
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static int getVerCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String getText(TextView textView) {
        return textView != null ? textView.getText().toString().trim() : "";
    }

    public static String getText(EditText editText) {
        return editText != null ? editText.getText().toString().trim() : "";
    }

    public static String getTagString(View view) {
        try {
            return view.getTag().toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean isNull(String str) {
        if (str != null) {
            str = str.trim();
        }
        return str == null || "".equals(str) || "null".equalsIgnoreCase(str);
    }

    public static boolean isNull(String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i] == null || strArr[i].equals("") || strArr[i].equalsIgnoreCase("null")) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNull(TextView textView) {
        return textView == null || isNull(getText(textView));
    }

    public static boolean isNull(TextView... textViewArr) {
        for (int i = 0; i < textViewArr.length; i++) {
            if (textViewArr[i] == null || isNull(getText(textViewArr[i]))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNull(EditText editText) {
        return editText == null || isNull(getText(editText));
    }

    public static boolean judgeStringEquals(String str, String str2) {
        return str != null && str.equals(str2);
    }

    public static boolean isEmptyList(List list) {
        return list == null || list.size() == 0;
    }

    public static boolean isEmptyList(List... listArr) {
        for (List list : listArr) {
            if (isEmptyList(list)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEmptyList(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public static boolean isEmptyList(Object[]... objArr) {
        for (Object[] objArr2 : objArr) {
            if (isEmptyList(objArr2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean validateIdCard(String str) {
        if (isNull(str)) {
            return false;
        }
        return str.matches("^[0-9]{17}[0-9|xX]{1}$");
    }

    public static boolean checkMobileNumber(String str) {
        return Pattern.compile("^(13\\d|14[56789]|15[012356789]|166|17[1235678]|18\\d|19[89])\\d{8}$").matcher(str).find();
    }

    public static boolean checkEmail(String str) {
        return Pattern.compile("^[a-zA-Z\\d]+([-_.][a-zA-Z\\d]+)*@([a-zA-Z\\d]+[-.])+[a-zA-Z\\d]{2,4}$").matcher(str).find();
    }

    public static boolean validateBankCard(String str) {
        if (isNull(str)) {
            return false;
        }
        return str.matches("^\\d{13,19}$");
    }

    public static boolean isZipNO(String str) {
        return Pattern.compile("^[1-9][0-9]{5}$").matcher(str).matches();
    }

    public static boolean isCarNO(String str) {
        return Pattern.compile("^[一-龥]{1}[a-zA-Z]{1}[a-zA-Z_0-9]{5}$").matcher(str).matches();
    }

    public static boolean isValidDate(String str) {
        if (str == null || !Pattern.compile("\\d{4}-\\d{2}-\\d{2}").matcher(str).matches()) {
            return false;
        }
        return Pattern.compile("^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))").matcher(str).matches();
    }

    public static int StringToInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static float StringToFloat(String str) {
        try {
            return Float.parseFloat(str);
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static String formatString(Object obj) {
        try {
            if (!isNull(obj.toString())) {
                return obj.toString();
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static String formatDate(Object obj, String str) {
        try {
            return new SimpleDateFormat(str).format(new Date(Long.parseLong(formatString(obj)) * 1000));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String formatTime(Object obj) {
        return formatDate(obj, "yyyy-MM-dd HH:mm:ss");
    }

    public static String formatDate(Object obj) {
        return formatDate(obj, "yyyy-MM-dd");
    }

    public static String date2str(Date date) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(date);
        } catch (Exception unused) {
            return "";
        }
    }

    public static Date strs2Date(String str) {
        try {
            return new SimpleDateFormat("yyyy/MM/dd", Locale.CHINA).parse(str);
        } catch (Exception unused) {
            return new Date();
        }
    }

    public static Date str2Date(String str) {
        try {
            return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.CHINA).parse(str);
        } catch (Exception unused) {
            return new Date();
        }
    }

    public static String date2strs(Date date) {
        try {
            return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.CHINA).format(date);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String date3str(Date date) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(date);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String date2strNY(Date date) {
        try {
            return new SimpleDateFormat("MM.dd HH:mm:ss", Locale.CHINA).format(date);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getShowTime(String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Integer.parseInt(str.substring(0, 4)), Integer.parseInt(str.substring(5, 7)) - 1, Integer.parseInt(str.substring(8, 10)));
        calendar.setTime(strs2Date(calendar.get(1) + "/" + (calendar.get(2) + 1) + "/" + calendar.get(5)));
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(new Date());
        Date dateStrs2Date = strs2Date(calendar2.get(1) + "/" + (calendar2.get(2) + 1) + "/" + calendar2.get(5));
        calendar2.setTime(dateStrs2Date);
        if (calendar.getTimeInMillis() - calendar2.getTimeInMillis() == 0) {
            return str.substring(11, 16);
        }
        if (dateStrs2Date.getTime() - calendar.getTimeInMillis() == 86400000) {
            return "昨天" + str.substring(11, 16);
        }
        return str.substring(0, 16);
    }

    public static String formatTime(Long l) {
        Integer num = 1000;
        Integer numValueOf = Integer.valueOf(Integer.valueOf(Integer.valueOf(num.intValue() * 60).intValue() * 60).intValue() * 24);
        Long lValueOf = Long.valueOf(l.longValue() / numValueOf.intValue());
        Long lValueOf2 = Long.valueOf((l.longValue() - (lValueOf.longValue() * numValueOf.intValue())) / r2.intValue());
        Long lValueOf3 = Long.valueOf(((l.longValue() - (lValueOf.longValue() * numValueOf.intValue())) / r2.intValue()) + (lValueOf.longValue() * 24));
        Long lValueOf4 = Long.valueOf(((l.longValue() - (lValueOf.longValue() * numValueOf.intValue())) - (lValueOf2.longValue() * r2.intValue())) / r1.intValue());
        Long lValueOf5 = Long.valueOf((((l.longValue() - (lValueOf.longValue() * numValueOf.intValue())) - (lValueOf2.longValue() * r2.intValue())) - (lValueOf4.longValue() * r1.intValue())) / num.intValue());
        StringBuffer stringBuffer = new StringBuffer();
        if (lValueOf3.longValue() > 0) {
            if ((lValueOf3 + "").length() == 1) {
                stringBuffer.append("0" + lValueOf3 + ":");
            } else {
                stringBuffer.append(lValueOf3 + ":");
            }
        } else {
            stringBuffer.append("00:");
        }
        if (lValueOf4.longValue() > 0) {
            if ((lValueOf4 + "").length() == 1) {
                stringBuffer.append("0" + lValueOf4 + ":");
            } else {
                stringBuffer.append(lValueOf4 + ":");
            }
        } else {
            stringBuffer.append("00:");
        }
        if (lValueOf5.longValue() > 0) {
            if ((lValueOf5 + "").length() == 1) {
                stringBuffer.append("0" + lValueOf5);
            } else {
                stringBuffer.append(lValueOf5);
            }
        } else {
            stringBuffer.append("00");
        }
        return stringBuffer.toString();
    }

    public static void hideKeyboard(Activity activity) {
        try {
            if (activity.getCurrentFocus() != null) {
                ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) throws ClassNotFoundException {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if ("1".equals(str)) {
                return false;
            }
            if ("0".equals(str)) {
                return true;
            }
            return z;
        } catch (Exception unused) {
            return z;
        }
    }

    public static boolean isChinese(char c) {
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(c);
        return unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A;
    }

    public static Double roundDouble(double d, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("The scale must be a positive integer or zero");
        }
        return Double.valueOf((0.0d == d ? new BigDecimal("0.0") : new BigDecimal(Double.toString(d))).divide(new BigDecimal("1"), i, 4).doubleValue());
    }

    public static String settingphone(String str) {
        return str.substring(0, 3) + "******" + str.substring(str.length() - 2, str.length());
    }

    public static String count(String str) throws NumberFormatException {
        if (isNull(str)) {
            return "0";
        }
        float f = Float.parseFloat(str);
        if (f <= 10000.0f) {
            return str;
        }
        return getFloatDotStr((f / 10000.0f) + "") + "W+";
    }

    public static String count1(String str) throws NumberFormatException {
        if (isNull(str)) {
            return "0";
        }
        float f = Float.parseFloat(str);
        if (f <= 10000.0f) {
            return str;
        }
        return getFloatDotStr((f / 10000.0f) + "") + "万";
    }

    public static String getFloatDotStr(String str) {
        if (isNull(str)) {
            return "0";
        }
        return new DecimalFormat("##0.0").format(Float.valueOf(str).floatValue());
    }

    public static String getFloatDotStrPrice(String str) {
        if (isNull(str)) {
            return "0.00";
        }
        return new DecimalFormat("##0.00").format(Float.valueOf(str).floatValue());
    }

    public static String formatMoney(Object obj) {
        String string = formatString(obj);
        return string.length() == 0 ? "0.00" : string;
    }

    public static Bitmap toRoundCorner(Bitmap bitmap, int i) {
        if (bitmap != null) {
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint();
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                RectF rectF = new RectF(rect);
                float f = i;
                paint.setAntiAlias(true);
                canvas.drawARGB(0, 0, 0, 0);
                paint.setColor(-12434878);
                canvas.drawRoundRect(rectF, f, f, paint);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                canvas.drawBitmap(bitmap, rect, rect, paint);
                return bitmapCreateBitmap;
            } catch (Exception unused) {
            }
        }
        return bitmap;
    }

    public static Bitmap toRoundBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return bitmap;
        }
        Bitmap bitmapCutSquareBitmap = cutSquareBitmap(bitmap);
        return toRoundCorner(bitmapCutSquareBitmap, bitmapCutSquareBitmap.getWidth() / 2);
    }

    public static Bitmap cutSquareBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                if (width > height) {
                    bitmap = Bitmap.createBitmap(bitmap, (width - height) / 2, 0, height, height);
                } else {
                    bitmap = Bitmap.createBitmap(bitmap, 0, (height - width) / 2, width, width);
                }
            } catch (Exception unused) {
            }
        }
        return bitmap;
    }

    public static ArrayList<String[]> getDividePoints(double d, int i, double d2, double d3) {
        ArrayList<String[]> arrayList = new ArrayList<>();
        double d4 = (d2 - d3) / (i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            double d5 = ((d2 - (i2 * d4)) * 3.141592653589793d) / 180.0d;
            arrayList.add(new String[]{(Math.cos(d5) * d) + "", (Math.sin(d5) * d) + ""});
        }
        return arrayList;
    }

    public static void startAnimation(final View view, ImageView imageView, int i, int i2, boolean z) {
        if (z) {
            imageView.setBackgroundResource(i2);
        } else {
            imageView.setBackgroundResource(i);
        }
        AnimationSet animationSet = new AnimationSet(true);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, 1, 0.5f, 1, 0.5f);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.2f, 1.0f, 1.2f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setStartOffset(0L);
        scaleAnimation.setDuration(50L);
        scaleAnimation2.setStartOffset(50L);
        scaleAnimation2.setDuration(50L);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(scaleAnimation2);
        animationSet.setFillAfter(true);
        imageView.startAnimation(animationSet);
        animationSet.setAnimationListener(new Animation.AnimationListener() { // from class: cn.highlight.lib_doodle.Tools.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setEnabled(false);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setEnabled(true);
            }
        });
    }

    public static String getHanZi1(int i) {
        String str = "";
        if (i > 99 || i == 0) {
            return "";
        }
        int i2 = i % 10;
        int i3 = (i - i2) / 10;
        if (i3 != 0) {
            if (i3 == 1) {
                str = "十";
            } else {
                str = getHanZi2(i3) + "十";
            }
        }
        return str + getHanZi2(i2);
    }

    public static String getHanZi2(int i) {
        return new String[]{"", "一", "二", "三", "四", "五", "六", "七", "八", "九"}[i];
    }

    public static String deleteColon(String str) {
        if (str == null) {
            return null;
        }
        return str.replace(":", "");
    }

    public static String addColon(String str) {
        if (str == null || str.length() != 4) {
            return null;
        }
        return str.substring(0, 2) + ":" + str.substring(2, 4);
    }

    public static Bitmap convertViewToBitmapLayout(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.buildDrawingCache();
        return view.getDrawingCache();
    }

    public static Bitmap convertViewToBitmap(View view) {
        view.setDrawingCacheEnabled(true);
        view.buildDrawingCache();
        return view.getDrawingCache();
    }

    public static String Md5(String str) throws NoSuchAlgorithmException {
        String string = "";
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i = 0; i < bArrDigest.length; i++) {
                int i2 = bArrDigest[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            string = stringBuffer.toString();
            System.out.println("result: " + string);
            return string;
        } catch (NoSuchAlgorithmException unused) {
            return string;
        }
    }

    public static final String getMessageDigest(byte[] bArr) throws NoSuchAlgorithmException {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i = 0;
            for (byte b : bArrDigest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i2 + 1;
                cArr2[i2] = cArr[b & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean checkPWD(String str) {
        return str.matches("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z_]{6,18}$");
    }

    public static String getHtmlHintGray(String str) {
        return "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style type=\"text/css\">body {height:100%; font-family: Arial,\"microsoft yahei\",Verdana; padding:0;\tmargin:0; font-size:14px;  background: #fff; overflow-x:hidden; }img {padding:0; margin:0; vertical-align:top; border: none}li,ul {list-style: none outside none; padding: 0; margin: 0}input[type=text],select {-webkit-appearance:none; -moz-appearance: none; margin:0; padding:0; background:none; border:none; font-size:14px; text-indent:3px; font-family: Arial,\"microsoft yahei\",Verdana;}.wrapper { width:100%; padding:10px; box-sizing:border-box;}p { color:#aaaaaa; line-height:1.6em;}.wrapper img { display:block; max-width:100%; height:auto !important;} p { padding:0; margin:0}</style></head><body><div class=\"wrapper\" style=\"padding:0; margin:0\"><p>" + str + "</p></div></body></html>";
    }

    public static String getHtmlGray(String str) {
        return "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><style type=\"text/css\">body {height:100%; font-family: Arial,\"microsoft yahei\",Verdana; padding:0;\tmargin:0; font-size:14px;  background: #fff; overflow-x:hidden; }img {padding:0; margin:0; vertical-align:top; border: none}li,ul {list-style: none outside none; padding: 0; margin: 0}input[type=text],select {-webkit-appearance:none; -moz-appearance: none; margin:0; padding:0; background:none; border:none; font-size:14px; text-indent:3px; font-family: Arial,\"microsoft yahei\",Verdana;}.wrapper { width:100%; padding:10px; box-sizing:border-box;}p { color:#7C7C7C; line-height:1.6em;}.wrapper img { display:block; max-width:100%; height:auto !important;} p { padding:0; margin:0}</style></head><body><div class=\"wrapper\" style=\"padding:0; margin:0\"><p>" + str + "</p></div></body></html>";
    }

    public static String getDoubleFormat(double d) {
        if (d == 0.0d) {
            return "0.00";
        }
        if (d < 1.0d) {
            return String.valueOf(new BigDecimal(d).setScale(2, 4).doubleValue());
        }
        return new DecimalFormat("#.00").format(d);
    }

    public static String setMoney(String str) {
        return String.format("%.2f", Double.valueOf(Double.parseDouble(str)));
    }
}
