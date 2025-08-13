package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
abstract class DataMask {
    private static final DataMask[] DATA_MASKS = {new DataMask000(null), new DataMask001(0 == true ? 1 : 0), new DataMask010(0 == true ? 1 : 0), new DataMask011(0 == true ? 1 : 0), new DataMask100(0 == true ? 1 : 0), new DataMask101(0 == true ? 1 : 0), new DataMask110(0 == true ? 1 : 0), new DataMask111(0 == true ? 1 : 0)};

    abstract boolean isMasked(int i, int i2);

    private DataMask() {
    }

    /* synthetic */ DataMask(DataMask dataMask) {
        this();
    }

    final void unmaskBitMatrix(BitMatrix bitMatrix, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    bitMatrix.flip(i3, i2);
                }
            }
        }
    }

    static DataMask forReference(int i) {
        if (i < 0 || i > 7) {
            throw new IllegalArgumentException();
        }
        return DATA_MASKS[i];
    }

    private static final class DataMask000 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }

        private DataMask000() {
            super(null);
        }

        /* synthetic */ DataMask000(DataMask000 dataMask000) {
            this();
        }
    }

    private static final class DataMask001 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i & 1) == 0;
        }

        private DataMask001() {
            super(null);
        }

        /* synthetic */ DataMask001(DataMask001 dataMask001) {
            this();
        }
    }

    private static final class DataMask010 extends DataMask {
        private DataMask010() {
            super(null);
        }

        /* synthetic */ DataMask010(DataMask010 dataMask010) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return i2 % 3 == 0;
        }
    }

    private static final class DataMask011 extends DataMask {
        private DataMask011() {
            super(null);
        }

        /* synthetic */ DataMask011(DataMask011 dataMask011) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    }

    private static final class DataMask100 extends DataMask {
        private DataMask100() {
            super(null);
        }

        /* synthetic */ DataMask100(DataMask100 dataMask100) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i / 2) + (i2 / 3)) & 1) == 0;
        }
    }

    private static final class DataMask101 extends DataMask {
        private DataMask101() {
            super(null);
        }

        /* synthetic */ DataMask101(DataMask101 dataMask101) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            int i3 = i * i2;
            return (i3 & 1) + (i3 % 3) == 0;
        }
    }

    private static final class DataMask110 extends DataMask {
        private DataMask110() {
            super(null);
        }

        /* synthetic */ DataMask110(DataMask110 dataMask110) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            int i3 = i * i2;
            return (((i3 & 1) + (i3 % 3)) & 1) == 0;
        }
    }

    private static final class DataMask111 extends DataMask {
        private DataMask111() {
            super(null);
        }

        /* synthetic */ DataMask111(DataMask111 dataMask111) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return ((((i + i2) & 1) + ((i * i2) % 3)) & 1) == 0;
        }
    }
}
