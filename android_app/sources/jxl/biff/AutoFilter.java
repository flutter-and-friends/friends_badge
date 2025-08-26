package jxl.biff;

import java.io.IOException;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class AutoFilter {
    private AutoFilterRecord autoFilter;
    private AutoFilterInfoRecord autoFilterInfo;
    private FilterModeRecord filterMode;

    public AutoFilter(FilterModeRecord filterModeRecord, AutoFilterInfoRecord autoFilterInfoRecord) {
        this.filterMode = filterModeRecord;
        this.autoFilterInfo = autoFilterInfoRecord;
    }

    public void add(AutoFilterRecord autoFilterRecord) {
        this.autoFilter = autoFilterRecord;
    }

    public void write(File file) throws IOException {
        FilterModeRecord filterModeRecord = this.filterMode;
        if (filterModeRecord != null) {
            file.write(filterModeRecord);
        }
        AutoFilterInfoRecord autoFilterInfoRecord = this.autoFilterInfo;
        if (autoFilterInfoRecord != null) {
            file.write(autoFilterInfoRecord);
        }
        AutoFilterRecord autoFilterRecord = this.autoFilter;
        if (autoFilterRecord != null) {
            file.write(autoFilterRecord);
        }
    }
}
