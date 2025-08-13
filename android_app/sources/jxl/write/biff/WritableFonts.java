package jxl.write.biff;

import jxl.biff.Fonts;
import jxl.write.WritableFont;

/* loaded from: classes2.dex */
public class WritableFonts extends Fonts {
    public WritableFonts(WritableWorkbookImpl writableWorkbookImpl) {
        addFont(writableWorkbookImpl.getStyles().getArial10Pt());
        addFont(new WritableFont(WritableFont.ARIAL));
        addFont(new WritableFont(WritableFont.ARIAL));
        addFont(new WritableFont(WritableFont.ARIAL));
    }
}
