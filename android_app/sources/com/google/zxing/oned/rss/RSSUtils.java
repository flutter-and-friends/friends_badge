package com.google.zxing.oned.rss;

/* loaded from: classes.dex */
public final class RSSUtils {
    private RSSUtils() {
    }

    public static int getRSSvalue(int[] iArr, int i, boolean z) {
        int i2;
        int length = iArr.length;
        int length2 = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length2) {
            i4 += iArr[i3];
            i3++;
            length = length;
        }
        int i5 = i4;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = length - 1;
            if (i8 >= i9) {
                return i7;
            }
            int i10 = 1 << i8;
            int i11 = i6 | i10;
            int i12 = 1;
            while (i12 < iArr[i8]) {
                int i13 = i5 - i12;
                int i14 = length - i8;
                int i15 = i14 - 2;
                int iCombins = combins(i13 - 1, i15);
                if (z && i11 == 0) {
                    int i16 = i14 - 1;
                    if (i13 - i16 >= i16) {
                        iCombins -= combins(i13 - i14, i15);
                    }
                }
                if (i14 - 1 > 1) {
                    int i17 = i13 - i15;
                    int iCombins2 = 0;
                    while (i17 > i) {
                        iCombins2 += combins((i13 - i17) - 1, i14 - 3);
                        i17--;
                        length = length;
                    }
                    iCombins -= iCombins2 * (i9 - i8);
                    i2 = length;
                } else {
                    i2 = length;
                    if (i13 > i) {
                        iCombins--;
                    }
                }
                i7 += iCombins;
                i12++;
                i11 &= ~i10;
                length = i2;
            }
            i5 -= i12;
            i8++;
            i6 = i11;
        }
    }

    private static int combins(int i, int i2) {
        int i3 = i - i2;
        if (i3 > i2) {
            i3 = i2;
            i2 = i3;
        }
        int i4 = 1;
        int i5 = 1;
        while (i > i2) {
            i4 *= i;
            if (i5 <= i3) {
                i4 /= i5;
                i5++;
            }
            i--;
        }
        while (i5 <= i3) {
            i4 /= i5;
            i5++;
        }
        return i4;
    }
}
