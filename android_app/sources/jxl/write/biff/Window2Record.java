package jxl.write.biff;

import cn.highlight.work_card_write.util.NFC;
import jxl.SheetSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class Window2Record extends WritableRecordData {
    private byte[] data;

    public Window2Record(SheetSettings sheetSettings) {
        super(Type.WINDOW2);
        int i = (sheetSettings.getShowGridLines() ? 2 : 0) | 4 | 0;
        int i2 = (sheetSettings.getDisplayZeroValues() ? i | 16 : i) | 32 | 128;
        i2 = (sheetSettings.getHorizontalFreeze() == 0 && sheetSettings.getVerticalFreeze() == 0) ? i2 : i2 | 8 | 256;
        i2 = sheetSettings.isSelected() ? i2 | NFC.f130S6 : i2;
        i2 = sheetSettings.getPageBreakPreviewMode() ? i2 | 2048 : i2;
        this.data = new byte[18];
        IntegerHelper.getTwoBytes(i2, this.data, 0);
        IntegerHelper.getTwoBytes(64, this.data, 6);
        IntegerHelper.getTwoBytes(sheetSettings.getPageBreakPreviewMagnification(), this.data, 10);
        IntegerHelper.getTwoBytes(sheetSettings.getNormalMagnification(), this.data, 12);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
