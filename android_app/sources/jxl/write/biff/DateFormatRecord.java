package jxl.write.biff;

import androidx.exifinterface.media.ExifInterface;
import jxl.biff.FormatRecord;

/* loaded from: classes2.dex */
public class DateFormatRecord extends FormatRecord {
    protected DateFormatRecord(String str) {
        setFormatString(replace(replace(str, "a", "AM/PM"), ExifInterface.LATITUDE_SOUTH, "0"));
    }
}
