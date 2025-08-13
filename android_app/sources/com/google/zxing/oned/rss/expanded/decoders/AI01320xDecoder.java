package com.google.zxing.oned.rss.expanded.decoders;

import cn.highlight.p004tx.ble.BleManager;
import com.google.zxing.common.BitArray;

/* loaded from: classes.dex */
final class AI01320xDecoder extends AI013x0xDecoder {
    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected int checkWeight(int i) {
        return i < 10000 ? i : i - BleManager.DEFAULT_SCAN_TIME;
    }

    AI01320xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected void addWeightCode(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append("(3202)");
        } else {
            sb.append("(3203)");
        }
    }
}
