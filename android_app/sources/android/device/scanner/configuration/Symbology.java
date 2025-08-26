package android.device.scanner.configuration;

/* loaded from: classes.dex */
public enum Symbology {
    NONE(0),
    CODE39(1),
    DISCRETE25(2),
    MATRIX25(3),
    INTERLEAVED25(4),
    CODABAR(5),
    RESERVED_6(6),
    CODE93(7),
    CODE128(8),
    UPCA(9),
    UPCE(10),
    EAN13(11),
    EAN8(12),
    RESERVED_13(13),
    MSI(14),
    RESERVED_15(15),
    RESERVED_16(16),
    GS1_14(17),
    GS1_LIMIT(18),
    GS1_EXP(19),
    RESERVED_20(20),
    RESERVED_21(21),
    PDF417(22),
    DATAMATRIX(23),
    MAXICODE(24),
    TRIOPTIC(25),
    CODE32(26),
    RESERVED_27(27),
    RESERVED_28(28),
    MICROPDF417(29),
    RESERVED_30(30),
    QRCODE(31),
    AZTEC(32),
    RESERVED_33(33),
    POSTAL_PLANET(34),
    POSTAL_POSTNET(35),
    POSTAL_4STATE(36),
    POSTAL_UPUFICS(37),
    POSTAL_ROYALMAIL(38),
    POSTAL_AUSTRALIAN(39),
    POSTAL_KIX(40),
    POSTAL_JAPAN(41),
    GS1_128(42),
    COMPOSITE_CC_C(43),
    COMPOSITE_CC_AB(44),
    CHINESE25(45),
    CODE11(46),
    UPCE1(47),
    COMPOSITE_TLC39(48),
    HANXIN(49),
    DOTCODE(50);

    private static Symbology[] allValues = values();
    private final int value;

    Symbology(int i) {
        this.value = i;
    }

    public static Symbology fromOrdinal(int i) {
        return allValues[i];
    }

    public static Symbology fromInt(int i) {
        int i2 = 0;
        while (true) {
            Symbology[] symbologyArr = allValues;
            if (i2 < symbologyArr.length) {
                if (symbologyArr[i2].value == i) {
                    return symbologyArr[i2];
                }
                i2++;
            } else {
                return NONE;
            }
        }
    }

    public int toInt() {
        return this.value;
    }
}
