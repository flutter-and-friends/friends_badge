package jxl.write;

import java.text.SimpleDateFormat;
import jxl.biff.DisplayFormat;
import jxl.write.biff.DateFormatRecord;

/* loaded from: classes2.dex */
public class DateFormat extends DateFormatRecord implements DisplayFormat {
    public DateFormat(String str) {
        super(str);
        new SimpleDateFormat(str);
    }
}
