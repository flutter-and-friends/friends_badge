package jxl.biff.formula;

import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class MemArea extends SubExpression {
    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        ParseItem[] subExpression = getSubExpression();
        if (subExpression.length == 1) {
            subExpression[0].getString(stringBuffer);
        } else if (subExpression.length == 2) {
            subExpression[1].getString(stringBuffer);
            stringBuffer.append(':');
            subExpression[0].getString(stringBuffer);
        }
    }

    @Override // jxl.biff.formula.SubExpression, jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        setLength(IntegerHelper.getInt(bArr[i + 4], bArr[i + 5]));
        return 6;
    }
}
